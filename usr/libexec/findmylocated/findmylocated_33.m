uint64_t sub_10035BE3C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 416);
  v5 = *(*v1 + 408);
  v17 = *(*v1 + 392);
  v15 = *(*v1 + 384);
  v6 = *(*v1 + 376);
  v14 = *(*v1 + 304);
  v16 = *(*v1 + 296);
  v7 = *(*v1 + 264);
  v8 = *(*v1 + 224);
  v9 = (*(v3 + 528) + 32) & ~*(v3 + 528);
  v10 = *v1;
  *(v3 + 424) = v0;

  v6(v7, v8);
  swift_setDeallocating();
  *(v3 + 432) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v5 + v9, v16);
  swift_deallocClassInstance();
  v11 = *(v2 + 216);
  if (v0)
  {
    v12 = sub_10035C940;
  }

  else
  {
    v12 = sub_10035C090;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_10035C090()
{
  v1 = *(v0 + 400);
  v2 = (*(v0 + 528) + 32) & ~*(v0 + 528);
  v19 = *(v0 + 384);
  *(v0 + 440) = *(v0 + 392);
  v18 = *(v0 + 376);
  v3 = *(v0 + 532);
  v4 = *(v0 + 352);
  v21 = *(v0 + 360);
  v22 = *(v0 + 368);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v7 = *(v0 + 296);
  v8 = *(v0 + 256);
  v20 = *(v0 + 248);
  v17 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004C1900;
  swift_beginAccess();
  v5(v9 + v2, v6, v7);
  v21(v8, v3, v15);
  sub_100362F78(v16, v9, v8);

  v18(v8, v15);
  v10 = swift_allocObject();
  *(v0 + 448) = v10;
  *(v10 + 16) = xmmword_1004C1900;
  v5(v10 + v2, v6, v7);
  v21(v20, v3, v15);
  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  *v11 = v0;
  v11[1] = sub_10035C280;
  v12 = *(v0 + 248);
  v13 = *(v0 + 216);

  return sub_100367504(v10, v12, 1);
}

uint64_t sub_10035C280(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *v2;
  v4[58] = v1;

  v7 = v4[56];
  v8 = v4[48];
  v9 = v4[47];
  v10 = v4[31];
  v11 = v4[28];
  v12 = v4[27];
  if (v1)
  {
    v9(v10, v11);

    v13 = sub_10035CA5C;
  }

  else
  {
    v4[59] = a1;
    v9(v10, v11);

    v13 = sub_10035C43C;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_10035C43C()
{
  v1 = v0[55];
  v2 = v0[42];
  v3 = v0[37];
  v1(v0[41], v3);
  v1(v2, v3);
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[33];
  v10 = v0[34];
  v12 = v0[31];
  v13 = v0[32];
  v16 = v0[30];
  v17 = v0[59];

  v14 = v0[1];

  return v14(v17);
}

uint64_t sub_10035C564(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  v4[64] = v1;

  v7 = v4[62];
  v8 = v4[61];
  v9 = v4[60];
  v10 = v4[30];
  v11 = v4[28];
  v12 = v4[27];
  if (v1)
  {
    v9(v10, v11);

    v13 = sub_10035C82C;
  }

  else
  {
    v4[65] = a1;
    v9(v10, v11);

    v13 = sub_10035C720;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_10035C720()
{
  (*(v0[38] + 8))(v0[42], v0[37]);
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[31];
  v10 = v0[32];
  v13 = v0[30];
  v14 = v0[65];

  v11 = v0[1];

  return v11(v14);
}

uint64_t sub_10035C82C()
{
  v1 = v0[39];
  v2 = v0[41];
  v3 = v0[40];
  v4 = v0[36];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v12 = v0[31];
  v9 = v0[30];
  v13 = v0[64];
  (*(v0[38] + 8))(v0[42], v0[37]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10035C940()
{
  v1 = *(v0 + 432);
  (*(v0 + 392))(*(v0 + 328), *(v0 + 296));
  v2 = *(v0 + 432);
  v3 = *(v0 + 328);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 288);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v14 = *(v0 + 248);
  v11 = *(v0 + 240);
  v15 = *(v0 + 424);
  (*(v0 + 392))(*(v0 + 336), *(v0 + 296));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10035CA5C()
{
  v1 = *(v0 + 304) + 8;
  (*(v0 + 440))(*(v0 + 328), *(v0 + 296));
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 288);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 256);
  v12 = *(v0 + 248);
  v9 = *(v0 + 240);
  v13 = *(v0 + 464);
  (*(v0 + 440))(*(v0 + 336), *(v0 + 296));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10035CB88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10035CC58, v2, 0);
}

uint64_t sub_10035CC58()
{
  v1 = *(v0[3] + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
  v6 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10035CD08;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_10035CD08()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10035CE18, v2, 0);
}

uint64_t sub_10035CE18()
{
  v32 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[3];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0B28);
  (*(v4 + 16))(v1, v2, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  if (v9)
  {
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136315394;
    v0[2] = v13;
    type metadata accessor for LocationServiceClient();

    v15 = String.init<A>(describing:)();
    v17 = sub_10000D01C(v15, v16, &v31);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v23 = *(v11 + 8);
    v22 = v11 + 8;
    v21 = v23;
    v23(v10, v12);
    v24 = sub_10000D01C(v18, v20, &v31);

    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "Location Service: removed connection: %s connectionIdentifier: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v25 = *(v11 + 8);
    v22 = v11 + 8;
    v21 = v25;
    v25(v10, v12);
  }

  v0[11] = v22;
  v0[12] = v21;
  v26 = sub_10035D2B8();
  v0[13] = v26;
  v27 = swift_task_alloc();
  v0[14] = v27;
  *v27 = v0;
  v27[1] = sub_10035D108;
  v28 = v0[4];
  v29 = v0[5];

  return sub_10035DEBC(v28, v26);
}

uint64_t sub_10035D108()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_10035D234, v3, 0);
}

uint64_t sub_10035D234()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  (*(v0 + 96))(*(v0 + 72), *(v0 + 48));

  v3 = *(v0 + 8);

  return v3();
}

void *sub_10035D2B8()
{
  Priority = type metadata accessor for LocatePriority();
  v1 = *(Priority - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(Priority);
  v39 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = v31 - v6;
  __chkstk_darwin(v5);
  v9 = v31 - v8;
  v10 = static LocatePriority.allCases.getter();
  v11 = *(v10 + 16);
  if (v11)
  {
    v14 = *(v1 + 16);
    v13 = v1 + 16;
    v12 = v14;
    v15 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v31[1] = v10;
    v34 = v15;
    v16 = v10 + v15;
    v17 = *(v13 + 56);
    v42 = (v13 + 72);
    v41 = enum case for LocatePriority.backgroundAppRefresh(_:);
    v37 = enum case for LocatePriority.shallow(_:);
    v36 = enum case for LocatePriority.live(_:);
    v33 = enum case for LocatePriority.backgroundProactive(_:);
    v18 = (v13 - 8);
    v32 = (v13 + 16);
    v40 = _swiftEmptyArrayStorage;
    v38 = v17;
    v35 = v14;
    v14(v9, (v10 + v15), Priority);
    while (1)
    {
      v12(v7, v9, Priority);
      v19 = (*v42)(v7, Priority);
      if (v19 == v41)
      {
        (*v18)(v9, Priority);
      }

      else if (v19 == v37 || v19 == v36)
      {
        v12(v39, v9, Priority);
        v21 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1001FD4DC(0, v21[2] + 1, 1, v21);
        }

        v22 = v21;
        v23 = v21[2];
        v40 = v22;
        v24 = v22[3];
        if (v23 >= v24 >> 1)
        {
          v40 = sub_1001FD4DC(v24 > 1, v23 + 1, 1, v40);
        }

        (*v18)(v9, Priority);
        v25 = v39;
        v26 = v40;
        v40[2] = v23 + 1;
        v27 = v26 + v34 + v23 * v38;
        v17 = v38;
        (*v32)(v27, v25, Priority);
      }

      else
      {
        v28 = *v18;
        v29 = v19;
        (*v18)(v9, Priority);
        if (v29 != v33)
        {
          v28(v7, Priority);
        }

        v12 = v35;
        v17 = v38;
      }

      v16 += v17;
      if (!--v11)
      {
        break;
      }

      v12(v9, v16, Priority);
    }

    return v40;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

void sub_10035D620(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v66 = &v60 - v8;
  __chkstk_darwin(v7);
  v10 = &v60 - v9;
  v11 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v67 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v60 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v60 - v22;
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000A6F0(v26, qword_1005E0B28);
  v69 = a1;
  sub_100005F04(a1, v25, &qword_1005A96E0, &qword_1004C2A80);
  v68 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v62 = v17;
    v63 = v10;
    v30 = v2;
    v31 = v3;
    v32 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v70[0] = v61;
    *v32 = 136446466;
    *(v32 + 4) = sub_10000D01C(0xD000000000000028, 0x80000001004E8140, v70);
    *(v32 + 12) = 2082;
    sub_100005F04(v25, v23, &qword_1005A96E0, &qword_1004C2A80);
    v33 = (*(v31 + 48))(v23, 1, v30);
    v64 = v31;
    if (v33 == 1)
    {
      sub_100002CE0(v23, &qword_1005A96E0, &qword_1004C2A80);
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v34 = UUID.uuidString.getter();
      v35 = v36;
      (*(v31 + 8))(v23, v30);
    }

    v2 = v30;
    sub_100002CE0(v25, &qword_1005A96E0, &qword_1004C2A80);
    v37 = sub_10000D01C(v34, v35, v70);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s %{public}s", v32, 0x16u);
    swift_arrayDestroy();

    v10 = v63;
    v3 = v64;
    v17 = v62;
  }

  else
  {

    sub_100002CE0(v25, &qword_1005A96E0, &qword_1004C2A80);
  }

  sub_100005F04(v69, v17, &qword_1005A96E0, &qword_1004C2A80);
  v38 = *(v3 + 48);
  if (v38(v17, 1, v2) == 1)
  {
    type metadata accessor for Transaction();
    v39 = static Transaction.currentNSXPCConnection.getter();
    if (v39)
    {
      v40 = v39;
      NSXPCConnection.id.getter();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    (*(v3 + 56))(v20, v41, 1, v2);
    if (v38(v17, 1, v2) != 1)
    {
      sub_100002CE0(v17, &qword_1005A96E0, &qword_1004C2A80);
    }
  }

  else
  {
    (*(v3 + 32))(v20, v17, v2);
    (*(v3 + 56))(v20, 0, 1, v2);
  }

  if (v38(v20, 1, v2) == 1)
  {
    sub_100002CE0(v20, &qword_1005A96E0, &qword_1004C2A80);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v70[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_10000D01C(0xD000000000000028, 0x80000001004E8140, v70);
      _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s. Failed to get current client XPC connection ID", v44, 0xCu);
      sub_100004984(v45);
    }
  }

  else
  {
    v46 = *(v3 + 32);
    v46(v10, v20, v2);
    swift_beginAccess();
    v47 = v67;
    sub_1001ACB04(v10, v67);
    swift_endAccess();
    if (v38(v47, 1, v2) == 1)
    {
      (*(v3 + 8))(v10, v2);
      sub_100002CE0(v47, &qword_1005A96E0, &qword_1004C2A80);
    }

    else
    {
      v48 = v66;
      v46(v66, v47, v2);
      v49 = v65;
      (*(v3 + 16))(v65, v48, v2);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v70[0] = v53;
        *v52 = 136446210;
        v54 = UUID.uuidString.getter();
        v56 = v55;
        v57 = *(v3 + 8);
        v57(v49, v2);
        v58 = sub_10000D01C(v54, v56, v70);

        *(v52 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v50, v51, "Unregistered Stewie client: %{public}s", v52, 0xCu);
        sub_100004984(v53);

        v57(v66, v2);
        v57(v10, v2);
      }

      else
      {

        v59 = *(v3 + 8);
        v59(v49, v2);
        v59(v48, v2);
        v59(v10, v2);
      }
    }
  }
}

uint64_t sub_10035DEBC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for Handle();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005B2478, &unk_1004D69D0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[21] = Priority;
  v9 = *(Priority - 8);
  v3[22] = v9;
  v10 = *(v9 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B2468, &qword_1004D69B0) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v12 = type metadata accessor for ClientID();
  v3[31] = v12;
  v13 = *(v12 - 8);
  v3[32] = v13;
  v14 = *(v13 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_10035E144, v2, 0);
}

uint64_t sub_10035E144()
{
  v263 = v0;
  if (qword_1005A84C8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = v0[34];
    v2 = v0[31];
    v3 = v0[32];
    v4 = v0[8];
    v5 = v0[9];
    v6 = type metadata accessor for Logger();
    v0[35] = sub_10000A6F0(v6, qword_1005E0B28);
    v7 = *(v3 + 16);
    v0[36] = v7;
    v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v7(v1, v4, v2);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[34];
    v13 = v0[31];
    v12 = v0[32];
    if (v10)
    {
      v251 = v0[9];
      v253 = v0[21];
      v14 = swift_slowAlloc();
      v262[0] = swift_slowAlloc();
      *v14 = 136446466;
      sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v20 = *(v12 + 8);
      v19 = v12 + 8;
      v18 = v20;
      v20(v11, v13);
      v21 = sub_10000D01C(v15, v17, v262);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2082;
      v22 = Array.description.getter();
      v24 = sub_10000D01C(v22, v23, v262);

      *(v14 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "Removing all subscriptions for %{public}s with priorities: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v25 = *(v12 + 8);
      v19 = v12 + 8;
      v18 = v25;
      v25(v11, v13);
    }

    v0[38] = v19;
    v0[39] = v18;
    v26 = v0[10];
    v27 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
    swift_beginAccess();
    v28 = *(v26 + v27);
    v0[40] = v28;
    v29 = *(v28 + 32);
    *(v0 + 408) = v29;
    v30 = 1 << v29;
    v31 = v30 < 64 ? ~(-1 << v30) : -1;
    v32 = v31 & *(v28 + 64);

    v33 = 0;
    if (v32)
    {
      break;
    }

LABEL_12:
    v35 = ((1 << *(v0 + 408)) + 63) >> 6;
    if (v35 <= (v33 + 1))
    {
      v36 = v33 + 1;
    }

    else
    {
      v36 = ((1 << *(v0 + 408)) + 63) >> 6;
    }

    v37 = v36 - 1;
    while (1)
    {
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        v106 = v0[29];
        v107 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        (*(*(v107 - 8) + 56))(v106, 1, 1, v107);
        v32 = 0;
        goto LABEL_21;
      }

      v34 = v0[40];
      v32 = *(v34 + 8 * v38 + 64);
      ++v33;
      if (v32)
      {
        v33 = v38;
        goto LABEL_20;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
  }

LABEL_11:
  while (1)
  {
    v34 = v0[40];
LABEL_20:
    v39 = v0[29];
    v40 = v0[26];
    v41 = v0[21];
    v42 = v0[22];
    v43 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v44 = v43 | (v33 << 6);
    (*(v42 + 16))(v40, *(v34 + 48) + *(v42 + 72) * v44, v41);
    v45 = (*(v34 + 56) + 24 * v44);
    v46 = v45[1];
    v254 = *v45;
    v258 = v45[2];
    v47 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v48 = (v39 + *(v47 + 48));
    (*(v42 + 32))(v39, v40, v41);
    *v48 = v254;
    v48[1] = v46;
    v48[2] = v258;
    (*(*(v47 - 8) + 56))(v39, 0, 1, v47);

    v37 = v33;
LABEL_21:
    v0[41] = v32;
    v0[42] = v37;
    v49 = v0[30];
    sub_1000176A8(v0[29], v49, &qword_1005B2468, &qword_1004D69B0);
    v50 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    if (v52(v49, 1, v50) == 1)
    {
      break;
    }

    v53 = v0[25];
    v54 = v0[21];
    v55 = v0[22];
    v56 = v0[9];
    v57 = (v0[30] + *(v50 + 48));
    v58 = *v57;
    v0[43] = *v57;
    v0[44] = v57[1];
    (*(v55 + 32))(v53);
    v59 = 0;
    v60 = *(v56 + 16);
    while (1)
    {
      v61 = v0[25];
      v63 = v0[21];
      v62 = v0[22];
      if (v60 == v59)
      {
        break;
      }

      v64 = v59 + 1;
      v65 = v0[9] + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v59;
      sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v59 = v64;
      if (v66)
      {
        v67 = *(v58 + 32);
        *(v0 + 409) = v67;
        v68 = 1 << v67;
        if (v68 < 64)
        {
          v69 = ~(-1 << v68);
        }

        else
        {
          v69 = -1;
        }

        v70 = v69 & *(v58 + 64);

        for (i = 0; ; i = v0[46])
        {
          if (!v70)
          {
            v73 = ((1 << *(v0 + 409)) + 63) >> 6;
            if (v73 <= (i + 1))
            {
              v74 = i + 1;
            }

            else
            {
              v74 = ((1 << *(v0 + 409)) + 63) >> 6;
            }

            v75 = v74 - 1;
            while (1)
            {
              v76 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v76 >= v73)
              {
                v104 = v0[19];
                v105 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                (*(*(v105 - 8) + 56))(v104, 1, 1, v105);
                v85 = 0;
                goto LABEL_41;
              }

              v72 = v0[43];
              v70 = *(v72 + 8 * v76 + 64);
              ++i;
              if (v70)
              {
                i = v76;
                goto LABEL_40;
              }
            }

            __break(1u);
            goto LABEL_111;
          }

          v72 = v0[43];
LABEL_40:
          v77 = v0[19];
          v78 = v0[16];
          v79 = v0[11];
          v80 = v0[12];
          v259 = (v70 - 1) & v70;
          v81 = __clz(__rbit64(v70)) | (i << 6);
          (*(v80 + 16))(v78, *(v72 + 48) + *(v80 + 72) * v81, v79);
          v82 = *(*(v72 + 56) + 8 * v81);
          v83 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          v84 = *(v83 + 48);
          (*(v80 + 32))(v77, v78, v79);
          *(v77 + v84) = v82;
          (*(*(v83 - 8) + 56))(v77, 0, 1, v83);

          v85 = v259;
          v75 = i;
LABEL_41:
          v0[45] = v85;
          v0[46] = v75;
          v86 = v0[20];
          sub_1000176A8(v0[19], v86, &qword_1005B2478, &unk_1004D69D0);
          v87 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
          {
            break;
          }

          v88 = v0[11];
          v89 = *(v0[20] + *(v87 + 48));
          (*(v0[12] + 32))(v0[15]);
          if (*(v89 + 16))
          {
            v90 = v0[31];
            v91 = v0[8];
            v92 = *(v89 + 40);
            sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID);
            v93 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v94 = -1 << *(v89 + 32);
            v95 = v93 & ~v94;
            if ((*(v89 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
            {
              v96 = ~v94;
              v97 = *(v0[32] + 72);
              while (1)
              {
                v98 = v0[38];
                v99 = v0[39];
                v100 = v0[37];
                v101 = v0[33];
                v102 = v0[31];
                v103 = v0[8];
                (v0[36])(v101, *(v89 + 48) + v95 * v97, v102);
                sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID);
                LOBYTE(v103) = dispatch thunk of static Equatable.== infix(_:_:)();
                v99(v101, v102);
                if (v103)
                {
                  break;
                }

                v95 = (v95 + 1) & v96;
                if (((*(v89 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              v110 = v0[25];
              v111 = v0[15];
              v112 = v0[11];
              v113 = v0[12];
              v114 = v0[10];
              v115 = v0[8];

              sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
              v116 = *(v113 + 72);
              v117 = (*(v113 + 80) + 32) & ~*(v113 + 80);
              v118 = swift_allocObject();
              *(v118 + 16) = xmmword_1004C1900;
              (*(v113 + 16))(v118 + v117, v111, v112);
              v119 = sub_100362404(v115, v118, v110);
              v0[47] = v119;

              v120 = swift_task_alloc();
              v0[48] = v120;
              *v120 = v0;
              v120[1] = sub_10035F75C;
              v121 = v0[25];
              v122 = v0[10];

              return sub_100363EB0(v119, v121);
            }
          }

LABEL_29:

          (*(v0[12] + 8))(v0[15], v0[11]);
          v70 = v0[45];
        }

        v108 = v0[43];
        v109 = v0[44];
        (*(v0[22] + 8))(v0[25], v0[21]);

        v32 = v0[41];
        v33 = v0[42];
        if (v32)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }

    (*(v62 + 8))(v0[25], v0[21]);

    v33 = v37;
    if (!v32)
    {
      goto LABEL_12;
    }
  }

  v232 = v52;
  v124 = v0[40];
  v125 = v0[10];

  v126 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v127 = *(v125 + v126);
  v128 = *(v127 + 64);
  v234 = v127 + 64;
  v129 = -1 << *(v127 + 32);
  if (-v129 < 64)
  {
    v130 = ~(-1 << -v129);
  }

  else
  {
    v130 = -1;
  }

  v131 = v130 & v128;
  v230 = (63 - v129) >> 6;
  v231 = *(v125 + v126);
  v233 = (v51 + 56);

  v132 = 0;
  v235 = v50;
LABEL_61:
  if (!v131)
  {
    if (v230 <= v132 + 1)
    {
      v134 = v132 + 1;
    }

    else
    {
      v134 = v230;
    }

    v135 = v134 - 1;
    while (1)
    {
      v133 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_112;
      }

      if (v133 >= v230)
      {
        (*v233)(v0[27], 1, 1, v50);
        v237 = 0;
        v238 = v135;
        goto LABEL_72;
      }

      v131 = *(v234 + 8 * v133);
      ++v132;
      if (v131)
      {
        v238 = v133;
        goto LABEL_71;
      }
    }
  }

  v238 = v132;
  v133 = v132;
LABEL_71:
  v136 = v0[26];
  v137 = v0[27];
  v139 = v0[21];
  v138 = v0[22];
  v237 = (v131 - 1) & v131;
  v140 = __clz(__rbit64(v131)) | (v133 << 6);
  (*(v138 + 16))(v136, *(v231 + 48) + *(v138 + 72) * v140, v139);
  v141 = (*(v231 + 56) + 24 * v140);
  v142 = *v141;
  v143 = v141[1];
  v144 = v141[2];
  v145 = (v137 + *(v50 + 48));
  (*(v138 + 32))(v137, v136, v139);
  *v145 = v142;
  v145[1] = v143;
  v145[2] = v144;
  v50 = v235;
  (*v233)(v137, 0, 1, v235);

LABEL_72:
  v146 = v0[28];
  sub_1000176A8(v0[27], v146, &qword_1005B2468, &qword_1004D69B0);
  if (v232(v146, 1, v50) != 1)
  {
    v147 = v0[21];
    v148 = v0[9];
    v149 = (v0[28] + *(v50 + 48));
    v250 = *v149;
    v236 = v149[1];
    (*(v0[22] + 32))(v0[24]);
    v150 = 0;
    v151 = *(v148 + 16);
    do
    {
      v152 = v0[24];
      v154 = v0[21];
      v153 = v0[22];
      if (v151 == v150)
      {
        (*(v153 + 8))(v0[24], v0[21]);

LABEL_60:

        v131 = v237;
        v132 = v238;
        goto LABEL_61;
      }

      v155 = v150 + 1;
      v156 = v0[9] + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v150;
      sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority);
      v157 = dispatch thunk of static Equatable.== infix(_:_:)();
      v150 = v155;
    }

    while ((v157 & 1) == 0);
    v158 = v250 + 64;
    v159 = -1 << *(v250 + 32);
    if (-v159 < 64)
    {
      v160 = ~(-1 << -v159);
    }

    else
    {
      v160 = -1;
    }

    v161 = v160 & *(v250 + 64);
    v249 = (63 - v159) >> 6;

    v162 = 0;
    while (v161)
    {
      v166 = v162;
LABEL_92:
      v169 = v0[16];
      v170 = v0[17];
      v172 = v0[11];
      v171 = v0[12];
      v252 = (v161 - 1) & v161;
      v173 = __clz(__rbit64(v161)) | (v166 << 6);
      (*(v171 + 16))(v169, *(v250 + 48) + *(v171 + 72) * v173, v172);
      v174 = *(*(v250 + 56) + 8 * v173);
      v175 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
      v176 = *(v175 + 48);
      (*(v171 + 32))(v170, v169, v172);
      *(v170 + v176) = v174;
      (*(*(v175 - 8) + 56))(v170, 0, 1, v175);

LABEL_93:
      v177 = v0[18];
      sub_1000176A8(v0[17], v177, &qword_1005B2478, &unk_1004D69D0);
      v178 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
      if ((*(*(v178 - 8) + 48))(v177, 1, v178) == 1)
      {
        (*(v0[22] + 8))(v0[24], v0[21]);

        v50 = v235;
        goto LABEL_60;
      }

      v179 = v0[11];
      v180 = *(v0[18] + *(v178 + 48));
      (*(v0[12] + 32))(v0[14]);
      if (!*(v180 + 16))
      {
        goto LABEL_80;
      }

      v181 = v0[31];
      v182 = v0[8];
      v183 = *(v180 + 40);
      sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID);
      v184 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v255 = v180 + 56;
      v260 = v180;
      v185 = -1 << *(v180 + 32);
      v186 = v184 & ~v185;
      if ((*(v180 + 56 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186))
      {
        v187 = ~v185;
        v188 = *(v0[32] + 72);
        while (1)
        {
          v189 = v0;
          v192 = v0 + 38;
          v190 = v0[38];
          v191 = v192[1];
          v193 = v189[37];
          v194 = v189[33];
          v195 = v189[31];
          v196 = v189;
          v197 = v189[8];
          (v189[36])(v194, *(v260 + 48) + v186 * v188, v195);
          sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID);
          LOBYTE(v197) = dispatch thunk of static Equatable.== infix(_:_:)();
          v191(v194, v195);
          if (v197)
          {
            break;
          }

          v186 = (v186 + 1) & v187;
          v0 = v196;
          if (((*(v255 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v186) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        v0 = v196;
        v256 = v196[35];
        log = v196[24];
        v247 = v196[23];
        v243 = v196[22];
        v245 = v196[21];
        v198 = v196[14];
        v244 = v196[13];
        v200 = v196[11];
        v199 = v196[12];
        v239 = v196[8];
        v240 = v196[10];

        sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
        v201 = *(v199 + 72);
        v202 = (*(v199 + 80) + 32) & ~*(v199 + 80);
        v203 = swift_allocObject();
        *(v203 + 16) = xmmword_1004C1900;
        v204 = *(v199 + 16);
        v204(v203 + v202, v198, v200);
        sub_100386720(v239, v203, log);

        v204(v244, v198, v200);
        (*(v243 + 16))(v247, log, v245);
        v205 = Logger.logObject.getter();
        v206 = static os_log_type_t.default.getter();
        v207 = os_log_type_enabled(v205, v206);
        v208 = v196[22];
        v209 = v196[21];
        v257 = v209;
        v261 = v196[23];
        v211 = v196[13];
        v210 = v196[14];
        v212 = v196[11];
        v213 = v196[12];
        if (v207)
        {
          v214 = v196[12];
          v215 = v212;
          v246 = v212;
          v216 = swift_slowAlloc();
          v262[0] = swift_slowAlloc();
          *v216 = 141558787;
          *(v216 + 4) = 1752392040;
          *(v216 + 12) = 2081;
          v241 = Handle.identifier.getter();
          v248 = v210;
          v218 = v217;
          v219 = *(v214 + 8);
          v219(v211, v215);
          v220 = sub_10000D01C(v241, v218, v262);

          *(v216 + 14) = v220;
          *(v216 + 22) = 2160;
          *(v216 + 24) = 1752392040;
          *(v216 + 32) = 2081;
          sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
          v221 = dispatch thunk of CustomStringConvertible.description.getter();
          v223 = v222;
          (*(v208 + 8))(v261, v257);
          v224 = sub_10000D01C(v221, v223, v262);

          *(v216 + 34) = v224;
          _os_log_impl(&_mh_execute_header, v205, v206, "remove legacy subscription for handle: %{private,mask.hash}s with priority: %{private,mask.hash}s", v216, 0x2Au);
          swift_arrayDestroy();

          v219(v248, v246);
        }

        else
        {

          (*(v208 + 8))(v261, v257);
          v227 = *(v213 + 8);
          v227(v211, v212);
          v227(v210, v212);
          v0 = v196;
        }
      }

      else
      {
LABEL_80:
        v163 = v0[14];
        v164 = v0[11];
        v165 = v0[12];

        (*(v165 + 8))(v163, v164);
      }

      v158 = v250 + 64;
      v161 = v252;
    }

    if (v249 <= v162 + 1)
    {
      v167 = v162 + 1;
    }

    else
    {
      v167 = v249;
    }

    v168 = v167 - 1;
    while (1)
    {
      v166 = v162 + 1;
      if (__OFADD__(v162, 1))
      {
        break;
      }

      if (v166 >= v249)
      {
        v225 = v0[17];
        v226 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
        (*(*(v226 - 8) + 56))(v225, 1, 1, v226);
        v252 = 0;
        v162 = v168;
        goto LABEL_93;
      }

      v161 = *(v158 + 8 * v166);
      ++v162;
      if (v161)
      {
        v162 = v166;
        goto LABEL_92;
      }
    }

    __break(1u);
  }

  v228 = swift_task_alloc();
  v0[50] = v228;
  *v228 = v0;
  v228[1] = sub_100360C6C;
  v229 = v0[10];

  return sub_100021A68();
}

uint64_t sub_10035F75C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 392) = v0;

  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_100360F8C;
  }

  else
  {
    v7 = sub_10035F8A4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10035F8A4()
{
  v231 = v0;
  while (1)
  {
    result = (*(*(v0 + 96) + 8))(*(v0 + 120), *(v0 + 88));
    v2 = *(v0 + 360);
    v3 = *(v0 + 368);
LABEL_7:
    if (!v2)
    {
      v8 = ((1 << *(v0 + 409)) + 63) >> 6;
      if (v8 <= (v3 + 1))
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = ((1 << *(v0 + 409)) + 63) >> 6;
      }

      v10 = v9 - 1;
      while (1)
      {
        v11 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_105;
        }

        if (v11 >= v8)
        {
          v64 = *(v0 + 152);
          v65 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
          v16 = 0;
          goto LABEL_18;
        }

        v7 = *(v0 + 344);
        v2 = *(v7 + 8 * v11 + 64);
        ++v3;
        if (v2)
        {
          v3 = v11;
          goto LABEL_17;
        }
      }
    }

    v7 = *(v0 + 344);
LABEL_17:
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v229 + 96);
    v15 = *(v229 + 88);
    v16 = (v2 - 1) & v2;
    v17 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v14 + 16))(v13, *(v7 + 48) + *(v14 + 72) * v17, v15);
    v18 = *(*(v7 + 56) + 8 * v17);
    v19 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    v20 = *(v19 + 48);
    (*(v14 + 32))(v12, v13, v15);
    v0 = v229;
    *(v12 + v20) = v18;
    (*(*(v19 - 8) + 56))(v12, 0, 1, v19);

    v10 = v3;
LABEL_18:
    *(v0 + 360) = v16;
    *(v0 + 368) = v10;
    v21 = *(v0 + 160);
    sub_1000176A8(*(v0 + 152), v21, &qword_1005B2478, &unk_1004D69D0);
    v22 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      v23 = *(v0 + 344);
      v24 = *(v0 + 352);
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));

      v26 = *(v0 + 328);
      v25 = *(v0 + 336);
      if (!v26)
      {
        goto LABEL_21;
      }

      while (2)
      {
        v27 = *(v0 + 320);
LABEL_29:
        v32 = *(v0 + 232);
        v33 = *(v0 + 208);
        v34 = *(v229 + 176);
        v35 = *(v229 + 168);
        v36 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v37 = v36 | (v25 << 6);
        (*(v34 + 16))(v33, *(v27 + 48) + *(v34 + 72) * v37, v35);
        v38 = (*(v27 + 56) + 24 * v37);
        v39 = v38[1];
        v224 = *v38;
        v226 = v38[2];
        v40 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v41 = (v32 + *(v40 + 48));
        (*(v34 + 32))(v32, v33, v35);
        v0 = v229;
        *v41 = v224;
        v41[1] = v39;
        v41[2] = v226;
        (*(*(v40 - 8) + 56))(v32, 0, 1, v40);

        v30 = v25;
LABEL_30:
        *(v0 + 328) = v26;
        *(v0 + 336) = v30;
        v42 = *(v0 + 240);
        sub_1000176A8(*(v0 + 232), v42, &qword_1005B2468, &qword_1004D69B0);
        v43 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v44 = *(v43 - 8);
        v45 = *(v44 + 48);
        v46 = v42;
        v47 = v43;
        if (v45(v46, 1, v43) == 1)
        {
          v209 = v45;
          v211 = v47;
          v82 = *(v0 + 320);
          v83 = *(v0 + 80);

          v84 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
          swift_beginAccess();
          v85 = *(v83 + v84);
          v86 = *(v85 + 64);
          v210 = v85 + 64;
          v87 = -1 << *(v85 + 32);
          if (-v87 < 64)
          {
            v88 = ~(-1 << -v87);
          }

          else
          {
            v88 = -1;
          }

          v213 = v88 & v86;
          v206 = (63 - v87) >> 6;
          v207 = *(v83 + v84);
          v208 = (v44 + 56);

          v89 = 0;
LABEL_51:
          v90 = v213;
          if (v213)
          {
            v212 = v89;
            v91 = v89;
LABEL_61:
            v95 = *(v0 + 208);
            v96 = *(v0 + 216);
            v97 = *(v0 + 168);
            v98 = *(v0 + 176);
            v213 = (v90 - 1) & v90;
            v99 = __clz(__rbit64(v90)) | (v91 << 6);
            (*(v98 + 16))(v95, *(v207 + 48) + *(v98 + 72) * v99, v97);
            v100 = (*(v207 + 56) + 24 * v99);
            v101 = *v100;
            v102 = v100[1];
            v103 = v100[2];
            v104 = (v96 + *(v211 + 48));
            v105 = v95;
            v94 = v211;
            (*(v98 + 32))(v96, v105, v97);
            *v104 = v101;
            v104[1] = v102;
            v104[2] = v103;
            (*v208)(v96, 0, 1, v211);
            v0 = v229;

LABEL_62:
            v106 = *(v0 + 224);
            sub_1000176A8(*(v0 + 216), v106, &qword_1005B2468, &qword_1004D69B0);
            if (v209(v106, 1, v94) != 1)
            {
              v107 = *(v0 + 168);
              v108 = *(v0 + 72);
              v109 = (*(v0 + 224) + *(v94 + 48));
              v110 = v109[1];
              v223 = *v109;
              (*(*(v0 + 176) + 32))(*(v0 + 192));
              v111 = 0;
              v112 = *(v108 + 16);
              do
              {
                v113 = *(v0 + 192);
                v115 = *(v0 + 168);
                v114 = *(v0 + 176);
                if (v112 == v111)
                {
                  (*(v114 + 8))(*(v0 + 192), *(v0 + 168));

LABEL_50:

                  v89 = v212;
                  goto LABEL_51;
                }

                v116 = v111 + 1;
                v117 = *(v0 + 72) + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v111;
                sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority);
                v118 = dispatch thunk of static Equatable.== infix(_:_:)();
                v111 = v116;
              }

              while ((v118 & 1) == 0);
              v119 = v223 + 64;
              v120 = -1 << *(v223 + 32);
              if (-v120 < 64)
              {
                v121 = ~(-1 << -v120);
              }

              else
              {
                v121 = -1;
              }

              v122 = v121 & *(v223 + 64);
              v222 = (63 - v120) >> 6;

              v123 = 0;
              while (v122)
              {
                v127 = v123;
LABEL_82:
                v130 = *(v0 + 128);
                v131 = *(v0 + 136);
                v133 = *(v0 + 88);
                v132 = *(v0 + 96);
                v225 = (v122 - 1) & v122;
                v134 = __clz(__rbit64(v122)) | (v127 << 6);
                (*(v132 + 16))(v130, *(v223 + 48) + *(v132 + 72) * v134, v133);
                v135 = *(*(v223 + 56) + 8 * v134);
                v136 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                v137 = *(v136 + 48);
                (*(v132 + 32))(v131, v130, v133);
                *(v131 + v137) = v135;
                v0 = v229;
                (*(*(v136 - 8) + 56))(v131, 0, 1, v136);

LABEL_83:
                v138 = *(v0 + 144);
                sub_1000176A8(*(v0 + 136), v138, &qword_1005B2478, &unk_1004D69D0);
                v139 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                if ((*(*(v139 - 8) + 48))(v138, 1, v139) == 1)
                {
                  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));

                  goto LABEL_50;
                }

                v140 = *(v0 + 88);
                v141 = *(*(v0 + 144) + *(v139 + 48));
                (*(*(v0 + 96) + 32))(*(v0 + 112));
                if (*(v141 + 16))
                {
                  v142 = *(v0 + 248);
                  v143 = *(v0 + 64);
                  v144 = *(v141 + 40);
                  sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID);
                  v145 = dispatch thunk of Hashable._rawHashValue(seed:)();
                  v146 = v141 + 56;
                  v227 = v141;
                  v147 = -1 << *(v141 + 32);
                  v148 = v145 & ~v147;
                  if ((*(v141 + 56 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148))
                  {
                    v149 = ~v147;
                    v150 = *(*(v229 + 256) + 72);
                    while (1)
                    {
                      v152 = *(v229 + 304);
                      v151 = *(v229 + 312);
                      v153 = *(v229 + 296);
                      v154 = *(v229 + 264);
                      v155 = *(v229 + 248);
                      v156 = *(v229 + 64);
                      (*(v229 + 288))(v154, *(v227 + 48) + v148 * v150, v155);
                      sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID);
                      LOBYTE(v156) = dispatch thunk of static Equatable.== infix(_:_:)();
                      v151(v154, v155);
                      if (v156)
                      {
                        break;
                      }

                      v148 = (v148 + 1) & v149;
                      if (((*(v146 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148) & 1) == 0)
                      {
                        goto LABEL_89;
                      }
                    }

                    v220 = *(v229 + 280);
                    v160 = *(v229 + 176);
                    v218 = *(v229 + 168);
                    v219 = *(v229 + 184);
                    v161 = *(v229 + 112);
                    v215 = *(v229 + 192);
                    v217 = *(v229 + 104);
                    v162 = *(v229 + 88);
                    v163 = *(v229 + 96);
                    v214 = *(v229 + 80);
                    v164 = *(v229 + 64);

                    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
                    v165 = *(v163 + 72);
                    v166 = (*(v163 + 80) + 32) & ~*(v163 + 80);
                    v167 = swift_allocObject();
                    *(v167 + 16) = xmmword_1004C1900;
                    v168 = *(v163 + 16);
                    v168(v167 + v166, v161, v162);
                    sub_100386720(v164, v167, v215);

                    v168(v217, v161, v162);
                    (*(v160 + 16))(v219, v215, v218);
                    v169 = Logger.logObject.getter();
                    v170 = static os_log_type_t.default.getter();
                    v171 = os_log_type_enabled(v169, v170);
                    v173 = *(v229 + 176);
                    v172 = *(v229 + 184);
                    v228 = *(v229 + 168);
                    v175 = *(v229 + 104);
                    v174 = *(v229 + 112);
                    v177 = *(v229 + 88);
                    v176 = *(v229 + 96);
                    if (v171)
                    {
                      v178 = *(v229 + 184);
                      v179 = swift_slowAlloc();
                      v230[0] = swift_slowAlloc();
                      *v179 = 141558787;
                      *(v179 + 4) = 1752392040;
                      *(v179 + 12) = 2081;
                      v216 = Handle.identifier.getter();
                      v221 = v174;
                      v181 = v180;
                      v182 = *(v176 + 8);
                      v182(v175, v177);
                      v183 = sub_10000D01C(v216, v181, v230);

                      *(v179 + 14) = v183;
                      *(v179 + 22) = 2160;
                      *(v179 + 24) = 1752392040;
                      *(v179 + 32) = 2081;
                      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
                      v184 = dispatch thunk of CustomStringConvertible.description.getter();
                      v186 = v185;
                      (*(v173 + 8))(v178, v228);
                      v187 = sub_10000D01C(v184, v186, v230);

                      *(v179 + 34) = v187;
                      _os_log_impl(&_mh_execute_header, v169, v170, "remove legacy subscription for handle: %{private,mask.hash}s with priority: %{private,mask.hash}s", v179, 0x2Au);
                      swift_arrayDestroy();

                      v182(v221, v177);
                    }

                    else
                    {

                      (*(v173 + 8))(v172, v228);
                      v190 = *(v176 + 8);
                      v190(v175, v177);
                      v190(v174, v177);
                    }

                    v0 = v229;
                  }

                  else
                  {
LABEL_89:
                    v0 = v229;
                    v157 = *(v229 + 112);
                    v158 = *(v229 + 88);
                    v159 = *(v229 + 96);

                    (*(v159 + 8))(v157, v158);
                  }
                }

                else
                {
                  v124 = *(v0 + 112);
                  v125 = *(v0 + 88);
                  v126 = *(v0 + 96);

                  (*(v126 + 8))(v124, v125);
                }

                v119 = v223 + 64;
                v122 = v225;
              }

              if (v222 <= v123 + 1)
              {
                v128 = v123 + 1;
              }

              else
              {
                v128 = v222;
              }

              v129 = v128 - 1;
              while (1)
              {
                v127 = v123 + 1;
                if (__OFADD__(v123, 1))
                {
                  break;
                }

                if (v127 >= v222)
                {
                  v188 = *(v0 + 136);
                  v189 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                  (*(*(v189 - 8) + 56))(v188, 1, 1, v189);
                  v225 = 0;
                  v123 = v129;
                  goto LABEL_83;
                }

                v122 = *(v119 + 8 * v127);
                ++v123;
                if (v122)
                {
                  v123 = v127;
                  goto LABEL_82;
                }
              }

              __break(1u);
            }

            v191 = swift_task_alloc();
            *(v0 + 400) = v191;
            *v191 = v0;
            v191[1] = sub_100360C6C;
            v192 = *(v0 + 80);

            return sub_100021A68();
          }

          if (v206 <= v89 + 1)
          {
            v92 = v89 + 1;
          }

          else
          {
            v92 = v206;
          }

          v93 = v92 - 1;
          v94 = v211;
          while (1)
          {
            v91 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              break;
            }

            if (v91 >= v206)
            {
              (*v208)(*(v0 + 216), 1, 1, v211);
              v212 = v93;
              v213 = 0;
              goto LABEL_62;
            }

            v90 = *(v210 + 8 * v91);
            ++v89;
            if (v90)
            {
              v212 = v91;
              goto LABEL_61;
            }
          }
        }

        else
        {
          v48 = *(v0 + 200);
          v49 = *(v0 + 168);
          v50 = *(v0 + 176);
          v51 = *(v0 + 72);
          v52 = (*(v0 + 240) + *(v47 + 48));
          v53 = *v52;
          *(v0 + 344) = *v52;
          *(v0 + 352) = v52[1];
          (*(v50 + 32))(v48);
          v54 = 0;
          v55 = *(v51 + 16);
          while (1)
          {
            v56 = *(v0 + 200);
            v58 = *(v0 + 168);
            v57 = *(v0 + 176);
            if (v55 == v54)
            {
              break;
            }

            v59 = v54 + 1;
            v60 = *(v0 + 72) + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v54;
            sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v54 = v59;
            if (v61)
            {
              v4 = *(v53 + 32);
              *(v0 + 409) = v4;
              v5 = 1 << v4;
              if (v5 < 64)
              {
                v6 = ~(-1 << v5);
              }

              else
              {
                v6 = -1;
              }

              v2 = v6 & *(v53 + 64);

              v3 = 0;
              goto LABEL_7;
            }
          }

          (*(v57 + 8))(*(v0 + 200), *(v0 + 168));

          v25 = v30;
          if (v26)
          {
            continue;
          }

LABEL_21:
          v28 = ((1 << *(v0 + 408)) + 63) >> 6;
          if (v28 <= (v25 + 1))
          {
            v29 = v25 + 1;
          }

          else
          {
            v29 = ((1 << *(v0 + 408)) + 63) >> 6;
          }

          v30 = v29 - 1;
          while (1)
          {
            v31 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v31 >= v28)
            {
              v62 = *(v0 + 232);
              v63 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
              (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
              v26 = 0;
              goto LABEL_30;
            }

            v27 = *(v0 + 320);
            v26 = *(v27 + 8 * v31 + 64);
            ++v25;
            if (v26)
            {
              v25 = v31;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_105:
          __break(1u);
        }

        break;
      }

      __break(1u);
      return result;
    }

    v66 = *(v0 + 88);
    v67 = *(*(v0 + 160) + *(v22 + 48));
    (*(*(v0 + 96) + 32))(*(v0 + 120));
    if (*(v67 + 16))
    {
      v68 = *(v0 + 248);
      v69 = *(v0 + 64);
      v70 = *(v67 + 40);
      sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID);
      v71 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v72 = -1 << *(v67 + 32);
      v73 = v71 & ~v72;
      if ((*(v67 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
      {
        break;
      }
    }

LABEL_44:
  }

  v74 = ~v72;
  v75 = *(*(v0 + 256) + 72);
  while (1)
  {
    v77 = *(v0 + 304);
    v76 = *(v0 + 312);
    v78 = *(v0 + 296);
    v79 = *(v0 + 264);
    v80 = *(v0 + 248);
    v81 = *(v0 + 64);
    (*(v0 + 288))(v79, *(v67 + 48) + v73 * v75, v80);
    sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID);
    LOBYTE(v81) = dispatch thunk of static Equatable.== infix(_:_:)();
    v76(v79, v80);
    if (v81)
    {
      break;
    }

    v73 = (v73 + 1) & v74;
    v0 = v229;
    if (((*(v67 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v193 = *(v229 + 200);
  v194 = *(v229 + 120);
  v196 = *(v229 + 88);
  v195 = *(v229 + 96);
  v197 = *(v229 + 80);
  v198 = *(v229 + 64);

  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  v199 = *(v195 + 72);
  v200 = (*(v195 + 80) + 32) & ~*(v195 + 80);
  v201 = swift_allocObject();
  *(v201 + 16) = xmmword_1004C1900;
  (*(v195 + 16))(v201 + v200, v194, v196);
  v202 = sub_100362404(v198, v201, v193);
  *(v229 + 376) = v202;

  v203 = swift_task_alloc();
  *(v229 + 384) = v203;
  *v203 = v229;
  v203[1] = sub_10035F75C;
  v204 = *(v229 + 200);
  v205 = *(v229 + 80);

  return sub_100363EB0(v202, v204);
}

uint64_t sub_100360C6C(char a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 410) = a1;

  return _swift_task_switch(sub_100360D84, v3, 0);
}

uint64_t sub_100360D84()
{
  if ((*(v0 + 410) & 1) == 0)
  {
    v1 = *(v0 + 80);
    v2 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
    if (*(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
    {
      v3 = *(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask);

      Task.cancel()();

      v4 = *(v1 + v2);
    }

    v5 = *(v0 + 280);
    *(v1 + v2) = 0;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cancel next legacy location refresh task", v8, 2u);
    }
  }

  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v21 = *(v0 + 160);
  v22 = *(v0 + 152);
  v23 = *(v0 + 144);
  v24 = *(v0 + 136);
  v25 = *(v0 + 128);
  v26 = *(v0 + 120);
  v27 = *(v0 + 112);
  v28 = *(v0 + 104);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100360F8C()
{
  v241 = v0;
  v1 = v0;
  v2 = *(v0 + 392);
  v3 = *(v0 + 280);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 392);
  v239 = v0;
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error from unsubscribe: %{public}@", v8, 0xCu);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  while (1)
  {
    result = (*(*(v1 + 96) + 8))(*(v1 + 120), *(v1 + 88));
    v12 = *(v1 + 360);
    v13 = *(v1 + 368);
LABEL_9:
    if (!v12)
    {
      v18 = ((1 << *(v1 + 409)) + 63) >> 6;
      if (v18 <= (v13 + 1))
      {
        v19 = v13 + 1;
      }

      else
      {
        v19 = ((1 << *(v1 + 409)) + 63) >> 6;
      }

      v20 = v19 - 1;
      while (1)
      {
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_106;
        }

        if (v21 >= v18)
        {
          v74 = *(v1 + 152);
          v75 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
          v27 = 0;
          goto LABEL_20;
        }

        v17 = *(v1 + 344);
        v12 = *(v17 + 8 * v21 + 64);
        ++v13;
        if (v12)
        {
          v13 = v21;
          goto LABEL_19;
        }
      }
    }

    v17 = *(v1 + 344);
LABEL_19:
    v22 = *(v1 + 152);
    v23 = *(v1 + 128);
    v24 = *(v1 + 88);
    v25 = *(v1 + 96);
    v26 = __clz(__rbit64(v12));
    v27 = (v12 - 1) & v12;
    v28 = v26 | (v13 << 6);
    (*(v25 + 16))(v23, *(v17 + 48) + *(v25 + 72) * v28, v24);
    v29 = *(*(v17 + 56) + 8 * v28);
    v30 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    v31 = *(v30 + 48);
    (*(v25 + 32))(v22, v23, v24);
    *(v22 + v31) = v29;
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);

    v20 = v13;
LABEL_20:
    *(v1 + 360) = v27;
    *(v1 + 368) = v20;
    v32 = *(v1 + 160);
    sub_1000176A8(*(v1 + 152), v32, &qword_1005B2478, &unk_1004D69D0);
    v33 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      v34 = *(v1 + 344);
      v35 = *(v1 + 352);
      (*(*(v1 + 176) + 8))(*(v1 + 200), *(v1 + 168));

      v36 = *(v1 + 328);
      v37 = *(v1 + 336);
      if (!v36)
      {
        goto LABEL_23;
      }

      while (2)
      {
        v38 = *(v1 + 320);
LABEL_31:
        v43 = *(v1 + 232);
        v44 = *(v1 + 208);
        v45 = *(v239 + 176);
        v46 = *(v239 + 168);
        v47 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v48 = v47 | (v37 << 6);
        (*(v45 + 16))(v44, *(v38 + 48) + *(v45 + 72) * v48, v46);
        v49 = (*(v38 + 56) + 24 * v48);
        v50 = *v49;
        v51 = v49[1];
        v236 = v49[2];
        v52 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v53 = (v43 + *(v52 + 48));
        (*(v45 + 32))(v43, v44, v46);
        v1 = v239;
        *v53 = v50;
        v53[1] = v51;
        v53[2] = v236;
        (*(*(v52 - 8) + 56))(v43, 0, 1, v52);

        v41 = v37;
LABEL_32:
        *(v1 + 328) = v36;
        *(v1 + 336) = v41;
        v54 = *(v1 + 240);
        sub_1000176A8(*(v1 + 232), v54, &qword_1005B2468, &qword_1004D69B0);
        v55 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v56 = *(v55 - 8);
        v57 = *(v56 + 48);
        if (v57(v54, 1, v55) == 1)
        {
          v218 = v57;
          v94 = *(v1 + 320);
          v95 = *(v1 + 80);

          v96 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
          swift_beginAccess();
          v97 = *(v95 + v96);
          v98 = *(v97 + 64);
          v219 = v97 + 64;
          v99 = -1 << *(v97 + 32);
          if (-v99 < 64)
          {
            v100 = ~(-1 << -v99);
          }

          else
          {
            v100 = -1;
          }

          v101 = v100 & v98;
          v214 = (63 - v99) >> 6;
          v216 = *(v95 + v96);
          v217 = (v56 + 56);

          v102 = 0;
          v215 = v55;
LABEL_53:
          if (v101)
          {
            v222 = v102;
            v103 = v102;
LABEL_63:
            v106 = *(v1 + 208);
            v107 = *(v1 + 216);
            v109 = *(v1 + 168);
            v108 = *(v1 + 176);
            v221 = (v101 - 1) & v101;
            v110 = __clz(__rbit64(v101)) | (v103 << 6);
            (*(v108 + 16))(v106, *(v216 + 48) + *(v108 + 72) * v110, v109);
            v111 = (*(v216 + 56) + 24 * v110);
            v112 = *v111;
            v113 = v111[1];
            v114 = v111[2];
            v115 = (v107 + *(v55 + 48));
            (*(v108 + 32))(v107, v106, v109);
            *v115 = v112;
            v115[1] = v113;
            v115[2] = v114;
            (*v217)(v107, 0, 1, v55);

LABEL_64:
            v116 = *(v1 + 224);
            sub_1000176A8(*(v1 + 216), v116, &qword_1005B2468, &qword_1004D69B0);
            if (v218(v116, 1, v55) != 1)
            {
              v117 = *(v1 + 168);
              v118 = *(v1 + 72);
              v119 = (*(v1 + 224) + *(v55 + 48));
              v234 = *v119;
              v220 = v119[1];
              (*(*(v1 + 176) + 32))(*(v1 + 192));
              v120 = 0;
              v121 = *(v118 + 16);
              do
              {
                v122 = *(v1 + 192);
                v124 = *(v1 + 168);
                v123 = *(v1 + 176);
                if (v121 == v120)
                {
                  (*(v123 + 8))(*(v1 + 192), *(v1 + 168));

LABEL_52:

                  v101 = v221;
                  v102 = v222;
                  goto LABEL_53;
                }

                v125 = v120 + 1;
                v126 = *(v1 + 72) + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v120;
                sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority);
                v127 = dispatch thunk of static Equatable.== infix(_:_:)();
                v120 = v125;
              }

              while ((v127 & 1) == 0);
              v128 = v234 + 64;
              v129 = -1 << *(v234 + 32);
              if (-v129 < 64)
              {
                v130 = ~(-1 << -v129);
              }

              else
              {
                v130 = -1;
              }

              v131 = v130 & *(v234 + 64);
              v233 = (63 - v129) >> 6;

              v132 = 0;
              while (v131)
              {
                v136 = v132;
LABEL_84:
                v139 = *(v1 + 128);
                v140 = *(v1 + 136);
                v142 = *(v1 + 88);
                v141 = *(v1 + 96);
                v235 = (v131 - 1) & v131;
                v143 = __clz(__rbit64(v131)) | (v136 << 6);
                (*(v141 + 16))(v139, *(v234 + 48) + *(v141 + 72) * v143, v142);
                v144 = *(*(v234 + 56) + 8 * v143);
                v145 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                v146 = *(v145 + 48);
                (*(v141 + 32))(v140, v139, v142);
                *(v140 + v146) = v144;
                (*(*(v145 - 8) + 56))(v140, 0, 1, v145);

LABEL_85:
                v147 = *(v1 + 144);
                sub_1000176A8(*(v1 + 136), v147, &qword_1005B2478, &unk_1004D69D0);
                v148 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                if ((*(*(v148 - 8) + 48))(v147, 1, v148) == 1)
                {
                  (*(*(v1 + 176) + 8))(*(v1 + 192), *(v1 + 168));

                  v55 = v215;
                  goto LABEL_52;
                }

                v149 = *(v1 + 88);
                v150 = *(*(v1 + 144) + *(v148 + 48));
                (*(*(v1 + 96) + 32))(*(v1 + 112));
                if (*(v150 + 16))
                {
                  v151 = *(v1 + 248);
                  v152 = *(v1 + 64);
                  v153 = *(v150 + 40);
                  sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID);
                  v154 = dispatch thunk of Hashable._rawHashValue(seed:)();
                  v155 = v150 + 56;
                  v237 = v150;
                  v156 = -1 << *(v150 + 32);
                  v157 = v154 & ~v156;
                  if ((*(v150 + 56 + ((v157 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v157))
                  {
                    v158 = ~v156;
                    v159 = *(*(v239 + 256) + 72);
                    while (1)
                    {
                      v161 = *(v239 + 304);
                      v160 = *(v239 + 312);
                      v162 = *(v239 + 296);
                      v163 = *(v239 + 264);
                      v164 = *(v239 + 248);
                      v165 = *(v239 + 64);
                      (*(v239 + 288))(v163, *(v237 + 48) + v157 * v159, v164);
                      sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID);
                      LOBYTE(v165) = dispatch thunk of static Equatable.== infix(_:_:)();
                      v160(v163, v164);
                      if (v165)
                      {
                        break;
                      }

                      v157 = (v157 + 1) & v158;
                      if (((*(v155 + ((v157 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v157) & 1) == 0)
                      {
                        goto LABEL_91;
                      }
                    }

                    v1 = v239;
                    v231 = *(v239 + 280);
                    v226 = *(v239 + 192);
                    v230 = *(v239 + 184);
                    v169 = *(v239 + 176);
                    v170 = *(v239 + 112);
                    v227 = *(v239 + 104);
                    log = *(v239 + 168);
                    v171 = *(v239 + 88);
                    v172 = *(v239 + 96);
                    v224 = *(v239 + 80);
                    v173 = *(v239 + 64);

                    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
                    v174 = *(v172 + 72);
                    v175 = (*(v172 + 80) + 32) & ~*(v172 + 80);
                    v176 = swift_allocObject();
                    *(v176 + 16) = xmmword_1004C1900;
                    v177 = *(v172 + 16);
                    v177(v176 + v175, v170, v171);
                    sub_100386720(v173, v176, v226);

                    v177(v227, v170, v171);
                    (*(v169 + 16))(v230, v226, log);
                    v178 = Logger.logObject.getter();
                    v179 = static os_log_type_t.default.getter();
                    v180 = os_log_type_enabled(v178, v179);
                    v182 = *(v239 + 176);
                    v181 = *(v239 + 184);
                    v238 = *(v239 + 168);
                    v184 = *(v239 + 104);
                    v183 = *(v239 + 112);
                    v185 = *(v239 + 88);
                    v186 = *(v239 + 96);
                    if (v180)
                    {
                      v225 = *(v239 + 184);
                      v187 = swift_slowAlloc();
                      v240[0] = swift_slowAlloc();
                      *v187 = 141558787;
                      v228 = v179;
                      *(v187 + 4) = 1752392040;
                      *(v187 + 12) = 2081;
                      v223 = Handle.identifier.getter();
                      v232 = v183;
                      v189 = v188;
                      v190 = *(v186 + 8);
                      v190(v184, v185);
                      v191 = sub_10000D01C(v223, v189, v240);

                      *(v187 + 14) = v191;
                      *(v187 + 22) = 2160;
                      *(v187 + 24) = 1752392040;
                      *(v187 + 32) = 2081;
                      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
                      v192 = dispatch thunk of CustomStringConvertible.description.getter();
                      v194 = v193;
                      (*(v182 + 8))(v225, v238);
                      v195 = sub_10000D01C(v192, v194, v240);

                      *(v187 + 34) = v195;
                      _os_log_impl(&_mh_execute_header, v178, v228, "remove legacy subscription for handle: %{private,mask.hash}s with priority: %{private,mask.hash}s", v187, 0x2Au);
                      swift_arrayDestroy();

                      v190(v232, v185);
                    }

                    else
                    {

                      (*(v182 + 8))(v181, v238);
                      v198 = *(v186 + 8);
                      v198(v184, v185);
                      v198(v183, v185);
                    }
                  }

                  else
                  {
LABEL_91:
                    v1 = v239;
                    v166 = *(v239 + 112);
                    v167 = *(v239 + 88);
                    v168 = *(v239 + 96);

                    (*(v168 + 8))(v166, v167);
                  }
                }

                else
                {
                  v133 = *(v1 + 112);
                  v134 = *(v1 + 88);
                  v135 = *(v1 + 96);

                  (*(v135 + 8))(v133, v134);
                }

                v128 = v234 + 64;
                v131 = v235;
              }

              if (v233 <= v132 + 1)
              {
                v137 = v132 + 1;
              }

              else
              {
                v137 = v233;
              }

              v138 = v137 - 1;
              while (1)
              {
                v136 = v132 + 1;
                if (__OFADD__(v132, 1))
                {
                  break;
                }

                if (v136 >= v233)
                {
                  v196 = *(v1 + 136);
                  v197 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                  (*(*(v197 - 8) + 56))(v196, 1, 1, v197);
                  v235 = 0;
                  v132 = v138;
                  goto LABEL_85;
                }

                v131 = *(v128 + 8 * v136);
                ++v132;
                if (v131)
                {
                  v132 = v136;
                  goto LABEL_84;
                }
              }

              __break(1u);
            }

            v199 = swift_task_alloc();
            *(v1 + 400) = v199;
            *v199 = v1;
            v199[1] = sub_100360C6C;
            v200 = *(v1 + 80);

            return sub_100021A68();
          }

          if (v214 <= v102 + 1)
          {
            v104 = v102 + 1;
          }

          else
          {
            v104 = v214;
          }

          v105 = v104 - 1;
          while (1)
          {
            v103 = v102 + 1;
            if (__OFADD__(v102, 1))
            {
              break;
            }

            if (v103 >= v214)
            {
              (*v217)(*(v1 + 216), 1, 1, v55);
              v221 = 0;
              v222 = v105;
              goto LABEL_64;
            }

            v101 = *(v219 + 8 * v103);
            ++v102;
            if (v101)
            {
              v222 = v103;
              goto LABEL_63;
            }
          }
        }

        else
        {
          v58 = *(v1 + 200);
          v59 = *(v1 + 168);
          v60 = *(v1 + 176);
          v61 = *(v1 + 72);
          v62 = (*(v1 + 240) + *(v55 + 48));
          v63 = *v62;
          *(v1 + 344) = *v62;
          *(v1 + 352) = v62[1];
          (*(v60 + 32))(v58);
          v64 = 0;
          v65 = *(v61 + 16);
          while (1)
          {
            v66 = *(v1 + 200);
            v68 = *(v1 + 168);
            v67 = *(v1 + 176);
            if (v65 == v64)
            {
              break;
            }

            v69 = v64 + 1;
            v70 = *(v1 + 72) + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v64;
            sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority);
            v71 = dispatch thunk of static Equatable.== infix(_:_:)();
            v64 = v69;
            if (v71)
            {
              v14 = *(v63 + 32);
              *(v1 + 409) = v14;
              v15 = 1 << v14;
              if (v15 < 64)
              {
                v16 = ~(-1 << v15);
              }

              else
              {
                v16 = -1;
              }

              v12 = v16 & *(v63 + 64);

              v13 = 0;
              goto LABEL_9;
            }
          }

          (*(v67 + 8))(*(v1 + 200), *(v1 + 168));

          v37 = v41;
          if (v36)
          {
            continue;
          }

LABEL_23:
          v39 = ((1 << *(v1 + 408)) + 63) >> 6;
          if (v39 <= (v37 + 1))
          {
            v40 = v37 + 1;
          }

          else
          {
            v40 = ((1 << *(v1 + 408)) + 63) >> 6;
          }

          v41 = v40 - 1;
          while (1)
          {
            v42 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if (v42 >= v39)
            {
              v72 = *(v1 + 232);
              v73 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
              (*(*(v73 - 8) + 56))(v72, 1, 1, v73);
              v36 = 0;
              goto LABEL_32;
            }

            v38 = *(v1 + 320);
            v36 = *(v38 + 8 * v42 + 64);
            ++v37;
            if (v36)
            {
              v37 = v42;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_106:
          __break(1u);
        }

        break;
      }

      __break(1u);
      return result;
    }

    v76 = *(v1 + 88);
    v77 = *(*(v1 + 160) + *(v33 + 48));
    (*(*(v1 + 96) + 32))(*(v1 + 120));
    if (*(v77 + 16))
    {
      v78 = *(v1 + 248);
      v79 = *(v1 + 64);
      v80 = *(v77 + 40);
      sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID);
      v81 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v82 = -1 << *(v77 + 32);
      v83 = v81 & ~v82;
      if ((*(v77 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
      {
        break;
      }
    }

LABEL_46:
  }

  v84 = ~v82;
  v85 = *(*(v1 + 256) + 72);
  while (1)
  {
    v86 = v1;
    v89 = v1 + 304;
    v88 = *(v1 + 304);
    v87 = *(v89 + 8);
    v90 = *(v86 + 296);
    v91 = *(v86 + 264);
    v92 = *(v86 + 248);
    v93 = *(v86 + 64);
    (*(v86 + 288))(v91, *(v77 + 48) + v83 * v85, v92);
    sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID);
    LOBYTE(v93) = dispatch thunk of static Equatable.== infix(_:_:)();
    v87(v91, v92);
    if (v93)
    {
      break;
    }

    v83 = (v83 + 1) & v84;
    v1 = v239;
    if (((*(v77 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v201 = *(v239 + 200);
  v202 = *(v239 + 120);
  v204 = *(v239 + 88);
  v203 = *(v239 + 96);
  v205 = *(v239 + 80);
  v206 = *(v239 + 64);

  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  v207 = *(v203 + 72);
  v208 = (*(v203 + 80) + 32) & ~*(v203 + 80);
  v209 = swift_allocObject();
  *(v209 + 16) = xmmword_1004C1900;
  (*(v203 + 16))(v209 + v208, v202, v204);
  v210 = sub_100362404(v206, v209, v201);
  *(v239 + 376) = v210;

  v211 = swift_task_alloc();
  *(v239 + 384) = v211;
  *v211 = v239;
  v211[1] = sub_10035F75C;
  v212 = *(v239 + 200);
  v213 = *(v239 + 80);

  return sub_100363EB0(v210, v212);
}

void (**sub_100362404(uint64_t a1, void (**a2)(char *, uint64_t, uint64_t), uint64_t a3))(char *, uint64_t, uint64_t)
{
  v4 = v3;
  v8 = 0;
  Priority = type metadata accessor for LocatePriority();
  v108 = *(Priority - 8);
  v9 = *(v108 + 64);
  v10 = __chkstk_darwin(Priority);
  v119 = v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v117 = v103 - v12;
  v13 = sub_10004B564(&qword_1005B2468, &qword_1004D69B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v112 = v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v110 = v103 - v17;
  v122 = _swiftEmptyArrayStorage;
  v18 = a2[2];
  if (v18)
  {
    v19 = *(type metadata accessor for Handle() - 8);
    v20 = a2;
    v21 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v22 = *(v19 + 72);
    v23 = v18;
    do
    {
      sub_10037CD0C(v21, a1, a3, "TRACE: removeSubscription: client: %s\npriority: %{public}s handle: %{private,mask.hash}s");
      v21 += v22;
      v23 = (v23 - 1);
    }

    while (v23);
  }

  else
  {
    v20 = a2;
  }

  v24 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v25 = *(v4 + v24);
  v26 = &qword_1005A8000;
  v27 = v20;
  if (!*(v25 + 16))
  {
    goto LABEL_17;
  }

  v28 = *(v4 + v24);

  v29 = sub_1001FDF60(a3);
  if ((v30 & 1) == 0)
  {

LABEL_17:
    v122 = v20;

    goto LABEL_18;
  }

  v116 = v24;
  v118 = v4;
  v31 = (*(v25 + 56) + 24 * v29);
  v33 = *v31;
  v32 = v31[1];
  v34 = v31[2];

  v121[0] = v33;
  v121[1] = v32;
  v115 = v34;
  v121[2] = v34;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000A6F0(v35, qword_1005E0B28);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v113 = v38;
    v114 = swift_slowAlloc();
    v120 = v114;
    *v38 = 136315138;

    v39 = sub_100344994(v33, v32, v115);
    v115 = v27;
    v40 = v39;
    v42 = v41;

    v43 = v40;
    v27 = v115;
    v44 = sub_10000D01C(v43, v42, &v120);

    v45 = v113;
    *(v113 + 1) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "removeSubscription: %s", v45, 0xCu);
    sub_100004984(v114);
  }

  v4 = v118;
  v24 = v116;
  if (v18)
  {
    v46 = *(type metadata accessor for Handle() - 8);
    v47 = v27 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v48 = *(v46 + 72);
    do
    {
      sub_10037AC3C(v47, v121, a1, a3, &v122, v4);
      v47 += v48;
      v18 = (v18 - 1);
    }

    while (v18);
  }

  v26 = &qword_1005A8000;
LABEL_18:
  v49 = Priority;
  if (v26[153] != -1)
  {
LABEL_42:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  v51 = sub_10000A6F0(v50, qword_1005E0B28);

  v109 = v51;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  v54 = os_log_type_enabled(v52, v53);
  v103[1] = v8;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v121[0] = v56;
    *v55 = 141558275;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    type metadata accessor for Handle();
    v57 = Array.description.getter();
    v8 = v4;
    v59 = sub_10000D01C(v57, v58, v121);

    *(v55 + 14) = v59;
    v4 = v8;
    _os_log_impl(&_mh_execute_header, v52, v53, "After removeSubscription for handles: %{private,mask.hash}s", v55, 0x16u);
    sub_100004984(v56);
  }

  v60 = *(v4 + v24);
  v61 = *(v60 + 64);
  v105 = v60 + 64;
  v62 = 1 << *(v60 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v24 = v63 & v61;
  v104 = (v62 + 63) >> 6;
  v115 = (v108 + 32);
  v116 = (v108 + 16);
  v114 = (v108 + 8);
  v107 = v60;

  v64 = 0;
  v4 = &qword_1004D69B8;
  *&v65 = 141558787;
  v106 = v65;
  v66 = v119;
  while (1)
  {
    if (!v24)
    {
      if (v104 <= v64 + 1)
      {
        v68 = v64 + 1;
      }

      else
      {
        v68 = v104;
      }

      v69 = v112;
      while (1)
      {
        v67 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v67 >= v104)
        {
          v118 = (v68 - 1);
          v81 = v49;
          v101 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
          (*(*(v101 - 8) + 56))(v69, 1, 1, v101);
          v24 = 0;
          goto LABEL_36;
        }

        v24 = *(v105 + 8 * v67);
        v64 = (v64 + 1);
        if (v24)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v67 = v64;
LABEL_35:
    v70 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v71 = v70 | (v67 << 6);
    v72 = v107;
    v73 = v108;
    (*(v108 + 16))(v117, *(v107 + 48) + *(v108 + 72) * v71, v49);
    v74 = (*(v72 + 56) + 24 * v71);
    v75 = *v74;
    v76 = v74[1];
    v77 = v74[2];
    v78 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v79 = &v112[*(v78 + 48)];
    v80 = *(v73 + 32);
    v69 = v112;
    v81 = v49;
    v80();
    *v79 = v75;
    *(v79 + 1) = v76;
    *(v79 + 2) = v77;
    (*(*(v78 - 8) + 56))(v69, 0, 1, v78);

    v118 = v67;
    v66 = v119;
LABEL_36:
    v82 = v110;
    sub_1000176A8(v69, v110, &qword_1005B2468, &qword_1004D69B0);
    v83 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
    {
      break;
    }

    v84 = (v82 + *(v83 + 48));
    v86 = *v84;
    v85 = v84[1];
    v87 = v82;
    v113 = v84[2];
    v49 = v81;
    (*v116)(v66, v82, v81);
    v8 = v117;
    (*v115)(v117, v87, v81);

    v88 = Logger.logObject.getter();
    v89 = v66;
    v90 = static os_log_type_t.default.getter();
    v91 = *v114;
    (*v114)(v8, v81);

    if (os_log_type_enabled(v88, v90))
    {
      v92 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v121[0] = v8;
      *v92 = v106;
      *(v92 + 4) = 1752392040;
      *(v92 + 12) = 2081;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v91(v119, Priority);
      v96 = sub_10000D01C(v93, v95, v121);
      v49 = Priority;

      *(v92 + 14) = v96;
      *(v92 + 22) = 2160;
      *(v92 + 24) = 1752392040;
      *(v92 + 32) = 2081;

      v97 = sub_100344994(v86, v85, v113);
      v99 = v98;

      v100 = sub_10000D01C(v97, v99, v121);

      *(v92 + 34) = v100;
      _os_log_impl(&_mh_execute_header, v88, v90, "priority: %{private,mask.hash}s: :%{private,mask.hash}s", v92, 0x2Au);
      swift_arrayDestroy();

      v66 = v119;

      v64 = v118;
    }

    else
    {

      v91(v89, v81);
      v64 = v118;
      v66 = v89;
    }

    v4 = &qword_1004D69B8;
  }

  return v122;
}

uint64_t sub_100362F78(void (**a1)(char *, char *, uint64_t), int64_t a2, uint64_t a3)
{
  v119 = a3;
  v133 = a1;
  v4 = 0;
  Priority = type metadata accessor for LocatePriority();
  v125 = *(Priority - 8);
  v5 = *(v125 + 64);
  v6 = __chkstk_darwin(Priority);
  v137 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v134 = &v117 - v8;
  v9 = sub_10004B564(&qword_1005B2468, &qword_1004D69B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v129 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v117 - v13;
  v131 = type metadata accessor for ClientID();
  v124 = *(v131 - 8);
  v15 = *(v124 + 64);
  v16 = __chkstk_darwin(v131);
  v130 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v128 = &v117 - v18;
  v132 = type metadata accessor for Handle();
  v19 = *(*(v132 - 1) + 8);
  v20 = __chkstk_darwin(v132);
  *&i = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v117 - v23;
  v25 = *(a2 + 16);
  v121 = a2;
  v138 = v22;
  if (v25)
  {
    v26 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v27 = *(v22 + 72);
    v28 = v25;
    v29 = v119;
    v30 = v133;
    do
    {
      sub_10037CD0C(v26, v30, v29, "TRACE: trackNewSubscription: client: %s\npriority: %{public}s handle: %{private,mask.hash}s");
      v26 += v27;
      v28 = (v28 - 1);
    }

    while (v28);
  }

  else
  {
    v29 = v119;
    v30 = v133;
  }

  v31 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  v32 = v122;
  v33 = swift_beginAccess();
  v118 = v31;
  v34 = *&v32[v31];
  v35 = *(v34 + 16);
  v136 = v14;
  v36 = v121;
  v37 = v132;
  if (!v35)
  {
    goto LABEL_22;
  }

  v38 = sub_1001FDF60(v29);
  if ((v39 & 1) == 0)
  {

LABEL_22:
    __chkstk_darwin(v33);
    *(&v117 - 2) = v30;
    v59 = sub_100384940(_swiftEmptyDictionarySingleton, sub_10037DC20, (&v117 - 4), v36);
    v25 = 0;
    v44 = v122;
    goto LABEL_24;
  }

  v117 = 0;
  v40 = *(v34 + 56) + 24 * v38;
  v41 = *v40;
  v120 = *(v40 + 8);

  if (!v25)
  {
LABEL_23:
    v25 = v120;

    v4 = v117;
    v14 = v136;
    v59 = v41;
    v44 = v122;
    v29 = v119;
LABEL_24:
    v117 = v4;
    v24 = v118;
    swift_beginAccess();

    v60 = *&v24[v44];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v139 = *&v24[v44];
    *&v24[v44] = 0x8000000000000000;
    v119 = v59;
    sub_100454430(v59, v25, 0, v29, isUniquelyReferenced_nonNull_native);
    *&v24[v44] = v139;
    swift_endAccess();
    if (qword_1005A84C8 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

  v42 = (v138 + 16);
  v138 = *(v138 + 16);
  v43 = v36 + ((v42[64] + 32) & ~v42[64]);
  v126 = *(v42 + 7);
  v127 = (v124 + 16);
  v124 += 8;
  v44 = (v42 - 8);
  v46 = v130;
  v45 = v131;
  while (1)
  {
    v14 = v42;
    (v138)(v24, v43, v37);
    (*v127)(v46, v133, v45);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = v41;
    v51 = sub_1001FD93C(v24);
    v52 = v41[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      while (1)
      {
        __break(1u);
LABEL_49:
        swift_once();
LABEL_25:
        v62 = type metadata accessor for Logger();
        v63 = sub_10000A6F0(v62, qword_1005E0B28);

        v128 = v63;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();

        v66 = os_log_type_enabled(v64, v65);
        v120 = v25;
        if (v66)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v140[0] = v68;
          *v67 = 141558275;
          *(v67 + 4) = 1752392040;
          *(v67 + 12) = 2081;
          v69 = Array.description.getter();
          v71 = sub_10000D01C(v69, v70, v140);

          *(v67 + 14) = v71;
          _os_log_impl(&_mh_execute_header, v64, v65, "After trackNewSubscription for handles: %{private,mask.hash}s", v67, 0x16u);
          sub_100004984(v68);
        }

        v72 = v137;
        v73 = *&v24[v44];
        v74 = *(v73 + 64);
        v122 = (v73 + 64);
        v75 = 1 << *(v73 + 32);
        v76 = -1;
        if (v75 < 64)
        {
          v76 = ~(-1 << v75);
        }

        v77 = v76 & v74;
        v121 = (v75 + 63) >> 6;
        v132 = (v125 + 32);
        v133 = (v125 + 16);
        v127 = (v125 + 8);
        v124 = v73;

        v78 = 0;
        v25 = &qword_1005B2470;
        *&v79 = 136446723;
        for (i = v79; v77; v25 = &qword_1005B2470)
        {
          while (1)
          {
            v80 = v78;
LABEL_40:
            v83 = __clz(__rbit64(v77));
            v77 &= v77 - 1;
            v84 = v83 | (v80 << 6);
            v85 = v124;
            v86 = v125;
            v88 = v134;
            v87 = Priority;
            (*(v125 + 16))(v134, *(v124 + 48) + *(v125 + 72) * v84, Priority);
            v89 = (*(v85 + 56) + 24 * v84);
            v90 = *v89;
            v91 = v89[1];
            v138 = v89[2];
            v92 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
            v93 = v129;
            v94 = &v129[*(v92 + 48)];
            (*(v86 + 32))(v129, v88, v87);
            *v94 = v90;
            *(v94 + 1) = v91;
            *(v94 + 2) = v138;
            (*(*(v92 - 8) + 56))(v93, 0, 1, v92);

            v82 = v80;
            v95 = v93;
            v14 = v136;
            v72 = v137;
LABEL_41:
            sub_1000176A8(v95, v14, &qword_1005B2468, &qword_1004D69B0);
            v96 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
            if ((*(*(v96 - 8) + 48))(v14, 1, v96) == 1)
            {
            }

            v138 = v82;
            v97 = &v14[*(v96 + 48)];
            v98 = *v97;
            v44 = v97[1];
            v131 = v97[2];
            v99 = Priority;
            (*v133)(v72, v14, Priority);
            v24 = v134;
            (*v132)(v134, v14, v99);

            v100 = v99;
            v101 = Logger.logObject.getter();
            v102 = static os_log_type_t.default.getter();
            v103 = *v127;
            (*v127)(v24, v100);

            LODWORD(v130) = v102;
            if (os_log_type_enabled(v101, v102))
            {
              break;
            }

            v103(v72, v100);
            v78 = v138;
            v25 = &qword_1005B2470;
            v14 = v136;
            if (!v77)
            {
              goto LABEL_33;
            }
          }

          v24 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v140[0] = v126;
          *v24 = i;
          sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
          v104 = v100;
          v105 = dispatch thunk of CustomStringConvertible.description.getter();
          v106 = v104;
          v108 = v107;
          v103(v137, v106);
          v109 = sub_10000D01C(v105, v108, v140);
          v14 = v136;
          v72 = v137;

          *(v24 + 4) = v109;
          *(v24 + 6) = 2160;
          *(v24 + 14) = 1752392040;
          *(v24 + 11) = 2081;

          v110 = sub_100344994(v98, v44, v131);
          v112 = v111;

          v113 = sub_10000D01C(v110, v112, v140);

          *(v24 + 3) = v113;
          _os_log_impl(&_mh_execute_header, v101, v130, "priority: %{public}s): :%{private,mask.hash}s", v24, 0x20u);
          swift_arrayDestroy();

          v78 = v138;
        }

LABEL_33:
        if (v121 <= v78 + 1)
        {
          v81 = v78 + 1;
        }

        else
        {
          v81 = v121;
        }

        v82 = v81 - 1;
        while (1)
        {
          v80 = v78 + 1;
          if (__OFADD__(v78, 1))
          {
            break;
          }

          if (v80 >= v121)
          {
            v114 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
            v115 = v129;
            (*(*(v114 - 8) + 56))(v129, 1, 1, v114);
            v95 = v115;
            v77 = 0;
            goto LABEL_41;
          }

          v77 = *&v122[8 * v80];
          ++v78;
          if (v77)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
      }
    }

    v55 = v50;
    if (v41[3] < v54)
    {
      break;
    }

    if ((v49 & 1) == 0)
    {
      sub_100205330();
      v41 = v140[0];
      v37 = v132;
      if (v55)
      {
        goto LABEL_10;
      }

LABEL_18:
      v58 = i;
      (v138)(i, v24, v37);
      sub_100234290(v51, v58, &_swiftEmptySetSingleton, v41);
      goto LABEL_10;
    }

    v37 = v132;
    if ((v50 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    v47 = v41[7] + 8 * v51;
    v48 = v128;
    v46 = v130;
    sub_10002F5B4(v128, v130);
    v45 = v131;
    (*v124)(v48, v131);
    (*v44)(v24, v37);
    v43 += v126;
    v25 = (v25 - 1);
    v42 = v14;
    if (!v25)
    {
      goto LABEL_23;
    }
  }

  sub_100231874(v54, v49);
  v41 = v140[0];
  v56 = sub_1001FD93C(v24);
  if ((v55 & 1) == (v57 & 1))
  {
    v51 = v56;
    v37 = v132;
    if ((v55 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100363D44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10004B564(&qword_1005B02A0, &unk_1004D69C0);
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C1900;
  (*(v7 + 16))(v10 + v9, a3, v6);
  v11 = sub_10023F7CC(v10);
  swift_setDeallocating();
  (*(v7 + 8))(v10 + v9, v6);
  swift_deallocClassInstance();
  v12 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a1;
  result = sub_100454A28(v11, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v15;
  return result;
}

uint64_t sub_100363EB0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[17] = Priority;
  v6 = *(Priority - 8);
  v3[18] = v6;
  v7 = *(v6 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  v3[23] = v8;
  v9 = *(v8 - 8);
  v3[24] = v9;
  v10 = *(v9 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v11 = type metadata accessor for Handle();
  v3[29] = v11;
  v12 = *(v11 - 8);
  v3[30] = v12;
  v13 = *(v12 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003640C4, v2, 0);
}

uint64_t sub_1003640C4()
{
  v1 = *(v0[12] + 16);
  v0[33] = v1;
  if (v1)
  {
    v2 = async function pointer to daemon.getter[1];
    v3 = swift_task_alloc();
    v0[34] = v3;
    *v3 = v0;
    v3[1] = sub_1003642F4;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0B28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Not unsubscribing for empty friends", v7, 2u);
    }

    v9 = v0[31];
    v8 = v0[32];
    v11 = v0[27];
    v10 = v0[28];
    v13 = v0[25];
    v12 = v0[26];
    v15 = v0[21];
    v14 = v0[22];
    v17 = v0[19];
    v16 = v0[20];
    v20 = v0[16];
    v21 = v0[15];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1003642F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 272);
  v12 = *v1;
  *(v3 + 280) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 288) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_1003644D8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1003644D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = sub_100367400;
  }

  else
  {
    v9 = v4[35];

    v8 = sub_100364610;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100364610()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[39] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_100364774;
  v7 = v0[37];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100364774(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[6] = v1;
  v3[7] = a1;
  v4 = v2[40];
  v5 = v2[39];
  v6 = v2[14];
  v8 = *v1;

  return _swift_task_switch(sub_1003648A4, v6, 0);
}

uint64_t sub_1003648A4()
{
  v184 = v0;
  v1 = v0;
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[12];
  v183[0] = _swiftEmptyArrayStorage;
  sub_10002B3C0(0, v2, 0);
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = *(v3 + 16);
  v3 += 16;
  v8 = v4 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v172 = *(v3 + 56);
  v175 = v7;
  v180 = (v3 - 8);
  do
  {
    v9 = v1[32];
    v10 = v1[29];
    v175(v9, v8, v10);
    v11 = Handle.identifier.getter();
    v13 = v12;
    v177 = *v180;
    (*v180)(v9, v10);
    v183[0] = v6;
    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      v9 = v183;
      sub_10002B3C0((v14 > 1), v15 + 1, 1);
      v6 = v183[0];
    }

    v16 = v1[33];
    ++v5;
    v6[2] = v15 + 1;
    v17 = &v6[2 * v15];
    v17[4] = v11;
    v17[5] = v13;
    v8 += v172;
  }

  while (v5 != v16);
  v18 = v1[7];
  v19 = sub_10023F00C(v6);

  v176 = v1;
  v169 = *(v18 + 16);
  v171 = v18;
  if (v169)
  {
    v20 = 0;
    v21 = v1[24];
    v167 = v21;
    v22 = v19 + 56;
    v163 = (v21 + 32);
    v165 = (v21 + 8);
    v164 = _swiftEmptyArrayStorage;
    v23 = v1;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_86:
        TaskPriority.rawValue.getter();
        (*(v18 + 8))(v9, v20);
        goto LABEL_87;
      }

      v25 = v23[31];
      v26 = v23[29];
      v173 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v27 = v18 + v173;
      v28 = *(v167 + 72);
      (*(v167 + 16))(v23[28], v27 + v28 * v20, v23[23]);
      Friend.handle.getter();
      v29 = Handle.identifier.getter();
      v6 = v30;
      v177(v25, v26);
      if (*(v19 + 16))
      {
        v31 = *(v19 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v32 = Hasher._finalize()();
        v33 = -1 << *(v19 + 32);
        v34 = v32 & ~v33;
        if ((*(v22 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          while (1)
          {
            v36 = (*(v19 + 48) + 16 * v34);
            v37 = *v36 == v29 && v36[1] == v6;
            if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v22 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v39 = v176[27];
          v38 = v176[28];
          v40 = v176[23];

          v41 = *v163;
          (*v163)(v39, v38, v40);
          v9 = v164;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100239354(0, v164[2] + 1, 1);
            v9 = v164;
          }

          v43 = v9[2];
          v42 = v9[3];
          v6 = (v43 + 1);
          v44 = v176;
          if (v43 >= v42 >> 1)
          {
            sub_100239354(v42 > 1, v43 + 1, 1);
            v44 = v176;
            v9 = v164;
          }

          v45 = v44[27];
          v46 = v44[23];
          v9[2] = v6;
          v164 = v9;
          v41(v9 + v173 + v43 * v28, v45, v46);
          goto LABEL_9;
        }

LABEL_20:
        v9 = v176[28];
        v24 = v176[23];
      }

      else
      {
        v9 = v23[28];
        v24 = v23[23];
      }

      (*v165)(v9, v24);
LABEL_9:
      ++v20;
      v18 = v171;
      v23 = v176;
      if (v20 == v169)
      {
        goto LABEL_27;
      }
    }
  }

  v164 = _swiftEmptyArrayStorage;
LABEL_27:

  v47 = v164[2];
  if (!v47)
  {

    if (qword_1005A84C8 == -1)
    {
LABEL_33:
      v62 = type metadata accessor for Logger();
      sub_10000A6F0(v62, qword_1005E0B28);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      v65 = os_log_type_enabled(v63, v64);
      v66 = v176[37];
      if (v65)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Should not unsubscribing for empty friends", v67, 2u);
      }

      goto LABEL_36;
    }

LABEL_97:
    swift_once();
    goto LABEL_33;
  }

  v48 = v176;
  v49 = v176[24];
  v51 = *(v49 + 16);
  v49 += 16;
  v50 = v51;
  v170 = (v49 - 8);
  v52 = v176[38];
  v53 = v176[26];
  v54 = v176[13];
  v55 = (*(v49 + 64) + 32) & ~*(v49 + 64);
  v56 = v164 + v55;
  v57 = *(v49 + 56);
  v51(v53, v164 + v55, v176[23]);
  sub_10037B458(v53, v54);
  if (v52)
  {
    v58 = v176[26];
    v59 = v176[23];

    v60 = *v170;

    return (v60)(v58, v59);
  }

  v168 = *v170;
  (*v170)(v176[26], v176[23]);
  if (v47 != 1)
  {
    v79 = v164 + v57 + v55;
    v80 = v164;
    v81 = 1;
    while (v81 < v80[2])
    {
      v82 = v176[26];
      v83 = v176[13];
      v50(v82, v79, v176[23]);
      sub_10037B458(v82, v83);
      ++v81;
      v168(v176[26], v176[23]);
      v79 += v57;
      v80 = v164;
      if (v47 == v81)
      {
        v48 = v176;
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

LABEL_44:
  v165 = (v48 + 2);
  v166 = v50;
  v174 = _swiftEmptyArrayStorage;
  do
  {
    v84 = v57;
    v85 = v48[32];
    v86 = v48[29];
    v87 = v48[25];
    v88 = v48[23];
    v166(v87, v56, v88);
    Friend.handle.getter();
    v89 = Handle.serverID.getter();
    v91 = v90;
    v177(v85, v86);
    v168(v87, v88);
    if (v91)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = sub_1001FC900(0, *(v174 + 2) + 1, 1, v174);
      }

      v57 = v84;
      v48 = v176;
      v93 = *(v174 + 2);
      v92 = *(v174 + 3);
      if (v93 >= v92 >> 1)
      {
        v174 = sub_1001FC900((v92 > 1), v93 + 1, 1, v174);
        v48 = v176;
      }

      *(v174 + 2) = v93 + 1;
      v94 = &v174[16 * v93];
      *(v94 + 4) = v89;
      *(v94 + 5) = v91;
    }

    else
    {
      v48 = v176;
      v57 = v84;
    }

    v56 += v57;
    --v47;
  }

  while (v47);

  v95 = Array<A>.uniqued()();
  v96 = v176;
  v176[41] = v95;
  v97 = *(v174 + 2);
  v182 = *(v95 + 16);
  v98 = v97 - v182;
  if (v97 != v182)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
      v96 = v176;
    }

    v99 = v96[22];
    v100 = v96[17];
    v101 = v96[18];
    v102 = v96[13];
    v103 = v96;
    v104 = type metadata accessor for Logger();
    sub_10000A6F0(v104, qword_1005E0B28);
    (*(v101 + 16))(v99, v102, v100);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    v107 = os_log_type_enabled(v105, v106);
    v108 = v103[22];
    v109 = v103[17];
    v110 = v103[18];
    if (v107)
    {
      v111 = swift_slowAlloc();
      v179 = v95;
      v112 = swift_slowAlloc();
      v183[0] = v112;
      *v111 = 134349314;
      *(v111 + 4) = v98;
      *(v111 + 12) = 2082;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v113 = dispatch thunk of CustomStringConvertible.description.getter();
      v115 = v114;
      (*(v110 + 8))(v108, v109);
      v116 = sub_10000D01C(v113, v115, v183);

      *(v111 + 14) = v116;
      _os_log_impl(&_mh_execute_header, v105, v106, "Unsubscribe contains %{public}ld duplicates for %{public}s", v111, 0x16u);
      sub_100004984(v112);
      v95 = v179;
    }

    else
    {

      (*(v110 + 8))(v108, v109);
    }

    v96 = v176;
  }

  v117 = v96[21];
  v118 = v96[17];
  v119 = v96[18];
  v120 = v96[13];
  v121 = v96;
  v122 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  v121[42] = v122;
  sub_1004B885C(3u);
  v123 = String._bridgeToObjectiveC()();

  [v122 setClientApp:v123];

  v124 = *(v119 + 16);
  v121[43] = v124;
  v121[44] = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v124(v117, v120, v118);
  v125 = (*(v119 + 88))(v117, v118);
  if (v125 == enum case for LocatePriority.backgroundAppRefresh(_:))
  {
    v126 = 0;
    v127 = enum case for LocatePriority.live(_:);
  }

  else
  {
    v127 = enum case for LocatePriority.live(_:);
    if (v125 == enum case for LocatePriority.shallow(_:))
    {
      v126 = 1;
    }

    else if (v125 == enum case for LocatePriority.live(_:))
    {
      v126 = 2;
      v127 = v125;
    }

    else
    {
      if (v125 != enum case for LocatePriority.backgroundProactive(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v126 = 5;
    }
  }

  v128 = v176[20];
  v130 = v176[17];
  v129 = v176[18];
  v131 = v176[13];

  [v122 setSubscriptionMode:v126];
  (*(v129 + 104))(v128, v127, v130);
  sub_10001AEBC(&qword_1005A9318, 255, &type metadata accessor for LocatePriority);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v132 = *(v129 + 8);
  v176[45] = v132;
  v176[46] = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v132(v128, v130);
  if (v182 == 1 || v176[8] != v176[9])
  {
    v137 = swift_task_alloc();
    v176[62] = v137;
    *v137 = v176;
    v137[1] = sub_100366DD0;
    v138 = v176[14];

    return sub_10001CC28();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    v176[47] = sub_10000A6F0(v133, qword_1005E0B28);

    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 134349056;
      *(v136 + 4) = *(v95 + 16);

      _os_log_impl(&_mh_execute_header, v134, v135, "Unsubscribing %{public}ld .live subscriptions at once", v136, 0xCu);
    }

    else
    {
    }

    v139 = *(v95 + 16);
    v176[48] = v139;
    if (!v139)
    {
      v148 = v176[37];

LABEL_36:
      v69 = v176[31];
      v68 = v176[32];
      v71 = v176[27];
      v70 = v176[28];
      v73 = v176[25];
      v72 = v176[26];
      v75 = v176[21];
      v74 = v176[22];
      v77 = v176[19];
      v76 = v176[20];
      v178 = v176[16];
      v181 = v176[15];

      v78 = v176[1];

      return v78();
    }

    v140 = v176[14];
    v176[49] = 0;
    v176[50] = 0;
    v141 = v176[41];
    v176[51] = *(v141 + 32);
    v176[52] = *(v141 + 40);
    v142 = *(v140 + 128);
    v176[53] = v142;

    if (v142)
    {
      v143 = async function pointer to Task<>.value.getter[1];

      v144 = swift_task_alloc();
      v176[54] = v144;
      v145 = type metadata accessor for SecureLocationsManagerAdapter();
      *v144 = v176;
      v144[1] = sub_100365A3C;
      v146 = v176 + 11;
      v147 = v142;
    }

    else
    {
      v149 = v176[15];
      v150 = v176[16];
      v20 = type metadata accessor for TaskPriority();
      v18 = *(v20 - 8);
      (*(v18 + 56))(v150, 1, 1, v20);
      v6 = swift_allocObject();
      v6[2] = 0;
      v6[3] = 0;
      sub_100005F04(v150, v149, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v149) = (*(v18 + 48))(v149, 1, v20);

      v9 = v176[15];
      if (v149 != 1)
      {
        goto LABEL_86;
      }

      sub_100002CE0(v176[15], &qword_1005A9690, &qword_1004C2A00);
LABEL_87:
      v152 = v6[2];
      v151 = v6[3];
      swift_unknownObjectRetain();

      if (v152)
      {
        swift_getObjectType();
        v153 = dispatch thunk of Actor.unownedExecutor.getter();
        v155 = v154;
        swift_unknownObjectRelease();
      }

      else
      {
        v153 = 0;
        v155 = 0;
      }

      sub_100002CE0(v176[16], &qword_1005A9690, &qword_1004C2A00);
      v156 = swift_allocObject();
      *(v156 + 16) = &unk_1004D6990;
      *(v156 + 24) = v6;
      v157 = type metadata accessor for SecureLocationsManagerAdapter();
      if (v155 | v153)
      {
        *v165 = 0;
        v165[1] = 0;
        v176[4] = v153;
        v176[5] = v155;
      }

      v158 = v176[14];
      v159 = swift_task_create();
      v176[55] = v159;
      v160 = *(v158 + 128);
      *(v158 + 128) = v159;

      v161 = async function pointer to Task<>.value.getter[1];
      v162 = swift_task_alloc();
      v176[56] = v162;
      *v162 = v176;
      v162[1] = sub_100365C00;
      v146 = v176 + 10;
      v147 = v159;
      v145 = v157;
    }

    return Task<>.value.getter(v146, v147, v145);
  }
}

uint64_t sub_100365A3C()
{
  v1 = *(*v0 + 432);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100365B4C, v2, 0);
}

uint64_t sub_100365B4C()
{
  v1 = v0[53];

  v0[57] = v0[11];
  v2 = v0[51];
  v3 = v0[52];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v4 = swift_allocObject();
  v0[58] = v4;
  *(v4 + 16) = xmmword_1004C1900;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  return _swift_task_switch(sub_100365DC4, 0, 0);
}

uint64_t sub_100365C00()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100365D10, v2, 0);
}

uint64_t sub_100365D10()
{
  v1 = v0[55];

  v0[57] = v0[10];
  v2 = v0[51];
  v3 = v0[52];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v4 = swift_allocObject();
  v0[58] = v4;
  *(v4 + 16) = xmmword_1004C1900;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  return _swift_task_switch(sub_100365DC4, 0, 0);
}

uint64_t sub_100365DC4()
{
  v1 = *(v0 + 336);
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *(v2 + 16) = *(v0 + 456);
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 480) = v4;
  *v4 = v0;
  v4[1] = sub_100365EC4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001CLL, 0x80000001004E80F0, sub_10037F51C, v2, &type metadata for () + 8);
}

uint64_t sub_100365EC4()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v9 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = sub_1003665A4;
  }

  else
  {
    v6 = v2[58];
    v5 = v2[59];
    v7 = v2[52];

    v4 = sub_100365FFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100365FFC()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100366068, v2, 0);
}

uint64_t sub_100366068()
{
  v1 = v0[50] + 1;
  if (v1 == v0[48])
  {
    v2 = v0[49];
    v3 = v0[41];

    v4 = v0[42];
    v5 = v0[37];
    if (v2 <= 0)
    {

      v27 = v0[31];
      v26 = v0[32];
      v29 = v0[27];
      v28 = v0[28];
      v31 = v0[25];
      v30 = v0[26];
      v33 = v0[21];
      v32 = v0[22];
      v35 = v0[19];
      v34 = v0[20];
      v57 = v0[16];
      v58 = v0[15];
    }

    else
    {
      sub_1000F7A28();
      swift_allocError();
      *v6 = 18;
      swift_willThrow();

      v8 = v0[31];
      v7 = v0[32];
      v10 = v0[27];
      v9 = v0[28];
      v12 = v0[25];
      v11 = v0[26];
      v14 = v0[21];
      v13 = v0[22];
      v15 = v0[19];
      v16 = v0[20];
      v55 = v0[16];
      v56 = v0[15];
    }

    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[50] = v1;
    v18 = v0[14];
    v19 = v0[41] + 16 * v1;
    v0[51] = *(v19 + 32);
    v0[52] = *(v19 + 40);
    v20 = *(v18 + 128);
    v0[53] = v20;

    if (v20)
    {
      v21 = async function pointer to Task<>.value.getter[1];

      v22 = swift_task_alloc();
      v0[54] = v22;
      v23 = type metadata accessor for SecureLocationsManagerAdapter();
      *v22 = v0;
      v22[1] = sub_100365A3C;
      v24 = v0 + 11;
      v25 = v20;
    }

    else
    {
      v38 = v0[15];
      v37 = v0[16];
      v39 = type metadata accessor for TaskPriority();
      v40 = *(v39 - 8);
      (*(v40 + 56))(v37, 1, 1, v39);
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      sub_100005F04(v37, v38, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v38) = (*(v40 + 48))(v38, 1, v39);

      v42 = v0[15];
      if (v38 == 1)
      {
        sub_100002CE0(v0[15], &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v40 + 8))(v42, v39);
      }

      v43 = *(v41 + 16);
      v44 = *(v41 + 24);
      swift_unknownObjectRetain();

      if (v43)
      {
        swift_getObjectType();
        v45 = dispatch thunk of Actor.unownedExecutor.getter();
        v47 = v46;
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0;
        v47 = 0;
      }

      sub_100002CE0(v0[16], &qword_1005A9690, &qword_1004C2A00);
      v48 = swift_allocObject();
      *(v48 + 16) = &unk_1004D6990;
      *(v48 + 24) = v41;
      v49 = type metadata accessor for SecureLocationsManagerAdapter();
      if (v47 | v45)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v45;
        v0[5] = v47;
      }

      v50 = v0[14];
      v51 = swift_task_create();
      v0[55] = v51;
      v52 = *(v50 + 128);
      *(v50 + 128) = v51;

      v53 = async function pointer to Task<>.value.getter[1];
      v54 = swift_task_alloc();
      v0[56] = v54;
      *v54 = v0;
      v54[1] = sub_100365C00;
      v24 = v0 + 10;
      v25 = v51;
      v23 = v49;
    }

    return Task<>.value.getter(v24, v25, v23);
  }
}

uint64_t sub_1003665A4()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[14];

  return _swift_task_switch(sub_10036662C, v4, 0);
}

uint64_t sub_10036662C()
{
  v88 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 416);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);
  (*(v0 + 344))(*(v0 + 152), *(v0 + 104), *(v0 + 136));

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 488);
  v9 = *(v0 + 416);
  if (v7)
  {
    v80 = *(v0 + 368);
    v81 = *(v0 + 408);
    v79 = *(v0 + 360);
    v10 = *(v0 + 152);
    v11 = *(v0 + 136);
    v12 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v12 = 136446979;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v79(v10, v11);
    v16 = sub_10000D01C(v13, v15, v87);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    v17 = sub_10000D01C(v81, v9, v87);

    *(v12 + 24) = v17;
    *(v12 + 32) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 34) = v18;
    *v83 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to unsubscribe %{public}s %{private,mask.hash}s: %@", v12, 0x2Au);
    sub_100002CE0(v83, &qword_1005A9670, &unk_1004C2480);

    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v24 = *(v0 + 152);
    v25 = *(v0 + 136);
    v26 = *(v0 + 416);

    v19 = v23(v24, v25);
  }

  v27 = *(v0 + 392);
  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    return Task<>.value.getter(v19, v20, v21);
  }

  v29 = *(v0 + 400) + 1;
  if (v29 != *(v0 + 384))
  {
    *(v0 + 392) = v28;
    *(v0 + 400) = v29;
    v45 = *(v0 + 112);
    v46 = *(v0 + 328) + 16 * v29;
    *(v0 + 408) = *(v46 + 32);
    *(v0 + 416) = *(v46 + 40);
    v47 = *(v45 + 128);
    *(v0 + 424) = v47;

    if (v47)
    {
      v48 = async function pointer to Task<>.value.getter[1];

      v49 = swift_task_alloc();
      *(v0 + 432) = v49;
      v21 = type metadata accessor for SecureLocationsManagerAdapter();
      *v49 = v0;
      v49[1] = sub_100365A3C;
      v19 = v0 + 88;
      v20 = v47;
    }

    else
    {
      v62 = *(v0 + 120);
      v61 = *(v0 + 128);
      v63 = type metadata accessor for TaskPriority();
      v64 = *(v63 - 8);
      (*(v64 + 56))(v61, 1, 1, v63);
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      sub_100005F04(v61, v62, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v62) = (*(v64 + 48))(v62, 1, v63);

      v66 = *(v0 + 120);
      if (v62 == 1)
      {
        sub_100002CE0(*(v0 + 120), &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v64 + 8))(v66, v63);
      }

      v67 = *(v65 + 16);
      v68 = *(v65 + 24);
      swift_unknownObjectRetain();

      if (v67)
      {
        swift_getObjectType();
        v69 = dispatch thunk of Actor.unownedExecutor.getter();
        v71 = v70;
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      sub_100002CE0(*(v0 + 128), &qword_1005A9690, &qword_1004C2A00);
      v72 = swift_allocObject();
      *(v72 + 16) = &unk_1004D6990;
      *(v72 + 24) = v65;
      v73 = type metadata accessor for SecureLocationsManagerAdapter();
      if (v71 | v69)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v69;
        *(v0 + 40) = v71;
      }

      v74 = *(v0 + 112);
      v75 = swift_task_create();
      *(v0 + 440) = v75;
      v76 = *(v74 + 128);
      *(v74 + 128) = v75;

      v77 = async function pointer to Task<>.value.getter[1];
      v78 = swift_task_alloc();
      *(v0 + 448) = v78;
      *v78 = v0;
      v78[1] = sub_100365C00;
      v19 = v0 + 80;
      v20 = v75;
      v21 = v73;
    }

    return Task<>.value.getter(v19, v20, v21);
  }

  v30 = *(v0 + 328);

  v31 = *(v0 + 336);
  v32 = *(v0 + 296);
  if (v28 <= 0)
  {

    v51 = *(v0 + 248);
    v50 = *(v0 + 256);
    v53 = *(v0 + 216);
    v52 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v57 = *(v0 + 168);
    v56 = *(v0 + 176);
    v59 = *(v0 + 152);
    v58 = *(v0 + 160);
    v85 = *(v0 + 128);
    v86 = *(v0 + 120);
  }

  else
  {
    sub_1000F7A28();
    swift_allocError();
    *v33 = 18;
    swift_willThrow();

    v35 = *(v0 + 248);
    v34 = *(v0 + 256);
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v41 = *(v0 + 168);
    v40 = *(v0 + 176);
    v42 = *(v0 + 152);
    v43 = *(v0 + 160);
    v82 = *(v0 + 128);
    v84 = *(v0 + 120);
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_100366DD0(uint64_t a1)
{
  v2 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_100366ED0, 0, 0);
}

uint64_t sub_100366ED0()
{
  v1 = *(v0 + 504);
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  v3 = *(v0 + 328);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 520) = v5;
  *v5 = v0;
  v5[1] = sub_100366FD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001CLL, 0x80000001004E80F0, sub_10037DB68, v2, &type metadata for () + 8);
}

uint64_t sub_100366FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v8 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_10036726C;
  }

  else
  {
    v5 = *(v2 + 512);
    v6 = *(v2 + 328);

    v4 = sub_1003670F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003670F8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100367164, v2, 0);
}

uint64_t sub_100367164()
{
  v1 = *(v0 + 296);

  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v14 = *(v0 + 128);
  v15 = *(v0 + 120);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10036726C()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[41];
  v4 = v0[14];

  return _swift_task_switch(sub_1003672F4, v4, 0);
}

uint64_t sub_1003672F4()
{
  v1 = v0[42];
  v2 = v0[37];

  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v12 = v0[20];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[66];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100367400()
{
  v1 = v0[35];

  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[19];
  v11 = v0[20];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[38];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100367504(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 424) = a3;
  *(v4 + 40) = a1;
  Priority = type metadata accessor for LocatePriority();
  *(v4 + 64) = Priority;
  v6 = *(Priority - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v8 = type metadata accessor for Friend();
  *(v4 + 112) = v8;
  v9 = *(v8 - 8);
  *(v4 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v11 = type metadata accessor for Handle();
  *(v4 + 160) = v11;
  v12 = *(v11 - 8);
  *(v4 + 168) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  *(v4 + 208) = v15;
  *v15 = v4;
  v15[1] = sub_100367720;

  return daemon.getter();
}

uint64_t sub_100367720(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v12 = *v1;
  *(v3 + 216) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 224) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100367904;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100367904(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v10 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_100369CA8;
  }

  else
  {
    v7 = v3[27];
    v8 = v3[7];

    v6 = sub_100367A2C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100367A2C()
{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    sub_10002B3C0(0, v2, 0);
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v17 = *(v3 + 56);
    v18 = v4;
    v6 = (v3 - 8);
    do
    {
      v7 = v0[25];
      v8 = v0[20];
      v18(v7, v5, v8);
      v9 = Handle.identifier.getter();
      v11 = v10;
      (*v6)(v7, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10002B3C0((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v5 += v17;
      --v2;
    }

    while (v2);
  }

  v15 = v0[29];
  v0[31] = sub_10023F00C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_100367BB8, v15, 0);
}

uint64_t sub_100367BB8()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[32] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_100367D1C;
  v7 = v0[29];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100367D1C(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100367E50, v4, 0);
}

uint64_t sub_100367E50()
{
  v178 = v0;
  v1 = *(v0 + 34);
  v2 = _swiftEmptyArrayStorage;
  if (v1[2])
  {
    v3 = 0;
    v4 = *(v0 + 31);
    v5 = *(v0 + 15);
    v165 = (*(v0 + 21) + 8);
    v6 = v4 + 56;
    v160 = (v5 + 32);
    v167 = v5;
    v163 = (v5 + 8);
    v162 = _swiftEmptyArrayStorage;
    v168 = *(v0 + 34);
    while (1)
    {
      if (v3 >= v1[2])
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        swift_once();
LABEL_35:
        v49 = type metadata accessor for Logger();
        *(v0 + 39) = sub_10000A6F0(v49, qword_1005E0B28);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = *(v0 + 14);
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v177[0] = v54;
          *v53 = 136315138;
          v55 = Array.description.getter();
          v57 = sub_10000D01C(v55, v56, v177);

          *(v53 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v50, v51, "handlesWithIds: %s", v53, 0xCu);
          sub_100004984(v54);
        }

        v58 = v168;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138412290;
          *(v61 + 4) = v58;
          *v62 = v58;
          v63 = v58;
          _os_log_impl(&_mh_execute_header, v59, v60, "context: %@", v61, 0xCu);
          sub_100002CE0(v62, &qword_1005A9670, &unk_1004C2480);
        }

        v64 = v162[2];
        v65 = v173;
        *(v173 + 320) = v64;
        if (v64)
        {
          if (static SystemInfo.underTest.getter())
          {
            *(v173 + 384) = _swiftEmptyArrayStorage;
            v66 = *(v173 + 304);
            v67 = *(v173 + 312);
            (*(v173 + 296))(*(v173 + 88), *(v173 + 48), *(v173 + 64));
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.default.getter();
            v70 = os_log_type_enabled(v68, v69);
            v71 = *(v173 + 88);
            v73 = *(v173 + 64);
            v72 = *(v173 + 72);
            if (v70)
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v177[0] = v75;
              *v74 = 136446466;
              sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
              v76 = dispatch thunk of CustomStringConvertible.description.getter();
              v78 = v77;
              (*(v72 + 8))(v71, v73);
              v79 = sub_10000D01C(v76, v78, v177);
              v65 = v173;

              *(v74 + 4) = v79;
              *(v74 + 12) = 1024;
              *(v74 + 14) = _swiftEmptyArrayStorage[2] != 0;
              _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s subscription successful. With location? %{BOOL}d", v74, 0x12u);
              sub_100004984(v75);
            }

            else
            {

              (*(v72 + 8))(v71, v73);
            }

            if (*(v65 + 424) == 1)
            {
              v132 = static Duration.seconds(_:)();
              v134 = v133;
              v135 = swift_task_alloc();
              *(v65 + 392) = v135;
              *v135 = v65;
              v135[1] = sub_100369870;
              v136 = *(v65 + 48);
              v137 = *(v65 + 56);
              v138 = *(v65 + 40);

              return sub_10036A294(v138, v136, v132, v134);
            }

            else
            {
              v139 = *(v65 + 312);

              v140 = Logger.logObject.getter();
              v141 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v140, v141))
              {
                v142 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                v177[0] = v143;
                *v142 = 136315138;
                v144 = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E80B0, v177);

                *(v142 + 4) = v144;
                _os_log_impl(&_mh_execute_header, v140, v141, "%s. No need to resubscribe.", v142, 0xCu);
                sub_100004984(v143);
              }

              else
              {
              }

              v145 = *(v65 + 384);
              v146 = *(v65 + 280);

              v147 = swift_task_alloc();
              *(v65 + 400) = v147;
              *v147 = v65;
              v147[1] = sub_100369A34;
              v148 = *(v65 + 56);
              v149 = *(v65 + 384);

              return sub_100370914(v149, v146);
            }
          }

          else
          {
            v96 = swift_task_alloc();
            *(v173 + 328) = v96;
            *v96 = v173;
            v96[1] = sub_100368F8C;
            v97 = *(v173 + 56);

            return sub_10001CC28();
          }
        }

        else
        {

          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&_mh_execute_header, v80, v81, "Not subscribing to location update due to empty handles with ids", v82, 2u);
          }

          v83 = *(v173 + 232);

          v175 = sub_1002087C4(_swiftEmptyArrayStorage);

          v85 = *(v173 + 192);
          v84 = *(v173 + 200);
          v87 = *(v173 + 176);
          v86 = *(v173 + 184);
          v89 = *(v173 + 144);
          v88 = *(v173 + 152);
          v91 = *(v173 + 128);
          v90 = *(v173 + 136);
          v92 = *(v173 + 96);
          v93 = *(v173 + 104);
          v169 = *(v173 + 88);
          v171 = *(v173 + 80);

          v94 = *(v173 + 8);

          return v94(v175);
        }
      }

      v9 = *(v0 + 24);
      v10 = *(v0 + 20);
      v174 = (*(v167 + 80) + 32) & ~*(v167 + 80);
      v11 = *(v167 + 72);
      (*(v167 + 16))(*(v0 + 19), *(v0 + 34) + v174 + v11 * v3, *(v0 + 14));
      Friend.handle.getter();
      v12 = Handle.identifier.getter();
      v14 = v13;
      (*v165)(v9, v10);
      if (*(v4 + 16))
      {
        v15 = *(v4 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(v4 + 32);
        v18 = v16 & ~v17;
        if ((*(v6 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(v4 + 48) + 16 * v18);
            v21 = *v20 == v12 && v20[1] == v14;
            if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v6 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v23 = *(v173 + 144);
          v22 = *(v173 + 152);
          v24 = *(v173 + 112);

          v25 = *v160;
          (*v160)(v23, v22, v24);
          v26 = v162;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100239354(0, v162[2] + 1, 1);
            v26 = v162;
          }

          v1 = v168;
          v28 = v26[2];
          v27 = v26[3];
          if (v28 >= v27 >> 1)
          {
            sub_100239354(v27 > 1, v28 + 1, 1);
            v26 = v162;
          }

          v0 = v173;
          v29 = *(v173 + 144);
          v30 = *(v173 + 112);
          v26[2] = v28 + 1;
          v162 = v26;
          v25(v26 + v174 + v28 * v11, v29, v30);
          goto LABEL_5;
        }

LABEL_3:
        v0 = v173;
      }

      v7 = *(v0 + 19);
      v8 = *(v0 + 14);

      (*v163)(v7, v8);
      v1 = v168;
LABEL_5:
      if (++v3 == v170)
      {
        v31 = *(v0 + 34);
        v2 = v162;
        break;
      }
    }
  }

  v162 = v2;
  *(v0 + 35) = v2;
  v32 = *(v0 + 13);
  v33 = *(v0 + 8);
  v34 = *(v0 + 9);
  v35 = *(v0 + 6);

  v36 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  *(v0 + 36) = v36;
  sub_1004B885C(3u);
  v37 = String._bridgeToObjectiveC()();

  v168 = v36;
  [v36 setClientApp:v37];

  v38 = *(v34 + 16);
  *(v0 + 37) = v38;
  *(v0 + 38) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v32, v35, v33);
  v39 = *(v34 + 88);
  v40 = v39(v32, v33);
  v41 = enum case for LocatePriority.backgroundAppRefresh(_:);
  if (v40 == enum case for LocatePriority.backgroundAppRefresh(_:))
  {
    v42 = 0;
  }

  else if (v40 == enum case for LocatePriority.shallow(_:))
  {
    v42 = 1;
  }

  else if (v40 == enum case for LocatePriority.live(_:))
  {
    v42 = 2;
  }

  else
  {
    if (v40 != enum case for LocatePriority.backgroundProactive(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v42 = 5;
  }

  v43 = *(v0 + 12);
  v44 = *(v0 + 8);
  v45 = *(v0 + 6);
  [v36 setSubscriptionMode:v42];
  v38(v43, v45, v44);
  v46 = v39(v43, v44);
  v47 = &qword_1005A8000;
  if (v46 == v41 || v46 == enum case for LocatePriority.shallow(_:))
  {
    goto LABEL_33;
  }

  if (v46 != enum case for LocatePriority.live(_:))
  {
    if (v46 == enum case for LocatePriority.backgroundProactive(_:))
    {
LABEL_33:
      v48 = *(v0 + 31);
      goto LABEL_34;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v98 = *(v0 + 31);

  v99 = v162[2];
  if (!v99)
  {
LABEL_85:
    v47 = &qword_1005A8000;
    if (qword_1005A84C8 != -1)
    {
LABEL_96:
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    sub_10000A6F0(v150, qword_1005E0B28);
    v151 = Logger.logObject.getter();
    v152 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v177[0] = v154;
      *v153 = 136315138;

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      v155 = Dictionary.description.getter();
      v157 = v156;

      v158 = sub_10000D01C(v155, v157, v177);

      *(v153 + 4) = v158;
      _os_log_impl(&_mh_execute_header, v151, v152, "pushIdentifiers: %s", v153, 0xCu);
      sub_100004984(v154);
    }

    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v168 setPushIdentifiers:isa];

LABEL_34:

    if (v47[153] != -1)
    {
      goto LABEL_94;
    }

    goto LABEL_35;
  }

  v100 = *(v0 + 15);
  v166 = *(v100 + 16);
  v101 = v162 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
  v164 = *(v100 + 72);
  v161 = (v100 + 8);
  v102 = _swiftEmptyDictionarySingleton;
  v103 = (*(v0 + 21) + 8);
  while (1)
  {
    v176 = v99;
    v108 = v102;
    v110 = *(v0 + 22);
    v109 = *(v0 + 23);
    v111 = *(v0 + 20);
    v172 = v101;
    v166(*(v0 + 17), v101, *(v0 + 14));
    Friend.handle.getter();
    v47 = Handle.identifier.getter();
    v113 = v112;
    v0 = *v103;
    (*v103)(v109, v111);
    Friend.handle.getter();
    v114 = Handle.pushIdentifiers.getter();
    v0(v110, v111);
    if (v114)
    {
      break;
    }

    v102 = v108;
    v124 = sub_1000110D8(v47, v113);
    v126 = v125;

    if (v126)
    {
      v177[0] = v108;
      v0 = v173;
      v106 = v176;
      v107 = v172;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_100203F3C();
        v102 = v177[0];
      }

      v127 = *(v102[6] + 16 * v124 + 8);

      v128 = *(v102[7] + 8 * v124);

      sub_1001FFBFC(v124, v102);
      goto LABEL_56;
    }

LABEL_55:
    v0 = v173;
    v106 = v176;
    v107 = v172;
LABEL_56:
    (*v161)(*(v0 + 17), *(v0 + 14));
    v101 = &v107[v164];
    v99 = v106 - 1;
    if (!v99)
    {
      goto LABEL_85;
    }
  }

  v102 = v108;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v177[0] = v108;
  v116 = sub_1000110D8(v47, v113);
  v118 = *(v108 + 16);
  v119 = (v117 & 1) == 0;
  v120 = __OFADD__(v118, v119);
  v121 = v118 + v119;
  if (v120)
  {
    goto LABEL_93;
  }

  v122 = v117;
  if (*(v108 + 24) >= v121)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v0 = v116;
      sub_100203F3C();
      v116 = v0;
      v102 = v177[0];
      if ((v122 & 1) == 0)
      {
LABEL_68:
        v102[(v116 >> 6) + 8] |= 1 << v116;
        v129 = (v102[6] + 16 * v116);
        *v129 = v47;
        v129[1] = v113;
        *(v102[7] + 8 * v116) = v114;
        v130 = v102[2];
        v120 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v120)
        {
          __break(1u);
          goto LABEL_96;
        }

        v102[2] = v131;
        goto LABEL_55;
      }

      goto LABEL_54;
    }

