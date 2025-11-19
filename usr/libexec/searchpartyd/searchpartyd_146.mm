uint64_t sub_100F3BA84()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = v2[20];
  v6 = v2[19];
  v7 = v2[18];
  v8 = v2[3];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100F3C1F4;
  }

  else
  {
    v9 = sub_100F3BC00;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100F3BC00()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = enum case for ScanUseCase.beaconScan(_:);
  v5 = type metadata accessor for ScanUseCase();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for ScanMode.useCase(_:), v3);
  v6 = *(&async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + 1);
  v12 = &async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_100F3BD40;
  v8 = v0[24];
  v9 = v0[17];
  v10 = v0[13];

  return (v12)(v9, v10, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_100F3BD40()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[3];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100F3C2B8;
  }

  else
  {
    v9 = sub_100F3BEBC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100F3BEBC()
{
  v28 = *(v0 + 160);
  v26 = *(v0 + 184);
  v27 = *(v0 + 136);
  v24 = *(v0 + 120);
  v29 = *(v0 + 104);
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v19 = v1;
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v21 = *(v0 + 64);
  v6 = *(v0 + 24);
  v25 = *(v0 + 32);
  v23 = *(v0 + 232);
  v22 = *(v0 + 112);
  (*(v24 + 16))(*(v0 + 128));
  type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78);
  v20 = v2;
  AsyncCompactMapSequence.init(_:transform:)();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v4;
  (*(v3 + 16))(v1, v2, v4);
  v10 = sub_100F47F3C(&unk_1016C1170, v9, type metadata accessor for BeaconScanner);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = (v11 + v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 24) = v10;
  (*(v3 + 32))(v13 + v11, v19, v8);
  v14 = v13 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v6;
  *(v14 + 8) = v23;
  *(v13 + v12) = v26;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
  swift_retain_n();
  v15 = sub_100A838D4(0, 0, v5, &unk_1013F3C28, v13);
  (*(v3 + 8))(v20, v8);
  (*(v24 + 8))(v27, v22);
  v16 = *(v6 + 152);
  *(v6 + 152) = v15;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100F3C1F4()
{
  v1 = v0[23];
  swift_unknownObjectRelease();
  v2 = v0[26];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F3C2B8()
{
  v1 = v0[23];
  swift_unknownObjectRelease();
  v2 = v0[28];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F3C37C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C328);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = _convertErrorToNSError(_:)();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "XPC error: %{public}@!", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;

  sub_10025EDD4(0, 0, v6, &unk_1013F3C88, v14);
}

uint64_t sub_100F3C5D0()
{
  v1 = *(v0 + 16);
  sub_100F3FD90();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F3C630(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(a2 + 8);
  return _swift_task_switch(sub_100F3C65C, 0, 0);
}

uint64_t sub_100F3C65C()
{
  if (*(v0 + 32))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
  }

  **(v0 + 16) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F3C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 352) = a6;
  *(v7 + 16) = a4;
  v9 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v7 + 40) = v9;
  v10 = *(v9 - 8);
  *(v7 + 48) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v12 = type metadata accessor for DetailedDiscoveredObject(0);
  *(v7 + 64) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016C1180, &qword_1013F3C30) - 8) + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v7 + 88) = v15;
  v16 = *(v15 - 8);
  *(v7 + 96) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8) + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&unk_1016C1190, &qword_101392FF8) - 8) + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v21 = type metadata accessor for DiscoveredObject(0);
  *(v7 + 144) = v21;
  v22 = *(v21 - 8);
  *(v7 + 152) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  v24 = sub_1000BC4D4(&unk_1016C2160, &qword_10138BF78);
  *(v7 + 168) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  v26 = *(*(sub_1000BC4D4(&qword_1016973D0, &qword_10138BF60) - 8) + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  v27 = sub_1000BC4D4(&unk_1016C11A0, &qword_10138BF68);
  *(v7 + 192) = v27;
  v28 = *(v27 - 8);
  *(v7 + 200) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100F3CA68, a5, 0);
}

uint64_t sub_100F3CA68()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[2];
  sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70);
  AsyncCompactMapSequence.base.getter();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  v0[27] = type metadata accessor for Peripheral();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v7 = sub_100F47F3C(&unk_1016C1170, v6, type metadata accessor for BeaconScanner);
  v0[28] = v7;
  v8 = v0[3];
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_100F3CC2C;
  v10 = v0[26];

  return sub_1011EBA70(v8, v7);
}

uint64_t sub_100F3CC2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(v4 + 240) = a1;
  *(v4 + 248) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_100F3E30C;
  }

  else
  {
    v8 = sub_100F3CD60;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F3CD60()
{
  if (!v0[30])
  {
LABEL_11:
    (*(v0[25] + 8))(v0[26], v0[24]);
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C328);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Done scanning", v11, 2u);
    }

    v12 = v0[4];

    v13 = swift_allocObject();
    v0[41] = v13;
    *(v13 + 16) = v12;
    v14 = async function pointer to withTimeout<A>(_:block:)[1];
    swift_unknownObjectRetain();
    v15 = swift_task_alloc();
    v0[42] = v15;
    *v15 = v0;
    v15[1] = sub_100F3E0E8;

    return withTimeout<A>(_:block:)(v15, 1000000000000000000, 0, &unk_1013F3C40, v13, &type metadata for () + 8);
  }

  if (static Task<>.isCancelled.getter())
  {
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177C328);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Task cancelled!", v4, 2u);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v5 = v0[27];
  sub_100F47F3C(&unk_1016C11B0, 255, &type metadata accessor for Peripheral);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[32] = v7;
  v0[33] = v6;

  return _swift_task_switch(sub_100F3D09C, v7, v6);
}

uint64_t sub_100F3D09C()
{
  v1 = v0[30];
  v2 = v0[3];
  v0[34] = dispatch thunk of Peripheral.advertisementData.getter();

  return _swift_task_switch(sub_100F3D10C, v2, 0);
}

uint64_t sub_100F3D10C()
{
  v25 = v0;
  v1 = v0[34];
  if (v1)
  {
    v0[35] = sub_100695B6C(v1);
    v2 = v0[32];
    v3 = v0[33];

    return _swift_task_switch(sub_100F3D3DC, v2, v3);
  }

  else
  {
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v4 = v0[30];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C328);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[30];
    if (v8)
    {
      v10 = v0[6];
      v11 = v0[7];
      v12 = v0[5];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136446210;
      v24 = v14;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v10 + 8))(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing advertisementData for %{public}s!", v13, 0xCu);
      sub_100007BAC(v14);
    }

    else
    {
    }

    v19 = v0[28];
    v20 = v0[3];
    v21 = swift_task_alloc();
    v0[29] = v21;
    *v21 = v0;
    v21[1] = sub_100F3CC2C;
    v22 = v0[26];

    return sub_1011EBA70(v20, v19);
  }
}

uint64_t sub_100F3D3DC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 24);
  *(v0 + 288) = dispatch thunk of Peripheral.rssi.getter();
  *(v0 + 353) = v3;

  return _swift_task_switch(sub_100F3D450, v2, 0);
}

uint64_t sub_100F3D450()
{
  v42 = v0;
  if (*(v0 + 353))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 288);
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  sub_1002DEDAC(*(v0 + 280), v1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 136), &unk_1016C1190, &qword_101392FF8);
    if (qword_101695000 == -1)
    {
LABEL_8:
      v5 = *(v0 + 272);
      v6 = *(v0 + 240);
      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177C328);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 272);
      v12 = *(v0 + 240);
      if (v10)
      {
        v13 = *(v0 + 48);
        v14 = *(v0 + 56);
        v15 = *(v0 + 40);
        v16 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v16 = 136446466;
        v41 = v40;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;
        (*(v13 + 8))(v14, v15);
        v20 = sub_1000136BC(v17, v19, &v41);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        v21 = Dictionary.description.getter();
        v23 = v22;

        v24 = sub_1000136BC(v21, v23, &v41);

        *(v16 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v8, v9, "Could not parse advertisementData for %{public}s: %s", v16, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v36 = *(v0 + 224);
      v37 = *(v0 + 24);
      v38 = swift_task_alloc();
      *(v0 + 232) = v38;
      *v38 = v0;
      v38[1] = sub_100F3CC2C;
      v39 = *(v0 + 208);

      return sub_1011EBA70(v37, v36);
    }

LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  v25 = *(v0 + 272);
  v26 = *(v0 + 160);
  v27 = *(v0 + 136);
  v28 = *(v0 + 144);

  sub_100F48190(v27, v26, type metadata accessor for DiscoveredObject);
  v29 = (v26 + *(v28 + 36));
  v31 = *v29;
  v30 = v29[1];
  v32 = swift_task_alloc();
  *(v0 + 296) = v32;
  *v32 = v0;
  v32[1] = sub_100F3D8AC;
  v33 = *(v0 + 128);
  v34 = *(v0 + 24);

  return sub_100F404F0(v33, v31, v30);
}

uint64_t sub_100F3D8AC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100F3E550;
  }

  else
  {
    v6 = sub_100F3D9D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F3D9D8()
{
  if (*(v0 + 352) == 1)
  {
    v1 = *(v0 + 128);
    v2 = type metadata accessor for BeaconDetails(0);
    if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
    {
      v3 = (*(*(v0 + 160) + *(*(v0 + 144) + 44)) >> 4) & 3;
      if (v3 == 2 || v3 == 3)
      {
        v4 = *(v0 + 240);
        v5 = *(v0 + 96);
        v6 = *(v0 + 104);
        v8 = *(v0 + 80);
        v7 = *(v0 + 88);
        type metadata accessor for Service();
        Identifier.init(stringLiteral:)();
        (*(v5 + 56))(v8, 0, 1, v7);
        (*(v5 + 32))(v6, v8, v7);
        v9 = swift_task_alloc();
        *(v0 + 312) = v9;
        *v9 = v0;
        v9[1] = sub_100F3DDB0;
        v11 = *(v0 + 104);
        v10 = *(v0 + 112);
        v12 = *(v0 + 24);

        return sub_100F3ECA8(v10, v4, v11);
      }

      v14 = *(v0 + 80);
      (*(*(v0 + 96) + 56))(v14, 1, 1, *(v0 + 88));
      sub_10000B3A8(v14, &unk_1016C1180, &qword_1013F3C30);
    }
  }

  v15 = *(v0 + 120);
  v16 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = *(v0 + 240);
  v18 = *(v0 + 160);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 32);
  sub_100F481F8(v18, v21, type metadata accessor for DiscoveredObject);
  sub_1000D2A70(v20, v21 + *(v22 + 24), &qword_1016A62A0, &unk_101396E10);
  sub_1000D2A70(v19, v21 + *(v22 + 20), &qword_10169CBD8, &unk_1013996D0);
  v24 = sub_100F48260(v21);
  [v23 discoveredObject:v24];

  sub_100F486D8(v21, type metadata accessor for DetailedDiscoveredObject);
  sub_10000B3A8(v20, &qword_1016A62A0, &unk_101396E10);
  sub_100F486D8(v18, type metadata accessor for DiscoveredObject);
  sub_10000B3A8(v19, &qword_10169CBD8, &unk_1013996D0);
  v25 = *(v0 + 224);
  v26 = *(v0 + 24);
  v27 = swift_task_alloc();
  *(v0 + 232) = v27;
  *v27 = v0;
  v27[1] = sub_100F3CC2C;
  v28 = *(v0 + 208);

  return sub_1011EBA70(v26, v25);
}

uint64_t sub_100F3DDB0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100F3E7C4;
  }

  else
  {
    v6 = sub_100F3DEDC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F3DEDC()
{
  v2 = v0[14];
  v1 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_1000D2AD8(v2, v1, &qword_1016A62A0, &unk_101396E10);
  v3 = v0[30];
  v4 = v0[20];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[4];
  sub_100F481F8(v4, v7, type metadata accessor for DiscoveredObject);
  sub_1000D2A70(v6, v7 + *(v8 + 24), &qword_1016A62A0, &unk_101396E10);
  sub_1000D2A70(v5, v7 + *(v8 + 20), &qword_10169CBD8, &unk_1013996D0);
  v10 = sub_100F48260(v7);
  [v9 discoveredObject:v10];

  sub_100F486D8(v7, type metadata accessor for DetailedDiscoveredObject);
  sub_10000B3A8(v6, &qword_1016A62A0, &unk_101396E10);
  sub_100F486D8(v4, type metadata accessor for DiscoveredObject);
  sub_10000B3A8(v5, &qword_10169CBD8, &unk_1013996D0);
  v11 = v0[28];
  v12 = v0[3];
  v13 = swift_task_alloc();
  v0[29] = v13;
  *v13 = v0;
  v13[1] = sub_100F3CC2C;
  v14 = v0[26];

  return sub_1011EBA70(v12, v11);
}

uint64_t sub_100F3E0E8()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v9 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_100F3EA74;
  }

  else
  {
    v6 = *(v2 + 328);
    v7 = *(v2 + 24);

    v5 = sub_100F3E210;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100F3E210()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  v10 = v0[10];
  v13 = v0[9];
  v14 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100F3E30C()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[31];
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C328);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during scan: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[26];
  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[20];
  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[13];
  v17 = v0[10];
  v20 = v0[9];
  v21 = v0[7];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F3E550()
{
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[20];

  (*(v3 + 8))(v2, v4);
  sub_100F486D8(v5, type metadata accessor for DiscoveredObject);
  v6 = v0[38];
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C328);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = _convertErrorToNSError(_:)();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error during scan: %{public}@", v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v13 = v0[26];
  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[20];
  v18 = v0[16];
  v17 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v22 = v0[10];
  v25 = v0[9];
  v26 = v0[7];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100F3E7C4()
{
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];

  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v2, v4);
  sub_100F486D8(v5, type metadata accessor for DiscoveredObject);
  sub_10000B3A8(v6, &qword_10169CBD8, &unk_1013996D0);
  v10 = v0[40];
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C328);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = _convertErrorToNSError(_:)();
    *(v14 + 4) = v16;
    *v15 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Error during scan: %{public}@", v14, 0xCu);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v17 = v0[26];
  v18 = v0[22];
  v19 = v0[23];
  v20 = v0[20];
  v22 = v0[16];
  v21 = v0[17];
  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[13];
  v26 = v0[10];
  v29 = v0[9];
  v30 = v0[7];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100F3EA74()
{
  v1 = v0[41];

  v2 = v0[43];
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C328);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during scan: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[26];
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[20];
  v14 = v0[16];
  v13 = v0[17];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  v18 = v0[10];
  v21 = v0[9];
  v22 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100F3ECA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  v5 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v4[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v9 = *(v8 + 64) + 15;
  v4[16] = swift_task_alloc();
  v10 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v4[17] = v10;
  v11 = *(v10 - 8);
  v4[18] = v11;
  v12 = *(v11 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  type metadata accessor for Peripheral();
  sub_100F47F3C(&unk_1016C11B0, 255, &type metadata accessor for Peripheral);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100F3EEB8, v14, v13);
}

uint64_t sub_100F3EEB8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  *(v0 + 224) = Peripheral.isConnectable.getter() & 1;

  return _swift_task_switch(sub_100F3EF2C, v1, 0);
}

uint64_t sub_100F3EF2C()
{
  if (*(v0 + 224) != 1)
  {
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C328);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Skipping metadata read since not connectable", v19, 2u);
    }

    v20 = *(v0 + 40);

    v21 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    goto LABEL_11;
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  Peripheral.id.getter();
  swift_beginAccess();
  v4 = *(v2 + 144);
  if (!*(v4 + 16))
  {
    goto LABEL_15;
  }

  v5 = *(v0 + 128);

  v6 = sub_100772CAC(v5);
  if ((v7 & 1) == 0)
  {

LABEL_15:
    v30 = *(v0 + 64);
    v31 = *(v0 + 72);
    v48 = *(v0 + 48);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v33 = sub_100F47F3C(&unk_1016C1170, v32, type metadata accessor for BeaconScanner);
    v34 = swift_task_alloc();
    *(v0 + 200) = v34;
    *(v34 + 16) = v30;
    *(v34 + 24) = v48;
    *(v34 + 40) = v31;
    v35 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v36 = swift_task_alloc();
    *(v0 + 208) = v36;
    *v36 = v0;
    v36[1] = sub_100F3F870;
    v37 = *(v0 + 80);
    v38 = *(v0 + 40);
    v39 = sub_100F48738;
    goto LABEL_16;
  }

  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 136);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 112);
  sub_100F481F8(*(v4 + 56) + *(*(v0 + 144) + 72) * v6, v8, type metadata accessor for BeaconScanner.AISLookupState);
  (*(v12 + 8))(v11, v13);

  sub_100F481F8(v8, v9, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v0 + 152);
    v15 = *(v0 + 40);
    sub_100F486D8(*(v0 + 160), type metadata accessor for BeaconScanner.AISLookupState);
    sub_1000D2AD8(v14, v15, &qword_1016A62A0, &unk_101396E10);
LABEL_11:
    v23 = *(v0 + 152);
    v22 = *(v0 + 160);
    v24 = *(v0 + 128);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    v27 = *(v0 + 88);

    v28 = *(v0 + 8);

    return v28();
  }

  sub_100F486D8(*(v0 + 152), type metadata accessor for BeaconScanner.AISLookupState);
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  *(v0 + 168) = sub_1000076D4(v40, qword_10177C328);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Already pending -- waiting for continuation", v43, 2u);
  }

  v30 = *(v0 + 64);
  v44 = *(v0 + 48);

  v33 = sub_100F47F3C(&unk_1016C1170, v45, type metadata accessor for BeaconScanner);
  v34 = swift_task_alloc();
  *(v0 + 176) = v34;
  *(v34 + 16) = v30;
  *(v34 + 24) = v44;
  v46 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v47 = swift_task_alloc();
  *(v0 + 184) = v47;
  *v47 = v0;
  v47[1] = sub_100F3F4D0;
  v38 = *(v0 + 104);
  v37 = *(v0 + 80);
  v39 = sub_100F48744;
LABEL_16:

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v38, v30, v33, 0xD000000000000028, 0x8000000101374740, v39, v34, v37);
}

