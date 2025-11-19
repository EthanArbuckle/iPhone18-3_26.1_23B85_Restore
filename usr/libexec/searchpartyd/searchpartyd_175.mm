uint64_t sub_1011EC54C()
{
  v33 = v0;
  if (qword_101695498 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_1000076D4(v5, qword_1016CB4E8);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v13 = 136446210;
    sub_1011F1D6C(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v32);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting discovery scan for peripherals matching macAddress: %{public}s", v13, 0xCu);
    sub_100007BAC(v31);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v0[31] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v19 = type metadata accessor for CentralManager.State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v0[32] = v23;
  *(v23 + 16) = xmmword_10138BBE0;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, enum case for CentralManager.State.poweredOn(_:), v19);
  v25(v24 + v21, enum case for CentralManager.State.restricted(_:), v19);
  v26 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v27 = swift_task_alloc();
  v0[33] = v27;
  v28 = type metadata accessor for CentralManager();
  v29 = sub_1011F1D6C(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v27 = v0;
  v27[1] = sub_1011EC910;

  return CentralManagerProtocol.await(states:)(v23, v28, v29);
}

uint64_t sub_1011EC910()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1011EDCBC;
  }

  else
  {
    v6 = *(v2 + 256);
    v7 = *(v2 + 24);

    v5 = sub_1011ECA38;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011ECA38()
{
  v21 = v0;
  v1 = v0[27];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136FCF0, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  sub_1000BC4D4(&qword_1016973D8, &qword_10138BF80);
  v9 = *(sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  Identifier.init(stringLiteral:)();
  *v6 = v12;
  (*(v7 + 104))(v6, enum case for ScanMode.serviceIdentifiers(_:), v8);
  v13 = *(&async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + 1);
  v19 = &async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:) + async function pointer to dispatch thunk of CentralManager.scanForPeripherals(scanMode:garbageCollectInterval:);
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_1011ECCE8;
  v15 = v0[31];
  v16 = v0[22];
  v17 = v0[18];

  return (v19)(v16, v17, 0xD02AB486CEDC0000, 0);
}

uint64_t sub_1011ECCE8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 288) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_1011EDDB0;
  }

  else
  {
    v9 = sub_1011ECE70;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1011ECE70()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[4];
  (*(v0[20] + 16))(v0[21], v0[22], v0[19]);
  *(swift_allocObject() + 16) = v5;
  v0[37] = type metadata accessor for Peripheral();
  sub_1000041A4(&qword_1016973E0, &unk_1016C2160, &qword_10138BF78);
  AsyncCompactMapSequence.init(_:transform:)();
  AsyncCompactMapSequence.base.getter();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v7 = sub_1011F1D6C(&qword_1016CB5C0, v6, type metadata accessor for AirPodsLEPeripheralProvider);
  v0[38] = v7;
  v8 = v0[3];
  v9 = swift_task_alloc();
  v0[39] = v9;
  *v9 = v0;
  v9[1] = sub_1011ED094;
  v10 = v0[12];

  return sub_1011EBA70(v8, v7);
}

uint64_t sub_1011ED094(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_1011EDE9C;
  }

  else
  {
    v8 = sub_1011ED1C8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1011ED1C8()
{
  if (!v0[40])
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
LABEL_7:
    v9 = v0[27];
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Missing peripheral after scanning!", v12, 2u);
    }

    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[20];
    v17 = v0[14];
    v16 = v0[15];
    v18 = v0[13];

    sub_1011F1C68();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v13, v14);
    v21 = v0[25];
    v20 = v0[26];
    v23 = v0[21];
    v22 = v0[22];
    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[12];
    v28 = v0[8];
    v27 = v0[9];
    v29 = v0[7];

    v30 = v0[1];

    return v30();
  }

  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[27];
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Task cancelled!", v8, 2u);
    }

    (*(v6 + 8))(v5, v7);
    goto LABEL_7;
  }

  v32 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
  v36 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v33 = swift_task_alloc();
  v0[42] = v33;
  *v33 = v0;
  v33[1] = sub_1011ED4E4;
  v34 = v0[31];
  v35 = v0[2];

  return v36(v35);
}

uint64_t sub_1011ED4E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_1011EE16C;
  }

  else
  {
    v8 = sub_1011ED618;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1011ED618()
{
  v77 = v0;
  if (*(v0 + 344))
  {
    v1 = *(v0 + 320);
    v2 = *(v0 + 296);
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 344);
    Peripheral.id.getter();
    Peripheral.id.getter();
    LOBYTE(v7) = static Identifier.== infix(_:_:)();

    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
    if (v7)
    {
      v10 = *(v0 + 200);
      v9 = *(v0 + 208);
      v11 = *(v0 + 176);
      v12 = *(v0 + 152);
      v13 = *(v0 + 160);
      v70 = *(v0 + 168);
      v71 = *(v0 + 144);
      v14 = *(v0 + 112);
      v15 = *(v0 + 120);
      v16 = *(v0 + 104);
      v72 = *(v0 + 72);
      v73 = *(v0 + 64);
      v74 = *(v0 + 56);
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
      (*(v14 + 8))(v15, v16);
      (*(v13 + 8))(v11, v12);

      v17 = *(v0 + 8);
      v18 = *(v0 + 320);

      return v17(v18);
    }

    else
    {
      v35 = *(v0 + 320);

      v36 = *(v0 + 304);
      v37 = *(v0 + 24);
      v38 = swift_task_alloc();
      *(v0 + 312) = v38;
      *v38 = v0;
      v38[1] = sub_1011ED094;
      v39 = *(v0 + 96);

      return sub_1011EBA70(v37, v36);
    }
  }

  else
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    (*(v0 + 224))(*(v0 + 200), *(v0 + 16), *(v0 + 184));
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 240);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 184);
    if (v24)
    {
      v75 = *(v0 + 240);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v76 = v30;
      *v29 = 136446210;
      sub_1011F1D6C(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v75(v26, v28);
      v34 = sub_1000136BC(v31, v33, &v76);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "Missing peripheral for %{public}s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    else
    {

      v25(v26, v28);
    }

    v40 = *(v0 + 320);
    sub_1011F1C68();
    swift_allocError();
    *v41 = 1;
    swift_willThrow();

    v42 = *(v0 + 216);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error during scan: %{public}@", v45, 0xCu);
      sub_10000B3A8(v46, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v48 = *(v0 + 216);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Missing peripheral after scanning!", v51, 2u);
    }

    v52 = *(v0 + 176);
    v53 = *(v0 + 152);
    v54 = *(v0 + 160);
    v56 = *(v0 + 112);
    v55 = *(v0 + 120);
    v57 = *(v0 + 104);

    swift_allocError();
    *v58 = 1;
    swift_willThrow();
    (*(v56 + 8))(v55, v57);
    (*(v54 + 8))(v52, v53);
    v60 = *(v0 + 200);
    v59 = *(v0 + 208);
    v62 = *(v0 + 168);
    v61 = *(v0 + 176);
    v63 = *(v0 + 144);
    v64 = *(v0 + 120);
    v65 = *(v0 + 96);
    v67 = *(v0 + 64);
    v66 = *(v0 + 72);
    v68 = *(v0 + 56);

    v69 = *(v0 + 8);

    return v69();
  }
}

uint64_t sub_1011EDCBC()
{
  v1 = v0[32];

  v14 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011EDDB0()
{
  v13 = v0[36];
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1011EDE9C()
{
  v1 = v0[41];
  v2 = v0[27];
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error during scan: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[27];
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Missing peripheral after scanning!", v11, 2u);
  }

  v12 = v0[22];
  v13 = v0[19];
  v14 = v0[20];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];

  sub_1011F1C68();
  swift_allocError();
  *v18 = 1;
  swift_willThrow();
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v12, v13);
  v20 = v0[25];
  v19 = v0[26];
  v22 = v0[21];
  v21 = v0[22];
  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[12];
  v27 = v0[8];
  v26 = v0[9];
  v28 = v0[7];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1011EE16C()
{
  v1 = v0[40];

  v2 = v0[44];
  v3 = v0[27];
  (*(v0[11] + 8))(v0[12], v0[10]);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Error during scan: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[27];
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Missing peripheral after scanning!", v12, 2u);
  }

  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[20];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];

  sub_1011F1C68();
  swift_allocError();
  *v19 = 1;
  swift_willThrow();
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);
  v21 = v0[25];
  v20 = v0[26];
  v23 = v0[21];
  v22 = v0[22];
  v24 = v0[18];
  v25 = v0[15];
  v26 = v0[12];
  v28 = v0[8];
  v27 = v0[9];
  v29 = v0[7];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1011EE444(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  *(v2 + 40) = *(a2 + 8);
  return _swift_task_switch(sub_1011EE470, 0, 0);
}

uint64_t sub_1011EE470()
{
  v15 = v0;
  if (*(v0 + 40))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = qword_101695498;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_1016CB4E8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      *(v0 + 16) = v2;
      type metadata accessor for Peripheral();
      sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = sub_1000136BC(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Discovered peripheral: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v1 = *(v0 + 32);
  }

  **(v0 + 24) = v1;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1011EE674(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v19 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[25] = v19;
  v20 = *(v19 - 8);
  v2[26] = v20;
  v21 = *(v20 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1011EE9A8, v1, 0);
}

uint64_t sub_1011EE9A8()
{
  v0[28] = *(v0[8] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[29] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[30] = v9;
  v10 = type metadata accessor for CentralManager();
  v11 = sub_1011F1D6C(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_1011EEB90;

  return CentralManagerProtocol.await(states:)(v5, v10, v11);
}

uint64_t sub_1011EEB90()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_1011F04FC;
  }

  else
  {
    v6 = *(v2 + 232);
    v7 = *(v2 + 64);

    v5 = sub_1011EECB8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011EECB8()
{
  v21 = v0;
  if (qword_101695498 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[32] = sub_1000076D4(v1, qword_1016CB4E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010136FCD0, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[10];
  v10 = v0[7];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v11 = *(v9 + 72);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v0[33] = v13;
  *(v13 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v14 = *(v7 + 8);
  v0[34] = v14;
  v0[35] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6, v8);
  v15 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v19 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_1011EEF18;
  v17 = v0[28];

  return v19(v13);
}

uint64_t sub_1011EEF18(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v10 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v5 = v3[8];
    v6 = sub_1011F05E0;
  }

  else
  {
    v7 = v3[33];
    v8 = v3[8];

    v6 = sub_1011EF040;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011EF040()
{
  v67 = v0;
  v1 = v0[37];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v31 = v0[37];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v32 = v0[37];
    v33 = v0[32];
    v34 = v0[7];

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v61 = v0[34];
      v64 = v0[35];
      v37 = v0[27];
      v38 = v0[25];
      v40 = v0[10];
      v39 = v0[11];
      v65 = v0[9];
      v41 = v0[7];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v66[0] = v43;
      *v42 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v61(v37, v38);
      sub_1011F1D6C(&qword_101696930, 255, &type metadata accessor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v40 + 8))(v39, v65);
      v47 = sub_1000136BC(v44, v46, v66);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v35, v36, "Missing peripheral for %{public}s", v42, 0xCu);
      sub_100007BAC(v43);
    }

    sub_1011F1C68();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    v49 = v0[27];
    v51 = v0[23];
    v50 = v0[24];
    v52 = v0[22];
    v54 = v0[18];
    v53 = v0[19];
    v55 = v0[17];
    v56 = v0[14];
    v57 = v0[11];

    v58 = v0[1];

    return v58();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v59 = v0[37];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v60 = v0[37];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[37] + 32);
  }

  v0[39] = v3;
  v4 = v0[32];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v66[0] = v8;
    *v7 = 136315138;
    v0[6] = v3;
    type metadata accessor for Peripheral();
    sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1000136BC(v9, v10, v66);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connecting to peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = v0[24];
  v62 = v0[23];
  v13 = v0[21];
  v14 = v0[22];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[18];
  v18 = enum case for ConnectUseCase.findMyPair(_:);
  v19 = type metadata accessor for ConnectUseCase();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v21 = *(v13 + 72);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[2] = v23;
  sub_1011F1D6C(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = type metadata accessor for LongTermKey();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v26 = type metadata accessor for Peripheral.Options();
  (*(*(v26 - 8) + 56))(v62, 0, 1, v26);
  v27 = *(&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + 1);
  v63 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v28 = swift_task_alloc();
  v0[40] = v28;
  *v28 = v0;
  v28[1] = sub_1011EF76C;
  v29 = v0[23];
  v30 = v0[24];

  return v63(v30, v29);
}

uint64_t sub_1011EF76C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = v2[24];
  v6 = v2[23];
  v7 = v2[8];
  sub_10000B3A8(v6, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v8 = sub_1011F06C4;
  }

  else
  {
    v8 = sub_1011EF8F0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1011EF8F0()
{
  v19 = v0;
  v1 = v0[39];
  v2 = v0[32];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[39];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[5] = v5;
    type metadata accessor for Peripheral();
    sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connected to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[17];
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = *(&async function pointer to dispatch thunk of Peripheral.subscript.getter + 1);
  v17 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v13 = swift_task_alloc();
  v0[42] = v13;
  *v13 = v0;
  v13[1] = sub_1011EFB0C;
  v14 = v0[39];
  v15 = v0[17];

  return v17(v15);
}

uint64_t sub_1011EFB0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  v7 = v3[17];
  v8 = v3[16];
  v9 = v3[15];
  v10 = v3[8];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_1011F07A8;
  }

  else
  {
    v11 = sub_1011EFC90;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1011EFC90()
{
  v1 = v0[32];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy service", v4, 2u);
  }

  v5 = v0[14];

  v0[45] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v6 = *(&async function pointer to dispatch thunk of Service.subscript.getter + 1);
  v11 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v7 = swift_task_alloc();
  v0[46] = v7;
  *v7 = v0;
  v7[1] = sub_1011EFDE0;
  v8 = v0[43];
  v9 = v0[14];

  return v11(v9);
}

uint64_t sub_1011EFDE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  v7 = v3[14];
  v8 = v3[13];
  v9 = v3[12];
  v10 = v3[8];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_1011F088C;
  }

  else
  {
    v11 = sub_1011EFF64;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1011EFF64()
{
  v18 = v0;
  v1 = v0[47];
  v2 = v0[32];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[47];
    v6 = v0[45];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[4] = v5;
    sub_1011F1D6C(&qword_1016CB5D0, 255, &type metadata accessor for Characteristic);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1000136BC(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Discovered Pairing characteristic %s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = *(&async function pointer to dispatch thunk of Peripheral.pair() + 1);
  v16 = (&async function pointer to dispatch thunk of Peripheral.pair() + async function pointer to dispatch thunk of Peripheral.pair());
  v13 = swift_task_alloc();
  v0[49] = v13;
  *v13 = v0;
  v13[1] = sub_1011F0148;
  v14 = v0[39];

  return v16();
}

uint64_t sub_1011F0148()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1011F097C;
  }

  else
  {
    v6 = sub_1011F0274;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011F0274()
{
  v28 = v0;
  v1 = v0[39];
  v2 = v0[32];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[47];
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v0[3] = v6;
    type metadata accessor for Peripheral();
    sub_1011F1D6C(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1000136BC(v9, v10, &v27);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Paired peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v12 = v0[47];
    v13 = v0[39];
  }

  v14 = v0[27];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  v21 = v0[14];
  v26 = v0[11];
  v22 = sub_1011F1D6C(&qword_1016972A8, 255, &type metadata accessor for Service);

  v23 = v0[1];
  v24 = v0[43];

  return v23(v24, v22);
}

uint64_t sub_1011F04FC()
{
  v1 = v0[29];

  v2 = v0[31];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011F05E0()
{
  v1 = v0[33];

  v2 = v0[38];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011F06C4()
{
  v1 = v0[39];

  v2 = v0[41];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011F07A8()
{
  v1 = v0[39];

  v2 = v0[44];
  v3 = v0[27];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1011F088C()
{
  v1 = v0[43];
  v2 = v0[39];

  v3 = v0[48];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1011F097C()
{
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[39];

  v4 = v0[50];
  v5 = v0[27];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1011F0A78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1011F0BD8, v1, 0);
}

uint64_t sub_1011F0BD8()
{
  v0[11] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = type metadata accessor for CentralManager();
  v11 = sub_1011F1D6C(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_1011F0DC0;

  return CentralManagerProtocol.await(states:)(v5, v10, v11);
}

uint64_t sub_1011F0DC0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_100C4C1D8;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 24);

    v5 = sub_1011F0EE8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1011F0EE8()
{
  v21 = v0;
  if (qword_101695498 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = sub_1000076D4(v1, qword_1016CB4E8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x5F28726961706E75, 0xEA0000000000293ALL, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v11 = *(v9 + 72);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v0[16] = v13;
  *(v13 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v14 = *(v7 + 8);
  v0[17] = v14;
  v0[18] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6, v8);
  v15 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + 1);
  v19 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_1011F1148;
  v17 = v0[11];

  return v19(v13);
}

uint64_t sub_1011F1148(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v10 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100C4C260;
  }

  else
  {
    v7 = v3[16];
    v8 = v3[3];

    v6 = sub_1011F1270;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1011F1270()
{
  v38 = v0;
  v1 = v0[20];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[20];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v10 = v0[20];
    v11 = v0[15];
    v12 = v0[2];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v33 = v0[17];
      v34 = v0[18];
      v15 = v0[10];
      v16 = v0[8];
      v18 = v0[5];
      v17 = v0[6];
      v36 = v0[4];
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v33(v15, v16);
      sub_1011F1D6C(&qword_101696930, 255, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v18 + 8))(v17, v36);
      v25 = sub_1000136BC(v22, v24, &v37);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing peripheral for %{public}s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    sub_1011F1C68();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    v27 = v0[10];
    v29 = v0[6];
    v28 = v0[7];

    v30 = v0[1];

    return v30();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v31 = v0[20];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v32 = v0[20];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[20] + 32);
  }

  v0[22] = v3;
  v4 = v0[7];

  v5 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + 1);
  v35 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + async function pointer to dispatch thunk of Peripheral.cancelConnection(options:));
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_100C4BE4C;
  v8 = v0[7];

  return v35(v8);
}

uint64_t sub_1011F1718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PairingPeripheralProvider.getPeripheral(for:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AirPodsLEPeripheralProvider();
  *v9 = v4;
  v9[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v10, a4);
}

uint64_t sub_1011F17DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF6A4;

  return sub_1011EC20C(a2);
}

uint64_t sub_1011F1874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to PairingPeripheralProvider.pair<A>(_:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for AirPodsLEPeripheralProvider();
  *v11 = v5;
  v11[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v12, a3, a5);
}

uint64_t sub_1011F1940(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF918;

  return sub_1011EE674(v3);
}

uint64_t sub_1011F19D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to PairingPeripheralProvider.unpair(_:)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for AirPodsLEPeripheralProvider();
  *v7 = v3;
  v7[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v8, a3);
}

uint64_t sub_1011F1A8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1011F0A78(v2);
}

uint64_t sub_1011F1B20()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177CD88);
  sub_1000076D4(v0, qword_10177CD88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1011F1BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016CB4E8);
  v1 = sub_1000076D4(v0, qword_1016CB4E8);
  if (qword_101695490 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177CD88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1011F1C68()
{
  result = qword_1016CB5C8;
  if (!qword_1016CB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB5C8);
  }

  return result;
}