LABEL_67:
    if ((v122 & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_54:
    v104 = v102[7];
    v105 = *(v104 + 8 * v116);
    *(v104 + 8 * v116) = v114;

    goto LABEL_55;
  }

  sub_10022EC88(v121, isUniquelyReferenced_nonNull_native);
  v102 = v177[0];
  v116 = sub_1000110D8(v47, v113);
  if ((v122 & 1) == (v123 & 1))
  {
    goto LABEL_67;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100368F8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 328);
  v5 = *(v2 + 56);
  v7 = *v1;

  return _swift_task_switch(sub_1003690A0, v5, 0);
}

uint64_t sub_1003690A0()
{
  v1 = 0;
  v2 = v0[15];
  v21 = *(v2 + 16);
  v3 = v0[35] + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v19 = (v0[21] + 8);
  v20 = *(v2 + 72);
  v18 = (v2 + 8);
  v4 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v0[25];
    v7 = v0[20];
    v8 = v0[16];
    v9 = v0[14];
    v21(v8, v3, v9);
    Friend.handle.getter();
    v10 = Handle.serverID.getter();
    v12 = v11;
    (*v19)(v6, v7);
    (*v18)(v8, v9);
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1001FC900(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_1001FC900((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      v5 = &v4[16 * v14];
      *(v5 + 4) = v10;
      *(v5 + 5) = v12;
    }

    v0[45] = v4;
    ++v1;
    v3 += v20;
  }

  while (v1 != v0[40]);
  v0[42] = v0[3];
  v15 = swift_task_alloc();
  v0[43] = v15;
  *v15 = v0;
  v15[1] = sub_1003692AC;
  v16 = v0[36];

  return sub_100471534(v4, v16);
}

uint64_t sub_1003692AC(uint64_t a1, double a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(v6 + 352) = v2;

  v9 = *(v6 + 360);
  v10 = *(v6 + 336);
  if (v2)
  {
    v11 = *(v6 + 280);
    v12 = *(v6 + 56);

    v13 = sub_100369DAC;
    v14 = v12;
  }

  else
  {
    v15 = *(v6 + 56);

    *(v6 + 368) = a1;
    *(v6 + 376) = a2;
    v13 = sub_100369450;
    v14 = v15;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_100369450()
{
  v40 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 368);
  *(v0 + 384) = v2;
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  (*(v0 + 296))(*(v0 + 88), *(v0 + 48), *(v0 + 64));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  if (v7)
  {
    v38 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v11 = 136446466;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v8, v9);
    v16 = sub_10000D01C(v13, v15, &v39);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    *(v11 + 14) = *(v38 + 16) != 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s subscription successful. With location? %{BOOL}d", v11, 0x12u);
    sub_100004984(v12);
  }

  else
  {

    (*(v10 + 8))(v8, v9);
  }

  v17 = 0xD00000000000001ELL;
  if (*(v0 + 424) == 1)
  {
    if (v1 > 0.0)
    {
      v18 = static Duration.seconds(_:)();
      v20 = v19;
      v21 = swift_task_alloc();
      *(v0 + 392) = v21;
      *v21 = v0;
      v21[1] = sub_100369870;
      v22 = *(v0 + 48);
      v23 = *(v0 + 56);
      v24 = *(v0 + 40);

      return sub_10036A294(v24, v22, v18, v20);
    }

    v26 = "should not check Resubscription";
  }

  else
  {
    v26 = "Unexpected LocatePriority";
    v17 = 0xD00000000000001FLL;
  }

  v27 = *(v0 + 312);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 136315138;
    v32 = sub_10000D01C(v17, v26 | 0x8000000000000000, &v39);

    *(v30 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s. No need to resubscribe.", v30, 0xCu);
    sub_100004984(v31);
  }

  else
  {
  }

  v33 = *(v0 + 384);
  v34 = *(v0 + 280);

  v35 = swift_task_alloc();
  *(v0 + 400) = v35;
  *v35 = v0;
  v35[1] = sub_100369A34;
  v36 = *(v0 + 384);
  v37 = *(v0 + 56);

  return sub_100370914(v36, v34);
}

uint64_t sub_100369870()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100369980, v2, 0);
}