uint64_t sub_100F3F4D0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 192) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_100F3FA04;
  }

  else
  {
    v7 = sub_100F3F618;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F3F618()
{
  v26 = v0;
  v1 = v0[21];
  sub_1000D2A70(v0[13], v0[12], &qword_1016A62A0, &unk_101396E10);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  v6 = v0[12];
  if (v4)
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v24 = v5;
    v25 = v10;
    sub_1000D2A70(v6, v7, &qword_1016A62A0, &unk_101396E10);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_10000B3A8(v6, &qword_1016A62A0, &unk_101396E10);
    v14 = sub_1000136BC(v11, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Continuation for pending resumed -- %s", v9, 0xCu);
    sub_100007BAC(v10);

    v15 = v24;
  }

  else
  {

    sub_10000B3A8(v6, &qword_1016A62A0, &unk_101396E10);
    v15 = v5;
  }

  sub_100F486D8(v15, type metadata accessor for BeaconScanner.AISLookupState);
  sub_1000D2AD8(v0[13], v0[5], &qword_1016A62A0, &unk_101396E10);
  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[16];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[11];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100F3F870()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {
    v4 = v3[8];

    return _swift_task_switch(sub_100F3FAC8, v4, 0);
  }

  else
  {
    v5 = v3[25];

    v7 = v3[19];
    v6 = v3[20];
    v8 = v3[16];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[11];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_100F3FA04()
{
  sub_100F486D8(v0[20], type metadata accessor for BeaconScanner.AISLookupState);
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100F3FAC8()
{
  v1 = v0[25];

  v2 = v0[27];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100F3FB98()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_100F3FCB0;
  v2 = swift_continuation_init();
  v0[17] = sub_1000BC4D4(&qword_1016A2390, &qword_1013AAC28);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100F3A968;
  v0[13] = &unk_10165C228;
  v0[14] = v2;
  [v1 discoveryFinished:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100F3FCB0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(Database.await(state:), 0, 0);
}

uint64_t sub_100F3FD90()
{
  v1 = v0;
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C328);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating scanTask because client session was invalidated", v5, 2u);
  }

  if (*(v1 + 152))
  {
    v6 = *(v1 + 152);

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v7 = *(v1 + 152);
  }

  *(v1 + 152) = 0;
}

id sub_100F3FED8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169CBD8, &unk_1013996D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v22 - v4;
  v6 = type metadata accessor for BeaconDetails(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DetailedDiscoveredObject(0);
  sub_1000D2A70(a1 + *(v11 + 20), v5, &qword_10169CBD8, &unk_1013996D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_10000B3A8(v5, &qword_10169CBD8, &unk_1013996D0);
    return 0;
  }

  else
  {
    sub_100F48190(v5, v10, type metadata accessor for BeaconDetails);
    v13 = &v10[*(type metadata accessor for BeaconKeyManager.IndexInformation(0) + 20)];
    v14 = *(v13 + 3);
    v15 = *(v13 + 4);
    sub_1000035D0(v13, v14);
    LOBYTE(v14) = sub_10002BD40(v14, v15);
    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v18 = *(v13 + 4);
    sub_1000035D0(v13, *(v13 + 3));
    v19 = *(v18 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v14)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    v21 = [v16 initWithBeaconIdentifier:v17.super.isa sequence:v20 index:v22[1]];

    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_100F486D8(v10, type metadata accessor for BeaconDetails);
    return v21;
  }
}

id sub_100F40164(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for AccessoryMetadata(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DetailedDiscoveredObject(0);
  sub_1000D2A70(a1 + *(v12 + 24), v6, &qword_1016A62A0, &unk_101396E10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_10000B3A8(v6, &qword_1016A62A0, &unk_101396E10);
    return 0;
  }

  else
  {
    sub_100F48190(v6, v11, type metadata accessor for AccessoryMetadata);
    v14 = &v11[v7[5]];
    v15 = *v14;
    v16 = *(v14 + 1);
    v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v45 = v1;
    isa = v17.super.isa;
    v18 = &v11[v7[6]];
    if (*(v18 + 1))
    {
      v19 = *v18;
      v20 = *(v18 + 1);
    }

    v21 = String._bridgeToObjectiveC()();

    v22 = &v11[v7[7]];
    if (*(v22 + 1))
    {
      v23 = *v22;
      v24 = *(v22 + 1);
    }

    v25 = String._bridgeToObjectiveC()();

    v26 = *&v11[v7[8]];
    sub_10098E010();
    v27 = String._bridgeToObjectiveC()();

    v28 = &v11[v7[10]];
    if ((v28[4] & 1) == 0)
    {
      v29 = *v28;
      sub_10098E010();
    }

    v30 = String._bridgeToObjectiveC()();

    v31 = v7[13];
    v32 = &v11[v7[12]];
    if (v32[8])
    {
      v33 = 0;
    }

    else
    {
      v33 = *v32;
    }

    v34 = &v11[v31];
    v35 = *&v11[v31];
    if (v34[4])
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    v37 = v7[15];
    if (v11[v7[14]] == 4)
    {
      v38 = 0;
    }

    else
    {
      v38 = v11[v7[14]];
    }

    if (v11[v37] == 5)
    {
      v39 = 0;
    }

    else
    {
      v39 = v11[v37];
    }

    v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    BYTE5(v44) = v39;
    BYTE4(v44) = v38;
    LODWORD(v44) = v36;
    v41 = isa;
    v42 = v21;
    v43 = [v40 initWithProductData:isa manufacturerName:v21 modelName:v25 firmwareVersion:v27 protocolVersion:v30 accessoryCategory:v33 accessoryCapabilities:v44 batteryType:? batteryState:?];

    sub_100F486D8(a1, type metadata accessor for DetailedDiscoveredObject);
    sub_100F486D8(v11, type metadata accessor for AccessoryMetadata);
    return v43;
  }
}

uint64_t sub_100F404F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_100F40638, 0, 0);
}

uint64_t sub_100F40638()
{
  v1 = *(*(v0 + 48) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100F4065C, v1, 0);
}

uint64_t sub_100F4065C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 144) + 136);
  *(v3 + 152) = v4;
  if (v4)
  {
    a1 = sub_100F40688;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, v4, a3);
}

uint64_t sub_100F40688()
{
  v1 = v0[19];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_1000BC4D4(&qword_10169C980, &qword_1013C4A70);
  v5 = sub_100F47F3C(&unk_1016C1130, 255, type metadata accessor for BeaconKeyServiceBuilder);
  v6 = swift_task_alloc();
  v0[20] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_100F407D8;
  v9 = v0[19];
  v10 = v0[7];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v10, v4, v9, v5, &unk_1013C4A78, v6, v10);
}

uint64_t sub_100F407D8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v6 = *v0;

  v4 = *(v1 + 152);

  return _swift_task_switch(sub_100F4090C, v4, 0);
}

uint64_t sub_100F40930()
{
  v1 = v0[22];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    v3 = v0[17];
    v4 = v0[3];
    v5 = *(v0[13] + 80);
    v6 = v0[22];
    sub_100F481F8(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_100F48190(v2, v3, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100F48190(v3, v4, type metadata accessor for BeaconKeyManager.IndexInformation);
    v7 = v0[16];
    v8 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    v12 = v0[10];
    v11 = v0[11];
    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[3];
    v16 = type metadata accessor for BeaconDetails(0);
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[5];

    v20 = v0[5];
    v21 = v0[6];
    v22 = v0[4];
    if ((v19 & 0x2000000000000000) != 0)
    {
      v23 = swift_allocObject();
      v0[23] = v23;
      v23[2] = v21;
      v23[3] = v22;
      v23[4] = v20 & 0xDFFFFFFFFFFFFFFFLL;

      sub_100029784(v22, v20);
      v29 = async function pointer to unsafeBlocking<A>(_:)[1];
      v30 = swift_task_alloc();
      v0[24] = v30;
      *v30 = v0;
      v30[1] = sub_100F40C4C;
      v26 = v0[9];
      v27 = v0[7];
      v28 = sub_100F416C8;
    }

    else
    {
      v23 = swift_allocObject();
      v0[25] = v23;
      v23[2] = v21;
      v23[3] = v22;
      v23[4] = v20;

      sub_100029784(v22, v20);
      v24 = async function pointer to unsafeBlocking<A>(_:)[1];
      v25 = swift_task_alloc();
      v0[26] = v25;
      *v25 = v0;
      v25[1] = sub_100F40F1C;
      v26 = v0[11];
      v27 = v0[7];
      v28 = sub_100F416D4;
    }

    return unsafeBlocking<A>(_:)(v26, v28, v23, v27);
  }
}

uint64_t sub_100F40C4C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_100F40D64, 0, 0);
}

uint64_t sub_100F40D64()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  sub_1000D2AD8(v0[9], v3, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[8], &unk_1016C1120, &qword_1013C49D0);
    v4 = 1;
  }

  else
  {
    v5 = v0[14];
    v6 = v0[3];
    sub_100F48190(v0[8], v5, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100F48190(v5, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v4 = 0;
  }

  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v18 = v0[8];
  v14 = v0[3];
  v15 = type metadata accessor for BeaconDetails(0);
  (*(*(v15 - 8) + 56))(v14, v4, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100F40F1C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return _swift_task_switch(sub_100F41034, 0, 0);
}

uint64_t sub_100F41034()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  sub_1000D2AD8(v0[11], v3, &unk_1016C1120, &qword_1013C49D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v0[10], &unk_1016C1120, &qword_1013C49D0);
    v4 = 1;
  }

  else
  {
    v5 = v0[15];
    v6 = v0[3];
    sub_100F48190(v0[10], v5, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100F48190(v5, v6, type metadata accessor for BeaconKeyManager.IndexInformation);
    v4 = 0;
  }

  v8 = v0[16];
  v7 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v18 = v0[8];
  v14 = v0[3];
  v15 = type metadata accessor for BeaconDetails(0);
  (*(*(v15 - 8) + 56))(v14, v4, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100F411EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = *(a1 + 120);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = sub_1012DD334(a2, a3, v11);
  v15 = v14[2];
  if (v15)
  {
    v16 = v15 - 1;
    v17 = v14;
    v18 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v19 = *(v18 - 8);
    sub_100F481F8(v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, a4, type metadata accessor for BeaconKeyManager.IndexInformation);

    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    return (*(v19 + 56))(a4, 0, 1, v18);
  }

  else
  {

    sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
    v21 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    return (*(*(v21 - 8) + 56))(a4, 1, 1, v21);
  }
}

uint64_t sub_100F413FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 120);
  v6 = sub_1012DCA30(a2, a3);
  if (v6[2])
  {
    v7 = v6;
    v8 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v15 = *(v8 - 8);
    sub_100F481F8(v7 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), a4, type metadata accessor for BeaconKeyManager.IndexInformation);

    v9 = *(v15 + 56);
    v10 = a4;
    v11 = 0;
    v12 = v8;
  }

  else
  {

    v13 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a4;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

uint64_t sub_100F4151C()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  v5 = v0[18];

  v6 = v0[19];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100F415C0()
{
  sub_100F41664();
  if (v0 <= 0x3F)
  {
    sub_100F48B20(319, &unk_1016C10F0, type metadata accessor for AccessoryMetadata, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100F41664()
{
  if (!qword_1016C10E0)
  {
    sub_1000BC580(&qword_1016B3CC0, &qword_1013D4A40);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016C10E0);
    }
  }
}

uint64_t sub_100F416E0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  Peripheral.id.getter();
  sub_100F417CC(a1, v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100F417CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a1;
  v61 = sub_1000BC4D4(&qword_1016B3CC0, &qword_1013D4A40);
  v55 = *(v61 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v61);
  v54 = &v52 - v6;
  v7 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v53 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v58 = &v52 - v15;
  v16 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_1000BC4D4(&qword_101699890, &qword_101392010);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v52 - v25;
  swift_beginAccess();
  v27 = *(v2 + 144);
  v28 = *(v27 + 16);
  v56 = v16;
  v57 = v8;
  if (v28)
  {

    v29 = sub_100772CAC(a2);
    if (v30)
    {
      sub_100F481F8(*(v27 + 56) + v8[9] * v29, v26, type metadata accessor for BeaconScanner.AISLookupState);

      v31 = v8[7];
      v31(v26, 0, 1, v7);
      sub_10000B3A8(v26, &qword_101699890, &qword_101392010);
      goto LABEL_6;
    }

    v16 = v56;
  }

  v31 = v8[7];
  v31(v26, 1, 1, v7);
  sub_10000B3A8(v26, &qword_101699890, &qword_101392010);
  (*(v59 + 16))(v19, a2, v16);
  *v24 = _swiftEmptyArrayStorage;
  swift_storeEnumTagMultiPayload();
  v31(v24, 0, 1, v7);
  swift_beginAccess();
  sub_1001E1824(v24, v19);
  swift_endAccess();
LABEL_6:
  v32 = *(v3 + 144);
  if (!*(v32 + 16))
  {
LABEL_11:
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177C328);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Expected to be in .pending state!", v42, 2u);
    }

    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error);
    v43 = swift_allocError();
    v45 = v44;
    v46 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
    (*(*(v46 - 8) + 56))(v45, 1, 2, v46);
    v62 = v43;
    return CheckedContinuation.resume(throwing:)();
  }

  v33 = *(v3 + 144);

  v34 = sub_100772CAC(a2);
  if ((v35 & 1) == 0)
  {

    goto LABEL_11;
  }

  v36 = a2;
  sub_100F481F8(*(v32 + 56) + v57[9] * v34, v14, type metadata accessor for BeaconScanner.AISLookupState);

  v37 = v58;
  sub_100F48190(v14, v58, type metadata accessor for BeaconScanner.AISLookupState);
  v38 = v53;
  sub_100F481F8(v37, v53, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100F486D8(v37, type metadata accessor for BeaconScanner.AISLookupState);
    sub_100F486D8(v38, type metadata accessor for BeaconScanner.AISLookupState);
    goto LABEL_11;
  }

  v48 = *v38;
  v49 = v61;
  (*(v55 + 16))(v54, v60, v61);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_100A5ED8C(0, v48[2] + 1, 1, v48);
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_100A5ED8C(v50 > 1, v51 + 1, 1, v48);
  }

  v48[2] = v51 + 1;
  (*(v55 + 32))(v48 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v51, v54, v49);
  (*(v59 + 16))(v19, v36, v56);
  *v24 = v48;
  swift_storeEnumTagMultiPayload();
  v31(v24, 0, 1, v7);
  swift_beginAccess();
  sub_1001E1824(v24, v19);
  swift_endAccess();
  return sub_100F486D8(v58, type metadata accessor for BeaconScanner.AISLookupState);
}

uint64_t sub_100F41F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a1;
  v6 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  Peripheral.id.getter();
  sub_100F417CC(v28, v19);
  (*(v16 + 8))(v19, v15);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  (*(v7 + 16))(v10, v29, v6);
  v22 = sub_100F47F3C(&unk_1016C1170, v21, type metadata accessor for BeaconScanner);
  v23 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = a2;
  *(v24 + 3) = v22;
  v25 = v27;
  *(v24 + 4) = a2;
  *(v24 + 5) = v25;
  (*(v7 + 32))(&v24[v23], v10, v6);
  *&v24[(v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
  swift_retain_n();

  sub_10025EDD4(0, 0, v14, &unk_1013F3C58, v24);
}

uint64_t sub_100F42288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v9 = type metadata accessor for TimeoutError();
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016B3CC0, &qword_1013D4A40);
  v7[20] = v12;
  v13 = *(v12 - 8);
  v7[21] = v13;
  v14 = *(v13 + 64) + 15;
  v7[22] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101699890, &qword_101392010) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v7[25] = v17;
  v18 = *(v17 - 8);
  v7[26] = v18;
  v19 = *(v18 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v20 = type metadata accessor for BeaconScanner.AISLookupState(0);
  v7[29] = v20;
  v21 = *(v20 - 8);
  v7[30] = v21;
  v22 = *(v21 + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v23 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v7[33] = v23;
  v24 = *(v23 - 8);
  v7[34] = v24;
  v7[35] = *(v24 + 64);
  v7[36] = swift_task_alloc();
  v25 = sub_1000BC4D4(&unk_1016C11C0, &qword_1013F3C60);
  v7[37] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();

  return _swift_task_switch(sub_100F425D4, a4, 0);
}

uint64_t sub_100F425D4()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  (*(v4 + 16))(v1, v0[15], v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[42] = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v5;
  v11 = async function pointer to withTimeout<A>(_:block:)[1];

  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_100F42750;
  v13 = v0[40];
  v14 = v0[37];

  return withTimeout<A>(_:block:)(v13, 0xA055690D9DB80000, 1, &unk_1013F3C70, v10, v14);
}

uint64_t sub_100F42750()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_100F43084;
  }

  else
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 104);

    v5 = sub_100F42878;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100F42878()
{
  v87 = v0;
  sub_1000D2AD8(v0[40], v0[41], &unk_1016C11C0, &qword_1013F3C60);
  v1 = v0[28];
  v3 = v0[13];
  v2 = v0[14];
  Peripheral.id.getter();
  swift_beginAccess();
  v4 = *(v3 + 144);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = v0[28];
  v6 = *(v3 + 144);

  v7 = sub_100772CAC(v5);
  if ((v8 & 1) == 0)
  {

LABEL_6:
    (*(v0[26] + 8))(v0[28], v0[25]);
    goto LABEL_7;
  }

  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[29];
  v12 = v0[28];
  v13 = v0[25];
  v14 = v0[26];
  sub_100F481F8(*(v4 + 56) + *(v0[30] + 72) * v7, v9, type metadata accessor for BeaconScanner.AISLookupState);
  v15 = v13;
  v16 = *(v14 + 8);
  v16(v12, v15);

  sub_100F481F8(v9, v10, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v0[31];
    sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
    sub_100F486D8(v17, type metadata accessor for BeaconScanner.AISLookupState);
LABEL_7:
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C328);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Expected to be in pending state", v21, 2u);
    }

    goto LABEL_12;
  }

  v32 = v0[37];
  v33 = *v0[31];
  sub_1000D2A70(v0[41], v0[39], &unk_1016C11C0, &qword_1013F3C60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = v0[39];
  v85 = v33;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = *v35;
    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v37 = v0[14];
    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177C328);

    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v0[27];
      v42 = v0[25];
      v82 = v40;
      v43 = v0[14];
      v44 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v86 = v80;
      *v44 = 136315394;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v16(v41, v42);
      v48 = sub_1000136BC(v45, v47, &v86);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2112;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v49;
      *v78 = v49;
      _os_log_impl(&_mh_execute_header, v39, v82, "Failure reading metadata for %s: %@", v44, 0x16u);
      sub_10000B3A8(v78, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v80);
    }

    v50 = v0[29];
    v51 = v0[30];
    v52 = v0[27];
    v53 = v0[23];
    v54 = v0[14];
    Peripheral.id.getter();
    v55 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v55 - 8) + 56))(v53, 1, 1, v55);
    swift_storeEnumTagMultiPayload();
    (*(v51 + 56))(v53, 0, 1, v50);
    swift_beginAccess();
    sub_1001E1824(v53, v52);
    swift_endAccess();
  }

  else
  {
    v56 = v0[29];
    v57 = v0[30];
    v58 = v0[27];
    v60 = v0[23];
    v59 = v0[24];
    v61 = v0[14];
    sub_1000D2AD8(v35, v59, &qword_1016A62A0, &unk_101396E10);
    Peripheral.id.getter();
    sub_1000D2A70(v59, v60, &qword_1016A62A0, &unk_101396E10);
    swift_storeEnumTagMultiPayload();
    (*(v57 + 56))(v60, 0, 1, v56);
    swift_beginAccess();
    sub_1001E1824(v60, v58);
    swift_endAccess();
    sub_10000B3A8(v59, &qword_1016A62A0, &unk_101396E10);
  }

  v62 = *(v85 + 16);
  if (v62)
  {
    v63 = v0[21];
    v65 = *(v63 + 16);
    v63 += 16;
    v64 = v65;
    v66 = v85 + ((*(v63 + 64) + 32) & ~*(v63 + 64));
    v67 = (v63 - 8);
    v68 = *(v63 + 56);
    do
    {
      v71 = v0[41];
      v73 = v0[37];
      v72 = v0[38];
      v64(v0[22], v66, v0[20]);
      sub_1000D2A70(v71, v72, &unk_1016C11C0, &qword_1013F3C60);
      v74 = swift_getEnumCaseMultiPayload();
      v75 = v0[38];
      if (v74 == 1)
      {
        v69 = v0[22];
        v70 = v0[20];
        v0[12] = *v75;
        CheckedContinuation.resume(throwing:)();
        (*v67)(v69, v70);
      }

      else
      {
        v76 = v0[22];
        v77 = v0[20];
        sub_1000D2AD8(v75, v0[24], &qword_1016A62A0, &unk_101396E10);
        CheckedContinuation.resume(returning:)();
        (*v67)(v76, v77);
      }

      v66 += v68;
      --v62;
    }

    while (v62);
  }

  sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
