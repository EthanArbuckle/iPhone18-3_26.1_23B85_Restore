uint64_t sub_10005BC34()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[7];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = sub_100001F70();
  v4(v9);

  sub_100001F00();

  return v10();
}

uint64_t sub_10005BD7C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 448);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10005BE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = v14[50];
  v17 = v14[20];
  (*(v14[44] + 8))(v14[45], v14[43]);
  if (RequestMetadata.isStream.getter())
  {
    sub_10004AE14();
    sub_10014B2E4();

    sub_10003328C();
    sub_100005070();
    sub_1000082D4(v18, v19, v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22 = *(v15 + 8);
    v23 = sub_100003754();
    v24(v23);
    v14[57] = a11;
    sub_100003CA4();
    sub_10005FAF0(v25, v26);
    v27 = async function pointer to static _OSTransaction.named<A>(_:closure:isolation:)[1];
    v28 = swift_task_alloc();
    v14[58] = v28;
    *v28 = v14;
    sub_100012BF8(v28);
    sub_100011DF4();
    sub_100003540();

    return static _OSTransaction.named<A>(_:closure:isolation:)(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v37 = v14[49];
    sub_1000065AC();
    sub_1000494CC();

    sub_100002F54();
    sub_100003540();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10005C054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceMonitor.Event();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_extantRequests;
  swift_beginAccess();
  sub_10005C1FC(a2);
  swift_endAccess();

  v10 = *(a1 + v9);

  LOBYTE(a2) = sub_1000453F0(v11);

  if (a2)
  {
    v13 = *(a1 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager);
    (*(v5 + 104))(v8, enum case for InferenceMonitor.Event.inferencesNotRunning(_:), v4);
    sub_10005C57C(v8, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8], v21[9], v21[10], v21[11]);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_10005C1C0()
{
  v3 = v0[32];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[19];
}

void sub_10005C1E4(uint64_t a1@<X8>)
{
  v3 = v2[21];
  v2[11] = 1;
  v2[12] = a1;
  v2[13] = v1;
}

uint64_t sub_10005C330()
{
  v0 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_100004B1C();
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  RequestMetadata.id.getter();
  sub_10005E334(&qword_1001B9580);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v7, v0);
}

uint64_t sub_10005C434()
{
  v0 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1 = sub_100002BDC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100005630();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  RequestMetadata.id.getter();
  RequestMetadata.id.getter();
  type metadata accessor for RequestMetadata();
  v12 = static UUIDIdentifier.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v8, v0);
  v13(v11, v0);
  return v12 & 1;
}

void sub_10005C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000055B0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for InferenceMonitor.Event();
  v25 = sub_100002BDC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100002B8C();
  v32 = v31 - v30;
  v33 = sub_100065020(&qword_1001BD5F8, &qword_100173D90);
  sub_100002BDC(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  sub_100004B1C();
  __chkstk_darwin(v38);
  v40 = &a9 - v39;
  (*(v27 + 16))(v32, v23, v24);
  sub_100065020(&qword_1001BD600, &qword_100173D98);
  AsyncStream.Continuation.yield(_:)();
  (*(v35 + 8))(v40, v33);
  sub_100002EEC();
}

uint64_t sub_10005C6E8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[3];
    v10 = sub_10000A30C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v14 = v3[8];
    v13 = v3[9];

    sub_100002F54();

    return v15();
  }
}

uint64_t sub_10005C80C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 96);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10005C920(uint64_t a1)
{
  v2 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_10005CAA8(a1 + v7, v6);
  v8 = *(v3 + 28);
  v9 = *&v6[v8];

  *&v6[v8] = 0;
  swift_beginAccess();
  sub_10005CB00(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_10005CA10()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  sub_10005C920(v0[8]);

  sub_100002F54();
  sub_100003D20();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10005CAA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v5 = v4(v3);
  sub_100002C00(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

uint64_t sub_10005CB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005CB64()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[27] = v0;

  if (v0)
  {
    v9 = v3[11];
    v10 = sub_10000A30C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v3[25];
    v15 = v3[21];
    v14 = v3[22];
    v16 = v3[18];

    sub_100002F54();

    return v17();
  }
}

uint64_t sub_10005CCAC()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_10006E060;
  }

  else
  {
    v7 = sub_10006DF88;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10005CDD0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_10005CEE0, v2, 0);
}

uint64_t sub_10005CEE0()
{
  v1 = v0[12];
  v2 = v0[9];
  if (sub_10000C6C0(v1, 1, v2) == 1)
  {
    v3 = v0[11];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[17];
    v6 = v0[18];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[8];
    (*(v9 + 32))(v8, v1, v2);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v7, v8, v2);
    swift_endAccess();
    v11 = *(v10 + v6);
    v12 = -1;
    v13 = -1 << *(v11 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v11 + 56);
    v15 = (63 - v13) >> 6;

    v17 = 0;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_13:
        v19 = v0[11];
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v21 = *(v11 + 48) + 24 * (v20 | (v18 << 6));
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);

        sub_100125DE0();

        if (!v14)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v16);
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 56 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_13;
      }
    }

    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];

    (*(v26 + 8))(v25, v27);
    v28 = v0[16];
    v29 = v0[8];
    v30 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v31 = swift_task_alloc();
    v0[19] = v31;
    *v31 = v0;
    v16 = sub_1000087D4();

    return AsyncStream.Iterator.next(isolation:)(v16);
  }
}

uint64_t sub_10005D184()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 120);
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10005D298()
{
  sub_10000639C();
  sub_100003884();
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];

  sub_100002F54();
  sub_100003D20();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10005D328()
{
  sub_10000639C();
  sub_100003884();
  sub_10000D554();
  v2 = v0[39];
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  sub_10000A9E0();
  v6 = *(v5 + 200);
  v7 = v0[22];
  v8 = v0[21];
  v9 = v0[20];

  sub_10000778C();
  sub_100003D20();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10005D478()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[68] = v0;

  if (v0)
  {
    v9 = v3[21];
    v10 = sub_10013A638;
  }

  else
  {
    v11 = v3[66];
    v12 = v3[21];

    v10 = sub_10005D5D0;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10005D588(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_10002BA54(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10005D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = v16[65];
  v18 = v16[57];
  v19 = v16[44];
  v20 = v16[45];
  v21 = v16[43];
  v22 = v16[39];
  v23 = v16[40];
  v38 = v16[36];
  v39 = v16[35];
  v40 = v16[32];
  v41 = v16[29];
  v24 = v16[26];
  v42 = v16[25];
  v25 = v16[22];
  v26 = v16[18];

  sub_10000ED84(v24, &qword_1001B9058);
  sub_10005D588(v16 + 2);
  v27 = type metadata accessor for TaskPriority();
  sub_100007098(v27);
  sub_100005640();
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v26;

  sub_100003E60();
  sub_1000652FC();

  sub_100002F54();
  sub_100003D04();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, a14, a15, a16);
}

uint64_t sub_10005D760()
{
  v2 = v0[28];
  result = v0[29];
  v3 = v0[27];
  return result;
}

uint64_t sub_10005D76C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[40];
  *v4 = *v1;
  *(v3 + 328) = v0;

  v6 = v2[39];
  v7 = v2[11];

  sub_10000CC50();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10005D8A4(uint64_t a1)
{
  v3 = sub_10000EF2C(OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState);

  sub_10005C1FC(a1);

  sub_10000A93C(v3);
}

void sub_10005D954()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (sub_1000136A8())
  {
    v24[2] = v2;
    v11 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v24[1] = v24;
    sub_100002F04(v11);
    v13 = *(v12 + 64);
    sub_100004B1C();
    __chkstk_darwin(v14);
    v16 = v24 - v15;
    v17 = sub_100003370(v0 + 5, v0[8]);
    __chkstk_darwin(v17);
    sub_100009CB4();
    *(v18 - 32) = v10;
    *(v18 - 24) = v6;
    *(v18 - 16) = v4;
    *(v18 - 8) = v8;
    sub_1000084CC(v19);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v20 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v16, v21, v22, v20);
    sub_10000ECD8(v16, &qword_1001BD070, &qword_100173948);
  }

  v23 = v0[10];
  sub_1000616DC();
  sub_100002EEC();
}

uint64_t sub_10005DAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10005DBB0, 0, 0);
}

uint64_t sub_10005DBB0()
{
  sub_10000636C();
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  sub_100008110();
  sub_100045430();
  RequestMetadata.id.getter();
  v4 = *(v1 + 96);
  sub_100004B94();
  v13 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = sub_10000AC24(v8);
  *v9 = v10;
  v9[1] = sub_10006159C;
  v11 = sub_10000A9C8(*(v0 + 40));

  return v13(v11);
}

uint64_t sub_10005DCD8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_10005DD70();
}

uint64_t sub_10005DD70()
{
  sub_100001ED0();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[21] = v3;
  sub_100002F44(v3);
  v1[22] = v4;
  v6 = *(v5 + 64);
  v1[23] = sub_10000F0C0();
  v1[24] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001BA488, &qword_100170FE8);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v1[25] = sub_10000F0C0();
  v1[26] = swift_task_alloc();
  sub_1000071A8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10005DE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  v25 = v22[26];
  v26 = v22[19];
  v27 = v22[20];
  type metadata accessor for _OSActivity();
  v22[27] = swift_initStackObject();
  v28 = sub_10001B160("Removing active InferenceProvider request", 41, 2);
  v22[28] = v28;
  v29 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest;
  sub_100004BA0();
  v30 = *(v27 + v29);

  sub_10005E210(v26, v30, v25);

  type metadata accessor for RequestPriority();
  v31 = sub_100001F0C();
  LODWORD(v26) = sub_10000C6C0(v31, 1, v30);
  sub_10000ECD8(v25, &qword_1001BA488, &qword_100170FE8);
  if (v26 == 1)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18();
    }

    v32 = v22[22];
    v33 = v22[23];
    v34 = v22[21];
    v35 = v22[19];
    v36 = type metadata accessor for Logger();
    v37 = sub_10000641C(v36, qword_1001B9FA0);
    v38 = *(v32 + 16);
    v39 = sub_100009B4C();
    v40(v39);
    v41 = Logger.logObject.getter();
    LOBYTE(v35) = static os_log_type_t.fault.getter();
    v42 = os_log_type_enabled(v41, v35);
    v43 = v22[22];
    v44 = v22[23];
    v45 = v22[21];
    if (v42)
    {
      sub_100007698();
      a9 = sub_10000359C();
      a10 = a9;
      *v37 = 136315138;
      sub_10002E9D0();
      v46 = v28;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v50 = sub_10000D560();
      v51(v50);
      v52 = v47;
      v28 = v46;
      v53 = sub_100004A3C(v52, v49, &a10);

      *(v37 + 4) = v53;
      sub_100013710(&_mh_execute_header, v54, v55, "InferenceProviderExtensionConnection removeActiveRequest called for nonactive %s");
      sub_100003324(a9);
      sub_100003420();
      sub_100004B78();
    }

    else
    {

      v66 = sub_10000D560();
      v67(v66);
    }

    sub_100004B50();
    os_activity_scope_leave((v28 + 3));
    swift_endAccess();
    sub_100011ABC();

    sub_100013D48();
    sub_100003540();

    return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v56 = v22[25];
    (*(v22[22] + 16))(v22[24], v22[19], v22[21]);
    sub_100003978();
    sub_100009BFC(v57, v58, v59, v30);
    sub_100004B50();
    v60 = sub_1000060A4();
    sub_10005E8FC(v60, v61);
    swift_endAccess();
    v62 = swift_task_alloc();
    v22[29] = v62;
    *v62 = v22;
    v62[1] = sub_100061390;
    v63 = v22[20];
    sub_100003540();

    return sub_100030D74();
  }
}

uint64_t sub_10005E210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_10005EC44(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for RequestPriority();
    sub_100002C00(v9);
    (*(v10 + 16))(a3, v8 + *(v10 + 72) * v7, v9);
    v11 = a3;
    v12 = 0;
    v13 = 1;
    v14 = v9;
  }

  else
  {
    type metadata accessor for RequestPriority();
    v11 = sub_100007A04();
  }

  return sub_100009BFC(v11, v12, v13, v14);
}

unint64_t sub_10005E2C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_10005C330();
  v4 = Hasher._finalize()();

  return sub_10005E384(a1, v4);
}

uint64_t sub_10005E334(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B8F48, &qword_10016FB30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005E384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for DaemonRequest(0);
    v7 = *(*(v3 + 48) + 8 * i);

    v8 = sub_10005C434();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_10005E448(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = *(v5 + 40);
  sub_100065020(a2, a3);
  sub_10001B27C(a4, a2, a3);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = sub_1000055A4();
  sub_10005E4F4(v11, v12, a2, a3, a5);
  sub_100009C38();
}

void sub_10005E4F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v21 = a4;
  v22 = a5;
  v18 = a1;
  v20 = a3;
  v7 = sub_100065020(a3, a4);
  v8 = sub_100002BDC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v18 - v13;
  v23 = v5 + 64;
  v19 = v5;
  v15 = ~(-1 << *(v5 + 32));
  for (i = a2 & v15; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v19 + 48) + *(v10 + 72) * i, v7);
    sub_10001B27C(v22, v20, v21);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v14, v7);
    if (v17)
    {
      break;
    }
  }

  sub_100002EEC();
}

uint64_t sub_10005E68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005E6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v9 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  static Buildable.with(_:)();
  result = GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  if (a5)
  {
    v12 = sub_100065020(&qword_1001BD080, &unk_100173958);
    v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v12 - 8);
    v15 = &v19[-v14];
    swift_getErrorValue();
    v16 = v23;
    v17 = v24;
    swift_errorRetain();
    sub_1000BA718(v16, v17, v15);
    v18 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    sub_100009BFC(v15, 0, 1, v18);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  return result;
}

uint64_t sub_10005E8FC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_100065020(&qword_1001BA488, &qword_100170FE8);
  v8 = sub_100002F04(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for RequestPriority();
  v14 = sub_100002BDC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v19 = sub_100005D38();
  if (sub_10000C6C0(v19, v20, v13) == 1)
  {
    sub_100006570();
    sub_10000ED30(v21, v22, v23);
    sub_10005EAEC(a2, v12);
    v24 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_1000055EC(v24);
    (*(v25 + 8))(a2);
    sub_100006570();
    return sub_10000ED30(v26, v27, v28);
  }

  else
  {
    (*(v16 + 32))(v3, a1, v13);
    v30 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v34 = *v4;
    sub_100117B1C(v3, a2);
    *v4 = v34;
    v31 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_1000055EC(v31);
    return (*(v32 + 8))(a2);
  }
}

uint64_t sub_10005EAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  sub_10005EC44(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    *v31 = *v3;
    v10 = *(*v3 + 24);
    v11 = sub_100065020(&qword_1001BCD60, &qword_100173518);
    sub_100003CBC(v11, v12, v13, v14, v15, v16, v17, v18, v30, v31[0]);
    v19 = *(*v32 + 48);
    v20 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_100002C00(v20);
    (*(v21 + 8))(v19 + *(v21 + 72) * v8, v20);
    v22 = *(*v32 + 56);
    v23 = type metadata accessor for RequestPriority();
    sub_100002C00(v23);
    (*(v24 + 32))(a2, v22 + *(v24 + 72) * v8, v23);
    sub_10005EC68();
    _NativeDictionary._delete(at:)();
    *v3 = *v32;
    v25 = sub_100005780();
    v28 = v23;
  }

  else
  {
    type metadata accessor for RequestPriority();
    v25 = sub_1000128F4();
  }

  return sub_100009BFC(v25, v26, v27, v28);
}

unint64_t sub_10005EC68()
{
  result = qword_1001B9580;
  if (!qword_1001B9580)
  {
    sub_10006A614(&qword_1001B8F48, &qword_10016FB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9580);
  }

  return result;
}