uint64_t sub_1011F1CBC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_1011EE444(a1, a2);
}

uint64_t sub_1011F1D6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1011F1DB4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1011F1DDC()
{
  result = qword_1016CB5E0;
  if (!qword_1016CB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB5E0);
  }

  return result;
}

void *sub_1011F1E30(uint64_t a1)
{
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = UUID.uuidString.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_101123BB8((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v39;
      v21[5] = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10040BA00(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10040BA00(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_1011F2168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObservationStoreBackendServiceTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1011F21D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for ObservedAdvertisement(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1011F226C, 0, 0);
}

uint64_t sub_1011F226C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016A91B8, type metadata accessor for ObservedAdvertisement);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v8 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = v8[3];
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1011F249C;
  v14 = v0[8];

  return v16(v14, v9, v10);
}

uint64_t sub_1011F249C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1011F2640;
  }

  else
  {
    v3 = sub_1011F25B0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F25B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 40))(0);
  sub_1011FC304(v1, type metadata accessor for ObservedAdvertisement);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1011F2640()
{
  sub_1011FC304(v0[8], type metadata accessor for ObservedAdvertisement);
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011F2830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1011F2858, 0, 0);
}

uint64_t sub_1011F2858()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A91B0, &qword_1016A91B8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[5];

  v7 = v0[2];
  v0[8] = v7;
  v8 = (v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1011F2AB4;

  return v15(v7, v9, v10);
}

uint64_t sub_1011F2AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1011F2C40;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1011F2BD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F2BD0()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0, 0xF000000000000000, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011F2C40()
{
  v1 = v0[8];

  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011F2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1011F2E44, 0, 0);
}

uint64_t sub_1011F2E44()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A91B0, &qword_1016A91B8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[5];

  v7 = v0[2];
  v0[8] = v7;
  v8 = (v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1011F30A0;

  return v15(v7, v9, v10);
}

uint64_t sub_1011F30A0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1011FC380;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1011FC378;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1011F32FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F3320, 0, 0);
}

uint64_t sub_1011F3320()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1011F3450;

  return v8(v2, v3);
}

uint64_t sub_1011F3450()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1011FC36C;
  }

  else
  {
    v3 = sub_1011FC37C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F365C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = a7;
  *(v7 + 112) = a5;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  return _swift_task_switch(sub_1011F3688, 0, 0);
}

uint64_t sub_1011F3688()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A9220, &qword_1013BB1A0);
  sub_1011FBEE4();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = *(v0 + 48);

  v7 = *(v0 + 16);
  *(v0 + 80) = v7;
  v8 = (v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 40);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1011F38B4;
  v14 = *(v0 + 112);
  v15 = *(v0 + 56);

  return v17(v7, v15, v14, v9, v10);
}

uint64_t sub_1011F38B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1011F3B5C;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_1011F39D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F39D0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[12];
  if (v1)
  {

    v9 = v0[8];
    v10 = v0[9];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = v6;
    v14 = v7;

    v12(v13, v14, 0);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011F3B5C()
{
  v1 = v0[10];

  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011F3D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1011F3D6C, 0, 0);
}

uint64_t sub_1011F3D6C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_1011FBB30();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[6];

  v7 = v0[2];
  v0[9] = v7;
  v8 = (v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1011F3F90;

  return v15(v7, v9, v10);
}

uint64_t sub_1011F3F90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v8 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = sub_1011F4238;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_1011F40AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F40AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[11];
  if (v1)
  {

    v9 = v0[7];
    v10 = v0[8];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v6;
    v14 = v7;

    v12(v13, v14, 0);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011F4238()
{
  v1 = v0[9];

  v2 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  swift_errorRetain();
  v4(0, 0xF000000000000000, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011F4414(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a4;
  *(v4 + 24) = a1;
  return _swift_task_switch(sub_1011F443C, 0, 0);
}

uint64_t sub_1011F443C()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 56);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1011F4570;
  v7.n128_u64[0] = v0[4];

  return v9(v2, v3, v7);
}

uint64_t sub_1011F4570(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1011F47FC;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_1011F4698;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1011F4698()
{
  v1 = v0[8];
  v2 = sub_1011F1E30(v0[9]);

  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v1)
  {

    v8 = v0[5];
    v9 = v0[6];
    swift_errorRetain();
    v8(0, 0xF000000000000000, v1);
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = v6;
    v13 = v7;

    v11(v12, v13, 0);
    sub_100016590(v12, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1011F47FC()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1011F499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_1011F49C4, 0, 0);
}

uint64_t sub_1011F49C4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A91F0, &unk_1013BB160);
  sub_1011FBB30();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[6];

  v7 = v0[2];
  v0[9] = v7;
  v8 = (v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1011F4BE8;

  return v15(v7, v9, v10);
}

uint64_t sub_1011F4BE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v8 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = sub_1011FC384;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_1011F4D04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F4D04()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A9200, &qword_10140D630);
  sub_1011FBBB4();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[11];
  if (v1)
  {

    v9 = v0[7];
    v10 = v0[8];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[7];
    v11 = v0[8];
    v13 = v6;
    v14 = v7;

    v12(v13, v14, 0);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011F4F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for BeaconIdentifier();
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1011F5034, 0, 0);
}

uint64_t sub_1011F5034()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  v9 = (v8 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v10 = *(v8 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v11 = v9[4];
  sub_1000035D0(v9, v10);
  v12 = *(v11 + 72);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_1011F5274;
  v15 = v0[9];

  return v17(v15, v10, v11);
}

uint64_t sub_1011F5274(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1011F5574;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1011F539C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1011F539C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000BC4D4(&qword_1016CB638, &qword_10140D600);
  v6 = swift_allocObject();
  *(v0 + 16) = v6;
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 32) = v1;
  *(v6 + 33) = HIBYTE(v1) & 1;
  sub_1000BC4D4(&qword_1016CB640, &unk_10140D608);
  sub_1011FB96C();
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v2;
  v10 = *(v0 + 72);
  if (v9)
  {

    sub_1011FC304(v10, type metadata accessor for BeaconIdentifier);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    swift_errorRetain();
    v11(0, 0xF000000000000000, v9);
  }

  else
  {
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = v7;
    v16 = v8;

    v14(v15, v16, 0);
    sub_100016590(v15, v16);
    sub_1011FC304(v10, type metadata accessor for BeaconIdentifier);
  }

  v17 = *(v0 + 72);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1011F5574()
{
  sub_1011FC304(v0[9], type metadata accessor for BeaconIdentifier);
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011F576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(sub_1000BC4D4(&unk_10169BB50, &unk_101395760) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for ObservedAdvertisement(0);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = type metadata accessor for BeaconIdentifier();
  v5[12] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011F589C, 0, 0);
}

uint64_t sub_1011F589C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v8 = v0[5];

  v9 = (v8 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v10 = *(v8 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v11 = v9[4];
  sub_1000035D0(v9, v10);
  v12 = *(v11 + 80);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_1011F5AF8;
  v15 = v0[13];
  v16 = v0[8];

  return v18(v16, v15, v10, v11);
}

uint64_t sub_1011F5AF8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1011F5EB8;
  }

  else
  {
    v3 = sub_1011F5C0C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F5C0C()
{
  v1 = v0[10];
  v2 = v0[8];
  if ((*(v1 + 48))(v2, 1, v0[9]) == 1)
  {
    sub_10000B3A8(v2, &unk_10169BB50, &unk_101395760);
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    v4 = v0[11];
    sub_1011FB848(v2, v4, type metadata accessor for ObservedAdvertisement);
    sub_1000BC4D4(&qword_1016B3C98, &qword_1013D4A20);
    v5 = *(v1 + 72);
    v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_101385D80;
    sub_1011FB848(v4, v3 + v6, type metadata accessor for ObservedAdvertisement);
  }

  v7 = v0[15];
  v8 = type metadata accessor for PropertyListEncoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v3;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238);
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v13 = v7;
  v14 = v0[13];
  if (v13)
  {

    sub_1011FC304(v14, type metadata accessor for BeaconIdentifier);
    v15 = v0[6];
    v16 = v0[7];
    swift_errorRetain();
    v15(0, 0xF000000000000000, v13);
  }

  else
  {
    v18 = v0[6];
    v17 = v0[7];
    v19 = v11;
    v20 = v12;

    v18(v19, v20, 0);
    sub_100016590(v19, v20);
    sub_1011FC304(v14, type metadata accessor for BeaconIdentifier);
  }

  v21 = v0[13];
  v22 = v0[11];
  v23 = v0[8];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1011F5EB8()
{
  sub_1011FC304(v0[13], type metadata accessor for BeaconIdentifier);
  v1 = v0[15];
  v3 = v0[6];
  v2 = v0[7];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1011F60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1011F60EC, 0, 0);
}

uint64_t sub_1011F60EC()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 88);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1011F6224;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_1011F6224(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_1011F64C4;
  }

  else
  {
    v5 = sub_1011F6338;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F6338()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016A91A0, &qword_1013BB108);
  sub_1011FB6F0(&qword_1016A9230, &qword_1016A9238);
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[8];
  if (v1)
  {

    v9 = v0[5];
    v10 = v0[6];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = v6;
    v14 = v7;

    v12(v13, v14, 0);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011F64C4()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1011F6660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v9 = type metadata accessor for DeviceEvent(0);
  v7[10] = v9;
  v10 = *(v9 - 8);
  v7[11] = v10;
  v11 = *(v10 + 64) + 15;
  v7[12] = swift_task_alloc();
  v12 = type metadata accessor for BeaconIdentifier();
  v7[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_1011F6794, 0, 0);
}

uint64_t sub_1011F6794()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v8 = v0[4];
  if (v8)
  {
    v9 = sub_100513050([v8 unsignedIntValue]);
  }

  else
  {
    v9 = 8;
  }

  v10 = (v0[5] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v11 = v10[3];
  v12 = v10[4];
  sub_1000035D0(v10, v11);
  v13 = *(v12 + 160);
  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_1011F6A18;
  v16 = v0[14];
  v17 = v0[9];
  v18 = v0[6];

  return v20(v17, v16, v9, v18, v11, v12);
}

uint64_t sub_1011F6A18()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1011F6DA0;
  }

  else
  {
    v3 = sub_1011F6B2C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F6B2C()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v2 = v0[14];
    v4 = v0[7];
    v3 = v0[8];
    sub_10000B3A8(v1, &unk_1016AA500, &unk_1013B3600);
    v4(0, 0xF000000000000000, 0);
    v5 = v2;
  }

  else
  {
    v6 = v0[16];
    sub_1011FB848(v1, v0[12], type metadata accessor for DeviceEvent);
    v7 = type metadata accessor for PropertyListEncoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1011FC0FC(&qword_1016A9130, type metadata accessor for DeviceEvent);
    v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v12 = v11;

    if (v6)
    {
      sub_1011FC304(v0[12], type metadata accessor for DeviceEvent);
      sub_1011FC304(v0[14], type metadata accessor for BeaconIdentifier);
      v13 = v0[7];
      v14 = v0[8];
      swift_errorRetain();
      v13(0, 0xF000000000000000, v6);

      goto LABEL_7;
    }

    v15 = v0[14];
    v16 = v0[12];
    v17 = v0[8];
    (v0[7])(v10, v12, 0);
    sub_100016590(v10, v12);
    sub_1011FC304(v16, type metadata accessor for DeviceEvent);
    v5 = v15;
  }

  sub_1011FC304(v5, type metadata accessor for BeaconIdentifier);
LABEL_7:
  v18 = v0[14];
  v19 = v0[12];
  v20 = v0[9];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1011F6DA0()
{
  v1 = v0[16];
  sub_1011FC304(v0[14], type metadata accessor for BeaconIdentifier);
  v3 = v0[7];
  v2 = v0[8];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1011F7164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_1000BC4D4(&qword_1016CB628, &qword_10140D5A8) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for AttachedAccessoryEventsTransport();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = type metadata accessor for BeaconIdentifier();
  v6[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1011F7294, 0, 0);
}

uint64_t sub_1011F7294()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v8 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = v8[3];
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 168);
  v18 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_1011F74EC;
  v14 = v0[13];
  v15 = v0[8];
  v16 = v0[5];

  return v18(v15, v14, v16, v9, v10);
}

uint64_t sub_1011F74EC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1011F7874;
  }

  else
  {
    v3 = sub_1011F7600;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F7600()
{
  v1 = v0[8];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v2 = v0[13];
    v4 = v0[6];
    v3 = v0[7];
    sub_10000B3A8(v1, &qword_1016CB628, &qword_10140D5A8);
    v4(0, 0xF000000000000000, 0);
    v5 = v2;
  }

  else
  {
    v6 = v0[15];
    sub_1011FB848(v1, v0[11], type metadata accessor for AttachedAccessoryEventsTransport);
    v7 = type metadata accessor for PropertyListEncoder();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1011FC0FC(&qword_1016CB630, type metadata accessor for AttachedAccessoryEventsTransport);
    v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v12 = v11;

    if (v6)
    {
      sub_1011FC304(v0[11], type metadata accessor for AttachedAccessoryEventsTransport);
      sub_1011FC304(v0[13], type metadata accessor for BeaconIdentifier);
      v13 = v0[6];
      v14 = v0[7];
      swift_errorRetain();
      v13(0, 0xF000000000000000, v6);

      goto LABEL_7;
    }

    v15 = v0[13];
    v16 = v0[11];
    v17 = v0[7];
    (v0[6])(v10, v12, 0);
    sub_100016590(v10, v12);
    sub_1011FC304(v16, type metadata accessor for AttachedAccessoryEventsTransport);
    v5 = v15;
  }

  sub_1011FC304(v5, type metadata accessor for BeaconIdentifier);
LABEL_7:
  v18 = v0[13];
  v19 = v0[11];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1011F7874()
{
  v1 = v0[15];
  sub_1011FC304(v0[13], type metadata accessor for BeaconIdentifier);
  v3 = v0[6];
  v2 = v0[7];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1011F7C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DeviceEvent(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1011F7CA0, 0, 0);
}

uint64_t sub_1011F7CA0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016A9150, type metadata accessor for DeviceEvent);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v8 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = v8[3];
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 176);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1011F7ED0;
  v14 = v0[8];

  return v16(v14, v9, v10);
}

uint64_t sub_1011F7ED0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1011F8074;
  }

  else
  {
    v3 = sub_1011F7FE4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F7FE4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 40))(0);
  sub_1011FC304(v1, type metadata accessor for DeviceEvent);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1011F8074()
{
  sub_1011FC304(v0[8], type metadata accessor for DeviceEvent);
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011F8264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F8288, 0, 0);
}