LABEL_12:
  v22 = v0[40];
  v24 = v0[38];
  v23 = v0[39];
  v25 = v0[36];
  v27 = v0[31];
  v26 = v0[32];
  v29 = v0[27];
  v28 = v0[28];
  v79 = v0[24];
  v81 = v0[23];
  v83 = v0[22];
  v84 = v0[19];
  sub_10000B3A8(v0[41], &unk_1016C11C0, &qword_1013F3C60);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100F43084()
{
  v140 = v0;
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[19];
  v4 = v0[17];

  v0[11] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v5 = &qword_101695000;
  if (swift_dynamicCast())
  {
    v6 = v0[44];

    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v7 = v0[14];
    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C328);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[26];
      v11 = v0[27];
      v13 = v0[25];
      v14 = v0[14];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v139 = v16;
      *v15 = 136446210;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v12 + 8))(v11, v13);
      v20 = sub_1000136BC(v17, v19, &v139);
      v5 = &qword_101695000;

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "Timeout reading metadata for %{public}s!", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v21 = v0[41];
    v22 = v0[37];
    v24 = v0[18];
    v23 = v0[19];
    v25 = v0[17];
    v26 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    swift_storeEnumTagMultiPayload();
    (*(v24 + 8))(v23, v25);
    v27 = v0[11];
  }

  else
  {
    v28 = v0[11];

    if (qword_101695000 != -1)
    {
      swift_once();
    }

    v29 = v0[44];
    v30 = v0[14];
    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C328);

    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[44];
    if (v34)
    {
      v37 = v0[26];
      v36 = v0[27];
      v38 = v0[25];
      v132 = v0[44];
      v39 = v0[14];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v139 = v134;
      *v40 = 136446466;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v37 + 8))(v36, v38);
      v5 = &qword_101695000;
      v45 = sub_1000136BC(v42, v44, &v139);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      v46 = _convertErrorToNSError(_:)();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error reading metadata for %{public}s: %{public}@", v40, 0x16u);
      sub_10000B3A8(v41, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v134);
    }

    else
    {
    }

    v47 = v0[41];
    v48 = v0[37];
    v49 = type metadata accessor for AccessoryMetadata(0);
    (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
    swift_storeEnumTagMultiPayload();
  }

  v50 = v0[28];
  v52 = v0[13];
  v51 = v0[14];
  Peripheral.id.getter();
  swift_beginAccess();
  v53 = *(v52 + 144);
  if (!*(v53 + 16))
  {
    goto LABEL_18;
  }

  v54 = v0[28];
  v55 = *(v52 + 144);

  v56 = sub_100772CAC(v54);
  if ((v57 & 1) == 0)
  {

LABEL_18:
    (*(v0[26] + 8))(v0[28], v0[25]);
    goto LABEL_19;
  }

  v59 = v0[31];
  v58 = v0[32];
  v60 = v0[29];
  v61 = v0[28];
  v62 = v0[25];
  v63 = v0[26];
  sub_100F481F8(*(v53 + 56) + *(v0[30] + 72) * v56, v58, type metadata accessor for BeaconScanner.AISLookupState);
  v64 = v62;
  v65 = *(v63 + 8);
  v65(v61, v64);

  sub_100F481F8(v58, v59, type metadata accessor for BeaconScanner.AISLookupState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v81 = v0[37];
    v82 = *v0[31];
    sub_1000D2A70(v0[41], v0[39], &unk_1016C11C0, &qword_1013F3C60);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v84 = v0[39];
    v137 = v82;
    if (EnumCaseMultiPayload == 1)
    {
      v85 = *v84;
      if (qword_101695000 != -1)
      {
        swift_once();
      }

      v86 = v0[14];
      v87 = type metadata accessor for Logger();
      sub_1000076D4(v87, qword_10177C328);

      swift_errorRetain();
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = v0[27];
        v91 = v0[25];
        v131 = v89;
        v92 = v0[14];
        v93 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v139 = v130;
        *v93 = 136315394;
        Peripheral.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        v65(v90, v91);
        v97 = sub_1000136BC(v94, v96, &v139);

        *(v93 + 4) = v97;
        *(v93 + 12) = 2112;
        swift_errorRetain();
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v93 + 14) = v98;
        *v129 = v98;
        _os_log_impl(&_mh_execute_header, v88, v131, "Failure reading metadata for %s: %@", v93, 0x16u);
        sub_10000B3A8(v129, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v130);
      }

      v99 = v0[29];
      v100 = v0[30];
      v101 = v0[27];
      v102 = v0[23];
      v103 = v0[14];
      Peripheral.id.getter();
      v104 = type metadata accessor for AccessoryMetadata(0);
      (*(*(v104 - 8) + 56))(v102, 1, 1, v104);
      swift_storeEnumTagMultiPayload();
      (*(v100 + 56))(v102, 0, 1, v99);
      swift_beginAccess();
      sub_1001E1824(v102, v101);
      swift_endAccess();

      v105 = v137;
      v106 = *(v137 + 16);
      if (!v106)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v123 = v0[29];
      v122 = v0[30];
      v124 = v0[27];
      v126 = v0[23];
      v125 = v0[24];
      v127 = v0[14];
      sub_1000D2AD8(v84, v125, &qword_1016A62A0, &unk_101396E10);
      Peripheral.id.getter();
      sub_1000D2A70(v125, v126, &qword_1016A62A0, &unk_101396E10);
      swift_storeEnumTagMultiPayload();
      v128 = v123;
      v105 = v137;
      (*(v122 + 56))(v126, 0, 1, v128);
      swift_beginAccess();
      sub_1001E1824(v126, v124);
      swift_endAccess();
      sub_10000B3A8(v125, &qword_1016A62A0, &unk_101396E10);
      v106 = *(v137 + 16);
      if (!v106)
      {
LABEL_40:

        sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
        goto LABEL_24;
      }
    }

    v107 = v0[21];
    v109 = *(v107 + 16);
    v107 += 16;
    v108 = v109;
    v110 = v105 + ((*(v107 + 64) + 32) & ~*(v107 + 64));
    v111 = (v107 - 8);
    v112 = *(v107 + 56);
    do
    {
      v115 = v0[41];
      v117 = v0[37];
      v116 = v0[38];
      v108(v0[22], v110, v0[20]);
      sub_1000D2A70(v115, v116, &unk_1016C11C0, &qword_1013F3C60);
      v118 = swift_getEnumCaseMultiPayload();
      v119 = v0[38];
      if (v118 == 1)
      {
        v113 = v0[22];
        v114 = v0[20];
        v0[12] = *v119;
        CheckedContinuation.resume(throwing:)();
        (*v111)(v113, v114);
      }

      else
      {
        v120 = v0[22];
        v121 = v0[20];
        sub_1000D2AD8(v119, v0[24], &qword_1016A62A0, &unk_101396E10);
        CheckedContinuation.resume(returning:)();
        (*v111)(v120, v121);
      }

      v110 += v112;
      --v106;
    }

    while (v106);
    goto LABEL_40;
  }

  v66 = v0[31];
  sub_100F486D8(v0[32], type metadata accessor for BeaconScanner.AISLookupState);
  sub_100F486D8(v66, type metadata accessor for BeaconScanner.AISLookupState);
  v5 = &qword_101695000;
LABEL_19:
  if (*v5 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000076D4(v67, qword_10177C328);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Expected to be in pending state", v70, 2u);
  }

LABEL_24:
  v71 = v0[40];
  v73 = v0[38];
  v72 = v0[39];
  v74 = v0[36];
  v76 = v0[31];
  v75 = v0[32];
  v78 = v0[27];
  v77 = v0[28];
  v133 = v0[24];
  v135 = v0[23];
  v136 = v0[22];
  v138 = v0[19];
  sub_10000B3A8(v0[41], &unk_1016C11C0, &qword_1013F3C60);

  v79 = v0[1];

  return v79();
}

uint64_t sub_100F43DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v4[6] = swift_task_alloc();
  v10 = type metadata accessor for AccessoryMetadata(0);
  v4[7] = v10;
  v11 = *(v10 - 8);
  v4[8] = v11;
  v12 = *(v11 + 64) + 15;
  v4[9] = swift_task_alloc();
  v13 = swift_task_alloc();
  v4[10] = v13;
  v14 = swift_task_alloc();
  v4[11] = v14;
  *v14 = v4;
  v14[1] = sub_100F43F40;

  return sub_100F44414(v13, a3, a4);
}

uint64_t sub_100F43F40()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100F4439C;
  }

  else
  {
    v3 = sub_100F44054;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F44054()
{
  v30 = v0;
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C328);
  sub_100F481F8(v2, v1, type metadata accessor for AccessoryMetadata);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = v0[5];
    v10 = v0[6];
    v11 = v0[3];
    v12 = v0[4];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v12);
    v17 = sub_1000136BC(v14, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_100230E34();
    v20 = v19;
    sub_100F486D8(v8, type metadata accessor for AccessoryMetadata);
    v21 = sub_1000136BC(v18, v20, &v29);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Read metadata for %s: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100F486D8(v8, type metadata accessor for AccessoryMetadata);
  }

  v22 = v0[9];
  v23 = v0[7];
  v24 = v0[8];
  v25 = v0[6];
  v26 = v0[2];
  sub_100F48190(v0[10], v26, type metadata accessor for AccessoryMetadata);
  (*(v24 + 56))(v26, 0, 1, v23);
  sub_1000BC4D4(&unk_1016C11C0, &qword_1013F3C60);
  swift_storeEnumTagMultiPayload();

  v27 = v0[1];

  return v27();
}

uint64_t sub_100F4439C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_100F44414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v4[22] = v11;
  v12 = *(v11 - 8);
  v4[23] = v12;
  v13 = *(v12 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[27] = v14;
  v15 = *(v14 - 8);
  v4[28] = v15;
  v16 = *(v15 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v17 = type metadata accessor for ContinuousClock.Instant();
  v4[33] = v17;
  v18 = *(v17 - 8);
  v4[34] = v18;
  v19 = *(v18 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v20 = type metadata accessor for ContinuousClock();
  v4[39] = v20;
  v21 = *(v20 - 8);
  v4[40] = v21;
  v22 = *(v21 + 64) + 15;
  v4[41] = swift_task_alloc();

  return _swift_task_switch(sub_100F44728, v3, 0);
}

uint64_t sub_100F44728()
{
  v1 = v0[41];
  ContinuousClock.init()();
  static Task<>.checkCancellation()();
  v2 = v0[41];
  v3 = v0[38];
  ContinuousClock.now.getter();
  v4 = *(&async function pointer to dispatch thunk of Peripheral.connect() + 1);
  v8 = (&async function pointer to dispatch thunk of Peripheral.connect() + async function pointer to dispatch thunk of Peripheral.connect());
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_100F44848;
  v6 = v0[13];

  return v8();
}

uint64_t sub_100F44848()
{
  v2 = *(*v1 + 336);
  v3 = *v1;
  v3[43] = v0;

  if (v0)
  {
    v4 = v3[15];

    return _swift_task_switch(sub_100F47108, v4, 0);
  }

  else
  {
    v5 = *(&async function pointer to dispatch thunk of Peripheral.subscript.getter + 1);
    v10 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
    v6 = swift_task_alloc();
    v3[44] = v6;
    *v6 = v3;
    v6[1] = sub_100F449D4;
    v7 = v3[13];
    v8 = v3[14];

    return v10(v8);
  }
}

uint64_t sub_100F449D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = v1;

  v7 = *(v3 + 120);
  if (v1)
  {
    v8 = sub_100F471CC;
  }

  else
  {
    v8 = sub_100F44B08;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100F44B08()
{
  v1 = v0[46];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[45];
    (*(v0[34] + 8))(v0[38], v0[33]);

    v0[84] = v1;
    v3 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v17 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v4 = swift_task_alloc();
    v0[85] = v4;
    *v4 = v0;
    v4[1] = sub_100F46E98;
    v5 = v0[13];

    return v17();
  }

  else
  {
    v7 = v0[28];
    sub_101123C58(0, 11, 0);
    type metadata accessor for Characteristic();
    for (i = 0; i != 11; ++i)
    {
      v9 = v0[32];
      *(&off_101607618 + i + 32);
      Identifier.init(stringLiteral:)();
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_101123C58(v10 > 1, v11 + 1, 1);
      }

      v0[47] = _swiftEmptyArrayStorage;
      v12 = v0[32];
      v13 = v0[27];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v7 + 32))(_swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v12, v13);
    }

    v14 = *(&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + 1);
    v18 = (&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:));
    v15 = swift_task_alloc();
    v0[48] = v15;
    *v15 = v0;
    v15[1] = sub_100F44E6C;
    v16 = v0[45];

    return v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100F44E6C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 120);
  if (v0)
  {

    v7 = sub_100F47290;
  }

  else
  {

    v7 = sub_100F44FD4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100F44FD4()
{
  v1 = v0[49];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[45];
    (*(v0[34] + 8))(v0[38], v0[33]);

    v0[84] = v1;
    v3 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v12 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v4 = swift_task_alloc();
    v0[85] = v4;
    *v4 = v0;
    v4[1] = sub_100F46E98;
    v5 = v0[13];

    return v12();
  }

  else
  {
    v7 = v0[31];
    v0[50] = type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v8 = *(&async function pointer to dispatch thunk of Service.subscript.getter + 1);
    v13 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
    v9 = swift_task_alloc();
    v0[51] = v9;
    *v9 = v0;
    v9[1] = sub_100F45168;
    v10 = v0[45];
    v11 = v0[31];

    return v13(v11);
  }
}

uint64_t sub_100F45168(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 408);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  v7 = v4[31];
  v8 = v4[28];
  v9 = v4[27];
  if (v1)
  {
    v10 = v4[15];
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_100F4736C, v10, 0);
  }

  else
  {
    v11 = *(v8 + 8);
    v4[54] = v11;
    v4[55] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v9);
    v12 = *(&async function pointer to dispatch thunk of Characteristic.read() + 1);
    v16 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v13 = swift_task_alloc();
    v4[56] = v13;
    *v13 = v6;
    v13[1] = sub_100F45374;
    v14 = v4[26];

    return v16(v14);
  }
}

uint64_t sub_100F45374()
{
  v2 = *(*v1 + 448);
  v3 = *v1;
  v3[57] = v0;

  if (v0)
  {
    v4 = v3[52];
    v5 = v3[15];

    return _swift_task_switch(sub_100F47448, v5, 0);
  }

  else
  {
    v6 = v3[52];

    v7 = async function pointer to AsyncSequence.first()[1];
    v8 = swift_task_alloc();
    v3[58] = v8;
    v9 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    v3[59] = v9;
    *v8 = v3;
    v8[1] = sub_100F45548;
    v10 = v3[26];
    v11 = v3[22];

    return AsyncSequence.first()(v3 + 2, v11, v9);
  }
}

uint64_t sub_100F45548()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  v2[60] = v0;

  v5 = v2[26];
  v6 = v2[23];
  v7 = v2[22];
  v8 = v2[15];
  v11 = *(v6 + 8);
  v9 = v6 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v5, v7);
    v12 = sub_100F47524;
  }

  else
  {
    v2[61] = v10;
    v2[62] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v7);
    v12 = sub_100F456DC;
  }

  return _swift_task_switch(v12, v8, 0);
}

uint64_t sub_100F456DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[63] = v1;
  v0[64] = v2;
  if (v2 >> 60 == 15)
  {
    goto LABEL_4;
  }

  sub_100017D5C(v1, v2);
  v3 = sub_100314594(v1, v2);
  v0[65] = v3;
  v0[66] = v4;
  if (v4 >> 60 == 15)
  {
    sub_100006654(v1, v2);
LABEL_4:
    v5 = v0[50];
    v6 = v0[45];
    v7 = v0[38];
    v8 = v0[33];
    v9 = v0[34];
    v10 = v0[27];
    v11 = v0[28];
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error);
    v12 = swift_allocError();
    v14 = v13;
    Identifier.init(stringLiteral:)();
    (*(v11 + 56))(v14, 0, 2, v10);
    swift_willThrow();

    (*(v9 + 8))(v7, v8);
LABEL_5:
    v0[84] = v12;
    v15 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v29 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v16 = swift_task_alloc();
    v0[85] = v16;
    *v16 = v0;
    v16[1] = sub_100F46E98;
    v17 = v0[13];

    return v29();
  }

  v19 = v4;
  v20 = v3;
  v21 = v0[60];
  static Task<>.checkCancellation()();
  if (v21)
  {
    v12 = v21;
    v22 = v0[45];
    (*(v0[34] + 8))(v0[38], v0[33]);
    sub_100006654(v20, v19);
    sub_100006654(v1, v2);

    goto LABEL_5;
  }

  v23 = v0[50];
  v24 = v0[30];
  Identifier.init(stringLiteral:)();
  v25 = *(&async function pointer to dispatch thunk of Service.subscript.getter + 1);
  v30 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v26 = swift_task_alloc();
  v0[67] = v26;
  *v26 = v0;
  v26[1] = sub_100F459D0;
  v27 = v0[45];
  v28 = v0[30];

  return v30(v28);
}

uint64_t sub_100F459D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  v4[68] = a1;
  v4[69] = v1;

  v7 = v4[55];
  v8 = v4[54];
  v9 = v4[30];
  v10 = v4[27];
  if (v1)
  {
    v11 = v4[15];
    v8(v9, v10);

    return _swift_task_switch(sub_100F47600, v11, 0);
  }

  else
  {
    v8(v9, v10);
    v12 = *(&async function pointer to dispatch thunk of Characteristic.read() + 1);
    v16 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v13 = swift_task_alloc();
    v4[70] = v13;
    *v13 = v6;
    v13[1] = sub_100F45BD0;
    v14 = v4[25];

    return v16(v14);
  }
}

uint64_t sub_100F45BD0()
{
  v2 = *(*v1 + 560);
  v3 = *v1;
  v3[71] = v0;

  if (v0)
  {
    v4 = v3[68];
    v5 = v3[15];

    return _swift_task_switch(sub_100F47710, v5, 0);
  }

  else
  {
    v6 = v3[68];

    v7 = async function pointer to AsyncSequence.first()[1];
    v8 = swift_task_alloc();
    v3[72] = v8;
    *v8 = v3;
    v8[1] = sub_100F45D64;
    v9 = v3[59];
    v10 = v3[25];
    v11 = v3[22];

    return AsyncSequence.first()(v3 + 4, v11, v9);
  }
}

uint64_t sub_100F45D64()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = v2[62];
  v6 = v2[61];
  v7 = v2[25];
  v8 = v2[22];
  v9 = v2[15];
  v6(v7, v8);
  if (v0)
  {
    v10 = sub_100F47820;
  }

  else
  {
    v10 = sub_100F45EE8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100F45EE8()
{
  v1 = v0[4];
  v2 = v0[5];
  v0[74] = v1;
  v0[75] = v2;
  if (v2 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v0[6] = v1;
  v0[7] = v2;
  sub_1000E0A3C();
  v0[10] = DataProtocol.nullTerminatedUTF8String.getter();
  v0[11] = v3;
  v0[76] = v3;
  if (!v3)
  {
    sub_100006654(v1, v2);
LABEL_6:
    v11 = v0[66];
    v12 = v0[65];
    v30 = v0[63];
    v31 = v0[64];
    v13 = v0[50];
    v14 = v0[45];
    v15 = v0[34];
    v32 = v0[33];
    v33 = v0[38];
    v16 = v0[27];
    v17 = v0[28];
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error);
    v5 = swift_allocError();
    v19 = v18;
    Identifier.init(stringLiteral:)();
    (*(v17 + 56))(v19, 0, 2, v16);
    swift_willThrow();

    sub_100006654(v12, v11);
    sub_100006654(v30, v31);
    (*(v15 + 8))(v33, v32);
    goto LABEL_7;
  }

  v4 = v0[73];
  static Task<>.checkCancellation()();
  if (v4)
  {
    v5 = v4;
    v6 = v0[66];
    v7 = v0[65];
    v9 = v0[63];
    v8 = v0[64];
    v10 = v0[45];
    (*(v0[34] + 8))(v0[38], v0[33]);

    sub_100006654(v1, v2);
    sub_100006654(v7, v6);
    sub_100006654(v9, v8);

LABEL_7:
    v0[84] = v5;
    v20 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v34 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v21 = swift_task_alloc();
    v0[85] = v21;
    *v21 = v0;
    v21[1] = sub_100F46E98;
    v22 = v0[13];

    return v34();
  }

  v24 = v0[50];
  v25 = v0[29];
  Identifier.init(stringLiteral:)();
  v26 = *(&async function pointer to dispatch thunk of Service.subscript.getter + 1);
  v35 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v27 = swift_task_alloc();
  v0[77] = v27;
  *v27 = v0;
  v27[1] = sub_100F4621C;
  v28 = v0[45];
  v29 = v0[29];

  return v35(v29);
}

uint64_t sub_100F4621C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 616);
  v6 = *v2;
  *(v4 + 624) = a1;
  *(v4 + 632) = v1;

  if (v1)
  {
    v7 = *(v4 + 608);
    v8 = *(v4 + 440);
    v9 = *(v4 + 120);
    (*(v4 + 432))(*(v4 + 232), *(v4 + 216));

    return _swift_task_switch(sub_100F47930, v9, 0);
  }

  else
  {
    v10 = *(v4 + 440);
    (*(v4 + 432))(*(v4 + 232), *(v4 + 216));
    v11 = *(&async function pointer to dispatch thunk of Characteristic.read() + 1);
    v15 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v12 = swift_task_alloc();
    *(v4 + 640) = v12;
    *v12 = v6;
    v12[1] = sub_100F463F0;
    v13 = *(v4 + 192);

    return v15(v13);
  }
}

uint64_t sub_100F463F0()
{
  v2 = *(*v1 + 640);
  v3 = *v1;
  v3[81] = v0;

  if (v0)
  {
    v4 = v3[78];
    v5 = v3[76];
    v6 = v3[15];

    return _swift_task_switch(sub_100F47A54, v6, 0);
  }

  else
  {
    v7 = v3[78];

    v8 = async function pointer to AsyncSequence.first()[1];
    v9 = swift_task_alloc();
    v3[82] = v9;
    *v9 = v3;
    v9[1] = sub_100F46590;
    v10 = v3[59];
    v11 = v3[24];
    v12 = v3[22];

    return AsyncSequence.first()(v3 + 8, v12, v10);
  }
}