uint64_t sub_10005ECCC()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 40);
  if (v0)
  {
  }

  sub_10000CC50();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v25;
  a22 = v26;
  sub_100003284();
  a20 = v23;
  v27 = v23[14];
  v28 = v23[15];

  sub_1000199D0();
  v32 = ((1 << v31) + 63) >> 6;
  if (!v32)
  {
    goto LABEL_7;
  }

  while (!*v30)
  {
    ++v30;
    v29 -= 64;
    if (!--v32)
    {
      goto LABEL_7;
    }
  }

  sub_10001946C();
  if (v38)
  {
LABEL_7:
    if (qword_1001B88C8 != -1)
    {
      sub_100004F90();
      swift_once();
      v88 = v23[6];
    }

    v39 = type metadata accessor for Logger();
    sub_10000641C(v39, qword_1001B8DF8);
    sub_100001F0C();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v23[6];
      v43 = swift_slowAlloc();
      sub_1000033D0();
      v44 = swift_slowAlloc();
      a11 = v44;
      *v43 = 136315138;
      v45 = sub_10005F1EC();
      v49 = sub_1000239D4(v45, v46, v47, v48);

      *(v43 + 4) = v49;
      sub_100012D40(&_mh_execute_header, v50, v51, "%s finished all executions");
      sub_100003324(v44);
      sub_100002BD0();

      sub_100002BD0();
    }

    sub_1000137BC();
    sub_100001F00();
    sub_100003540();

    return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }

  if (-v34 < 0 || v37 - v34 >= v36)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (((*v35 >> v37) & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000129BC(v33);
  v61 = qword_1001B88C8;

  if (v61 != -1)
  {
LABEL_25:
    sub_100004F90();
    swift_once();
    v89 = v23[6];
  }

  v62 = type metadata accessor for Logger();
  sub_10000641C(v62, qword_1001B8DF8);
  sub_100001F0C();

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v66 = v23[8];
    v65 = v23[9];
    v67 = v23[6];
    a9 = v23[7];
    sub_100002F10();
    v68 = swift_slowAlloc();
    sub_100011828();
    a11 = swift_slowAlloc();
    *v68 = 136315394;
    v69 = sub_10005F1EC();
    sub_1000239D4(v69, v70, v71, v72);
    a10 = v22;
    sub_100009540();

    *(v68 + 4) = v22;
    *(v68 + 12) = 2080;
    v73 = v24 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    RequestMetadata.id.getter();
    sub_10002E9D0();
    sub_10002A0E4();
    v74 = sub_100007804();
    v75(v74);
    sub_100004A3C(v73, v22, &a11);
    sub_100003170();

    *(v68 + 14) = v73;
    sub_100019B38(&_mh_execute_header, v76, v77, "%s waiting for request %s to complete");
    sub_100013D14();
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  v78 = async function pointer to Task.value.getter[1];
  v79 = swift_task_alloc();
  v23[16] = v79;
  *v79 = v23;
  sub_1000055C8();
  sub_100003540();

  return Task.value.getter(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10005F1EC()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8F38);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x6F69747563657845;
}

uint64_t sub_10005F2BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005F300(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005F340()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005F390()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = *(v2 + 32);
  *v4 = *v1;
  *(v3 + 40) = v0;

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_10006EFF0;
  }

  else
  {
    v7 = sub_10005F4B4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10005F4B4()
{
  sub_100003284();
  v23 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001B8DF8);
  sub_100001F0C();

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v4 = v0[5];
    v5 = v0[3];
    sub_100002F10();
    v6 = swift_slowAlloc();
    sub_100011828();
    v22[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_10005F1EC();
    sub_100004A3C(v7, v8, v22);

    sub_100009D60();
    v9 = *(v5 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

    v10 = sub_10006C26C(v9, v5);
    Array.description.getter();
    v11 = sub_1000079DC();
    sub_100007C14(v11, v12, v22);
    sub_10000A868();

    *(v6 + 14) = v10;
    sub_1000057CC(&_mh_execute_header, v13, v14, "%s releasing assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  sub_100008354(v0[3]);
  v21 = v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v0[6] = v18;
  *v18 = v0;
  v18[1] = sub_100060E8C;
  v19 = v0[3];

  return v21(v19);
}

uint64_t sub_10005F6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F730(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F78C()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_10001644C();

  return sub_10005F824();
}

uint64_t sub_10005F824()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006F558;

  return sub_10005F8BC();
}

uint64_t sub_10005F8BC()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[12] = v3;
  sub_100002F44(v3);
  v1[13] = v4;
  v6 = *(v5 + 64);
  v1[14] = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005F96C()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[14];
  v2 = v0[10];
  v3 = sub_100042FD4(v0[11]);
  v0[8] = v2;
  _s14ExecutionGroupCMa();
  sub_10000CC20();
  sub_10005FAF0(v4, v5);

  sub_1000071D0();
  UUIDIdentifier.init(_:)();
  v6 = *v3;
  v7 = swift_task_alloc();
  v8 = sub_10000D03C(v7);
  *v8 = v9;
  v8[1] = sub_1000605C4;
  sub_1000031B8(v0[14]);
  sub_100007BB8();

  return sub_10005FBB4();
}

uint64_t sub_10005FA6C()
{
  *(v1 - 264) = v0;

  return swift_retain_n();
}

uint64_t _s14ExecutionGroupCMa()
{
  result = qword_1001B8E38;
  if (!qword_1001B8E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005FAF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005FB38@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_uuid;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10005FBB4()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_10000F0C0();
  v1[10] = swift_task_alloc();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

void sub_10005FFC0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 48));

  sub_10005FF9C();
}

void sub_100060010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10004657C();
}

uint64_t sub_10006002C()
{
  v1 = sub_100065020(&qword_1001BB6D0, &qword_100172178);
  v2 = sub_100002F04(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v6 = v0 + *(v5 + 48);
  sub_100060184();
  v7 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  result = sub_100015684(v7);
  if (v6 != 1)
  {
    v9 = type metadata accessor for Date();
    v10 = sub_100002BDC(v9);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10);
    sub_100002B8C();
    static Date.now.getter();
    v13 = sub_10000A0B0(*(v5 + 32));
    return v14(v13);
  }

  return result;
}

void sub_100060184()
{
  sub_1000055B0();
  v28 = v1;
  v2 = sub_1000071D0();
  v4 = sub_100065020(v2, v3);
  sub_100002BDC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100004B1C();
  __chkstk_darwin(v9);
  sub_10014B090();
  sub_1000081B4();
  sub_100006570();
  sub_1000082D4(v10, v11, v12);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = *(v0 + 32);
  sub_100011E24();
  v15 = v6 + 8;
  while (1)
  {
    sub_10014B174(v14);
    if ((v16 & 1) == 0)
    {
      v21 = 1;
      v15 = v28;
      goto LABEL_9;
    }

    v17 = sub_100013870();
    v18(v17);
    sub_1000039B4();
    sub_1000082D4(&qword_1001B94E8, &qword_1001B94D0, &unk_100171E80);
    sub_100025DE0();
    dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = sub_10014B374();
    v20(v19);
    if (v4)
    {
      break;
    }

    v14 = v0 + 1;
  }

  v22 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v27;
  v29 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100060358();
    v24 = v29;
  }

  v25 = sub_10014B030(v24);
  v26(v25);
  sub_100046888();
  v21 = 0;
  *v27 = v29;
LABEL_9:
  sub_100009BFC(v15, v21, 1, v4);
  sub_100002EEC();
}

uint64_t sub_10006037C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 120);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100060474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = sub_1000DB0B0();
  v17(v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = sub_1000038BC(v19);
  v21 = v14[14];
  v23 = v14[8];
  v22 = v14[9];
  v24 = v14[7];
  if (v20)
  {
    sub_10000A05C();
    swift_slowAlloc();
    a10 = v21;
    sub_10000A45C();
    swift_slowAlloc();
    sub_10003EAA0();
    *v21 = 136315138;
    sub_1000281BC(&qword_1001BB468, &qword_1001B94D0, &unk_100171E80);
    sub_100042FBC();
    v25 = sub_1000DABA4();
    (v21)(v25);
    v26 = sub_10000CD1C();
    sub_100004A3C(v26, v27, v28);
    sub_100005974();

    *(v21 + 4) = v22;
    sub_1000033FC();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_100003324(v15);
    sub_1000039CC();

    sub_10000BFCC();
  }

  else
  {

    v34 = sub_100011BF0();
    (v21)(v34);
  }

  v36 = v14[9];
  v35 = v14[10];

  sub_100001F00();
  sub_100003540();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000605C4()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[15];
  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = v1[11];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = sub_100003308();
  v10(v9);
  v11 = sub_100026BB0();

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_100060720()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t *sub_10006073C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_1000036CC((v1 + 16));
}

uint64_t sub_100060754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v14 = v12[10];
  v15 = (v12[11] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_1000125C0();
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v12[9] = v14;
  v18 = swift_task_alloc();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v12 + 9;

  sub_1000440DC();
  sub_100060948(v19, v20, v21);
  LOBYTE(v14) = v22;

  if (v14)
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v23 = v12[10];
    v24 = type metadata accessor for Logger();
    sub_100002FD0(v24, qword_1001BD750);

    v25 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_10014B230();
    if (sub_10001E6D8())
    {
      v26 = v12[10];
      sub_10000A05C();
      v27 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v27 = 136315138;
      v28 = sub_10005F1EC();
      sub_10000CB58(v28, v29, v30);
      sub_100012918();
      *(v27 + 4) = v13;
      sub_100018928();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_10005D588(v12 + 9);
      sub_100007C2C();

      sub_100002BD0();
    }
  }

  v36 = v12[14];
  v37 = v12[10];
  sub_100002D24();
  swift_beginAccess();
  sub_100060B3C(v37);
  swift_endAccess();

  sub_100001F00();
  sub_100001FBC();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

void *sub_100060948(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100060998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    v6 = *(a2 + 8 * i);

    v7 = static UUID.== infix(_:_:)();

    if (v7)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100060A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1001430DC(v8, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_100060998(*a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_100060B04()
{

  return swift_dynamicCast();
}

uint64_t sub_100060B20()
{

  return swift_dynamicCast();
}

unint64_t sub_100060B3C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v10 = a1;
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = &v10;
  v4 = sub_100060948(sub_10014AFC0, v9, v2);
  v6 = 0;
  if ((v7 & 1) == 0)
  {
    return sub_100060C58(v4, v5);
  }

  return v6;
}

uint64_t sub_100060BAC(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  result = sub_10014B338();
  *v3 = v4;
  if ((result & 1) == 0)
  {
    result = a2(v4);
    v4 = result;
    *v3 = result;
  }

  v9 = *(v4 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = v4 + 8 * a1;
    v13 = *(v12 + 32);
    a3(v12 + 40, v11);
    *(v4 + 16) = v10;
    specialized ContiguousArray._endMutation()();
    return v13;
  }

  return result;
}

uint64_t sub_100060C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_10004D164(a11, v12, v11 & 1);
}

unint64_t sub_100060C58(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    return sub_100060BAC(a1, sub_10014AFE0, sub_100060E68);
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else if (v6 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_13:
    v13 = sub_100060BAC(a1, sub_10014AFE0, sub_100060E68);
    if (v7)
    {
      swift_beginAccess();
      v14 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v14 = 0;
    }

    if (v14 || *(*v5 + 16) >= 0x10uLL)
    {
      v15 = static _HashTable.scale(forCapacity:)();
      sub_100141A44(v15, v14, sub_100142420, sub_100141B14);
    }

    else
    {

      *v3 = 0;
    }

    return v13;
  }

  result = sub_100141958();
  v10 = *v3;
  if (*v3)
  {
    v11 = *v3;

    result = sub_1001455F8(a2, (v10 + 16), v10 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v12 = v3[1];

      sub_100146E00(a1, a1 + 1, v12, (v10 + 16));

      return sub_100060BAC(a1, sub_10014AFE0, sub_100060E68);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_100060E6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

uint64_t sub_100060E8C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  return _swift_task_switch(sub_100060F8C, v3, 0);
}

uint64_t sub_100060F8C()
{
  sub_100002BAC();
  v1 = *(v0 + 24);
  sub_100060FE4();
  sub_100001F00();

  return v2();
}

uint64_t sub_100060FE4()
{
  v1 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001B8DF8);
  sub_100003170();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    sub_1000033D0();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = sub_10005F1EC();
    v9 = sub_100004A3C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s done", v5, 0xCu);
    sub_100003324(v6);
    sub_100002BD0();

    sub_100002BD0();
  }

  v10 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100061154(v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100061154(uint64_t a1)
{
  *a1 = 4;
  v2 = *(a1 + 8);

  *(a1 + 8) = 0;
  v3 = *(a1 + 16);

  *(a1 + 16) = 0;
  v4 = *(a1 + 24);

  *(a1 + 24) = 0;
  type metadata accessor for DaemonRequest(0);
  sub_100065020(&qword_1001B8F70, &qword_10016FB88);
  sub_10005E68C(&qword_1001B8F78, type metadata accessor for DaemonRequest);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = *(a1 + 32);

  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100061230()
{
  sub_100061288();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100061288()
{
  v1 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_uuid;
  v2 = type metadata accessor for UUID();
  sub_1000055EC(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

  v5 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets);

  v6 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_acquireBlock + 8);

  v7 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_releaseBlock + 8);

  v8 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_inferenceProviderDescriptor;
  v9 = type metadata accessor for InferenceProviderDescriptor();
  sub_1000055EC(v9);
  (*(v10 + 8))(v0 + v8);
  v11 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState + 8);
  v12 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState + 16);
  v14 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState + 24);
  v13 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState + 32);

  return v0;
}

uint64_t sub_100061390()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 232);
  *v4 = *v1;
  *(v3 + 240) = v0;

  sub_10000A9E0();
  v7 = *(v6 + 160);
  if (v0)
  {
    v8 = sub_1000A8384;
  }

  else
  {
    v8 = sub_1000614D8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000614D8()
{
  sub_10000CB70();
  sub_100003884();
  v1 = *(v0 + 224);
  sub_100004B50();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  sub_100011ABC();

  sub_100007A20();
  sub_100004CC8();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10006159C()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = sub_100001F70();
  v10(v9);

  sub_100001F00();

  return v11();
}

void sub_1000616DC()
{
  sub_1000055B0();
  sub_100007C98(v1, v2, v3, v4);
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100004B1C();
  __chkstk_darwin(v10);
  sub_10000BFFC();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_execRequestPostString);
  v12 = sub_1000127E0(v11);
  v13(v12);

  swift_errorRetain();
  v14 = OSSignposter.logHandle.getter();
  v15 = type metadata accessor for OSSignpostID();
  v16 = sub_100002BDC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100002B8C();
  sub_100004BF4();
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    v21 = sub_100019BCC();
    v22(v21, v15);
    (*(v7 + 8))(v0, v5);
LABEL_19:
    sub_100002EEC();
    return;
  }

  if ((v52 & 1) == 0)
  {

    if (v53)
    {
      sub_10000631C();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10000A46C();
  if (v23)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011408();
  if (!v24)
  {
    sub_100005704();
    if (!(!v24 & v25))
    {
      sub_100013B50();

      sub_10001382C();
LABEL_10:
      v26 = type metadata accessor for OSSignpostError();
      v27 = sub_100002BDC(v26);
      v29 = v28;
      v31 = *(v30 + 64);
      __chkstk_darwin(v27);
      sub_1000086BC();

      checkForErrorAndConsumeState(state:)();

      v32 = *(v29 + 88);
      v33 = sub_100001F70();
      v34(v33);
      if (!&enum case for OSSignpostError.doubleEnd(_:) || (sub_100003468(&enum case for OSSignpostError.doubleEnd(_:)), !v24))
      {
        v35 = *(v29 + 8);
        v36 = sub_100001F70();
        v37(v36);
      }

      sub_1000031E0();
      v38 = sub_100013E88();
      v39 = sub_100007A5C(v38);
      sub_10001127C(v39, v40);
      sub_1000188B4();
      v41 = sub_100019948();
      v42(v41);
      v43 = sub_1000035F4();
      sub_1000071F0(v43);
      v45 = v44 | 0x65750000u;
      if (v24)
      {
        v46 = 0x65736C6166;
      }

      else
      {
        v46 = v45;
      }

      sub_10000CF80(v46);

      v47 = OSSignpostID.rawValue.getter();
      sub_100002030(&_mh_execute_header, v48, v49, v47);
      sub_100012500();
      swift_arrayDestroy();
      sub_100003A4C();
      sub_100012A9C();

      v50 = sub_100005A74();
      v51(v50);
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100061A8C()
{
  v3 = *(*(v1 + 48) + 8 * v0);
}

uint64_t sub_100061AE8()
{
}

uint64_t sub_100061B10()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[9];
}

void *sub_100061B5C(uint64_t a1)
{
  v2 = type metadata accessor for ModelManagerError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100070AD0();
    v8 = v21;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v17 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v21 = v8;
      v13 = v8[2];
      if (v13 >= v8[3] >> 1)
      {
        sub_100070AD0();
      }

      v19 = v2;
      v20 = sub_100070B10(&qword_1001B9078, &type metadata accessor for ModelManagerError);
      v14 = sub_10000366C(&v18);
      v10(v14, v6, v2);
      v8 = v21;
      v21[2] = v13 + 1;
      sub_100004A04(&v18, &v8[5 * v13 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v17;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_100061D54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100002EE0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100061D88()
{
  v1 = *(v0 + 24);

  sub_100002EE0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100061DD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061E24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100061E84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_100061F00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

uint64_t sub_100061F50()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100061F88()
{
  sub_1000134E8();
  v3 = type metadata accessor for Policy();
  sub_100002BDC(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_1000402B0();
  v8 = sub_100018DB4();
  v9(v8);
  v10 = *(v0 + v1);

  sub_100003324((v0 + v2));
  sub_100009C38();

  return _swift_deallocObject(v11, v12, v13);
}

uint64_t sub_100062044()
{
  sub_1000134E8();
  v3 = type metadata accessor for Policy();
  sub_100002BDC(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  sub_1000402B0();
  v8 = sub_100018DB4();
  v9(v8);
  v10 = *(v0 + v1);

  v11 = *(v0 + v2);

  sub_100009C38();

  return _swift_deallocObject(v12, v13, v14);
}

uint64_t sub_100062100()
{
  v1 = *(v0 + 24);

  sub_100002EE0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100062134()
{
  v1 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002C00(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000621D4()
{
  v1 = type metadata accessor for Assertion.DaemonRep();
  sub_100002BDC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = sub_100018DB4();
  v8(v7);

  return _swift_deallocObject(v0, ((v3 + 24) & ~v3) + v5, v3 | 7);
}

uint64_t sub_100062284()
{
  v1 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F44(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Policy();
  if (!sub_10000C6C0(v0 + v4, 1, v7))
  {
    sub_100006098(v7);
    (*(v8 + 8))(v0 + v4, v7);
  }

  sub_100011900();
  v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  v13 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v3 | 7);
}

uint64_t sub_100062390()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100002EE0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000623CC()
{
  v1 = sub_100065020(&qword_1001B9698, &qword_100170280);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100062484()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000624CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  sub_1000119E4();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100062510()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = a1 + *(a3 + 20);

    return sub_10000C6C0(v8, a2, v7);
  }
}

void *sub_100062608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 20);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006268C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000626D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000062F4(*(a1 + 8));
  }

  v7 = type metadata accessor for UUID();
  v8 = a1 + *(a3 + 20);

  return sub_10000C6C0(v8, a2, v7);
}

uint64_t sub_100062750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 20);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000627D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062810(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100005C60();
  }

  type metadata accessor for FilePath();
  v5 = sub_100002CE0(*(a3 + 20));

  return sub_10000C6C0(v5, v6, v7);
}

void sub_100062884()
{
  sub_10001139C();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for FilePath();
    v5 = sub_100002CE0(*(v4 + 20));

    sub_100009BFC(v5, v6, v0, v7);
  }
}

uint64_t sub_1000628F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for XPCDictionary();
    v9 = a1 + *(a3 + 20);

    return sub_10000C6C0(v9, a2, v8);
  }
}

uint64_t sub_10006297C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for XPCDictionary();
    v8 = v5 + *(a4 + 20);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000629FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AssetPolicy();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000C6C0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100062AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AssetPolicy();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100062B50()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062B98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

char *sub_100062BE8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100065020(&qword_1001BB028, &qword_100171AC8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100062C18()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100065020(&qword_1001BB030, &qword_100171AD0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100062C48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionIdentity();

  return sub_10000C6C0(a1, a2, v4);
}

uint64_t sub_100062CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionIdentity();

  return sub_100009BFC(a1, a2, a2, v4);
}

uint64_t sub_100062D24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062D6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  State = type metadata accessor for LoadState();
  v7 = sub_1000191C8(State);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_10000C6C0(v10, a2, v9);
  }

  v11 = type metadata accessor for Date();
  v12 = sub_1000191C8(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 40));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100062E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  State = type metadata accessor for LoadState();
  v9 = sub_1000191C8(State);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Date();
    result = sub_1000191C8(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 32);
  }

  return sub_100009BFC(v12, a2, a2, v11);
}