uint64_t sub_1011F8288()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1011F83B8;

  return v8(v2, v3);
}

uint64_t sub_1011F83B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1011F854C;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1011F84E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1011F84E0()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 56), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011F854C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1011F86D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F86F8, 0, 0);
}

uint64_t sub_1011F86F8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1011F8828;

  return v8(v2, v3);
}

uint64_t sub_1011F8828()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1011F89AC;
  }

  else
  {
    v3 = sub_1011F893C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F893C()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(0, 0xF000000000000000, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1011F89AC()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(0, 0xF000000000000000, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1011F8B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011F8B5C, 0, 0);
}

uint64_t sub_1011F8B5C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1011F8C8C;

  return v8(v2, v3);
}

uint64_t sub_1011F8C8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1011FC370;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1011FC364;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1011F8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for KeySyncMetadata();
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_1011F8F48, 0, 0);
}

uint64_t sub_1011F8F48()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PropertyListDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1011FC0FC(&qword_1016A9188, type metadata accessor for KeySyncMetadata);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v8 = (v0[4] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = v8[3];
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 120);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1011F9178;
  v14 = v0[8];

  return v16(v14, v9, v10);
}

uint64_t sub_1011F9178()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1011F931C;
  }

  else
  {
    v3 = sub_1011F928C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011F928C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 40))(0);
  sub_1011FC304(v1, type metadata accessor for KeySyncMetadata);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1011F931C()
{
  sub_1011FC304(v0[8], type metadata accessor for KeySyncMetadata);
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(v1);

  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1011F950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1011F9530, 0, 0);
}

uint64_t sub_1011F9530()
{
  v1 = (v0[3] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 128);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1011F9668;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_1011F9668(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_1011FC374;
  }

  else
  {
    v5 = sub_1011F977C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F977C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[2] = v2;
  sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  sub_1011FAE94();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[8];
  if (v1)
  {

    v9 = v0[5];
    v10 = v0[6];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = v6;
    v14 = v7;

    v12(v13, v14, 0);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011F9AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return _swift_task_switch(sub_1011F9B18, 0, 0);
}

uint64_t sub_1011F9B18()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = type metadata accessor for PropertyListDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000BC4D4(&qword_1016A9158, &qword_1013BB0E0);
  sub_1011FAE10();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v6 = v0[6];

  v7 = v0[2];
  v0[10] = v7;
  v8 = (v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v9 = *(v6 + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation + 24);
  v10 = v8[4];
  sub_1000035D0(v8, v9);
  v11 = *(v10 + 136);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1011F9D44;
  v14 = v0[7];

  return v16(v14, v7, v9, v10);
}

uint64_t sub_1011F9D44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_1011FC388;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_1011F9E60;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011F9E60()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v0[3] = v2;
  sub_1000BC4D4(&qword_1016A9170, &qword_1013BB0E8);
  sub_1011FAE94();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v0[12];
  if (v1)
  {

    v9 = v0[8];
    v10 = v0[9];
    swift_errorRetain();
    v9(0, 0xF000000000000000, v1);
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = v6;
    v14 = v7;

    v12(v13, v14, 0);
    sub_100016590(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1011FA21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1011FA240, 0, 0);
}

uint64_t sub_1011FA240()
{
  v1 = (v0[2] + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 144);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1011FA378;
  v7 = v0[3];

  return v9(v7, v2, v3);
}

uint64_t sub_1011FA378()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1011FA48C;
  }

  else
  {
    v3 = sub_100A7327C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011FA48C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1011FA738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1011FA75C, 0, 0);
}

uint64_t sub_1011FA75C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd40ObservationStoreBackendServiceTrampoline_implementation);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  v4 = *(v3 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1011FA88C;

  return v8(v2, v3);
}

uint64_t sub_1011FA88C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1011FA9A0;
  }

  else
  {
    v3 = sub_100A735C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1011FA9A0()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  swift_errorRetain();
  v3(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1011FAB24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011FA738(v2, v3, v4);
}

uint64_t sub_1011FABCC()
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

  return sub_1011FA21C(v4, v0 + v3, v6, v7);
}

uint64_t sub_1011FACE4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_1011F9AF0(v4, v5, v6, v0 + v3, v8, v9);
}

unint64_t sub_1011FAE10()
{
  result = qword_1016CB618;
  if (!qword_1016CB618)
  {
    sub_1000BC580(&qword_1016A9158, &qword_1013BB0E0);
    sub_100993A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB618);
  }

  return result;
}

unint64_t sub_1011FAE94()
{
  result = qword_1016CB620;
  if (!qword_1016CB620)
  {
    sub_1000BC580(&qword_1016A9170, &qword_1013BB0E8);
    sub_1011FC0FC(&qword_1016A9190, type metadata accessor for KeySyncMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB620);
  }

  return result;
}

uint64_t sub_1011FAF48()
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

  return sub_1011F950C(v4, v0 + v3, v6, v7);
}

uint64_t sub_1011FB060()
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

  return sub_1011F8EAC(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FB11C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011F8B38(v2, v3, v4);
}

uint64_t sub_1011FB1C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011F86D4(v2, v3, v4);
}

uint64_t sub_1011FB26C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_1011F8264(v2, v3, v4);
}

uint64_t sub_1011FB314()
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

  return sub_1011F7C04(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FB3D0()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014744;

  return sub_1011F7164(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t sub_1011FB508()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100014744;

  return sub_1011F6660(v4, v5, v6, v7, v0 + v3, v9, v10);
}

uint64_t sub_1011FB644()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1011F60C8(v2, v3, v5, v4);
}

uint64_t sub_1011FB6F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016A91A0, &qword_1013BB108);
    sub_1011FC0FC(a2, type metadata accessor for ObservedAdvertisement);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1011FB78C()
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

  return sub_1011F576C(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FB848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1011FB8B0()
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

  return sub_1011F4F98(v2, v3, v4, v5, v6);
}

unint64_t sub_1011FB96C()
{
  result = qword_1016CB648;
  if (!qword_1016CB648)
  {
    sub_1000BC580(&qword_1016CB640, &unk_10140D608);
    sub_1011FB9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB648);
  }

  return result;
}

unint64_t sub_1011FB9F0()
{
  result = qword_1016CB650;
  if (!qword_1016CB650)
  {
    sub_1000BC580(&qword_1016A91D0, &qword_1013BB140);
    sub_10028E9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB650);
  }

  return result;
}

uint64_t sub_1011FBA74()
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

  return sub_1011F499C(v2, v3, v4, v5, v6);
}

unint64_t sub_1011FBB30()
{
  result = qword_1016CB658;
  if (!qword_1016CB658)
  {
    sub_1000BC580(&qword_1016A91F0, &unk_1013BB160);
    sub_10028E7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB658);
  }

  return result;
}

unint64_t sub_1011FBBB4()
{
  result = qword_1016CB660;
  if (!qword_1016CB660)
  {
    sub_1000BC580(&qword_1016A9200, &qword_10140D630);
    sub_1011FC0FC(&qword_10169C770, type metadata accessor for ObservedAdvertisement.Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB660);
  }

  return result;
}

uint64_t sub_1011FBC68()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1011FBCA8()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_1011F4414(v2, v5, v4, v3);
}

uint64_t sub_1011FBD58()
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

  return sub_1011F3D44(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FBE14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_1011F365C(v2, v3, v4, v5, v6, v8, v7);
}

unint64_t sub_1011FBEE4()
{
  result = qword_1016CB668;
  if (!qword_1016CB668)
  {
    sub_1000BC580(&qword_1016A9220, &qword_1013BB1A0);
    sub_1011FC0FC(&qword_1016B0EF8, type metadata accessor for BeaconIdentifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CB668);
  }

  return result;
}

uint64_t sub_1011FBF98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1011F32FC(v2, v3, v4);
}

uint64_t sub_1011FC040()
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

  return sub_1011F2E1C(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FC0FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1011FC144()
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

  return sub_1011F2830(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FC200()
{
  sub_100016590(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1011FC248()
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

  return sub_1011F21D0(v2, v3, v4, v5, v6);
}

uint64_t sub_1011FC304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1011FC38C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 200) = a2;
  *(v4 + 208) = a4;
  *(v4 + 1496) = a3;
  *(v4 + 192) = a1;
  v5 = type metadata accessor for CentralManager.Error();
  *(v4 + 216) = v5;
  v6 = *(v5 - 8);
  *(v4 + 224) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v4 + 240) = v8;
  v9 = *(v8 - 8);
  *(v4 + 248) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v11 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  *(v4 + 264) = v11;
  v12 = *(v11 - 8);
  *(v4 + 272) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v14 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  *(v4 + 288) = v14;
  v15 = *(v14 - 8);
  *(v4 + 296) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  *(v4 + 392) = v17;
  v18 = *(v17 - 8);
  *(v4 + 400) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  *(v4 + 488) = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  v22 = type metadata accessor for Peripheral.ConnectionOptions();
  *(v4 + 504) = v22;
  v23 = *(v22 - 8);
  *(v4 + 512) = v23;
  v24 = *(v23 + 64) + 15;
  *(v4 + 520) = swift_task_alloc();
  v25 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  *(v4 + 528) = swift_task_alloc();
  v26 = type metadata accessor for ContinuousClock.Instant();
  *(v4 + 536) = v26;
  v27 = *(v26 - 8);
  *(v4 + 544) = v27;
  v28 = *(v27 + 64) + 15;
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v29 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v4 + 584) = v29;
  v30 = *(v29 - 8);
  *(v4 + 592) = v30;
  v31 = *(v30 + 64) + 15;
  *(v4 + 600) = swift_task_alloc();
  v32 = type metadata accessor for ContinuousClock();
  *(v4 + 608) = v32;
  v33 = *(v32 - 8);
  *(v4 + 616) = v33;
  v34 = *(v33 + 64) + 15;
  *(v4 + 624) = swift_task_alloc();

  return _swift_task_switch(sub_1011FC914, 0, 0);
}

uint64_t sub_1011FC914()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 1496);
  ContinuousClock.init()();
  if (v2 >= 2)
  {
    v14 = *(v0 + 624);
    v15 = *(v0 + 600);
    v16 = *(v0 + 576);
    type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    ContinuousClock.now.getter();
    static Task<>.checkCancellation()();
    v60 = *(v0 + 528);
    v17 = *(v0 + 520);
    v19 = *(v0 + 504);
    v18 = *(v0 + 512);
    v21 = *(v0 + 488);
    v20 = *(v0 + 496);
    sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
    v22 = *(v18 + 72);
    v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
    *(v0 + 176) = v24;
    sub_1012166EC(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
    sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
    sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v25 = type metadata accessor for PeripheralPairingInfo();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    v26 = type metadata accessor for LongTermKey();
    (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
    v27 = type metadata accessor for Peripheral.Options();
    (*(*(v27 - 8) + 56))(v60, 0, 1, v27);
    v28 = type metadata accessor for Peripheral();
    *(v0 + 632) = v28;
    v29 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    *(v0 + 640) = v29;
    v30 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
    v31 = swift_task_alloc();
    *(v0 + 648) = v31;
    *v31 = v0;
    v31[1] = sub_1011FCF9C;
    v32 = *(v0 + 528);
    v34 = *(v0 + 200);
    v33 = *(v0 + 208);

    return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v33, v32, v28, v29);
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 11;
    swift_willThrow();
    v4 = *(v0 + 600);
    v5 = *(v0 + 576);
    v6 = *(v0 + 568);
    v7 = *(v0 + 560);
    v8 = *(v0 + 552);
    v9 = *(v0 + 528);
    v10 = *(v0 + 520);
    v11 = *(v0 + 496);
    v35 = *(v0 + 488);
    v36 = *(v0 + 480);
    v37 = *(v0 + 472);
    v38 = *(v0 + 464);
    v39 = *(v0 + 456);
    v40 = *(v0 + 448);
    v41 = *(v0 + 440);
    v42 = *(v0 + 432);
    v43 = *(v0 + 424);
    v44 = *(v0 + 416);
    v45 = *(v0 + 408);
    v46 = *(v0 + 384);
    v47 = *(v0 + 376);
    v48 = *(v0 + 368);
    v49 = *(v0 + 360);
    v50 = *(v0 + 352);
    v51 = *(v0 + 344);
    v52 = *(v0 + 336);
    v53 = *(v0 + 328);
    v54 = *(v0 + 320);
    v55 = *(v0 + 312);
    v56 = *(v0 + 304);
    v57 = *(v0 + 280);
    v58 = *(v0 + 256);
    v59 = *(v0 + 232);
    (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1011FCF9C()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;
  v2[82] = v0;

  v5 = v2[66];
  if (v0)
  {
    sub_10000B3A8(v5, &qword_101697260, &unk_10138BDC0);

    return _swift_task_switch(sub_1011FD26C, 0, 0);
  }

  else
  {
    sub_10000B3A8(v5, &qword_101697260, &unk_10138BDC0);
    v6 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
    v7 = swift_task_alloc();
    v2[83] = v7;
    *v7 = v4;
    v7[1] = sub_1011FD154;
    v8 = v2[80];
    v9 = v2[79];
    v10 = v2[25];
    v11 = v2[75];

    return dispatch thunk of PeripheralProtocol.subscript.getter(v11, v9, v8);
  }
}

uint64_t sub_1011FD154(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 664);
  v7 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v5 = sub_1011FD76C;
  }

  else
  {
    v5 = sub_1011FD37C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1011FD26C()
{
  (*(v0[68] + 8))(v0[72], v0[67]);
  v0[179] = v0[82];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[180] = v4;
  *v4 = v0;
  v4[1] = sub_101205C80;
  v5 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_1011FD37C()
{
  v1 = v0[85];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    v0[179] = v1;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v5 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v6 = swift_task_alloc();
    v0[180] = v6;
    *v6 = v0;
    v6[1] = sub_101205C80;
    v7 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v8 = v0[37];
    sub_101123C58(0, 11, 0);
    type metadata accessor for Characteristic();
    for (i = 0; i != 11; ++i)
    {
      v10 = v0[38];
      *(&off_101607618 + i + 32);
      Identifier.init(stringLiteral:)();
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123C58(v11 > 1, v12 + 1, 1);
      }

      v0[182] = _swiftEmptyArrayStorage;
      v13 = v0[38];
      v14 = v0[36];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      (*(v8 + 32))(_swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v13, v14);
    }

    v15 = type metadata accessor for Service();
    v0[183] = v15;
    v16 = sub_1012166EC(&qword_1016972A8, 255, &type metadata accessor for Service);
    v0[184] = v16;
    v17 = async function pointer to dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)[1];
    v18 = swift_task_alloc();
    v0[185] = v18;
    *v18 = v0;
    v18[1] = sub_1012063A0;
    v19 = v0[84];

    return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, v15, v16);
  }
}

uint64_t sub_1011FD76C()
{
  (*(v0[68] + 8))(v0[72], v0[67]);
  v0[179] = v0[85];
  v1 = type metadata accessor for Peripheral();
  v2 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[180] = v4;
  *v4 = v0;
  v4[1] = sub_101205C80;
  v5 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v1, v2);
}

uint64_t sub_1011FD87C()
{
  v1 = v0[186];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    v0[179] = v1;
    v3 = type metadata accessor for Peripheral();
    v4 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v5 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v6 = swift_task_alloc();
    v0[180] = v6;
    *v6 = v0;
    v6[1] = sub_101205C80;
    v7 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v3, v4);
  }

  else
  {
    v8 = v0[48];
    v0[86] = type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v9 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v10 = swift_task_alloc();
    v0[87] = v10;
    *v10 = v0;
    v10[1] = sub_1011FDB6C;
    v11 = v0[184];
    v12 = v0[183];
    v13 = v0[84];
    v14 = v0[48];

    return dispatch thunk of ServiceProtocol.subscript.getter(v14, v12, v11);
  }
}

uint64_t sub_1011FDA4C()
{
  v1 = v0[84];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[67];

  (*(v3 + 8))(v2, v4);
  v0[179] = v0[186];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[180] = v8;
  *v8 = v0;
  v8[1] = sub_101205C80;
  v9 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_1011FDB6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 696);
  v6 = *v2;
  v4[88] = a1;
  v4[89] = v1;

  v7 = v4[48];
  v8 = v4[37];
  v9 = v4[36];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_1011FDF84, 0, 0);
  }

  else
  {
    v10 = *(v8 + 8);
    v4[90] = v10;
    v4[91] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);
    v11 = sub_1012166EC(&qword_1016972C0, 255, &type metadata accessor for Characteristic);
    v4[92] = v11;
    v12 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v13 = swift_task_alloc();
    v4[93] = v13;
    *v13 = v6;
    v13[1] = sub_1011FDDB4;
    v14 = v4[86];
    v15 = v4[60];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v11);
  }
}