uint64_t sub_100F46590()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v15 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v4 = v2[76];
    v6 = v2[61];
    v5 = v2[62];
    v7 = v2[24];
    v8 = v2[22];
    v9 = v2[15];
    v6(v7, v8);

    v10 = sub_100F47B78;
    v11 = v9;
  }

  else
  {
    v12 = v2[62];
    v13 = v2[15];
    (v2[61])(v2[24], v2[22]);
    v10 = sub_100F466E0;
    v11 = v13;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100F466E0()
{
  v104 = v0;
  v1 = v0[8];
  v2 = v0[9];
  if (v2 >> 60 == 15)
  {
    v3 = v0[76];

LABEL_9:
    v30 = v0[75];
    v31 = v0[74];
    v87 = v0[65];
    v90 = v0[66];
    v94 = v0[63];
    v96 = v0[64];
    v32 = v0[50];
    v33 = v0[45];
    v34 = v0[34];
    v99 = v0[33];
    v101 = v0[38];
    v35 = v0[27];
    v36 = v0[28];
    type metadata accessor for BeaconScanner.Error(0);
    sub_100F47F3C(&unk_1016C1150, 255, type metadata accessor for BeaconScanner.Error);
    v37 = swift_allocError();
    v39 = v38;
    Identifier.init(stringLiteral:)();
    (*(v36 + 56))(v39, 0, 2, v35);
    swift_willThrow();
    sub_100006654(v31, v30);

    sub_100006654(v87, v90);
    sub_100006654(v94, v96);
    (*(v34 + 8))(v101, v99);
    v0[84] = v37;
    v40 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v102 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v41 = swift_task_alloc();
    v0[85] = v41;
    *v41 = v0;
    v41[1] = sub_100F46E98;
    v42 = v0[13];

    return v102();
  }

  sub_100017D5C(v0[8], v0[9]);
  v4 = sub_10098E844(v1, v2);
  sub_100006654(v1, v2);
  if ((v4 & 0x100000000) != 0)
  {
    v29 = v0[76];

    sub_100006654(v1, v2);
    goto LABEL_9;
  }

  v98 = v1;
  v100 = v4;
  v5 = v0[41];
  v6 = v0[37];
  ContinuousClock.now.getter();
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v11 = v0[33];
  v12 = v0[34];
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C328);
  v14 = *(v12 + 16);
  v14(v9, v8, v11);
  v14(v10, v7, v11);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[35];
  v18 = v0[36];
  v21 = v0[33];
  v20 = v0[34];
  if (v17)
  {
    v95 = v16;
    v23 = v0[20];
    v22 = v0[21];
    v92 = v0[19];
    v86 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v103 = v89;
    *v86 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100F47F3C(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    v84 = static Duration.description<A>(_:_:units:)();
    v24 = v18;
    v26 = v25;
    (*(v23 + 8))(v22, v92);
    v27 = *(v20 + 8);
    v27(v19, v21);
    v93 = v27;
    v27(v24, v21);
    v28 = sub_1000136BC(v84, v26, &v103);

    *(v86 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v15, v95, "Metadata read time: %{public}s", v86, 0xCu);
    sub_100007BAC(v89);
  }

  else
  {

    v44 = *(v20 + 8);
    v44(v19, v21);
    v93 = v44;
    v44(v18, v21);
  }

  v76 = v0[10];
  v77 = v0[76];
  v66 = v0[74];
  v67 = v0[75];
  v74 = v0[65];
  v75 = v0[66];
  v69 = v0[63];
  v70 = v0[64];
  v65 = v0[45];
  v45 = v0[40];
  v72 = v0[39];
  v73 = v0[41];
  v71 = v0[38];
  v46 = v0[37];
  v78 = v0[36];
  v79 = v0[35];
  v68 = v0[33];
  v80 = v0[32];
  v81 = v0[31];
  v82 = v0[30];
  v83 = v0[29];
  v85 = v0[26];
  v88 = v0[25];
  v91 = v0[24];
  v97 = v0[21];
  v47 = v0[17];
  v48 = v0[18];
  v49 = v0[16];
  v51 = v0[12];
  v50 = v0[13];
  Peripheral.id.getter();
  Identifier.id.getter();
  (*(v47 + 8))(v48, v49);
  v52 = type metadata accessor for AccessoryMetadata(0);
  v53 = v52[9];
  v54 = type metadata accessor for AirTagVersionNumber();
  (*(*(v54 - 8) + 56))(v51 + v53, 1, 1, v54);
  sub_100006654(v66, v67);

  sub_100006654(v98, v2);
  sub_100006654(v69, v70);
  v93(v46, v68);
  v93(v71, v68);
  (*(v45 + 8))(v73, v72);
  v55 = (v51 + v52[5]);
  *v55 = v74;
  v55[1] = v75;
  v56 = (v51 + v52[6]);
  *v56 = v76;
  v56[1] = v77;
  v57 = (v51 + v52[7]);
  *v57 = 0;
  v57[1] = 0;
  *(v51 + v52[8]) = v100;
  v58 = v51 + v52[10];
  *v58 = 0;
  *(v58 + 4) = 1;
  v59 = v51 + v52[11];
  *v59 = 0;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  v60 = v51 + v52[12];
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v51 + v52[13];
  *v61 = 0;
  *(v61 + 4) = 1;
  *(v51 + v52[14]) = 4;
  *(v51 + v52[15]) = 5;
  v62 = (v51 + v52[16]);
  *v62 = 0;
  v62[1] = 0xE000000000000000;
  v63 = v51 + v52[17];
  *v63 = 0;
  *(v63 + 4) = 1;

  v64 = v0[1];

  return v64();
}

uint64_t sub_100F46E98()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v4 = *v1;
  *(*v1 + 688) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_100F47C9C;
  }

  else
  {
    v6 = sub_100F46FC4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100F46FC4()
{
  v1 = v0[84];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = v0[32];
  v13 = v0[31];
  v14 = v0[30];
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[18];
  swift_willThrow();
  (*(v2 + 8))(v3, v4);

  v10 = v0[1];
  v11 = v0[84];

  return v10();
}

uint64_t sub_100F47108()
{
  (*(v0[34] + 8))(v0[38], v0[33]);
  v0[84] = v0[43];
  v1 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100F46E98;
  v3 = v0[13];

  return v5();
}

uint64_t sub_100F471CC()
{
  (*(v0[34] + 8))(v0[38], v0[33]);
  v0[84] = v0[46];
  v1 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100F46E98;
  v3 = v0[13];

  return v5();
}

uint64_t sub_100F47290()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v0[84] = v0[49];
  v5 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v6 = swift_task_alloc();
  v0[85] = v6;
  *v6 = v0;
  v6[1] = sub_100F46E98;
  v7 = v0[13];

  return v9();
}

uint64_t sub_100F4736C()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v0[84] = v0[53];
  v5 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v6 = swift_task_alloc();
  v0[85] = v6;
  *v6 = v0;
  v6[1] = sub_100F46E98;
  v7 = v0[13];

  return v9();
}

uint64_t sub_100F47448()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v0[84] = v0[57];
  v5 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v6 = swift_task_alloc();
  v0[85] = v6;
  *v6 = v0;
  v6[1] = sub_100F46E98;
  v7 = v0[13];

  return v9();
}

uint64_t sub_100F47524()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[33];
  v4 = v0[34];

  (*(v4 + 8))(v2, v3);
  v0[84] = v0[60];
  v5 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v6 = swift_task_alloc();
  v0[85] = v6;
  *v6 = v0;
  v6[1] = sub_100F46E98;
  v7 = v0[13];

  return v9();
}

uint64_t sub_100F47600()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[45];
  v6 = v0[38];
  v7 = v0[33];
  v8 = v0[34];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[84] = v0[69];
  v9 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v13 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v10 = swift_task_alloc();
  v0[85] = v10;
  *v10 = v0;
  v10[1] = sub_100F46E98;
  v11 = v0[13];

  return v13();
}

uint64_t sub_100F47710()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[45];
  v6 = v0[38];
  v7 = v0[33];
  v8 = v0[34];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[84] = v0[71];
  v9 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v13 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v10 = swift_task_alloc();
  v0[85] = v10;
  *v10 = v0;
  v10[1] = sub_100F46E98;
  v11 = v0[13];

  return v13();
}

uint64_t sub_100F47820()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[45];
  v6 = v0[38];
  v7 = v0[33];
  v8 = v0[34];

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[84] = v0[73];
  v9 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v13 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v10 = swift_task_alloc();
  v0[85] = v10;
  *v10 = v0;
  v10[1] = sub_100F46E98;
  v11 = v0[13];

  return v13();
}

uint64_t sub_100F47930()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[45];
  v6 = v0[38];
  v7 = v0[33];
  v8 = v0[34];
  sub_100006654(v0[74], v0[75]);

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[84] = v0[79];
  v9 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v13 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v10 = swift_task_alloc();
  v0[85] = v10;
  *v10 = v0;
  v10[1] = sub_100F46E98;
  v11 = v0[13];

  return v13();
}

uint64_t sub_100F47A54()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[45];
  v6 = v0[38];
  v7 = v0[33];
  v8 = v0[34];
  sub_100006654(v0[74], v0[75]);

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[84] = v0[81];
  v9 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v13 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v10 = swift_task_alloc();
  v0[85] = v10;
  *v10 = v0;
  v10[1] = sub_100F46E98;
  v11 = v0[13];

  return v13();
}

uint64_t sub_100F47B78()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[45];
  v6 = v0[38];
  v7 = v0[33];
  v8 = v0[34];
  sub_100006654(v0[74], v0[75]);

  sub_100006654(v2, v1);
  sub_100006654(v4, v3);
  (*(v8 + 8))(v6, v7);
  v0[84] = v0[83];
  v9 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v13 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v10 = swift_task_alloc();
  v0[85] = v10;
  *v10 = v0;
  v10[1] = sub_100F46E98;
  v11 = v0[13];

  return v13();
}

uint64_t sub_100F47C9C()
{
  if (qword_101695000 != -1)
  {
    swift_once();
  }

  v1 = v0[86];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C328);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[86];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "cancelConnection error in _readAccessoryMetadata() catch block: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[84];
  v11 = v0[40];
  v12 = v0[41];
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[35];
  v18 = v0[32];
  v22 = v0[31];
  v23 = v0[30];
  v24 = v0[29];
  v25 = v0[26];
  v26 = v0[25];
  v27 = v0[24];
  v28 = v0[21];
  v29 = v0[18];
  swift_willThrow();
  (*(v11 + 8))(v12, v13);

  v19 = v0[1];
  v20 = v0[84];

  return v19();
}

uint64_t sub_100F47F3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100F47F84(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_1016C1140, &qword_10138BF70) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + v9);
  v16 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100014744;

  return sub_100F3C6D4(a1, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_100F480F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100F3FB78(a1, v4);
}

uint64_t sub_100F48190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F481F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100F48260(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailedDiscoveredObject(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DiscoveredObject(0);
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F481F8(a1, v14, type metadata accessor for DiscoveredObject);
  sub_100008BB8(0, &qword_1016C11E8, SPIndexInformation_ptr);
  sub_100F481F8(a1, v10, type metadata accessor for DetailedDiscoveredObject);
  v60 = sub_100F3FED8(v10);
  if (v14[1] != 1)
  {
    if (*v14 == 1)
    {
      v16 = (a1 + v11[9]);
      v17 = *v16;
      v18 = v16[1];
      v56 = *v16;
      if ((v18 & 0x2000000000000000) != 0)
      {
        v18 &= ~0x2000000000000000uLL;
      }

      v59 = v18;
      sub_100017D5C(v17, v18);
      LODWORD(v58) = 1;
    }

    else
    {
      LODWORD(v58) = *v14;
      v56 = 0;
      v59 = 0xC000000000000000;
    }

    v15 = 2;
    goto LABEL_10;
  }

  if (*v14)
  {
    LODWORD(v58) = 0;
    v56 = 0;
    v59 = 0xC000000000000000;
    v15 = 1;
LABEL_10:
    v57 = v15;
    goto LABEL_11;
  }

  v42 = (a1 + v11[9]);
  v43 = *v42;
  v44 = v42[1];
  v56 = *v42;
  if ((v44 & 0x2000000000000000) != 0)
  {
    v44 &= ~0x2000000000000000uLL;
  }

  v59 = v44;
  sub_100017D5C(v43, v44);
  LODWORD(v58) = 0;
  v57 = 0;
LABEL_11:
  v55 = v14[2];
  v19 = *(v14 + 2);
  v50 = *(v14 + 1);
  v20 = v11[7];
  v61 = v3;
  (*(v3 + 16))(v6, &v14[v20], v2);
  v21 = &v14[v11[8]];
  v22 = MACAddress.data.getter();
  v24 = v23;
  v25 = v11[12];
  v54 = v14[v11[11]];
  v52 = v14[v25];
  v26 = &v14[v11[13]];
  if (v26[1])
  {
    isa = 0;
  }

  else
  {
    v27 = *v26;
    isa = UInt8._bridgeToObjectiveC()().super.super.isa;
  }

  v62 = v2;
  v51 = *&v14[v11[15]];
  sub_100008BB8(0, &unk_1016C11F0, SPAccessoryInformation_ptr);
  sub_100F481F8(a1, v10, type metadata accessor for DetailedDiscoveredObject);
  v28 = sub_100F40164(v10);
  v29 = 0;
  if (v19 >> 60 != 15)
  {
    v29 = Data._bridgeToObjectiveC()().super.isa;
  }

  v47 = v29;
  v30 = objc_allocWithZone(SPScannedObject);
  v31 = Date._bridgeToObjectiveC()().super.isa;
  v49 = v24;
  v32.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v50 = v6;
  v33 = v32.super.isa;
  v34 = v56;
  v48 = v22;
  v35 = v59;
  v36 = Data._bridgeToObjectiveC()().super.isa;
  v37 = v60;
  v38 = isa;
  BYTE1(v45) = v52;
  LOBYTE(v45) = v54;
  v39 = v30;
  v40 = v47;
  v58 = [v39 initWithAdvertisementType:v57 poshNetwork:v58 nearOwner:v55 vendorPayload:v47 scanDate:v31 address:v33 advertisement:v36 status:v45 ek:isa hint:v51 rssi:v60 indexInformation:v28 acccessoryInformation:?];

  sub_100016590(v34, v35);
  sub_100016590(v48, v49);
  (*(v61 + 8))(v50, v62);
  sub_100F486D8(v14, type metadata accessor for DiscoveredObject);
  return v58;
}

uint64_t sub_100F486D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100F48744(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100F416E0(a1);
}

uint64_t sub_100F4874C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_100F42288(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_100F48890(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100F43DB4(a1, v6, v7, v1 + v5);
}

uint64_t sub_100F489BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100F3C5B0(a1, v4, v5, v6);
}

uint64_t sub_100F48A98()
{
  sub_100F48B20(319, &unk_1016C12A8, &type metadata accessor for Characteristic, &type metadata accessor for Identifier);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100F48B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100F48B84(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0x69634572656E776FLL;
      break;
    case 3:
      result = 0x69684372656E776FLL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x636E6F4E68747561;
      break;
    case 6:
      result = 0x754E6C6169726573;
      break;
    case 7:
      result = 0x6169726553746C61;
      break;
    case 8:
      result = 0x7461747365747461;
      break;
    case 9:
      result = 0x726F737365636361;
      break;
    case 10:
      result = 0x7374726563;
      break;
    case 11:
      result = 7500643;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7372655663657073;
      break;
    case 14:
      result = 0x657261776D726966;
      break;
    case 15:
      result = 0x49746375646F7270;
      break;
    case 16:
      result = 0x6449726F646E6576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100F48D84(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C12D8, &qword_1013F42C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F4B118();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v39 = *v3;
  v30 = *v3;
  v29 = 0;
  sub_1001022C4(&v39, v28);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v30, *(&v30 + 1));
  if (!v2)
  {
    v11 = *(v3 + 2);
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 3);
    v13 = *(v3 + 4);
    LOBYTE(v30) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 5);
    v15 = *(v3 + 6);
    LOBYTE(v30) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 7);
    v17 = *(v3 + 8);
    LOBYTE(v30) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = *(v3 + 72);
    v30 = *(v3 + 72);
    v29 = 5;
    sub_1001022C4(&v38, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v37 = *(v3 + 88);
    v30 = *(v3 + 88);
    v29 = 6;
    sub_1001022C4(&v37, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v36 = *(v3 + 104);
    v30 = *(v3 + 104);
    v29 = 7;
    sub_1001022C4(&v36, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v35 = *(v3 + 120);
    v30 = *(v3 + 120);
    v29 = 8;
    sub_1001022C4(&v35, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v34 = *(v3 + 136);
    v30 = *(v3 + 136);
    v29 = 9;
    sub_1001022C4(&v34, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v33 = *(v3 + 152);
    v30 = *(v3 + 152);
    v29 = 10;
    sub_1001022C4(&v33, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v32 = *(v3 + 168);
    v30 = *(v3 + 168);
    v29 = 11;
    sub_1001022C4(&v32, v28);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v30, *(&v30 + 1));
    v30 = *(v3 + 184);
    v31 = v30;
    v29 = 12;
    sub_1000D2A70(&v31, v28, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v30, *(&v30 + 1));
    v19 = *(v3 + 25);
    v20 = *(v3 + 26);
    LOBYTE(v30) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + 27);
    v22 = *(v3 + 28);
    LOBYTE(v30) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 29);
    v24 = *(v3 + 30);
    LOBYTE(v30) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 31);
    v26 = *(v3 + 32);
    LOBYTE(v30) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F49358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F4B284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F49380(uint64_t a1)
{
  v2 = sub_100F4B118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F493BC(uint64_t a1)
{
  v2 = sub_100F4B118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100F4944C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1[3];
  v47 = v64;
  v4 = a1[11];
  v62 = a1[12];
  v63 = v4;
  v51 = v4;
  sub_1001022C4(&v64, &v61);
  sub_1001022C4(&v63, &v61);
  sub_1000E0A3C();
  v5 = DataProtocol.intValue.getter();
  v6 = *a1;
  v61 = a1[1];
  v62 = v6;
  v49 = v61;
  v50 = v6;
  v60 = a1[2];
  v48 = v60;
  v7 = a1[4];
  v58 = a1[5];
  v59 = v7;
  v8 = a1[4];
  v45 = v58;
  v46 = v8;
  v9 = a1[9];
  v56 = a1[8];
  v57 = v9;
  v10 = a1[9];
  v11 = a1[10];
  v43 = v56;
  v44 = v10;
  v12 = a1[6];
  v55 = a1[7];
  v41 = v55;
  v42 = v12;
  v53 = v11;
  v54 = v12;
  v40 = v11;
  v13 = *(a1 + 29);
  v52 = a1[13];
  if (v13 >> 60 == 15)
  {
    sub_1000D2A70(&v62, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v61, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v60, v39, &qword_1016A0AC0, &unk_1013926A0);
    sub_1001022C4(&v59, v39);
    sub_1001022C4(&v58, v39);
    sub_1001022C4(&v57, v39);
    sub_1001022C4(&v56, v39);
    sub_1001022C4(&v55, v39);
    sub_1001022C4(&v54, v39);
    sub_1000D2A70(&v53, v39, &qword_1016A40E0, &unk_101396F30);
    result = sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_15:
    v33 = v50;
    *a2 = v51;
    *(a2 + 16) = v5;
    *(a2 + 24) = v33;
    v34 = v48;
    *(a2 + 40) = v49;
    *(a2 + 56) = v34;
    v35 = v46;
    *(a2 + 72) = v47;
    *(a2 + 88) = v35;
    v36 = v44;
    *(a2 + 104) = v45;
    *(a2 + 120) = v36;
    v37 = v42;
    *(a2 + 136) = v43;
    *(a2 + 152) = v37;
    v38 = v40;
    *(a2 + 168) = v41;
    *(a2 + 184) = v38;
    *(a2 + 200) = 0x302E302E32;
    *(a2 + 208) = 0xE500000000000000;
    *(a2 + 216) = a1[13];
    *(a2 + 232) = v15;
    *(a2 + 240) = v16;
    *(a2 + 248) = v17;
    *(a2 + 256) = v18;
    return result;
  }

  v19 = *(a1 + 28);
  sub_1000D2A70(&v62, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v61, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v60, v39, &qword_1016A0AC0, &unk_1013926A0);
  sub_1001022C4(&v59, v39);
  sub_1001022C4(&v58, v39);
  sub_1001022C4(&v57, v39);
  sub_1001022C4(&v56, v39);
  sub_1001022C4(&v55, v39);
  sub_1001022C4(&v54, v39);
  sub_1000D2A70(&v53, v39, &qword_1016A40E0, &unk_101396F30);
  sub_1000D2A70(&v52, v39, &qword_1016A0AC0, &unk_1013926A0);
  v20 = sub_100313B54(v19, v13);
  v22 = v21;
  v15 = Data.hexString.getter();
  v16 = v23;
  result = sub_100016590(v20, v22);
  v24 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v24 != 2)
    {
LABEL_14:
      v29 = Data.subdata(in:)();
      v31 = v30;
      v17 = Data.hexString.getter();
      v18 = v32;
      result = sub_100016590(v29, v31);
      goto LABEL_15;
    }

    v26 = *(v19 + 16);
    v25 = *(v19 + 24);
    v27 = __OFSUB__(v25, v26);
    v28 = v25 - v26;
    if (!v27)
    {
LABEL_12:
      if (v28 < -1)
      {
        __break(1u);
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v24)
  {
    goto LABEL_14;
  }

  LODWORD(v28) = HIDWORD(v19) - v19;
  if (!__OFSUB__(HIDWORD(v19), v19))
  {
    v28 = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100F49810(uint64_t a1, uint64_t a2)
{
  v2[306] = a2;
  v2[305] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[307] = v3;
  v4 = *(v3 - 8);
  v2[308] = v4;
  v5 = *(v4 + 64) + 15;
  v2[309] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v2[310] = v6;
  v7 = *(v6 - 8);
  v2[311] = v7;
  v8 = *(v7 + 64) + 15;
  v2[312] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[313] = v9;
  v10 = *(v9 - 8);
  v2[314] = v10;
  v11 = *(v10 + 64) + 15;
  v2[315] = swift_task_alloc();

  return _swift_task_switch(sub_100F4998C, 0, 0);
}

void sub_100F4998C()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = v0[315];
  v7 = v0[314];
  v8 = v0[313];
  v9 = v0[312];
  v50 = v0[311];
  v51 = v0[310];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  v0[303] = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  v0[304] = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v50 + 8))(v9, v51);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  v0[316] = v34;
  v41 = v0[305];
  sub_100500C18(v41, (v0 + 266));
  sub_100F4944C(v41, (v0 + 2));
  sub_100F4AFE8(v41);
  v42 = type metadata accessor for JSONEncoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  memcpy(v0 + 35, v0 + 2, 0x108uLL);
  sub_100F4B03C();
  v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[317] = 0;
  v0[318] = v45;
  v0[319] = v46;
  v47 = v45;
  v48 = v46;

  sub_100017D5C(v47, v48);
  v49 = swift_task_alloc();
  v0[320] = v49;
  *v49 = v0;
  v49[1] = sub_100F4A0B0;

  sub_100EA374C();
}

uint64_t sub_100F4A0B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2560);
  v6 = *v2;
  *(v3 + 2568) = a1;
  *(v3 + 2576) = a2;

  return _swift_task_switch(sub_100F4A1B4, 0, 0);
}

uint64_t sub_100F4A1B4()
{
  v1 = *(v0 + 2576);
  v2 = *(v0 + 2568);
  v3 = *(v0 + 2536);
  v4 = *(v0 + 2472);
  v5 = *(v0 + 2464);
  v6 = *(v0 + 2456);
  *(v0 + 2408) = v2;
  *(v0 + 2416) = v1;
  *(v0 + 2392) = &type metadata for Data;
  *(v0 + 2400) = &protocol witness table for Data;
  *(v0 + 2368) = *(v0 + 2544);
  v7 = sub_1000035D0((v0 + 2368), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 2368));
  *(v0 + 2584) = *(v0 + 2408);
  *(v0 + 2592) = *(v0 + 2416);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 2600) = v10;
  *(v0 + 2608) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 2616) = v13;
  *v13 = v0;
  v13[1] = sub_100F4A36C;
  v14 = *(v0 + 2448);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100F4A36C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2616);
  v6 = *v2;
  *(*v2 + 2624) = v1;

  if (v1)
  {
    v7 = sub_100F4A9CC;
  }

  else
  {
    v8 = v4[326];
    v9 = v4[325];
    v4[329] = a1;
    sub_100016590(v9, v8);
    v7 = sub_100F4A4A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100F4A4A0()
{
  v54 = v0;
  v1 = v0[329];
  v2 = v0[328];
  v3 = v0[324];
  v4 = v0[323];
  v5 = v0[316];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v53);

  sub_100016590(v4, v3);
  v7 = v53[0];
  if (qword_101694E98 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v50 = v0;
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C0A8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Pairing lock header:", v11, 2u);
  }

  v12 = v7 + 64;
  v13 = -1;
  v14 = -1 << *(v7 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v7 + 64);
  v0 = ((63 - v14) >> 6);

  v16 = 0;
  v51 = v7;
  if (v15)
  {
    while (2)
    {
      v17 = v16;
LABEL_13:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = (v17 << 10) | (16 * v18);
      v20 = (*(v7 + 48) + v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(v7 + 56) + v19);
      v24 = v23[1];
      v52 = *v23;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v53[0] = swift_slowAlloc();
        *v27 = 136315394;
        v28 = sub_1000136BC(v21, v22, v53);

        *(v27 + 4) = v28;
        *(v27 + 12) = 2080;
        v29 = sub_1000136BC(v52, v24, v53);

        *(v27 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: %s", v27, 0x16u);
        swift_arrayDestroy();

        v7 = v51;

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      else
      {

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v17 >= v0)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v16;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  sub_100F4B090((v50 + 2), (v50 + 167));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  sub_100F4B0C8((v50 + 2));
  v32 = os_log_type_enabled(v30, v31);
  v33 = v50[306];
  v34 = v50[305];
  if (v32)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v53[0] = v36;
    *v35 = 136315138;
    memcpy(v50 + 200, v50 + 2, 0x108uLL);
    sub_100F4B090((v50 + 2), (v50 + 233));
    v37 = String.init<A>(describing:)();
    v39 = sub_1000136BC(v37, v38, v53);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Pairing ack body %s", v35, 0xCu);
    sub_100007BAC(v36);

    sub_100F4B0C8((v50 + 2));

    sub_100F4AFE8(v34);
  }

  else
  {
    v40 = v50[306];

    sub_100F4AFE8(v34);

    sub_100F4B0C8((v50 + 2));
  }

  v41 = v50[319];
  v42 = v50[318];

  sub_100017D5C(v42, v41);

  sub_100016590(v42, v41);
  v43 = v50[319];
  v44 = v50[318];
  v45 = v50[315];
  v46 = v50[312];
  v47 = v50[309];

  v48 = v50[1];

  return v48(v7, v44, v43);
}

uint64_t sub_100F4A9CC()
{
  v58 = v0;
  v1 = v0[324];
  v2 = v0[323];
  sub_100016590(v0[325], v0[326]);
  sub_100016590(v2, v1);
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v3 = v0[328];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C448);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[328];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to generate attestation header: %{public}@.", v9, 0xCu);
    sub_100288C6C(v10);
  }

  else
  {
  }

  v12 = v0[316];
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v54 = v0;
  sub_1000076D4(v4, qword_10177C0A8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Pairing lock header:", v15, 2u);
  }

  v16 = v12 + 64;
  v17 = -1;
  v18 = -1 << *(v12 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v12 + 64);
  v0 = ((63 - v18) >> 6);

  v20 = 0;
  v55 = v12;
  if (v19)
  {
    while (2)
    {
      v21 = v20;
LABEL_18:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = (v21 << 10) | (16 * v22);
      v24 = (*(v12 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v12 + 56) + v23);
      v28 = v27[1];
      v56 = *v27;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v31 = 136315394;
        v32 = sub_1000136BC(v25, v26, &v57);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        v33 = sub_1000136BC(v56, v28, &v57);

        *(v31 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s: %s", v31, 0x16u);
        swift_arrayDestroy();

        v12 = v55;

        v20 = v21;
        if (v19)
        {
          continue;
        }
      }

      else
      {

        v20 = v21;
        if (v19)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v21 >= v0)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v20;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  sub_100F4B090((v54 + 2), (v54 + 167));
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  sub_100F4B0C8((v54 + 2));
  v36 = os_log_type_enabled(v34, v35);
  v37 = v54[306];
  v38 = v54[305];
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57 = v40;
    *v39 = 136315138;
    memcpy(v54 + 200, v54 + 2, 0x108uLL);
    sub_100F4B090((v54 + 2), (v54 + 233));
    v41 = String.init<A>(describing:)();
    v43 = sub_1000136BC(v41, v42, &v57);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "Pairing ack body %s", v39, 0xCu);
    sub_100007BAC(v40);

    sub_100F4B0C8((v54 + 2));

    sub_100F4AFE8(v38);
  }

  else
  {
    v44 = v54[306];

    sub_100F4AFE8(v38);

    sub_100F4B0C8((v54 + 2));
  }

  v45 = v54[319];
  v46 = v54[318];

  sub_100017D5C(v46, v45);

  sub_100016590(v46, v45);
  v47 = v54[319];
  v48 = v54[318];
  v49 = v54[315];
  v50 = v54[312];
  v51 = v54[309];

  v52 = v54[1];

  return v52(v12, v48, v47);
}