uint64_t sub_100369980()
{
  v1 = v0[48];
  v2 = v0[35];

  v3 = swift_task_alloc();
  v0[50] = v3;
  *v3 = v0;
  v3[1] = sub_100369A34;
  v4 = v0[48];
  v5 = v0[7];

  return sub_100370914(v4, v2);
}

uint64_t sub_100369A34(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 384);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_100369B8C, v5, 0);
}

uint64_t sub_100369B8C()
{
  v1 = v0[48];
  v2 = v0[36];
  v3 = v0[29];

  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[12];
  v13 = v0[13];
  v16 = v0[11];
  v17 = v0[10];
  v18 = v0[51];

  v14 = v0[1];

  return v14(v18);
}

uint64_t sub_100369CA8()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];

  v11 = v0[1];
  v12 = v0[30];

  return v11();
}

uint64_t sub_100369DAC()
{
  v27 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  (*(v0 + 296))(*(v0 + 80), *(v0 + 48), *(v0 + 64));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 352);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v10 = 136315394;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v8 + 8))(v7, v9);
    v14 = sub_10000D01C(v11, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 32) = v6;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v15 = String.init<A>(describing:)();
    v17 = sub_10000D01C(v15, v16, &v26);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Subscription failed due to %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);

    (*(v19 + 8))(v18, v20);
  }

  v21 = swift_task_alloc();
  *(v0 + 416) = v21;
  *v21 = v0;
  v21[1] = sub_10036A05C;
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 40);

  return sub_10036A294(v24, v22, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_10036A05C()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10036A16C, v2, 0);
}