uint64_t sub_1011FDDB4()
{
  v2 = *(*v1 + 744);
  v3 = *v1;
  v3[94] = v0;

  if (v0)
  {
    v4 = v3[88];

    return _swift_task_switch(sub_1011FE228, 0, 0);
  }

  else
  {
    v5 = v3[88];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[95] = v7;
    v8 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    v3[96] = v8;
    *v7 = v3;
    v7[1] = sub_1011FE0A4;
    v9 = v3[60];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 2, v10, v8);
  }
}

uint64_t sub_1011FDF84()
{
  v1 = v0[84];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[67];

  (*(v3 + 8))(v2, v4);
  v0[179] = v0[89];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[180] = v8;
  *v8 = v0;
  v8[1] = sub_101205C80;
  v9 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_1011FE0A4()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  v2[97] = v0;

  v5 = v2[60];
  v6 = v2[50];
  v7 = v2[49];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = sub_1011FE52C;
  }

  else
  {
    v2[98] = v9;
    v2[99] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = sub_1011FE348;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1011FE228()
{
  v1 = v0[84];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[67];

  (*(v3 + 8))(v2, v4);
  v0[179] = v0[94];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[180] = v8;
  *v8 = v0;
  v8[1] = sub_101205C80;
  v9 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_1011FE348()
{
  v1 = v0[97];
  v3 = v0[2];
  v2 = v0[3];
  v0[100] = v3;
  v0[101] = v2;
  static Task<>.checkCancellation()();
  if (v1)
  {
    v4 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v3, v2);

    v0[179] = v1;
    v5 = type metadata accessor for Peripheral();
    v6 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v8 = swift_task_alloc();
    v0[180] = v8;
    *v8 = v0;
    v8[1] = sub_101205C80;
    v9 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
  }

  else
  {
    v10 = v0[86];
    v11 = v0[47];
    Identifier.init(stringLiteral:)();
    v12 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v13 = swift_task_alloc();
    v0[102] = v13;
    *v13 = v0;
    v13[1] = sub_1011FE64C;
    v14 = v0[184];
    v15 = v0[183];
    v16 = v0[84];
    v17 = v0[47];

    return dispatch thunk of ServiceProtocol.subscript.getter(v17, v15, v14);
  }
}

uint64_t sub_1011FE52C()
{
  v1 = v0[84];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[67];

  (*(v3 + 8))(v2, v4);
  v0[179] = v0[97];
  v5 = type metadata accessor for Peripheral();
  v6 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v7 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v8 = swift_task_alloc();
  v0[180] = v8;
  *v8 = v0;
  v8[1] = sub_101205C80;
  v9 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v6);
}

uint64_t sub_1011FE64C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 816);
  v6 = *v2;
  v4[103] = a1;
  v4[104] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[47];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_1011FE9D0, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[105] = v12;
    *v12 = v6;
    v12[1] = sub_1011FE840;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[59];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_1011FE840()
{
  v2 = *(*v1 + 840);
  v3 = *v1;
  v3[106] = v0;

  if (v0)
  {
    v4 = v3[103];

    return _swift_task_switch(sub_1011FEC7C, 0, 0);
  }

  else
  {
    v5 = v3[103];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[107] = v7;
    *v7 = v3;
    v7[1] = sub_1011FEB0C;
    v8 = v3[96];
    v9 = v3[59];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 4, v10, v8);
  }
}

uint64_t sub_1011FE9D0()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[84];
  v4 = v0[72];
  v5 = v0[68];
  v6 = v0[67];

  sub_100006654(v2, v1);
  (*(v5 + 8))(v4, v6);
  v0[179] = v0[104];
  v7 = type metadata accessor for Peripheral();
  v8 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v9 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v10 = swift_task_alloc();
  v0[180] = v10;
  *v10 = v0;
  v10[1] = sub_101205C80;
  v11 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v8);
}

uint64_t sub_1011FEB0C()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *v1;
  *(*v1 + 864) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 472), *(v2 + 392));
  if (v0)
  {
    v6 = sub_1011FEFBC;
  }

  else
  {
    v6 = sub_1011FEDB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1011FEC7C()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[84];
  v4 = v0[72];
  v5 = v0[68];
  v6 = v0[67];

  sub_100006654(v2, v1);
  (*(v5 + 8))(v4, v6);
  v0[179] = v0[106];
  v7 = type metadata accessor for Peripheral();
  v8 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v9 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v10 = swift_task_alloc();
  v0[180] = v10;
  *v10 = v0;
  v10[1] = sub_101205C80;
  v11 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v8);
}

uint64_t sub_1011FEDB8()
{
  v1 = v0[108];
  v3 = v0[4];
  v2 = v0[5];
  v0[109] = v3;
  v0[110] = v2;
  static Task<>.checkCancellation()();
  if (v1)
  {
    v4 = v0[101];
    v5 = v0[100];
    v6 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v3, v2);
    sub_100006654(v5, v4);

    v0[179] = v1;
    v7 = type metadata accessor for Peripheral();
    v8 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v9 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v10 = swift_task_alloc();
    v0[180] = v10;
    *v10 = v0;
    v10[1] = sub_101205C80;
    v11 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v8);
  }

  else
  {
    v12 = v0[86];
    v13 = v0[46];
    Identifier.init(stringLiteral:)();
    v14 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v15 = swift_task_alloc();
    v0[111] = v15;
    *v15 = v0;
    v15[1] = sub_1011FF0F8;
    v16 = v0[184];
    v17 = v0[183];
    v18 = v0[84];
    v19 = v0[46];

    return dispatch thunk of ServiceProtocol.subscript.getter(v19, v17, v16);
  }
}

uint64_t sub_1011FEFBC()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[84];
  v4 = v0[72];
  v5 = v0[68];
  v6 = v0[67];

  sub_100006654(v2, v1);
  (*(v5 + 8))(v4, v6);
  v0[179] = v0[108];
  v7 = type metadata accessor for Peripheral();
  v8 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v9 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v10 = swift_task_alloc();
  v0[180] = v10;
  *v10 = v0;
  v10[1] = sub_101205C80;
  v11 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v8);
}

uint64_t sub_1011FF0F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 888);
  v6 = *v2;
  v4[112] = a1;
  v4[113] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[46];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_1011FF47C, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[114] = v12;
    *v12 = v6;
    v12[1] = sub_1011FF2EC;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[58];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_1011FF2EC()
{
  v2 = *(*v1 + 912);
  v3 = *v1;
  v3[115] = v0;

  if (v0)
  {
    v4 = v3[112];

    return _swift_task_switch(sub_1011FF744, 0, 0);
  }

  else
  {
    v5 = v3[112];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[116] = v7;
    *v7 = v3;
    v7[1] = sub_1011FF5D4;
    v8 = v3[96];
    v9 = v3[58];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 6, v10, v8);
  }
}

uint64_t sub_1011FF47C()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[84];
  v6 = v0[72];
  v7 = v0[68];
  v8 = v0[67];

  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  (*(v7 + 8))(v6, v8);
  v0[179] = v0[113];
  v9 = type metadata accessor for Peripheral();
  v10 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;
  v13 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
}

uint64_t sub_1011FF5D4()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v4 = *v1;
  *(*v1 + 936) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 464), *(v2 + 392));
  if (v0)
  {
    v6 = sub_1011FFAC0;
  }

  else
  {
    v6 = sub_1011FF89C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1011FF744()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[84];
  v6 = v0[72];
  v7 = v0[68];
  v8 = v0[67];

  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  (*(v7 + 8))(v6, v8);
  v0[179] = v0[115];
  v9 = type metadata accessor for Peripheral();
  v10 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;
  v13 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
}

uint64_t sub_1011FF89C()
{
  v1 = v0[117];
  v3 = v0[6];
  v2 = v0[7];
  v0[118] = v3;
  v0[119] = v2;
  static Task<>.checkCancellation()();
  if (v1)
  {
    v4 = v0[110];
    v5 = v0[109];
    v6 = v0[101];
    v7 = v0[100];
    v8 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v3, v2);
    sub_100006654(v5, v4);
    sub_100006654(v7, v6);

    v0[179] = v1;
    v9 = type metadata accessor for Peripheral();
    v10 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v12 = swift_task_alloc();
    v0[180] = v12;
    *v12 = v0;
    v12[1] = sub_101205C80;
    v13 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
  }

  else
  {
    v14 = v0[86];
    v15 = v0[45];
    Identifier.init(stringLiteral:)();
    v16 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v17 = swift_task_alloc();
    v0[120] = v17;
    *v17 = v0;
    v17[1] = sub_1011FFC18;
    v18 = v0[184];
    v19 = v0[183];
    v20 = v0[84];
    v21 = v0[45];

    return dispatch thunk of ServiceProtocol.subscript.getter(v21, v19, v18);
  }
}

uint64_t sub_1011FFAC0()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[84];
  v6 = v0[72];
  v7 = v0[68];
  v8 = v0[67];

  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  (*(v7 + 8))(v6, v8);
  v0[179] = v0[117];
  v9 = type metadata accessor for Peripheral();
  v10 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v11 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v12 = swift_task_alloc();
  v0[180] = v12;
  *v12 = v0;
  v12[1] = sub_101205C80;
  v13 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v10);
}

uint64_t sub_1011FFC18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 960);
  v6 = *v2;
  v4[121] = a1;
  v4[122] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[45];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_1011FFF94, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[123] = v12;
    *v12 = v6;
    v12[1] = sub_1011FFE0C;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[57];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_1011FFE0C()
{
  v2 = *(*v1 + 984);
  v3 = *v1;
  v3[124] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1012004C0, 0, 0);
  }

  else
  {
    v4 = v3[121];

    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[125] = v6;
    *v6 = v3;
    v6[1] = sub_101200350;
    v7 = v3[96];
    v8 = v3[57];
    v9 = v3[49];

    return AsyncSequence.first()(v3 + 8, v9, v7);
  }
}

uint64_t sub_1011FFF94()
{
  v1 = v0[122];
  v0[23] = v1;
  v2 = v0[29];
  v3 = v0[27];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      v4 = v0[23];

      v0[128] = 0xF000000000000000;
      v0[127] = 0;
      static Task<>.checkCancellation()();
      v26 = v0[86];
      v27 = v0[44];
      Identifier.init(stringLiteral:)();
      v28 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v29 = swift_task_alloc();
      v0[129] = v29;
      *v29 = v0;
      v29[1] = sub_101200E7C;
      v30 = v0[184];
      v31 = v0[183];
      v32 = v0[84];
      v33 = v0[44];

      return dispatch thunk of ServiceProtocol.subscript.getter(v33, v31, v30);
    }

    v12 = v0[118];
    v13 = v0[110];
    v14 = v0[109];
    v15 = v0[101];
    v16 = v0[100];
    v17 = v0[84];
    v18 = v0[28];
    v35 = v0[29];
    v36 = v0[119];
    v19 = v0[27];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v16, v15);
    sub_100006654(v14, v13);
    sub_100006654(v12, v36);

    (*(v18 + 8))(v35, v19);
  }

  else
  {
    v5 = v0[119];
    v6 = v0[118];
    v7 = v0[110];
    v8 = v0[109];
    v9 = v0[101];
    v10 = v0[100];
    v11 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v10, v9);
    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
  }

  v20 = v0[23];

  v0[179] = v1;
  v21 = type metadata accessor for Peripheral();
  v22 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v23 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v24 = swift_task_alloc();
  v0[180] = v24;
  *v24 = v0;
  v24[1] = sub_101205C80;
  v25 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v21, v22);
}

uint64_t sub_101200350()
{
  v2 = *v1;
  v3 = *(*v1 + 1000);
  v4 = *v1;
  *(*v1 + 1008) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 456), *(v2 + 392));
  if (v0)
  {
    v6 = sub_101200AC0;
  }

  else
  {
    v6 = sub_101200884;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1012004C0()
{
  v1 = v0[121];

  v2 = v0[124];
  v0[23] = v2;
  v3 = v0[29];
  v4 = v0[27];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      v5 = v0[23];

      v0[128] = 0xF000000000000000;
      v0[127] = 0;
      static Task<>.checkCancellation()();
      v27 = v0[86];
      v28 = v0[44];
      Identifier.init(stringLiteral:)();
      v29 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v30 = swift_task_alloc();
      v0[129] = v30;
      *v30 = v0;
      v30[1] = sub_101200E7C;
      v31 = v0[184];
      v32 = v0[183];
      v33 = v0[84];
      v34 = v0[44];

      return dispatch thunk of ServiceProtocol.subscript.getter(v34, v32, v31);
    }

    v13 = v0[118];
    v14 = v0[110];
    v15 = v0[109];
    v16 = v0[101];
    v17 = v0[100];
    v18 = v0[84];
    v19 = v0[28];
    v36 = v0[29];
    v37 = v0[119];
    v20 = v0[27];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v17, v16);
    sub_100006654(v15, v14);
    sub_100006654(v13, v37);

    (*(v19 + 8))(v36, v20);
  }

  else
  {
    v6 = v0[119];
    v7 = v0[118];
    v8 = v0[110];
    v9 = v0[109];
    v10 = v0[101];
    v11 = v0[100];
    v12 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v11, v10);
    sub_100006654(v9, v8);
    sub_100006654(v7, v6);
  }

  v21 = v0[23];

  v0[179] = v2;
  v22 = type metadata accessor for Peripheral();
  v23 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v24 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v25 = swift_task_alloc();
  v0[180] = v25;
  *v25 = v0;
  v25[1] = sub_101205C80;
  v26 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v22, v23);
}

uint64_t sub_101200884()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[126];
  v0[128] = v1;
  v0[127] = v2;
  static Task<>.checkCancellation()();
  if (v3)
  {
    v24 = v0[119];
    v4 = v0[118];
    v5 = v0[110];
    v6 = v0[109];
    v7 = v0[101];
    v8 = v0[100];
    v9 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
    sub_100006654(v4, v24);
    sub_100006654(v2, v1);
    v0[179] = v3;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v12 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v13 = swift_task_alloc();
    v0[180] = v13;
    *v13 = v0;
    v13[1] = sub_101205C80;
    v14 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    v15 = v0[86];
    v16 = v0[44];
    Identifier.init(stringLiteral:)();
    v17 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v18 = swift_task_alloc();
    v0[129] = v18;
    *v18 = v0;
    v18[1] = sub_101200E7C;
    v19 = v0[184];
    v20 = v0[183];
    v21 = v0[84];
    v22 = v0[44];

    return dispatch thunk of ServiceProtocol.subscript.getter(v22, v20, v19);
  }
}

uint64_t sub_101200AC0()
{
  v1 = v0[126];
  v0[23] = v1;
  v2 = v0[29];
  v3 = v0[27];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v0[28] + 88))(v0[29], v0[27]) == enum case for CentralManager.Error.missingCharacteristic(_:))
    {

      v4 = v0[23];

      v0[128] = 0xF000000000000000;
      v0[127] = 0;
      static Task<>.checkCancellation()();
      v26 = v0[86];
      v27 = v0[44];
      Identifier.init(stringLiteral:)();
      v28 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v29 = swift_task_alloc();
      v0[129] = v29;
      *v29 = v0;
      v29[1] = sub_101200E7C;
      v30 = v0[184];
      v31 = v0[183];
      v32 = v0[84];
      v33 = v0[44];

      return dispatch thunk of ServiceProtocol.subscript.getter(v33, v31, v30);
    }

    v12 = v0[118];
    v13 = v0[110];
    v14 = v0[109];
    v15 = v0[101];
    v16 = v0[100];
    v17 = v0[84];
    v18 = v0[28];
    v35 = v0[29];
    v36 = v0[119];
    v19 = v0[27];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v16, v15);
    sub_100006654(v14, v13);
    sub_100006654(v12, v36);

    (*(v18 + 8))(v35, v19);
  }

  else
  {
    v5 = v0[119];
    v6 = v0[118];
    v7 = v0[110];
    v8 = v0[109];
    v9 = v0[101];
    v10 = v0[100];
    v11 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);
    sub_100006654(v10, v9);
    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
  }

  v20 = v0[23];

  v0[179] = v1;
  v21 = type metadata accessor for Peripheral();
  v22 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v23 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v24 = swift_task_alloc();
  v0[180] = v24;
  *v24 = v0;
  v24[1] = sub_101205C80;
  v25 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v21, v22);
}

uint64_t sub_101200E7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1032);
  v6 = *v2;
  v4[130] = a1;
  v4[131] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[44];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_101201200, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[132] = v12;
    *v12 = v6;
    v12[1] = sub_101201070;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[56];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_101201070()
{
  v2 = *(*v1 + 1056);
  v3 = *v1;
  v3[133] = v0;

  if (v0)
  {
    v4 = v3[130];

    return _swift_task_switch(sub_1012014F8, 0, 0);
  }

  else
  {
    v5 = v3[130];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[134] = v7;
    *v7 = v3;
    v7[1] = sub_101201388;
    v8 = v3[96];
    v9 = v3[56];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 10, v10, v8);
  }
}