unint64_t sub_100F4B03C()
{
  result = qword_1016C12D0;
  if (!qword_1016C12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12D0);
  }

  return result;
}

unint64_t sub_100F4B118()
{
  result = qword_1016C12E0;
  if (!qword_1016C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12E0);
  }

  return result;
}

unint64_t sub_100F4B180()
{
  result = qword_1016C12E8;
  if (!qword_1016C12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12E8);
  }

  return result;
}

unint64_t sub_100F4B1D8()
{
  result = qword_1016C12F0;
  if (!qword_1016C12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12F0);
  }

  return result;
}

unint64_t sub_100F4B230()
{
  result = qword_1016C12F8;
  if (!qword_1016C12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C12F8);
  }

  return result;
}

uint64_t sub_100F4B284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E6F4E68747561 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_100F4B804(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 60) & 3 | (4 * (*(a1 + 32) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_100F4B828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 33))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (4 * *(a1 + 32))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100F4B87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-a2 & 3) << 60;
      *(result + 32) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_100F4B8D4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 24) = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 32) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0x2000000000000000;
    *(result + 32) = 1;
  }

  return result;
}

ValueMetadata *sub_100F4B920(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 2u)
    {
      if (a1 != 3)
      {
        v1 = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
        sub_10031016C();
        return v1;
      }
    }

    else if (a1 >= 2u)
    {
      v1 = &type metadata for AccessoryCommandResponsePayload;
      sub_1003101C0();
      return v1;
    }

LABEL_10:
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
    return v1;
  }

  if (a1 < 0xAu)
  {
    goto LABEL_10;
  }

  if (a1 > 0xBu)
  {
    if (a1 == 12)
    {
      v1 = &type metadata for AccessoryCapabilityResponsePayload;
      sub_10059BC58();
    }

    else
    {
      v1 = &type metadata for AccessoryFirmwareVersionResponsePayload;
      sub_1003100C4();
    }
  }

  else if (a1 == 10)
  {
    v1 = &type metadata for AccessoryProductDataResponsePayload;
    sub_10059BDFC();
  }

  else
  {
    v1 = &type metadata for AccessoryModelNameResponsePayload;
    sub_10059BD54();
  }

  return v1;
}

unint64_t sub_100F4B9F0(char a1)
{
  result = 0x6F5374726174732ELL;
  switch(a1)
  {
    case 1:
      result = 0x756F53706F74732ELL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F43646E756F732ELL;
      break;
    case 4:
      v3 = 11;
      goto LABEL_12;
    case 5:
      v3 = 10;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 6:
      result = 0x746375646F72702ELL;
      break;
    case 7:
      result = 0x614E6C65646F6D2ELL;
      break;
    case 8:
      result = 0x6C6962617061632ELL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100F4BBC0()
{
  v1 = v0[3];
  if (v0[4])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | (v1 >> 60) & 3;
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 4;
      }

      else
      {
        return 10;
      }
    }

    else
    {
      return 2;
    }
  }

  else if (v3 > 4)
  {
    if (v3 == 5)
    {
      return 13;
    }

    else
    {
      v5 = *v0;
      if (v0[2] | v0[1] | *v0)
      {
        v6 = 0;
      }

      else
      {
        v6 = v1 == 0x2000000000000000;
      }

      if (v6)
      {
        return 0;
      }

      else if (v1 == 0x2000000000000000 && v5 == 1 && *(v0 + 1) == 0)
      {
        return 1;
      }

      else if (v1 == 0x2000000000000000 && v5 == 2 && *(v0 + 1) == 0)
      {
        return 3;
      }

      else if (v1 == 0x2000000000000000 && v5 == 3 && *(v0 + 1) == 0)
      {
        return 5;
      }

      else if (v1 == 0x2000000000000000 && v5 == 4 && *(v0 + 1) == 0)
      {
        return 6;
      }

      else if (v1 == 0x2000000000000000 && v5 == 5 && *(v0 + 1) == 0)
      {
        return 7;
      }

      else if (*(v0 + 1) == 0 && v5 == 6 && v1 == 0x2000000000000000)
      {
        return 8;
      }

      else
      {
        return 9;
      }
    }
  }

  else if (v3 == 3)
  {
    return 11;
  }

  else
  {
    return 12;
  }
}

unint64_t sub_100F4BD00@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (v5 >> 60) & 3;
  if (v8 > 2)
  {
    if (v8 > 4)
    {
      if (v8 == 5)
      {
        *(a1 + 24) = &type metadata for AccessoryFirmwareVersionResponsePayload;
        result = sub_1003100C4();
        *(a1 + 32) = result;
        *a1 = v4;
        *(a1 + 2) = BYTE2(v4);
        *(a1 + 3) = BYTE3(v4);
      }

      else
      {
        *(a1 + 24) = &type metadata for AccessoryGenericPayload;
        result = sub_10030FF74();
        *(a1 + 32) = result;
      }

      return result;
    }

    if (v8 == 3)
    {
      *(a1 + 24) = &type metadata for AccessoryModelNameResponsePayload;
      *(a1 + 32) = sub_10059BD54();
      *a1 = v4;
      *(a1 + 8) = v3;
    }

    *(a1 + 24) = &type metadata for AccessoryCapabilityResponsePayload;
    result = sub_10059BC58();
LABEL_21:
    *(a1 + 32) = result;
    *a1 = v4;
    return result;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      *(a1 + 24) = &type metadata for AccessoryStartAggressiveAdvertisingPayload;
      result = sub_10031016C();
      goto LABEL_21;
    }

    *(a1 + 24) = &type metadata for AccessoryProductDataResponsePayload;
    *(a1 + 32) = sub_10059BDFC();
    *a1 = v4;
    *(a1 + 8) = v3;
    v11 = v4;
    v12 = v3;
  }

  else
  {
    *(a1 + 24) = &type metadata for AccessoryCommandResponsePayload;
    *(a1 + 32) = sub_1003101C0();
    v10 = swift_allocObject();
    *a1 = v10;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v6;
    v10[5] = v5 & 0xCFFFFFFFFFFFFFFFLL;
    sub_100017D5C(v4, v3);
    v11 = v6;
    v12 = v5;
  }

  return sub_100017D5C(v11, v12);
}

uint64_t sub_100F4BF48(void *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v9 = sub_100F4BBC0();
  LOWORD(v18) = word_1013F471A[v9];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v4 + 8))(v7, v3);
  LOWORD(v18) = v22;
  sub_10015049C(v26, v27);
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v1)
  {
    switch(v9)
    {
      case 2u:
        sub_100F4BD00(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        v12 = v18;
        v13 = v19;
        v14 = v20;
        v15 = v21;
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        sub_10015049C(v26, v27);
        sub_10030FDD0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v12, v13);
        sub_100016590(v14, v15);
        return sub_100007BAC(v26);
      case 4u:
        sub_100F4BD00(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        LODWORD(v22) = v18;
        sub_10015049C(v26, v27);
        sub_10030FCD4();
        goto LABEL_13;
      case 0xAu:
        sub_100F4BD00(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        v10 = v18;
        v11 = v19;
        v22 = v18;
        v23 = v19;
        sub_10015049C(v26, v27);
        sub_10059C0F0();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        sub_100016590(v10, v11);
        return sub_100007BAC(v26);
      case 0xBu:
        sub_100F4BD00(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        v22 = v18;
        v23 = v19;
        sub_10015049C(v26, v27);
        sub_10059C09C();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();

        return sub_100007BAC(v26);
      case 0xCu:
        sub_100F4BD00(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        LODWORD(v22) = v18;
        sub_10015049C(v26, v27);
        sub_10059C048();
        goto LABEL_13;
      case 0xDu:
        sub_100F4BD00(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        LODWORD(v22) = v18;
        sub_10015049C(v26, v27);
        sub_10030FC2C();
        goto LABEL_13;
      default:
        sub_100F4BD00(&v22);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_10015049C(v26, v27);
          sub_10030FB84();
LABEL_13:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        }

        else
        {
LABEL_18:
          sub_100F4CD68();
          swift_allocError();
          *v16 = 0;
          swift_willThrow();
        }

        break;
    }
  }

  return sub_100007BAC(v26);
}

double sub_100F4C4D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100F4CAEC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100F4C534(__int16 a1)
{
  if ((a1 - 768) > 0x1Bu)
  {
    return 14;
  }

  else
  {
    return byte_1013F4736[(a1 - 768)];
  }
}

uint64_t sub_100F4C560@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100F4B920(a1);
  sub_1000035D0(a2, a2[3]);
  result = swift_getDynamicType();
  if (v6 == result)
  {
    switch(a1)
    {
      case 2u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        v9 = v14;
        result = sub_100007BAC(a2);
        v10 = v15;
        v11 = 0;
        goto LABEL_24;
      case 3u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 2;
        goto LABEL_24;
      case 4u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        result = sub_100007BAC(a2);
        v9 = 0;
        v11 = 0;
        v10 = xmmword_1013F43E0;
        goto LABEL_24;
      case 5u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 3;
        goto LABEL_24;
      case 6u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 4;
        goto LABEL_24;
      case 7u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 5;
        goto LABEL_24;
      case 8u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 6;
        goto LABEL_24;
      case 9u:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013B5EA0;
        v11 = 1;
        v8 = 7;
        goto LABEL_24;
      case 0xAu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        v9 = v14;
        result = sub_100007BAC(a2);
        v11 = 0;
        v10 = xmmword_1013B5EA0;
        goto LABEL_24;
      case 0xBu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        v9 = v14;
        result = sub_100007BAC(a2);
        v11 = 0;
        v10 = xmmword_10138BC00;
        goto LABEL_24;
      case 0xCu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = 0uLL;
        goto LABEL_23;
      case 0xDu:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_31;
        }

        v8 = v13;
        result = sub_100007BAC(a2);
        v9 = 0;
        v10 = xmmword_1013F43E0;
        goto LABEL_23;
      default:
        sub_10001F280(a2, v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          result = sub_100007BAC(a2);
          v8 = 0;
          v9 = 0;
          v10 = xmmword_1013B5EA0;
LABEL_23:
          v11 = 1;
LABEL_24:
          *a3 = v8;
          *(a3 + 8) = v9;
          *(a3 + 16) = v10;
          *(a3 + 32) = v11;
        }

        else
        {
LABEL_31:
          sub_100F4CD68();
          swift_allocError();
          *v12 = 0;
          swift_willThrow();
          result = sub_100007BAC(a2);
        }

        break;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100F4CAEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v23, v23[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (!v2)
  {
    v10 = v20;
    v26 = v21[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v8, v4);
    v11 = sub_100F4C534(v22[0]);
    if (v11 != 14)
    {
      v13 = v11;
      v14 = sub_100F4B920(v11);
      v16 = v15;
      sub_10001F280(a1, v21);
      v22[3] = v14;
      v22[4] = v16;
      sub_1000280DC(v22);
      v17 = *(v16 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v22, v21);
      sub_100F4C560(v13, v21, v24);
      sub_100007BAC(v22);
      sub_100007BAC(v23);
      result = sub_100007BAC(a1);
      v19 = v24[1];
      *v10 = v24[0];
      *(v10 + 16) = v19;
      *(v10 + 32) = v25;
      return result;
    }

    sub_100F4CD68();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v23);
  return sub_100007BAC(a1);
}

unint64_t sub_100F4CD68()
{
  result = qword_1016C1300;
  if (!qword_1016C1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1300);
  }

  return result;
}

unint64_t sub_100F4CDD0()
{
  result = qword_1016C1308;
  if (!qword_1016C1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1308);
  }

  return result;
}

uint64_t sub_100F4CE24()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000076D4(v0, qword_10177C418);
}

uint64_t sub_100F4CE88()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v13[1] = 0x7365547265646E75;
  v13[2] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v14)
  {
    v8 = NSTemporaryDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();
  }

  else
  {
    v10 = [objc_opt_self() defaultManager];
    v11 = [v10 URLsForDirectory:5 inDomains:1];

    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v12 + 16))
    {
      (*(v1 + 16))(v5, v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

      (*(v1 + 32))(v7, v5, v0);
      URL.appendingPathComponent(_:isDirectory:)();
      return (*(v1 + 8))(v7, v0);
    }

    else
    {

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t *sub_100F4D180()
{
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  return &qword_10177C3D0;
}

uint64_t sub_100F4D1F8()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C360 = result;
  return result;
}

uint64_t sub_100F4D284()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C370 = result;
  return result;
}