uint64_t sub_10036A16C()
{
  v1 = v0[44];
  v2 = v0[36];
  v3 = v0[29];
  v18 = sub_1002087C4(_swiftEmptyArrayStorage);

  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[12];
  v13 = v0[13];
  v16 = v0[11];
  v17 = v0[10];

  v14 = v0[1];

  return v14(v18);
}

uint64_t sub_10036A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  Priority = type metadata accessor for LocatePriority();
  v5[8] = Priority;
  v7 = *(Priority - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10036A3C4, v4, 0);
}

uint64_t sub_10036A3C4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(type metadata accessor for Handle() - 8);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = *(v3 + 72);
    do
    {
      sub_10037D208(v0[2] + v4, v0[4], v0[5], v0[3]);
      v4 += v5;
      --v2;
    }

    while (v2);
    v1 = v0[2];
  }

  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  v24 = v0[7];
  v11 = v0[6];
  v23 = v0[5];
  v12 = v0[3];
  v21 = v7;
  v22 = v0[4];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  (*(v9 + 16))(v7, v12, v10);
  v14 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = v11;
  *(v17 + 3) = v14;
  *(v17 + 4) = v11;
  *(v17 + 5) = v1;
  (*(v9 + 32))(&v17[v15], v21, v10);
  v18 = &v17[v16];
  *v18 = v22;
  *(v18 + 1) = v23;
  *&v17[(v16 + 23) & 0xFFFFFFFFFFFFFFF8] = v24;
  swift_retain_n();

  sub_1001D7F30(0, 0, v6, &unk_1004D6940, v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10036A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v17;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v11 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v8[9] = Priority;
  v13 = *(Priority - 8);
  v8[10] = v13;
  v8[11] = *(v13 + 64);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[14] = v14;
  *v14 = v8;
  v14[1] = sub_10036A7A4;

  return sub_10036E3A0(a5, a6);
}