uint64_t sub_101201200()
{
  v17 = v0[127];
  v18 = v0[128];
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[84];
  v8 = v0[72];
  v9 = v0[68];
  v10 = v0[67];

  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  (*(v9 + 8))(v8, v10);
  v0[179] = v0[131];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101201388()
{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v4 = *v1;
  *(*v1 + 1080) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 448), *(v2 + 392));
  if (v0)
  {
    v6 = sub_1012018D0;
  }

  else
  {
    v6 = sub_101201680;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1012014F8()
{
  v17 = v0[127];
  v18 = v0[128];
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[84];
  v8 = v0[72];
  v9 = v0[68];
  v10 = v0[67];

  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  (*(v9 + 8))(v8, v10);
  v0[179] = v0[133];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101201680()
{
  v1 = v0[135];
  v3 = v0[10];
  v2 = v0[11];
  v0[136] = v3;
  v0[137] = v2;
  static Task<>.checkCancellation()();
  if (v1)
  {
    v25 = v0[127];
    v26 = v0[128];
    v24 = v0[119];
    v4 = v0[118];
    v5 = v0[110];
    v6 = v0[109];
    v7 = v0[101];
    v8 = v0[100];
    v9 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
    sub_100006654(v4, v24);
    sub_100006654(v3, v2);
    sub_100006654(v25, v26);
    v0[179] = v1;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v12 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v13 = swift_task_alloc();
    v0[180] = v13;
    *v13 = v0;
    v13[1] = sub_101205C80;
    v14 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    v15 = v0[86];
    v16 = v0[43];
    Identifier.init(stringLiteral:)();
    v17 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v18 = swift_task_alloc();
    v0[138] = v18;
    *v18 = v0;
    v18[1] = sub_101201A58;
    v19 = v0[184];
    v20 = v0[183];
    v21 = v0[84];
    v22 = v0[43];

    return dispatch thunk of ServiceProtocol.subscript.getter(v22, v20, v19);
  }
}

uint64_t sub_1012018D0()
{
  v17 = v0[127];
  v18 = v0[128];
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[84];
  v8 = v0[72];
  v9 = v0[68];
  v10 = v0[67];

  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  (*(v9 + 8))(v8, v10);
  v0[179] = v0[135];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101201A58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1104);
  v6 = *v2;
  v4[139] = a1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[43];
  v10 = v4[36];
  if (v1)
  {

    v8(v9, v10);

    return _swift_task_switch(sub_101201E10, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[140] = v12;
    *v12 = v6;
    v12[1] = sub_101201C6C;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[55];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_101201C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[139];

    return _swift_task_switch(sub_101216860, 0, 0);
  }

  else
  {
    v6 = v2[139];

    v7 = async function pointer to AsyncSequence.first()[1];
    v8 = swift_task_alloc();
    v2[141] = v8;
    *v8 = v4;
    v8[1] = sub_101202074;
    v9 = v2[96];
    v10 = v2[55];
    v11 = v2[49];

    return AsyncSequence.first()(v2 + 12, v11, v9);
  }
}

uint64_t sub_101201E10()
{
  v0[144] = 0xF000000000000000;
  v0[143] = 0;
  static Task<>.checkCancellation()();
  v1 = v0[86];
  v2 = v0[42];
  Identifier.init(stringLiteral:)();
  v3 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v4 = swift_task_alloc();
  v0[145] = v4;
  *v4 = v0;
  v4[1] = sub_10120246C;
  v5 = v0[184];
  v6 = v0[183];
  v7 = v0[84];
  v8 = v0[42];

  return dispatch thunk of ServiceProtocol.subscript.getter(v8, v6, v5);
}

uint64_t sub_101202074()
{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v4 = *v1;
  *(*v1 + 1136) = v0;

  v5 = v2[99];
  v6 = v2[98];
  v7 = v2[55];
  v8 = v2[49];
  if (v0)
  {

    v6(v7, v8);
    v9 = sub_101216860;
  }

  else
  {
    v6(v7, v8);
    v9 = sub_101202208;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_101202208()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[142];
  v0[144] = v1;
  v0[143] = v2;
  static Task<>.checkCancellation()();
  if (v3)
  {
    v25 = v0[136];
    v26 = v0[137];
    v27 = v0[127];
    v28 = v0[128];
    v24 = v0[119];
    v4 = v0[118];
    v5 = v0[110];
    v6 = v0[109];
    v7 = v0[101];
    v8 = v0[100];
    v9 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
    sub_100006654(v4, v24);
    sub_100006654(v25, v26);
    sub_100006654(v2, v1);
    sub_100006654(v27, v28);
    v0[179] = v3;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v12 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v13 = swift_task_alloc();
    v0[180] = v13;
    *v13 = v0;
    v13[1] = sub_101205C80;
    v14 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    v15 = v0[86];
    v16 = v0[42];
    Identifier.init(stringLiteral:)();
    v17 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v18 = swift_task_alloc();
    v0[145] = v18;
    *v18 = v0;
    v18[1] = sub_10120246C;
    v19 = v0[184];
    v20 = v0[183];
    v21 = v0[84];
    v22 = v0[42];

    return dispatch thunk of ServiceProtocol.subscript.getter(v22, v20, v19);
  }
}

uint64_t sub_10120246C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1160);
  v6 = *v2;
  v4[146] = a1;
  v4[147] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[42];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_1012027F0, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[148] = v12;
    *v12 = v6;
    v12[1] = sub_101202660;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[54];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_101202660()
{
  v2 = *(*v1 + 1184);
  v3 = *v1;
  v3[149] = v0;

  if (v0)
  {
    v4 = v3[146];

    return _swift_task_switch(sub_101202B14, 0, 0);
  }

  else
  {
    v5 = v3[146];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[150] = v7;
    *v7 = v3;
    v7[1] = sub_1012029A4;
    v8 = v3[96];
    v9 = v3[54];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 14, v10, v8);
  }
}

uint64_t sub_1012027F0()
{
  v21 = v0[143];
  v22 = v0[144];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v19 = v0[72];
  v20 = v0[137];
  v10 = v0[68];
  v17 = v0[136];
  v18 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v20);
  sub_100006654(v21, v22);
  (*(v10 + 8))(v19, v18);
  v0[179] = v0[147];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_1012029A4()
{
  v2 = *v1;
  v3 = *(*v1 + 1200);
  v4 = *v1;
  *(*v1 + 1208) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 432), *(v2 + 392));
  if (v0)
  {
    v6 = sub_101202F40;
  }

  else
  {
    v6 = sub_101202CC8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_101202B14()
{
  v21 = v0[143];
  v22 = v0[144];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v19 = v0[72];
  v20 = v0[137];
  v10 = v0[68];
  v17 = v0[136];
  v18 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v20);
  sub_100006654(v21, v22);
  (*(v10 + 8))(v19, v18);
  v0[179] = v0[149];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101202CC8()
{
  v1 = v0[151];
  v3 = v0[14];
  v2 = v0[15];
  v0[152] = v3;
  v0[153] = v2;
  static Task<>.checkCancellation()();
  if (v1)
  {
    v27 = v0[143];
    v28 = v0[144];
    v25 = v0[136];
    v26 = v0[137];
    v29 = v0[127];
    v30 = v0[128];
    v24 = v0[119];
    v4 = v0[118];
    v5 = v0[110];
    v6 = v0[109];
    v7 = v0[101];
    v8 = v0[100];
    v9 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
    sub_100006654(v4, v24);
    sub_100006654(v25, v26);
    sub_100006654(v27, v28);
    sub_100006654(v3, v2);
    sub_100006654(v29, v30);
    v0[179] = v1;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v12 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v13 = swift_task_alloc();
    v0[180] = v13;
    *v13 = v0;
    v13[1] = sub_101205C80;
    v14 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    v15 = v0[86];
    v16 = v0[41];
    Identifier.init(stringLiteral:)();
    v17 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v18 = swift_task_alloc();
    v0[154] = v18;
    *v18 = v0;
    v18[1] = sub_1012030F4;
    v19 = v0[184];
    v20 = v0[183];
    v21 = v0[84];
    v22 = v0[41];

    return dispatch thunk of ServiceProtocol.subscript.getter(v22, v20, v19);
  }
}

uint64_t sub_101202F40()
{
  v21 = v0[143];
  v22 = v0[144];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v19 = v0[72];
  v20 = v0[137];
  v10 = v0[68];
  v17 = v0[136];
  v18 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v20);
  sub_100006654(v21, v22);
  (*(v10 + 8))(v19, v18);
  v0[179] = v0[151];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_1012030F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1232);
  v6 = *v2;
  v4[155] = a1;
  v4[156] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[41];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_101203478, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[157] = v12;
    *v12 = v6;
    v12[1] = sub_1012032E8;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[53];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_1012032E8()
{
  v2 = *(*v1 + 1256);
  v3 = *v1;
  v3[158] = v0;

  if (v0)
  {
    v4 = v3[155];

    return _swift_task_switch(sub_1012037AC, 0, 0);
  }

  else
  {
    v5 = v3[155];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[159] = v7;
    *v7 = v3;
    v7[1] = sub_10120363C;
    v8 = v3[96];
    v9 = v3[53];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 16, v10, v8);
  }
}

uint64_t sub_101203478()
{
  v23 = v0[152];
  v24 = v0[153];
  v21 = v0[143];
  v22 = v0[144];
  v17 = v0[136];
  v18 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v10 = v0[68];
  v19 = v0[67];
  v20 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v21, v22);
  sub_100006654(v23, v24);
  (*(v10 + 8))(v20, v19);
  v0[179] = v0[156];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_10120363C()
{
  v2 = *v1;
  v3 = *(*v1 + 1272);
  v4 = *v1;
  *(*v1 + 1280) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 424), *(v2 + 392));
  if (v0)
  {
    v6 = sub_101203BFC;
  }

  else
  {
    v6 = sub_101203970;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1012037AC()
{
  v23 = v0[152];
  v24 = v0[153];
  v21 = v0[143];
  v22 = v0[144];
  v17 = v0[136];
  v18 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v10 = v0[68];
  v19 = v0[67];
  v20 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v21, v22);
  sub_100006654(v23, v24);
  (*(v10 + 8))(v20, v19);
  v0[179] = v0[158];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101203970()
{
  v1 = v0[160];
  v3 = v0[16];
  v2 = v0[17];
  v0[161] = v3;
  v0[162] = v2;
  static Task<>.checkCancellation()();
  if (v1)
  {
    v29 = v0[152];
    v30 = v0[153];
    v27 = v0[143];
    v28 = v0[144];
    v25 = v0[136];
    v26 = v0[137];
    v31 = v0[127];
    v32 = v0[128];
    v24 = v0[119];
    v4 = v0[118];
    v5 = v0[110];
    v6 = v0[109];
    v7 = v0[101];
    v8 = v0[100];
    v9 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
    sub_100006654(v4, v24);
    sub_100006654(v25, v26);
    sub_100006654(v27, v28);
    sub_100006654(v29, v30);
    sub_100006654(v3, v2);
    sub_100006654(v31, v32);
    v0[179] = v1;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v12 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v13 = swift_task_alloc();
    v0[180] = v13;
    *v13 = v0;
    v13[1] = sub_101205C80;
    v14 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    v15 = v0[86];
    v16 = v0[40];
    Identifier.init(stringLiteral:)();
    v17 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v18 = swift_task_alloc();
    v0[163] = v18;
    *v18 = v0;
    v18[1] = sub_101203DC0;
    v19 = v0[184];
    v20 = v0[183];
    v21 = v0[84];
    v22 = v0[40];

    return dispatch thunk of ServiceProtocol.subscript.getter(v22, v20, v19);
  }
}

uint64_t sub_101203BFC()
{
  v23 = v0[152];
  v24 = v0[153];
  v21 = v0[143];
  v22 = v0[144];
  v17 = v0[136];
  v18 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v10 = v0[68];
  v19 = v0[67];
  v20 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v21, v22);
  sub_100006654(v23, v24);
  (*(v10 + 8))(v20, v19);
  v0[179] = v0[160];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101203DC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1304);
  v6 = *v2;
  v4[164] = a1;
  v4[165] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[40];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_101204144, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[166] = v12;
    *v12 = v6;
    v12[1] = sub_101203FB4;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[52];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_101203FB4()
{
  v2 = *(*v1 + 1328);
  v3 = *v1;
  v3[167] = v0;

  if (v0)
  {
    v4 = v3[164];

    return _swift_task_switch(sub_10120448C, 0, 0);
  }

  else
  {
    v5 = v3[164];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[168] = v7;
    *v7 = v3;
    v7[1] = sub_10120431C;
    v8 = v3[96];
    v9 = v3[52];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 18, v10, v8);
  }
}

uint64_t sub_101204144()
{
  v25 = v0[161];
  v26 = v0[162];
  v23 = v0[152];
  v24 = v0[153];
  v19 = v0[143];
  v20 = v0[144];
  v17 = v0[136];
  v18 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v10 = v0[68];
  v21 = v0[67];
  v22 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v19, v20);
  sub_100006654(v23, v24);
  sub_100006654(v25, v26);
  (*(v10 + 8))(v22, v21);
  v0[179] = v0[165];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_10120431C()
{
  v2 = *v1;
  v3 = *(*v1 + 1344);
  v4 = *v1;
  *(*v1 + 1352) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 416), *(v2 + 392));
  if (v0)
  {
    v6 = sub_10120490C;
  }

  else
  {
    v6 = sub_101204664;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10120448C()
{
  v25 = v0[161];
  v26 = v0[162];
  v23 = v0[152];
  v24 = v0[153];
  v19 = v0[143];
  v20 = v0[144];
  v17 = v0[136];
  v18 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v10 = v0[68];
  v21 = v0[67];
  v22 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v19, v20);
  sub_100006654(v23, v24);
  sub_100006654(v25, v26);
  (*(v10 + 8))(v22, v21);
  v0[179] = v0[167];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101204664()
{
  v1 = v0[169];
  v3 = v0[18];
  v2 = v0[19];
  v0[170] = v3;
  v0[171] = v2;
  static Task<>.checkCancellation()();
  if (v1)
  {
    v30 = v0[153];
    v31 = v0[161];
    v28 = v0[144];
    v29 = v0[152];
    v26 = v0[137];
    v27 = v0[143];
    v33 = v0[162];
    v34 = v0[128];
    v32 = v0[127];
    v24 = v0[119];
    v25 = v0[136];
    v4 = v0[118];
    v5 = v0[110];
    v6 = v0[109];
    v7 = v0[101];
    v8 = v0[100];
    v9 = v0[84];
    (*(v0[68] + 8))(v0[72], v0[67]);

    sub_100006654(v8, v7);
    sub_100006654(v6, v5);
    sub_100006654(v4, v24);
    sub_100006654(v25, v26);
    sub_100006654(v27, v28);
    sub_100006654(v29, v30);
    sub_100006654(v31, v33);
    sub_100006654(v3, v2);
    sub_100006654(v32, v34);
    v0[179] = v1;
    v10 = type metadata accessor for Peripheral();
    v11 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
    v12 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v13 = swift_task_alloc();
    v0[180] = v13;
    *v13 = v0;
    v13[1] = sub_101205C80;
    v14 = v0[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v11);
  }

  else
  {
    v15 = v0[86];
    v16 = v0[39];
    Identifier.init(stringLiteral:)();
    v17 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v18 = swift_task_alloc();
    v0[172] = v18;
    *v18 = v0;
    v18[1] = sub_101204AE4;
    v19 = v0[184];
    v20 = v0[183];
    v21 = v0[84];
    v22 = v0[39];

    return dispatch thunk of ServiceProtocol.subscript.getter(v22, v20, v19);
  }
}

uint64_t sub_10120490C()
{
  v25 = v0[161];
  v26 = v0[162];
  v23 = v0[152];
  v24 = v0[153];
  v19 = v0[143];
  v20 = v0[144];
  v17 = v0[136];
  v18 = v0[137];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v10 = v0[68];
  v21 = v0[67];
  v22 = v0[72];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v19, v20);
  sub_100006654(v23, v24);
  sub_100006654(v25, v26);
  (*(v10 + 8))(v22, v21);
  v0[179] = v0[169];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101204AE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1376);
  v6 = *v2;
  v4[173] = a1;
  v4[174] = v1;

  v7 = v4[91];
  v8 = v4[90];
  v9 = v4[39];
  v10 = v4[36];
  if (v1)
  {
    v8(v9, v10);

    return _swift_task_switch(sub_101204E68, 0, 0);
  }

  else
  {
    v8(v9, v10);
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[175] = v12;
    *v12 = v6;
    v12[1] = sub_101204CD8;
    v13 = v4[92];
    v14 = v4[86];
    v15 = v4[51];

    return dispatch thunk of CharacteristicProtocol.read()(v15, v14, v13);
  }
}