uint64_t sub_100F4D2F0()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C378 = result;
  return result;
}

uint64_t sub_100F4D3A4()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C390 = result;
  return result;
}

uint64_t sub_100F4D454()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3A8 = result;
  return result;
}

uint64_t sub_100F4D4DC()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3B8 = result;
  return result;
}

uint64_t sub_100F4D570()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3C8 = result;
  return result;
}

uint64_t sub_100F4D6A4()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C3F8 = result;
  return result;
}

uint64_t sub_100F4D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_100F4D7C4()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177C410 = result;
  return result;
}

uint64_t sub_100F4D87C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C448);
  sub_1000076D4(v0, qword_10177C448);
  return Logger.init(subsystem:category:)();
}

id sub_100F4D918()
{
  v0 = sub_100907E70(_swiftEmptyArrayStorage);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v2 = sub_101073B80(v11);

  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFACA0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000101357BD0, isUniquelyReferenced_nonNull_native);
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v5 = result;
    v6 = [result serverFriendlyDescription];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(v7, v9, 0xD000000000000011, 0x800000010134EA40, v10);
    }

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100F4DAB4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C1328, &qword_1013F4958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F4E2C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100F4DC58()
{
  v0 = sub_100907E70(&off_10160D218);
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  swift_arrayDestroy();
  v1 = sub_100F4D918();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v4);

  return v4;
}

uint64_t sub_100F4DD1C(uint64_t a1)
{
  v2 = sub_100132EF0();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100F4DD58()
{
  v1 = 0x6D617473656D6974;
  if (*v0 != 1)
  {
    v1 = 1684628597;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_100F4DDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F4E318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F4DDD4(uint64_t a1)
{
  v2 = sub_100F4E2C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F4DE10(uint64_t a1)
{
  v2 = sub_100F4E2C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100F4DE4C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100F4E434(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100F4DE94(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_100F4DAB4(a1);
}

uint64_t sub_100F4DED0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  if (v6 && (v7 = v6, v8 = [v6 uniqueDeviceIdentifier], v7, v8))
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v0;
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(NSProcessInfo) init];
    v14 = [v13 processName];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    static Date.trustedNow.getter(v5);
    v18 = Date.epoch.getter();
    (*(v2 + 8))(v5, v1);
    v19 = type metadata accessor for JSONEncoder();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v27[1] = v15;
    v27[2] = v17;
    v27[3] = v18;
    v27[4] = v10;
    v27[5] = v12;
    sub_100F4E1A0();
    v22 = v28;
    v23 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v22)
    {

      v24 = 0;
    }

    else
    {
      v24 = v23;
    }
  }

  else
  {
    v24 = type metadata accessor for GenericError();
    sub_100A1C368();
    swift_allocError();
    strcpy(v25, "Missing UDID!");
    *(v25 + 7) = -4864;
    (*(*(v24 - 8) + 104))(v25, enum case for GenericError.error(_:), v24);
    swift_willThrow();
  }

  return v24;
}

unint64_t sub_100F4E1A0()
{
  result = qword_1016C1310;
  if (!qword_1016C1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1310);
  }

  return result;
}

unint64_t sub_100F4E218()
{
  result = qword_1016C1318;
  if (!qword_1016C1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1318);
  }

  return result;
}

unint64_t sub_100F4E270()
{
  result = qword_1016C1320;
  if (!qword_1016C1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1320);
  }

  return result;
}

unint64_t sub_100F4E2C4()
{
  result = qword_1016C1330;
  if (!qword_1016C1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1330);
  }

  return result;
}

uint64_t sub_100F4E318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100F4E434@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016C1338, &unk_1013F4960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100F4E2C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v24 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_100007BAC(a1);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

unint64_t sub_100F4E65C()
{
  result = qword_1016C1340;
  if (!qword_1016C1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1340);
  }

  return result;
}

unint64_t sub_100F4E6B4()
{
  result = qword_1016C1348;
  if (!qword_1016C1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1348);
  }

  return result;
}

unint64_t sub_100F4E70C()
{
  result = qword_1016C1350;
  if (!qword_1016C1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1350);
  }

  return result;
}

uint64_t type metadata accessor for AirPodsLEPairingLockCheckResponse()
{
  result = qword_1016C13B0;
  if (!qword_1016C13B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100F4E7D4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169A330);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100F4E8B8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x654C636341616162;
    v6 = 0x6E49636341616162;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6449616E6D66;
    if (a1 != 5)
    {
      v7 = 0x704164656B73616DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684628325;
    v2 = 0x754E6C6169726573;
    v3 = 0x5364656573;
    if (a1 != 3)
    {
      v3 = 0x6953726576726573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x644970696863;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100F4EA10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for UUID();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016C1410, &qword_1013F4AF0);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  v12 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16[*(v14 + 56)] = 0;
  v17 = a1[3];
  v18 = a1[4];
  v38 = a1;
  sub_1000035D0(a1, v17);
  sub_100F4F448();
  v37 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v38);
  }

  v30 = v12;
  v31 = v7;
  v19 = v34;
  v20 = v36;
  v32 = v16;
  v40 = 0;
  v21 = sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v32;
  *v32 = v39;
  v40 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v22 + 1) = v39;
  v40 = 2;
  v29[2] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v22 + 2) = v39;
  v40 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v22 + 3) = v39;
  v40 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29[1] = v21;
  *(v22 + 4) = v39;
  LOBYTE(v39) = 5;
  sub_100395BEC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 32))(&v22[v30[9]], v31, v4);
  LOBYTE(v39) = 6;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = &v22[v30[10]];
  *v24 = v23;
  v24[1] = v25;
  v40 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[v30[11]] = v39;
  v40 = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[v30[12]] = v39;
  v40 = 9;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v37, v35);
  v27 = v32;
  v26 = v33;
  *&v32[v30[13]] = v39;
  sub_1009A1D14(v27, v26);
  sub_100007BAC(v38);
  return sub_1009A1CB8(v27);
}

uint64_t sub_100F4F178(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100F4E8B8(*a1);
  v5 = v4;
  if (v3 == sub_100F4E8B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100F4F200()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100F4E8B8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100F4F264()
{
  sub_100F4E8B8(*v0);
  String.hash(into:)();
}

Swift::Int sub_100F4F2B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100F4E8B8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100F4F318@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100F4F5B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100F4F348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100F4E8B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100F4F390@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100F4F5B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100F4F3B8(uint64_t a1)
{
  v2 = sub_100F4F448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F4F3F4(uint64_t a1)
{
  v2 = sub_100F4F448();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100F4F448()
{
  result = qword_1016C1418;
  if (!qword_1016C1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1418);
  }

  return result;
}

unint64_t sub_100F4F4B0()
{
  result = qword_1016C1420;
  if (!qword_1016C1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1420);
  }

  return result;
}

unint64_t sub_100F4F508()
{
  result = qword_1016C1428;
  if (!qword_1016C1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1428);
  }

  return result;
}

unint64_t sub_100F4F560()
{
  result = qword_1016C1430;
  if (!qword_1016C1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1430);
  }

  return result;
}

unint64_t sub_100F4F5B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CAA8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F4F600(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashAlgorithm();
  v141 = *(v4 - 8);
  v142 = v4;
  v5 = *(v141 + 64);
  __chkstk_darwin(v4);
  v7 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v145 = *(v8 - 8);
  v146 = v8;
  v9 = *(v145 + 64);
  __chkstk_darwin(v8);
  v144 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_1000076D4(v11, qword_10177C418);
  sub_10002E98C(a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  sub_100006654(a1, a2);
  v15 = os_log_type_enabled(v13, v14);
  v147 = v12;
  v140 = v7;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v149 = v17;
    *v16 = 136315138;
    if (a2 >> 60 == 15)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    else
    {
      v18 = Data.hexString.getter();
      v19 = v20;
    }

    v21 = sub_1000136BC(v18, v19, &v149);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "E1 encryption key from server: %s", v16, 0xCu);
    sub_100007BAC(v17);
  }

  else
  {
  }

  v22 = [objc_opt_self() defaultStore];
  if (!v22)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v23 = v22;
  v24 = a1;
  v25 = a2;
  if (a2 >> 60 == 15)
  {
    if (qword_1016950E8 != -1)
    {
      swift_once();
    }

    v25 = qword_1016C1440;
    if (qword_1016C1440 >> 60 == 15)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Invalid server public key.", v28, 2u);
      }

      goto LABEL_41;
    }

    v24 = qword_1016C1438;
    sub_100017D5C(qword_1016C1438, qword_1016C1440);
  }

  sub_10002E98C(a1, a2);
  v29 = [v23 aa_primaryAppleAccount];
  if (!v29)
  {
    goto LABEL_25;
  }

  v30 = v29;
  v31 = [v29 aa_personID];
  if (!v31)
  {

LABEL_25:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to obtain DSID from account. Using device serial number instead to support account signed out.", v58, 2u);
    }

    v59 = v144;
    v61 = *(v143 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v60 = *(v143 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    static String.Encoding.utf8.getter();
    v62 = String.data(using:allowLossyConversion:)();
    v64 = v63;
    (*(v145 + 8))(v59, v146);
    if (v64 >> 60 == 15)
    {

      v26 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v65))
      {
        sub_100016590(v24, v25);

LABEL_41:

        return 0;
      }

      v66 = swift_slowAlloc();
      v53 = v23;
      v67 = swift_slowAlloc();
      v149 = v67;
      *v66 = 141558275;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v68 = sub_1000136BC(v61, v60, &v149);

      *(v66 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v26, v65, "Invalid serial number %{private,mask.hash}s", v66, 0x16u);
      sub_100007BAC(v67);

      sub_100016590(v24, v25);

LABEL_30:
      return 0;
    }

    v70 = v140;
    v69 = v141;
    v71 = v142;
    (*(v141 + 104))(v140, enum case for HashAlgorithm.sha256(_:), v142);
    v145 = Data.hash(algorithm:)();
    v146 = v72;
    v73 = v62;
    v74 = v64;
    goto LABEL_33;
  }

  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v33;
    v39 = v23;
    v40 = swift_slowAlloc();
    v41 = v25;
    v42 = v24;
    v43 = swift_slowAlloc();
    v149 = v43;
    *v40 = 136315138;
    *(v40 + 4) = sub_1000136BC(v38, v35, &v149);
    _os_log_impl(&_mh_execute_header, v36, v37, "DSID: %s", v40, 0xCu);
    sub_100007BAC(v43);
    v24 = v42;
    v25 = v41;

    v23 = v39;
    v33 = v38;
  }

  v44 = v144;
  static String.Encoding.utf8.getter();
  v45 = String.data(using:allowLossyConversion:)();
  v47 = v46;
  (*(v145 + 8))(v44, v146);
  if (v47 >> 60 == 15)
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v48, v49))
    {

      sub_100016590(v24, v25);

      return 0;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = v33;
    v53 = v23;
    v54 = v51;
    v149 = v51;
    *v50 = 141558275;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    v55 = sub_1000136BC(v52, v35, &v149);

    *(v50 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Invalid DSID %{private,mask.hash}s", v50, 0x16u);
    sub_100007BAC(v54);

    sub_100016590(v24, v25);
    goto LABEL_30;
  }

  v70 = v140;
  v69 = v141;
  v71 = v142;
  (*(v141 + 104))(v140, enum case for HashAlgorithm.sha256(_:), v142);
  v145 = Data.hash(algorithm:)();
  v146 = v75;

  v73 = v45;
  v74 = v47;
LABEL_33:
  sub_100006654(v73, v74);
  (*(v69 + 8))(v70, v71);
  sub_100017D5C(v24, v25);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  sub_100016590(v24, v25);
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v149 = v79;
    *v78 = 136315138;
    v80 = Data.hexString.getter();
    v139 = v23;
    v82 = sub_1000136BC(v80, v81, &v149);
    v23 = v139;

    *(v78 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v76, v77, "generateAirPodsE1Blob publicKeyData: %s", v78, 0xCu);
    sub_100007BAC(v79);
  }

  sub_100017D5C(v24, v25);
  v83 = sub_10049C290(v24, v25);
  v85 = v84;
  sub_100017D5C(v83, v84);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  sub_100016590(v83, v85);
  v88 = os_log_type_enabled(v86, v87);
  v138 = v24;
  v139 = v23;
  v144 = v85;
  v142 = v83;
  if (v88)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v149 = v90;
    *v89 = 136315138;
    sub_100017D5C(v83, v85);
    v91 = Data.hexString.getter();
    v92 = v85;
    v93 = v91;
    v95 = v94;
    sub_100016590(v83, v92);
    v96 = sub_1000136BC(v93, v95, &v149);

    *(v89 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v86, v87, "generateAirPodsE1Blob publicKey: %s", v89, 0xCu);
    sub_100007BAC(v90);
  }

  v98 = v145;
  v97 = v146;
  sub_100017D5C(v145, v146);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  sub_100016590(v98, v97);
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v149 = v102;
    *v101 = 136315138;
    v103 = Data.hexString.getter();
    v105 = sub_1000136BC(v103, v104, &v149);

    *(v101 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v99, v100, "generateAirPodsE1Blob dataToEncrypt: %s", v101, 0xCu);
    sub_100007BAC(v102);
  }

  v106 = v139;
  v107 = objc_autoreleasePoolPush();
  sub_100A79398(&v148, &v149);
  objc_autoreleasePoolPop(v107);
  v109 = v149;
  v108 = v150;
  sub_100017D5C(v149, v150);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.debug.getter();
  v141 = v108;
  sub_100016590(v109, v108);
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v149 = v113;
    *v112 = 136315138;
    v114 = Data.hexString.getter();
    v116 = sub_1000136BC(v114, v115, &v149);
    v117 = v144;

    *(v112 + 4) = v116;
    _os_log_impl(&_mh_execute_header, v110, v111, "generateAirPodsE1Blob encryptedData: %s", v112, 0xCu);
    sub_100007BAC(v113);
    v106 = v139;
  }

  else
  {

    v117 = v144;
  }

  v118 = v141;
  sub_100017D5C(v109, v141);
  sub_100495F0C(v109, v118, &v149);
  v137 = v109;
  v120 = v149;
  v121 = v150;
  sub_100017D5C(v149, v150);
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.debug.getter();
  v147 = v120;
  v140 = v121;
  sub_100016590(v120, v121);
  if (os_log_type_enabled(v122, v123))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v125 = 136315138;
    v148 = v126;
    v149 = v147;
    v150 = v140;
    sub_100413338();
    v127 = RawRepresentable<>.hexString.getter();
    v129 = v106;
    v130 = sub_1000136BC(v127, v128, &v148);

    *(v125 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v122, v123, "generateAirPodsE1Blob e1Blob: %s", v125, 0xCu);
    sub_100007BAC(v126);

    sub_100016590(v145, v146);
    sub_100016590(v138, v25);
  }

  else
  {
    sub_100016590(v145, v146);
    sub_100016590(v138, v25);
  }

  sub_100016590(v142, v117);
  sub_100016590(v137, v141);

  v131 = v143;
  v132 = *(v143 + 40);
  v133 = *(v143 + 48);
  v134 = v147;
  v135 = v140;
  *(v143 + 40) = v147;
  *(v131 + 48) = v135;
  sub_100017D5C(v134, v135);
  sub_100006654(v132, v133);
  return v134;
}

double sub_100F506B0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  if (v3 >> 60 == 15 || (v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8), v4 >> 60 == 15) || (v5 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8), v5 >> 60 == 15) || (v6 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8), v6 >> 60 == 15) || (v7 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8), v7 >> 60 == 15) || (v8 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8), v8 >> 60 == 15) || (v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v9 >> 60 == 15) || (v10 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v10 >> 60 == 15))
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C448);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing info to generate AirPodsPairingAckData!", v14, 2u);
    }

    sub_100F54BFC(&v55);
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v27 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
    v28 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
    v29 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
    v31 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
    v32 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
    v33 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v30 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    v37 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v24 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v39 = v1[2];
    v40 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    v38 = v1[3];
    v25 = v1[11];
    v34 = v1[12];
    v35 = v1[14];
    v36 = v1[13];
    v41 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v42 = v37;
    *&v43 = v24;
    *(&v43 + 1) = v40;
    *&v44 = v31;
    *(&v44 + 1) = v7;
    *&v45 = v33;
    *(&v45 + 1) = v9;
    *&v46 = v32;
    *(&v46 + 1) = v8;
    *&v47 = v28;
    *(&v47 + 1) = v5;
    *&v48 = v29;
    *(&v48 + 1) = v6;
    *&v49 = v39;
    *(&v49 + 1) = v38;
    *&v50 = v27;
    *(&v50 + 1) = v4;
    *&v51 = v23;
    *(&v51 + 1) = v3;
    v26 = v23;
    *&v52 = v30;
    *(&v52 + 1) = v10;
    *&v53 = v25;
    *(&v53 + 1) = v34;
    *&v54 = v36;
    *(&v54 + 1) = v35;
    SharingCircleWildAdvertisementKey.init(key:)(&v41);
    sub_10002E98C(v26, v3);
    sub_10002E98C(v27, v4);
    sub_10002E98C(v28, v5);
    sub_10002E98C(v29, v6);
    sub_10002E98C(v31, v7);
    sub_10002E98C(v32, v8);
    sub_10002E98C(v33, v9);
    sub_10002E98C(v30, v10);

    sub_100017D5C(v39, v38);

    sub_10002E98C(v36, v35);
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = v54;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v64 = v50;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v60 = v46;
    v55 = v41;
    v56 = v42;
  }

  v15 = v66;
  a1[10] = v65;
  a1[11] = v15;
  v16 = v68;
  a1[12] = v67;
  a1[13] = v16;
  v17 = v62;
  a1[6] = v61;
  a1[7] = v17;
  v18 = v64;
  a1[8] = v63;
  a1[9] = v18;
  v19 = v58;
  a1[2] = v57;
  a1[3] = v19;
  v20 = v60;
  a1[4] = v59;
  a1[5] = v20;
  result = *&v55;
  v22 = v56;
  *a1 = v55;
  a1[1] = v22;
  return result;
}