uint64_t sub_10036A7A4(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_10036A8BC, v3, 0);
}

uint64_t sub_10036A8BC()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v0 + 96);
    v5 = *(v0 + 32);
    v25 = *(v0 + 40);
    v27 = *(v0 + 48);
    v29 = v5;
    v28 = *(v0 + 24);
    v24 = *(v0 + 16);
    type metadata accessor for WorkItemQueue.WorkItem();
    v30 = *(v2 + 16);
    v30(v1, v5, v4);
    v6 = *(v2 + 80);
    v7 = (v6 + 32) & ~v6;
    v8 = (v7 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
    v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
    v10 = swift_allocObject();
    *(v10 + 16) = v25;
    *(v10 + 24) = v27;
    v26 = *(v2 + 32);
    v26(v10 + v7, v1, v4);
    *(v10 + v8) = v28;
    *(v10 + v9) = v24;
    *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    v30(v23, v29, v4);
    v11 = (v6 + 16) & ~v6;
    v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    v26(v13 + v11, v23, v4);
    *(v13 + v12) = v28;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    swift_bridgeObjectRetain_n();

    UUID.init()();
    v14 = WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    v30(v1, v29, v4);
    v15 = swift_allocObject();
    *(v15 + 16) = v24;
    *(v15 + 24) = v14;
    v26(v15 + v7, v1, v4);

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    v16 = *(v24 + OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue);
    dispatch thunk of WorkItemQueue.enqueue(_:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 64);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10036AC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  Priority = type metadata accessor for LocatePriority();
  v5[10] = Priority;
  v10 = *(Priority - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = type metadata accessor for ContinuousClock();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10036AD9C, 0, 0);
}