uint64_t sub_101204CD8()
{
  v2 = *(*v1 + 1400);
  v3 = *v1;
  v3[176] = v0;

  if (v0)
  {
    v4 = v3[173];

    return _swift_task_switch(sub_1012051DC, 0, 0);
  }

  else
  {
    v5 = v3[173];

    v6 = async function pointer to AsyncSequence.first()[1];
    v7 = swift_task_alloc();
    v3[177] = v7;
    *v7 = v3;
    v7[1] = sub_10120506C;
    v8 = v3[96];
    v9 = v3[51];
    v10 = v3[49];

    return AsyncSequence.first()(v3 + 20, v10, v8);
  }
}

uint64_t sub_101204E68()
{
  v28 = v0[171];
  v26 = v0[162];
  v27 = v0[170];
  v25 = v0[161];
  v23 = v0[153];
  v20 = v0[144];
  v21 = v0[152];
  v18 = v0[137];
  v19 = v0[143];
  v17 = v0[136];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v24 = v0[72];
  v10 = v0[68];
  v22 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v19, v20);
  sub_100006654(v21, v23);
  sub_100006654(v25, v26);
  sub_100006654(v27, v28);
  (*(v10 + 8))(v24, v22);
  v0[179] = v0[174];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_10120506C()
{
  v2 = *v1;
  v3 = *(*v1 + 1416);
  v4 = *v1;
  *(*v1 + 1424) = v0;

  v5 = *(v2 + 792);
  (*(v2 + 784))(*(v2 + 408), *(v2 + 392));
  if (v0)
  {
    v6 = sub_101205A7C;
  }

  else
  {
    v6 = sub_1012053E0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1012051DC()
{
  v28 = v0[171];
  v26 = v0[162];
  v27 = v0[170];
  v25 = v0[161];
  v23 = v0[153];
  v20 = v0[144];
  v21 = v0[152];
  v18 = v0[137];
  v19 = v0[143];
  v17 = v0[136];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v24 = v0[72];
  v10 = v0[68];
  v22 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v19, v20);
  sub_100006654(v21, v23);
  sub_100006654(v25, v26);
  sub_100006654(v27, v28);
  (*(v10 + 8))(v24, v22);
  v0[179] = v0[176];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_1012053E0()
{
  v110 = v0;
  v1 = v0[78];
  v2 = v0[71];
  v107 = v0[21];
  v108 = v0[20];
  ContinuousClock.now.getter();
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177AC90);
  v10 = *(v7 + 16);
  v10(v5, v3, v8);
  v10(v6, v4, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[70];
  v15 = v0[69];
  v16 = v0[68];
  v17 = v0[67];
  if (v13)
  {
    v18 = v0[34];
    v19 = v0[35];
    v101 = v0[33];
    v103 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v109 = v105;
    *v103 = 136446210;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1012166EC(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    v99 = static Duration.description<A>(_:_:units:)();
    v21 = v20;
    (*(v18 + 8))(v19, v101);
    v22 = *(v16 + 8);
    v22(v15, v17);
    v84 = v22;
    v22(v14, v17);
    v23 = sub_1000136BC(v99, v21, &v109);

    *(v103 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "Raw metadata read time: %{public}s", v103, 0xCu);
    sub_100007BAC(v105);
  }

  else
  {

    v24 = *(v16 + 8);
    v24(v15, v17);
    v84 = v24;
    v24(v14, v17);
  }

  v74 = v0[170];
  v75 = v0[171];
  v69 = v0[161];
  v70 = v0[162];
  v67 = v0[152];
  v68 = v0[153];
  v65 = v0[143];
  v66 = v0[144];
  v63 = v0[136];
  v64 = v0[137];
  v61 = v0[127];
  v62 = v0[128];
  v59 = v0[118];
  v60 = v0[119];
  v57 = v0[109];
  v58 = v0[110];
  v55 = v0[100];
  v56 = v0[101];
  v25 = v0[80];
  v26 = v0[79];
  v27 = v0[77];
  v53 = v0[76];
  v54 = v0[78];
  v28 = v0[74];
  v51 = v0[73];
  v52 = v0[75];
  v50 = v0[72];
  v48 = v0[84];
  v49 = v0[71];
  v71 = v0[70];
  v72 = v0[69];
  v29 = v0[67];
  v73 = v0[66];
  v76 = v0[65];
  v77 = v0[62];
  v78 = v0[61];
  v79 = v0[60];
  v80 = v0[59];
  v81 = v0[58];
  v82 = v0[57];
  v83 = v0[56];
  v85 = v0[55];
  v86 = v0[54];
  v87 = v0[53];
  v88 = v0[52];
  v89 = v0[51];
  v90 = v0[48];
  v91 = v0[47];
  v92 = v0[46];
  v93 = v0[45];
  v94 = v0[44];
  v95 = v0[43];
  v96 = v0[42];
  v97 = v0[41];
  v98 = v0[40];
  v100 = v0[39];
  v102 = v0[38];
  v30 = v0[31];
  v31 = v0[32];
  v32 = v0[30];
  v104 = v0[35];
  v106 = v0[29];
  v34 = v0[24];
  v33 = v0[25];
  dispatch thunk of PeripheralProtocol.id.getter();
  Identifier.id.getter();

  (*(v30 + 8))(v31, v32);
  v84(v49, v29);
  v84(v50, v29);
  (*(v28 + 8))(v52, v51);
  (*(v27 + 8))(v54, v53);
  v35 = type metadata accessor for RawAccessoryMetadata(0);
  v36 = (v34 + v35[5]);
  *v36 = v55;
  v36[1] = v56;
  v37 = (v34 + v35[6]);
  *v37 = v57;
  v37[1] = v58;
  v38 = (v34 + v35[7]);
  *v38 = v59;
  v38[1] = v60;
  v39 = (v34 + v35[8]);
  *v39 = v61;
  v39[1] = v62;
  v40 = (v34 + v35[9]);
  *v40 = v63;
  v40[1] = v64;
  v41 = (v34 + v35[10]);
  *v41 = v65;
  v41[1] = v66;
  v42 = (v34 + v35[11]);
  *v42 = v67;
  v42[1] = v68;
  *(v34 + v35[12]) = xmmword_10138BBF0;
  v43 = (v34 + v35[13]);
  *v43 = v69;
  v43[1] = v70;
  *(v34 + v35[14]) = xmmword_10138BBF0;
  v44 = (v34 + v35[15]);
  *v44 = v74;
  v44[1] = v75;
  v45 = (v34 + v35[16]);
  *v45 = v108;
  v45[1] = v107;

  v46 = v0[1];

  return v46();
}

uint64_t sub_101205A7C()
{
  v28 = v0[171];
  v26 = v0[162];
  v27 = v0[170];
  v25 = v0[161];
  v23 = v0[153];
  v20 = v0[144];
  v21 = v0[152];
  v18 = v0[137];
  v19 = v0[143];
  v17 = v0[136];
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[84];
  v24 = v0[72];
  v10 = v0[68];
  v22 = v0[67];

  sub_100006654(v8, v7);
  sub_100006654(v6, v5);
  sub_100006654(v4, v3);
  sub_100006654(v2, v1);
  sub_100006654(v17, v18);
  sub_100006654(v19, v20);
  sub_100006654(v21, v23);
  sub_100006654(v25, v26);
  sub_100006654(v27, v28);
  (*(v10 + 8))(v24, v22);
  v0[179] = v0[178];
  v11 = type metadata accessor for Peripheral();
  v12 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v13 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v14 = swift_task_alloc();
  v0[180] = v14;
  *v14 = v0;
  v14[1] = sub_101205C80;
  v15 = v0[25];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v11, v12);
}

uint64_t sub_101205C80()
{
  v2 = *(*v1 + 1440);
  v5 = *v1;
  *(*v1 + 1448) = v0;

  if (v0)
  {
    v3 = sub_101206000;
  }

  else
  {
    v3 = sub_101205D94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_101205D94()
{
  v1 = v0[179];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  v40 = v0[179];
  v5 = v0[75];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[62];
  v15 = v0[61];
  v16 = v0[60];
  v17 = v0[59];
  v18 = v0[58];
  v19 = v0[57];
  v20 = v0[56];
  v21 = v0[55];
  v22 = v0[54];
  v23 = v0[53];
  v24 = v0[52];
  v25 = v0[51];
  v26 = v0[48];
  v27 = v0[47];
  v28 = v0[46];
  v29 = v0[45];
  v30 = v0[44];
  v31 = v0[43];
  v32 = v0[42];
  v33 = v0[41];
  v34 = v0[40];
  v35 = v0[39];
  v36 = v0[38];
  v37 = v0[35];
  v38 = v0[32];
  v39 = v0[29];
  (*(v0[77] + 8))(v0[78], v0[76]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_101206000()
{
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v1 = v0[181];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C348);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[181];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "cancelConnection error in readRawAccessoryMetadata() catch block: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[179];
  v11 = v0[75];
  v12 = v0[74];
  v13 = v0[73];
  swift_willThrow();
  (*(v12 + 8))(v11, v13);
  v49 = v0[179];
  v14 = v0[75];
  v15 = v0[72];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[69];
  v19 = v0[66];
  v20 = v0[65];
  v21 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[55];
  v31 = v0[54];
  v32 = v0[53];
  v33 = v0[52];
  v34 = v0[51];
  v35 = v0[48];
  v36 = v0[47];
  v37 = v0[46];
  v38 = v0[45];
  v39 = v0[44];
  v40 = v0[43];
  v41 = v0[42];
  v42 = v0[41];
  v43 = v0[40];
  v44 = v0[39];
  v45 = v0[38];
  v46 = v0[35];
  v47 = v0[32];
  v48 = v0[29];
  (*(v0[77] + 8))(v0[78], v0[76]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1012063A0()
{
  v2 = *v1;
  v3 = *(*v1 + 1480);
  v4 = *v1;
  *(*v1 + 1488) = v0;

  v5 = *(v2 + 1456);
  if (v0)
  {

    v6 = sub_1011FDA4C;
  }

  else
  {

    v6 = sub_1011FD87C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1012064EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1012065C0, 0, 0);
}

uint64_t sub_1012065C0()
{
  if (qword_1016946A8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  sub_1012163E4(v0[4], v1);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = (v2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  sub_101216454(v1, v8 + v6);
  *(v8 + v7) = v4;
  v9 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v14 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:));

  v10 = swift_task_alloc();
  v0[10] = v10;
  v11 = type metadata accessor for AccessoryMetadata(0);
  *v10 = v0;
  v10[1] = sub_1003722F4;
  v12 = v0[2];

  return v14(v12, &unk_10140D7B8, v8, v11);
}

uint64_t sub_101206744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8);
  v4[6] = v5;
  v4[7] = *(v5 + 64);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_101206818, 0, 0);
}

uint64_t sub_101206818()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_1012163E4(v0[5], v1);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  sub_101216454(v1, v6 + v5);
  v7 = async function pointer to withTimeout<A>(_:block:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = type metadata accessor for AccessoryMetadata(0);
  *v8 = v0;
  v8[1] = sub_100372668;
  v10 = v0[2];

  return withTimeout<A>(_:block:)(v10, 0x40AAD21B3B700000, 3, &unk_10140D7C8, v6, v9);
}

uint64_t sub_10120694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100014650;

  return sub_101206A1C(a1, a3, a4);
}

uint64_t sub_101206A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[237] = v3;
  v4[236] = a3;
  v4[235] = a2;
  v4[234] = a1;
  v5 = *(*(sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0) - 8) + 64) + 15;
  v4[238] = swift_task_alloc();
  v4[239] = swift_task_alloc();
  v4[240] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[241] = v6;
  v7 = *(v6 - 8);
  v4[242] = v7;
  v8 = *(v7 + 64) + 15;
  v4[243] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v4[244] = v9;
  v10 = *(v9 - 8);
  v4[245] = v10;
  v11 = *(v10 + 64) + 15;
  v4[246] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[247] = v12;
  v13 = *(v12 - 8);
  v4[248] = v13;
  v14 = *(v13 + 64) + 15;
  v4[249] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v4[250] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v4[251] = swift_task_alloc();
  v17 = type metadata accessor for Peripheral.ConnectionOptions();
  v4[252] = v17;
  v18 = *(v17 - 8);
  v4[253] = v18;
  v19 = *(v18 + 64) + 15;
  v4[254] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v4[255] = swift_task_alloc();

  return _swift_task_switch(sub_101206D18, 0, 0);
}

uint64_t sub_101206D18()
{
  v1 = v0[255];
  v2 = v0[254];
  v3 = v0[253];
  v4 = v0[252];
  v5 = v0[251];
  v6 = v0[250];
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v7 = *(v3 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[233] = v9;
  sub_1012166EC(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v10 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = type metadata accessor for LongTermKey();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v12 = type metadata accessor for Peripheral.Options();
  (*(*(v12 - 8) + 56))(v1, 0, 1, v12);
  v13 = type metadata accessor for Peripheral();
  v0[256] = v13;
  v14 = sub_1012166EC(&qword_1016972A0, 255, &type metadata accessor for Peripheral);
  v0[257] = v14;
  v15 = async function pointer to dispatch thunk of PeripheralProtocol.connect(useCase:options:)[1];
  v16 = swift_task_alloc();
  v0[258] = v16;
  *v16 = v0;
  v16[1] = sub_101207008;
  v17 = v0[255];
  v18 = v0[236];
  v19 = v0[235];

  return dispatch thunk of PeripheralProtocol.connect(useCase:options:)(v18, v17, v13, v14);
}

uint64_t sub_101207008()
{
  v2 = *v1;
  v3 = *(*v1 + 2064);
  v4 = *v1;
  *(*v1 + 2072) = v0;

  sub_10000B3A8(*(v2 + 2040), &qword_101697260, &unk_10138BDC0);
  if (v0)
  {
    v5 = sub_101207440;
  }

  else
  {
    v5 = sub_10120714C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10120714C()
{
  v26 = v0;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = v0[235];
  v2 = type metadata accessor for Logger();
  v0[260] = sub_1000076D4(v2, qword_10169E3B0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v24 = v0[257];
    v5 = v0[256];
    v6 = v0[249];
    v7 = v0[248];
    v8 = v0[247];
    v9 = v0[235];
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v25);
    *(v10 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    (*(v7 + 8))(v6, v8);
    v14 = sub_1000136BC(v11, v13, &v25);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s Connected to: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[235];
  }

  v16 = v0[246];
  v0[261] = type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v17 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
  v18 = swift_task_alloc();
  v0[262] = v18;
  *v18 = v0;
  v18[1] = sub_1012077C8;
  v19 = v0[257];
  v20 = v0[256];
  v21 = v0[246];
  v22 = v0[235];

  return dispatch thunk of PeripheralProtocol.subscript.getter(v21, v20, v19);
}

uint64_t sub_101207440()
{
  v30 = v0;
  v0[309] = v0[259];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = v0[235];
  v2 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v2, qword_10169E3B0);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[257];
    v26 = v0[256];
    v6 = v0[249];
    v7 = v0[248];
    v8 = v0[247];
    v27 = v4;
    v9 = v0[235];
    v10 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136446722;
    *(v10 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v29);
    *(v10 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    (*(v7 + 8))(v6, v8);
    v14 = sub_1000136BC(v11, v13, &v29);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v28 = v15;
    _os_log_impl(&_mh_execute_header, v3, v27, "%{public}s %{public}s Error %{public}@", v10, 0x20u);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[235];
  }

  v17 = v0[238];
  v18 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v20 = swift_task_alloc();
  v0[311] = v20;
  *v20 = v0;
  v20[1] = sub_101212C84;
  v21 = v0[257];
  v22 = v0[256];
  v23 = v0[238];
  v24 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v23, v22, v21);
}

uint64_t sub_1012077C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2096);
  v6 = *v2;
  v4[263] = a1;
  v4[264] = v1;

  (*(v3[245] + 8))(v3[246], v3[244]);
  if (v1)
  {
    v7 = sub_101207BB8;
  }

  else
  {
    v7 = sub_10120793C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10120793C()
{
  v1 = v0[243];
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = sub_1012166EC(&qword_1016972A8, 255, &type metadata accessor for Service);
  v3 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v4 = swift_task_alloc();
  v0[265] = v4;
  *v4 = v0;
  v4[1] = sub_101207A44;
  v5 = v0[263];
  v6 = v0[261];
  v7 = v0[243];

  return dispatch thunk of ServiceProtocol.subscript.getter(v7, v6, v2);
}

uint64_t sub_101207A44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2120);
  v6 = *v2;
  v4[266] = a1;
  v4[267] = v1;

  (*(v3[242] + 8))(v3[243], v3[241]);
  if (v1)
  {
    v7 = sub_10120815C;
  }

  else
  {
    v7 = sub_101207F40;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_101207BB8()
{
  v30 = v0;
  v0[309] = v0[264];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v1 = v0[235];
  v2 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v2, qword_10169E3B0);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[257];
    v26 = v0[256];
    v6 = v0[249];
    v7 = v0[248];
    v8 = v0[247];
    v27 = v4;
    v9 = v0[235];
    v10 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v10 = 136446722;
    *(v10 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v29);
    *(v10 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    (*(v7 + 8))(v6, v8);
    v14 = sub_1000136BC(v11, v13, &v29);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v28 = v15;
    _os_log_impl(&_mh_execute_header, v3, v27, "%{public}s %{public}s Error %{public}@", v10, 0x20u);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v16 = v0[235];
  }

  v17 = v0[238];
  v18 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v20 = swift_task_alloc();
  v0[311] = v20;
  *v20 = v0;
  v20[1] = sub_101212C84;
  v21 = v0[257];
  v22 = v0[256];
  v23 = v0[238];
  v24 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v23, v22, v21);
}

uint64_t sub_101207F40()
{
  *(v0 + 136) = &type metadata for PoshAccessoryNonOwnerCommand;
  v1 = sub_10038B8D0();
  *(v0 + 2144) = v1;
  *(v0 + 144) = v1;
  v2 = sub_10038B924();
  *(v0 + 2152) = v2;
  *(v0 + 152) = v2;
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  *(v0 + 128) = 11;
  v3 = swift_task_alloc();
  *(v0 + 2160) = v3;
  *v3 = v0;
  v3[1] = sub_101208040;
  v4 = *(v0 + 2128);
  v5 = *(v0 + 1896);

  return sub_101213204(v0 + 64, v4, v0 + 112, &type metadata for PoshAccessoryNonOwnerCommand, v1, v2, 0);
}

uint64_t sub_101208040()
{
  v2 = *v1;
  v3 = *(*v1 + 2160);
  v6 = *v1;
  *(*v1 + 2168) = v0;

  if (v0)
  {
    v4 = sub_101208CC8;
  }

  else
  {
    sub_100007BAC((v2 + 112));
    v4 = sub_1012084EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10120815C()
{
  v31 = v0;
  v1 = v0[263];

  v0[309] = v0[267];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v2 = v0[235];
  v3 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v3, qword_10169E3B0);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[257];
    v27 = v0[256];
    v7 = v0[249];
    v8 = v0[248];
    v9 = v0[247];
    v28 = v5;
    v10 = v0[235];
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136446722;
    *(v11 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v30);
    *(v11 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;

    (*(v8 + 8))(v7, v9);
    v15 = sub_1000136BC(v12, v14, &v30);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v29 = v16;
    _os_log_impl(&_mh_execute_header, v4, v28, "%{public}s %{public}s Error %{public}@", v11, 0x20u);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v17 = v0[235];
  }

  v18 = v0[238];
  v19 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v21 = swift_task_alloc();
  v0[311] = v21;
  *v21 = v0;
  v21[1] = sub_101212C84;
  v22 = v0[257];
  v23 = v0[256];
  v24 = v0[238];
  v25 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v24, v23, v22);
}

uint64_t sub_1012084EC()
{
  v65 = v0;
  sub_1001011C0(v0 + 64, v0 + 160);
  *(v0 + 2176) = sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v1 = *(v0 + 1840);
  *(v0 + 2184) = v1;
  v2 = *(v0 + 1848);
  *(v0 + 2192) = v2;
  if (*(v0 + 1856))
  {
    sub_10038B978(v1, v2, *(v0 + 1856));
LABEL_4:
    v3 = *(v0 + 2080);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Invalid productDataResponse!", v6, 2u);
    }

    v7 = *(v0 + 2128);
    v8 = *(v0 + 2104);

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error);
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007BAC((v0 + 64));
    *(v0 + 2472) = v9;
    if (qword_1016946A0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 1880);
    v11 = type metadata accessor for Logger();
    *(v0 + 2480) = sub_1000076D4(v11, qword_10169E3B0);

    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 2056);
      v59 = *(v0 + 2048);
      v15 = *(v0 + 1992);
      v16 = *(v0 + 1984);
      v17 = *(v0 + 1976);
      v61 = v13;
      v18 = *(v0 + 1880);
      v19 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v19 = 136446722;
      *(v19 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v64);
      *(v19 + 12) = 2082;
      dispatch thunk of PeripheralProtocol.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;

      (*(v16 + 8))(v15, v17);
      v23 = sub_1000136BC(v20, v22, v64);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2114;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v24;
      *v62 = v24;
      _os_log_impl(&_mh_execute_header, v12, v61, "%{public}s %{public}s Error %{public}@", v19, 0x20u);
      sub_10000B3A8(v62, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {
      v25 = *(v0 + 1880);
    }

    v26 = *(v0 + 1904);
    v27 = type metadata accessor for Peripheral.DisconnectionOptions();
    (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
    v28 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
    v29 = swift_task_alloc();
    *(v0 + 2488) = v29;
    *v29 = v0;
    v29[1] = sub_101212C84;
    v30 = *(v0 + 2056);
    v31 = *(v0 + 2048);
    v32 = *(v0 + 1904);
    v33 = *(v0 + 1880);

    return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v32, v31, v30);
  }

  v34 = *(v0 + 2080);
  v35 = *(v0 + 1880);
  sub_10038B9A0(v1, v2, 0);

  sub_10038B9A0(v1, v2, 0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  sub_10038B978(v1, v2, 0);
  if (os_log_type_enabled(v36, v37))
  {
    log = v36;
    v38 = *(v0 + 2048);
    v39 = *(v0 + 1992);
    v40 = *(v0 + 1984);
    v58 = *(v0 + 2056);
    v60 = *(v0 + 1976);
    v57 = *(v0 + 1880);
    v41 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v41 = 136446466;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;

    (*(v40 + 8))(v39, v60);
    v45 = sub_1000136BC(v42, v44, v64);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    sub_100017D5C(v1, v2);
    v46 = sub_100313D58(v1, v2);
    v48 = v47;
    sub_10038B978(v1, v2, 0);
    v49 = sub_1000136BC(v46, v48, v64);

    *(v41 + 14) = v49;
    _os_log_impl(&_mh_execute_header, log, v37, "%{public}s productData: %s", v41, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v50 = *(v0 + 1880);
  }

  *(v0 + 328) = &type metadata for PoshAccessoryNonOwnerCommand;
  *(v0 + 336) = *(v0 + 2144);
  *(v0 + 304) = xmmword_10139D920;
  *(v0 + 320) = 11;
  v51 = swift_task_alloc();
  *(v0 + 2200) = v51;
  *v51 = v0;
  v51[1] = sub_10120906C;
  v52 = *(v0 + 2152);
  v53 = *(v0 + 2144);
  v54 = *(v0 + 2128);
  v55 = *(v0 + 1896);

  return sub_101213204(v0 + 256, v54, v0 + 304, &type metadata for PoshAccessoryNonOwnerCommand, v53, v52, 0);
}

uint64_t sub_101208CC8()
{
  v32 = v0;
  v1 = v0[266];
  v2 = v0[263];

  sub_100007BAC(v0 + 14);
  v0[309] = v0[271];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v3 = v0[235];
  v4 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v4, qword_10169E3B0);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[257];
    v28 = v0[256];
    v8 = v0[249];
    v9 = v0[248];
    v10 = v0[247];
    v29 = v6;
    v11 = v0[235];
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v12 = 136446722;
    *(v12 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v31);
    *(v12 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;

    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v31);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v30 = v17;
    _os_log_impl(&_mh_execute_header, v5, v29, "%{public}s %{public}s Error %{public}@", v12, 0x20u);
    sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[235];
  }

  v19 = v0[238];
  v20 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v22 = swift_task_alloc();
  v0[311] = v22;
  *v22 = v0;
  v22[1] = sub_101212C84;
  v23 = v0[257];
  v24 = v0[256];
  v25 = v0[238];
  v26 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v25, v24, v23);
}