uint64_t sub_100062F80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RequestPriority();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000C6C0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006306C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RequestPriority();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100063114()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v7 = sub_1000191C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    v12 = sub_1000191C8(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for RemoteInterfaceInformation();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_10000C6C0(v10, a2, v9);
}

uint64_t sub_10006323C()
{
  sub_100010CB8();
  v4 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5 = sub_1000191C8(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    v10 = sub_1000191C8(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = *(v2 + 20);
    }

    else
    {
      v7 = type metadata accessor for RemoteInterfaceInformation();
      v12 = *(v2 + 24);
    }

    v8 = v1 + v12;
  }

  return sub_100009BFC(v8, v0, v0, v7);
}

uint64_t sub_100063328()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063368()
{
  v1 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002BDC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 4);

  v10 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10006343C()
{
  v1 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002C00(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000634C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = sub_1000191C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_10000C6C0(v10, a2, v9);
  }

  v11 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  v12 = sub_1000191C8(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1000635CC()
{
  sub_100010CB8();
  v4 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5 = sub_1000191C8(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
    result = sub_1000191C8(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return sub_100009BFC(v8, v0, v0, v7);
}

uint64_t sub_10006371C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063760()
{
  sub_100003324((v0 + 16));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000637A0()
{
  v1 = *(v0 + 24);

  sub_100003324((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000637E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
    v10 = a1 + *(a3 + 24);

    return sub_10000C6C0(v10, a2, v9);
  }
}

uint64_t sub_100063880(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
    v8 = v5 + *(a4 + 24);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006390C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063944()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063984()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000639D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_1000119E4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100063A10()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063A48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100063A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000C6C0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100063B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100005B00();
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100063BF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100063CAC()
{
  v1 = sub_100065020(&qword_1001BD318, &qword_100173B30);
  sub_100002BDC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100063D70()
{
  v1 = sub_100065020(&qword_1001BD318, &qword_100173B30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100063E04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063E64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100063EAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063EEC()
{
  v1 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100063FE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006404C()
{
  v1 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F44(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v6 = *(v5 + 64);
  sub_10005D588(v0 + 2);
  v7 = v0[7];

  v8 = v0[8];

  v9 = v0[9];

  v10 = type metadata accessor for UUIDIdentifier();
  if (!sub_10000C6C0(v0 + v4, 1, v10))
  {
    sub_100006098(v10);
    (*(v11 + 8))(v0 + v4, v10);
  }

  v12 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12);

  v15 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16, v3 | 7);
}

uint64_t sub_100064180()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100064228()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InferenceProviderRequestConfiguration();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_10000C6C0(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_100065020(&qword_1001BDBB0, &unk_100174048);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_100064378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InferenceProviderRequestConfiguration();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_100065020(&qword_1001BDBB0, &unk_100174048);
    v10 = a1 + *(a4 + 28);
  }

  return sub_100009BFC(v10, a2, a2, v9);
}

uint64_t sub_100064450()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064514()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000645B0()
{
  v2 = type metadata accessor for ModelXPCRequest.PrewarmSession();
  sub_100002BDC(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v7 = *(v6 + 64);
  sub_10016BC34();
  v8 = *(v0 + 32);

  (*(v4 + 8))(v0 + ((v5 + 40) & ~v5), v2);
  v9 = *(v0 + v1);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000055B0();
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  sub_100004B1C();
  __chkstk_darwin(v6);
  v99 = &v88 - v7;
  type metadata accessor for _OSActivity();
  swift_allocObject();
  qword_1001B8880 = sub_10001B160("Daemon initialization", 21, 2);
  v8 = type metadata accessor for Logger();
  sub_100065A60(v8, qword_1001B8888);
  v9 = sub_10000641C(v8, qword_1001B8888);
  sub_100004F60();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_100002B8C();
  v17 = v16 - v15;
  generalLogHandle.getter();
  (*(v11 + 32))(v9, v17, v8);
  strcpy(&qword_1001B88A0, "modelmanagerd");
  *&algn_1001B88A8[6] = -4864;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Initializing Daemon...", v20, 2u);
  }

  v122[3] = &type metadata for ModelManager;
  v122[4] = sub_1000207F8();
  LOBYTE(v122[0]) = 3;
  v21 = isFeatureEnabled(_:)();
  sub_100003324(v122);
  if (v21)
  {
    v22 = SIG_DFL.getter();
    signal(15, v22);
  }

  v23 = type metadata accessor for RemoteXPCProvider();
  v24 = sub_1000077EC();
  qword_1001BE6B0 = v23;
  unk_1001BE6B8 = &off_1001B0308;
  qword_1001BE698 = v24;
  v25 = type metadata accessor for ModelCatalogProvider(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_10010E640();
  v90 = v28;
  v29 = type metadata accessor for FilesystemProvider();
  v89 = sub_1000077EC();
  type metadata accessor for SysctlProvider();
  v98 = sub_1000077EC();
  v30 = type metadata accessor for RunningBoardProvider();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v88 = sub_1000FB95C();
  type metadata accessor for TrialFrameworkProvider();
  swift_allocObject();
  v97 = sub_1000BC294();
  sub_10006A65C(&qword_1001BE698, v122, &qword_1001B8AF8, &qword_10016F6E8);
  v33 = type metadata accessor for RegulatoryDomainProvider();
  v34 = sub_1000077EC();
  type metadata accessor for ReportingProvider();
  swift_allocObject();
  v96 = sub_10006FAD8();
  type metadata accessor for OSEligibilityChecker();
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100065AC4();
  v36 = Dictionary.init(dictionaryLiteral:)();
  v95 = v35;
  *(v35 + 112) = v36;
  v37 = type metadata accessor for PowerProvider();
  v38 = sub_1000077EC();
  type metadata accessor for ExtensionKitProvider();
  swift_allocObject();
  v93 = sub_1000BF308();
  type metadata accessor for NeuralEngine();
  v94 = sub_1000077EC();
  if (sub_10001297C(_swiftEmptyArrayStorage))
  {
    sub_10004AC98(_swiftEmptyArrayStorage);
    v92 = v39;
  }

  else
  {
    v92 = &_swiftEmptySetSingleton;
  }

  type metadata accessor for TelemetryManager();
  v40 = swift_allocObject();
  v91 = sub_10011A2E4(v40);
  v121[3] = v25;
  v121[4] = &off_1001B2060;
  v121[0] = v90;
  v119 = v29;
  v120 = &off_1001B16D0;
  v118[0] = v89;
  v116 = v30;
  v117 = &off_1001B17E8;
  v115[0] = v88;
  v113 = &type metadata for OSVariantProvider;
  v114 = &off_1001B15B8;
  v110 = &type metadata for MemoryPressureEventProvider;
  v111 = &off_1001B2618;
  v107 = v33;
  v108 = &off_1001B0758;
  v106[0] = v34;
  v104 = &type metadata for CurrentTimeProvider;
  v105 = &off_1001B1028;
  v101 = v37;
  v102 = &off_1001B0330;
  v100[0] = v38;
  type metadata accessor for DaemonContext();
  v41 = swift_allocObject();
  sub_100016494(v121, v25);
  v90 = &v88;
  sub_100004F60();
  v43 = *(v42 + 64);
  __chkstk_darwin(v44);
  sub_100002B8C();
  v47 = (v46 - v45);
  (*(v48 + 16))(v46 - v45);
  sub_100016494(v118, v119);
  v89 = &v88;
  sub_100004F60();
  v50 = *(v49 + 64);
  __chkstk_darwin(v51);
  sub_100002B8C();
  v54 = (v53 - v52);
  (*(v55 + 16))(v53 - v52);
  sub_100016494(v115, v116);
  v88 = &v88;
  sub_100004F60();
  v57 = *(v56 + 64);
  __chkstk_darwin(v58);
  sub_100002B8C();
  v61 = (v60 - v59);
  (*(v62 + 16))(v60 - v59);
  sub_100016494(v112, v113);
  sub_100016494(v109, v110);
  sub_100016494(v106, v107);
  sub_100004F60();
  v64 = *(v63 + 64);
  __chkstk_darwin(v65);
  sub_100002B8C();
  v68 = (v67 - v66);
  (*(v69 + 16))(v67 - v66);
  sub_100016494(v103, v104);
  sub_100016494(v100, v101);
  sub_100004F60();
  v71 = *(v70 + 64);
  __chkstk_darwin(v72);
  sub_100002B8C();
  v75 = (v74 - v73);
  (*(v76 + 16))(v74 - v73);
  v77 = sub_100067E00(*v47, v94, *v54, v98, *v61, v97, v122, 0, 0, 0, 0, 0, v92, v91, *v68, v96, v95, *v75, v93, v41);
  sub_100003324(v100);
  sub_100003324(v103);
  sub_100003324(v106);
  sub_100003324(v109);
  sub_100003324(v112);
  sub_100003324(v115);
  sub_100003324(v118);
  sub_100003324(v121);
  qword_1001B88B0 = v77;
  v78 = type metadata accessor for Daemon();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  swift_allocObject();

  qword_1001B88B8 = sub_10008DE94(v81);
  v82 = qword_1001B8880;
  swift_beginAccess();
  os_activity_scope_leave((v82 + 24));
  swift_endAccess();
  v83 = type metadata accessor for TaskPriority();
  sub_100009BFC(v99, 1, 1, v83);
  type metadata accessor for MainActor();
  v84 = static MainActor.shared.getter();
  sub_100002EE0();
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = &protocol witness table for MainActor;
  sub_1000652FC();

  v86 = [objc_opt_self() mainRunLoop];
  [v86 run];

  sub_100002EEC();
  return result;
}

uint64_t sub_100065020(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100065068()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000650FC, v2, v1);
}

uint64_t sub_1000650FC()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10006518C;

  return sub_10008EA54();
}

uint64_t sub_10006518C()
{
  sub_100002BAC();
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v1 + 32);
  v6 = *(v1 + 24);

  return _swift_task_switch(sub_1000652A0, v6, v5);
}

uint64_t sub_1000652A0()
{
  sub_100002BAC();
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000652FC()
{
  sub_1000055B0();
  sub_10000A4DC();
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_10000831C(v9, v18);
  v10 = type metadata accessor for TaskPriority();
  sub_100005790(v10);
  if (&qword_10016F6E0 == 1)
  {
    sub_10000C790(v1, &qword_1001BB050, &qword_10016F6E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006454();
    (*(v11 + 8))(v1, &qword_1001BB050);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1000033B4();
    if (v2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100002EE0();
      v14 = swift_allocObject();
      sub_100003940(v14);
      if (v4)
      {
        sub_10001857C();
      }

      else
      {
        v15 = 0;
      }

      sub_1000129AC(v15);
      swift_task_create();

      sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);

      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);
  sub_100002EE0();
  v16 = swift_allocObject();
  sub_10000883C(v16);
  if (v17)
  {
    sub_10000F094();
  }

  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

void sub_100065530()
{
  sub_1000055B0();
  sub_10000A4DC();
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_10000831C(v9, v18);
  v10 = type metadata accessor for TaskPriority();
  sub_100005790(v10);
  if (&qword_10016F6E0 == 1)
  {
    sub_10000C790(v1, &qword_1001BB050, &qword_10016F6E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006454();
    (*(v11 + 8))(v1, &qword_1001BB050);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1000033B4();
    if (v2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100002EE0();
      v14 = swift_allocObject();
      sub_100003940(v14);
      if (v4)
      {
        sub_10001857C();
      }

      else
      {
        v15 = 0;
      }

      sub_1000129AC(v15);
      sub_10001944C();

      sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);

      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);
  sub_100002EE0();
  v16 = swift_allocObject();
  sub_10000883C(v16);
  if (v17)
  {
    sub_10000F094();
  }

  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

void sub_10006574C()
{
  sub_1000055B0();
  sub_10000A4DC();
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_10000831C(v9, v18);
  v10 = type metadata accessor for TaskPriority();
  sub_100005790(v10);
  if (&qword_10016F6E0 == 1)
  {
    sub_10000C790(v1, &qword_1001BB050, &qword_10016F6E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006454();
    (*(v11 + 8))(v1, &qword_1001BB050);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1000033B4();
    if (v2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100002EE0();
      v14 = swift_allocObject();
      sub_100003940(v14);
      if (v4)
      {
        sub_10001857C();
      }

      else
      {
        v15 = 0;
      }

      sub_1000129AC(v15);
      sub_10001944C();

      sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);

      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);
  sub_100002EE0();
  v16 = swift_allocObject();
  sub_10000883C(v16);
  if (v17)
  {
    sub_10000F094();
  }

  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

uint64_t variable initialization expression of InferenceProviderManager.ConnectionCollection.groupsByIdentifier()
{
  type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of InferenceProviderManager._workQueue()
{
  type metadata accessor for InferenceProviderManager(0);
  sub_10006AB4C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager);

  return WorkQueue.init()();
}

uint64_t *sub_100065A60(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_100065AC4()
{
  result = qword_1001B8B00;
  if (!qword_1001B8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8B00);
  }

  return result;
}

uint64_t sub_100065B18(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for InferenceProviderAsset(0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_100065B74(unint64_t a1)
{
  if (sub_10000E8DC(a1))
  {
    sub_100065020(&qword_1001B8BF0, qword_10016F7B8);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v18 = sub_10001297C(a1);
  if (v18)
  {
    v3 = 0;
    v4 = (v2 + 7);
    while (1)
    {
      sub_100022A7C(v3);
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = result;
      }

      else
      {
        v6 = *(a1 + 32 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = v2[5];
      Hasher.init(_seed:)();
      sub_100012C1C();
      result = Hasher._finalize()();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *&v4[8 * v11];
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        type metadata accessor for DaemonSession(0);
        v14 = *(v2[6] + 8 * v10);

        v15 = sub_1000372F8();

        if (v15)
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *&v4[8 * v11] = v13 | v12;
      *(v2[6] + 8 * v10) = v6;
      v16 = v2[2];
      v7 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v17;
LABEL_17:
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_100065D3C()
{
  sub_1000055B0();
  v3 = v2;
  v4 = type metadata accessor for Assertion.DaemonRep();
  sub_100004F60();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_100007D4C();
  v9 = __chkstk_darwin(v8);
  sub_100013E40(v9, v10, v11, v12, v13, v14, v15, v16, v40);
  if (*(v3 + 16) && (sub_100065020(&qword_1001B8B98, &qword_10016F750), sub_1000055A4(), v17 = static _SetStorage.allocate(capacity:)(), *(v3 + 16)))
  {
    sub_100001EDC();
    v41 = v3;
    v20 = (v19 + 8);
    while (v18 < *(v3 + 16))
    {
      sub_10000EDD8(v18);
      v22 = *(v21 + 16);
      v22();
      v23 = *(v17 + 40);
      sub_10000558C();
      sub_10006AB4C(&qword_1001B8BA0, v24);
      sub_100012640();
      v25 = *(v17 + 32);
      sub_100011E24();
      while (1)
      {
        sub_1000126F4(v26);
        if (v30)
        {
          break;
        }

        v31 = v17;
        (v22)(v0, *(v17 + 48) + v43 * v1, v4);
        sub_10000558C();
        sub_10006AB4C(&qword_1001B8BA8, v32);
        v33 = sub_100013798();
        v34 = *v20;
        (*v20)(v0, v4);
        if (v33)
        {
          v34(v43, v4);
          v17 = v31;
          goto LABEL_12;
        }

        v26 = v43 + 1;
        v17 = v31;
      }

      *(v42 + 8 * v27) = v29 | v28;
      v35 = sub_100007C00(*(v17 + 48));
      v36(v35);
      v37 = *(v17 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_16;
      }

      *(v17 + 16) = v39;
LABEL_12:
      sub_10000A3E0();
      v3 = v41;
      if (v30)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_100002EEC();
  }
}

void sub_100065FA8()
{
  sub_1000055B0();
  v3 = v2;
  v4 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100004F60();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_100007D4C();
  v9 = __chkstk_darwin(v8);
  sub_100013E40(v9, v10, v11, v12, v13, v14, v15, v16, v37);
  if (*(v3 + 16) && (sub_100065020(&qword_1001B8B80, &qword_10016F748), sub_1000055A4(), v39 = static _SetStorage.allocate(capacity:)(), *(v3 + 16)))
  {
    sub_100001EDC();
    v38 = v3;
    v19 = (v18 + 8);
    while (v17 < *(v3 + 16))
    {
      sub_10000EDD8(v17);
      v21 = *(v20 + 16);
      v21();
      v22 = v39;
      v23 = *(v39 + 40);
      sub_10001B27C(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740);
      sub_100012640();
      v24 = *(v39 + 32);
      sub_100011E24();
      while (1)
      {
        sub_1000126F4(v25);
        if (v29)
        {
          break;
        }

        (v21)(v0, *(v22 + 48) + v41 * v1, v4);
        sub_10001B27C(&qword_1001B8B90, &qword_1001B8B78, &qword_10016F740);
        v30 = sub_100013798();
        v31 = *v19;
        (*v19)(v0, v4);
        if (v30)
        {
          v31(v41, v4);
          goto LABEL_12;
        }

        v25 = v41 + 1;
        v22 = v39;
      }

      *(v40 + 8 * v26) = v28 | v27;
      v32 = sub_100007C00(*(v22 + 48));
      v33(v32);
      v34 = *(v22 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_16;
      }

      *(v22 + 16) = v36;
LABEL_12:
      sub_10000A3E0();
      v3 = v38;
      if (v29)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_100002EEC();
  }
}

void sub_10006622C(unint64_t a1)
{
  if (sub_10000E8DC(a1))
  {
    sub_100065020(&qword_1001B8BB0, &qword_10016F758);
    sub_1000055A4();
    v2 = v5;
    v6 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  v17 = sub_10001297C(a1);
  if (v17)
  {
    sub_1000199B4();
    while (1)
    {
      v7 = sub_100009D48();
      sub_100022A7C(v7);
      if (v2)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v16 + 8 * v3);
      }

      v9 = __OFADD__(v3++, 1);
      if (v9)
      {
        break;
      }

      v10 = v6[5];
      Hasher.init(_seed:)();
      sub_10005C330();
      v2 = &v18;
      Hasher._finalize()();
      v11 = *(v6 + 32);
      sub_100011E24();
      while (1)
      {
        sub_10001898C(v12);
        if (v14)
        {
          break;
        }

        type metadata accessor for DaemonRequest(0);
        sub_100061A8C();
        v2 = sub_10005C434();

        if (v2)
        {

          goto LABEL_17;
        }

        v12 = v1 + 1;
      }

      sub_10000A84C(v13);
      if (v9)
      {
        goto LABEL_20;
      }

      v6[2] = v15;
LABEL_17:
      if (v3 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_100066394(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v24 = a2;
  v7 = *a3;
  v38[3] = &type metadata for CurrentTimeProvider;
  v38[4] = &off_1001B1028;
  v8 = type metadata accessor for RunningBoardProvider();
  v37[3] = v8;
  v37[4] = &off_1001B17E8;
  v37[0] = a1;
  v35 = v7;
  v36 = &off_1001B0330;
  v34[0] = a3;
  type metadata accessor for RateLimiter();
  v9 = swift_allocObject();
  sub_100016494(v38, &type metadata for CurrentTimeProvider);
  v10 = sub_100016494(v37, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v35;
  v16 = sub_100016494(v34, v35);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v13;
  v22 = *v19;
  v32 = &type metadata for CurrentTimeProvider;
  v33 = &off_1001B1028;
  v30 = &off_1001B17E8;
  v29 = v8;
  *&v28 = v21;
  v27 = &off_1001B0330;
  v26 = v7;
  *&v25 = v22;
  swift_defaultActor_initialize();
  sub_100065020(&qword_1001B8C08, &qword_10016F808);
  *(v9 + 248) = Dictionary.init(dictionaryLiteral:)();
  *(v9 + 256) = 0;
  sub_100004A04(&v31, v9 + 112);
  sub_100004A04(&v28, v9 + 152);
  *(v9 + 232) = v24;
  *(v9 + 240) = a4;
  sub_100004A04(&v25, v9 + 192);
  sub_100003324(v34);
  sub_100003324(v37);
  sub_100003324(v38);
  return v9;
}

uint64_t sub_100066678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = type metadata accessor for ModelCatalogProvider(0);
  v12 = &off_1001B2060;
  *&v10 = a1;
  v8 = type metadata accessor for RegulatoryDomainProvider();
  v9 = &off_1001B0758;
  *&v7 = a2;
  swift_defaultActor_initialize();
  *(a3 + 192) = &_swiftEmptySetSingleton;
  sub_100004A04(&v10, a3 + 112);
  sub_100004A04(&v7, a3 + 152);
  return a3;
}

uint64_t sub_100066710(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = type metadata accessor for PolicyManager();
  v12 = &off_1001B05F8;
  *&v10 = a2;
  swift_defaultActor_initialize();
  type metadata accessor for TrialManager();
  sub_10006AB4C(&qword_1001B8BE8, type metadata accessor for TrialManager);
  WorkQueue.init()();
  v8 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  type metadata accessor for Policy();
  *(a4 + v8) = Dictionary.init(dictionaryLiteral:)();
  sub_100004A04(a1, a4 + 112);
  sub_100004A04(&v10, a4 + 152);
  *(a4 + OBJC_IVAR____TtC13modelmanagerd12TrialManager_trials) = a3;
  return a4;
}

uint64_t sub_100066834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for ModelCatalogProvider(0);
  v18 = &off_1001B2060;
  *&v16 = a2;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_logHandle;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  generalLogHandle.getter();
  (*(v10 + 32))(a4 + v8, v13, v9);
  *(a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask) = 0;
  *(a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_assetManager) = a1;
  sub_100004A04(&v16, a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_modelCatalog);
  *(a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_requestManager) = a3;
  return a4;
}

uint64_t sub_100066994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelCatalogProvider(0);
  v19[3] = v6;
  v19[4] = &off_1001B2060;
  v19[0] = a2;
  v7 = _s20AssetVersionSwitcherCMa();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_100016494(v19, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_100066834(a1, *v14, a3, v10);
  sub_100003324(v19);
  return v16;
}

uint64_t sub_100066AC0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v15 - v8;
  v16[3] = type metadata accessor for PolicyManager();
  v16[4] = &off_1001B05F8;
  v16[0] = a1;
  v15[3] = &type metadata for MemoryPressureEventProvider;
  v15[4] = &off_1001B2618;
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  v11 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100009BFC(a2 + v10, 1, 1, v11);
  *(a2 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = 0;
  sub_1000480AC(v16, a2 + 112);
  sub_1000480AC(v15, a2 + 152);
  *(a2 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogInterval) = a3;
  static TaskPriority.high.getter();
  v12 = type metadata accessor for TaskPriority();
  sub_100009BFC(v9, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;

  sub_1000652FC();

  sub_100003324(v15);
  sub_100003324(v16);
  return a2;
}

uint64_t sub_100066C88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v85 = a3;
  v86 = a5;
  v83 = *a7;
  v84 = a2;
  v11 = type metadata accessor for InferenceProviderAssetManager();
  v111[3] = v11;
  v111[4] = &off_1001B1200;
  v111[0] = a1;
  v12 = type metadata accessor for ModelCatalogProvider(0);
  v109 = v12;
  v110 = &off_1001B2060;
  v108[0] = a4;
  v13 = type metadata accessor for RunningBoardProvider();
  v106 = v13;
  v107 = &off_1001B17E8;
  v105[0] = a6;
  v103 = &type metadata for CurrentTimeProvider;
  v104 = &off_1001B1028;
  v100 = v83;
  v101 = &off_1001B0330;
  v99[0] = a7;
  v14 = type metadata accessor for RequestManager();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = sub_100016494(v111, v11);
  v19 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v109;
  v24 = sub_100016494(v108, v109);
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v106;
  v30 = sub_100016494(v105, v106);
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = (&v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  sub_100016494(v102, v103);
  v35 = v100;
  v36 = sub_100016494(v99, v100);
  v37 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (&v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = *v21;
  v42 = *v27;
  v43 = *v33;
  v44 = *v39;
  v98[3] = v11;
  v98[4] = &off_1001B1200;
  v98[0] = v41;
  v96 = v12;
  v97 = &off_1001B2060;
  v95[0] = v42;
  v94[3] = v13;
  v94[4] = &off_1001B17E8;
  v94[0] = v43;
  v93[3] = &type metadata for CurrentTimeProvider;
  v93[4] = &off_1001B1028;
  v92[3] = v83;
  v92[4] = &off_1001B0330;
  v92[0] = v44;
  swift_defaultActor_initialize();
  v45 = v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  v46 = enum case for RequestPriority.none(_:);
  v47 = type metadata accessor for RequestPriority();
  (*(*(v47 - 8) + 104))(v45, v46, v47);
  v48 = _s6PolicyVMa();
  *(v45 + v48[7]) = &_swiftEmptySetSingleton;
  *(v45 + v48[5]) = 0x40F5180000000000;
  *(v45 + v48[6]) = 204;
  v49 = (v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  v50 = sub_100140DAC(_swiftEmptyArrayStorage);
  *v49 = 0;
  v49[1] = v50;
  v51 = (v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  v52 = sub_100140DAC(_swiftEmptyArrayStorage);
  *v51 = 0;
  v51[1] = v52;
  v53 = (v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  v54 = sub_100140DAC(_swiftEmptyArrayStorage);
  *v53 = 0;
  v53[1] = v54;
  v55 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager;
  v56 = type metadata accessor for InferenceMonitorManager();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_1001253F0();
  *(v17 + v55) = v59;
  v60 = (v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100148604();
  *v60 = v61;
  v60[1] = v62;
  v60[2] = v63;
  *(v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire) = 0;
  *(v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_extantRequests) = &_swiftEmptySetSingleton;
  sub_1000480AC(v98, v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager);
  v64 = v85;
  *(v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_neuralEngine) = v84;
  sub_1000480AC(v64, v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_telemetryManager);
  *(v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_foregroundOvercommitBudget) = *(*sub_100003370(v95, v96) + 120);
  v65 = v86;
  sub_1000480AC(v86, v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider);
  sub_1000480AC(v94, v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_runningBoard);
  sub_1000480AC(v93, v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentTime);
  sub_1000480AC(v93, v91);
  sub_1000480AC(v94, v89);
  swift_beginAccess();
  v66 = *(v45 + v48[6]);
  v67 = *(v45 + v48[5]);
  sub_1000480AC(v92, v87);
  sub_100016494(v91, v91[3]);
  v68 = v90;
  v69 = sub_100016494(v89, v90);
  v70 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v69);
  v72 = (&v82 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72);
  v74 = v88;
  v75 = sub_100016494(v87, v88);
  v76 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v75);
  v78 = (&v82 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v79 + 16))(v78);
  v80 = sub_100066394(*v72, v66, *v78, v67);
  sub_100003324(v65);
  sub_100003324(v64);
  sub_100003324(v92);
  sub_100003324(v93);
  sub_100003324(v94);
  sub_100003324(v98);
  sub_100003324(v87);
  sub_100003324(v89);
  sub_100003324(v91);
  *(v17 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_rateLimiter) = v80;
  sub_100003324(v95);
  sub_100003324(v99);
  sub_100003324(v102);
  sub_100003324(v105);
  sub_100003324(v108);
  sub_100003324(v111);
  return v17;
}

void *sub_1000674B4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for ModelCatalogProvider(0);
  v35[3] = v8;
  v35[4] = &off_1001B2060;
  v35[0] = a1;
  v9 = type metadata accessor for InferenceProviderManager(0);
  v33 = v9;
  v34 = &off_1001B0F48;
  v32[0] = a2;
  type metadata accessor for RemoteManager();
  v10 = swift_allocObject();
  v11 = sub_100016494(v35, v8);
  v12 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v33;
  v17 = sub_100016494(v32, v33);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v30 = v8;
  v31 = &off_1001B2060;
  v28 = &off_1001B0F48;
  *&v29 = v22;
  v27 = v9;
  *&v26 = v23;
  swift_defaultActor_initialize();
  v10[30] = _swiftEmptyArrayStorage;
  type metadata accessor for UUID();
  sub_100065020(&qword_1001B8BF8, &qword_10016F800);
  sub_10006AB90();
  v10[31] = Dictionary.init(dictionaryLiteral:)();
  v10[32] = &_swiftEmptySetSingleton;
  sub_100004A04(&v29, (v10 + 14));
  sub_100004A04(&v26, (v10 + 19));
  v10[24] = a3;
  sub_100004A04(a4, (v10 + 25));
  sub_100003324(v32);
  sub_100003324(v35);
  return v10;
}

uint64_t sub_100067734(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for ModelCatalogProvider(0);
  v23[3] = v5;
  v23[4] = &off_1001B2060;
  v23[0] = a1;
  v21 = v4;
  v22 = &off_1001B0758;
  v20[0] = a2;
  type metadata accessor for UseCaseManager();
  v6 = swift_allocObject();
  v7 = sub_100016494(v23, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = v21;
  v13 = sub_100016494(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_100066678(*v10, *v16, v6);
  sub_100003324(v20);
  sub_100003324(v23);
  return v18;
}

uint64_t sub_100067928(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PolicyManager();
  v19[3] = v6;
  v19[4] = &off_1001B05F8;
  v19[0] = a2;
  v7 = type metadata accessor for TrialManager();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_100016494(v19, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_100066710(a1, *v14, a3, v10);
  sub_100003324(v19);
  return v16;
}

uint64_t sub_100067A54(uint64_t a1, double a2)
{
  v4 = type metadata accessor for PolicyManager();
  v19[3] = v4;
  v19[4] = &off_1001B05F8;
  v19[0] = a1;
  v17 = &type metadata for MemoryPressureEventProvider;
  v18 = &off_1001B2618;
  v5 = type metadata accessor for MemoryPressureObserver();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = sub_100016494(v19, v4);
  v10 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  sub_100016494(v16, v17);
  v14 = sub_100066AC0(*v12, v8, a2);
  sub_100003324(v16);
  sub_100003324(v19);
  return v14;
}

uint64_t sub_100067BA0(uint64_t *a1)
{
  v10[3] = *a1;
  v10[4] = &off_1001B1188;
  v10[0] = a1;

  static BuiltInInferenceProvider.allCases.getter();
  sub_1000480AC(v10, &v8);
  sub_1000B6950();
  v2 = type metadata accessor for InferenceProviderManager(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = sub_100067C5C(v9, 1, a1, v5);
  sub_100003324(v10);
  return v6;
}

uint64_t sub_100067C5C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v13[3] = type metadata accessor for ExtensionKitProvider();
  v13[4] = &off_1001B1188;
  v13[0] = a3;
  swift_defaultActor_initialize();
  *(a4 + 160) = xmmword_10016F6C0;
  *(a4 + 176) = _swiftEmptyArrayStorage;
  type metadata accessor for InferenceProviderManager(0);
  sub_10006AB4C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager);
  WorkQueue.init()();
  v8 = (a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler);
  *v8 = 0;
  v8[1] = 0;
  *(a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_discoveredIdentities) = &_swiftEmptySetSingleton;
  sub_10006ABDC(a1, a4 + 112);
  *(a4 + 168) = (a2 & 1) == 0;
  sub_1000480AC(v13, a4 + 184);
  v9 = *(a4 + 208);
  v10 = *(a4 + 216);
  sub_100003370((a4 + 184), v9);
  v11 = *(v10 + 8);

  v11(&off_1001AFE08, &unk_10016F810, a4, v9, v10);

  sub_10006ACCC(a1);
  sub_100003324(v13);
  return a4;
}

void *sub_100067E00(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, void *a20)
{
  v329 = a8;
  v327 = a7;
  v322 = a1;
  v323 = a5;
  v325 = a3;
  v326 = a9;
  v328 = a18;
  v324 = a15;
  v23 = type metadata accessor for RequestPriority();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v302 = &v299 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AssetPolicy();
  v311 = *(v26 - 8);
  v312 = v26;
  v27 = v311[8];
  __chkstk_darwin(v26);
  v301 = &v299 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v319 = (&v299 - v31);
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v317 = *(v32 - 8);
  v318 = v32;
  v33 = *(v317 + 64);
  __chkstk_darwin(v32);
  v316 = &v299 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for OS_dispatch_queue.Attributes();
  v35 = *(*(v314 - 1) + 64);
  __chkstk_darwin(v314);
  v315 = &v299 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v313 = &v299 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s6PolicyVMa_0();
  v41 = *(*(v40 - 1) + 64);
  __chkstk_darwin(v40);
  v320 = &v299 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386[3] = type metadata accessor for TelemetryManager();
  v386[4] = &off_1001B2540;
  v386[0] = a14;
  v385[3] = type metadata accessor for SysctlProvider();
  v385[4] = &off_1001B1AC0;
  v385[0] = a4;
  v384[3] = type metadata accessor for TrialFrameworkProvider();
  v384[4] = &off_1001B10C0;
  v384[0] = a6;
  v383[3] = type metadata accessor for ReportingProvider();
  v383[4] = &off_1001B0528;
  v383[0] = a16;
  v43 = type metadata accessor for OSEligibilityChecker();
  v382[4] = &protocol witness table for OSEligibilityChecker;
  v382[3] = v43;
  v382[0] = a17;
  v44 = type metadata accessor for ExtensionKitProvider();
  v381[4] = &off_1001B1188;
  v381[3] = v44;
  v381[0] = a19;
  v45 = v329;
  v330 = type metadata accessor for ModelCatalogProvider(0);
  v380[4] = &off_1001B2060;
  v380[3] = v330;
  v380[0] = v322;
  v46 = type metadata accessor for FilesystemProvider();
  v379[4] = &off_1001B16D0;
  v300 = v46;
  v379[3] = v46;
  v379[0] = v325;
  v47 = type metadata accessor for RunningBoardProvider();
  v378[4] = &off_1001B17E8;
  v325 = v47;
  v378[3] = v47;
  v378[0] = v323;
  v377[3] = &type metadata for OSVariantProvider;
  v377[4] = &off_1001B15B8;
  v376[3] = &type metadata for MemoryPressureEventProvider;
  v376[4] = &off_1001B2618;
  v48 = type metadata accessor for RegulatoryDomainProvider();
  v375[4] = &off_1001B0758;
  v375[3] = v48;
  v375[0] = v324;
  v374[3] = &type metadata for CurrentTimeProvider;
  v374[4] = &off_1001B1028;
  v49 = type metadata accessor for PowerProvider();
  v373[4] = &off_1001B0330;
  v373[3] = v49;
  v373[0] = v328;
  sub_1000480AC(v380, (a20 + 9));
  a20[27] = a2;
  sub_1000480AC(v379, (a20 + 28));
  sub_1000480AC(v385, (a20 + 33));
  sub_1000480AC(v378, (a20 + 38));
  sub_1000480AC(v384, (a20 + 43));
  sub_1000480AC(v377, (a20 + 48));
  if (v45)
  {

    v50 = v45;
  }

  else
  {
    sub_1000480AC(v381, &v337);
    v51 = *(&v338 + 1);
    v52 = sub_100016494(&v337, *(&v338 + 1));
    v53 = *(*(v51 - 8) + 64);
    __chkstk_darwin(v52);
    v55 = (&v299 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v57 = *v55;

    v50 = sub_100067BA0(v57);
    sub_100003324(&v337);
  }

  v58 = a10;
  a20[2] = v50;
  sub_1000480AC(v386, (a20 + 22));
  sub_10006A65C(v327, (a20 + 14), &qword_1001B8AF8, &qword_10016F6E8);
  sub_1000480AC(v375, (a20 + 63));
  sub_1000480AC(v383, (a20 + 68));
  sub_1000480AC(v382, (a20 + 73));
  sub_1000480AC(v374, (a20 + 78));
  sub_1000480AC(v381, (a20 + 83));
  v59 = v326;
  v321 = a2;
  v322 = a10;
  if (v326)
  {

    v60 = v59;
  }

  else
  {
    sub_1000480AC(v380, &v337);
    v61 = v320;
    (v311[13])(v320, enum case for AssetPolicy.standard(_:), v312);
    v62 = v61 + v40[5];
    *v62 = 0;
    *(v62 + 8) = 1;
    *(v61 + v40[8]) = &_swiftEmptySetSingleton;
    *(v61 + v40[6]) = 0x408C200000000000;
    *(v61 + v40[7]) = 0x4024000000000000;
    sub_1000480AC((a20 + 22), &v331);
    sub_1000480AC((a20 + 33), &v371);
    v63 = *(&v338 + 1);
    v64 = sub_100016494(&v337, *(&v338 + 1));
    v328 = &v299;
    v65 = *(*(v63 - 8) + 64);
    __chkstk_darwin(v64);
    v67 = (&v299 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v68 + 16))(v67);
    v69 = *v67;
    v370 = &off_1001B2060;
    v70 = v330;
    v369 = v330;
    v368[0] = v69;
    v71 = type metadata accessor for InferenceProviderManager(0);
    v367 = &off_1001B0F48;
    v366 = v71;
    v365[0] = v50;
    v72 = type metadata accessor for InferenceProviderAssetManager();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    v60 = swift_allocObject();
    v75 = sub_100016494(v368, v70);
    v324 = &v299;
    v76 = *(*(v70 - 8) + 64);
    __chkstk_darwin(v75);
    v78 = (&v299 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v79 + 16))(v78);
    v80 = v366;
    v81 = sub_100016494(v365, v366);
    v323 = &v299;
    v82 = *(v80[-1].Description + 8);
    __chkstk_darwin(v81);
    v312 = a13;
    v84 = (&v299 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    v58 = v322;
    (*(v85 + 16))(v84);
    v86 = *v78;
    v87 = v321;
    v88 = *v84;
    v364 = &off_1001B2060;
    v363 = v70;
    *&v362 = v86;
    v361 = &off_1001B0F48;
    v360 = v71;
    *&v359 = v88;

    swift_retain_n();

    swift_defaultActor_initialize();
    sub_10006AB4C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager);
    WorkQueue.init()();

    *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v60) = 0;
    *(v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask) = 0;
    *(v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask) = 0;
    sub_100004A04(&v362, v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog);
    sub_100004A04(&v359, v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager);
    sub_100004A04(&v331, v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_telemetryManager);
    *(v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_neuralEngine) = v87;
    sub_10006A8C8(v320, v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy);
    *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v60) = v312;
    sub_100004A04(&v371, v60 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_sysctl);
    sub_100003324(v365);
    sub_100003324(v368);
    sub_100003324(&v337);
  }

  v89 = a11;
  a20[3] = v60;
  v320 = a11;
  if (v58)
  {
    v90 = v58;
  }

  else
  {
    v91 = a20[27];
    sub_1000480AC((a20 + 22), &v337);
    sub_1000480AC((a20 + 9), &v331);
    sub_1000480AC((a20 + 68), &v371);
    sub_1000480AC((a20 + 38), v368);
    sub_1000480AC((a20 + 78), v365);
    sub_1000480AC(v373, &v362);
    v92 = v332;
    v93 = sub_100016494(&v331, v332);
    v328 = &v299;
    v94 = *(*(v92 - 8) + 64);
    __chkstk_darwin(v93);
    v96 = (&v299 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v97 + 16))(v96);
    v98 = v369;
    v99 = sub_100016494(v368, v369);
    v100 = *(*(v98 - 8) + 64);
    __chkstk_darwin(v99);
    v102 = (&v299 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v103 + 16))(v102);
    sub_100016494(v365, v366);
    v104 = v363;
    v105 = sub_100016494(&v362, v363);
    v106 = *(*(v104 - 8) + 64);
    __chkstk_darwin(v105);
    v108 = (&v299 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v109 + 16))(v108);
    v110 = *v96;
    v111 = *v102;
    v112 = *v108;

    v90 = sub_100066C88(v60, v91, &v337, v110, &v371, v111, v112);
    sub_100003324(&v362);
    v89 = v320;
    sub_100003324(v365);
    sub_100003324(v368);
    sub_100003324(&v331);
  }

  a20[4] = v90;
  if (v89)
  {

    v113 = v89;
  }

  else
  {
    sub_1000480AC((a20 + 9), &v337);
    v114 = a20[2];
    sub_1000480AC((a20 + 33), &v331);
    v115 = *(&v338 + 1);
    v116 = sub_100016494(&v337, *(&v338 + 1));
    v117 = *(*(v115 - 8) + 64);
    __chkstk_darwin(v116);
    v119 = (&v299 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v120 + 16))(v119);
    v121 = *v119;

    v113 = sub_1000674B4(v121, v114, v90, &v331);
    sub_100003324(&v337);
  }

  v328 = a12;
  a20[5] = v113;
  sub_1000480AC((a20 + 9), &v337);
  sub_1000480AC((a20 + 63), &v331);
  v122 = *(&v338 + 1);
  v123 = sub_100016494(&v337, *(&v338 + 1));
  v124 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v123);
  v126 = (&v299 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v127 + 16))(v126);
  v128 = v332;
  v129 = sub_100016494(&v331, v332);
  v130 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v129);
  v132 = (&v299 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v133 + 16))(v132);
  v134 = *v126;
  v135 = *v132;

  v136 = sub_100067734(v134, v135);
  sub_100003324(&v331);
  sub_100003324(&v337);
  a20[53] = v136;
  sub_1000480AC((a20 + 38), &v337);
  v137 = a20[3];
  sub_1000480AC((a20 + 9), &v331);
  sub_1000480AC((a20 + 33), &v371);
  sub_1000480AC((a20 + 48), v368);
  v138 = a20[4];
  sub_1000480AC((a20 + 22), v365);
  v139 = a20[2];
  sub_1000480AC((a20 + 68), &v362);
  sub_1000480AC((a20 + 73), &v359);
  v140 = sub_10001297C(_swiftEmptyArrayStorage);
  v311 = v136;

  v310 = v137;

  v308 = v138;

  v307 = v139;

  if (v140)
  {
    v303 = sub_100065B74(_swiftEmptyArrayStorage);
  }

  else
  {
    v303 = &_swiftEmptySetSingleton;
  }

  v141 = *(&v338 + 1);
  v142 = sub_100016494(&v337, *(&v338 + 1));
  v309 = &v299;
  v143 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v142);
  v145 = (&v299 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v146 + 16))(v145);
  v147 = v332;
  v148 = sub_100016494(&v331, v332);
  v306 = &v299;
  v149 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v148);
  v151 = (&v299 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v152 + 16))(v151);
  sub_100016494(v368, v369);
  v153 = *v145;
  v154 = *v151;
  v358 = &off_1001B17E8;
  v155 = v325;
  v357 = v325;
  v356[0] = v153;
  v355 = &off_1001B2060;
  v156 = v330;
  v354 = v330;
  v353[0] = v154;
  v351 = &type metadata for OSVariantProvider;
  v352 = &off_1001B15B8;
  type metadata accessor for SessionManager();
  v157 = swift_allocObject();
  v158 = sub_100016494(v356, v155);
  v305 = &v299;
  v159 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v158);
  v312 = v160;
  v161 = (&v299 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
  v323 = *(v162 + 16);
  v324 = (v162 + 16);
  (v323)(v161);
  v163 = v354;
  v164 = sub_100016494(v353, v354);
  v304 = &v299;
  v165 = *(v163[-1].Description + 8);
  __chkstk_darwin(v164);
  v167 = (&v299 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v168 + 16))(v167);
  sub_100016494(v350, v351);
  v169 = *v161;
  v170 = *v167;
  v349 = &off_1001B17E8;
  v348 = v155;
  v347[0] = v169;
  v346 = &off_1001B2060;
  v345 = v156;
  v344[0] = v170;
  v342 = &type metadata for OSVariantProvider;
  v343 = &off_1001B15B8;
  swift_defaultActor_initialize();
  sub_10006A92C();
  static DispatchQoS.unspecified.getter();
  v336[0] = _swiftEmptyArrayStorage;
  sub_10006AB4C(&qword_1001B8BC8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100065020(&qword_1001B8BD0, &qword_10016F7A0);
  sub_10001B27C(&qword_1001B8BD8, &qword_1001B8BD0, &qword_10016F7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v317 + 104))(v316, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v318);
  v157[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v157[45] = sub_100109624(_swiftEmptyArrayStorage);
  v157[46] = v171;
  v157[57] = 0;
  v157[14] = v303;
  sub_1000480AC(v347, (v157 + 16));
  v157[21] = v310;
  sub_1000480AC(v344, (v157 + 22));
  sub_1000480AC(&v371, (v157 + 27));
  sub_1000480AC(v341, (v157 + 32));
  v157[37] = v308;
  sub_1000480AC(v365, (v157 + 38));
  v172 = v307;
  v157[43] = v311;
  v157[44] = v172;
  sub_1000480AC(&v362, (v157 + 47));
  sub_1000480AC(&v359, (v157 + 52));
  v173 = type metadata accessor for TaskPriority();
  sub_100009BFC(v319, 1, 1, v173);
  v174 = swift_allocObject();
  v174[2] = 0;
  v174[3] = 0;
  v174[4] = v157;

  sub_1000652FC();

  sub_100003324(&v359);
  sub_100003324(&v362);
  sub_100003324(v365);
  sub_100003324(&v371);
  sub_100003324(v341);
  sub_100003324(v344);
  sub_100003324(v347);
  sub_100003324(v350);
  sub_100003324(v353);
  sub_100003324(v356);
  sub_100003324(v368);
  sub_100003324(&v331);
  sub_100003324(&v337);
  a20[6] = v157;
  if (v328)
  {
    v175 = v328;
  }

  else
  {
    sub_1000480AC((a20 + 28), &v337);
    sub_1000480AC((a20 + 48), &v331);
    v176 = a20[3];
    v317 = a20[4];
    sub_1000480AC((a20 + 9), &v371);
    type metadata accessor for Policy();

    v177 = v176;
    v310 = v176;

    v316 = Dictionary.init(dictionaryLiteral:)();
    v315 = Dictionary.init(dictionaryLiteral:)();
    v178 = *(&v338 + 1);
    v179 = sub_100016494(&v337, *(&v338 + 1));
    v319 = &v299;
    v180 = *(*(v178 - 8) + 64);
    __chkstk_darwin(v179);
    v182 = (&v299 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v183 + 16))(v182);
    sub_100016494(&v331, v332);
    v184 = v372;
    v185 = sub_100016494(&v371, v372);
    v318 = &v299;
    v186 = *(*(v184 - 8) + 64);
    __chkstk_darwin(v185);
    v188 = (&v299 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v189 + 16))(v188);
    v190 = *v182;
    v191 = *v188;
    v370 = &off_1001B16D0;
    v192 = v300;
    v369 = v300;
    v368[0] = v190;
    v366 = &type metadata for OSVariantProvider;
    v367 = &off_1001B15B8;
    v309 = type metadata accessor for InferenceProviderAssetManager();
    v364 = &off_1001B1200;
    v363 = v309;
    *&v362 = v177;
    v361 = &off_1001B2060;
    v193 = v330;
    v360 = v330;
    *&v359 = v191;
    v194 = type metadata accessor for PolicyManager();
    v195 = *(v194 + 48);
    v196 = *(v194 + 52);
    v175 = swift_allocObject();
    v197 = sub_100016494(v368, v192);
    v314 = &v299;
    v198 = *(v192[-1].Description + 8);
    __chkstk_darwin(v197);
    v200 = (&v299 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v201 + 16))(v200);
    sub_100016494(v365, v366);
    v202 = v363;
    v203 = sub_100016494(&v362, v363);
    v313 = &v299;
    v204 = *(*(v202 - 8) + 64);
    __chkstk_darwin(v203);
    v206 = (&v299 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v207 + 16))(v206);
    v208 = v360;
    v209 = sub_100016494(&v359, v360);
    v311 = &v299;
    v210 = *(*(v208 - 8) + 64);
    __chkstk_darwin(v209);
    v212 = (&v299 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v213 + 16))(v212);
    v214 = *v200;
    v215 = *v206;
    v216 = *v212;
    v358 = &off_1001B16D0;
    v357 = v192;
    v356[0] = v214;
    v354 = &type metadata for OSVariantProvider;
    v355 = &off_1001B15B8;
    v352 = &off_1001B1200;
    v351 = v309;
    v350[0] = v215;
    v349 = &off_1001B2060;
    v348 = v193;
    v347[0] = v216;

    swift_defaultActor_initialize();
    sub_10006AB4C(&qword_1001B8BE0, type metadata accessor for PolicyManager);
    WorkQueue.init()();
    *(v175 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions) = &_swiftEmptySetSingleton;
    default argument 0 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
    default argument 2 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
    Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
    *(v175 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) = 0;
    sub_1000480AC(v356, (v175 + 14));
    sub_1000480AC(v353, (v175 + 19));
    v175[24] = v317;
    sub_1000480AC(v350, (v175 + 25));
    sub_1000480AC(v347, (v175 + 30));
    v218 = v315;
    v217 = v316;
    v175[35] = v316;
    v175[36] = v218;
    v219 = v217;
    swift_bridgeObjectRetain_n();

    v221 = sub_10007432C(v220, v219, v219);

    sub_100003324(v347);
    sub_100003324(v350);
    sub_100003324(v353);
    sub_100003324(v356);
    v175[37] = v221;
    v175[38] = _swiftEmptyArrayStorage;
    sub_100003324(&v359);
    sub_100003324(&v362);
    sub_100003324(v365);
    sub_100003324(v368);
    sub_100003324(&v371);
    sub_100003324(&v331);
    sub_100003324(&v337);
  }

  a20[7] = v175;
  sub_1000480AC((a20 + 43), &v337);
  v222 = qword_1001B8998;

  if (v222 != -1)
  {
    swift_once();
  }

  v223 = qword_1001BE8F8;

  v224 = sub_100067928(&v337, v175, v223);
  a20[8] = v224;
  v226 = a20[2];
  v225 = a20[3];
  v316 = v224;
  v317 = v226;
  v228 = a20[6];
  v307 = a20[7];
  v227 = v307;
  v308 = v228;
  v309 = v225;
  v230 = a20[4];
  v313 = a20[5];
  v229 = v313;
  v314 = v230;
  v315 = a20[53];
  v231 = v315;
  a20[55] = v225;
  a20[56] = v226;
  a20[57] = v227;
  a20[58] = v228;
  a20[59] = v229;
  a20[60] = v230;
  a20[61] = v231;
  a20[62] = v224;
  sub_1000480AC((a20 + 38), &v371);
  sub_1000480AC((a20 + 48), v368);
  sub_1000480AC((a20 + 9), v365);
  v232 = *(a20 + 57);
  v337 = *(a20 + 55);
  v338 = v232;
  v233 = *(a20 + 61);
  v339 = *(a20 + 59);
  v340 = v233;
  sub_1000480AC((a20 + 33), &v362);
  v234 = v372;
  v235 = sub_100016494(&v371, v372);
  v319 = &v299;
  v236 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v235);
  v238 = (&v299 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v239 + 16))(v238);
  sub_100016494(v368, v369);
  v240 = v366;
  v241 = sub_100016494(v365, v366);
  v318 = &v299;
  v242 = *(v240[-1].Description + 8);
  __chkstk_darwin(v241);
  v244 = (&v299 - ((v243 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v245 + 16))(v244);
  v246 = *v238;
  v247 = *v244;
  v361 = &off_1001B17E8;
  v248 = v325;
  v360 = v325;
  *&v359 = v246;
  v357 = &type metadata for OSVariantProvider;
  v358 = &off_1001B15B8;
  v355 = &off_1001B2060;
  v249 = v330;
  v354 = v330;
  v353[0] = v247;
  type metadata accessor for ModelXPCDispatcher();
  v250 = swift_allocObject();
  v251 = sub_100016494(&v359, v248);
  v311 = &v299;
  v252 = v312;
  __chkstk_darwin(v251);
  v306 = ((v252 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = (&v299 - v306);
  (v323)(&v299 - v306);
  sub_100016494(v356, v357);
  v254 = v354;
  v255 = sub_100016494(v353, v354);
  v310 = &v299;
  v256 = *(v254[-1].Description + 8);
  __chkstk_darwin(v255);
  v258 = (&v299 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v259 + 16))(v258);
  v260 = *v253;
  v261 = *v258;
  v352 = &off_1001B17E8;
  v351 = v248;
  v350[0] = v260;
  v348 = &type metadata for OSVariantProvider;
  v349 = &off_1001B15B8;
  v346 = &off_1001B2060;
  v345 = v249;
  v344[0] = v261;
  sub_1000480AC(v350, v250 + 32);
  sub_1000480AC(v347, v250 + 72);
  v263 = v308;
  v262 = v309;
  v264 = v307;
  *(v250 + 112) = v309;
  *(v250 + 120) = v264;
  *(v250 + 128) = v263;
  sub_1000480AC(v344, v250 + 144);
  v265 = v338;
  *(v250 + 184) = v337;
  *(v250 + 200) = v265;
  v266 = v340;
  *(v250 + 216) = v339;
  *(v250 + 232) = v266;
  sub_1000480AC(v350, v341);
  v267 = v342;
  v268 = sub_100016494(v341, v342);
  v330 = &v299;
  v269 = *(v267[-1].Description + 8);
  __chkstk_darwin(v268);
  v271 = (&v299 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v272 + 16))(v271);
  v273 = *v271;
  v336[3] = v248;
  v336[4] = &off_1001B17E8;
  v336[0] = v273;
  type metadata accessor for AssertionRequestDispatcher();
  v274 = swift_allocObject();
  v275 = sub_100016494(v336, v248);
  v305 = &v299;
  __chkstk_darwin(v275);
  v276 = (&v299 - v306);
  (v323)(&v299 - v306);
  v277 = *v276;
  v334 = v248;
  v335 = &off_1001B17E8;
  *&v333 = v277;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v278 = v313;
  swift_retain_n();
  v279 = v314;
  swift_retain_n();
  v280 = v315;
  swift_retain_n();

  sub_10006AA10(&v337, &v331);
  swift_defaultActor_initialize();
  sub_100004A04(&v333, v274 + 112);
  *(v274 + 152) = v264;
  sub_100003324(v336);
  sub_100003324(v341);
  *(v250 + 16) = v274;
  *(v250 + 248) = v279;
  v281 = v279;
  sub_1000480AC(v344, &v331);
  v282 = v332;
  v283 = sub_100016494(&v331, v332);
  v284 = *(*(v282 - 8) + 64);
  __chkstk_darwin(v283);
  v286 = (&v299 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v287 + 16))(v286);
  v288 = *v286;

  v289 = sub_100066994(v262, v288, v281);
  sub_100003324(v344);
  sub_100003324(v347);
  sub_100003324(v350);
  sub_100003324(&v331);
  *(v250 + 24) = v289;
  *(v250 + 256) = v280;
  sub_100004A04(&v362, v250 + 264);
  *(v250 + 136) = v278;
  sub_100003324(v353);
  sub_100003324(v356);
  sub_100003324(&v359);
  sub_100003324(v365);
  sub_100003324(v368);
  sub_100003324(&v371);
  a20[19] = v250;
  v290 = a20[5];
  type metadata accessor for RemoteXPCDispatcher();
  v291 = swift_allocObject();
  type metadata accessor for RemoteIPCMessageHandler();
  v292 = swift_allocObject();
  *(v292 + 16) = v290;
  *(v291 + 16) = v292;
  a20[20] = v291;
  type metadata accessor for SimulatorXPCDispatcher();
  v293 = swift_allocObject();
  v294 = swift_allocObject();
  *(v294 + 16) = v290;
  *(v293 + 16) = v294;
  a20[21] = v293;
  v295 = a20[7];
  sub_1000480AC(v376, &v331);
  sub_100016494(&v331, v332);
  swift_retain_n();

  v297 = sub_100067A54(v296, 600.0);

  sub_10000C790(v327, &qword_1001B8AF8, &qword_10016F6E8);
  sub_100003324(v386);
  sub_100003324(v381);
  sub_100003324(v382);
  sub_100003324(v383);
  sub_100003324(v384);
  sub_100003324(v385);
  sub_100003324(v373);
  sub_100003324(v374);
  sub_100003324(v375);
  sub_100003324(v376);
  sub_100003324(v377);
  sub_100003324(v378);
  sub_100003324(v379);
  sub_100003324(v380);
  sub_100003324(&v331);
  a20[54] = v297;
  return a20;
}

uint64_t sub_10006A518()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10000F254;
  sub_100008570();

  return sub_100065068();
}

__n128 sub_10006A5AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10006A5B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A5D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10006A614(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10006A65C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100065020(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10006A6C4()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_10006A754()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_10006A7E4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10006A8C8(uint64_t a1, uint64_t a2)
{
  v4 = _s6PolicyVMa_0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A92C()
{
  result = qword_1001B8BC0;
  if (!qword_1001B8BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001B8BC0);
  }

  return result;
}

uint64_t sub_10006A970()
{
  sub_100001ED0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  v5[1] = sub_10006A7E4;
  sub_100008570();

  return sub_100092238();
}

uint64_t sub_10006AA6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006AAAC()
{
  sub_100001ED0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  v5[1] = sub_10000F254;
  sub_100008570();

  return sub_1001511D4();
}

uint64_t sub_10006AB4C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006AB90()
{
  result = qword_1001B8C00;
  if (!qword_1001B8C00)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8C00);
  }

  return result;
}

uint64_t sub_10006AC38()
{
  sub_100002BAC();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000F254;

  return sub_1000B7454(v3, v0);
}

__n128 sub_10006AD20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006AD2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006AD4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10006ADAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006ADCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_10006AE08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10006AE54@<X0>(uint64_t *a1@<X8>)
{
  String.utf8CString.getter();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  a1[3] = &type metadata for RemoteXPCConnection;
  a1[4] = &off_1001B1F68;
  *a1 = remote_service_listener;
  return result;
}

uint64_t sub_10006AEF4()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B8D28);
  sub_10000641C(v0, qword_1001B8D28);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006AF68()
{
  v0 = sub_100065020(&qword_1001B8DD8, &qword_10016F918);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v65 - v2;
  v4 = IOPSCopyPowerSourcesInfo();
  if (!v4)
  {
    if (qword_1001B88C0 != -1)
    {
      sub_100004F70();
    }

    v20 = type metadata accessor for Logger();
    v21 = sub_10000A4F4(v20, qword_1001B8D28);
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_100007648();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create power source snapshot.", v23, 2u);
      sub_100002BB8();
    }

    return 0;
  }

  v5 = v4;
  v6 = IOPSCopyPowerSourcesList(v4);
  if (!v6)
  {
    if (qword_1001B88C0 != -1)
    {
      sub_100004F70();
    }

    v33 = type metadata accessor for Logger();
    v34 = sub_10000A4F4(v33, qword_1001B8D28);
    v35 = static os_log_type_t.default.getter();
    if (sub_100006468(v35))
    {
      v36 = sub_100007648();
      *v36 = 0;
      sub_100008348();
      _os_log_impl(v37, v38, v39, v40, v36, 2u);
      sub_100002BB8();
    }

    goto LABEL_64;
  }

  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  swift_unknownObjectRetain_n();
  v9 = v7;

  v66 = v9;
  NSArray.makeIterator()();
  v10 = &v3[*(sub_100065020(&qword_1001B8DE0, &qword_10016F920) + 44)];
  *v10 = sub_10006B83C;
  *(v10 + 1) = v8;
  v65 = v8;
  v11 = &v3[*(sub_100065020(&qword_1001B8DE8, &qword_10016F928) + 36)];
  *v11 = sub_10006B85C;
  v11[1] = 0;
  v12 = &v3[*(v0 + 44)];
  *v12 = sub_10006B864;
  *(v12 + 1) = 0;
  type metadata accessor for NSFastEnumerationIterator();
  sub_10006B890();
  while (1)
  {
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      v69 = v71;
      v70 = v72;
      if (!*(&v72 + 1))
      {
        swift_unknownObjectRelease();

        v24 = v66;

        sub_10000C790(v3, &qword_1001B8DD8, &qword_10016F918);
        if (qword_1001B88C0 != -1)
        {
          sub_100004F70();
        }

        v25 = type metadata accessor for Logger();
        v26 = sub_10000A4F4(v25, qword_1001B8D28);
        v27 = static os_log_type_t.default.getter();
        if (sub_100006468(v27))
        {
          v28 = sub_100007648();
          *v28 = 0;
          sub_100008348();
          _os_log_impl(v29, v30, v31, v32, v28, 2u);
          sub_100002BB8();
        }

        goto LABEL_64;
      }

      sub_10006B8DC(&v69, &v67);
      sub_100003370(&v67, v68);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      v14 = IOPSGetPowerSourceDescription(v5, v13);
      swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      sub_100003324(&v67);
    }

    v15 = v14;
    sub_100003324(&v67);
    *&v69 = 1701869908;
    *(&v69 + 1) = 0xE400000000000000;
    v16 = [(__CFDictionary *)v15 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
    }

    sub_100005B8C();
    if (!v17)
    {
      sub_10000C790(&v71, &unk_1001BB100, &qword_100171BA0);
      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    if (v67 == 0x6C616E7265746E49 && *(&v67 + 1) == 0xEF79726574746142)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {

      v41 = v66;

      goto LABEL_36;
    }

LABEL_19:
  }

  v41 = v66;

LABEL_36:
  swift_unknownObjectRelease();
  sub_10000C790(v3, &qword_1001B8DD8, &qword_10016F918);
  *&v69 = 0x6772616843207349;
  *(&v69 + 1) = 0xEB00000000676E69;
  v42 = [(__CFDictionary *)v15 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v42)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  sub_100005B8C();
  if (v43)
  {
    if ((swift_dynamicCast() & 1) != 0 && v67 == 1)
    {
      if (qword_1001B88C0 != -1)
      {
        sub_100004F70();
      }

      v44 = type metadata accessor for Logger();
      v45 = sub_10000A4F4(v44, qword_1001B8D28);
      v46 = static os_log_type_t.default.getter();
      if (sub_100006468(v46))
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }
  }

  else
  {
    sub_10000C790(&v71, &unk_1001BB100, &qword_100171BA0);
  }

  *&v69 = 0x6772616843207349;
  *(&v69 + 1) = 0xEA00000000006465;
  v47 = [(__CFDictionary *)v15 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v47)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  sub_100005B8C();
  if (v48)
  {
    if ((swift_dynamicCast() & 1) != 0 && v67 == 1)
    {
      if (qword_1001B88C0 != -1)
      {
        sub_100004F70();
      }

      v49 = type metadata accessor for Logger();
      v45 = sub_10000A4F4(v49, qword_1001B8D28);
      v50 = static os_log_type_t.default.getter();
      if (sub_100006468(v50))
      {
LABEL_56:
        v51 = sub_100007648();
        *v51 = 0;
        sub_100008348();
        _os_log_impl(v52, v53, v54, v55, v51, 2u);
        sub_100002BB8();
      }

LABEL_57:

      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {
    sub_10000C790(&v71, &unk_1001BB100, &qword_100171BA0);
  }

  if (qword_1001B88C0 != -1)
  {
    sub_100004F70();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_10000A4F4(v57, qword_1001B8D28);
  v59 = static os_log_type_t.default.getter();
  if (sub_100006468(v59))
  {
    v60 = sub_100007648();
    *v60 = 0;
    sub_100008348();
    _os_log_impl(v61, v62, v63, v64, v60, 2u);
    sub_100002BB8();
  }

LABEL_64:
  swift_unknownObjectRelease();
  return 0;
}

const __CFDictionary *sub_10006B7B0@<X0>(void *a1@<X0>, const void *a2@<X1>, CFDictionaryRef *a3@<X8>)
{
  sub_100003370(a1, a1[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6 = IOPSGetPowerSourceDescription(a2, v5);
  result = swift_unknownObjectRelease();
  if (v6)
  {
    result = v6;
  }

  *a3 = v6;
  return result;
}

id sub_10006B850(id result)
{
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_10006B864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = sub_10006B850(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10006B890()
{
  result = qword_1001B8DF0;
  if (!qword_1001B8DF0)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8DF0);
  }

  return result;
}

_OWORD *sub_10006B8DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10006B8EC()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B8DF8);
  sub_10000641C(v0, qword_1001B8DF8);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_10006B9A8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10006BA0C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10006BA90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPolicy();
  v5 = sub_100002BDC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v7 + 16);
  v15(&v23 - v13, a2, v4);
  v16 = *(v7 + 88);
  v17 = v16(v14, v4);
  v18 = 0;
  v19 = enum case for AssetPolicy.standard(_:);
  if (v17 != enum case for AssetPolicy.standard(_:))
  {
    if (v17 != enum case for AssetPolicy.unloadCached(_:))
    {
      goto LABEL_9;
    }

    v18 = 1;
  }

  v15(v12, a1, v4);
  v20 = v16(v12, v4);
  if (v20 == v19)
  {
    v21 = 0;
    return v18 < v21;
  }

  if (v20 == enum case for AssetPolicy.unloadCached(_:))
  {
    v21 = 1;
    return v18 < v21;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10006BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  UUID.init()();
  v15 = v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  type metadata accessor for DaemonRequest(0);
  sub_100065020(&qword_1001B8F70, &qword_10016FB88);
  sub_10005E68C(&qword_1001B8F78, type metadata accessor for DaemonRequest);
  v16 = Dictionary.init(dictionaryLiteral:)();
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v16;
  *(v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets) = a1;
  v17 = (v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_acquireBlock);
  *v17 = a3;
  v17[1] = a4;
  v18 = (v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_releaseBlock);
  *v18 = a5;
  v18[1] = a6;
  *(v8 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets) = a2;
  v19 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_inferenceProviderDescriptor;
  v20 = type metadata accessor for InferenceProviderDescriptor();
  v21 = *(v20 - 8);
  v34 = a7;
  (*(v21 + 16))(v8 + v19, a7, v20);
  v22 = qword_1001B88C8;

  if (v22 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000641C(v23, qword_1001B8DF8);
  sub_10000A868();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    sub_100002F10();
    v26 = swift_slowAlloc();
    sub_100011828();
    v35 = swift_slowAlloc();
    *v26 = 136315394;

    v27 = sub_10005F1EC();
    v29 = v28;

    sub_100004A3C(v27, v29, &v35);
    sub_100001F0C();

    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    sub_10006BFAC(a1);
    sub_10000A868();

    Array.description.getter();
    v30 = sub_1000079DC();
    sub_100007C14(v30, v31, &v35);
    sub_10000A868();

    *(v26 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v24, v25, "Created new %s with assets %s", v26, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {
  }

  (*(v21 + 8))(v34, v20);
  return v8;
}

uint64_t sub_10006BFAC(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100002B8C();
  v32 = (v5 - v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002045C(0, v6, 0);
  result = sub_10001E724(a1);
  v10 = result;
  v11 = 0;
  v36 = a1 + 56;
  v29 = a1 + 64;
  v30 = v6;
  v12 = 1;
  v31 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < v12 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      v14 = v12 << v10;
      if ((*(v36 + 8 * (v10 >> 6)) & (v12 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_25;
      }

      v35 = v9;
      v34 = v8;
      sub_10005F6CC(*(a1 + 48) + *(v33 + 72) * v10, v32);
      v16 = *v32;
      v15 = v32[1];

      result = sub_10005F730(v32);
      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10002045C((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v16;
      v19[5] = v15;
      if (v35)
      {
        goto LABEL_29;
      }

      a1 = v31;
      v12 = 1;
      v20 = 1 << *(v31 + 32);
      if (v10 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v36 + 8 * v13);
      if ((v21 & v14) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v34)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v23 = v30;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v23 = v30;
        v26 = (v29 + 8 * v13);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10000319C(v10, v34);
            v20 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        result = sub_10000319C(v10, v34);
      }

LABEL_19:
      if (++v11 == v23)
      {
        return _swiftEmptyArrayStorage;
      }

      v9 = 0;
      v8 = *(v31 + 36);
      v10 = v20;
      if (v20 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10006C26C(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for CustomAssetConfiguration();
  v4 = sub_100002BDC(v46);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002B8C();
  v45 = v10 - v9;
  v11 = type metadata accessor for ModelCatalogAsset(0);
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  __chkstk_darwin(v11 - 8);
  sub_100002B8C();
  v56 = (v14 - v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    sub_10002045C(0, v15, 0);
    v57 = _swiftEmptyArrayStorage;
    result = sub_10001E724(a1);
    v19 = result;
    v20 = 0;
    v21 = a1 + 56;
    v51 = a2;
    v52 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_runtimeAssets;
    v44 = v6;
    v47 = a1 + 64;
    v48 = v15;
    v22 = 1;
    v49 = a1 + 56;
    v50 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v19 < v22 << *(a1 + 32))
      {
        v23 = v19 >> 6;
        v24 = v22 << v19;
        if ((*(v21 + 8 * (v19 >> 6)) & (v22 << v19)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a1 + 36) != v17)
        {
          goto LABEL_30;
        }

        v55 = v18;
        v54 = v17;
        sub_10005F6CC(*(a1 + 48) + *(v53 + 72) * v19, v56);
        v25 = *(a2 + v52);
        v27 = *v56;
        v26 = v56[1];
        if (*(v25 + 16) && (v28 = sub_1000236F4(v27, v26), (v29 & 1) != 0))
        {
          (*(v44 + 16))(v45, *(v25 + 56) + *(v44 + 72) * v28, v46);
          v27 = CustomAssetConfiguration.identifier.getter();
          v26 = v30;
          (*(v44 + 8))(v45, v46);
        }

        else
        {
        }

        result = sub_10005F730(v56);
        v31 = v57;
        v33 = v57[2];
        v32 = v57[3];
        if (v33 >= v32 >> 1)
        {
          result = sub_10002045C((v32 > 1), v33 + 1, 1);
          v31 = v57;
        }

        v31[2] = v33 + 1;
        v34 = &v31[2 * v33];
        v34[4] = v27;
        v34[5] = v26;
        if (v55)
        {
          goto LABEL_34;
        }

        a1 = v50;
        a2 = v51;
        v22 = 1;
        v35 = 1 << *(v50 + 32);
        v21 = v49;
        if (v19 >= v35)
        {
          goto LABEL_31;
        }

        v36 = *(v49 + 8 * v23);
        if ((v36 & v24) == 0)
        {
          goto LABEL_32;
        }

        v57 = v31;
        if (*(v50 + 36) != v54)
        {
          goto LABEL_33;
        }

        v37 = v36 & (-2 << (v19 & 0x3F));
        if (v37)
        {
          v35 = __clz(__rbit64(v37)) | v19 & 0x7FFFFFFFFFFFFFC0;
          v38 = v48;
        }

        else
        {
          v39 = v23 << 6;
          v40 = v23 + 1;
          v38 = v48;
          v41 = (v47 + 8 * v23);
          while (v40 < (v35 + 63) >> 6)
          {
            v43 = *v41++;
            v42 = v43;
            v39 += 64;
            ++v40;
            if (v43)
            {
              result = sub_10000319C(v19, v54);
              v35 = __clz(__rbit64(v42)) + v39;
              goto LABEL_23;
            }
          }

          result = sub_10000319C(v19, v54);
        }

LABEL_23:
        if (++v20 == v38)
        {

          return v57;
        }

        v18 = 0;
        v17 = *(v50 + 36);
        v19 = v35;
        if (v35 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10006C65C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for InferenceProviderDescriptor();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_10006C750(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006C764(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006C7A4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_10006C844(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      v3 = 0x726975716361;
      goto LABEL_6;
    case 2:
      v3 = 0x747563657865;
      goto LABEL_6;
    case 3:
      v3 = 0x7361656C6572;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
      break;
    case 4:
      result = 1701736292;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10006C8D4()
{
  v1 = type metadata accessor for ModelCatalogAsset(0);
  v2 = sub_100002BDC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = *(v0 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

  v17 = 0;
  v18 = 0;
  while (v13)
  {
    v19 = v17;
LABEL_10:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_10005F6CC(*(v10 + 48) + *(v4 + 72) * (v20 | (v19 << 6)), v9);
    v21 = v9 + *(v1 + 32);
    v22 = AssetCost.onDeviceMemory.getter();
    result = sub_10005F730(v9);
    v23 = __CFADD__(v18, v22);
    v18 += v22;
    if (v23)
    {
      __break(1u);
LABEL_13:

      return v18;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      goto LABEL_13;
    }

    v13 = *(v10 + 56 + 8 * v19);
    ++v17;
    if (v13)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006CA4C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_10000396C(a1, a1);
}

uint64_t sub_10006CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100002BAC();
  v18 = v17[6];
  v19 = sub_10000A3F4();
  if (*v16 <= 1u)
  {
    v29 = *(v16 + 1);
    v17[7] = v29;
    if (v29)
    {
      v30 = async function pointer to Task.value.getter[1];

      v31 = swift_task_alloc();
      v17[8] = v31;
      v19 = sub_100065020(&qword_1001B8F60, &unk_100171260);
      *v31 = v17;
      v31[1] = sub_10006CB88;
      v23 = &protocol self-conformance witness table for Error;
      v21 = &type metadata for () + 8;
      v20 = v29;
      v22 = v19;
    }

    else
    {
      __break(1u);
    }

    return Task.value.getter(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_100001F00();

    return v27();
  }
}

uint64_t sub_10006CB88()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100003960();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 40);

    v11 = sub_10006FA60;
    v12 = v10;
  }

  else
  {
    v12 = *(v3 + 40);
    v11 = sub_10006CCB4;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10006CCB4()
{
  sub_100002BAC();
  v1 = *(v0 + 56);

  sub_100001F00();

  return v2();
}

uint64_t sub_10006CD0C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_10000396C(a1, a1);
}

uint64_t sub_10006CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100002BAC();
  v16 = v15[6];
  v17 = sub_10000A3F4();
  if (*v14 == 4)
  {
    sub_100001F00();

    return v25();
  }

  else
  {
    v27 = *(v14 + 24);
    v15[7] = v27;
    if (v27)
    {
      v28 = async function pointer to Task<>.value.getter[1];

      v17 = swift_task_alloc();
      v15[8] = v17;
      *v17 = v15;
      v17[1] = sub_10006CE24;
      v19 = &type metadata for () + 8;
      v18 = v27;
    }

    else
    {
      __break(1u);
    }

    return Task<>.value.getter(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10006CE24()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[5];
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  sub_10000CC50();

  return _swift_task_switch(v7, v8, v9);
}

void *sub_10006CF3C()
{
  v1 = *(v0 + 32);
  v8 = v1;
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1000106D0(*(v1 + 16), 0);
  sub_1001495F4();
  v5 = v4;
  sub_10006F420(&v8, v7);
  sub_100007F18();
  if (v5 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10006CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v79 = a3;
  v10 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v75 - v12;
  v14 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v15 = sub_100002BDC(v14);
  v84 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v81 = v75 - v19;
  v20 = (v6 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState);
  sub_1000136EC();
  result = swift_beginAccess();
  v22 = *v20;
  if ((v22 - 1) >= 2)
  {
    if ((v22 - 3) < 2)
    {
      if (qword_1001B88C8 != -1)
      {
        sub_100004F90();
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000641C(v23, qword_1001B8DF8);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v24, v25))
      {
        sub_1000033D0();
        v26 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v82 = v79;
        *v26 = 136315650;
        v27 = v81;
        RequestMetadata.id.getter();
        sub_10002E9D0();
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v84 + 8))(v27, v14);
        sub_100004A3C(v28, v30, &v82);
        sub_100009540();

        *(v26 + 4) = v28;
        *(v26 + 12) = 2080;
        v31 = sub_10005F1EC();
        sub_100004A3C(v31, v32, &v82);
        sub_100003170();

        *(v26 + 14) = v6;
        *(v26 + 22) = 2080;
        v33 = sub_10006C844(v22);
        sub_100004A3C(v33, v34, &v82);
        sub_100003170();

        *(v26 + 24) = v6;
        _os_log_impl(&_mh_execute_header, v24, v25, "Tried to add request %s to %s in illegal state %s", v26, 0x20u);
        swift_arrayDestroy();
        sub_100002BD0();

        sub_100002BD0();
      }

      v35 = type metadata accessor for ModelManagerError();
      sub_10005E68C(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
      swift_allocError();
      (*(*(v35 - 8) + 104))(v36, enum case for ModelManagerError.internalError(_:), v35);
      return swift_willThrow();
    }

    result = sub_10006D7A4(a1);
  }

  v77 = a4;
  v78 = v5;
  v80 = v6;
  v37 = *(v20 + 1);
  if (v37)
  {
    v82 = 0;
    v83 = 0xE000000000000000;

    _StringGuts.grow(_:)(25);

    v82 = 0x2074736575716552;
    v83 = 0xE800000000000000;
    v75[2] = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    v38 = v81;
    RequestMetadata.id.getter();
    v75[1] = sub_10002E9D0();
    v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v39);

    v40 = *(v84 + 8);
    v76 = v14;
    v84 += 8;
    v75[0] = v40;
    v40(v38, v14);
    v41._countAndFlagsBits = 0x6974756365784520;
    v41._object = 0xEF6B736154206E6FLL;
    String.append(_:)(v41);
    v42 = type metadata accessor for TaskPriority();
    sub_100009BFC(v13, 1, 1, v42);
    sub_100006484();
    v45 = a2;
    v46 = sub_10005E68C(v43, v44);
    v47 = swift_allocObject();
    v47[2] = a1;
    v47[3] = v46;
    v48 = v79;
    v49 = v80;
    v47[4] = a1;
    v47[5] = v49;
    v47[6] = v45;
    v47[7] = v37;
    v50 = v77;
    v47[8] = v48;
    v47[9] = v50;
    swift_retain_n();
    v79 = v37;

    sub_100012478();
    sub_100128ED0();
    v52 = v51;
    v53 = *v20;
    v54 = *(v20 + 1);
    v55 = *(v20 + 2);
    v57 = *(v20 + 3);
    v56 = *(v20 + 4);

    swift_isUniquelyReferenced_nonNull_native();
    v82 = v56;
    v77 = v52;
    sub_100117650(v52, v45);
    v58 = v82;
    v59 = *(v20 + 1);
    v60 = *(v20 + 2);
    v62 = *(v20 + 3);
    v61 = *(v20 + 4);
    *v20 = v53;
    *(v20 + 1) = v54;
    *(v20 + 2) = v55;
    *(v20 + 3) = v57;
    *(v20 + 4) = v58;

    if (qword_1001B88C8 != -1)
    {
      sub_100004F90();
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000641C(v63, qword_1001B8DF8);
    v64 = v80;

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      sub_100002F10();
      v67 = swift_slowAlloc();
      sub_100011828();
      v82 = swift_slowAlloc();
      *v67 = 136315394;
      v68 = v81;
      RequestMetadata.id.getter();
      v69 = v76;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (v75[0])(v68, v69);
      sub_100004A3C(v70, v72, &v82);
      sub_100009540();

      *(v67 + 4) = v70;
      *(v67 + 12) = 2080;
      v73 = sub_10005F1EC();
      sub_100004A3C(v73, v74, &v82);
      sub_100003170();

      *(v67 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Added request %s to %s", v67, 0x16u);
      sub_100013D14();
      swift_arrayDestroy();
      sub_100002BD0();

      sub_100002BD0();
    }

    return v77;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006D7A4(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = v1 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_1000136EC();
  swift_beginAccess();
  *v5 = 1;
  sub_10005F1EC();
  v6._countAndFlagsBits = 0x6572697571634120;
  v6._object = 0xED00006B73615420;
  String.append(_:)(v6);
  type metadata accessor for TaskPriority();
  sub_10000884C();
  sub_100006484();
  v9 = sub_10005E68C(v7, v8);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = v1;
  swift_retain_n();

  sub_100012478();
  sub_100128ED0();
  v12 = v11;
  sub_10005F1EC();
  v13._countAndFlagsBits = 0x6574756365784520;
  v13._object = 0xED00006B73615420;
  String.append(_:)(v13);
  sub_10000884C();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v9;
  v14[4] = a1;
  v14[5] = v12;
  v14[6] = v1;
  swift_retain_n();

  sub_100012478();
  sub_100128ED0();
  v16 = v15;
  sub_10005F1EC();
  v17._countAndFlagsBits = 0x657361656C655220;
  v17._object = 0xED00006B73615420;
  String.append(_:)(v17);
  sub_10000884C();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = v9;
  v18[4] = a1;
  v18[5] = v16;
  v18[6] = v1;
  swift_retain_n();

  sub_100012478();
  sub_1000652FC();
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);
  *(v5 + 8) = v12;
  *(v5 + 16) = v16;
  v21 = *(v5 + 24);
  *(v5 + 24) = v22;
}

uint64_t sub_10006DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[5] = a8;
  v16[6] = v29;
  v16[3] = a5;
  v16[4] = a6;
  v16[2] = a4;
  v18 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v16[7] = v18;
  v19 = *(v18 - 8);
  v16[8] = v19;
  v20 = *(v19 + 64) + 15;
  v16[9] = swift_task_alloc();
  v21 = async function pointer to Task.value.getter[1];
  v22 = swift_task_alloc();
  v16[10] = v22;
  v23 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v22 = v16;
  v22[1] = sub_10006DBF0;

  return Task.value.getter(v23, a7, &type metadata for () + 8, v23, &protocol self-conformance witness table for Error, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006DBF0()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *(v4 + 16);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v9 + 88) = v0;

  sub_10000CC50();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10006DD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v26 = v22[3];
  v25 = v22[4];
  v27 = type metadata accessor for Logger();
  sub_10000641C(v27, qword_1001B8DF8);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v22[8];
    v30 = v22[9];
    v32 = v22[7];
    v33 = v22[3];
    v55 = v22[4];
    sub_100002F10();
    v34 = swift_slowAlloc();
    sub_100011828();
    a11 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = sub_10005F1EC();
    sub_1000239D4(v35, v36, v37, v38);

    sub_100009D60();
    RequestMetadata.id.getter();
    sub_10002E9D0();
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v31 + 8))(v30, v32);
    v42 = sub_100004A3C(v39, v41, &a11);

    *(v34 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s executing request %s", v34, 0x16u);
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  v56 = v22[5] + *v22[5];
  v43 = *(v22[5] + 4);
  v44 = swift_task_alloc();
  v22[12] = v44;
  *v44 = v22;
  v44[1] = sub_10005CCAC;
  v45 = v22[6];
  sub_100003540();

  return v46(v46, v47, v48, v49, v50, v51, v52, v53, a9, v56, a11, a12, a13, a14);
}

uint64_t sub_10006DF88()
{
  sub_100002BAC();
  v1 = *(v0 + 72);
  sub_10006E0CC(*(v0 + 24), *(v0 + 16), *(v0 + 32));

  sub_100001F00();

  return v2();
}

uint64_t sub_10006DFF4()
{
  sub_100002BAC();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  sub_10006E0CC(*(v0 + 24), *(v0 + 16), *(v0 + 32));

  sub_100001F00();

  return v3();
}

uint64_t sub_10006E060()
{
  sub_100002BAC();
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  sub_10006E0CC(*(v0 + 24), *(v0 + 16), *(v0 + 32));

  sub_100001F00();

  return v3();
}

uint64_t sub_10006E0CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = (a1 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState);
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v10 = *(v5 + 3);
  v9 = *(v5 + 4);

  v11 = sub_10005E2C8(a3);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v9[3];
    sub_100065020(&qword_1001B8F80, &qword_10016FB90);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);
    v16 = *(v9[6] + 8 * v13);

    v17 = *(v9[7] + 8 * v13);
    sub_100065020(&qword_1001B8F70, &qword_10016FB88);
    sub_10005E68C(&qword_1001B8F78, type metadata accessor for DaemonRequest);
    _NativeDictionary._delete(at:)();
  }

  v18 = *(v5 + 1);
  v19 = *(v5 + 2);
  v21 = *(v5 + 3);
  v20 = *(v5 + 4);
  *v5 = v6;
  *(v5 + 1) = v7;
  *(v5 + 2) = v8;
  *(v5 + 3) = v10;
  *(v5 + 4) = v9;
}

uint64_t sub_10006E288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_10006E2A8, a4, 0);
}

uint64_t sub_10006E2A8()
{
  sub_1000033DC();
  v23 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[7] = sub_10000641C(v2, qword_1001B8DF8);

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v4 = v0[6];
    sub_100002F10();
    v5 = swift_slowAlloc();
    sub_100011828();
    v22[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_10005F1EC();
    v8 = sub_100004A3C(v6, v7, v22);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = *(v4 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

    v10 = sub_10006C26C(v9, v4);
    Array.description.getter();
    v11 = sub_1000079DC();
    sub_100007C14(v11, v12, v22);
    sub_10000A868();

    *(v5 + 14) = v10;
    sub_1000057CC(&_mh_execute_header, v13, v14, "%s acquiring assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  sub_100008354(v0[6]);
  v21 = v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_10006E4C8;
  v19 = v0[6];

  return v21(v19);
}

uint64_t sub_10006E4C8()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_10006E76C;
  }

  else
  {
    v7 = sub_10006E5EC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10006E5EC()
{
  sub_1000033DC();
  v19 = v0;
  v2 = v0[6];
  v1 = v0[7];

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v4 = v0[9];
    v5 = v0[6];
    sub_100002F10();
    v6 = swift_slowAlloc();
    sub_100011828();
    v18[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_10005F1EC();
    sub_100004A3C(v7, v8, v18);

    sub_100009D60();
    v9 = sub_10006BFAC(*(v5 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets));
    Array.description.getter();
    v10 = sub_1000079DC();
    sub_100007C14(v10, v11, v18);
    sub_10000A868();

    *(v6 + 14) = v9;
    sub_1000057CC(&_mh_execute_header, v12, v13, "%s finished acquiring assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  v14 = v0[6];
  v15 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_1000136EC();
  swift_beginAccess();
  *(v14 + v15) = 2;
  sub_100001F00();

  return v16();
}

uint64_t sub_10006E76C()
{
  sub_1000033DC();
  v19 = v0;
  v2 = v0[6];
  v1 = v0[7];

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v4 = v0[6];
    sub_100002F10();
    v5 = swift_slowAlloc();
    sub_100011828();
    v18[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_10005F1EC();
    v8 = sub_100004A3C(v6, v7, v18);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_10006BFAC(*(v4 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets));
    Array.description.getter();
    v10 = sub_1000079DC();
    sub_100007C14(v10, v11, v18);
    sub_10000A868();

    *(v5 + 14) = v9;
    sub_1000057CC(&_mh_execute_header, v12, v13, "%s failed to acquire assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  v14 = v0[9];
  swift_willThrow();
  sub_100001F00();
  v16 = v0[9];

  return v15();
}

uint64_t sub_10006E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[5] = a4;
  v16[6] = a6;
  v18 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v16[7] = v18;
  v19 = *(v18 - 8);
  v16[8] = v19;
  v20 = *(v19 + 64) + 15;
  v16[9] = swift_task_alloc();
  v21 = async function pointer to Task.value.getter[1];
  v22 = swift_task_alloc();
  v16[10] = v22;
  v23 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  v16[11] = v23;
  *v22 = v16;
  v22[1] = sub_10006EA08;

  return Task.value.getter(v23, a5, &type metadata for () + 8, v23, &protocol self-conformance witness table for Error, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006EA08()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003960();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *(v4 + 40);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  *(v9 + 96) = v0;

  sub_10000CC50();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10006EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v25;
  a22 = v26;
  sub_100003284();
  a20 = v23;
  v27 = v23[6];
  v23[13] = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_1000136EC();
  swift_beginAccess();
  sub_1000199D0();
  v31 = ((1 << v30) + 63) >> 6;
  if (!v31)
  {
    goto LABEL_7;
  }

  while (!*v29)
  {
    ++v29;
    v28 -= 64;
    if (!--v31)
    {
      goto LABEL_7;
    }
  }

  sub_10001946C();
  if (v37)
  {
LABEL_7:
    if (qword_1001B88C8 != -1)
    {
      sub_100004F90();
      swift_once();
      v87 = v23[6];
    }

    v38 = type metadata accessor for Logger();
    sub_10000641C(v38, qword_1001B8DF8);
    sub_100001F0C();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v23[6];
      v42 = swift_slowAlloc();
      sub_1000033D0();
      v43 = swift_slowAlloc();
      a11 = v43;
      *v42 = 136315138;
      v44 = sub_10005F1EC();
      v48 = sub_1000239D4(v44, v45, v46, v47);

      *(v42 + 4) = v48;
      sub_100012D40(&_mh_execute_header, v49, v50, "%s finished all executions");
      sub_100003324(v43);
      sub_100002BD0();

      sub_100002BD0();
    }

    sub_1000137BC();
    sub_100001F00();
    sub_100003540();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
  }

  if (-v33 < 0 || v36 - v33 >= v35)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (((*v34 >> v36) & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000129BC(v32);
  v60 = qword_1001B88C8;

  if (v60 != -1)
  {
LABEL_25:
    sub_100004F90();
    swift_once();
    v88 = v23[6];
  }

  v61 = type metadata accessor for Logger();
  sub_10000641C(v61, qword_1001B8DF8);
  sub_100001F0C();

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v65 = v23[8];
    v64 = v23[9];
    v66 = v23[6];
    a9 = v23[7];
    sub_100002F10();
    v67 = swift_slowAlloc();
    sub_100011828();
    a11 = swift_slowAlloc();
    *v67 = 136315394;
    v68 = sub_10005F1EC();
    sub_1000239D4(v68, v69, v70, v71);
    a10 = v22;
    sub_100009540();

    *(v67 + 4) = v22;
    *(v67 + 12) = 2080;
    v72 = v24 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    RequestMetadata.id.getter();
    sub_10002E9D0();
    sub_10002A0E4();
    v73 = sub_100007804();
    v74(v73);
    sub_100004A3C(v72, v22, &a11);
    sub_100003170();

    *(v67 + 14) = v72;
    sub_100019B38(&_mh_execute_header, v75, v76, "%s waiting for request %s to complete");
    sub_100013D14();
    swift_arrayDestroy();
    sub_100002BD0();

    sub_100002BD0();
  }

  v77 = async function pointer to Task.value.getter[1];
  v78 = swift_task_alloc();
  v23[16] = v78;
  *v78 = v23;
  sub_1000055C8(v78);
  sub_100003540();

  return Task.value.getter(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006EEC8()
{
  sub_100002BAC();
  v1 = *(v0 + 72);

  sub_100001F00();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_10006EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16[2] = a4;
  v16[3] = a6;
  v18 = async function pointer to Task.value.getter[1];
  v19 = swift_task_alloc();
  v16[4] = v19;
  v20 = sub_100065020(&qword_1001B8F60, &unk_100171260);
  *v19 = v16;
  v19[1] = sub_10005F390;

  return Task.value.getter(v20, a5, &type metadata for () + 8, v20, &protocol self-conformance witness table for Error, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006EFF0()
{
  sub_1000033DC();
  v20 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  sub_10000641C(v3, qword_1001B8DF8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = *(v0 + 24);
    sub_100002F10();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    sub_1000033D0();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = sub_10005F1EC();
    v14 = sub_100004A3C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Suppressing acquire task failure for %s with error %@", v9, 0x16u);
    sub_10006F830(v10);
    sub_100002BD0();

    sub_100003324(v11);
    sub_100002BD0();

    sub_100002BD0();
  }

  else
  {
  }

  v16 = *(v0 + 24);
  sub_100060FE4();
  sub_100001F00();

  return v17();
}

uint64_t sub_10006F20C()
{
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10006F270()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  sub_10000317C();
  return Hasher._finalize()();
}

Swift::Int sub_10006F324()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  sub_10000317C();
  return Hasher._finalize()();
}

uint64_t sub_10006F390(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10006F1E0() & 1;
}

uint64_t sub_10006F420(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001B8F40, &unk_10016FB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000033DC();
  sub_10000BF38();
  v18 = v16[6];
  v19 = v16[7];
  v21 = v16[8];
  v20 = v16[9];
  v22 = swift_task_alloc();
  v23 = sub_100004B00(v22);
  *v23 = v24;
  v23[1] = sub_10006F558;
  v25 = sub_100008580();

  return sub_10006DAAC(v25, v26, v27, v28, v17, v18, v19, v21, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006F558()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_100001F00();

  return v5();
}

uint64_t sub_10006F638()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100004B00(v5);
  *v6 = v7;
  v6[1] = sub_10006FA64;
  v8 = sub_100008580();

  return sub_10006E288(v8, v9, v10, v11, v3);
}

uint64_t sub_10006F6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000BF38();
  v18 = *(v16 + 48);
  v19 = swift_task_alloc();
  v20 = sub_100004B00(v19);
  *v20 = v21;
  v20[1] = sub_10006FA64;
  v22 = sub_100008580();

  return sub_10006E8D0(v22, v23, v24, v25, v17, v18, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006F788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10000BF38();
  v18 = *(v16 + 48);
  v19 = swift_task_alloc();
  v20 = sub_100004B00(v19);
  *v20 = v21;
  v20[1] = sub_10006F558;
  v22 = sub_100008580();

  return sub_10006EF24(v22, v23, v24, v25, v17, v18, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10006F830(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B8F68, &qword_10016FB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s14ExecutionGroupC17ManagerOwnedStateV5StateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14ExecutionGroupC17ManagerOwnedStateV5StateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006FA08()
{
  result = qword_1001B8F88;
  if (!qword_1001B8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F88);
  }

  return result;
}

uint64_t sub_10006FA6C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001B8F90);
  sub_10000641C(v0, qword_1001B8F90);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006FAD8()
{
  type metadata accessor for EventReporter();
  *(v0 + 16) = EventReporter.__allocating_init()();
  return v0;
}

void sub_10006FBD8()
{
  sub_1000055B0();
  v90 = v1;
  v91 = v0;
  v88 = v3;
  v89 = v2;
  v5 = v4;
  v94 = v6;
  v95 = v7;
  v93 = v8;
  v78 = type metadata accessor for AppleIntelligenceReportingError();
  v9 = sub_100002BDC(v78);
  v77 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v13);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v14);
  sub_1000079F8();
  v79 = v15;
  sub_100002F1C();
  __chkstk_darwin(v16);
  v74 = v72 - v17;
  v18 = sub_100065020(&qword_1001B9048, &qword_10016FCB8);
  sub_100002F04(v18);
  v20 = *(v19 + 64);
  sub_100004B1C();
  __chkstk_darwin(v21);
  v87 = v72 - v22;
  v23 = sub_100065020(&qword_1001B9050, &qword_10016FCC0);
  sub_100002F04(v23);
  v25 = *(v24 + 64);
  sub_100004B1C();
  __chkstk_darwin(v26);
  v27 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F04(v27);
  v29 = *(v28 + 64);
  sub_100004B1C();
  __chkstk_darwin(v30);
  v31 = type metadata accessor for AppleIntelligenceEvent();
  v32 = sub_100002BDC(v31);
  v96 = v33;
  v97 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_100002B8C();
  v38 = v37 - v36;
  v39 = subsystemName.getter();
  v85 = v40;
  v86 = v39;
  v41 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v42 = sub_100002F04(v41);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v45 = type metadata accessor for UUID();
  sub_100003978();
  sub_100009BFC(v46, v47, v48, v45);
  v72[1] = v5;
  v49 = *&aExecuterqueuer[8 * v5];
  v83 = *&aExecuterqueuer[8 * v5 + 24];
  v84 = v49;
  type metadata accessor for UUIDIdentifier();
  sub_100003978();
  v92 = v50;
  v54 = sub_100009BFC(v51, v52, v53, v50);
  v82 = v72;
  __chkstk_darwin(v54);
  v55 = sub_10002E90C(v95, v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1001B9060, &unk_10016FCD0);
  v81 = v72;
  v75 = v44;
  __chkstk_darwin(v55);
  v76 = *(v45 - 8);
  v73 = *(v76 + 16);
  v73(v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v94, v45);
  sub_1000039A8();
  v80 = v45;
  sub_100009BFC(v56, v57, v58, v45);

  Dictionary.init(dictionaryLiteral:)();
  AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)();
  type metadata accessor for AppleIntelligenceUseCase();
  sub_1000039A8();
  sub_100009BFC(v59, v60, v61, v62);
  type metadata accessor for AppleIntelligenceReportingMetadata();
  sub_100003978();
  sub_100009BFC(v63, v64, v65, v66);

  v67 = v96;
  sub_100005600();
  v68 = v97;
  AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)();
  (*(v67 + 104))(v38, enum case for AppleIntelligenceEvent.inference(_:), v68);
  if (*(v91 + 16))
  {
    v69 = *(v91 + 16);

    v70 = v93;
    _s26AppleIntelligenceReporting13EventReporterC04emitab5StartD09eventInfoAA14UUIDIdentifierVAA0abD0O_tAA0abC5ErrorOYKF();
    (*(v67 + 8))(v38, v68);

    v71 = 0;
  }

  else
  {
    (*(v67 + 8))(v38, v68);
    v71 = 1;
    v70 = v93;
  }

  sub_100009BFC(v70, v71, 1, v92);
  sub_100002EEC();
}

void sub_1000706AC()
{
  sub_1000055B0();
  v1 = v0;
  v2 = type metadata accessor for EKExtensionIdentity(0);
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v10 = v9 - v8;
  v11 = *(v1 + 16);
  if (v11)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100071020();
    v12 = _swiftEmptyArrayStorage;
    v13 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1000714C8(v13, v10);
      v20 = v12;
      v15 = v12[2];
      if (v15 >= v12[3] >> 1)
      {
        sub_100071020();
        v12 = v20;
      }

      v18 = v2;
      v19 = &off_1001B11E0;
      v16 = sub_10000366C(&v17);
      sub_1000714C8(v10, v16);
      v12[2] = v15 + 1;
      sub_100004A04(&v17, &v12[5 * v15 + 4]);
      sub_10007152C(v10);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  sub_100002EEC();
}

char *sub_1000708B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

char *sub_1000708FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

char *sub_10007091C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

uint64_t sub_100070988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000189A4();
  if (v10 && (v11 = sub_100065020(a4, a5), result = sub_100002C00(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_100003AF0();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_100065020(a4, a5);
    sub_100003AF0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void sub_100070A50()
{
  v1 = *v0;
  sub_1000710E8();
  *v0 = v2;
}

void sub_100070A90()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070AD0()
{
  v1 = *v0;
  sub_1000713B8();
  *v0 = v2;
}

uint64_t sub_100070B10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100070B58()
{
  v1 = *v0;
  sub_1000710E8();
  *v0 = v2;
}

void sub_100070B98()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070BF0()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070C48()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070CA0()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070CF8()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070D50()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070DA8()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070E00()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070E58()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070EB0()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070F08()
{
  v1 = *v0;
  sub_1000199F0();
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070F70()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100070FC8()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_100071020()
{
  v1 = *v0;
  sub_1000713B8();
  *v0 = v2;
}

void sub_100071060()
{
  v1 = *v0;
  sub_10001B4AC();
  *v0 = v2;
}

void sub_1000710E8()
{
  sub_1000055B0();
  sub_10000BF48();
  if (v8)
  {
    sub_100012660();
    if (v10 != v11)
    {
      sub_100005FE0();
      if (v10)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v9 = v5;
  }

  v12 = *(v0 + 16);
  if (v9 <= v12)
  {
    v13 = *(v0 + 16);
  }

  else
  {
    v13 = v9;
  }

  if (!v13)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100065020(v6, v7);
  v14 = *(*(sub_100065020(v2, v1) - 8) + 72);
  v15 = sub_1000129D8();
  v16 = j__malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 - v4 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_23;
  }

  sub_10000886C(v16 - v4);
LABEL_18:
  v18 = *(sub_100065020(v2, v1) - 8);
  if (v3)
  {
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    sub_100070988(v0 + v19, v12, v15 + v19, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000781C();
  }

  sub_100002EEC();
}

void sub_1000712CC(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_100012660();
    if (v7 != v8)
    {
      sub_100005FE0();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_100065020(&qword_1001B90C0, &qword_10016FD38);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[4 * v9] <= v13)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }
}

void sub_1000713B8()
{
  sub_10000BF48();
  if (v7)
  {
    sub_100012660();
    if (v9 != v10)
    {
      sub_100005FE0();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_10000A210();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_100065020(v5, v6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    sub_10000886C(v14 - 32);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (v3)
  {
    if (v13 != v0 || &v0[5 * v11 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, v0 + 4, 40 * v11);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100065020(v2, v1);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1000714C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EKExtensionIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007152C(uint64_t a1)
{
  v2 = type metadata accessor for EKExtensionIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for StepIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StepIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000716F0(char a1)
{
  if (!a1)
  {
    return 0x5265747563657865;
  }

  if (a1 == 1)
  {
    return 0x7165526575657571;
  }

  return 0x536D726177657270;
}

unint64_t sub_100071768(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001AFE48, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_1000717D4()
{
  Hasher.init(_seed:)();
  sub_100004FB4();
  return Hasher._finalize()();
}

Swift::Int sub_100071810(Swift::UInt64 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000718AC()
{
  String.hash(into:)();
}

uint64_t sub_100071958()
{
  String.hash(into:)();
}

Swift::Int sub_1000719D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100071A54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100071B14()
{
  Hasher.init(_seed:)();
  sub_100004FB4();
  return Hasher._finalize()();
}

Swift::Int sub_100071B4C(uint64_t a1, Swift::UInt64 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

unint64_t sub_100071B90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100071768(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100071BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000716F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100071BF0()
{
  result = qword_1001B9160;
  if (!qword_1001B9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9160);
  }

  return result;
}

uint64_t sub_100071C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v12 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  v16 = type metadata accessor for UUIDIdentifier();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUIDIdentifier.init()();
  v21 = *(v7 + 16);
  if (v21)
  {
    v22 = *(v7 + 24);
    (*(v17 + 16))(v15, v20, v16);
    sub_100009BFC(v15, 0, 1, v16);

    v21(a1, a2, a3, v15, v25, v26, v27);
    sub_100016484(v21);
    sub_100072080(v15);
  }

  (*(v17 + 32))(a7, v20, v16);
  return sub_100009BFC(a7, 0, 1, v16);
}

uint64_t sub_100071E18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 32);
  if (v9)
  {
    v17 = result;
    v18 = *(v8 + 40);

    v9(v17, a2, a3, a4, a5, a6, a7, a8);

    return sub_100016484(v9);
  }

  return result;
}

uint64_t sub_100071EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 48);
  if (v6)
  {
    v11 = result;
    v12 = *(v5 + 56);

    v6(v11, a2, a3, a4, a5);

    return sub_100016484(v6);
  }

  return result;
}

uint64_t *sub_100071F8C()
{
  v1 = v0[3];
  sub_100016484(v0[2]);
  v2 = v0[5];
  sub_100016484(v0[4]);
  v3 = v0[7];
  sub_100016484(v0[6]);
  return v0;
}

uint64_t sub_100071FBC()
{
  sub_100071F8C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100072080(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000720F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPolicy();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = v5[2];
  v12(&v20 - v10, a2, v4);
  v13 = v5[11];
  v14 = v13(v11, v4);
  v15 = 0;
  v16 = enum case for AssetPolicy.standard(_:);
  if (v14 != enum case for AssetPolicy.standard(_:))
  {
    if (v14 != enum case for AssetPolicy.unloadCached(_:))
    {
      goto LABEL_9;
    }

    v15 = 1;
  }

  v12(v9, a1, v4);
  v17 = v13(v9, v4);
  if (v17 == v16)
  {
    v18 = 0;
    return v15 >= v18;
  }

  if (v17 == enum case for AssetPolicy.unloadCached(_:))
  {
    v18 = 1;
    return v15 >= v18;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1000722B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPolicy();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = v5[2];
  v12(&v20 - v10, a1, v4);
  v13 = v5[11];
  v14 = v13(v11, v4);
  v15 = 0;
  v16 = enum case for AssetPolicy.standard(_:);
  if (v14 != enum case for AssetPolicy.standard(_:))
  {
    if (v14 != enum case for AssetPolicy.unloadCached(_:))
    {
      goto LABEL_9;
    }

    v15 = 1;
  }

  v12(v9, a2, v4);
  v17 = v13(v9, v4);
  if (v17 == v16)
  {
    v18 = 0;
    return v15 >= v18;
  }

  if (v17 == enum case for AssetPolicy.unloadCached(_:))
  {
    v18 = 1;
    return v15 >= v18;
  }

LABEL_9:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_100072460(uint64_t a1)
{
  v2 = v1;
  v43 = type metadata accessor for Assertion.DaemonRep();
  v4 = sub_100002BDC(v43);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002B8C();
  v42 = v10 - v9;
  v11 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    sub_10002045C(0, v11, 0);
    sub_100025128(a1);
    result = sub_100009540();
    v15 = 0;
    v16 = a1 + 56;
    v37 = a1 + 64;
    v38 = v11;
    v39 = v6;
    v40 = a1;
    v41 = a1 + 56;
    if ((v1 & 0x8000000000000000) == 0)
    {
      while (v2 < 1 << *(a1 + 32))
      {
        v17 = v2 >> 6;
        if ((*(v16 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v13)
        {
          goto LABEL_25;
        }

        v46 = v14;
        v44 = v15;
        v45 = v13;
        v18 = result;
        (*(v6 + 16))(v42, *(a1 + 48) + *(v6 + 72) * v2, v43);
        v19 = Assertion.DaemonRep.policy.getter();
        v21 = v20;
        (*(v6 + 8))(v42, v43);
        result = v18;
        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          sub_10002045C((v22 > 1), v23 + 1, 1);
          result = v18;
        }

        result[2] = v23 + 1;
        v24 = &result[2 * v23];
        v24[4] = v19;
        v24[5] = v21;
        v16 = v41;
        if (v46)
        {
          goto LABEL_29;
        }

        v6 = v39;
        a1 = v40;
        v25 = 1 << *(v40 + 32);
        if (v2 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v41 + 8 * v17);
        if ((v26 & (1 << v2)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v40 + 36) != v45)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v2 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v2 & 0x7FFFFFFFFFFFFFC0;
          v28 = v38;
        }

        else
        {
          v29 = v17 << 6;
          v30 = v17 + 1;
          v28 = v38;
          v31 = (v37 + 8 * v17);
          while (v30 < (v25 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              v34 = sub_100003170();
              sub_100016E94(v34, v35, 0);
              result = v25;
              v25 = __clz(__rbit64(v32)) + v29;
              goto LABEL_19;
            }
          }

          v36 = result;
          sub_100016E94(v2, v45, 0);
          result = v36;
        }

LABEL_19:
        v15 = v44 + 1;
        if (v44 + 1 == v28)
        {
          return result;
        }

        v14 = 0;
        v13 = *(v40 + 36);
        v2 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_100072770(uint64_t a1)
{
  v50 = type metadata accessor for Assertion.DaemonRep();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v50);
  v49 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v48);
  v9 = &v38 - v8;
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v45 = v9;
    v38 = v1;
    v54 = _swiftEmptyArrayStorage;
    v12 = v10;
    sub_100070B58();
    v13 = v54;
    result = sub_100025128(a1);
    v16 = v3;
    v17 = result;
    v18 = 0;
    v53 = a1 + 56;
    v46 = v6;
    v47 = v16;
    v43 = v16 + 8;
    v44 = v16 + 16;
    v41 = a1;
    v42 = v6 + 32;
    v39 = a1 + 64;
    v40 = v12;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v17 < 1 << *(a1 + 32))
      {
        v19 = v17 >> 6;
        if ((*(v53 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v14)
        {
          goto LABEL_26;
        }

        v52 = v15;
        v51 = v14;
        v20 = v47;
        v22 = v49;
        v21 = v50;
        (*(v47 + 16))(v49, *(a1 + 48) + *(v47 + 72) * v17, v50);
        v23 = v45;
        Assertion.DaemonRep.id.getter();
        v24 = v22;
        v25 = v13;
        (*(v20 + 8))(v24, v21);
        v54 = v13;
        v26 = v13[2];
        if (v26 >= v13[3] >> 1)
        {
          sub_100070B58();
          v25 = v54;
        }

        v25[2] = v26 + 1;
        v13 = v25;
        result = (*(v46 + 32))(v25 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v26, v23, v48);
        if (v52)
        {
          goto LABEL_30;
        }

        a1 = v41;
        v27 = 1 << *(v41 + 32);
        if (v17 >= v27)
        {
          goto LABEL_27;
        }

        v28 = *(v53 + 8 * v19);
        if ((v28 & (1 << v17)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v41 + 36) != v51)
        {
          goto LABEL_29;
        }

        v29 = v28 & (-2 << (v17 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v17 & 0x7FFFFFFFFFFFFFC0;
          v30 = v40;
        }

        else
        {
          v31 = v19 << 6;
          v32 = v19 + 1;
          v33 = (v39 + 8 * v19);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              v36 = v40;
              result = sub_100016E94(v17, v51, 0);
              v30 = v36;
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_19;
            }
          }

          v37 = v40;
          result = sub_100016E94(v17, v51, 0);
          v30 = v37;
        }

LABEL_19:
        if (++v18 == v30)
        {
          return v13;
        }

        v15 = 0;
        v14 = *(a1 + 36);
        v17 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}