void *sub_100F50A90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v112 = a3;
  v113 = a4;
  v111 = a2;
  v10 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v6[6];
  if (v15 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v16 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8);
  if (v16 >> 60 == 15)
  {
    goto LABEL_13;
  }

  if (*(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
  {
    goto LABEL_13;
  }

  v17 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts + 8);
  if (v17 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v18 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr + 8);
  if (v18 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v19 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v19 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v20 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v21 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
  if (v21 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v22 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
  v23 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
  if (v23 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v24 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce);
  v25 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_authNonce + 8);
  if (v25 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v26 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber);
  v27 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_alternateSerialNumber + 8);
  if (v27 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v94 = v6;
  v107 = v6[5];
  v108 = v18;
  v101 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
  LODWORD(v91) = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v28 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryCerts);
  v103 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_csr);
  v104 = v28;
  v29 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v30 = *v20;
  v99 = *v22;
  v100 = v30;
  v31 = *v24;
  v96 = *v26;
  v97 = v31;
  *&v116[0] = v29;
  *(&v116[0] + 1) = v19;
  v109 = v17;
  v110 = v19;
  v105 = v23;
  v106 = v21;
  v102 = v25;
  v98 = v27;
  sub_10002E98C(v29, v19);
  v95 = v29;
  sub_10002E98C(v29, v110);
  sub_10002E98C(v107, v15);
  sub_10002E98C(v101, v16);
  sub_10002E98C(v104, v109);
  sub_10002E98C(v103, v108);
  sub_10002E98C(v100, v106);
  sub_10002E98C(v99, v105);
  sub_10002E98C(v97, v102);
  sub_10002E98C(v96, v98);
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v39 = v95;
    v40 = Data.trimmed.getter();
    v89 = v41;
    v90 = v40;
    sub_100006654(v39, v110);
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    v43 = sub_1000076D4(v42, qword_10177C448);
    sub_10002E98C(v112, v113);
    *&v88 = v43;
    v93 = Logger.logObject.getter();
    LODWORD(v43) = static os_log_type_t.default.getter();
    sub_100006654(v112, v113);
    LODWORD(v92) = v43;
    v44 = v43;
    v45 = v93;
    if (os_log_type_enabled(v93, v44))
    {
      v46 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v116[0] = v86;
      v87 = v46;
      *v46 = 136446210;
      if (v113 >> 60 == 15)
      {
        v47 = 0;
        v48 = 0xE000000000000000;
      }

      else
      {
        v47 = Data.hexString.getter();
        v48 = v49;
      }

      *&v85 = sub_1000136BC(v47, v48, v116);

      v50 = v87;
      *(v87 + 1) = v85;
      _os_log_impl(&_mh_execute_header, v93, v92, "Pairing token: %{public}s", v50, 0xCu);
      sub_100007BAC(v86);
    }

    else
    {
    }

    v92 = sub_100F524A0(a5);

    v93 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    LODWORD(v88) = v51;
    if (os_log_type_enabled(v93, v51))
    {
      v52 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v116[0] = v86;
      v87 = v52;
      *v52 = 141558275;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2081;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v53 = Dictionary.description.getter();
      *&v85 = sub_1000136BC(v53, v54, v116);

      v55 = v87;
      *(v87 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v93, v88, "otherSerialNumbersAndPartIds: %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v86);
    }

    v56 = v94;
    v57 = *(v94 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
    *&v88 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds;
    *(v94 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v92;

    if (!*(a5 + 16))
    {
      LODWORD(v92) = 0;
LABEL_37:
      v93 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);
      v64 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
      v87 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
      v65 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
      v66 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
      v86 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
      v83 = v66;
      v84 = v65;
      v67 = *(v56 + v88);
      *&v58 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
      v88 = v58;
      *&v58 = *(v56 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
      v85 = v58;
      LOBYTE(v116[0]) = v91;
      v91 = sub_1000198E8();

      v68 = v56;
      v69 = FixedWidthInteger.data.getter();
      v71 = v70;
      sub_100016590(v90, v89);
      v115[2] = v101;
      v115[3] = v16;
      LOBYTE(v115[6]) = v92;
      *&v72 = v85;
      *(&v72 + 1) = v93;
      *&v73 = v88;
      *(&v73 + 1) = v64;
      v115[11] = v86;
      v115[12] = v83;
      v115[13] = v97;
      v115[14] = v102;
      v115[15] = v95;
      v115[16] = v110;
      v115[17] = v96;
      v115[18] = v98;
      v115[19] = v87;
      v115[21] = v84;
      v115[22] = v67;
      v115[24] = v100;
      v115[25] = v106;
      v115[26] = v104;
      v115[27] = v109;
      v115[28] = v103;
      v115[29] = v108;
      v115[30] = v99;
      v115[31] = v105;
      v115[32] = v69;
      v74 = v68[2];
      v110 = v68[3];
      v115[33] = v71;
      v115[36] = v107;
      v75 = v68[11];
      v76 = v68[12];
      v115[37] = v15;
      v115[23] = 0;
      v115[35] = v110;
      v115[38] = v75;
      v77 = v68[13];
      v78 = v68[14];
      v114 = 0;
      v79 = a1;
      v115[0] = a1;
      v81 = v111;
      v80 = v112;
      v115[1] = v111;
      v82 = v113;
      v115[4] = v112;
      v115[5] = v113;
      *&v115[9] = v73;
      *&v115[7] = v72;
      LOBYTE(v115[20]) = 0;
      v115[34] = v74;
      v115[39] = v76;
      v115[40] = v77;
      v115[41] = v78;
      SharingCircleWildAdvertisementKey.init(key:)(v115);
      sub_10002E98C(v80, v82);
      sub_100017D5C(v74, v110);

      sub_10002E98C(v77, v78);
      sub_100017D5C(v79, v81);
      memcpy(v116, v115, sizeof(v116));
      return memcpy(a6, v116, 0x150uLL);
    }

    v59 = sub_100771E30(v90, v89);
    if (v60)
    {
      sub_100F54CEC(*(a5 + 56) + *(v11 + 72) * v59, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v62 = *(v61 + 48);
        sub_100006654(*&v14[*(v61 + 64)], *&v14[*(v61 + 64) + 8]);
        sub_10000B3A8(&v14[v62], &qword_1016A40D0, &unk_10138BE70);
        v63 = type metadata accessor for UUID();
        (*(*(v63 - 8) + 8))(v14, v63);
        LODWORD(v92) = 1;
LABEL_36:
        v56 = v94;
        goto LABEL_37;
      }

      sub_100F54D54(v14, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    LODWORD(v92) = 0;
    goto LABEL_36;
  }

  v32 = v95;
  v33 = v110;
  sub_100006654(v95, v110);
  sub_100006654(v96, v98);
  sub_100006654(v97, v102);
  sub_100006654(v99, v105);
  sub_100006654(v100, v106);
  sub_100006654(v32, v33);
  sub_100006654(v103, v108);
  sub_100006654(v104, v109);
  sub_100006654(v101, v16);
  sub_100006654(v107, v15);
LABEL_13:
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177C448);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Missing info to generate AirPodsLEPairingCheckData!", v37, 2u);
  }

  sub_100F54C28(v116);
  return memcpy(a6, v116, 0x150uLL);
}

void *sub_100F514E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  if (v5 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v6 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v6 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v7 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
  if (v7 >> 60 == 15 || (v8 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8), v8 >> 60 == 15) || (v9 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8), v9 >> 60 == 15) || (v10 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8), v10 >> 60 == 15) || (v11 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8), v11 >> 60 == 15) || (v12 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8), v12 >> 60 == 15) || (v13 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v13 >> 60 == 15) || (v14 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v14 >> 60 == 15))
  {
LABEL_11:
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100F54CB8(__src);
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v18 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v20 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
    v22 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
    v36 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
    v37 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
    v38 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
    v25 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v26 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v32 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v24 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    v16 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v34 = v3[2];
    v35 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    v33 = v3[3];
    v17 = v3[11];
    v29 = v3[13];
    v27 = v3[12];
    v28 = v3[14];
    v39[1] = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v39[0] = v32;
    *&v39[2] = v16;
    *(&v39[2] + 1) = v35;
    *&v39[3] = v20;
    *(&v39[3] + 1) = v8;
    *&v39[4] = v22;
    *(&v39[4] + 1) = v9;
    *&v39[5] = v18;
    *(&v39[5] + 1) = v6;
    *&v39[6] = v25;
    *(&v39[6] + 1) = v12;
    *&v39[7] = v26;
    *(&v39[7] + 1) = v13;
    *&v39[8] = v34;
    *(&v39[8] + 1) = v33;
    *&v39[9] = v36;
    *(&v39[9] + 1) = v7;
    *&v39[10] = v23;
    *(&v39[10] + 1) = v5;
    *&v39[11] = v24;
    *(&v39[11] + 1) = v14;
    *&v39[12] = a1;
    *(&v39[12] + 1) = a2;
    *&v39[13] = v37;
    *(&v39[13] + 1) = v10;
    *&v39[14] = v38;
    *(&v39[14] + 1) = v11;
    *&v39[15] = v17;
    *(&v39[15] + 1) = v27;
    *&v39[16] = v29;
    *(&v39[16] + 1) = v28;
    v19 = v13;
    v21 = v14;
    SharingCircleWildAdvertisementKey.init(key:)(v39);
    sub_10002E98C(v23, v5);
    sub_10002E98C(v18, v6);
    sub_10002E98C(v36, v7);
    sub_10002E98C(v20, v8);
    sub_10002E98C(v22, v9);
    sub_10002E98C(v37, v10);
    sub_10002E98C(v38, v11);
    sub_10002E98C(v25, v12);
    sub_10002E98C(v26, v19);
    sub_10002E98C(v24, v21);

    sub_100017D5C(v34, v33);

    sub_10002E98C(v29, v28);
    sub_10002E98C(a1, a2);
    memcpy(__src, v39, sizeof(__src));
  }

  return memcpy(a3, __src, 0x110uLL);
}

void *sub_100F518CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v12 = sub_100F524A0(a5);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C448);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    __src[0] = v25;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100101BAC();
    v17 = Dictionary.description.getter();
    v19 = a1;
    v20 = a2;
    v21 = a4;
    v22 = sub_1000136BC(v17, v18, __src);

    *(v16 + 14) = v22;
    a4 = v21;
    a2 = v20;
    a1 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "otherSerialNumbersAndPartIds: %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v25);
  }

  v23 = *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
  *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v12;

  sub_100F51B04(a1, a2, v12, a3, a4, __src);

  return memcpy(a6, __src, 0x160uLL);
}

void *sub_100F51B04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v116 = a4;
  v117 = a5;
  v115 = a2;
  v10 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v82 - v12;
  v14 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v6[6];
  if (v19 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v20 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8);
  if (v20 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v21 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
  if (v21 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v22 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8);
  if (v22 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v23 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v23 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v24 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v24 >> 60 == 15)
  {
    goto LABEL_13;
  }

  if (*(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
  {
    goto LABEL_13;
  }

  v25 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v25 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v26 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v27 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
  if (v27 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v28 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
  v29 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
  if (v29 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v98 = v6;
  v110 = v6[5];
  v101 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
  v108 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
  v109 = v24;
  v30 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
  v106 = v27;
  v107 = v30;
  v31 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v103 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v104 = v31;
  LODWORD(v97) = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v32 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v102 = *v26;
  v100 = *v28;
  *&v121[0] = v32;
  *(&v121[0] + 1) = v25;
  v112 = v22;
  v113 = v21;
  v111 = v23;
  v114 = v25;
  v105 = v29;
  sub_10002E98C(v32, v25);
  v99 = v32;
  sub_10002E98C(v32, v114);
  sub_10002E98C(v110, v19);
  sub_10002E98C(v101, v20);
  sub_10002E98C(v108, v113);
  sub_10002E98C(v107, v112);
  sub_10002E98C(v104, v111);
  sub_10002E98C(v103, v109);
  sub_10002E98C(v102, v106);
  sub_10002E98C(v100, v105);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    v33 = v99;
    v34 = v114;
    sub_100006654(v99, v114);
    sub_100006654(v100, v105);
    sub_100006654(v102, v106);
    sub_100006654(v33, v34);
    sub_100006654(v103, v109);
    sub_100006654(v104, v111);
    sub_100006654(v107, v112);
    sub_100006654(v108, v113);
    sub_100006654(v101, v20);
    sub_100006654(v110, v19);
LABEL_13:
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177C448);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Missing info to generate AirPodsLEPairingCheckData!", v38, 2u);
    }

    sub_100BB0B34(v121);
    return memcpy(a6, v121, 0x160uLL);
  }

  v40 = v99;
  v41 = Data.trimmed.getter();
  v94 = v42;
  v95 = v41;
  sub_100006654(v40, v114);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_1000076D4(v43, qword_10177C448);
  sub_10002E98C(v116, v117);
  v96 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  sub_100006654(v116, v117);
  LODWORD(v93) = v44;
  v45 = v44;
  v46 = v96;
  if (os_log_type_enabled(v96, v45))
  {
    v47 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v121[0] = v91;
    v92 = v47;
    *v47 = 136446210;
    if (v117 >> 60 == 15)
    {
      v48 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v48 = Data.hexString.getter();
      v49 = v50;
    }

    v90 = sub_1000136BC(v48, v49, v121);

    v51 = v92;
    *(v92 + 1) = v90;
    _os_log_impl(&_mh_execute_header, v96, v93, "Pairing token: %{public}s", v51, 0xCu);
    sub_100007BAC(v91);
  }

  else
  {
  }

  v52 = v98;
  v86 = *(a3 + 16) && (v53 = sub_100771E30(v95, v94), v52 = v98, (v54 & 1) != 0) && (sub_100F54CEC(*(a3 + 56) + *(v15 + 72) * v53, v18, type metadata accessor for MultipartAccessoryPairingInfo), v55 = v18[1], sub_100F54D54(v18, type metadata accessor for MultipartAccessoryPairingInfo), v55 == 1);
  v56 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);
  v85 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
  v96 = v56;
  v57 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
  v87 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
  v93 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
  v58 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
  v88 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  v59 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
  v60 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
  v120 = v97;
  v97 = sub_1000198E8();

  v89 = v57;

  v90 = v58;

  v92 = v59;

  v91 = v60;

  v61 = FixedWidthInteger.data.getter();
  v62 = v98;
  v83 = v63;
  v84 = v61;
  sub_100016590(v95, v94);
  v64 = v62[2];
  v97 = v62[3];
  v65 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v62 + v65, v13, &qword_101697268, &qword_101394FE0);
  v66 = type metadata accessor for AccessoryProductInfo();
  v67 = (*(*(v66 - 8) + 48))(v13, 1, v66);
  v68 = v101;
  if (v67)
  {
    v94 = 0xF000000000000000;
    v95 = 0;
  }

  else
  {
    v69 = &v13[*(v66 + 100)];
    v70 = *v69;
    v94 = v69[1];
    v95 = v70;
    sub_10002E98C(v70, v94);
  }

  sub_100017D5C(v64, v97);
  sub_10000B3A8(v13, &qword_101697268, &qword_101394FE0);
  v119[2] = v68;
  v119[3] = v20;
  LOBYTE(v119[6]) = v86;
  *&v71 = v85;
  *(&v71 + 1) = v96;
  *&v72 = v87;
  v73 = v62[11];
  v74 = v62[12];
  *(&v72 + 1) = v89;
  v75 = v62[13];
  v76 = v62[14];
  v118 = 0;
  v77 = a1;
  v119[0] = a1;
  v78 = v115;
  v119[1] = v115;
  v79 = v64;
  v81 = v116;
  v80 = v117;
  v119[4] = v116;
  v119[5] = v117;
  *&v119[9] = v72;
  *&v119[7] = v71;
  v119[11] = v88;
  v119[12] = v90;
  v119[13] = v104;
  v119[14] = v111;
  v119[15] = v103;
  v119[16] = v109;
  v119[17] = v99;
  v119[18] = v114;
  v119[19] = v93;
  LOBYTE(v119[20]) = 0;
  v119[21] = v92;
  v119[22] = v91;
  v119[23] = 0;
  v119[24] = v102;
  v119[25] = v106;
  v119[26] = v100;
  v119[27] = v105;
  v119[28] = v84;
  v119[29] = v83;
  v119[30] = v79;
  v119[31] = v97;
  v119[32] = v110;
  v119[33] = v19;
  v119[34] = v95;
  v119[35] = v94;
  v119[36] = v73;
  v119[37] = v74;
  v119[38] = v75;
  v119[39] = v76;
  v119[40] = v108;
  v119[41] = v113;
  v119[42] = v107;
  v119[43] = v112;
  SharingCircleWildAdvertisementKey.init(key:)(v119);
  sub_10002E98C(v81, v80);

  sub_10002E98C(v75, v76);
  sub_100017D5C(v77, v78);
  memcpy(v121, v119, sizeof(v121));
  return memcpy(a6, v121, 0x160uLL);
}