uint64_t sub_10120906C()
{
  v2 = *v1;
  v3 = *(*v1 + 2200);
  v6 = *v1;
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v4 = sub_101209A60;
  }

  else
  {
    sub_100007BAC((v2 + 304));
    v4 = sub_101209188;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101209188()
{
  v80 = v0;
  v1 = *(v0 + 2176);
  sub_1001011C0(v0 + 256, v0 + 352);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1816);
    *(v0 + 2216) = v2;
    v3 = *(v0 + 1824);
    *(v0 + 2224) = v3;
    v4 = *(v0 + 1832);
    if (v4 == 1)
    {
      v5 = *(v0 + 2080);
      v6 = *(v0 + 1880);
      sub_10038B9A0(v2, v3, 1);

      sub_10038B9A0(v2, v3, 1);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      sub_10038B978(v2, v3, 1);
      if (os_log_type_enabled(v7, v8))
      {
        v71 = *(v0 + 2056);
        log = v7;
        v9 = *(v0 + 2048);
        v10 = *(v0 + 1992);
        v11 = *(v0 + 1984);
        v12 = *(v0 + 1976);
        v13 = *(v0 + 1880);
        v14 = swift_slowAlloc();
        v79[0] = swift_slowAlloc();
        *v14 = 136446466;
        v75 = v8;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;

        (*(v11 + 8))(v10, v12);
        v18 = sub_1000136BC(v15, v17, v79);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;

        v19 = sub_1000136BC(v2, v3, v79);
        sub_10038B978(v2, v3, 1);
        *(v14 + 14) = v19;
        _os_log_impl(&_mh_execute_header, log, v75, "%{public}s manufacturerName: %s", v14, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v64 = *(v0 + 1880);
      }

      *(v0 + 520) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 528) = *(v0 + 2144);
      *(v0 + 496) = xmmword_10139D930;
      *(v0 + 512) = 11;
      v65 = swift_task_alloc();
      *(v0 + 2232) = v65;
      *v65 = v0;
      v65[1] = sub_101209E34;
      v66 = *(v0 + 2152);
      v67 = *(v0 + 2144);
      v68 = *(v0 + 2128);
      v69 = *(v0 + 1896);

      return sub_101213204(v0 + 448, v68, v0 + 496, &type metadata for PoshAccessoryNonOwnerCommand, v67, v66, 0);
    }

    sub_10038B978(v2, v3, v4);
  }

  v20 = *(v0 + 2080);
  v21 = *(v0 + 1880);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v76 = *(v0 + 2056);
    v24 = *(v0 + 2048);
    v25 = *(v0 + 1992);
    v26 = *(v0 + 1984);
    v27 = *(v0 + 1976);
    v28 = *(v0 + 1880);
    v29 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79[0] = v78;
    *v29 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;

    (*(v26 + 8))(v25, v27);
    v33 = sub_1000136BC(v30, v32, v79);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Invalid manufacturerNameCommandResponse!", v29, 0xCu);
    sub_100007BAC(v78);
  }

  else
  {
    v34 = *(v0 + 1880);
  }

  v35 = *(v0 + 2192);
  v36 = *(v0 + 2184);
  v37 = *(v0 + 2128);
  v38 = *(v0 + 2104);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error);
  v39 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v36, v35, 0);
  sub_10038B978(v36, v35, 0);
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v39;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 1880);
  v41 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v41, qword_10169E3B0);

  swift_errorRetain();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 2056);
    v72 = *(v0 + 2048);
    v45 = *(v0 + 1992);
    v46 = *(v0 + 1984);
    v47 = *(v0 + 1976);
    loga = v43;
    v48 = *(v0 + 1880);
    v49 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v79[0] = swift_slowAlloc();
    *v49 = 136446722;
    *(v49 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v79);
    *(v49 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;

    (*(v46 + 8))(v45, v47);
    v53 = sub_1000136BC(v50, v52, v79);

    *(v49 + 14) = v53;
    *(v49 + 22) = 2114;
    swift_errorRetain();
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 24) = v54;
    *v77 = v54;
    _os_log_impl(&_mh_execute_header, v42, loga, "%{public}s %{public}s Error %{public}@", v49, 0x20u);
    sub_10000B3A8(v77, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v55 = *(v0 + 1880);
  }

  v56 = *(v0 + 1904);
  v57 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
  v58 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v59 = swift_task_alloc();
  *(v0 + 2488) = v59;
  *v59 = v0;
  v59[1] = sub_101212C84;
  v60 = *(v0 + 2056);
  v61 = *(v0 + 2048);
  v62 = *(v0 + 1904);
  v63 = *(v0 + 1880);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v62, v61, v60);
}

uint64_t sub_101209A60()
{
  v34 = v0;
  v1 = v0[274];
  v2 = v0[273];
  v3 = v0[266];
  v4 = v0[263];

  sub_10038B978(v2, v1, 0);
  sub_10038B978(v2, v1, 0);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 38);
  v0[309] = v0[276];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v5 = v0[235];
  v6 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v6, qword_10169E3B0);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[257];
    v30 = v0[256];
    v10 = v0[249];
    v11 = v0[248];
    v12 = v0[247];
    v31 = v8;
    v13 = v0[235];
    v14 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v14 = 136446722;
    *(v14 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v33);
    *(v14 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;

    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v33);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v32 = v19;
    _os_log_impl(&_mh_execute_header, v7, v31, "%{public}s %{public}s Error %{public}@", v14, 0x20u);
    sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v20 = v0[235];
  }

  v21 = v0[238];
  v22 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v24 = swift_task_alloc();
  v0[311] = v24;
  *v24 = v0;
  v24[1] = sub_101212C84;
  v25 = v0[257];
  v26 = v0[256];
  v27 = v0[238];
  v28 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v27, v26, v25);
}

uint64_t sub_101209E34()
{
  v2 = *v1;
  v3 = *(*v1 + 2232);
  v6 = *v1;
  *(*v1 + 2240) = v0;

  if (v0)
  {
    sub_10038B978(*(v2 + 2216), *(v2 + 2224), 1);
    v4 = sub_10120A880;
  }

  else
  {
    sub_100007BAC((v2 + 496));
    v4 = sub_101209F60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101209F60()
{
  v85 = v0;
  v1 = *(v0 + 2176);
  sub_1001011C0(v0 + 448, v0 + 544);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1792);
    *(v0 + 2248) = v2;
    v3 = *(v0 + 1800);
    *(v0 + 2256) = v3;
    v4 = *(v0 + 1808);
    if (v4 == 2)
    {
      v5 = *(v0 + 2080);
      v6 = *(v0 + 1880);
      sub_10038B9A0(v2, v3, 2);

      sub_10038B9A0(v2, v3, 2);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      sub_10038B978(v2, v3, 2);
      if (os_log_type_enabled(v7, v8))
      {
        v76 = *(v0 + 2056);
        log = v7;
        v9 = *(v0 + 2048);
        v10 = *(v0 + 1992);
        v11 = *(v0 + 1984);
        v12 = *(v0 + 1976);
        v13 = *(v0 + 1880);
        v14 = swift_slowAlloc();
        v84[0] = swift_slowAlloc();
        *v14 = 136446466;
        v80 = v8;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;

        (*(v11 + 8))(v10, v12);
        v18 = sub_1000136BC(v15, v17, v84);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;

        v19 = sub_1000136BC(v2, v3, v84);
        sub_10038B978(v2, v3, 2);
        *(v14 + 14) = v19;
        _os_log_impl(&_mh_execute_header, log, v80, "%{public}s modelName: %s", v14, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v69 = *(v0 + 1880);
      }

      *(v0 + 712) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 720) = *(v0 + 2144);
      *(v0 + 688) = xmmword_10139D940;
      *(v0 + 704) = 11;
      v70 = swift_task_alloc();
      *(v0 + 2264) = v70;
      *v70 = v0;
      v70[1] = sub_10120AC74;
      v71 = *(v0 + 2152);
      v72 = *(v0 + 2144);
      v73 = *(v0 + 2128);
      v74 = *(v0 + 1896);

      return sub_101213204(v0 + 640, v73, v0 + 688, &type metadata for PoshAccessoryNonOwnerCommand, v72, v71, 0);
    }

    sub_10038B978(*(v0 + 2216), *(v0 + 2224), 1);
    v21 = v2;
    v20 = v3;
    v22 = v4;
  }

  else
  {
    v20 = *(v0 + 2224);
    v21 = *(v0 + 2216);
    v22 = 1;
  }

  sub_10038B978(v21, v20, v22);
  v23 = *(v0 + 2080);
  v24 = *(v0 + 1880);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v81 = *(v0 + 2056);
    v27 = *(v0 + 2048);
    v28 = *(v0 + 1992);
    v29 = *(v0 + 1984);
    v30 = *(v0 + 1976);
    v31 = *(v0 + 1880);
    v32 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v84[0] = v83;
    *v32 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;

    (*(v29 + 8))(v28, v30);
    v36 = sub_1000136BC(v33, v35, v84);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s Invalid modelNameCommandResponse!", v32, 0xCu);
    sub_100007BAC(v83);
  }

  else
  {
    v37 = *(v0 + 1880);
  }

  v38 = *(v0 + 2224);
  v39 = *(v0 + 2216);
  v40 = *(v0 + 2192);
  v41 = *(v0 + 2184);
  v42 = *(v0 + 2128);
  v43 = *(v0 + 2104);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error);
  v44 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v39, v38, 1);
  sub_10038B978(v41, v40, 0);
  sub_10038B978(v41, v40, 0);
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v44;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 1880);
  v46 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v46, qword_10169E3B0);

  swift_errorRetain();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 2056);
    v77 = *(v0 + 2048);
    v50 = *(v0 + 1992);
    v51 = *(v0 + 1984);
    v52 = *(v0 + 1976);
    loga = v48;
    v53 = *(v0 + 1880);
    v54 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v54 = 136446722;
    *(v54 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v84);
    *(v54 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;

    (*(v51 + 8))(v50, v52);
    v58 = sub_1000136BC(v55, v57, v84);

    *(v54 + 14) = v58;
    *(v54 + 22) = 2114;
    swift_errorRetain();
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 24) = v59;
    *v82 = v59;
    _os_log_impl(&_mh_execute_header, v47, loga, "%{public}s %{public}s Error %{public}@", v54, 0x20u);
    sub_10000B3A8(v82, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v60 = *(v0 + 1880);
  }

  v61 = *(v0 + 1904);
  v62 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
  v63 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v64 = swift_task_alloc();
  *(v0 + 2488) = v64;
  *v64 = v0;
  v64[1] = sub_101212C84;
  v65 = *(v0 + 2056);
  v66 = *(v0 + 2048);
  v67 = *(v0 + 1904);
  v68 = *(v0 + 1880);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v67, v66, v65);
}