uint64_t sub_10036AD9C()
{
  v1 = v0[16];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_10036AE5C;
  v3 = v0[16];
  v5 = v0[2];
  v4 = v0[3];

  return sub_100291918(v5, v4, 0, 0, 1);
}

uint64_t sub_10036AE5C()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10036B3FC;
  }

  else
  {
    v6 = sub_10036AFCC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10036AFCC()
{
  v54 = v0;
  v1 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for Logger();
  v1[19] = sub_10000A6F0(v7, qword_1005E0B28);
  v8 = *(v4 + 16);
  v1[20] = v8;
  v1[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v3);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[13];
  v14 = v1[10];
  v13 = v1[11];
  if (v11)
  {
    v15 = v1[5];
    v16 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v16 = 136315651;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v48 = *(v13 + 8);
    v48(v12, v14);
    v20 = sub_10000D01C(v17, v19, &v52);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    buf = v16;
    *(v16 + 22) = 2081;
    v21 = *(v15 + 16);
    if (v21)
    {
      v46 = v10;
      v47 = v9;
      v22 = v1[8];
      v23 = v1[5];
      v53 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v21, 0);
      v24 = v53;
      v25 = *(v22 + 16);
      v22 += 16;
      v26 = v23 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v50 = *(v22 + 56);
      v51 = v25;
      v27 = (v22 - 8);
      do
      {
        v28 = v1[9];
        v29 = v1;
        v30 = v1[7];
        v51(v28, v26, v30);
        v31 = Handle.identifier.getter();
        v33 = v32;
        (*v27)(v28, v30);
        v53 = v24;
        v35 = v24[2];
        v34 = v24[3];
        if (v35 >= v34 >> 1)
        {
          sub_10002B3C0((v34 > 1), v35 + 1, 1);
          v24 = v53;
        }

        v24[2] = v35 + 1;
        v36 = &v24[2 * v35];
        v36[4] = v31;
        v36[5] = v33;
        v26 += v50;
        --v21;
        v1 = v29;
      }

      while (v21);
      v9 = v47;
      v10 = v46;
    }

    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10000D01C(v38, v40, &v52);

    *(buf + 3) = v41;
    _os_log_impl(&_mh_execute_header, v9, v10, "Resubscription task fired for: %s for handles: %{private,mask.hash}s, checking if we need to resubscribe", buf, 0x20u);
    swift_arrayDestroy();

    v37 = v48;
  }

  else
  {

    v37 = *(v13 + 8);
    v37(v12, v14);
  }

  v1[22] = v37;
  v42 = swift_task_alloc();
  v1[23] = v42;
  *v42 = v1;
  v42[1] = sub_10036B488;
  v43 = v1[6];
  v44 = v1[4];

  return sub_10036D598(v44);
}

uint64_t sub_10036B3FC()
{
  v1 = v0[18];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10036B488(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 184);
  v9 = *v1;
  *(v3 + 192) = a1;

  v5 = swift_task_alloc();
  *(v3 + 200) = v5;
  *v5 = v9;
  v5[1] = sub_10036B5EC;
  v6 = *(v2 + 48);
  v7 = *(v2 + 32);

  return sub_10036D9C0(v7);
}

uint64_t sub_10036B5EC()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(sub_10036B6E8, 0, 0);
}

uint64_t sub_10036B6E8()
{
  v59 = v0;
  v1 = v0;
  if (*(*(v0 + 192) + 16))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 152);
    v4 = *(v0 + 40);
    (*(v0 + 160))(*(v0 + 96), *(v0 + 32), *(v0 + 80));

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v1[22];
    v10 = v1[11];
    v9 = v1[12];
    v11 = v1[10];
    if (v7)
    {
      v56 = v1[5];
      v12 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v12 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v8(v9, v11);
      v16 = sub_10000D01C(v13, v15, &v57);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      buf = v12;
      *(v12 + 22) = 2081;
      v17 = *(v56 + 16);
      if (v17)
      {
        v51 = v6;
        v52 = v5;
        v18 = v1[8];
        v19 = v1[5];
        v58 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v17, 0);
        v20 = v58;
        v21 = *(v18 + 16);
        v18 += 16;
        v22 = v19 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
        v54 = *(v18 + 56);
        v55 = v21;
        v23 = (v18 - 8);
        do
        {
          v24 = v1[9];
          v25 = v1;
          v26 = v1[7];
          v55(v24, v22, v26);
          v27 = Handle.identifier.getter();
          v29 = v28;
          (*v23)(v24, v26);
          v58 = v20;
          v31 = v20[2];
          v30 = v20[3];
          if (v31 >= v30 >> 1)
          {
            sub_10002B3C0((v30 > 1), v31 + 1, 1);
            v20 = v58;
          }

          v20[2] = v31 + 1;
          v32 = &v20[2 * v31];
          v32[4] = v27;
          v32[5] = v29;
          v22 += v54;
          --v17;
          v1 = v25;
        }

        while (v17);
        v5 = v52;
        v6 = v51;
      }

      v43 = Array.description.getter();
      v45 = v44;

      v46 = sub_10000D01C(v43, v45, &v57);

      *(buf + 3) = v46;
      _os_log_impl(&_mh_execute_header, v5, v6, "Resubscribing %s for handles %{private,mask.hash}s", buf, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v8(v9, v11);
    }

    v47 = swift_task_alloc();
    v1[26] = v47;
    *v47 = v1;
    v47[1] = sub_10036BBA4;
    v48 = v1[6];
    v49 = v1[4];
    v50 = v1[24];

    return sub_100367504(v50, v49, 1);
  }

  else
  {
    v33 = *(v0 + 152);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Resubscription task fired but handles clients are interested in is empty, not resubscribing. Clearing out and returning.", v36, 2u);
    }

    v37 = *(v0 + 128);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    v40 = *(v0 + 72);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_10036BBA4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 192);
  v5 = *v1;

  if (v0)
  {
    v6 = v2[16];
    v8 = v2[12];
    v7 = v2[13];
  }

  else
  {

    v11 = v2[16];
    v13 = v2[12];
    v12 = v2[13];
  }

  v9 = v2[9];

  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_10036BD2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 144) = a2;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for CancellationError();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  *(v4 + 80) = v8;
  v9 = *(v8 - 8);
  *(v4 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  *(v4 + 104) = Priority;
  v12 = *(Priority - 8);
  *(v4 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10036BEC4, 0, 0);
}

uint64_t sub_10036BEC4()
{
  v144 = v0;
  v1 = v0;
  if ((*(v0 + 144) & 1) == 0)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 136);
    v39 = *(v0 + 104);
    v40 = *(v0 + 112);
    v42 = v1[5];
    v41 = v1[6];
    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005E0B28);
    (*(v40 + 16))(v38, v42, v39);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v44 = os_log_type_enabled(v11, v12);
    v14 = v1[17];
    v16 = v1[13];
    v15 = v1[14];
    if (v44)
    {
      v45 = v1[6];
      v46 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v46 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v15 + 8))(v14, v16);
      v50 = sub_10000D01C(v47, v49, &v142);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2160;
      *(v46 + 14) = 1752392040;
      bufa = v46;
      *(v46 + 22) = 2081;
      v51 = *(v45 + 16);
      if (v51)
      {
        v128 = v12;
        v130 = v11;
        v52 = v1[11];
        v53 = v1[6];
        v143 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v51, 0);
        v54 = v143;
        v55 = *(v52 + 16);
        v52 += 16;
        v56 = v53 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
        v136 = *(v52 + 56);
        v139 = v55;
        v57 = (v52 - 8);
        do
        {
          v58 = v1[12];
          v59 = v1[10];
          v139(v58, v56, v59);
          v60 = Handle.identifier.getter();
          v62 = v61;
          (*v57)(v58, v59);
          v143 = v54;
          v64 = v54[2];
          v63 = v54[3];
          if (v64 >= v63 >> 1)
          {
            sub_10002B3C0((v63 > 1), v64 + 1, 1);
            v54 = v143;
          }

          v54[2] = v64 + 1;
          v65 = &v54[2 * v64];
          v65[4] = v60;
          v65[5] = v62;
          v56 += v136;
          --v51;
          v1 = v141;
        }

        while (v51);
        v11 = v130;
        v12 = v128;
      }

      v100 = Array.description.getter();
      v102 = v101;

      v103 = sub_10000D01C(v100, v102, &v142);

      v104 = bufa;
      *(bufa + 3) = v103;
      v105 = "%s resubscription succeeded for %{private,mask.hash}s.";
      goto LABEL_34;
    }