uint64_t sub_100F524A0(uint64_t a1)
{
  v221 = a1;
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v214 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v205 = *(v208 - 8);
  v5 = *(v205 + 64);
  v6 = __chkstk_darwin(v208);
  v204 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v199 = &v192 - v9;
  v10 = __chkstk_darwin(v8);
  v203 = &v192 - v11;
  v12 = __chkstk_darwin(v10);
  v198 = &v192 - v13;
  v14 = __chkstk_darwin(v12);
  v202 = &v192 - v15;
  __chkstk_darwin(v14);
  v197 = &v192 - v16;
  v207 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v206 = *(v207 - 8);
  v17 = *(v206 + 64);
  v18 = __chkstk_darwin(v207);
  v211 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v210 = &v192 - v20;
  v21 = &qword_1016A40D0;
  v22 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v217 = *(v22 - 8);
  v23 = *(v217 + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v196 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v201 = &v192 - v27;
  v28 = __chkstk_darwin(v26);
  v195 = &v192 - v29;
  v30 = __chkstk_darwin(v28);
  v200 = &v192 - v31;
  __chkstk_darwin(v30);
  v216 = &v192 - v32;
  v33 = sub_1000BC4D4(&qword_1016BCD78, &qword_1013EADB0);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v37 = &v192 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v192 - v38;
  v40 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v41 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);
  v42 = *v40;
  v43 = v40[1];
  v44 = *(v41 + 64);
  v223 = v41 + 64;
  v45 = 1 << *(v41 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v44;
  v212 = v42;
  v209 = v43;
  sub_10002E98C(v42, v43);
  v222 = (v45 + 63) >> 6;
  v218 = v41;

  v48 = 0;
  v213 = _swiftEmptyDictionarySingleton;
  *&v49 = 141558275;
  v215 = v49;
  *&v49 = 141558787;
  v194 = v49;
  v224 = v39;
  v220 = v37;
  while (2)
  {
    v51 = v222;
    v50 = v223;
    while (1)
    {
      if (!v47)
      {
        if (v51 <= v48 + 1)
        {
          v54 = v48 + 1;
        }

        else
        {
          v54 = v51;
        }

        v55 = v54 - 1;
        while (1)
        {
          v53 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v53 >= v51)
          {
            v64 = v21;
            v85 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
            (*(*(v85 - 8) + 56))(v37, 1, 1, v85);
            v226 = 0;
            v48 = v55;
            goto LABEL_18;
          }

          v47 = *(v50 + 8 * v53);
          ++v48;
          if (v47)
          {
            v52 = v37;
            v48 = v53;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_90:
        swift_once();
LABEL_86:
        v180 = type metadata accessor for Logger();
        sub_1000076D4(v180, qword_10177C418);
        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.default.getter();
        v183 = os_log_type_enabled(v181, v182);
        v184 = v213;
        if (v183)
        {
          v185 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v227 = v186;
          *v185 = v215;
          *(v185 + 4) = 1752392040;
          *(v185 + 12) = 2081;
          sub_100101BAC();

          v187 = Dictionary.description.getter();
          v189 = v188;

          v190 = sub_1000136BC(v187, v189, &v227);

          *(v185 + 14) = v190;
          _os_log_impl(&_mh_execute_header, v181, v182, "otherAccessoryPairingInfo: %{private,mask.hash}s", v185, 0x16u);
          sub_100007BAC(v186);
        }

        sub_100006654(v212, v209);

        return v184;
      }

      v52 = v37;
      v53 = v48;
LABEL_17:
      v226 = (v47 - 1) & v47;
      v56 = __clz(__rbit64(v47)) | (v53 << 6);
      v57 = (*(v218 + 48) + 16 * v56);
      v58 = *v57;
      v59 = v57[1];
      v60 = v216;
      sub_1000D2A70(*(v218 + 56) + *(v217 + 72) * v56, v216, v21, &unk_10138BE70);
      v61 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      v62 = *(v61 + 48);
      *v52 = v58;
      v52[1] = v59;
      v63 = v60;
      v64 = v21;
      v37 = v52;
      sub_1000D2AD8(v63, v52 + v62, v21, &unk_10138BE70);
      (*(*(v61 - 8) + 56))(v52, 0, 1, v61);
      sub_100017D5C(v58, v59);
      v39 = v224;
LABEL_18:
      sub_1000D2AD8(v37, v39, &qword_1016BCD78, &qword_1013EADB0);
      v65 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      if ((*(*(v65 - 8) + 48))(v39, 1, v65) == 1)
      {

        if (qword_1016950D0 == -1)
        {
          goto LABEL_86;
        }

        goto LABEL_90;
      }

      v66 = *v39;
      v67 = *(v65 + 48);
      v68 = v221;
      v69 = *(v221 + 16);
      v70 = *(v39 + 1);
      v225 = *v39;
      if (v69)
      {
        v71 = v66;
        v72 = sub_100771E30(v66, v70);
        if (v73)
        {
          break;
        }
      }

      v21 = v64;
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_1000076D4(v74, qword_10177C418);
      v75 = v225;
      sub_100017D5C(v225, v70);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      sub_100016590(v75, v70);
      if (os_log_type_enabled(v76, v77))
      {
        v219 = v67;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v227 = v79;
        *v78 = v215;
        *(v78 + 4) = 1752392040;
        *(v78 + 12) = 2081;
        sub_100017D5C(v75, v70);
        static String.Encoding.utf8.getter();
        v80 = String.init(data:encoding:)();
        if (!v81)
        {
          v80 = Data.hexString.getter();
        }

        v82 = v80;
        v83 = v81;
        sub_100016590(v75, v70);
        v84 = sub_1000136BC(v82, v83, &v227);

        *(v78 + 14) = v84;
        _os_log_impl(&_mh_execute_header, v76, v77, "%{private,mask.hash}s is missing from beaconMap!", v78, 0x16u);
        sub_100007BAC(v79);

        sub_100016590(v75, v70);

        v21 = &qword_1016A40D0;
        v67 = v219;
        v37 = v220;
        v39 = v224;
      }

      else
      {

        sub_100016590(v75, v70);
        v37 = v220;
      }

      sub_10000B3A8(&v39[v67], v21, &unk_10138BE70);
      v51 = v222;
      v50 = v223;
      v47 = v226;
    }

    v86 = v210;
    sub_100F54CEC(*(v68 + 56) + *(v206 + 72) * v72, v210, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100F54CEC(v86, v211, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v64;
    v219 = v67;
    if (!EnumCaseMultiPayload)
    {
      v114 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v115 = (v211 + *(v114 + 48));
      v116 = *v115;
      v117 = v115[1];
      v118 = v115[2];
      v119 = v200;
      sub_1000D2AD8(v211, v200, v21, &unk_10138BE70);
      if (v117)
      {
        v120 = -1;
      }

      else
      {
        v120 = v116;
      }

      v121 = v195;
      sub_1000D2A70(v119, v195, v21, &unk_10138BE70);
      if (v118 == 3)
      {
        v122 = 0;
      }

      else
      {
        v122 = v118;
      }

      v123 = v197;
      *v197 = v120;
      *(v123 + 1) = 0;
      v124 = v208;
      sub_1000D2AD8(v121, v123 + *(v208 + 24), v21, &unk_10138BE70);
      *(v123 + *(v124 + 28)) = v122;
      sub_100837460(v123, v202);
      v125 = v213;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v227 = v125;
      v127 = v70;
      v128 = sub_100771E30(v71, v70);
      v130 = *(v125 + 16);
      v131 = (v129 & 1) == 0;
      v109 = __OFADD__(v130, v131);
      v132 = v130 + v131;
      if (v109)
      {
        goto LABEL_93;
      }

      v133 = v129;
      if (*(v125 + 24) >= v132)
      {
        v37 = v220;
        v135 = v225;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v178 = v128;
          sub_1010052AC();
          v135 = v225;
          v128 = v178;
        }
      }

      else
      {
        sub_100FE68A8(v132, isUniquelyReferenced_nonNull_native);
        v128 = sub_100771E30(v71, v70);
        v37 = v220;
        if ((v133 & 1) != (v134 & 1))
        {
          goto LABEL_97;
        }

        v135 = v225;
      }

      v146 = v227;
      v145 = v219;
      v213 = v227;
      if (v133)
      {
        sub_1008374C4(v202, v227[7] + *(v205 + 72) * v128);
        sub_100016590(v71, v127);
        sub_10000B3A8(v200, v21, &unk_10138BE70);
        sub_100F54D54(v210, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v227[(v128 >> 6) + 8] |= 1 << v128;
        *(v146[6] + 16 * v128) = v135;
        sub_100837460(v202, v146[7] + *(v205 + 72) * v128);
        sub_10000B3A8(v200, v21, &unk_10138BE70);
        sub_100F54D54(v210, type metadata accessor for OwnedBeaconGroup.PairingState);
        v150 = v146[2];
        v109 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v109)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v146[2] = v151;
      }

      v39 = v224;
      goto LABEL_83;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v136 = type metadata accessor for Logger();
      sub_1000076D4(v136, qword_10177C418);
      v137 = v212;
      v138 = v209;
      sub_10002E98C(v212, v209);
      sub_100017D5C(v71, v70);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.error.getter();
      sub_100006654(v137, v138);
      sub_100016590(v71, v70);
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v227 = v193;
        *v141 = v194;
        *(v141 + 4) = 1752392040;
        *(v141 + 12) = 2081;
        if (v138 >> 60 == 15)
        {
          v142 = 0;
          v143 = 0xE000000000000000;
        }

        else
        {
          v142 = Data.hexString.getter();
          v143 = v152;
        }

        v153 = sub_1000136BC(v142, v143, &v227);

        *(v141 + 14) = v153;
        *(v141 + 22) = 2160;
        *(v141 + 24) = 1752392040;
        *(v141 + 32) = 2081;
        sub_100017D5C(v71, v70);
        static String.Encoding.utf8.getter();
        v154 = String.init(data:encoding:)();
        if (!v155)
        {
          v154 = Data.hexString.getter();
        }

        v156 = v154;
        v157 = v155;
        sub_100016590(v71, v70);
        v158 = sub_1000136BC(v156, v157, &v227);

        *(v141 + 34) = v158;
        _os_log_impl(&_mh_execute_header, v139, v140, "Why are we pairing %{private,mask.hash}s, when %{private,mask.hash}s is pairing locked to another iCloud account?", v141, 0x2Au);
        swift_arrayDestroy();
      }

      v159 = v208;
      v160 = *(v208 + 24);
      v161 = type metadata accessor for MACAddress();
      v162 = v199;
      (*(*(v161 - 8) + 56))(&v199[v160], 1, 1, v161);
      *v162 = 767;
      *(v162 + *(v159 + 28)) = 0;
      sub_100837460(v162, v204);
      v163 = v213;
      v164 = swift_isUniquelyReferenced_nonNull_native();
      v227 = v163;
      v165 = sub_100771E30(v71, v70);
      v167 = *(v163 + 16);
      v168 = (v166 & 1) == 0;
      v109 = __OFADD__(v167, v168);
      v169 = v167 + v168;
      if (v109)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v170 = v166;
      if (*(v163 + 24) >= v169)
      {
        v173 = v225;
        v172 = v70;
        if ((v164 & 1) == 0)
        {
          v179 = v165;
          sub_1010052AC();
          v173 = v225;
          v165 = v179;
        }
      }

      else
      {
        sub_100FE68A8(v169, v164);
        v165 = sub_100771E30(v71, v70);
        if ((v170 & 1) != (v171 & 1))
        {
          goto LABEL_97;
        }

        v172 = v70;
        v173 = v225;
      }

      v174 = v227;
      v145 = v219;
      v213 = v227;
      if (v170)
      {
        sub_1008374C4(v204, v227[7] + *(v205 + 72) * v165);
        sub_100016590(v71, v172);
        sub_100F54D54(v210, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v227[(v165 >> 6) + 8] |= 1 << v165;
        *(v174[6] + 16 * v165) = v173;
        sub_100837460(v204, v174[7] + *(v205 + 72) * v165);
        sub_100F54D54(v210, type metadata accessor for OwnedBeaconGroup.PairingState);
        v175 = v174[2];
        v109 = __OFADD__(v175, 1);
        v176 = v175 + 1;
        if (v109)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v174[2] = v176;
      }

      v39 = v224;
LABEL_83:
      v47 = v226;
      goto LABEL_84;
    }

    v88 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v89 = v88[12];
    v90 = v211;
    sub_100006654(*(v211 + v88[16]), *(v211 + v88[16] + 8));
    v91 = (v90 + v88[24]);
    v92 = *v91;
    v93 = v91[1];
    v94 = v91[2];
    v95 = v90 + v89;
    v96 = v201;
    sub_1000D2AD8(v95, v201, &qword_1016A40D0, &unk_10138BE70);
    if (v93)
    {
      v92 = -1;
    }

    v97 = v96;
    v98 = v196;
    sub_1000D2A70(v97, v196, &qword_1016A40D0, &unk_10138BE70);
    if (v94 == 3)
    {
      v99 = 0;
    }

    else
    {
      v99 = v94;
    }

    v21 = &qword_1016A40D0;
    v100 = v198;
    *v198 = v92;
    *(v100 + 1) = 1;
    v101 = v208;
    sub_1000D2AD8(v98, v100 + *(v208 + 24), &qword_1016A40D0, &unk_10138BE70);
    *(v100 + *(v101 + 28)) = v99;
    sub_100837460(v100, v203);
    v102 = v213;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v227 = v102;
    v104 = v70;
    v105 = sub_100771E30(v71, v70);
    v107 = *(v102 + 16);
    v108 = (v106 & 1) == 0;
    v109 = __OFADD__(v107, v108);
    v110 = v107 + v108;
    if (v109)
    {
      goto LABEL_92;
    }

    v111 = v106;
    if (*(v102 + 24) >= v110)
    {
      v37 = v220;
      v113 = v225;
      if ((v103 & 1) == 0)
      {
        v177 = v105;
        sub_1010052AC();
        v113 = v225;
        v105 = v177;
      }

LABEL_56:
      v144 = v227;
      v145 = v219;
      v213 = v227;
      if (v111)
      {
        sub_1008374C4(v203, v227[7] + *(v205 + 72) * v105);
        sub_100016590(v71, v104);
        sub_10000B3A8(v201, &qword_1016A40D0, &unk_10138BE70);
        sub_100F54D54(v210, type metadata accessor for OwnedBeaconGroup.PairingState);
LABEL_64:
        v39 = v224;
        v47 = v226;
        v149 = type metadata accessor for UUID();
        (*(*(v149 - 8) + 8))(v211, v149);
LABEL_84:
        sub_10000B3A8(&v39[v145], v21, &unk_10138BE70);
        continue;
      }

      v227[(v105 >> 6) + 8] |= 1 << v105;
      *(v144[6] + 16 * v105) = v113;
      sub_100837460(v203, v144[7] + *(v205 + 72) * v105);
      sub_10000B3A8(v201, &qword_1016A40D0, &unk_10138BE70);
      sub_100F54D54(v210, type metadata accessor for OwnedBeaconGroup.PairingState);
      v147 = v144[2];
      v109 = __OFADD__(v147, 1);
      v148 = v147 + 1;
      if (!v109)
      {
        v144[2] = v148;
        goto LABEL_64;
      }

      goto LABEL_94;
    }

    break;
  }

  sub_100FE68A8(v110, v103);
  v105 = sub_100771E30(v71, v70);
  v37 = v220;
  if ((v111 & 1) == (v112 & 1))
  {
    v113 = v225;
    goto LABEL_56;
  }

LABEL_97:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 sub_100F5395C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  if (v5 >> 60 == 15 || (v6 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8), v6 >> 60 == 15) || (v7 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8), v7 >> 60 == 15) || (v8 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8), v8 >> 60 == 15) || (v9 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v9 >> 60 == 15) || (v10 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v10 >> 60 == 15))
  {
    static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_100F54C8C(&v48);
  }

  else
  {
    v17 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v18 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v19 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts);
    v24 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v25 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v23 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    v27 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v20 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v31 = v3[2];
    v32 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    v21 = v3[11];
    v26 = v3[12];
    v29 = v3[13];
    v30 = v3[3];
    v28 = v3[14];
    v35 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v36 = v27;
    *&v37 = v20;
    *(&v37 + 1) = v32;
    *&v38 = v18;
    *(&v38 + 1) = v6;
    *&v39 = v24;
    *(&v39 + 1) = v8;
    *&v40 = v25;
    *(&v40 + 1) = v9;
    *&v41 = v19;
    *(&v41 + 1) = v7;
    v22 = v19;
    *&v42 = v31;
    *(&v42 + 1) = v30;
    *&v43 = v17;
    *(&v43 + 1) = v5;
    *&v44 = v23;
    *(&v44 + 1) = v10;
    *&v45 = a1;
    *(&v45 + 1) = a2;
    *&v46 = v21;
    *(&v46 + 1) = v26;
    *&v47 = v29;
    *(&v47 + 1) = v28;
    SharingCircleWildAdvertisementKey.init(key:)(&v35);
    sub_10002E98C(v17, v5);
    sub_10002E98C(v18, v6);
    sub_10002E98C(v22, v7);
    sub_10002E98C(v24, v8);
    sub_10002E98C(v25, v9);
    sub_10002E98C(v23, v10);

    sub_100017D5C(v31, v30);

    sub_10002E98C(v29, v28);
    sub_10002E98C(a1, a2);
    v58 = v45;
    v59 = v46;
    v60 = v47;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v57 = v44;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v53 = v40;
    v48 = v35;
    v49 = v36;
  }

  v11 = v59;
  *(a3 + 160) = v58;
  *(a3 + 176) = v11;
  *(a3 + 192) = v60;
  v12 = v55;
  *(a3 + 96) = v54;
  *(a3 + 112) = v12;
  v13 = v57;
  *(a3 + 128) = v56;
  *(a3 + 144) = v13;
  v14 = v51;
  *(a3 + 32) = v50;
  *(a3 + 48) = v14;
  v15 = v53;
  *(a3 + 64) = v52;
  *(a3 + 80) = v15;
  result = v49;
  *a3 = v48;
  *(a3 + 16) = result;
  return result;
}

void *sub_100F53C90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v110 = a3;
  v111 = a4;
  v108 = a1;
  v109 = a2;
  v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v80 - v11;
  v13 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v6[6];
  if (v18 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v19 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1 + 8);
  if (v19 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v20 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v20 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v21 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v21 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v22 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v22 >> 60 == 15)
  {
    goto LABEL_11;
  }

  if (*(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
  {
    goto LABEL_11;
  }

  v23 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
  if (v23 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v24 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8);
  if (v24 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v104 = v6[5];
  v105 = v21;
  v98 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1);
  v100 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v101 = v24;
  v99 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v25 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  LODWORD(v92) = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v97 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v26 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts);
  v95 = v6;
  v96 = v26;
  v106 = v20;
  v107 = v25;
  *&v115[0] = v25;
  *(&v115[0] + 1) = v22;
  v27 = v22;
  v102 = v23;
  sub_10002E98C(v25, v22);
  v103 = v27;
  sub_10002E98C(v107, v27);
  sub_10002E98C(v104, v18);
  sub_10002E98C(v98, v19);
  sub_10002E98C(v100, v106);
  sub_10002E98C(v99, v105);
  sub_10002E98C(v97, v102);
  sub_10002E98C(v96, v101);
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v31 = v107;
    v32 = Data.trimmed.getter();
    v90 = v33;
    v91 = v32;
    sub_100006654(v31, v103);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    v35 = sub_1000076D4(v34, qword_10177C418);
    sub_10002E98C(v110, v111);
    v89 = v35;
    v94 = Logger.logObject.getter();
    LODWORD(v35) = static os_log_type_t.default.getter();
    sub_100006654(v110, v111);
    LODWORD(v93) = v35;
    v36 = v35;
    v37 = v94;
    if (os_log_type_enabled(v94, v36))
    {
      v38 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v115[0] = v87;
      v88 = v38;
      *v38 = 136446210;
      if (v111 >> 60 == 15)
      {
        v39 = 0;
        v40 = 0xE000000000000000;
      }

      else
      {
        v39 = Data.hexString.getter();
        v40 = v41;
      }

      v86 = sub_1000136BC(v39, v40, v115);

      v42 = v88;
      *(v88 + 1) = v86;
      _os_log_impl(&_mh_execute_header, v94, v93, "Pairing token: %{public}s", v42, 0xCu);
      sub_100007BAC(v87);
    }

    else
    {
    }

    v93 = sub_100F524A0(a5);

    v94 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    LODWORD(v89) = v43;
    if (os_log_type_enabled(v94, v43))
    {
      v44 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v115[0] = v87;
      v88 = v44;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v45 = Dictionary.description.getter();
      v86 = sub_1000136BC(v45, v46, v115);

      v47 = v88;
      *(v88 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v94, v89, "otherSerialNumbersAndPartIds: %{private,mask.hash}s", v47, 0x16u);
      sub_100007BAC(v87);
    }

    v48 = v95;
    v49 = *(v95 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
    v87 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds;
    *(v95 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v93;

    if (!*(a5 + 16))
    {
      LODWORD(v94) = 0;
LABEL_33:
      v55 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);
      v89 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
      v56 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
      v85 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
      v57 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
      v83 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
      v88 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
      v58 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
      v59 = *(v87 + v48);
      v114 = v92;
      v82 = sub_1000198E8();
      v93 = v55;

      v87 = v56;

      v84 = v57;

      v92 = v58;

      v86 = v59;

      v60 = FixedWidthInteger.data.getter();
      v61 = v95;
      v81 = v62;
      v82 = v60;
      sub_100016590(v91, v90);
      v63 = v61[2];
      v64 = v61[3];
      v65 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
      swift_beginAccess();
      sub_1000D2A70(v61 + v65, v12, &qword_101697268, &qword_101394FE0);
      v66 = type metadata accessor for AccessoryProductInfo();
      if ((*(*(v66 - 8) + 48))(v12, 1, v66))
      {
        v67 = 0;
        v68 = 0xF000000000000000;
      }

      else
      {
        v69 = &v12[*(v66 + 100)];
        v67 = *v69;
        v68 = v69[1];
        sub_10002E98C(*v69, v68);
      }

      sub_100017D5C(v63, v64);
      sub_10000B3A8(v12, &qword_101697268, &qword_101394FE0);
      v113[2] = v98;
      v113[3] = v19;
      LOBYTE(v113[6]) = v94;
      *&v70 = v89;
      *(&v70 + 1) = v93;
      *&v71 = v85;
      *(&v71 + 1) = v87;
      v113[11] = v83;
      v113[12] = v84;
      v113[13] = v100;
      v113[14] = v106;
      v113[15] = v99;
      v113[16] = v105;
      v113[17] = v107;
      v113[18] = v103;
      v113[19] = v88;
      v113[21] = v92;
      v113[22] = v86;
      v113[24] = v97;
      v113[25] = v102;
      v113[26] = v96;
      v113[27] = v101;
      v113[28] = v82;
      v113[29] = v81;
      v113[30] = v63;
      v113[31] = v64;
      v113[32] = v104;
      v113[33] = v18;
      v113[34] = v67;
      v72 = v61[11];
      v73 = v61[12];
      v113[35] = v68;
      v113[23] = 0;
      v113[36] = v72;
      v74 = v61[13];
      v75 = v61[14];
      v112 = 0;
      v77 = v108;
      v76 = v109;
      v113[0] = v108;
      v113[1] = v109;
      v79 = v110;
      v78 = v111;
      v113[4] = v110;
      v113[5] = v111;
      *&v113[9] = v71;
      *&v113[7] = v70;
      LOBYTE(v113[20]) = 0;
      v113[37] = v73;
      v113[38] = v74;
      v113[39] = v75;
      SharingCircleWildAdvertisementKey.init(key:)(v113);
      sub_10002E98C(v79, v78);

      sub_10002E98C(v74, v75);
      sub_100017D5C(v77, v76);
      memcpy(v115, v113, sizeof(v115));
      return memcpy(a6, v115, 0x140uLL);
    }

    v50 = sub_100771E30(v91, v90);
    if (v51)
    {
      sub_100F54CEC(*(a5 + 56) + *(v14 + 72) * v50, v17, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v52 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v53 = *(v52 + 48);
        sub_100006654(*&v17[*(v52 + 64)], *&v17[*(v52 + 64) + 8]);
        sub_10000B3A8(&v17[v53], &qword_1016A40D0, &unk_10138BE70);
        v54 = type metadata accessor for UUID();
        (*(*(v54 - 8) + 8))(v17, v54);
        LODWORD(v94) = 1;
LABEL_32:
        v48 = v95;
        goto LABEL_33;
      }

      sub_100F54D54(v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    LODWORD(v94) = 0;
    goto LABEL_32;
  }

  v28 = v107;
  v29 = v103;
  sub_100006654(v107, v103);
  sub_100006654(v96, v101);
  sub_100006654(v97, v102);
  sub_100006654(v28, v29);
  sub_100006654(v99, v105);
  sub_100006654(v100, v106);
  sub_100006654(v98, v19);
  sub_100006654(v104, v18);
LABEL_11:
  static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_100F54C5C(v115);
  return memcpy(a6, v115, 0x140uLL);
}

uint64_t sub_100F54708()
{
  result = Data.init(base64Encoded:options:)();
  qword_1016C1438 = result;
  qword_1016C1440 = v1;
  return result;
}

uint64_t sub_100F54748()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 aa_primaryAppleAccount];
    if (v2)
    {
      v3 = v2;
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000076D4(v4, qword_10177C418);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      v8 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      if (os_log_type_enabled(v6, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v25 = v10;
        *v9 = 136315138;
        v11 = [v5 aa_altDSID];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v8 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
        }

        else
        {
          v13 = 0;
          v15 = 0xE000000000000000;
        }

        v20 = sub_1000136BC(v13, v15, &v25);

        *(v9 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v6, v7, "Alt_DSID: %s", v9, 0xCu);
        sub_100007BAC(v10);
      }

      v21 = [v5 v8[156]];
      if (v21)
      {
        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
      }
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177C418);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to obtain Alt_DSID from account. Using device serial number instead to support account signed out.", v19, 2u);
      }

      sub_100EF9784();
    }

    v23 = sub_10049C498();

    return v23;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double sub_100F54BFC(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  return result;
}