uint64_t sub_10120A880()
{
  v36 = v0;
  v1 = v0[278];
  v2 = v0[277];
  v3 = v0[274];
  v4 = v0[273];
  v5 = v0[266];
  v6 = v0[263];

  sub_10038B978(v2, v1, 1);
  sub_10038B978(v4, v3, 0);
  sub_10038B978(v4, v3, 0);
  sub_100007BAC(v0 + 32);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 62);
  v0[309] = v0[280];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v7 = v0[235];
  v8 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v8, qword_10169E3B0);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[257];
    v32 = v0[256];
    v12 = v0[249];
    v13 = v0[248];
    v14 = v0[247];
    v33 = v10;
    v15 = v0[235];
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v16 = 136446722;
    *(v16 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v35);
    *(v16 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;

    (*(v13 + 8))(v12, v14);
    v20 = sub_1000136BC(v17, v19, &v35);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v21;
    *v34 = v21;
    _os_log_impl(&_mh_execute_header, v9, v33, "%{public}s %{public}s Error %{public}@", v16, 0x20u);
    sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[235];
  }

  v23 = v0[238];
  v24 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v26 = swift_task_alloc();
  v0[311] = v26;
  *v26 = v0;
  v26[1] = sub_101212C84;
  v27 = v0[257];
  v28 = v0[256];
  v29 = v0[238];
  v30 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v29, v28, v27);
}

uint64_t sub_10120AC74()
{
  v2 = *v1;
  v3 = *(*v1 + 2264);
  v8 = *v1;
  *(*v1 + 2272) = v0;

  if (v0)
  {
    v4 = v2[282];
    v5 = v2[281];
    sub_10038B978(v2[277], v2[278], 1);
    sub_10038B978(v5, v4, 2);
    v6 = sub_10120B6B4;
  }

  else
  {
    sub_100007BAC(v2 + 86);
    v6 = sub_10120ADC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10120ADC0()
{
  v91 = v0;
  v1 = *(v0 + 2176);
  sub_1001011C0(v0 + 640, v0 + 736);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1744);
    *(v0 + 2280) = v2;
    v3 = *(v0 + 1760);
    if (v3 == 3)
    {
      v4 = *(v0 + 2080);
      v5 = *(v0 + 1880);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v80 = *(v0 + 2048);
        v82 = *(v0 + 2056);
        v8 = *(v0 + 1992);
        v9 = *(v0 + 1984);
        v10 = *(v0 + 1976);
        v79 = *(v0 + 1880);
        v11 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v90[0] = v87;
        *v11 = 136446466;
        v84 = v7;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v12 = v10;
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;

        (*(v9 + 8))(v8, v12);
        v16 = sub_1000136BC(v13, v15, v90);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v2;
        _os_log_impl(&_mh_execute_header, v6, v84, "%{public}s category: %llu", v11, 0x16u);
        sub_100007BAC(v87);
      }

      else
      {
        v72 = *(v0 + 1880);
      }

      *(v0 + 904) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 912) = *(v0 + 2144);
      *(v0 + 880) = xmmword_10139D950;
      *(v0 + 896) = 11;
      v73 = swift_task_alloc();
      *(v0 + 2288) = v73;
      *v73 = v0;
      v73[1] = sub_10120BAC8;
      v74 = *(v0 + 2152);
      v75 = *(v0 + 2144);
      v76 = *(v0 + 2128);
      v77 = *(v0 + 1896);

      return sub_101213204(v0 + 832, v76, v0 + 880, &type metadata for PoshAccessoryNonOwnerCommand, v75, v74, 0);
    }

    v22 = *(v0 + 1752);
    v23 = *(v0 + 2224);
    v24 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    sub_10038B978(v24, v23, 1);
    v19 = v2;
    v20 = v22;
    v21 = v3;
  }

  else
  {
    v17 = *(v0 + 2224);
    v18 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    v19 = v18;
    v20 = v17;
    v21 = 1;
  }

  sub_10038B978(v19, v20, v21);
  v25 = *(v0 + 2080);
  v26 = *(v0 + 1880);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v85 = *(v0 + 2056);
    v29 = *(v0 + 2048);
    v30 = *(v0 + 1992);
    v31 = *(v0 + 1984);
    v32 = *(v0 + 1976);
    v33 = *(v0 + 1880);
    v34 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v90[0] = v88;
    *v34 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;

    (*(v31 + 8))(v30, v32);
    v38 = sub_1000136BC(v35, v37, v90);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s Invalid categoryCommandResponse!", v34, 0xCu);
    sub_100007BAC(v88);
  }

  else
  {
    v39 = *(v0 + 1880);
  }

  v40 = *(v0 + 2256);
  v41 = *(v0 + 2248);
  v89 = *(v0 + 2224);
  v42 = *(v0 + 2216);
  v43 = *(v0 + 2192);
  v44 = *(v0 + 2184);
  v45 = *(v0 + 2128);
  v46 = *(v0 + 2104);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error);
  v47 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v41, v40, 2);
  sub_10038B978(v42, v89, 1);
  sub_10038B978(v44, v43, 0);
  sub_10038B978(v44, v43, 0);
  sub_100007BAC((v0 + 640));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v47;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 1880);
  v49 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v49, qword_10169E3B0);

  swift_errorRetain();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 2056);
    v81 = *(v0 + 2048);
    v53 = *(v0 + 1992);
    v54 = *(v0 + 1984);
    v55 = *(v0 + 1976);
    v83 = v51;
    v56 = *(v0 + 1880);
    v57 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v57 = 136446722;
    *(v57 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v90);
    *(v57 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;

    (*(v54 + 8))(v53, v55);
    v61 = sub_1000136BC(v58, v60, v90);

    *(v57 + 14) = v61;
    *(v57 + 22) = 2114;
    swift_errorRetain();
    v62 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 24) = v62;
    *v86 = v62;
    _os_log_impl(&_mh_execute_header, v50, v83, "%{public}s %{public}s Error %{public}@", v57, 0x20u);
    sub_10000B3A8(v86, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v63 = *(v0 + 1880);
  }

  v64 = *(v0 + 1904);
  v65 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v65 - 8) + 56))(v64, 1, 1, v65);
  v66 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v67 = swift_task_alloc();
  *(v0 + 2488) = v67;
  *v67 = v0;
  v67[1] = sub_101212C84;
  v68 = *(v0 + 2056);
  v69 = *(v0 + 2048);
  v70 = *(v0 + 1904);
  v71 = *(v0 + 1880);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v70, v69, v68);
}

uint64_t sub_10120B6B4()
{
  v38 = v0;
  v1 = v0[282];
  v2 = v0[281];
  v3 = v0[278];
  v4 = v0[277];
  v5 = v0[274];
  v6 = v0[273];
  v7 = v0[266];
  v8 = v0[263];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 32);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 86);
  v0[309] = v0[284];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v9 = v0[235];
  v10 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v10, qword_10169E3B0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[257];
    v34 = v0[256];
    v14 = v0[249];
    v15 = v0[248];
    v16 = v0[247];
    v35 = v12;
    v17 = v0[235];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v18 = 136446722;
    *(v18 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v37);
    *(v18 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    (*(v15 + 8))(v14, v16);
    v22 = sub_1000136BC(v19, v21, &v37);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v23;
    *v36 = v23;
    _os_log_impl(&_mh_execute_header, v11, v35, "%{public}s %{public}s Error %{public}@", v18, 0x20u);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[235];
  }

  v25 = v0[238];
  v26 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v28 = swift_task_alloc();
  v0[311] = v28;
  *v28 = v0;
  v28[1] = sub_101212C84;
  v29 = v0[257];
  v30 = v0[256];
  v31 = v0[238];
  v32 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v31, v30, v29);
}

uint64_t sub_10120BAC8()
{
  v2 = *v1;
  v3 = *(*v1 + 2288);
  v8 = *v1;
  *(*v1 + 2296) = v0;

  if (v0)
  {
    v4 = v2[282];
    v5 = v2[281];
    sub_10038B978(v2[277], v2[278], 1);
    sub_10038B978(v5, v4, 2);
    v6 = sub_10120C548;
  }

  else
  {
    sub_100007BAC(v2 + 110);
    v6 = sub_10120BC14;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10120BC14()
{
  v92 = v0;
  v1 = *(v0 + 2176);
  sub_1001011C0(v0 + 832, v0 + 928);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1720);
    *(v0 + 2304) = v2;
    v3 = *(v0 + 1736);
    if (v3 == 4)
    {
      v4 = *(v0 + 2080);
      v5 = *(v0 + 1880);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v84 = *(v0 + 2056);
        v8 = *(v0 + 2048);
        v9 = *(v0 + 1992);
        v10 = *(v0 + 1984);
        v11 = *(v0 + 1976);
        v12 = *(v0 + 1880);
        v13 = swift_slowAlloc();
        v91[0] = swift_slowAlloc();
        *v13 = 136446466;
        v86 = v7;
        dispatch thunk of PeripheralProtocol.id.getter();
        sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = v15;

        (*(v10 + 8))(v9, v11);
        v17 = sub_1000136BC(v14, v16, v91);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v18 = sub_10098E010();
        v20 = sub_1000136BC(v18, v19, v91);

        *(v13 + 14) = v20;
        _os_log_impl(&_mh_execute_header, v6, v86, "%{public}s protocolVersion: %s", v13, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v76 = *(v0 + 1880);
      }

      *(v0 + 1096) = &type metadata for PoshAccessoryNonOwnerCommand;
      *(v0 + 1104) = *(v0 + 2144);
      *(v0 + 1072) = xmmword_10139D960;
      *(v0 + 1088) = 11;
      v77 = swift_task_alloc();
      *(v0 + 2312) = v77;
      *v77 = v0;
      v77[1] = sub_10120C964;
      v78 = *(v0 + 2152);
      v79 = *(v0 + 2144);
      v80 = *(v0 + 2128);
      v81 = *(v0 + 1896);

      return sub_101213204(v0 + 1024, v80, v0 + 1072, &type metadata for PoshAccessoryNonOwnerCommand, v79, v78, 0);
    }

    v26 = *(v0 + 1728);
    v27 = *(v0 + 2224);
    v28 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    sub_10038B978(v28, v27, 1);
    v23 = v2;
    v24 = v26;
    v25 = v3;
  }

  else
  {
    v21 = *(v0 + 2224);
    v22 = *(v0 + 2216);
    sub_10038B978(*(v0 + 2248), *(v0 + 2256), 2);
    v23 = v22;
    v24 = v21;
    v25 = 1;
  }

  sub_10038B978(v23, v24, v25);
  v29 = *(v0 + 2080);
  v30 = *(v0 + 1880);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v87 = *(v0 + 2056);
    v33 = *(v0 + 2048);
    v34 = *(v0 + 1992);
    v35 = *(v0 + 1984);
    v36 = *(v0 + 1976);
    v37 = *(v0 + 1880);
    v38 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v91[0] = v89;
    *v38 = 136446210;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;

    (*(v35 + 8))(v34, v36);
    v42 = sub_1000136BC(v39, v41, v91);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s Invalid protocolVersionCommandResponse!", v38, 0xCu);
    sub_100007BAC(v89);
  }

  else
  {
    v43 = *(v0 + 1880);
  }

  v44 = *(v0 + 2256);
  v45 = *(v0 + 2248);
  v90 = *(v0 + 2224);
  v46 = *(v0 + 2216);
  v47 = *(v0 + 2192);
  v48 = *(v0 + 2184);
  v49 = *(v0 + 2128);
  v50 = *(v0 + 2104);
  type metadata accessor for AccessoryMetadataManager.Error(0);
  sub_1012166EC(&qword_10169E730, 255, type metadata accessor for AccessoryMetadataManager.Error);
  v51 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_10038B978(v45, v44, 2);
  sub_10038B978(v46, v90, 1);
  sub_10038B978(v48, v47, 0);
  sub_10038B978(v48, v47, 0);
  sub_100007BAC((v0 + 832));
  sub_100007BAC((v0 + 640));
  sub_100007BAC((v0 + 448));
  sub_100007BAC((v0 + 256));
  sub_100007BAC((v0 + 64));
  *(v0 + 2472) = v51;
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 1880);
  v53 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v53, qword_10169E3B0);

  swift_errorRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 2056);
    v83 = *(v0 + 2048);
    v57 = *(v0 + 1992);
    v58 = *(v0 + 1984);
    v59 = *(v0 + 1976);
    v85 = v55;
    v60 = *(v0 + 1880);
    v61 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v61 = 136446722;
    *(v61 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, v91);
    *(v61 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;

    (*(v58 + 8))(v57, v59);
    v65 = sub_1000136BC(v62, v64, v91);

    *(v61 + 14) = v65;
    *(v61 + 22) = 2114;
    swift_errorRetain();
    v66 = _swift_stdlib_bridgeErrorToNSError();
    *(v61 + 24) = v66;
    *v88 = v66;
    _os_log_impl(&_mh_execute_header, v54, v85, "%{public}s %{public}s Error %{public}@", v61, 0x20u);
    sub_10000B3A8(v88, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v67 = *(v0 + 1880);
  }

  v68 = *(v0 + 1904);
  v69 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
  v70 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v71 = swift_task_alloc();
  *(v0 + 2488) = v71;
  *v71 = v0;
  v71[1] = sub_101212C84;
  v72 = *(v0 + 2056);
  v73 = *(v0 + 2048);
  v74 = *(v0 + 1904);
  v75 = *(v0 + 1880);

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v74, v73, v72);
}

uint64_t sub_10120C548()
{
  v38 = v0;
  v1 = v0[282];
  v2 = v0[281];
  v3 = v0[278];
  v4 = v0[277];
  v5 = v0[274];
  v6 = v0[273];
  v7 = v0[266];
  v8 = v0[263];

  sub_10038B978(v2, v1, 2);
  sub_10038B978(v4, v3, 1);
  sub_10038B978(v6, v5, 0);
  sub_10038B978(v6, v5, 0);
  sub_100007BAC(v0 + 80);
  sub_100007BAC(v0 + 56);
  sub_100007BAC(v0 + 32);
  sub_100007BAC(v0 + 8);
  sub_100007BAC(v0 + 110);
  v0[309] = v0[287];
  if (qword_1016946A0 != -1)
  {
    swift_once();
  }

  v9 = v0[235];
  v10 = type metadata accessor for Logger();
  v0[310] = sub_1000076D4(v10, qword_10169E3B0);

  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[257];
    v34 = v0[256];
    v14 = v0[249];
    v15 = v0[248];
    v16 = v0[247];
    v35 = v12;
    v17 = v0[235];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v18 = 136446722;
    *(v18 + 4) = sub_1000136BC(0xD00000000000002FLL, 0x800000010137E120, &v37);
    *(v18 + 12) = 2082;
    dispatch thunk of PeripheralProtocol.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    (*(v15 + 8))(v14, v16);
    v22 = sub_1000136BC(v19, v21, &v37);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v23;
    *v36 = v23;
    _os_log_impl(&_mh_execute_header, v11, v35, "%{public}s %{public}s Error %{public}@", v18, 0x20u);
    sub_10000B3A8(v36, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[235];
  }

  v25 = v0[238];
  v26 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection(options:)[1];
  v28 = swift_task_alloc();
  v0[311] = v28;
  *v28 = v0;
  v28[1] = sub_101212C84;
  v29 = v0[257];
  v30 = v0[256];
  v31 = v0[238];
  v32 = v0[235];

  return dispatch thunk of PeripheralProtocol.cancelConnection(options:)(v31, v30, v29);
}