LABEL_21:

    (*(v15 + 8))(v14, v16);
    goto LABEL_36;
  }

  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  *(v0 + 16) = v4;
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = v1[5];
    v8 = v1[6];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005E0B28);
    (*(v7 + 16))(v5, v9, v6);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[16];
    v16 = v1[13];
    v15 = v1[14];
    if (v13)
    {
      v17 = v1[6];
      v18 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v18 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_10000D01C(v19, v21, &v142);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2160;
      *(v18 + 14) = 1752392040;
      buf = v18;
      *(v18 + 22) = 2081;
      v23 = *(v17 + 16);
      if (v23)
      {
        v127 = v12;
        v129 = v11;
        v24 = v1[11];
        v25 = v1[6];
        v143 = _swiftEmptyArrayStorage;
        sub_10002B3C0(0, v23, 0);
        v26 = v143;
        v27 = *(v24 + 16);
        v24 += 16;
        v28 = v25 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v135 = *(v24 + 56);
        v138 = v27;
        v29 = (v24 - 8);
        do
        {
          v30 = v1[12];
          v31 = v1[10];
          v138(v30, v28, v31);
          v32 = Handle.identifier.getter();
          v34 = v33;
          (*v29)(v30, v31);
          v143 = v26;
          v36 = v26[2];
          v35 = v26[3];
          if (v36 >= v35 >> 1)
          {
            sub_10002B3C0((v35 > 1), v36 + 1, 1);
            v26 = v143;
          }

          v26[2] = v36 + 1;
          v37 = &v26[2 * v36];
          v37[4] = v32;
          v37[5] = v34;
          v28 += v135;
          --v23;
          v1 = v141;
        }

        while (v23);
        v11 = v129;
        v12 = v127;
      }

      v106 = Array.description.getter();
      v108 = v107;

      v109 = sub_10000D01C(v106, v108, &v142);

      v104 = buf;
      *(buf + 3) = v109;
      v105 = "%s resubscription canceled for %{private,mask.hash}s.";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v11, v12, v105, v104, 0x20u);
      swift_arrayDestroy();

      goto LABEL_36;
    }

    goto LABEL_21;
  }

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 112);
  v66 = v1[15];
  v68 = v1[13];
  v70 = v1[5];
  v69 = v1[6];
  v71 = v1[4];
  v72 = type metadata accessor for Logger();
  sub_10000A6F0(v72, qword_1005E0B28);
  (*(v67 + 16))(v66, v70, v68);

  sub_10037DB5C(v71, 1);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();

  sub_1002BC5B4(v71, 1);
  v75 = os_log_type_enabled(v73, v74);
  v77 = v1[14];
  v76 = v1[15];
  v78 = v1[13];
  if (v75)
  {
    v131 = v74;
    bufb = v4;
    v79 = v1[6];
    v80 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *v80 = 136315907;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    (*(v77 + 8))(v76, v78);
    v84 = sub_10000D01C(v81, v83, &v142);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2160;
    *(v80 + 14) = 1752392040;
    *(v80 + 22) = 2081;
    v85 = *(v79 + 16);
    if (v85)
    {
      v125 = v80;
      v126 = v73;
      v86 = v1[11];
      v87 = v1[6];
      v143 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v85, 0);
      v88 = v143;
      v89 = *(v86 + 16);
      v86 += 16;
      v90 = v87 + ((*(v86 + 64) + 32) & ~*(v86 + 64));
      v137 = *(v86 + 56);
      v140 = v89;
      v91 = (v86 - 8);
      do
      {
        v92 = v141[12];
        v93 = v141[10];
        v140(v92, v90, v93);
        v94 = Handle.identifier.getter();
        v96 = v95;
        (*v91)(v92, v93);
        v143 = v88;
        v98 = v88[2];
        v97 = v88[3];
        if (v98 >= v97 >> 1)
        {
          sub_10002B3C0((v97 > 1), v98 + 1, 1);
          v88 = v143;
        }

        v88[2] = v98 + 1;
        v99 = &v88[2 * v98];
        v99[4] = v94;
        v99[5] = v96;
        v90 += v137;
        --v85;
      }

      while (v85);
      v80 = v125;
      v73 = v126;
    }

    v110 = v141[4];
    v111 = Array.description.getter();
    v113 = v112;
    v1 = v141;

    v114 = sub_10000D01C(v111, v113, &v142);

    *(v80 + 24) = v114;
    *(v80 + 32) = 2082;
    v141[3] = bufb;
    sub_10037DB5C(v110, 1);
    v115 = String.init<A>(describing:)();
    v117 = sub_10000D01C(v115, v116, &v142);

    *(v80 + 34) = v117;
    _os_log_impl(&_mh_execute_header, v73, v131, "%s resubscription failed for %{private,mask.hash}s. Error %{public}s", v80, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v77 + 8))(v76, v78);
  }

LABEL_36:
  v119 = v1[16];
  v118 = v1[17];
  v120 = v1[15];
  v121 = v1[12];
  v122 = v1[9];

  v123 = v1[1];

  return v123();
}

uint64_t sub_10036C9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10036C9FC, a1, 0);
}

uint64_t sub_10036C9FC()
{
  v1 = v0[2];
  sub_10036E040(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10036CA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = *v2;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v65 = v9;
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v53 - v13;
  v15 = type metadata accessor for Handle();
  v16 = *(v15 - 8);
  v68 = v15;
  v69 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000A6F0(v20, qword_1005E0B28);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v63 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v59 = v21;
    v60 = a2;
    v61 = v7;
    v62 = v6;
    v23 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71[0] = v57;
    *v23 = 136446723;
    *(v23 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E8030, v71);
    *(v23 + 12) = 2160;
    *(v23 + 14) = 1752392040;
    v58 = v23;
    *(v23 + 22) = 2081;
    v24 = *(a1 + 16);
    v25 = v65;
    if (v24)
    {
      v53 = v14;
      v54 = v10;
      v55 = v3;
      v70 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v24, 0);
      v26 = v70;
      v27 = *(v69 + 16);
      v28 = *(v69 + 80);
      v56 = a1;
      v29 = a1 + ((v28 + 32) & ~v28);
      v66 = *(v69 + 72);
      v67 = v27;
      v69 += 16;
      v30 = (v69 - 8);
      do
      {
        v31 = v68;
        v67(v19, v29, v68);
        v32 = Handle.identifier.getter();
        v34 = v33;
        (*v30)(v19, v31);
        v70 = v26;
        v36 = v26[2];
        v35 = v26[3];
        if (v36 >= v35 >> 1)
        {
          sub_10002B3C0((v35 > 1), v36 + 1, 1);
          v26 = v70;
        }

        v26[2] = v36 + 1;
        v37 = &v26[2 * v36];
        v37[4] = v32;
        v37[5] = v34;
        v29 += v66;
        --v24;
      }

      while (v24);
      v3 = v55;
      a1 = v56;
      v14 = v53;
      v10 = v54;
      v25 = v65;
    }

    v38 = Array.description.getter();
    v40 = v39;

    v41 = sub_10000D01C(v38, v40, v71);

    v42 = v58;
    *(v58 + 24) = v41;
    v43 = v59;
    _os_log_impl(&_mh_execute_header, v59, v63, " %{public}s for handles: %{private,mask.hash}s", v42, 0x20u);
    swift_arrayDestroy();

    v7 = v61;
    v6 = v62;
    a2 = v60;
  }

  else
  {

    v25 = v65;
  }

  v44 = type metadata accessor for TaskPriority();
  (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
  (*(v7 + 16))(v10, a2, v6);
  v45 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  v46 = v10;
  v47 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v48 = v25 + v47 + 7;
  v49 = v14;
  v50 = v48 & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 2) = v3;
  *(v51 + 3) = v45;
  *(v51 + 4) = v3;
  *(v51 + 5) = a1;
  (*(v7 + 32))(&v51[v47], v46, v6);
  *&v51[v50] = v64;
  swift_retain_n();

  sub_1001D7F30(0, 0, v49, &unk_1004D6928, v51);
}

uint64_t sub_10036D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  Priority = type metadata accessor for LocatePriority();
  v6[6] = Priority;
  v9 = *(Priority - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10036D0E4, a4, 0);
}

uint64_t sub_10036D0E4()
{
  (*(v0[7] + 104))(v0[8], enum case for LocatePriority.shallow(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10036D1A4;
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  return sub_100356174(v4, v2, v3);
}

uint64_t sub_10036D1A4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  v6[10] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[3];

    return _swift_task_switch(sub_10036D34C, v7, 0);
  }

  else
  {
    v8 = v6[8];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_10036D34C()
{
  v20 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005E0B28);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for Handle();
    v10 = Array.description.getter();
    v12 = sub_10000D01C(v10, v11, &v19);

    *(v9 + 14) = v12;
    *(v9 + 22) = 2080;
    v0[2] = v7;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v13 = String.init<A>(describing:)();
    v15 = sub_10000D01C(v13, v14, &v19);

    *(v9 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unsubscribe for %{private,mask.hash}s\nfailed with error: %s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10036D598(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  Priority = type metadata accessor for LocatePriority();
  v2[7] = Priority;
  v4 = *(Priority - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10036D658, v1, 0);
}

uint64_t sub_10036D658()
{
  v35 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_7;
  }

  v4 = v0[5];

  v5 = sub_1001FDF60(v4);
  if ((v6 & 1) == 0)
  {

LABEL_7:
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    v18 = v0[5];
    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0B28);
    (*(v16 + 16))(v15, v18, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[8];
    v23 = v0[9];
    v25 = v0[7];
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34 = v27;
      *v26 = 136315138;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_10000D01C(v28, v30, &v34);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "No handle to resubscribe for %s.", v26, 0xCu);
      sub_100004984(v27);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    goto LABEL_13;
  }

  v7 = (*(v3 + 56) + 24 * v5);
  v9 = *v7;
  v8 = v7[1];

  v10 = *(v9 + 16);
  if (!v10)
  {

LABEL_13:
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v11 = sub_10002C714(*(v9 + 16), 0);
  v12 = *(type metadata accessor for Handle() - 8);
  v13 = sub_100241514(&v34, &v11[(*(v12 + 80) + 32) & ~*(v12 + 80)], v10, v9);
  result = sub_10000E3F8();
  if (v13 != v10)
  {
    __break(1u);
    return result;
  }

LABEL_14:
  v32 = v0[9];

  v33 = v0[1];

  return v33(v11);
}

uint64_t sub_10036D9C0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  Priority = type metadata accessor for LocatePriority();
  v2[13] = Priority;
  v4 = *(Priority - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10036DA8C, v1, 0);
}

uint64_t sub_10036DA8C()
{
  v62 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0B28);
  v7 = *(v3 + 16);
  v7(v1, v4, v2);

  v8 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.default.getter();

  v59 = v1;
  v9 = os_log_type_enabled(v8, v1);
  v10 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  if (v9)
  {
    v57 = v0[12];
    v13 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v13 = 136315394;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v14 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    log = v8;
    v17 = v16;
    v60 = *(v11 + 8);
    v60(v10, v12);
    v18 = v15;
    v7 = v14;
    v19 = sub_10000D01C(v18, v17, &v61);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
    swift_beginAccess();
    v21 = *(v57 + v20);
    sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority);

    v22 = Dictionary.description.getter();
    v24 = v23;

    v25 = sub_10000D01C(v22, v24, &v61);

    *(v13 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v59, "clearResubscription %s: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v60 = *(v11 + 8);
    v60(v10, v12);
  }

  v26 = v0[12];
  v27 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v28 = *(v26 + v27);
  if (!*(v28 + 16))
  {
    goto LABEL_11;
  }

  v29 = v0[11];
  v30 = *(v26 + v27);

  v31 = sub_1001FDF60(v29);
  if ((v32 & 1) == 0)
  {

LABEL_11:
    v7(v0[15], v0[11], v0[13]);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[14];
    v45 = v0[15];
    v47 = v0[13];
    if (v44)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v61 = v49;
      *v48 = 136315138;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v60(v45, v47);
      v53 = sub_10000D01C(v50, v52, &v61);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v42, v43, "clearResubscription: no tracker for %s", v48, 0xCu);
      sub_100004984(v49);
    }

    else
    {

      v60(v45, v47);
    }

    goto LABEL_14;
  }

  v33 = (*(v28 + 56) + 24 * v31);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];

  swift_bridgeObjectRetain_n();

  v38 = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
    return result;
  }

  v39 = v0[11];
  swift_beginAccess();
  v40 = *(v26 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = *(v26 + v27);
  *(v26 + v27) = 0x8000000000000000;
  sub_100454430(v34, 0, v38, v39, isUniquelyReferenced_nonNull_native);
  *(v26 + v27) = v61;
  swift_endAccess();

LABEL_14:
  v55 = v0[15];
  v54 = v0[16];

  v56 = v0[1];

  return v56();
}

void sub_10036E040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Priority = type metadata accessor for LocatePriority();
  v7 = *(Priority - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(Priority);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (*(v12 + 16))
  {

    v13 = sub_1001FDF60(a2);
    if (v14)
    {
      v15 = (*(v12 + 56) + 24 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];

      swift_bridgeObjectRetain_n();

      swift_beginAccess();

      v19 = *(v3 + v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v3 + v11);
      *(v3 + v11) = 0x8000000000000000;
      sub_100454430(v16, a1, v18, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + v11) = v31;
      swift_endAccess();

      return;
    }
  }

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000A6F0(v21, qword_1005E0B28);
  (*(v7 + 16))(v10, a2, Priority);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136446210;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v7 + 8))(v10, Priority);
    v29 = sub_10000D01C(v26, v28, &v32);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "addSubscription: missing tracker for %{public}s!", v24, 0xCu);
    sub_100004984(v25);
  }

  else
  {

    (*(v7 + 8))(v10, Priority);
  }
}

uint64_t sub_10036E3A0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  Priority = type metadata accessor for LocatePriority();
  v3[11] = Priority;
  v5 = *(Priority - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_10036E4C0, v2, 0);
}

uint64_t sub_10036E4C0()
{
  v65 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v64 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
    swift_beginAccess();
    v10 = *(v6 + v9);
    sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority);

    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = sub_10000D01C(v11, v13, &v64);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "shouldResubscribe: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v15 = v0[10];
  v16 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (!*(v17 + 16))
  {
    goto LABEL_12;
  }

  v18 = v0[9];

  v19 = sub_1001FDF60(v18);
  if ((v20 & 1) == 0)
  {

LABEL_12:
    v35 = v0[8];
    (*(v0[12] + 16))(v0[13], v0[9], v0[11]);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v36, v37);
    v40 = v0[12];
    v39 = v0[13];
    v41 = v0[11];
    if (v38)
    {
      v63 = v0[8];
      v42 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v42 = 136315651;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v40 + 8))(v39, v41);
      v46 = sub_10000D01C(v43, v45, &v64);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2160;
      *(v42 + 14) = 1752392040;
      *(v42 + 22) = 2081;
      type metadata accessor for Handle();
      v47 = Array.description.getter();
      v49 = sub_10000D01C(v47, v48, &v64);

      *(v42 + 24) = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing tracker for %s. Not scheduling resubscription for %{private,mask.hash}s", v42, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v40 + 8))(v39, v41);
    }

    goto LABEL_21;
  }

  v21 = (*(v17 + 56) + 24 * v19);
  v23 = *v21;
  v22 = v21[1];
  v24 = v21[2];

  if (v24 >= sub_10037B9FC())
  {
    v50 = v0[10];

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[10];
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      *(v55 + 4) = sub_10037B9FC();

      *(v55 + 12) = 2048;
      *(v55 + 14) = v24;

      _os_log_impl(&_mh_execute_header, v51, v52, "Exceeded max number of resubscriptions allowed! Limit: %ld Current: %ld.", v55, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (!v22)
    {

      v56 = 1;
      goto LABEL_22;
    }

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[15];
      v28 = v0[16];
      v29 = v0[14];
      v30 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64 = v62;
      *v30 = 136446210;
      v61 = v26;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v27 + 8))(v28, v29);
      v34 = sub_10000D01C(v31, v33, &v64);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v61, "Found existing task %{public}s. Not scheduling resubscription.", v30, 0xCu);
      sub_100004984(v62);
    }

    else
    {
    }
  }

LABEL_21:
  v56 = 0;
LABEL_22:
  v57 = v0[16];
  v58 = v0[13];

  v59 = v0[1];

  return v59(v56);
}

uint64_t sub_10036EBF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Handle();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v2[13] = v10;
  *v10 = v2;
  v10[1] = sub_10036ED60;

  return daemon.getter();
}

uint64_t sub_10036ED60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10036EF44;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10036EF44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_10036F7B8;
  }

  else
  {
    v9 = v4[14];

    v8 = sub_10036F07C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10036F07C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_10036F1E0;
  v7 = v0[16];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_10036F1E0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10036F314, v4, 0);
}

uint64_t sub_10036F314()
{
  result = v0[20];
  v54 = *(result + 16);
  if (v54)
  {
    v2 = 0;
    v3 = v0[9];
    v4 = v0[2];
    v52 = (v0[5] + 8);
    v5 = v4 + 56;
    v50 = (v3 + 32);
    v51 = _swiftEmptyArrayStorage;
    v53 = v0[20];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v6 = v0[7];
      v7 = v0[4];
      v58 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v56 = *(v3 + 72);
      (*(v3 + 16))(v0[12], v0[20] + v58 + v56 * v2, v0[8]);
      Friend.handle.getter();
      v8 = Handle.serverID.getter();
      v10 = v9;
      (*v52)(v6, v7);
      if (v10)
      {
        if (*(v4 + 16))
        {
          v11 = *(v4 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v12 = Hasher._finalize()();
          v13 = -1 << *(v4 + 32);
          v14 = v12 & ~v13;
          if ((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
          {
            v15 = ~v13;
            while (1)
            {
              v16 = (*(v4 + 48) + 16 * v14);
              v17 = *v16 == v8 && v10 == v16[1];
              if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v14 = (v14 + 1) & v15;
              if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            v19 = v0[11];
            v18 = v0[12];
            v20 = v0[8];

            v21 = *v50;
            (*v50)(v19, v18, v20);
            v22 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100239354(0, v51[2] + 1, 1);
              v22 = v51;
            }

            v24 = v22[2];
            v23 = v22[3];
            if (v24 >= v23 >> 1)
            {
              sub_100239354(v23 > 1, v24 + 1, 1);
              v22 = v51;
            }

            v25 = v0[11];
            v26 = v0[8];
            v22[2] = v24 + 1;
            v51 = v22;
            v21(v22 + v58 + v24 * v56, v25, v26);
            goto LABEL_5;
          }
        }

LABEL_3:
      }

      (*(v3 + 8))(v0[12], v0[8]);
LABEL_5:
      ++v2;
      result = v53;
      if (v2 == v54)
      {
        v27 = v0[20];
        v28 = v51;
        goto LABEL_25;
      }
    }
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_25:

  v29 = v28[2];
  if (v29)
  {
    v30 = v0[9];
    v31 = v0[5];
    sub_10000E8E0(0, v29, 0);
    v32 = *(v30 + 16);
    v30 += 16;
    v33 = v28 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v55 = *(v30 + 56);
    v57 = v32;
    v34 = (v30 - 8);
    do
    {
      v35 = v0[10];
      v36 = v0[8];
      v37 = v0[6];
      v57(v35, v33, v36);
      Friend.handle.getter();
      (*v34)(v35, v36);
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_10000E8E0(v38 > 1, v39 + 1, 1);
      }

      v40 = v0[6];
      v41 = v0[4];
      _swiftEmptyArrayStorage[2] = v39 + 1;
      (*(v31 + 32))(_swiftEmptyArrayStorage + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v39, v40, v41);
      v33 += v55;
      --v29;
    }

    while (v29);
  }

  v42 = v0[16];
  v43 = v0[3];
  sub_100374828(_swiftEmptyArrayStorage);

  v45 = v0[11];
  v44 = v0[12];
  v46 = v0[10];
  v48 = v0[6];
  v47 = v0[7];

  v49 = v0[1];

  return v49();
}

uint64_t sub_10036F7B8()
{
  v1 = v0[14];

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocationService: missing DataManager to locationsUnavailable!", v7, 2u);
  }

  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  v12 = v0[6];
  v11 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10036F910(uint64_t a1)
{
  v2[8] = v1;
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = *(*(sub_10004B564(&qword_1005B2450, &qword_1004D6910) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v2[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v10 = type metadata accessor for Handle();
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v13 = swift_task_alloc();
  v2[26] = v13;
  *v13 = v2;
  v13[1] = sub_10036FB40;

  return sub_100370914(a1, 0);
}

uint64_t sub_10036FB40(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_10036FC58, v3, 0);
}

uint64_t sub_10036FC58()
{
  v166 = v0;
  v1 = v0;
  if (qword_1005A84C8 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v2 = v1[27];
    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0B28);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v161 = v1;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v1[27];
      v7 = v1[20];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v162 = v9;
      *v8 = 136315138;
      type metadata accessor for Location();
      sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle);
      v10 = Dictionary.description.getter();
      v12 = sub_10000D01C(v10, v11, &v162);

      *(v8 + 4) = v12;
      v1 = v161;
      _os_log_impl(&_mh_execute_header, v4, v5, "locationForHandles: %s", v8, 0xCu);
      sub_100004984(v9);
    }

    v13 = v1[27];
    v14 = v1[8];
    sub_1003718C0(v13);
    v15 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
    swift_beginAccess();
    v122 = v15;
    v123 = v14;
    v16 = *(v13 + 16);
    v130 = *(v14 + v15);
    if (!v16)
    {
      break;
    }

    v17 = v1[27];
    v18 = v1[21];
    v153 = v1[15];
    v162 = _swiftEmptyArrayStorage;

    sub_10000E8E0(0, v16, 0);
    v19 = v162;
    v20 = v17 + 64;
    v21 = -1 << *(v17 + 32);
    v22 = _HashTable.startBucket.getter();
    v23 = 0;
    v156 = *(v17 + 36);
    v128 = v17 + 64;
    v121 = v17 + 72;
    v124 = v16;
    v125 = v17;
    v126 = v18;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v17 + 32))
    {
      if ((*(v20 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_58;
      }

      if (v156 != *(v17 + 36))
      {
        goto LABEL_59;
      }

      v132 = 1 << v22;
      v134 = v22 >> 6;
      v131 = v23;
      v26 = *(v153 + 48);
      v27 = v18;
      v28 = v1[19];
      v29 = v1[20];
      v136 = v1[18];
      v139 = v1[17];
      v144 = v1[25];
      v146 = v27[9];
      v141 = v1[16];
      v142 = v27[2];
      v30 = v22;
      v142(v28, *(v17 + 48) + v146 * v22, v29);
      v31 = *(v17 + 56);
      v32 = type metadata accessor for Location();
      v159 = v19;
      v33 = *(v32 - 8);
      v148 = v30;
      v34 = v26;
      (*(v33 + 16))(v28 + v26, v31 + *(v33 + 72) * v30, v32);
      v35 = v27[4];
      v35(v136, v28, v29);
      v36 = *(v33 + 32);
      v36(v136 + *(v153 + 48), v28 + v34, v32);
      sub_100005F04(v136, v139, &qword_1005B2440, &qword_1004D68C0);
      v37 = *(v153 + 48);
      v35(v141, v139, v29);
      v36(v141 + v37, v139 + v37, v32);
      v19 = v159;
      v142(v144, v141, v29);
      sub_100002CE0(v141, &qword_1005B2440, &qword_1004D68C0);
      sub_100002CE0(v136, &qword_1005B2440, &qword_1004D68C0);
      v162 = v159;
      v39 = v159[2];
      v38 = v159[3];
      if (v39 >= v38 >> 1)
      {
        sub_10000E8E0(v38 > 1, v39 + 1, 1);
        v19 = v162;
      }

      v1 = v161;
      v40 = v161[25];
      v41 = v161[20];
      v19[2] = v39 + 1;
      v18 = v126;
      v35(v19 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + v39 * v146, v40, v41);
      v17 = v125;
      v24 = 1 << *(v125 + 32);
      v20 = v128;
      if (v148 >= v24)
      {
        goto LABEL_60;
      }

      v42 = *(v128 + 8 * v134);
      if ((v42 & v132) == 0)
      {
        goto LABEL_61;
      }

      if (v156 != *(v125 + 36))
      {
        goto LABEL_62;
      }

      v43 = v42 & (-2 << (v148 & 0x3F));
      if (v43)
      {
        v24 = __clz(__rbit64(v43)) | v148 & 0x7FFFFFFFFFFFFFC0;
        v25 = v124;
      }

      else
      {
        v44 = v134 << 6;
        v45 = (v121 + 8 * v134);
        v46 = v134 + 1;
        v25 = v124;
        while (v46 < (v24 + 63) >> 6)
        {
          v48 = *v45++;
          v47 = v48;
          v44 += 64;
          ++v46;
          if (v48)
          {
            sub_10002F14C(v148, v156, 0);
            v24 = __clz(__rbit64(v47)) + v44;
            goto LABEL_7;
          }
        }

        sub_10002F14C(v148, v156, 0);
      }

LABEL_7:
      v23 = v131 + 1;
      v22 = v24;
      if (v131 + 1 == v25)
      {
        v160 = v19;
        v49 = v130;
        goto LABEL_25;
      }
    }

LABEL_57:
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
    swift_once();
  }

  v49 = *(v14 + v15);

  v160 = _swiftEmptyArrayStorage;
LABEL_25:
  v50 = 0;
  v53 = *(v49 + 64);
  v52 = v49 + 64;
  v51 = v53;
  v54 = -1;
  v55 = -1 << *(v52 - 32);
  v56 = v1[10];
  if (-v55 < 64)
  {
    v54 = ~(-1 << -v55);
  }

  v57 = v54 & v51;
  v127 = (63 - v55) >> 6;
  v129 = v52;
  v133 = v1[10];
  v143 = v1[21];
  v145 = (v56 + 32);
  v140 = (v143 + 8);
  v135 = (v56 + 8);
  while (1)
  {
    if (!v57)
    {
      if (v127 <= v50 + 1)
      {
        v59 = v50 + 1;
      }

      else
      {
        v59 = v127;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v58 >= v127)
        {
          v107 = v1[13];
          v108 = sub_10004B564(&qword_1005B2458, &qword_1004D6918);
          (*(*(v108 - 8) + 56))(v107, 1, 1, v108);
          v157 = 0;
          goto LABEL_40;
        }

        v57 = *(v129 + 8 * v58);
        ++v50;
        if (v57)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

    v58 = v50;
LABEL_39:
    v62 = v1[12];
    v61 = v1[13];
    v63 = v1[9];
    v157 = (v57 - 1) & v57;
    v64 = __clz(__rbit64(v57)) | (v58 << 6);
    (*(v133 + 16))(v62, *(v130 + 48) + *(v133 + 72) * v64, v63);
    v65 = (*(v130 + 56) + 24 * v64);
    v67 = *v65;
    v66 = v65[1];
    v68 = v65[2];
    v69 = sub_10004B564(&qword_1005B2458, &qword_1004D6918);
    v70 = (v61 + *(v69 + 48));
    (*(v133 + 32))(v61, v62, v63);
    *v70 = v67;
    v70[1] = v66;
    v70[2] = v68;
    (*(*(v69 - 8) + 56))(v61, 0, 1, v69);

    v1 = v161;

    v60 = v58;
LABEL_40:
    v71 = v1[14];
    sub_1000176A8(v1[13], v71, &qword_1005B2450, &qword_1004D6910);
    v72 = sub_10004B564(&qword_1005B2458, &qword_1004D6918);
    if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
    {
      break;
    }

    v154 = v60;
    v73 = v1[20];
    v74 = v1[9];
    v75 = (v1[14] + *(v72 + 48));
    v76 = *v75;
    v149 = v75[2];
    v151 = v75[1];
    (*v145)(v1[11]);
    v77 = v76[2];
    sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle);
    v78 = Set.init(minimumCapacity:)();
    v162 = v78;
    v79 = v76[2];
    v147 = v76;
    if (v79)
    {
      v80 = v76 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v81 = *(v143 + 72);
      v82 = *(v143 + 16);
      do
      {
        v83 = v1[24];
        v84 = v1[22];
        v85 = v161[20];
        v82(v83, v80, v85);
        sub_10002BAF4(v84, v83);
        v86 = v85;
        v1 = v161;
        (*v140)(v84, v86);
        v80 += v81;
        --v79;
      }

      while (v79);
      v87 = v162;
    }

    else
    {
      v87 = v78;
    }

    v88 = v1[20];
    v89 = v160[2];
    v90 = Set.init(minimumCapacity:)();
    v162 = v90;
    v91 = v160[2];
    if (v91)
    {
      v137 = v87;
      v92 = v160 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
      v93 = *(v143 + 72);
      v94 = *(v143 + 16);
      do
      {
        v96 = v1[22];
        v95 = v1[23];
        v97 = v161[20];
        v94(v95, v92, v97);
        sub_10002BAF4(v96, v95);
        v98 = v97;
        v1 = v161;
        (*v140)(v96, v98);
        v92 += v93;
        --v91;
      }

      while (v91);
      v90 = v162;
      v87 = v137;
    }

    v99 = sub_100343D94(v90, v87);

    if (v99)
    {
      (*v135)(v1[11], v1[9]);
    }

    else
    {
      v100 = v1[27];
      v101 = v1[11];
      v138 = v1[9];
      v162 = v147;
      v163 = v151;
      v164 = v149;

      sub_10034415C(v100);
      v102 = v162;
      v103 = v163;
      v104 = v164;
      swift_beginAccess();

      v105 = *(v123 + v122);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v165 = *(v123 + v122);
      *(v123 + v122) = 0x8000000000000000;
      sub_100454828(v102, v103, v104, v101, isUniquelyReferenced_nonNull_native);
      *(v123 + v122) = v165;
      swift_endAccess();

      v1 = v161;

      (*v135)(v101, v138);
    }

    v50 = v154;
    v57 = v157;
  }

  v109 = v1[27];
  v111 = v1[24];
  v110 = v1[25];
  v113 = v1[22];
  v112 = v1[23];
  v114 = v1;
  v115 = v1[19];
  v117 = v114[17];
  v116 = v114[18];
  v118 = v114[16];
  v150 = v114[14];
  v152 = v114[13];
  v155 = v114[12];
  v158 = v114[11];

  v119 = v114[1];

  return v119();
}

uint64_t sub_100370914(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100370938, v2, 0);
}

uint64_t sub_100370938()
{
  v12 = v0;
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  if (!v1)
  {
    v6 = sub_1002087C4(_swiftEmptyArrayStorage);
    goto LABEL_11;
  }

  v2 = v0[3];
  if (v2)
  {
    v11 = _swiftEmptyDictionarySingleton;

    for (i = 0; i != v0[5]; ++i)
    {
      v4 = v0[2];
      v5 = *(type metadata accessor for SecureLocation() - 8);
      sub_10037BB24(&v11, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, v2);
    }

    v6 = v11;
LABEL_11:
    v9 = v0[1];

    return v9(v6);
  }

  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_100370B14;

  return daemon.getter();
}

uint64_t sub_100370B14(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_100370CF8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100370CF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_100371250;
  }

  else
  {
    v9 = v4[7];

    v4[10] = a1;
    v8 = sub_100370E34;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100370E34()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[11] = v5;
  *(v5 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v5 + v4, enum case for HandleType.following(_:), v1);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100370F98;
  v7 = v0[10];

  return sub_10001C61C(v5, 1);
}

uint64_t sub_100370F98(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1003710CC, v4, 0);
}

uint64_t sub_1003710CC()
{
  v17 = v0;
  v1 = v0[10];
  v2 = v0[3];

  v3 = v0[13];
  v4 = v0[9];
  v5 = _swiftEmptyDictionarySingleton;
  v16[0] = _swiftEmptyDictionarySingleton;
  v6 = v0[5];

  if (!v6)
  {
LABEL_10:

    v15 = v0[1];

    return v15(v5);
  }

  v7 = v0[2];
  v8 = *(type metadata accessor for SecureLocation() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  sub_10037BB24(v16, v7 + v9, v3);
  if (!v4)
  {
    v11 = 0;
    for (i = v10 + v9; ++v11 != v0[5]; i = v13)
    {
      v13 = i + v10;
      sub_10037BB24(v16, v0[2] + i, v3);
    }

    v5 = v16[0];
    goto LABEL_10;
  }
}

uint64_t sub_100371250()
{
  v1 = v0[7];

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocationService: missing DataManager to mapSecureLocationToHandle!", v5, 2u);
  }

  v6 = v0[9];

  v7 = sub_1002087C4(_swiftEmptyArrayStorage);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_10037138C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Friend.handle.getter();
  v8 = Handle.serverID.getter();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    if (v8 == *a2 && v10 == a2[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1003714C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  (*(v9 + 16))(&v17[-v11], a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = *(a2 + 56);
  type metadata accessor for Transaction();
  v18 = v15;
  v19 = a3;
  v20 = a4;
  v21 = sub_10037DDEC;
  v22 = v14;
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_10037166C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for SecureLocation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v20 = a2;
    swift_errorRetain();
  }

  else
  {
    sub_100005F04(a1, v7, &unk_1005AB3F0, &qword_1004C4BF0);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_10037ECCC(v7, v15, type metadata accessor for SecureLocation);
      sub_10037EC58(v15, v13, type metadata accessor for SecureLocation);
      sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
      CheckedContinuation.resume(returning:)();
      return sub_10037EBF8(v15, type metadata accessor for SecureLocation);
    }

    sub_100002CE0(v7, &unk_1005AB3F0, &qword_1004C4BF0);
    sub_1000F7A28();
    v16 = swift_allocError();
    *v17 = 10;
    v20 = v16;
  }

  sub_10004B564(&qword_1005B2490, &unk_1004D6A28);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1003718C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005E0B28);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(0xD000000000000023, 0x80000001004E7F90, &v23);
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s count:%ld", v14, 0x16u);
    sub_100004984(v15);
  }

  else
  {
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService);
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = v17;
  v18[4] = v2;
  v18[5] = a1;
  swift_retain_n();

  sub_1001D7F30(0, 0, v10, &unk_1004D6880, v18);

  v19 = *(v2 + OBJC_IVAR____TtC13findmylocated15LocationService_locationUpdateQueue);
  type metadata accessor for WorkItemQueue.WorkItem();
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v20[4] = v4;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100371C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for AppNotificationEvent.EventType();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100371D3C, a4, 0);
}

uint64_t sub_100371D3C()
{
  v11 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_10002C714(*(v1 + 16), 0);
    v4 = *(type metadata accessor for Handle() - 8);
    v5 = sub_100241514(&v10, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);

    sub_10000E3F8();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[7] = v3;
  (*(v0[5] + 104))(v0[6], enum case for AppNotificationEvent.EventType.updated(_:), v0[4]);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100371EC8;
  v7 = v0[6];
  v8 = v0[2];

  return sub_100377160(v3, v7);
}

uint64_t sub_100371EC8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10037203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100372060, 0, 0);
}

uint64_t sub_100372060()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 24);
  v3 = async function pointer to withTimeout<A>(_:block:)[1];

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100372174;

  return withTimeout<A>(_:block:)(v4, 0x40AAD21B3B700000, 3, &unk_1004D68A8, v2, &type metadata for () + 8);
}

uint64_t sub_100372174()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_10037F53C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1002BCFE4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100372290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v5 = type metadata accessor for Location();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Handle();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v11 = *(*(sub_10004B564(&qword_1005B2438, &qword_1004D68B0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v12 = swift_task_alloc();
  v4[15] = v12;
  *v12 = v4;
  v12[1] = sub_100372430;

  return sub_100345BC0();
}

uint64_t sub_100372430(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v11 = *v1;
  v3[16] = a1;

  v3[2] = a1;
  v3 += 2;
  v5 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v6 = swift_task_alloc();
  v3[15] = v6;
  v7 = sub_10004B564(&qword_1005B2428, &qword_1004D6830);
  v8 = type metadata accessor for UUID();
  v3[16] = v8;
  v9 = sub_10001DF0C(&qword_1005B2430, &qword_1005B2428, &qword_1004D6830);
  *v6 = v11;
  v6[1] = sub_1003725F8;

  return Sequence.asyncMap<A>(_:)(&unk_1004D68B8, 0, v7, v8, v9);
}

uint64_t sub_1003725F8(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 152) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_100372720, 0, 0);
  }
}

uint64_t sub_100372720()
{
  if (qword_1005A84C8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v1 = v0[19];
    v2 = v0[16];
    v3 = v0[4];
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0B28);
    swift_bridgeObjectRetain_n();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v73 = v0;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[16];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v84 = v9;
      *v8 = 134218498;
      if (v7 >> 62)
      {
        if (v73[16] < 0)
        {
          v70 = v73[16];
        }

        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v73[18];
      v11 = v73[19];
      v13 = v73[16];
      v14 = v73[4];
      *(v8 + 4) = v10;

      *(v8 + 12) = 2082;
      v15 = Array.description.getter();
      v17 = v16;

      v18 = sub_10000D01C(v15, v17, &v84);

      *(v8 + 14) = v18;
      *(v8 + 22) = 2048;
      v19 = *(v14 + 16);

      *(v8 + 24) = v19;

      _os_log_impl(&_mh_execute_header, v5, v6, "Send locations update to clients[%ld]: %{public}s updates count:%ld", v8, 0x20u);
      sub_100004984(v9);

      v0 = v73;
    }

    else
    {
      v20 = v0[19];
      v21 = v0[16];
      v22 = v0[4];
      swift_bridgeObjectRelease_n();
    }

    v23 = v0[4];
    if (!*(v23 + 16))
    {
      break;
    }

    v24 = v0[10];
    v25 = v23 + 64;
    v26 = -1;
    v27 = -1 << *(v23 + 32);
    if (-v27 < 64)
    {
      v26 = ~(-1 << -v27);
    }

    v28 = v26 & *(v23 + 64);
    v72 = (63 - v27) >> 6;
    v82 = (v24 + 32);
    v74 = v0[7];
    v75 = v0[10];
    v77 = (v24 + 8);
    v76 = v0[4];

    v29 = 0;
    v78 = v25;
    while (v28)
    {
      v30 = v29;
LABEL_23:
      v33 = v0[13];
      v35 = v0[8];
      v34 = v0[9];
      v79 = v34;
      v80 = v0[12];
      v36 = v0[6];
      v37 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v38 = v37 | (v30 << 6);
      v39 = *(v76 + 48) + *(v75 + 72) * v38;
      (*(v75 + 16))();
      (*(v74 + 16))(v35, *(v76 + 56) + *(v74 + 72) * v38, v36);
      v40 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v41 = *(v40 + 48);
      (*(v75 + 32))(v33, v80, v79);
      (*(v74 + 32))(v33 + v41, v35, v36);
      (*(*(v40 - 8) + 56))(v33, 0, 1, v40);
LABEL_24:
      v42 = v0[14];
      sub_1000176A8(v0[13], v42, &qword_1005B2438, &qword_1004D68B0);
      v43 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
      {
        v56 = v0[16];
        v57 = v0[4];
        v58 = v0[5];
        v59 = v0[3];

        v60 = swift_task_alloc();
        v0[20] = v60;
        v60[2] = v56;
        v60[3] = v57;
        v60[4] = v59;
        v60[5] = v58;
        v61 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
        v62 = swift_task_alloc();
        v0[21] = v62;
        *v62 = v0;
        v62[1] = sub_100372EF4;

        return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
      }

      (*v82)(v0[11], v0[14], v0[9]);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v0[11];
      v48 = v0[9];
      if (v46)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v84 = v50;
        *v49 = 141558275;
        *(v49 + 4) = 1752392040;
        *(v49 + 12) = 2081;
        v81 = Handle.identifier.getter();
        v52 = v51;
        (*v77)(v47, v48);
        v53 = sub_10000D01C(v81, v52, &v84);

        *(v49 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "LocationService: send location update for handle: %{private,mask.hash}s", v49, 0x16u);
        sub_100004984(v50);
        v0 = v73;
      }

      else
      {

        (*v77)(v47, v48);
      }

      (*(v74 + 8))(v0[14] + *(v43 + 48), v0[6]);
      v25 = v78;
    }

    if (v72 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    else
    {
      v31 = v72;
    }

    v32 = v31 - 1;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v72)
      {
        v54 = v0[13];
        v55 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
        (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
        v28 = 0;
        v29 = v32;
        goto LABEL_24;
      }

      v28 = *(v25 + 8 * v30);
      ++v29;
      if (v28)
      {
        v29 = v30;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v63 = v0[16];

  v65 = v0[13];
  v64 = v0[14];
  v67 = v0[11];
  v66 = v0[12];
  v68 = v0[8];

  v69 = v0[1];

  return v69();
}

uint64_t sub_100372EF4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 128);

    return _swift_task_switch(sub_10037303C, 0, 0);
  }
}

uint64_t sub_10037303C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003730D0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1003730F4, 0, 0);
}

uint64_t sub_1003730F4()
{
  v1 = *(v0[3] + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
  v6 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_10037F510;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1003731A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_100373254, 0, 0);
}

uint64_t sub_100373254()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v20 = *(v0 + 80);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);

    v23 = *(v0 + 8);

    return v23();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v26 = **(v0 + 72);
    v27 = result;
    v25 = v1 & 0xC000000000000001;
    v24 = *(v0 + 80) + 32;
    while (1)
    {
      if (v25)
      {
        v6 = *(v0 + 80);
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v24 + 8 * v3);
      }

      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = type metadata accessor for TaskPriority();
      v12 = *(v11 - 8);
      v28 = *(v0 + 96);
      (*(v12 + 56))(v9, 1, 1, v11);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      *(v13 + 24) = 0;
      *(v13 + 32) = v7;
      *(v13 + 40) = v10;
      *(v13 + 48) = v28;
      sub_100005F04(v9, v8, &qword_1005A9690, &qword_1004C2A00);
      LODWORD(v8) = (*(v12 + 48))(v8, 1, v11);

      v15 = *(v0 + 112);
      if (v8 == 1)
      {
        sub_100002CE0(*(v0 + 112), &qword_1005A9690, &qword_1004C2A00);
        if (!*v14)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v12 + 8))(v15, v11);
        if (!*v14)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      v16 = *(v13 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = dispatch thunk of Actor.unownedExecutor.getter();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:

      if (v19 | v17)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v26;
      swift_task_create();

      sub_100002CE0(v5, &qword_1005A9690, &qword_1004C2A00);
      if (v27 == v3)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003735B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();
  v9 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v10 = type metadata accessor for ClientID();
  v7[8] = v10;
  v11 = *(v10 - 8);
  v7[9] = v11;
  v7[10] = *(v11 + 64);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003736FC, 0, 0);
}

uint64_t sub_1003736FC()
{
  static Task<>.checkCancellation()();
  v1 = *(v0[2] + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + 1);
  v6 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100373834;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_100373834()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_100373930, 0, 0);
}

uint64_t sub_100373930()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + 40);
  ClientID.init(xpcConnectionID:)();
  v8 = *(v3 + 16);
  *(v0 + 120) = v8;
  *(v0 + 128) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v1, v6);
  v9 = *(v3 + 80);
  *(v0 + 176) = v9;
  v10 = (v9 + 16) & ~v9;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v0 + 136) = v13;
  v14 = *(v3 + 32);
  *(v0 + 144) = v14;
  *(v0 + 152) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v13 + v10, v2, v6);
  *(v13 + v11) = v7;
  *(v13 + v12) = v18;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v15 = async function pointer to withTimeout<A>(_:block:)[1];

  v16 = swift_task_alloc();
  *(v0 + 160) = v16;
  *v16 = v0;
  v16[1] = sub_100373AF8;

  return withTimeout<A>(_:block:)(v16, 0x8AC7230489E80000, 0, &unk_1004D68F0, v13, &type metadata for () + 8);
}

uint64_t sub_100373AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100373C14;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_10037F518;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100373C14()
{
  v49 = v0;
  v1 = *(v0 + 136);

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0B28);
  v4(v6, v5, v7);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = *(v0 + 168);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v14 = 136446466;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v47 = *(v13 + 8);
    v47(v11, v12);
    v19 = sub_10000D01C(v16, v18, &v48);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "sendToClients %{public}s error: %{public}@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v45);
  }

  else
  {
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);

    v47 = *(v23 + 8);
    v47(v21, v22);
  }

  v44 = *(v0 + 152);
  v46 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v41 = *(v0 + 80);
  v42 = *(v0 + 144);
  v29 = *(v0 + 64);
  v30 = *(v0 + 48);
  v31 = *(v0 + 32);
  v32 = *(v0 + 16);
  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
  v26(v28, v27, v29);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  *(v34 + 4) = v31;
  *(v34 + 5) = v32;
  v42(&v34[(v24 + 48) & ~v24], v28, v29);

  sub_1001D7F30(0, 0, v30, &unk_1004D6900, v34);

  v35 = *(v0 + 96);
  v36 = *(v0 + 88);
  v37 = *(v0 + 56);
  v38 = *(v0 + 48);
  v47(*(v0 + 104), *(v0 + 64));

  v39 = *(v0 + 8);

  return v39();
}