uint64_t sub_1004C69A4()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v6 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = sub_1004C6E48;
  }

  else
  {
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v4 = sub_1004C6AD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004C6AD0()
{
  v45 = v0;
  v1 = *(v0 + 360);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v6 = *(v0 + 80);
  v3(*(v0 + 184), *(v0 + 88), v5);
  v3(v4, v6, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  if (v9)
  {
    v41 = v8;
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v14 = 136446979;
    *(v14 + 4) = sub_1000136BC(0xD00000000000003DLL, 0x8000000101357480, &v44);
    *(v14 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_1000136BC(v15, v17, &v44);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v18(v11, v13);
    v23 = sub_1000136BC(v20, v22, &v44);

    *(v14 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v7, v41, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s completed successfully!", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v12 + 8);
    v24(v11, v13);
    v24(v10, v13);
  }

  v25 = *(v0 + 304);
  v26 = *(v0 + 72);
  (*(v0 + 64))(0);

  v27 = *(v0 + 272);
  v28 = *(v0 + 128);

  sub_1004E4A04(v28, type metadata accessor for AccessoryCommand);
  v29 = *(v0 + 224);
  v30 = *(v0 + 200);
  v31 = *(v0 + 208);
  v33 = *(v0 + 184);
  v32 = *(v0 + 192);
  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 160);
  v38 = *(v0 + 120);
  v37 = *(v0 + 128);
  v42 = *(v0 + 104);
  v43 = *(v0 + 96);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1004C6E48()
{
  v54 = v0;
  v1 = v0[47];
  v2 = v0[45];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[10];
  v4(v0[21], v0[11], v6);
  v4(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v49 = v0[47];
    v51 = v9;
    v10 = v0[21];
    v47 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    v13 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v13 = 136447235;
    *(v13 + 4) = sub_1000136BC(0xD00000000000003DLL, 0x8000000101357480, &v53);
    *(v13 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000136BC(v14, v16, &v53);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2081;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v17(v47, v12);
    v22 = sub_1000136BC(v19, v21, &v53);

    *(v13 + 34) = v22;
    *(v13 + 42) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 44) = v23;
    *v48 = v23;
    _os_log_impl(&_mh_execute_header, v8, v51, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s failed with error: %{public}@!", v13, 0x34u);
    sub_10000B3A8(v48, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[17];
    v27 = v0[18];

    v28 = *(v27 + 8);
    v28(v25, v26);
    v28(v24, v26);
  }

  v29 = v0[47];
  v30 = v0[34];
  v32 = v0[8];
  v31 = v0[9];
  swift_errorRetain();
  v32(v29);

  v33 = v0[38];
  v34 = v0[16];

  sub_1004E4A04(v34, type metadata accessor for AccessoryCommand);
  v35 = v0[28];
  v36 = v0[25];
  v37 = v0[26];
  v39 = v0[23];
  v38 = v0[24];
  v41 = v0[21];
  v40 = v0[22];
  v42 = v0[20];
  v44 = v0[15];
  v43 = v0[16];
  v50 = v0[13];
  v52 = v0[12];

  v45 = v0[1];

  return v45();
}

uint64_t sub_1004C7264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v30;
  v8[39] = v31;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[33] = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v8[40] = v9;
  v10 = *(v9 - 8);
  v8[41] = v10;
  v11 = *(v10 + 64) + 15;
  v8[42] = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS();
  v8[43] = v12;
  v13 = *(v12 - 8);
  v8[44] = v13;
  v14 = *(v13 + 64) + 15;
  v8[45] = swift_task_alloc();
  v15 = type metadata accessor for KeyGenerationBeaconInfo();
  v8[46] = v15;
  v16 = *(v15 - 8);
  v8[47] = v16;
  v17 = *(v16 + 64) + 15;
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v18 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8[50] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v8[51] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0) - 8) + 64) + 15;
  v8[52] = swift_task_alloc();
  v21 = type metadata accessor for WildModeAssociationRecord(0);
  v8[53] = v21;
  v22 = *(v21 - 8);
  v8[54] = v22;
  v23 = *(v22 + 64) + 15;
  v8[55] = swift_task_alloc();
  v24 = type metadata accessor for UUID();
  v8[56] = v24;
  v25 = *(v24 - 8);
  v8[57] = v25;
  v8[58] = *(v25 + 64);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v26 = async function pointer to daemon.getter[1];
  v27 = swift_task_alloc();
  v8[64] = v27;
  *v27 = v8;
  v27[1] = sub_1004C7590;

  return daemon.getter();
}

uint64_t sub_1004C7590(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v12 = *v1;
  v3[65] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[66] = v6;
  v7 = type metadata accessor for Daemon();
  v3[67] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[68] = v9;
  v10 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1004C7770;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004C7770(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  v4[69] = a1;
  v4[70] = v1;

  if (v1)
  {
    v7 = sub_1004C987C;
    v8 = 0;
  }

  else
  {
    v9 = v4[65];

    v7 = sub_1004C78AC;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1004C78AC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 504);
  v3 = *(v0 + 456);
  v4 = *(v0 + 448);
  v5 = *(v0 + 264);
  v6 = *(v3 + 16);
  *(v0 + 568) = v6;
  *(v0 + 576) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 712) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 584) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 592) = v10;
  *(v0 + 600) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 608) = v12;
  v13 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v12 = v0;
  v12[1] = sub_1004C7A50;

  return unsafeBlocking<A>(context:_:)(v0 + 200, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v9, v13);
}

uint64_t sub_1004C7A50()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 584);
  v4 = *v0;

  return _swift_task_switch(sub_1004C7B68, 0, 0);
}

uint64_t sub_1004C7B68()
{
  if (v0[28])
  {
    sub_10000A748((v0 + 25), (v0 + 20));
    v1 = v0[23];
    v2 = v0[24];
    sub_1000035D0(v0 + 20, v1);
    if ((*(v2 + 152))(v1, v2))
    {
      v38 = v0[75];
      v37 = v0[74];
      v3 = *(v0 + 712);
      v4 = v0[72];
      v5 = v0[71];
      v43 = v0[69];
      v6 = v0[63];
      v7 = v0[61];
      v8 = v0[58];
      v9 = v0[56];
      v39 = v0[45];
      v44 = v0[44];
      v46 = v0[43];
      v40 = v0[42];
      v41 = v0[40];
      v10 = v0[39];
      v42 = v0[41];
      v35 = v0[37];
      v36 = v0[38];
      v33 = v0[35];
      v11 = v0[33];
      v34 = v0[34];
      v5(v6, v0[36], v9);
      v5(v7, v11, v9);
      v12 = (((v3 + 24) | v3) + v8) & ~v3;
      v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v14 = swift_allocObject();
      *(v14 + 16) = v33;
      v37(v14 + ((v3 + 24) & ~v3), v6, v9);
      v37(v14 + v12, v7, v9);
      *(v14 + v13) = v34;
      v15 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v15 = v35;
      v15[1] = v36;
      v0[18] = sub_1004E4EB4;
      v0[19] = v14;
      v0[14] = _NSConcreteStackBlock;
      v0[15] = 1107296256;
      v0[16] = sub_100006684;
      v0[17] = &unk_1016232F8;
      v16 = _Block_copy(v0 + 14);

      static DispatchQoS.unspecified.getter();
      v0[32] = _swiftEmptyArrayStorage;
      sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v42 + 8))(v40, v41);
      (*(v44 + 8))(v39, v46);
      v17 = v0[19];

      sub_100007BAC(v0 + 20);
      v19 = v0[62];
      v18 = v0[63];
      v21 = v0[60];
      v20 = v0[61];
      v22 = v0[59];
      v23 = v0[55];
      v25 = v0[51];
      v24 = v0[52];
      v27 = v0[48];
      v26 = v0[49];
      v45 = v0[45];
      v47 = v0[42];

      v28 = v0[1];

      return v28();
    }

    else
    {
      v31 = async function pointer to daemon.getter[1];
      v32 = swift_task_alloc();
      v0[81] = v32;
      *v32 = v0;
      v32[1] = sub_1004C921C;

      return daemon.getter();
    }
  }

  else
  {
    v30 = v0[69];
    sub_10000B3A8((v0 + 25), &qword_101696920, &unk_10138B200);

    return _swift_task_switch(sub_1004C8014, v30, 0);
  }
}

uint64_t sub_1004C8014()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 552);
  v5 = *(v0 + 504);
  v6 = *(v0 + 464);
  v7 = *(v0 + 448);
  v8 = (*(v0 + 712) + 24) & ~*(v0 + 712);
  (*(v0 + 568))(v5, *(v0 + 264), v7);
  v9 = swift_allocObject();
  *(v0 + 616) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  *v11 = v0;
  v11[1] = sub_1004C816C;
  v12 = *(v0 + 416);
  v13 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1004E36F8, v9, v13);
}

uint64_t sub_1004C816C()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;

  v5 = *(v2 + 616);
  if (v0)
  {

    v6 = sub_1004C88FC;
  }

  else
  {

    v6 = sub_1004C82B4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004C82B4()
{
  v67 = v0;
  v1 = v0[55];
  v2 = v0[52];
  (*(v0[54] + 56))(v2, 0, 1, v0[53]);
  sub_10002AAA4(v2, v1, type metadata accessor for WildModeAssociationRecord);
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[62];
  v6 = v0[56];
  v7 = v0[33];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C430);
  v4(v5, v7, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[62];
  v13 = v0[56];
  v14 = v0[57];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v15 = 136315651;
    *(v15 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101356F80, &v66);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v14 + 8))(v12, v13);
    v19 = sub_1000136BC(v16, v18, &v66);

    *(v15 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Found UT record for %{private,mask.hash}s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v12, v13);
  }

  v20 = v0[55];
  if (*(v20 + *(v0[53] + 52)) == 3)
  {
    v55 = v0[75];
    v54 = v0[74];
    v21 = *(v0 + 712);
    v22 = v0[72];
    v23 = v0[71];
    v60 = v0[69];
    v24 = v0[63];
    v25 = v0[61];
    v26 = v0[58];
    v27 = v0[56];
    v56 = v0[45];
    v62 = v0[44];
    v64 = v0[43];
    v57 = v0[42];
    v58 = v0[40];
    v28 = v0[39];
    v59 = v0[41];
    v52 = v0[37];
    v53 = v0[38];
    v50 = v0[35];
    v61 = v0[55];
    v29 = v0[33];
    v51 = v0[34];
    v23(v24, v0[36], v27);
    v23(v25, v29, v27);
    v30 = (((v21 + 24) | v21) + v26) & ~v21;
    v31 = (v26 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v50;
    v54(v32 + ((v21 + 24) & ~v21), v24, v27);
    v54(v32 + v30, v25, v27);
    *(v32 + v31) = v51;
    v33 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v52;
    v33[1] = v53;
    v0[12] = sub_1004E3728;
    v0[13] = v32;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100006684;
    v0[11] = &unk_1016232A8;
    v34 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[31] = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v59 + 8))(v57, v58);
    (*(v62 + 8))(v56, v64);
    sub_1004E4A04(v61, type metadata accessor for WildModeAssociationRecord);
    v35 = v0[13];
  }

  else
  {
    v36 = v0[69];
    v37 = v0[35];
    sub_1004CA2D0(v0[36], v0[33], v0[34], v0[37], v0[38]);

    sub_1004E4A04(v20, type metadata accessor for WildModeAssociationRecord);
  }

  v39 = v0[62];
  v38 = v0[63];
  v41 = v0[60];
  v40 = v0[61];
  v42 = v0[59];
  v43 = v0[55];
  v45 = v0[51];
  v44 = v0[52];
  v47 = v0[48];
  v46 = v0[49];
  v63 = v0[45];
  v65 = v0[42];

  v48 = v0[1];

  return v48();
}

uint64_t sub_1004C88FC()
{
  v1 = v0[69];
  v2 = v0[52];
  (*(v0[54] + 56))(v2, 1, 1, v0[53]);
  sub_10000B3A8(v2, &unk_1016C7C90, &qword_1013BB4B0);

  return _swift_task_switch(sub_1004C899C, v1, 0);
}

uint64_t sub_1004C899C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 576);
  v4 = *(v0 + 552);
  v5 = *(v0 + 504);
  v6 = *(v0 + 464);
  v7 = *(v0 + 448);
  v8 = (*(v0 + 712) + 24) & ~*(v0 + 712);
  (*(v0 + 568))(v5, *(v0 + 264), v7);
  v9 = swift_allocObject();
  *(v0 + 632) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 640) = v11;
  *v11 = v0;
  v11[1] = sub_1004C8AF4;
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1004E3710, v9, v13);
}

uint64_t sub_1004C8AF4()
{
  v1 = *(*v0 + 640);
  v2 = *(*v0 + 632);
  v4 = *v0;

  return _swift_task_switch(sub_1004C8C0C, 0, 0);
}

uint64_t sub_1004C8C0C()
{
  v64 = v0;
  v1 = v0[51];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[69];

    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
  }

  else
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_1016950D8 != -1)
    {
      swift_once();
    }

    v4 = v0[72];
    v5 = v0[71];
    v6 = v0[60];
    v7 = v0[56];
    v8 = v0[33];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C430);
    v5(v6, v8, v7);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[60];
    v15 = v0[56];
    v14 = v0[57];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v16 = 136315651;
      *(v16 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101356F80, &v63);
      *(v16 + 12) = 2160;
      *(v16 + 14) = 1752392040;
      *(v16 + 22) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v14 + 8))(v13, v15);
      v20 = sub_1000136BC(v17, v19, &v63);

      *(v16 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Checking if we have a beacon group for %{private,mask.hash}s", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v52 = v0[74];
    v53 = v0[75];
    v21 = *(v0 + 712);
    v22 = v0[72];
    v23 = v0[71];
    v24 = v0[63];
    v25 = v0[61];
    v26 = v0[58];
    v27 = v0[56];
    v54 = v0[45];
    v58 = v0[69];
    v59 = v0[44];
    v60 = v0[43];
    v55 = v0[42];
    v56 = v0[40];
    v28 = v0[39];
    v57 = v0[41];
    v50 = v0[37];
    v51 = v0[38];
    v48 = v0[35];
    v29 = v0[33];
    v49 = v0[34];
    v23(v24, v0[36], v27);
    v23(v25, v29, v27);
    v30 = (((v21 + 24) | v21) + v26) & ~v21;
    v31 = (v26 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v48;
    v52(v32 + ((v21 + 24) & ~v21), v24, v27);
    v52(v32 + v30, v25, v27);
    *(v32 + v31) = v49;
    v33 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v33 = v50;
    v33[1] = v51;
    v0[6] = sub_1004E4EB4;
    v0[7] = v32;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101623258;
    v34 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[30] = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v57 + 8))(v55, v56);
    (*(v59 + 8))(v54, v60);
    v35 = v0[7];
  }

  v37 = v0[62];
  v36 = v0[63];
  v39 = v0[60];
  v38 = v0[61];
  v40 = v0[59];
  v41 = v0[55];
  v43 = v0[51];
  v42 = v0[52];
  v45 = v0[48];
  v44 = v0[49];
  v61 = v0[45];
  v62 = v0[42];

  v46 = v0[1];

  return v46();
}

uint64_t sub_1004C921C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 648);
  v5 = *v1;
  v3[82] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[83] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_1004DB51C(&unk_1016B1090, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_1004C93D0;
  v10 = v3[68];
  v11 = v3[67];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004C93D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 664);
  v6 = *(*v2 + 656);
  v7 = *v2;
  v4[84] = a1;
  v4[85] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004C9BE4, 0, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[86] = v8;
    *v8 = v7;
    v8[1] = sub_1004C9584;
    v9 = v4[33];

    return sub_100028F54(v9);
  }
}

uint64_t sub_1004C9584(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v7 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v5 = sub_1004C9F54;
  }

  else
  {
    v5 = sub_1004C969C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004C969C()
{
  v1 = v0[87];
  if (*(v1 + 16))
  {
    v2 = v0[48];
    v3 = v0[49];
    v4 = v0[46];
    v5 = *(v0[47] + 80);
    sub_1004E46C0(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for KeyGenerationBeaconInfo);

    sub_10002AAA4(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
    LODWORD(v2) = *(v3 + *(v4 + 28));
    sub_1004E4A04(v3, type metadata accessor for KeyGenerationBeaconInfo);
    v6 = v0[34];
    if (v2 == 3)
    {
      if (v6 == 1)
      {
        v6 = 5;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  else
  {
    v7 = v0[87];

    v6 = v0[34];
  }

  v8 = v0[84];
  v9 = v0[69];
  v10 = v0[35];
  sub_1004CA2D0(v0[36], v0[33], v6, v0[37], v0[38]);

  sub_100007BAC(v0 + 20);
  v12 = v0[62];
  v11 = v0[63];
  v14 = v0[60];
  v13 = v0[61];
  v15 = v0[59];
  v16 = v0[55];
  v18 = v0[51];
  v17 = v0[52];
  v20 = v0[48];
  v19 = v0[49];
  v23 = v0[45];
  v24 = v0[42];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004C987C()
{
  v39 = v0;
  v1 = v0[65];

  v2 = v0[70];
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[59];
  v4 = v0[56];
  v5 = v0[57];
  v6 = v0[33];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  (*(v5 + 16))(v3, v6, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[59];
  v13 = v0[56];
  v12 = v0[57];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v38);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v34 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to play sound %{private,mask.hash}s, error: %{public}@.", v14, 0x20u);
    sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v36);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[37];
  v20 = v0[38];
  swift_errorRetain();
  v21(v2);

  v23 = v0[62];
  v22 = v0[63];
  v25 = v0[60];
  v24 = v0[61];
  v26 = v0[59];
  v27 = v0[55];
  v29 = v0[51];
  v28 = v0[52];
  v31 = v0[48];
  v30 = v0[49];
  v35 = v0[45];
  v37 = v0[42];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004C9BE4()
{
  v39 = v0;
  v1 = v0[69];

  sub_100007BAC(v0 + 20);
  v2 = v0[85];
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v3 = v0[59];
  v4 = v0[56];
  v5 = v0[57];
  v6 = v0[33];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  (*(v5 + 16))(v3, v6, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[59];
  v13 = v0[56];
  v12 = v0[57];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v38);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v34 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to play sound %{private,mask.hash}s, error: %{public}@.", v14, 0x20u);
    sub_10000B3A8(v34, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v36);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[37];
  v20 = v0[38];
  swift_errorRetain();
  v21(v2);

  v23 = v0[62];
  v22 = v0[63];
  v25 = v0[60];
  v24 = v0[61];
  v26 = v0[59];
  v27 = v0[55];
  v29 = v0[51];
  v28 = v0[52];
  v31 = v0[48];
  v30 = v0[49];
  v35 = v0[45];
  v37 = v0[42];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004C9F54()
{
  v40 = v0;
  v1 = v0[84];
  v2 = v0[69];

  sub_100007BAC(v0 + 20);
  v3 = v0[88];
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v4 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[33];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C430);
  (*(v6 + 16))(v4, v7, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[59];
  v14 = v0[56];
  v13 = v0[57];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v39);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v35 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to play sound %{private,mask.hash}s, error: %{public}@.", v15, 0x20u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v37);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[37];
  v21 = v0[38];
  swift_errorRetain();
  v22(v3);

  v24 = v0[62];
  v23 = v0[63];
  v26 = v0[60];
  v25 = v0[61];
  v27 = v0[59];
  v28 = v0[55];
  v30 = v0[51];
  v29 = v0[52];
  v32 = v0[48];
  v31 = v0[49];
  v36 = v0[45];
  v38 = v0[42];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1004CA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v59 = a4;
  v70 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  __chkstk_darwin(v10);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UUID();
  v56 = *(v57 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v57);
  v67 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v66 = &v49 - v15;
  LODWORD(v55) = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v54 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138B360;
  v17 = UUID.uuidString.getter();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  v20 = sub_100008C00();
  *(v16 + 64) = v20;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v21 = UUID.uuidString.getter();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v20;
  *(v16 + 72) = v21;
  *(v16 + 80) = v22;
  v63 = v10;
  v58 = a3;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v23 = 0x8000000101357040;
        v24 = 0xD000000000000010;
        goto LABEL_18;
      case 4:
        v23 = 0xEF64656D7269666ELL;
        v24 = 0x6F4365756575712ELL;
        goto LABEL_18;
      case 5:
        v23 = 0xEE0074726F685367;
        goto LABEL_12;
    }

LABEL_15:
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
    goto LABEL_18;
  }

  if (!a3)
  {
    v23 = 0xE800000000000000;
    v24 = 0x746C75616665642ELL;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v23 = 0xE800000000000000;
    v24 = 0x676E69676E61722ELL;
    goto LABEL_18;
  }

  if (a3 != 2)
  {
    goto LABEL_15;
  }

  v23 = 0xE900000000000067;
LABEL_12:
  v24 = 0x6E696B636172742ELL;
LABEL_18:
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v20;
  *(v16 + 112) = v24;
  *(v16 + 120) = v23;
  os_log(_:dso:log:_:_:)();

  v25 = v56;
  v26 = *(v56 + 16);
  v55 = v26;
  v27 = v57;
  v26(v66, a2, v57);
  v26(v67, v70, v27);
  v28 = *(v25 + 80);
  v53 = a2;
  v29 = (v28 + 24) & ~v28;
  v52 = v29;
  v30 = (v13 + v28 + v29) & ~v28;
  v51 = v30;
  v31 = (v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v68;
  v33 = *(v25 + 32);
  v34 = v66;
  v33(v32 + v29, v66, v27);
  v35 = v67;
  v33(v32 + v30, v67, v27);
  v54 = v32;
  *(v32 + v31) = v58;
  v36 = v31;
  v37 = (v32 + v50);
  v39 = v68;
  v38 = v69;
  *v37 = v59;
  v37[1] = v38;
  v59 = *(v39 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue);
  v40 = v55;
  v55(v34, v53, v27);
  v40(v35, v70, v27);
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  v33(v41 + v52, v34, v27);
  v33(v41 + v51, v35, v27);
  v42 = (v41 + v36);
  v43 = v54;
  *v42 = sub_1004E3900;
  v42[1] = v43;
  aBlock[4] = sub_1004E39B0;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623370;
  v44 = _Block_copy(aBlock);
  swift_retain_n();

  v45 = v60;
  static DispatchQoS.unspecified.getter();
  v71 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v46 = v62;
  v47 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);

  (*(v64 + 8))(v46, v47);
  (*(v61 + 8))(v45, v63);
}

uint64_t sub_1004CAA2C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v40 = a3;
  v41 = a4;
  v8 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  (*(v18 + 16))(v16, a2);
  v19 = type metadata accessor for TagCommandManager();
  v46 = v19;
  v47 = &off_101637F28;
  v45[0] = v17;
  v20 = type metadata accessor for SoundPlaybackCoordinator();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  v24 = sub_10015049C(v45, v19);
  v25 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v30 = v17;
  v31 = sub_1004DB088(v29, v16, v23);
  sub_100007BAC(v45);
  v46 = type metadata accessor for BeaconManagerService();
  v47 = &off_101622B68;
  v45[0] = a1;
  v32 = *(v31 + 8);
  v42 = v45;
  v43 = v31;

  OS_dispatch_queue.sync<A>(execute:)();
  (*(v9 + 8))(v12, v8);
  sub_100007BAC(v45);

  sub_1006FF188(a2, a1, v31);

  v33 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();

  v34 = *(a1 + v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(a1 + v33);
  *(a1 + v33) = 0x8000000000000000;
  sub_100FFDEE0(v31, 0, 0, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + v33) = v44;
  swift_endAccess();
  v36 = swift_allocObject();
  *(v36 + 16) = v38;
  *(v36 + 24) = v39;

  sub_100B7C35C(v40, v41, sub_1004E3A3C, v36);
}

uint64_t sub_1004CADEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v21 = swift_allocObject();
  v22 = v28;
  v21[2] = v27;
  v21[3] = v22;
  v21[4] = a1;
  aBlock[4] = sub_1002EF79C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623460;
  v23 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v24 = v31;
  v25 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v32 + 8))(v24, v25);
  (*(v29 + 8))(v10, v30);
}

uint64_t sub_1004CB28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v28 - v12;
  v14 = *(a1 + 280);
  sub_100023184(a2, &v28 - v12);
  v15 = type metadata accessor for WildModeAssociationRecord(0);
  LODWORD(v14) = (*(*(v15 - 8) + 48))(v13, 1, v15);
  v16 = sub_10000B3A8(v13, &unk_1016C7C90, &qword_1013BB4B0);
  if (v14 == 1)
  {
    v17 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
    v16 = swift_beginAccess();
    v18 = *(a1 + v17);
    if (*(v18 + 16))
    {
      v19 = *(a1 + v17);

      v20 = sub_1000210EC(a2);
      if (v21)
      {
        v22 = *(v18 + 56) + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        sub_1004E39C8(*v22, v24, v25);

        if ((v25 & 1) == 0)
        {
          v27 = swift_allocObject();
          v27[2] = a1;
          v27[3] = a4;
          v27[4] = a5;

          sub_100B7C9F4(a3, sub_1004E3A14, v27);

          return sub_1001E61D8(v23, v24, 0);
        }

        v16 = sub_1001E61D8(v23, v24, 1);
      }

      else
      {
      }
    }
  }

  return a4(v16);
}

uint64_t sub_1004CB4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_10013A884;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016233E8;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v10, v7);
  (*(v11 + 8))(v14, v20);
}

uint64_t sub_1004CB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v65 = a3;
  v58 = a1;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v69 = &v52 - v7;
  v63 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v60 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  __chkstk_darwin(v13);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v68 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v61 = &v52 - v22;
  v59 = v23;
  __chkstk_darwin(v21);
  v25 = &v52 - v24;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000076D4(v26, qword_10177B380);
  v27 = *(v17 + 16);
  v64 = a2;
  v54 = v27;
  v27(v25, a2, v16);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v52 = v16;
  v53 = v17;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v31 = 136315651;
    *(v31 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101357150, v70);
    *(v31 + 12) = 2160;
    *(v31 + 14) = 1752392040;
    *(v31 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v17 + 8))(v25, v16);
    v35 = sub_1000136BC(v32, v34, v70);

    *(v31 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s for %{private,mask.hash}s.", v31, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v25, v16);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v55 + 104))(v57, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v56);
  static DispatchQoS.unspecified.getter();
  v70[0] = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v63 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
  v37 = v61;
  v38 = v52;
  v39 = v54;
  v54(v61, v64, v52);
  v39(v68, v58, v38);
  v40 = v53;
  v41 = *(v53 + 80);
  v42 = (v41 + 32) & ~v41;
  v43 = (v59 + 7 + v42) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v41 + v44 + 8) & ~v41;
  v46 = (v59 + 7 + v45) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = *(v40 + 32);
  v48(v47 + v42, v37, v38);
  *(v47 + v43) = v63;
  *(v47 + v44) = v66;
  v48(v47 + v45, v68, v38);
  v49 = (v47 + v46);
  v50 = v67;
  *v49 = v65;
  v49[1] = v50;

  sub_10025EDD4(0, 0, v69, &unk_1013AAFF8, v47);
}

uint64_t sub_1004CBE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[47] = a8;
  v8[48] = v24;
  v8[45] = a6;
  v8[46] = a7;
  v8[43] = a4;
  v8[44] = a5;
  v9 = *(*(sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0) - 8) + 64) + 15;
  v8[49] = swift_task_alloc();
  v10 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8[50] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[51] = swift_task_alloc();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v8[52] = v12;
  v13 = *(v12 - 8);
  v8[53] = v13;
  v14 = *(v13 + 64) + 15;
  v8[54] = swift_task_alloc();
  v15 = type metadata accessor for DispatchQoS();
  v8[55] = v15;
  v16 = *(v15 - 8);
  v8[56] = v16;
  v17 = *(v16 + 64) + 15;
  v8[57] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v8[58] = v18;
  v19 = *(v18 - 8);
  v8[59] = v19;
  v8[60] = *(v19 + 64);
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v20 = async function pointer to daemon.getter[1];
  v21 = swift_task_alloc();
  v8[64] = v21;
  *v21 = v8;
  v21[1] = sub_1004CC0D4;

  return daemon.getter();
}

uint64_t sub_1004CC0D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 512);
  v12 = *v1;
  *(v3 + 520) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 528) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1004CC2B0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004CC2B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  v4[67] = a1;
  v4[68] = v1;

  if (v1)
  {
    v7 = sub_1004CD938;
    v8 = 0;
  }

  else
  {
    v9 = v4[65];

    v7 = sub_1004CC3EC;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1004CC3EC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 504);
  v3 = *(v0 + 472);
  v4 = *(v0 + 464);
  v5 = *(v0 + 344);
  v6 = *(v3 + 16);
  *(v0 + 552) = v6;
  *(v0 + 560) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 640) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 568) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 576) = v10;
  *(v0 + 584) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 592) = v12;
  v13 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v12 = v0;
  v12[1] = sub_1004CC590;

  return unsafeBlocking<A>(context:_:)(v0 + 160, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v9, v13);
}

uint64_t sub_1004CC590()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 568);
  v4 = *v0;

  return _swift_task_switch(sub_1004CC6A8, 0, 0);
}

uint64_t sub_1004CC6A8()
{
  sub_1000D2A70((v0 + 20), (v0 + 30), &qword_101696920, &unk_10138B200);
  if (!v0[33])
  {
    sub_10000B3A8((v0 + 30), &qword_101696920, &unk_10138B200);
    goto LABEL_5;
  }

  sub_10000A748(v0 + 15, (v0 + 25));
  v1 = v0[28];
  v2 = v0[29];
  sub_1000035D0(v0 + 25, v1);
  if ((*(v2 + 152))(v1, v2))
  {
    sub_100007BAC(v0 + 25);
LABEL_5:
    v3 = v0[67];

    return _swift_task_switch(sub_1004CCAC8, v3, 0);
  }

  v31 = v0[73];
  v30 = v0[72];
  v4 = *(v0 + 640);
  v5 = v0[70];
  v6 = v0[69];
  v36 = v0[67];
  v8 = v0[62];
  v7 = v0[63];
  v9 = v0[60];
  v10 = v0[58];
  v32 = v0[57];
  v37 = v0[56];
  v38 = v0[55];
  v33 = v0[54];
  v34 = v0[52];
  v28 = v0[47];
  v29 = v0[48];
  v27 = v0[45];
  v12 = v0[43];
  v11 = v0[44];
  v35 = v0[53];
  v6(v7, v0[46], v10);
  v6(v8, v12, v10);
  v13 = (((v4 + 24) | v4) + v9) & ~v4;
  v14 = swift_allocObject();
  *(v14 + 16) = v27;
  v30(v14 + ((v4 + 24) & ~v4), v7, v10);
  v30(v14 + v13, v8, v10);
  v15 = (v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v28;
  v15[1] = v29;
  v0[18] = sub_1004E3C74;
  v0[19] = v14;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100006684;
  v0[17] = &unk_1016235F0;
  v16 = _Block_copy(v0 + 14);

  static DispatchQoS.unspecified.getter();
  v0[42] = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v35 + 8))(v33, v34);
  (*(v37 + 8))(v32, v38);
  sub_10000B3A8((v0 + 20), &qword_101696920, &unk_10138B200);
  v17 = v0[19];

  sub_100007BAC(v0 + 25);
  v19 = v0[62];
  v18 = v0[63];
  v20 = v0[61];
  v21 = v0[57];
  v22 = v0[54];
  v23 = v0[51];
  v24 = v0[49];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004CCAC8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  v4 = *(v0 + 536);
  v5 = *(v0 + 504);
  v6 = *(v0 + 480);
  v7 = *(v0 + 464);
  v8 = (*(v0 + 640) + 24) & ~*(v0 + 640);
  (*(v0 + 552))(v5, *(v0 + 344), v7);
  v9 = swift_allocObject();
  *(v0 + 600) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 608) = v11;
  *v11 = v0;
  v11[1] = sub_1004CCC20;
  v13 = *(v0 + 400);
  v12 = *(v0 + 408);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F58, v9, v13);
}

uint64_t sub_1004CCC20()
{
  v1 = *(*v0 + 608);
  v2 = *(*v0 + 600);
  v4 = *v0;

  return _swift_task_switch(sub_1004CCD38, 0, 0);
}

uint64_t sub_1004CCD38()
{
  v1 = v0[51];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
  if (v3 != 1)
  {
LABEL_4:
    v35 = v0[73];
    v34 = v0[72];
    v7 = *(v0 + 640);
    v8 = v0[70];
    v9 = v0[69];
    v40 = v0[67];
    v11 = v0[62];
    v10 = v0[63];
    v12 = v0[60];
    v13 = v0[58];
    v36 = v0[57];
    v41 = v0[56];
    v42 = v0[55];
    v37 = v0[54];
    v38 = v0[52];
    v32 = v0[47];
    v33 = v0[48];
    v31 = v0[45];
    v15 = v0[43];
    v14 = v0[44];
    v39 = v0[53];
    v9(v10, v0[46], v13);
    v9(v11, v15, v13);
    v16 = (((v7 + 24) | v7) + v12) & ~v7;
    v17 = swift_allocObject();
    *(v17 + 16) = v31;
    v34(v17 + ((v7 + 24) & ~v7), v10, v13);
    v34(v17 + v16, v11, v13);
    v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = v32;
    v18[1] = v33;
    v0[12] = sub_1004E3BB4;
    v0[13] = v17;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100006684;
    v0[11] = &unk_1016235A0;
    v19 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[41] = _swiftEmptyArrayStorage;
    sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v39 + 8))(v37, v38);
    (*(v41 + 8))(v36, v42);
    sub_10000B3A8((v0 + 20), &qword_101696920, &unk_10138B200);
    v20 = v0[13];

    v22 = v0[62];
    v21 = v0[63];
    v23 = v0[61];
    v24 = v0[57];
    v25 = v0[54];
    v26 = v0[51];
    v27 = v0[49];

    v28 = v0[1];

    return v28();
  }

  sub_1000D2A70((v0 + 20), (v0 + 35), &qword_101696920, &unk_10138B200);
  v4 = v0[38];
  if (v4)
  {
    v5 = v0[39];
    sub_1000035D0(v0 + 35, v0[38]);
    v6 = (*(v5 + 152))(v4, v5);
    sub_100007BAC(v0 + 35);
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_10000B3A8((v0 + 35), &qword_101696920, &unk_10138B200);
  }

  v30 = v0[67];

  return _swift_task_switch(sub_1004CD1A8, v30, 0);
}

uint64_t sub_1004CD1A8()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  v4 = *(v0 + 536);
  v5 = *(v0 + 504);
  v6 = *(v0 + 480);
  v7 = *(v0 + 464);
  v8 = (*(v0 + 640) + 24) & ~*(v0 + 640);
  (*(v0 + 552))(v5, *(v0 + 344), v7);
  v9 = swift_allocObject();
  *(v0 + 616) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  v12 = type metadata accessor for WildModeAssociationRecord(0);
  *(v0 + 632) = v12;
  *v11 = v0;
  v11[1] = sub_1004CD310;
  v13 = *(v0 + 392);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4F60, v9, v12);
}

uint64_t sub_1004CD310()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;

  v5 = *(v2 + 616);
  if (v0)
  {

    v6 = sub_1004CD80C;
  }

  else
  {

    v6 = sub_1004CD458;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004CD458()
{
  v30 = v0[73];
  v29 = v0[72];
  v1 = *(v0 + 640);
  v2 = v0[70];
  v3 = v0[69];
  v36 = v0[67];
  v5 = v0[62];
  v4 = v0[63];
  v6 = v0[60];
  v7 = v0[58];
  v31 = v0[57];
  v37 = v0[56];
  v38 = v0[55];
  v32 = v0[54];
  v35 = v0[53];
  v8 = v0[49];
  v9 = v0[47];
  v27 = v9;
  v28 = v0[48];
  v24 = v0[46];
  v33 = v0[52];
  v34 = v0[44];
  v25 = v0[43];
  v26 = v0[45];
  (*(*(v0[79] - 8) + 56))(v8, 0, 1);
  sub_10000B3A8(v8, &unk_1016C7C90, &qword_1013BB4B0);
  v3(v4, v24, v7);
  v3(v5, v25, v7);
  v10 = (((v1 + 24) | v1) + v6) & ~v1;
  v11 = swift_allocObject();
  *(v11 + 16) = v26;
  v29(v11 + ((v1 + 24) & ~v1), v4, v7);
  v29(v11 + v10, v5, v7);
  v12 = (v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v27;
  v12[1] = v28;
  v0[6] = sub_1004E4EB8;
  v0[7] = v11;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006684;
  v0[5] = &unk_101623550;
  v13 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[40] = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v35 + 8))(v32, v33);
  (*(v37 + 8))(v31, v38);
  sub_10000B3A8((v0 + 20), &qword_101696920, &unk_10138B200);
  v14 = v0[7];

  v16 = v0[62];
  v15 = v0[63];
  v17 = v0[61];
  v18 = v0[57];
  v19 = v0[54];
  v20 = v0[51];
  v21 = v0[49];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1004CD80C()
{
  v1 = v0[79];
  v2 = v0[67];
  v3 = v0[49];

  sub_10000B3A8((v0 + 20), &qword_101696920, &unk_10138B200);
  (*(*(v1 - 8) + 56))(v3, 1, 1, v1);
  sub_10000B3A8(v3, &unk_1016C7C90, &qword_1013BB4B0);
  v5 = v0[62];
  v4 = v0[63];
  v6 = v0[61];
  v7 = v0[57];
  v8 = v0[54];
  v9 = v0[51];
  v10 = v0[49];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1004CD938()
{
  v37 = v0;
  v1 = v0[65];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v2 = v0[68];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[59];
  v6 = v0[43];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  (*(v5 + 16))(v3, v6, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v35 = v0[68];
    v10 = v0[61];
    v12 = v0[58];
    v11 = v0[59];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315907;
    *(v13 + 4) = sub_1000136BC(0xD000000000000039, 0x8000000101357150, &v36);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v36);

    *(v13 + 24) = v18;
    *(v13 + 32) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v19;
    *v14 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s failed %{private,mask.hash}s, %{public}@.", v13, 0x2Au);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v20 = v0[61];
    v21 = v0[58];
    v22 = v0[59];

    (*(v22 + 8))(v20, v21);
  }

  v23 = v0[68];
  v25 = v0[47];
  v24 = v0[48];
  swift_errorRetain();
  v25(v23);

  v27 = v0[62];
  v26 = v0[63];
  v28 = v0[61];
  v29 = v0[57];
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[49];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1004CDCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v44 = a2;
  v45 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v51 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  __chkstk_darwin(v8);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for UUID();
  v41 = *(v43 - 8);
  v11 = *(v41 + 64);
  v12 = __chkstk_darwin(v43);
  v40 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  v16 = UUID.uuidString.getter();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v20 = v44;
  v21 = UUID.uuidString.getter();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = v46;
  v42 = *(v46 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue);
  v24 = v41;
  v25 = *(v41 + 16);
  v26 = v43;
  v25(v14, v20, v43);
  v27 = v40;
  v25(v40, a1, v26);
  v28 = *(v24 + 80);
  v29 = (v28 + 24) & ~v28;
  v30 = (v11 + v28 + v29) & ~v28;
  v31 = swift_allocObject();
  *(v31 + 16) = v23;
  v32 = *(v24 + 32);
  v32(v31 + v29, v14, v26);
  v32(v31 + v30, v27, v26);
  v33 = (v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  v34 = v47;
  *v33 = v45;
  v33[1] = v34;
  aBlock[4] = sub_1004E3E1C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101623640;
  v35 = _Block_copy(aBlock);

  v36 = v48;
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v37 = v51;
  v38 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v52 + 8))(v37, v38);
  (*(v49 + 8))(v36, v50);
}

uint64_t sub_1004CE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v50 = a3;
  v7 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = *(v17 + 16);
  v47 = a2;
  if (v18)
  {

    v19 = sub_1000210EC(a2);
    if (v20)
    {
      v21 = *(v17 + 56) + 24 * v19;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      sub_1004E39C8(*v21, v23, v24);

      if ((v24 & 1) == 0)
      {
        sub_100B7C9F4(v50, v48, v49);
        return sub_1001E61D8(v22, v23, 0);
      }

      sub_1001E61D8(v22, v23, 1);
      a2 = v47;
    }

    else
    {
    }
  }

  v25 = *(a1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  (*(v12 + 16))(v15, a2, v11);
  v26 = type metadata accessor for TagCommandManager();
  v53 = v26;
  v54 = &off_101637F28;
  v52[0] = v25;
  v27 = type metadata accessor for SoundPlaybackCoordinator();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = sub_10015049C(v52, v26);
  v32 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (&v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v37 = v25;
  v38 = sub_1004DB088(v36, v15, v30);
  sub_100007BAC(v52);
  v53 = type metadata accessor for BeaconManagerService();
  v54 = &off_101622B68;
  v52[0] = a1;
  v39 = *(v38 + 8);
  __chkstk_darwin(v53);
  *(&v45 - 2) = v52;
  *(&v45 - 1) = v38;

  v40 = v46;
  OS_dispatch_queue.sync<A>(execute:)();
  (*(v45 + 8))(v10, v40);
  sub_100007BAC(v52);
  swift_beginAccess();

  v41 = *(a1 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a1 + v16);
  *(a1 + v16) = 0x8000000000000000;
  sub_100FFDEE0(v38, 0, 0, v47, isUniquelyReferenced_nonNull_native);
  *(a1 + v16) = v51;
  swift_endAccess();
  v43 = swift_allocObject();
  *(v43 + 16) = v48;
  *(v43 + 24) = v49;

  sub_100B7C9F4(v50, sub_1004E3EEC, v43);
}

uint64_t sub_1004CE664(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  return a2(a1);
}

uint64_t sub_1004CE7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for AccessoryCommand();
  v3[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v3[18] = *(v8 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[24] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v3[26] = v12;
  *v12 = v3;
  v12[1] = sub_1004CE98C;

  return daemon.getter();
}

uint64_t sub_1004CE98C(uint64_t a1)
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
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[30] = v9;
  v10 = sub_1004DB51C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1004CEB6C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004CEB6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 248) = a1;

  v7 = *(v3 + 216);
  if (v1)
  {

    return _swift_task_switch(sub_1004CED18, 0, 0);
  }

  else
  {

    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    *(v4 + 256) = v9;
    *v9 = v6;
    v9[1] = sub_1004CEEE4;

    return daemon.getter();
  }
}

uint64_t sub_1004CED18()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing OwnerCommandService to unpair!", v4, 2u);
  }

  v6 = v0[8];
  v5 = v0[9];

  sub_1003FD838();
  swift_allocError();
  *v7 = 11;
  v6();

  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[23];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  v15 = v0[14];
  v14 = v0[15];
  v17 = v0[11];
  v16 = v0[12];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1004CEEE4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v5 = *v1;
  v3[33] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[34] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1004CF098;
  v10 = v3[30];
  v11 = v3[29];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1004CF098(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 280) = a1;

  v7 = *(v4 + 264);
  if (v1)
  {

    v8 = sub_1004CF1F0;
    v9 = 0;
  }

  else
  {

    v8 = sub_1004CF3C8;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1004CF1F0()
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B048);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconStoreActor to unpair!", v4, 2u);
  }

  v5 = v0[31];
  v7 = v0[8];
  v6 = v0[9];

  sub_1003FD838();
  swift_allocError();
  *v8 = 11;
  v7();

  v9 = v0[25];
  v10 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[11];
  v17 = v0[12];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004CF3C8()
{
  v1 = v0[35];
  v2 = v0[23];
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[36] = v6;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[38] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[39] = v9;
  v0[40] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_1004CF544;
  v13 = v0[24];
  v12 = v0[25];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1004E41BC, v8, v13);
}

uint64_t sub_1004CF544()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_1004CF65C, 0, 0);
}

uint64_t sub_1004CF65C()
{
  v54 = v0;
  v1 = v0[25];
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

    v10 = v0[25];

    sub_1004E4A04(v10, type metadata accessor for OwnedBeaconRecord);
  }

  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[22];
  v14 = v0[16];
  v15 = v0[17];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  (*(v15 + 56))(v16, 1, 1, v14);
  v12(v13, v18, v14);
  sub_1000D2A70(v16, v17, &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v15 + 48);
  if (v19(v17, 1, v14) == 1)
  {
    v20 = v0[21];
    v21 = v0[16];
    v23 = v0[11];
    v22 = v0[12];
    UUID.init()();
    sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
    if (v19(v23, 1, v21) != 1)
    {
      sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v25 = v0[39];
    v24 = v0[40];
    v26 = v0[21];
    v27 = v0[16];
    v28 = v0[11];
    sub_10000B3A8(v0[12], &qword_1016980D0, &unk_10138F3B0);
    v25(v26, v28, v27);
  }

  v30 = v0[39];
  v29 = v0[40];
  v31 = v0[22];
  v33 = v0[15];
  v32 = v0[16];
  v34 = v0[13];
  v30(v33, v0[21], v32);
  v30(v33 + v34[5], v31, v32);
  v35 = (v33 + v34[6]);
  v35[1] = 0u;
  v35[2] = 0u;
  *v35 = 0u;
  *(v33 + v34[7]) = v3 & 1;
  *(v33 + v34[8]) = 1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v36 = v0[14];
  v37 = v0[15];
  v38 = type metadata accessor for Logger();
  v0[42] = sub_1000076D4(v38, qword_10177B048);
  sub_1004E46C0(v37, v36, type metadata accessor for AccessoryCommand);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[14];
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = v44;
    *v43 = 136446210;
    v45 = sub_1010C00BC(v44);
    v47 = v46;
    sub_1004E4A04(v42, type metadata accessor for AccessoryCommand);
    v48 = sub_1000136BC(v45, v47, &v53);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v39, v40, "Executing unpair command: %{public}s", v43, 0xCu);
    sub_100007BAC(v44);
  }

  else
  {

    sub_1004E4A04(v42, type metadata accessor for AccessoryCommand);
  }

  v49 = swift_task_alloc();
  v0[43] = v49;
  *v49 = v0;
  v49[1] = sub_1004CFB14;
  v50 = v0[31];
  v51 = v0[15];

  return sub_10121B780((v0 + 2), v51, 1);
}

uint64_t sub_1004CFB14()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_1004CFF10;
  }

  else
  {
    sub_10000B3A8(v2 + 16, &qword_1016A24A8, &unk_1013F60E0);
    v4 = sub_1004CFC40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004CFC40()
{
  v31 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 160), *(v0 + 80), *(v0 + 128));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v9 = 136446723;
    *(v9 + 4) = sub_1000136BC(0xD000000000000024, 0x80000001013573B0, &v30);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v8 + 8))(v6, v7);
    v13 = sub_1000136BC(v10, v12, &v30);

    *(v9 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s beaconIdentifier: %{private,mask.hash}s completed successfully!", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v6, v7);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 72);
  (*(v0 + 64))(0);

  v16 = *(v0 + 248);
  v17 = *(v0 + 120);

  sub_1004E4A04(v17, type metadata accessor for AccessoryCommand);
  v18 = *(v0 + 200);
  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 160);
  v21 = *(v0 + 168);
  v23 = *(v0 + 152);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v27 = *(v0 + 88);
  v26 = *(v0 + 96);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1004CFF10()
{
  v39 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 152), *(v0 + 80), *(v0 + 128));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v37 = *(v0 + 352);
    v6 = *(v0 + 152);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 136446979;
    *(v9 + 4) = sub_1000136BC(0xD000000000000024, 0x80000001013573B0, &v38);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    v14 = sub_1000136BC(v11, v13, &v38);

    *(v9 + 24) = v14;
    *(v9 + 32) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s beaconIdentifier: %{private,mask.hash}s\nfailed with error: %{public}@!", v9, 0x2Au);
    sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);

    (*(v18 + 8))(v16, v17);
  }

  v19 = *(v0 + 352);
  v20 = *(v0 + 248);
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  swift_errorRetain();
  v22(v19);

  v23 = *(v0 + 280);
  v24 = *(v0 + 120);

  sub_1004E4A04(v24, type metadata accessor for AccessoryCommand);
  v25 = *(v0 + 200);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);
  v30 = *(v0 + 152);
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  v34 = *(v0 + 88);
  v33 = *(v0 + 96);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1004D027C()
{
  v1 = v0;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10138BBE0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_100008C00();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v7 = UUID.uuidString.getter();
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v6;
  *(v2 + 72) = v7;
  *(v2 + 80) = v8;
  os_log(_:dso:log:_:_:)();

  if (*(v1 + 176))
  {

    static os_log_type_t.default.getter();
    if (qword_1016950B8 != -1)
    {
      swift_once();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    v11 = UUID.uuidString.getter();
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = v6;
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    os_log(_:dso:log:_:_:)();

    v13 = type metadata accessor for Transaction();
    __chkstk_darwin(v13);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_1004D04EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v63 = a3;
  v64 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v60 = v15;
  v61 = &v54 - v14;
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C430);
  v58 = *(v9 + 16);
  v59 = v9 + 16;
  v58(v17, a2, v8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v57 = v4;
    v22 = v21;
    v55 = swift_slowAlloc();
    v65[0] = v55;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v18;
    v24 = a1;
    v25 = a2;
    v26 = v9;
    v28 = v27;
    (*(v26 + 8))(v17, v8);
    v29 = sub_1000136BC(v23, v28, v65);
    v9 = v26;
    a2 = v25;
    a1 = v24;
    v18 = v56;

    *(v22 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "#Durian: Client asking to connect to beacon with UUID - %{private,mask.hash}s", v22, 0x16u);
    sub_100007BAC(v55);

    v5 = v57;
  }

  else
  {

    (*(v9 + 8))(v17, v8);
  }

  v30 = v8;
  My = type metadata accessor for Feature.FindMy();
  v65[3] = My;
  v65[4] = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v32 = sub_1000280DC(v65);
  (*(*(My - 8) + 104))(v32, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v65);
  if (My)
  {
    v57 = *(v5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager);
    v33 = v61;
    v54 = a2;
    v34 = v8;
    v35 = v58;
    v58(v61, a2, v34);
    v36 = v62;
    v35(v62, a1, v30);
    v37 = *(v9 + 80);
    v38 = (v37 + 16) & ~v37;
    v39 = (v60 + v37 + v38) & ~v37;
    v40 = (v60 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = *(v9 + 32);
    v42(v41 + v38, v33, v30);
    v42(v41 + v39, v36, v30);
    v43 = (v41 + v40);
    v44 = v64;
    *v43 = v63;
    v43[1] = v44;

    sub_100804368(v54, a1, sub_1004E3F04, v41);
  }

  else
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v18, qword_10177B048);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Connecting legacy when spPlaySoundAll is off!", v47, 2u);
    }

    v48 = *(v5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
    sub_10089102C(a2);
    v49 = swift_allocObject();
    v50 = v63;
    v51 = v64;
    *(v49 + 16) = v63;
    *(v49 + 24) = v51;

    Future.addFailure(block:)();

    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    *(v52 + 24) = v51;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1004D0B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  v43 = a4;
  v44 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v40 = &v37 - v12;
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177C430);
  v39 = *(v8 + 16);
  v39(v14, a2, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v45 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v46 = v37;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v5;
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v14, v7);
    v24 = sub_1000136BC(v20, v23, &v46);
    v8 = v21;
    v5 = v38;

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "#Durian: Client asking to disconnect from beacon with UUID - %{private,mask.hash}s", v19, 0x16u);
    sub_100007BAC(v37);

    a2 = v45;
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  v38 = *(v5 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager);
  v26 = v39;
  v25 = v40;
  v39(v40, a2, v7);
  v27 = v41;
  v28 = v44;
  v26(v41, v44, v7);
  v29 = *(v8 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = (v9 + v29 + v30) & ~v29;
  v32 = swift_allocObject();
  v33 = *(v8 + 32);
  v33(v32 + v30, v25, v7);
  v33(v32 + v31, v27, v7);
  v34 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v43;
  *v34 = v42;
  v34[1] = v35;

  sub_100805628(v45, v28, sub_1004E3FEC, v32);
}

uint64_t sub_1004D0F1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, const char *a6, const char *a7)
{
  v65 = a3;
  v66 = a5;
  v64 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v62 - v21;
  __chkstk_darwin(v20);
  v24 = &v62 - v23;
  v67 = a4;
  if (a1)
  {
    v63 = a6;
    swift_errorRetain();
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177B048);
    v26 = v12[2];
    v26(v24, v64, v11);
    v26(v22, v65, v11);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v69 = v65;
      *v29 = 141558787;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v62 = sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v64) = v28;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v22;
      v33 = v32;
      v34 = v12[1];
      v34(v24, v11);
      v35 = sub_1000136BC(v30, v33, &v69);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2082;
      v68 = a1;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v36 = String.init<A>(describing:)();
      v38 = sub_1000136BC(v36, v37, &v69);

      *(v29 + 24) = v38;
      *(v29 + 32) = 2082;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v34(v31, v11);
      v42 = sub_1000136BC(v39, v41, &v69);

      *(v29 + 34) = v42;
      _os_log_impl(&_mh_execute_header, v27, v64, v63, v29, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v60 = v12[1];
      v60(v22, v11);
      v60(v24, v11);
    }

    swift_errorRetain();
    v67(a1);
  }

  else
  {
    v63 = a7;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000076D4(v43, qword_10177B048);
    v44 = v12[2];
    v44(v19, v64, v11);
    v44(v16, v65, v11);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      LODWORD(v64) = v46;
      v48 = v47;
      v65 = swift_slowAlloc();
      v69 = v65;
      *v48 = 141558531;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = v12[1];
      v52(v19, v11);
      v53 = sub_1000136BC(v49, v51, &v69);

      *(v48 + 14) = v53;
      *(v48 + 22) = 2082;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v52(v16, v11);
      v57 = sub_1000136BC(v54, v56, &v69);
      v58 = v67;

      *(v48 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v45, v64, v63, v48, 0x20u);
      swift_arrayDestroy();

      return (v58)(0);
    }

    else
    {

      v61 = v12[1];
      v61(v16, v11);
      v61(v19, v11);
      return (v67)(0);
    }
  }
}

uint64_t sub_1004D15D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v5 = Error.localizedDescription.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)();

  return a2(a1);
}

uint64_t sub_1004D1704(uint64_t a1, uint64_t (*a2)(void))
{
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  return a2(0);
}

uint64_t sub_1004D17A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v7[9] = v12;
  *v12 = v7;
  v12[1] = sub_1004D189C;

  return daemon.getter();
}

uint64_t sub_1004D189C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  *v6 = v12;
  v6[1] = sub_1004D1A78;

  return ActorServiceDaemon.getService<A>()(v7, found, v9, v10);
}

uint64_t sub_1004D1A78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004D1D98, 0, 0);
  }

  else
  {
    v7 = v4[10];

    v8 = swift_task_alloc();
    v4[14] = v8;
    *v8 = v6;
    v8[1] = sub_1004D1C08;
    v9 = v4[3];
    v10 = v4[2];

    return sub_10032A048(v10, v9);
  }
}

uint64_t sub_1004D1C08()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1004D2088;
  }

  else
  {
    v3 = sub_1004D1D1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004D1D1C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  (*(v0 + 32))(0);

  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004D1D98()
{
  v28 = v0;
  v1 = v0[13];
  v2 = v0[10];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to enable notify when found for %{private,mask.hash}s, %{public}@.", v14, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[4];
  v20 = v0[5];
  swift_errorRetain();
  v21(v1);

  v22 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1004D2088()
{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[12];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to enable notify when found for %{private,mask.hash}s, %{public}@.", v14, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[4];
  v20 = v0[5];
  swift_errorRetain();
  v21(v1);

  v22 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1004D2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v7[9] = v12;
  *v12 = v7;
  v12[1] = sub_1004D246C;

  return daemon.getter();
}

uint64_t sub_1004D246C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  *v6 = v12;
  v6[1] = sub_1004D2648;

  return ActorServiceDaemon.getService<A>()(v7, found, v9, v10);
}

uint64_t sub_1004D2648(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004D28EC, 0, 0);
  }

  else
  {
    v7 = v4[10];

    v8 = swift_task_alloc();
    v4[14] = v8;
    *v8 = v6;
    v8[1] = sub_1004D27D8;
    v9 = v4[3];
    v10 = v4[2];

    return sub_10033205C(v10, v9);
  }
}

uint64_t sub_1004D27D8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1004D2BDC;
  }

  else
  {
    v3 = sub_1004E4EB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004D28EC()
{
  v28 = v0;
  v1 = v0[13];
  v2 = v0[10];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to disable notify when found for %{private,mask.hash}s, %{public}@.", v14, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[4];
  v20 = v0[5];
  swift_errorRetain();
  v21(v1);

  v22 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1004D2BDC()
{
  v28 = v0;
  v1 = v0[15];
  v2 = v0[12];

  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C430);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v27);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v25 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to disable notify when found for %{private,mask.hash}s, %{public}@.", v14, 0x20u);
    sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v26);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[4];
  v20 = v0[5];
  swift_errorRetain();
  v21(v1);

  v22 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1004D2ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for KeySyncMetadata();
  v8[7] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1004D2F98;

  return daemon.getter();
}

uint64_t sub_1004D2F98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1004D3174;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004D3174(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = sub_1004D360C;
  }

  else
  {

    v7 = sub_1004D32C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1004D32C4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  v7 = (v1 + v2[6]);
  v7[3] = &type metadata for PrimaryIndex;
  v7[4] = sub_10002A2B8();
  *v7 = v4;
  v8 = v2[7];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v1 + v8, v3, v9);
  *(v1 + v2[5]) = 1;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_1004D3420;
  v11 = v0[12];
  v12 = v0[8];

  return sub_1010CDAC4(v12);
}

uint64_t sub_1004D3420()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 64);
  if (v0)
  {

    sub_1004E4A04(v5, type metadata accessor for KeySyncMetadata);
    v6 = sub_1004E4F14;
  }

  else
  {
    sub_1004E4A04(v5, type metadata accessor for KeySyncMetadata);
    v6 = sub_1004D3590;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004D3590()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  (*(v0 + 40))(0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1004D360C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 40))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004D3680(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v42 = a1;
  v6 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = *a2;
  v18 = a2[1];
  result = type metadata accessor for OwnedBeaconGroup(0);
  v20 = *(a3 + *(result + 40));
  if (*(v20 + 16))
  {
    result = sub_100771E30(v17, v18);
    if (v21)
    {
      sub_1004E46C0(*(v20 + 56) + *(v7 + 72) * result, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10002AAA4(v14, v16, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_10002AAA4(v16, v11, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v22 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v23 = v22[12];
        sub_100006654(*&v11[v22[16]], *&v11[v22[16] + 8]);
        v24 = &v11[v22[24]];
        v25 = *v24;
        v26 = v24[1];
        sub_10000B3A8(&v11[v23], &qword_1016A40D0, &unk_10138BE70);
        v27 = type metadata accessor for UUID();
        result = (*(*(v27 - 8) + 8))(v11, v27);
        if (v26)
        {
          return result;
        }
      }

      else
      {
        v28 = &v11[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
        v25 = *v28;
        v29 = v28[1];
        result = sub_10000B3A8(v11, &qword_1016A40D0, &unk_10138BE70);
        if (v29)
        {
          return result;
        }
      }

      v30 = *(v43 + 16);
      v31 = (v43 + 32);
      while (v30)
      {
        v32 = *v31++;
        --v30;
        if (v32 == v25)
        {
          v33 = sub_100519EE8(v17, v18);
          v35 = v34;
          v36 = v42;
          v37 = *v42;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100A5B734(0, *(v37 + 16) + 1, 1, v37);
            v37 = result;
          }

          v39 = *(v37 + 16);
          v38 = *(v37 + 24);
          if (v39 >= v38 >> 1)
          {
            result = sub_100A5B734((v38 > 1), v39 + 1, 1, v37);
            v37 = result;
          }

          *(v37 + 16) = v39 + 1;
          v40 = v37 + 16 * v39;
          *(v40 + 32) = v33;
          *(v40 + 40) = v35;
          *v36 = v37;
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1004D39B0()
{
  v1 = *v0;
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1004D3A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v19[1] = a3;
    v23 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v10, 0);
    v11 = v23;
    v12 = a2 + 32;
    do
    {
      sub_10001F280(v12, v20);
      v14 = v21;
      v13 = v22;
      sub_1000035D0(v20, v21);
      (*(*(*(v13 + 8) + 8) + 32))(v14);
      sub_100007BAC(v20);
      v23 = v11;
      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        sub_101123D4C(v15 > 1, v16 + 1, 1);
        v11 = v23;
      }

      v11[2] = v16 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v9, v5);
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v17 = sub_10000954C(v11);

    sub_100A4165C(v17);
  }
}

uint64_t sub_1004D3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 | a2)
  {
    v13 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorByBeaconIdentifier;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    v14 = *(a3 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + v13);
    *(a3 + v13) = 0x8000000000000000;
    sub_100FFDEE0(a1, a2, 1, a4, isUniquelyReferenced_nonNull_native);
    *(a3 + v13) = v17;
  }

  else
  {
    (*(v10 + 16))(v12, a4);
    swift_beginAccess();
    sub_1001DF224(0, 0, 255, v12);
  }

  return swift_endAccess();
}

uint64_t sub_1004D3DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1004D3E80;

  return daemon.getter();
}

uint64_t sub_1004D3E80(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_1004D405C;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_1004D405C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    *(v5 + 48) = a1;

    return _swift_task_switch(sub_1004D41DC, 0, 0);
  }
}

uint64_t sub_1004D41DC()
{
  v1 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = sub_10000954C(v6);
  v0[7] = v7;
  swift_setDeallocating();
  (*(v3 + 8))(v6 + v5, v2);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1004D4378;
  v9 = v0[6];

  return sub_10094DB94(v7);
}

uint64_t sub_1004D4378()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_1004D4490()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004D44F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004D45B4;

  return daemon.getter();
}

uint64_t sub_1004D45B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1004D4790;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004D4790(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004D4AB0, 0, 0);
  }

  else
  {
    v7 = v4[6];
    v9 = v4[2];
    v8 = v4[3];

    v10 = *(v8 + 24);
    v11 = swift_task_alloc();
    v4[10] = v11;
    *v11 = v6;
    v11[1] = sub_1004D4934;

    return sub_100191968(v9 + v10, 1);
  }
}

uint64_t sub_1004D4934()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1004D4DA0;
  }

  else
  {
    v3 = sub_1004D4A48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004D4A48()
{
  v1 = v0[8];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004D4AB0()
{
  v24 = v0;
  v1 = v0[9];
  v2 = v0[6];

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE40);
  sub_1004E46C0(v4, v3, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[4];
  if (v8)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v10 + 24);
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1004E4A04(v9, type metadata accessor for SharedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v23);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to remove imported share with share id %{private,mask.hash}s, error: %@", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {

    sub_1004E4A04(v9, type metadata accessor for SharedBeaconRecord);
  }

  v20 = v0[4];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004D4DA0()
{
  v24 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE40);
  sub_1004E46C0(v4, v3, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[4];
  if (v8)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v14 = *(v10 + 24);
    type metadata accessor for UUID();
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1004E4A04(v9, type metadata accessor for SharedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v23);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v19;
    *v12 = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to remove imported share with share id %{private,mask.hash}s, error: %@", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {

    sub_1004E4A04(v9, type metadata accessor for SharedBeaconRecord);
  }

  v20 = v0[4];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1004D5090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v18[1] = a2;
    v22 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v9, 0);
    v10 = v22;
    v11 = a1 + 32;
    do
    {
      sub_10001F280(v11, v19);
      v13 = v20;
      v12 = v21;
      sub_1000035D0(v19, v20);
      (*(*(*(v12 + 8) + 8) + 32))(v13);
      sub_100007BAC(v19);
      v22 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_101123D4C(v14 > 1, v15 + 1, 1);
        v10 = v22;
      }

      v10[2] = v15 + 1;
      (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v8, v4);
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  v16 = sub_10000954C(v10);

  sub_100A4165C(v16);
}

Swift::Int sub_1004D5278(void **a1)
{
  v2 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3200C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1004D56A8(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1004D56A8(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconEstimatedLocation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004D5A38(v8, v9, a1, v4);
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
    return sub_1004D57D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1004D57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BeaconEstimatedLocation();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1004E46C0(v24, v18, type metadata accessor for BeaconEstimatedLocation);
      sub_1004E46C0(v21, v14, type metadata accessor for BeaconEstimatedLocation);
      v25 = *(v8 + 40);
      v26 = static Date.< infix(_:_:)();
      sub_1004E4A04(v14, type metadata accessor for BeaconEstimatedLocation);
      result = sub_1004E4A04(v18, type metadata accessor for BeaconEstimatedLocation);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10002AAA4(v24, v37, type metadata accessor for BeaconEstimatedLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002AAA4(v27, v21, type metadata accessor for BeaconEstimatedLocation);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004D5A38(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for BeaconEstimatedLocation();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1004D639C(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1004E46C0(v114 + v25 * v24, v19, type metadata accessor for BeaconEstimatedLocation);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1004E46C0(v27, v120, type metadata accessor for BeaconEstimatedLocation);
      v30 = *(v9 + 40);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_1004E4A04(v29, type metadata accessor for BeaconEstimatedLocation);
      result = sub_1004E4A04(v19, type metadata accessor for BeaconEstimatedLocation);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1004E46C0(v32, v19, type metadata accessor for BeaconEstimatedLocation);
        v33 = v120;
        sub_1004E46C0(v5, v120, type metadata accessor for BeaconEstimatedLocation);
        v34 = *(v121 + 40);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_1004E4A04(v33, type metadata accessor for BeaconEstimatedLocation);
        result = sub_1004E4A04(v19, type metadata accessor for BeaconEstimatedLocation);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_10002AAA4(v42 + v41, v111, type metadata accessor for BeaconEstimatedLocation);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002AAA4(v111, v42 + v36, type metadata accessor for BeaconEstimatedLocation);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1004E46C0(v5, v19, type metadata accessor for BeaconEstimatedLocation);
    v96 = v120;
    sub_1004E46C0(v93, v120, type metadata accessor for BeaconEstimatedLocation);
    v97 = *(v9 + 40);
    a4 = static Date.< infix(_:_:)();
    sub_1004E4A04(v96, type metadata accessor for BeaconEstimatedLocation);
    result = sub_1004E4A04(v19, type metadata accessor for BeaconEstimatedLocation);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1004D639C(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for BeaconEstimatedLocation;
    v98 = v119;
    sub_10002AAA4(v5, v119, type metadata accessor for BeaconEstimatedLocation);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10002AAA4(v98, v93, type metadata accessor for BeaconEstimatedLocation);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1004D639C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for BeaconEstimatedLocation();
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1004E46C0(v33, v47, type metadata accessor for BeaconEstimatedLocation);
          v35 = v48;
          sub_1004E46C0(v29, v48, type metadata accessor for BeaconEstimatedLocation);
          v36 = *(v31 + 40);
          v37 = static Date.< infix(_:_:)();
          sub_1004E4A04(v35, type metadata accessor for BeaconEstimatedLocation);
          sub_1004E4A04(v34, type metadata accessor for BeaconEstimatedLocation);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1004E46C0(a2, v47, type metadata accessor for BeaconEstimatedLocation);
        v22 = v48;
        sub_1004E46C0(a4, v48, type metadata accessor for BeaconEstimatedLocation);
        v23 = *(v49 + 40);
        v24 = static Date.< infix(_:_:)();
        sub_1004E4A04(v22, type metadata accessor for BeaconEstimatedLocation);
        sub_1004E4A04(v21, type metadata accessor for BeaconEstimatedLocation);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AA9C(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1004D68CC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v4 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  sub_1000BC4D4(&qword_1016A24B0, &qword_1013C5460);
  result = static _DictionaryStorage.copy(original:)();
  v12 = v10;
  v13 = result;
  v14 = 0;
  v42 = a3;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v36 = v16;
  v37 = result + 64;
  v38 = result;
  if (v20)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v20));
      v43 = (v20 - 1) & v20;
LABEL_10:
      v25 = v22 | (v14 << 6);
      v26 = (*(v42 + 48) + 16 * v25);
      v28 = *v26;
      v27 = v26[1];
      v29 = *(v39 + 72) * v25;
      sub_1004E46C0(*(v42 + 56) + v29, v12, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100017D5C(v28, v27);
      v30 = v44;
      v40(v12);
      v44 = v30;
      if (v30)
      {
        break;
      }

      sub_1004E4A04(v12, type metadata accessor for OwnedBeaconGroup.PairingState);
      *(v37 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v31 = v38;
      v32 = (*(v38 + 48) + 16 * v25);
      v13 = v38;
      *v32 = v28;
      v32[1] = v27;
      result = sub_10002AAA4(v8, *(v31 + 56) + v29, type metadata accessor for OwnedBeaconGroup.PairingState);
      v33 = *(v13 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_17;
      }

      *(v13 + 16) = v35;
      v20 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }

    v13 = v38;

    sub_100016590(v28, v27);
    sub_1004E4A04(v12, type metadata accessor for OwnedBeaconGroup.PairingState);
    return v13;
  }

  else
  {
LABEL_5:
    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v21)
      {
        return v13;
      }

      v24 = *(v36 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D6BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a1;
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LocationFetcher();
  v20 = *(*(v19 - 1) + 64);
  __chkstk_darwin(v19);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57[3] = a4;
  v57[4] = a5;
  v23 = sub_1000280DC(v57);
  (*(*(a4 - 8) + 16))(v23, a2, a4);
  v50 = a3;
  v24 = *(a3 + 280);
  sub_10001F280(v57, v56);
  v25 = qword_101694920;
  v49 = v24;

  if (v25 != -1)
  {
    swift_once();
  }

  v44 = qword_10177B2E8;

  v48 = sub_100908168(_swiftEmptyArrayStorage);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v14);

  static DispatchQoS.unspecified.getter();
  *&v52 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = v19[10];
  v27 = type metadata accessor for DeviceIdentityUtility();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  v31 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v32 = type metadata accessor for Date();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v30 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v30 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v22 + v26) = v30;
  v33 = v19[11];
  v34 = type metadata accessor for BeaconObservationStore();
  v54 = &off_101632E88;
  v55 = &off_101613BE0;
  v53 = v34;
  v35 = v44;
  *&v52 = v44;
  type metadata accessor for MemberCircleRevokeManager();
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v52, (v36 + 32));
  *(v22 + v33) = v36;
  v37 = v19[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v22 + v37) = swift_allocObject();
  *v22 = v49;
  sub_10001F280(v56, (v22 + 3));
  v38 = v19[8];

  sub_1005CB7C8(v56, v22 + v38);
  sub_100007BAC(v56);
  v22[1] = v35;
  *(v22 + v19[9]) = v48;
  *(v36 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v39 = swift_allocObject();
  v41 = v50;
  v40 = v51;
  *(v39 + 16) = v51;
  *(v39 + 24) = v41;

  sub_1005CAFE0(v40, sub_1004E2F14, v39);

  sub_1004E4A04(v22, type metadata accessor for LocationFetcher);
  return sub_100007BAC(v57);
}

void sub_1004D7164(char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v129 = a4;
  v128 = type metadata accessor for LocalFindableAccessoryRecord();
  v127 = *(v128 - 8);
  v12 = *(v127 + 64);
  __chkstk_darwin(v128);
  v131 = &v121[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = type metadata accessor for DispatchTime();
  v123 = *(v126 - 8);
  v14 = *(v123 + 64);
  v15 = __chkstk_darwin(v126);
  v125 = &v121[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v124 = &v121[-v17];
  v18 = type metadata accessor for UUID();
  v135 = *(v18 - 8);
  v19 = *(v135 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v121[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v25 = &v121[-v24];
  __chkstk_darwin(v23);
  v139 = &v121[-v26];
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v121[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v148 = &_s13DefaultPolicyVN;
  v149 = sub_100111A48();
  v32 = swift_allocObject();
  v147 = v32;
  v33 = *(a2 + 48);
  *(v32 + 48) = *(a2 + 32);
  *(v32 + 64) = v33;
  *(v32 + 80) = *(a2 + 64);
  *(v32 + 96) = *(a2 + 80);
  v34 = *(a2 + 16);
  *(v32 + 16) = *a2;
  *(v32 + 32) = v34;
  v134 = a5;
  v35 = *(a5 + 88);
  *v31 = v35;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  sub_100111A9C(a2, &v144);
  v36 = v35;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v31, v27);
  if (a2)
  {
    v122 = a3;
    v37 = *(a1 + 2);
    v38 = _swiftEmptyArrayStorage;
    v133 = v37;
    if (v37)
    {
      v140[0] = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v37, 0);
      v38 = v140[0];
      v138 = a1;
      v39 = (a1 + 32);
      v40 = v37;
      do
      {
        sub_10001F280(v39, &v144);
        v42 = v145;
        v41 = v146;
        sub_1000035D0(&v144, v145);
        (*(*(*(v41 + 8) + 8) + 32))(v42);
        sub_100007BAC(&v144);
        v140[0] = v38;
        v44 = v38[2];
        v43 = v38[3];
        if (v44 >= v43 >> 1)
        {
          sub_101123D4C(v43 > 1, v44 + 1, 1);
          v38 = v140[0];
        }

        v38[2] = v44 + 1;
        (*(v135 + 32))(v38 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v44, v22, v18);
        v39 += 40;
        --v40;
      }

      while (v40);
      v37 = v133;
      a1 = v138;
    }

    v45 = sub_10000954C(v38);

    v46 = sub_100A4250C(v45);

    if (v37)
    {
      v47 = 0;
      *&v132 = a1 + 32;
      v138 = (v46 + 56);
      v137 = v135 + 16;
      v48 = (v135 + 8);
      v130 = _swiftEmptyArrayStorage;
      do
      {
        v136 = v47;
        sub_10001F280(v132 + 40 * v47, &v144);
        v51 = v145;
        v50 = v146;
        sub_1000035D0(&v144, v145);
        (*(*(*(v50 + 8) + 8) + 32))(v51);
        if (*(v46 + 16) && (v52 = *(v46 + 40), sub_1004DB51C(&qword_1016967B0, &type metadata accessor for UUID), v53 = dispatch thunk of Hashable._rawHashValue(seed:)(), v54 = -1 << *(v46 + 32), v55 = v53 & ~v54, ((*&v138[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55) & 1) != 0))
        {
          v56 = ~v54;
          v57 = *(v135 + 72);
          v58 = *(v135 + 16);
          while (1)
          {
            v58(v25, *(v46 + 48) + v57 * v55, v18);
            sub_1004DB51C(&qword_1016984A0, &type metadata accessor for UUID);
            v59 = dispatch thunk of static Equatable.== infix(_:_:)();
            v60 = *v48;
            (*v48)(v25, v18);
            if (v59)
            {
              break;
            }

            v55 = (v55 + 1) & v56;
            if (((*&v138[(v55 >> 3) & 0xFFFFFFFFFFFFFF8] >> v55) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v60(v139, v18);
          sub_10000A748(&v144, v140);
          v61 = v130;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, v61[2] + 1, 1);
            v61 = v143;
          }

          v49 = v133;
          v64 = v61[2];
          v63 = v61[3];
          if (v64 >= v63 >> 1)
          {
            sub_100025B1C((v63 > 1), v64 + 1, 1);
          }

          v65 = v141;
          v66 = v142;
          v67 = sub_10015049C(v140, v141);
          v68 = *(*(v65 - 8) + 64);
          __chkstk_darwin(v67);
          v70 = &v121[-((v69 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v71 + 16))(v70);
          sub_1006252D4(v64, v70, &v143, v65, v66);
          sub_100007BAC(v140);
          v130 = v143;
        }

        else
        {
LABEL_10:
          (*v48)(v139, v18);
          sub_100007BAC(&v144);
          v49 = v133;
        }

        v47 = v136 + 1;
      }

      while (v136 + 1 != v49);
    }

    else
    {
      v130 = _swiftEmptyArrayStorage;
    }

    v72 = sub_10062D878(v130);

    v74 = *(v72 + 2);
    if (v74)
    {
      v75 = 0;
      v76 = 0;
      v77 = v72 + 32;
      LODWORD(v135) = v122 & (a7 > 0.0);
      v133 = (v123 + 8);
      *&v73 = 138543362;
      v132 = v73;
      v78 = v131;
      v138 = v72;
      v137 = v74;
      v136 = v72 + 32;
      do
      {
        if (v75 >= *(v72 + 2))
        {
          __break(1u);
          goto LABEL_58;
        }

        v84 = &v77[16 * v75];
        v85 = *v84;
        v86 = v84[8];
        if (v86 > 1)
        {
          if (v86 == 2)
          {
            v89 = *(v85 + 16);
            if (v89)
            {
              v139 = v76;
              v140[0] = _swiftEmptyArrayStorage;

              sub_100025B1C(0, v89, 0);
              v90 = v140[0];
              v91 = v85 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
              v92 = *(v127 + 72);
              v93 = v128;
              do
              {
                sub_1004E46C0(v91, v78, type metadata accessor for LocalFindableAccessoryRecord);
                v140[0] = v90;
                v95 = v90[2];
                v94 = v90[3];
                if (v95 >= v94 >> 1)
                {
                  sub_100025B1C((v94 > 1), v95 + 1, 1);
                  v93 = v128;
                  v90 = v140[0];
                }

                v145 = v93;
                v146 = sub_1004DB51C(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord);
                v96 = sub_1000280DC(&v144);
                sub_1004E46C0(v78, v96, type metadata accessor for LocalFindableAccessoryRecord);
                v90[2] = v95 + 1;
                sub_10000A748(&v144, &v90[5 * v95 + 4]);
                sub_1004E4A04(v78, type metadata accessor for LocalFindableAccessoryRecord);
                v91 += v92;
                --v89;
              }

              while (v89);
              v72 = v138;
              v74 = v137;
              v77 = v136;
              v76 = v139;
            }

            else
            {

              v90 = _swiftEmptyArrayStorage;
            }

            sub_1004BF6E4(v90, &v147);
          }

          else
          {
            v79 = v148;
            v80 = v149;
            v81 = sub_1000035D0(&v147, v148);

            v83 = v81;
            v78 = v131;
            sub_1004D9464(v82, v83, v134, v79, v80);
          }
        }

        else
        {
          if (!v86)
          {

            v87 = v85;
            if (v135)
            {
              v88 = dispatch_group_create();
              dispatch_group_enter(v88);
            }

            else
            {
              v88 = 0;
            }

            sub_10001F280(&v147, &v144);
            v102 = swift_allocObject();
            v102[2] = v87;
            v102[3] = v88;
            v103 = v134;
            v102[4] = v134;
            sub_10000A748(&v144, (v102 + 5));
            v104 = type metadata accessor for Transaction();
            __chkstk_darwin(v104);
            *&v121[-48] = v103;
            *&v121[-40] = &v147;
            *&v121[-32] = v129;
            *&v121[-24] = v87;
            *&v121[-16] = sub_1004E2E60;
            *&v121[-8] = v102;
            v105 = v88;
            v139 = v87;

            static Transaction.named<A>(_:with:)();

            if (v88)
            {
              v106 = v105;
              v107 = v125;
              static DispatchTime.now()();
              v108 = v124;
              + infix(_:_:)();
              v109 = *v133;
              v110 = v126;
              (*v133)(v107, v126);
              OS_dispatch_group.wait(timeout:)();

              v111 = v108;
              v72 = v138;
              v109(v111, v110);
              v78 = v131;
              v74 = v137;
              v77 = v136;
            }

            else
            {
              v78 = v131;
              v74 = v137;
              v77 = v136;
              v72 = v138;
            }

            if (static DispatchTimeoutResult.== infix(_:_:)())
            {
            }

            else
            {
              type metadata accessor for SPOwnerSessionError(0);
              v140[0] = 4;
              sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v112 = v144;
              swift_willThrow();

              if (qword_101694770 != -1)
              {
                swift_once();
              }

              v113 = type metadata accessor for Logger();
              sub_1000076D4(v113, qword_10177AE10);
              v114 = v112;
              v115 = Logger.logObject.getter();
              v116 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                *v117 = v132;
                v119 = v114;
                v120 = _swift_stdlib_bridgeErrorToNSError();
                *(v117 + 4) = v120;
                *v118 = v120;
                _os_log_impl(&_mh_execute_header, v115, v116, "Failed to fetch owned beacons locations %{public}@", v117, 0xCu);
                sub_10000B3A8(v118, &qword_10169BB30, &unk_10138B3C0);

                v78 = v131;
              }

              else
              {
              }

              v76 = 0;
            }

            goto LABEL_28;
          }

          v97 = v148;
          v98 = v149;
          v99 = sub_1000035D0(&v147, v148);

          v101 = v99;
          v78 = v131;
          sub_1004D6BB8(v100, v101, v134, v97, v98);
        }

LABEL_28:
        ++v75;
      }

      while (v75 != v74);
    }

    sub_100007BAC(&v147);
  }

  else
  {
LABEL_58:
    __break(1u);
  }
}

uint64_t sub_1004D814C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v116 = a1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v120 = v114 - v6;
  v127 = type metadata accessor for Calendar.Component();
  v132 = *(v127 - 8);
  v7 = *(v132 + 64);
  __chkstk_darwin(v127);
  v141 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Calendar();
  v131 = *(v139 - 8);
  v9 = *(v131 + 64);
  __chkstk_darwin(v139);
  v140 = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v114 - v13;
  v15 = type metadata accessor for Date();
  v128 = *(v15 - 8);
  v16 = *(v128 + 64);
  v17 = __chkstk_darwin(v15);
  v125 = v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v114 - v19;
  v21 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v126 = v114 - v23;
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v122 = *(v24 - 8);
  v25 = *(v122 + 64);
  v26 = __chkstk_darwin(v24);
  v118 = v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v27;
  __chkstk_darwin(v26);
  v121 = v114 - v28;
  v135 = type metadata accessor for OS_dispatch_queue.Attributes();
  v29 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v134 = v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v133 = (v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  v38 = v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for LocationFetcher();
  v40 = *(*(v39 - 1) + 64);
  __chkstk_darwin(v39);
  v117 = (v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151[3] = &_s13DefaultPolicyVN;
  v151[4] = sub_100111A48();
  v42 = swift_allocObject();
  v151[0] = v42;
  v43 = *(a2 + 48);
  *(v42 + 48) = *(a2 + 32);
  *(v42 + 64) = v43;
  *(v42 + 80) = *(a2 + 64);
  *(v42 + 96) = *(a2 + 80);
  v44 = *(a2 + 16);
  *(v42 + 16) = *a2;
  *(v42 + 32) = v44;
  My = type metadata accessor for Feature.FindMy();
  v149 = My;
  v150 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v46 = sub_1000280DC(v148);
  (*(*(My - 8) + 104))(v46, enum case for Feature.FindMy.airlineTravelV2(_:), My);
  sub_100111A9C(a2, &v144);
  LOBYTE(a2) = isFeatureEnabled(_:)();
  sub_100007BAC(v148);
  if ((a2 & 1) == 0)
  {
    return sub_100007BAC(v151);
  }

  v137 = v24;
  v129 = v20;
  v138 = v15;
  v136 = v14;
  v47 = *(v115 + 280);
  sub_10001F280(v151, v148);
  v48 = qword_101694920;
  v130 = v47;

  if (v48 != -1)
  {
LABEL_38:
    swift_once();
  }

  v123 = qword_10177B2E8;

  v124 = sub_100908168(_swiftEmptyArrayStorage);
  v114[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v35 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v34);

  static DispatchQoS.unspecified.getter();
  *&v144 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v50 = v117;
  v117[2] = v49;
  v51 = v39[10];
  v52 = type metadata accessor for DeviceIdentityUtility();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  swift_defaultActor_initialize();
  v56 = v128;
  (*(v128 + 56))(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v138);
  *(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v50 + v51) = v55;
  v57 = v39[11];
  v58 = type metadata accessor for BeaconObservationStore();
  v146 = &off_101632E88;
  v147 = &off_101613BE0;
  v145 = v58;
  v59 = v123;
  *&v144 = v123;
  type metadata accessor for MemberCircleRevokeManager();
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v144, (v60 + 32));
  *(v50 + v57) = v60;
  v61 = v39[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v50 + v61) = swift_allocObject();
  *v50 = v130;
  sub_10001F280(v148, (v50 + 3));
  v62 = v39[8];

  sub_1005CB7C8(v148, v50 + v62);
  sub_100007BAC(v148);
  v50[1] = v59;
  *(v50 + v39[9]) = v124;
  *(v60 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v63 = *(v116 + 16);
  v34 = v127;
  v64 = v126;
  if (!v63)
  {
    v124 = _swiftEmptyArrayStorage;
LABEL_26:
    v101 = v124[2];

    if (v101)
    {
      v102 = swift_allocObject();
      v103 = v116;
      v104 = v115;
      *(v102 + 16) = v116;
      *(v102 + 24) = v104;

      v105 = v103;
      v106 = v117;
      sub_1005CB328(v105, sub_1004E4EF8, v102);

      v107 = v106;
    }

    else
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v108 = type metadata accessor for Logger();
      sub_1000076D4(v108, qword_10177AE40);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v109, v110, "No imported beacons to fetch locations for.", v111, 2u);
      }

      v107 = v117;
    }

    sub_1004E4A04(v107, type metadata accessor for LocationFetcher);
    return sub_100007BAC(v151);
  }

  v39 = 0;
  v38 = (v116 + 32);
  v65 = (v122 + 56);
  LODWORD(v135) = enum case for Calendar.Component.second(_:);
  v134 = (v132 + 104);
  v132 += 8;
  v131 += 8;
  v130 = (v56 + 48);
  v123 = (v56 + 32);
  v124 = _swiftEmptyArrayStorage;
  v128 = v56 + 8;
  v66 = v137;
  v35 = v121;
  v133 = (v122 + 56);
  while (1)
  {
    sub_10001F280(v38, &v144);
    sub_10001F280(&v144, v148);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (!swift_dynamicCast())
    {
      sub_100007BAC(&v144);
      (*v65)(v64, 1, 1, v66);
      sub_10000B3A8(v64, &unk_101698C30, &unk_101392630);
      goto LABEL_6;
    }

    (*v65)(v64, 0, 1, v66);
    sub_10002AAA4(v64, v35, type metadata accessor for SharedBeaconRecord);
    v67 = *(v66 + 72);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v68 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v69 = v148[0];
    KeyPath = swift_getKeyPath();
    v71 = sub_1010790F4(KeyPath, v69);
    if (v72)
    {
      break;
    }

    v73 = *&v71;

    static Calendar.current.getter();
    (*v134)(v141, v135, v34);
    if ((~*&v73 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v73 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v73 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    v74 = v136;
    v75 = v141;
    v76 = v140;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v132)(v75, v34);
    (*v131)(v76, v139);
    v77 = v138;
    if ((*v130)(v74, 1, v138) == 1)
    {
      sub_1004E4A04(v35, type metadata accessor for SharedBeaconRecord);
      sub_100007BAC(&v144);
      sub_10000B3A8(v74, &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v78 = v129;
      (*v123)(v129, v74, v77);
      v79 = v125;
      static Date.trustedNow.getter(v125);
      sub_1004DB51C(&qword_1016C9070, &type metadata accessor for Date);
      v80 = dispatch thunk of static Comparable.< infix(_:_:)();
      v81 = *v128;
      (*v128)(v79, v77);
      if (v80)
      {
        sub_10001F280(&v144, v148);
        v82 = v124;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143 = v82;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = sub_1000084AC(0, v82[2] + 1, 1, v82);
          v143 = v82;
        }

        v64 = v126;
        v85 = v82[2];
        v84 = v82[3];
        if (v85 >= v84 >> 1)
        {
          v124 = sub_1000084AC((v84 > 1), v85 + 1, 1, v82);
          v143 = v124;
        }

        else
        {
          v124 = v82;
        }

        v81(v129, v77);
        sub_1004E4A04(v35, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v144);
        v86 = v149;
        v87 = v150;
        v88 = sub_10015049C(v148, v149);
        v89 = *(*(v86 - 8) + 64);
        __chkstk_darwin(v88);
        v91 = v114 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v92 + 16))(v91);
        sub_100B039C0(v85, v91, &v143, v86, v87);
        sub_100007BAC(v148);
        v34 = v127;
      }

      else
      {
        v93 = type metadata accessor for TaskPriority();
        v94 = v120;
        (*(*(v93 - 8) + 56))(v120, 1, 1, v93);
        v95 = v35;
        v96 = v118;
        sub_1004E46C0(v95, v118, type metadata accessor for SharedBeaconRecord);
        v97 = (*(v122 + 80) + 32) & ~*(v122 + 80);
        v98 = swift_allocObject();
        *(v98 + 16) = 0;
        *(v98 + 24) = 0;
        v99 = v98 + v97;
        v34 = v127;
        v100 = v96;
        v35 = v121;
        sub_10002AAA4(v100, v99, type metadata accessor for SharedBeaconRecord);
        sub_10025EDD4(0, 0, v94, &unk_1013AB0A0, v98);

        v81(v78, v77);
        sub_1004E4A04(v35, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v144);
        v64 = v126;
      }
    }

    v66 = v137;
    v65 = v133;
LABEL_6:
    v38 += 40;
    if (!--v63)
    {
      goto LABEL_26;
    }
  }

  v148[0] = 0;
  v148[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v113._object = 0x800000010134CA80;
  v113._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v113);
  v142 = KeyPath;
  sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004D9464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v138 = a5;
  v116 = a3;
  v139 = a2;
  v117 = a1;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v121 = &v115 - v8;
  v127 = type metadata accessor for Calendar.Component();
  v133 = *(v127 - 8);
  v9 = *(v133 + 64);
  __chkstk_darwin(v127);
  v142 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Calendar();
  v132 = *(v140 - 8);
  v11 = *(v132 + 64);
  __chkstk_darwin(v140);
  v141 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v115 - v15;
  v17 = type metadata accessor for Date();
  v130 = *(v17 - 8);
  v18 = *(v130 + 64);
  v19 = __chkstk_darwin(v17);
  v126 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v115 - v21;
  v23 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v115 - v25;
  v27 = type metadata accessor for SharedBeaconRecord(0);
  v123 = *(v27 - 8);
  v28 = *(v123 + 64);
  v29 = __chkstk_darwin(v27);
  v119 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v30;
  __chkstk_darwin(v29);
  v122 = &v115 - v31;
  v135 = type metadata accessor for OS_dispatch_queue.Attributes();
  v32 = *(*(v135 - 1) + 8);
  __chkstk_darwin(v135);
  v134 = (&v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for DispatchQoS();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v36 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for LocationFetcher();
  v41 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v118 = (&v115 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152[3] = a4;
  v152[4] = v138;
  v43 = sub_1000280DC(v152);
  (*(*(a4 - 8) + 16))(v43, v139, a4);
  My = type metadata accessor for Feature.FindMy();
  v146 = My;
  v147 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v45 = sub_1000280DC(&v145);
  (*(*(My - 8) + 104))(v45, enum case for Feature.FindMy.airlineTravelV2(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v145);
  if ((My & 1) == 0)
  {
    return sub_100007BAC(v152);
  }

  v138 = v27;
  v129 = v22;
  v139 = v17;
  v137 = v16;
  v46 = *(v116 + 280);
  sub_10001F280(v152, v149);
  v47 = qword_101694920;
  v131 = v46;

  if (v47 != -1)
  {
LABEL_38:
    swift_once();
  }

  v125 = qword_10177B2E8;

  v128 = sub_100908168(_swiftEmptyArrayStorage);
  v124 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v37 + 104))(v40, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v36);

  static DispatchQoS.unspecified.getter();
  *&v145 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v49 = v118;
  v118[2] = v48;
  v50 = v136;
  v51 = *(v136 + 40);
  v52 = type metadata accessor for DeviceIdentityUtility();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  swift_defaultActor_initialize();
  v56 = v130;
  (*(v130 + 56))(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, 1, 1, v139);
  *(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v55 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v49 + v51) = v55;
  v57 = v50[11];
  v58 = type metadata accessor for BeaconObservationStore();
  v147 = &off_101632E88;
  v148 = &off_101613BE0;
  v146 = v58;
  v59 = v125;
  *&v145 = v125;
  type metadata accessor for MemberCircleRevokeManager();
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v145, (v60 + 32));
  *(v49 + v57) = v60;
  v61 = v50[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v49 + v61) = swift_allocObject();
  *v49 = v131;
  sub_10001F280(v149, (v49 + 3));
  v62 = v50[8];

  sub_1005CB7C8(v149, v49 + v62);
  sub_100007BAC(v149);
  v49[1] = v59;
  *(v49 + v50[9]) = v128;
  *(v60 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v63 = *(v117 + 16);
  v64 = v127;
  if (!v63)
  {
    v125 = _swiftEmptyArrayStorage;
LABEL_26:
    v102 = v125[2];

    if (v102)
    {
      v103 = swift_allocObject();
      v104 = v117;
      v105 = v116;
      *(v103 + 16) = v117;
      *(v103 + 24) = v105;

      v106 = v104;
      v107 = v118;
      sub_1005CB328(v106, sub_1004E4EF8, v103);

      v108 = v107;
    }

    else
    {
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_1000076D4(v109, qword_10177AE40);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "No imported beacons to fetch locations for.", v112, 2u);
      }

      v108 = v118;
    }

    sub_1004E4A04(v108, type metadata accessor for LocationFetcher);
    return sub_100007BAC(v152);
  }

  v36 = 0;
  v40 = (v117 + 32);
  v65 = (v123 + 56);
  LODWORD(v136) = enum case for Calendar.Component.second(_:);
  v135 = (v133 + 104);
  v133 += 8;
  v132 += 8;
  v131 = (v56 + 48);
  v124 = (v56 + 32);
  v125 = _swiftEmptyArrayStorage;
  v128 = (v56 + 8);
  v66 = v138;
  v37 = v122;
  v134 = (v123 + 56);
  while (1)
  {
    sub_10001F280(v40, &v145);
    sub_10001F280(&v145, v149);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    if (!swift_dynamicCast())
    {
      sub_100007BAC(&v145);
      (*v65)(v26, 1, 1, v66);
      sub_10000B3A8(v26, &unk_101698C30, &unk_101392630);
      goto LABEL_6;
    }

    (*v65)(v26, 0, 1, v66);
    sub_10002AAA4(v26, v37, type metadata accessor for SharedBeaconRecord);
    v67 = *(v66 + 72);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v68 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v69 = v149[0];
    KeyPath = swift_getKeyPath();
    v71 = sub_1010790F4(KeyPath, v69);
    if (v72)
    {
      break;
    }

    v73 = *&v71;

    static Calendar.current.getter();
    (*v135)(v142, v136, v64);
    if ((~*&v73 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v73 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v73 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    v74 = v137;
    v75 = v141;
    v76 = v142;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*v133)(v76, v64);
    (*v132)(v75, v140);
    v77 = v139;
    if ((*v131)(v74, 1, v139) == 1)
    {
      sub_1004E4A04(v37, type metadata accessor for SharedBeaconRecord);
      sub_100007BAC(&v145);
      sub_10000B3A8(v74, &unk_101696900, &unk_10138B1E0);
      v66 = v138;
      v65 = v134;
    }

    else
    {
      v130 = v36;
      v78 = v129;
      (*v124)();
      v79 = v126;
      static Date.trustedNow.getter(v126);
      sub_1004DB51C(&qword_1016C9070, &type metadata accessor for Date);
      v80 = dispatch thunk of static Comparable.< infix(_:_:)();
      v81 = *v128;
      (*v128)(v79, v77);
      if (v80)
      {
        sub_10001F280(&v145, v149);
        v82 = v125;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = v82;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = sub_1000084AC(0, v82[2] + 1, 1, v82);
          v144 = v82;
        }

        v85 = v82[2];
        v84 = v82[3];
        if (v85 >= v84 >> 1)
        {
          v125 = sub_1000084AC((v84 > 1), v85 + 1, 1, v82);
          v144 = v125;
        }

        else
        {
          v125 = v82;
        }

        (v81)(v78, v77);
        sub_1004E4A04(v37, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v145);
        v86 = v150;
        v87 = v151;
        v88 = sub_10015049C(v149, v150);
        v89 = *(*(v86 - 8) + 64);
        __chkstk_darwin(v88);
        v91 = &v115 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v92 + 16))(v91);
        sub_100B039C0(v85, v91, &v144, v86, v87);
        sub_100007BAC(v149);
        v64 = v127;
      }

      else
      {
        v93 = type metadata accessor for TaskPriority();
        v94 = v121;
        (*(*(v93 - 8) + 56))(v121, 1, 1, v93);
        v95 = v37;
        v96 = v26;
        v97 = v119;
        sub_1004E46C0(v95, v119, type metadata accessor for SharedBeaconRecord);
        v98 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v99 = swift_allocObject();
        *(v99 + 16) = 0;
        *(v99 + 24) = 0;
        v100 = v99 + v98;
        v64 = v127;
        v101 = v97;
        v26 = v96;
        v37 = v122;
        sub_10002AAA4(v101, v100, type metadata accessor for SharedBeaconRecord);
        sub_10025EDD4(0, 0, v94, &unk_1013AAF98, v99);

        (v81)(v129, v77);
        sub_1004E4A04(v37, type metadata accessor for SharedBeaconRecord);
        sub_100007BAC(&v145);
      }

      v66 = v138;
      v65 = v134;
      v36 = v130;
    }

LABEL_6:
    v40 += 40;
    if (!--v63)
    {
      goto LABEL_26;
    }
  }

  v149[0] = 0;
  v149[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  v114._object = 0x800000010134CA80;
  v114._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v114);
  v143 = KeyPath;
  sub_1000BC4D4(&unk_101698C60, &qword_1013907B0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004DA760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v69 - v9;
  v11 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v69 - v13;
  v15 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v69 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  if (*(a2 + 8))
  {
    return 0;
  }

  v70 = v4;
  v27 = *(a2 + 16);
  if (*(v27 + 16) != 1)
  {
    return 0;
  }

  v71 = v25;
  v72 = &v69 - v26;
  sub_100111A9C(a2, v74);
  if (*(v27 + 32) == 1)
  {

    sub_1001119F4(a2);
    goto LABEL_6;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1001119F4(a2);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v29 = swift_allocObject();
  *(v29 + 16) = 2;
  v30 = a1;
  v31 = sub_100035730(a1, sub_1004E2F0C, v29);

  sub_1012BB138(v31, v14);

  v32 = type metadata accessor for BeaconObservation();
  if ((*(*(v32 - 8) + 48))(v14, 1, v32) == 1)
  {
    sub_10000B3A8(v14, &qword_1016A42E0, &qword_1013B0010);
    v33 = v20;
    v34 = v71;
    (*(v20 + 56))(v18, 1, 1, v71);
    static Date.distantPast.getter();
    if ((*(v20 + 48))(v18, 1, v34) != 1)
    {
      sub_10000B3A8(v18, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v33 = v20;
    v35 = v71;
    (*(v20 + 16))(v18, &v14[*(v32 + 20)], v71);
    sub_1004E4A04(v14, type metadata accessor for BeaconObservation);
    (*(v20 + 56))(v18, 0, 1, v35);
    (*(v20 + 32))(v72, v18, v35);
  }

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v36 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074054(v74[0]);
  v38 = v37;

  v39 = v38 * 3.0;
  static Date.trustedNow.getter(v24);
  Date.timeIntervalSince(_:)();
  v41 = v40;
  v44 = *(v33 + 8);
  v43 = v33 + 8;
  v42 = v44;
  v44(v24, v71);
  if (v39 >= fabs(v41))
  {
    v56 = v73;
    if (qword_101694770 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000076D4(v57, qword_10177AE10);
    v58 = v70;
    (*(v56 + 16))(v8, v30, v70);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = v56;
      v63 = swift_slowAlloc();
      v74[0] = v63;
      *v61 = 141558275;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v43;
      v66 = v65;
      (*(v62 + 8))(v8, v58);
      v67 = sub_1000136BC(v64, v66, v74);

      *(v61 + 14) = v67;
      _os_log_impl(&_mh_execute_header, v59, v60, "Not allowed to exhaustively fetch beacon %{private,mask.hash}s based on policy.", v61, 0x16u);
      sub_100007BAC(v63);
    }

    else
    {

      (*(v56 + 8))(v8, v58);
    }

    v42(v72, v71);
    return 0;
  }

  v45 = v73;
  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000076D4(v46, qword_10177AE10);
  v47 = v70;
  (*(v45 + 16))(v10, v30, v70);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v74[0] = v51;
    *v50 = 141558275;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v43;
    v54 = v53;
    (*(v45 + 8))(v10, v47);
    v55 = sub_1000136BC(v52, v54, v74);

    *(v50 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Allowed to exhaustively fetch beacon %{private,mask.hash}s based on policy.", v50, 0x16u);
    sub_100007BAC(v51);
  }

  else
  {

    (*(v45 + 8))(v10, v47);
  }

  v42(v72, v71);
  return 1;
}

char *sub_1004DB088(uint64_t a1, uint64_t a2, char *a3)
{
  v32 = a2;
  v31 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v29);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TagCommandManager();
  v36 = &off_101637F28;
  *&v34 = a1;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v26[1] = "eted with error (%@)";
  v27 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v12 = *(v8 + 104);
  v28 = v8 + 104;
  v30 = v12;
  v12(v11);
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  v26[0] = sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a3 + 7) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30(v11, v27, v29);
  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(a3 + 8) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a3 + 9) = _swiftEmptyArrayStorage;
  *&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon] = 0;
  v13 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playFuture;
  v14 = sub_1000BC4D4(&qword_1016A24A0, &qword_1013AAFE8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&a3[v13] = Future.init()();
  v17 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopFuture;
  v18 = *(v14 + 48);
  v19 = *(v14 + 52);
  swift_allocObject();
  *&a3[v17] = Future.init()();
  v20 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v23(&a3[v20], 1, 1, v21);
  v23(&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier], 1, 1, v21);
  *&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError] = 0;
  *&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError] = 0;
  v24 = &a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  sub_10000A748(&v34, (a3 + 16));
  (*(v22 + 32))(&a3[OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier], v32, v21);
  return a3;
}

uint64_t sub_1004DB51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004DB564()
{
  _StringGuts.grow(_:)(55);
  v0._object = 0x8000000101356BE0;
  v0._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x69446D6F7266202CLL;
  v2._object = 0xEC000000203A6B73;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 1702195828;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6E6575716573202CLL;
  v4._object = 0xED0000203A736563;
  String.append(_:)(v4);
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  _StringGuts.grow(_:)(71);
  v7._countAndFlagsBits = 0x6974737561687865;
  v7._object = 0xEC000000203A6576;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x65736C6166;
  v8._object = 0xE500000000000000;
  String.append(_:)(v8);
  v9._object = 0x8000000101356C00;
  v9._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v9);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x8000000101356C20;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 1702195828;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.append(_:)(v13);

  return 0;
}

uint64_t sub_1004DB7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = a3;
  v24 = a4;
  v22 = sub_1000BC4D4(&qword_1016A2490, &unk_1013B3200);
  v7 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v9 = &v21 - v8;
  v25 = a1;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(a2 + 48);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(v9, v19 + *(*(v20 - 8) + 72) * v18, v20);
    *&v9[*(v22 + 48)] = *(*(a2 + 56) + 8 * v18);

    sub_1004BAE4C(&v25, v9, v23, v24);
    result = sub_10000B3A8(v9, &qword_1016A2490, &unk_1013B3200);
    if (v4)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return v25;
    }

    v12 = *(a2 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1004DB99C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_10001F280(v2, v18);
    if (sub_1004ACE8C(v18))
    {
      sub_10000A748(v18, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100025B1C(0, v3[2] + 1, 1);
        v3 = v19;
      }

      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100025B1C((v5 > 1), v6 + 1, 1);
      }

      v7 = v16;
      v8 = v17;
      v9 = sub_10015049C(v15, v16);
      v10 = *(*(v7 - 8) + 64);
      __chkstk_darwin(v9);
      v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12);
      sub_1006252D4(v6, v12, &v19, v7, v8);
      sub_100007BAC(v15);
      v3 = v19;
    }

    else
    {
      sub_100007BAC(v18);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1004DBB74(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v109 = a3;
  v116 = a1;
  v120 = type metadata accessor for UUID();
  v105 = *(v120 - 8);
  v12 = *(v105 + 64);
  __chkstk_darwin(v120);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v114 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v113 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v110 = *(v20 - 8);
  v111 = v20;
  v21 = *(v110 + 64);
  __chkstk_darwin(v20);
  v112 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for LocationFetcher();
  v23 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v118 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a5;
  v25[4] = a6;
  v25[5] = a7;
  v117 = v25;
  v27 = a2[3];
  v26 = a2[4];
  v28 = sub_1000035D0(a2, v27);
  v29 = *(v26 + 24);
  v107 = v28;
  v108 = v29;
  v104 = a4;
  v100 = a4;
  v101 = a5;

  v103 = a6;

  v102 = a7;

  v30 = v108(v27, v26);
  v31 = a2[3];
  v32 = a2[4];
  sub_1000035D0(a2, v31);
  v33 = (*(v32 + 48))(v31, v32);
  v35 = v34;
  v37 = v36;
  v39 = a2[3];
  v38 = a2[4];
  sub_1000035D0(a2, v39);
  v40 = (*(v38 + 56))(v39, v38);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v41 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v42 = sub_1010741C0(v131);

  My = type metadata accessor for Feature.FindMy();
  *(&v132 + 1) = My;
  *&v133 = sub_1004DB51C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v44 = sub_1000280DC(&v131);
  (*(*(My - 8) + 104))(v44, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v131);
  *&v131 = v42;
  BYTE8(v131) = v30 & 1;
  *&v132 = &off_1016091F8;
  BYTE8(v132) = v33;
  *&v133 = v35;
  *(&v133 + 1) = v37;
  *&v134 = v40;
  BYTE8(v134) = My & 1;
  v135 = 0uLL;
  v136 = 1;
  v130 = 1;
  v129[2] = v133;
  v129[3] = v134;
  v129[4] = 0u;
  v129[0] = v131;
  v129[1] = v132;
  v45 = *(v109 + 280);
  v127 = &_s13DefaultPolicyVN;
  v128 = sub_100111A48();
  v46 = swift_allocObject();
  v126[0] = v46;
  v47 = v134;
  *(v46 + 48) = v133;
  *(v46 + 64) = v47;
  *(v46 + 80) = v135;
  *(v46 + 96) = v136;
  v48 = v132;
  *(v46 + 16) = v131;
  *(v46 + 32) = v48;
  v109 = v45;

  sub_100111A9C(&v131, &v122);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v49 = qword_10177B2E8;

  v108 = sub_100908168(_swiftEmptyArrayStorage);
  v50 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v106 = "apply(changeSet:)";
  v107 = v50;
  (*(v110 + 104))(v112, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v111);

  static DispatchQoS.unspecified.getter();
  *&v122 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v52 = v118;
  *(v118 + 2) = v51;
  v53 = v115;
  v54 = *(v115 + 40);
  v55 = type metadata accessor for DeviceIdentityUtility();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  v58 = swift_allocObject();
  swift_defaultActor_initialize();
  v59 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v60 = type metadata accessor for Date();
  (*(*(v60 - 8) + 56))(v58 + v59, 1, 1, v60);
  *(v58 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v58 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v58 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v52 + v54) = v58;
  v61 = v53[11];
  v62 = type metadata accessor for BeaconObservationStore();
  v124 = &off_101632E88;
  v125 = &off_101613BE0;
  v123 = v62;
  *&v122 = v49;
  type metadata accessor for MemberCircleRevokeManager();
  v63 = swift_allocObject();
  *(v63 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v122, (v63 + 32));
  *(v52 + v61) = v63;
  v64 = v53[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v52 + v64) = swift_allocObject();
  *v52 = v109;
  sub_10001F280(v126, (v52 + 3));
  v65 = v53[8];

  sub_1005CB7C8(v126, v52 + v65);
  sub_100007BAC(v126);
  v119 = v49;
  v52[1] = v49;
  *(v52 + v53[9]) = v108;
  *(v63 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  if (qword_101694770 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  v67 = sub_1000076D4(v66, qword_10177AE10);
  sub_100111A9C(&v131, &v122);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  sub_1001119F4(&v131);
  v70 = os_log_type_enabled(v68, v69);
  v115 = v67;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v126[0] = v72;
    *v71 = 136446210;
    v73 = sub_100111A9C(&v131, &v122);
    v74 = sub_1004D5340(v73);
    v76 = v75;
    sub_1001119F4(&v131);
    v77 = sub_1000136BC(v74, v76, v126);

    *(v71 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v68, v69, "Exhaustive fetch with internal policy %{public}s.", v71, 0xCu);
    sub_100007BAC(v72);
  }

  v78 = *(v116 + 16);
  if (v78)
  {
    v79 = v116 + 32;
    v80 = (v105 + 8);
    v81 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v79, &v122);
      v83 = v123;
      v82 = v124;
      sub_1000035D0(&v122, v123);
      (*(*(v82[1] + 1) + 32))(v83);
      LOBYTE(v82) = sub_1004DA760(v14, v129);
      (*v80)(v14, v120);
      if (v82)
      {
        sub_10000A748(&v122, v126);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v81[2] + 1, 1);
          v81 = v121;
        }

        v86 = v81[2];
        v85 = v81[3];
        if (v86 >= v85 >> 1)
        {
          sub_100025B1C((v85 > 1), v86 + 1, 1);
        }

        v87 = v127;
        v88 = v128;
        v89 = sub_10015049C(v126, v127);
        v90 = *(v87[-1].Description + 8);
        __chkstk_darwin(v89);
        v92 = &v99 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v93 + 16))(v92);
        sub_1006252D4(v86, v92, &v121, v87, v88);
        sub_100007BAC(v126);
        v81 = v121;
      }

      else
      {
        sub_100007BAC(&v122);
      }

      v79 += 40;
      --v78;
    }

    while (v78);
  }

  else
  {
    v81 = _swiftEmptyArrayStorage;
  }

  sub_1001119F4(&v131);
  if (v81[2])
  {
    v94 = v118;
    sub_10088FFE4(v81, sub_1004E2F00, v117);
  }

  else
  {

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Skipping exhaustive fetch since all beacons located recently.", v97, 2u);
    }

    sub_100909778(_swiftEmptyArrayStorage);
    Transaction.capture()();
    sub_100A4165C(v102);
    v94 = v118;
    if (v104)
    {
      dispatch_group_leave(v100);
    }
  }

  sub_1004E4A04(v94, type metadata accessor for LocationFetcher);
}

void sub_1004DC7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  static SystemInfo.lockState.getter();
  (*(v7 + 104))(v11, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
  sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14)
  {
    type metadata accessor for SPOwnerSessionError(0);
    v16 = 16;
  }

  else
  {
    v17 = *(a2 + 280);
    sub_100025020(a1, &v24);
    if (v25)
    {
      sub_10000A748(&v24, v26);
      v18 = objc_autoreleasePoolPush();
      sub_1006AAA30(a2, v26, &v23, &v24);
      objc_autoreleasePoolPop(v18);
      v21 = v24;
      (*(a3 + 16))(a3, v24, 0);

      sub_100007BAC(v26);
      return;
    }

    sub_10000B3A8(&v24, &qword_101696920, &unk_10138B200);
    type metadata accessor for SPOwnerSessionError(0);
    v16 = 2;
  }

  *&v24 = v16;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v19 = v26[0];
  v20 = _convertErrorToNSError(_:)();
  (*(a3 + 16))(a3, 0, v20);
}

void sub_1004DCAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  static SystemInfo.lockState.getter();
  (*(v7 + 104))(v11, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
  sub_1004DB51C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14)
  {
    type metadata accessor for SPOwnerSessionError(0);
    *&v21 = 16;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v23[0];
    v17 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v17);
  }

  else
  {
    v18 = *(a2 + 280);
    sub_100ACBC98(a1, &v21);
    if (v22)
    {
      sub_10000A748(&v21, v23);
      v19 = sub_100B10ADC(v23);
      sub_1009097B0(_swiftEmptyArrayStorage);
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_1004DB51C(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 setTaskInformation:isa];

      (*(a3 + 16))(a3, v19, 0);
      sub_100007BAC(v23);
      return;
    }

    sub_10000B3A8(&v21, &unk_1016AA480, &unk_1013BD050);
    type metadata accessor for SPOwnerSessionError(0);
    *&v21 = 17;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v23[0];
    v17 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v17);
  }
}

uint64_t sub_1004DCECC(uint64_t a1)
{
  v1[28] = a1;
  v2 = type metadata accessor for UUID();
  v1[29] = v2;
  v3 = *(v2 - 8);
  v1[30] = v3;
  v1[31] = *(v3 + 64);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v1[34] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v6 = type metadata accessor for BeaconProductInfoRecord();
  v1[36] = v6;
  v7 = *(v6 - 8);
  v1[37] = v7;
  v8 = *(v7 + 64) + 15;
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_1004DD038, 0, 0);
}

uint64_t sub_1004DD038()
{
  v13 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[28];
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v12);
    *(v5 + 12) = 2082;
    v6 = sub_1010D74EC(v4);
    v8 = sub_1000136BC(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s with %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v0[40] = v10;
  *v10 = v0;
  v10[1] = sub_1004DD230;

  return daemon.getter();
}

uint64_t sub_1004DD230(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  *(v3 + 328) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 336) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1004DB51C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1004DB51C(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1004DD40C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1004DD40C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  if (v1)
  {
    v7 = sub_1004DE618;
    v8 = 0;
  }

  else
  {
    v9 = v4[41];

    v7 = sub_1004DD544;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1004DD544()
{
  v1 = *(v0 + 344);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_1004DD630;
  v5 = *(v0 + 344);

  return unsafeBlocking<A>(context:_:)(v0 + 216, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_1004DD630()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return _swift_task_switch(sub_1004DD748, v2, 0);
}

uint64_t sub_1004DD76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = v3;
  v4 = v3[46];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    v8 = _swiftEmptyArrayStorage;
    v45 = v3[46];
    while (v6 < *(v4 + 16))
    {
      sub_10001F280(v7, (v3 + 2));
      v9 = v3[5];
      v10 = v3[6];
      sub_1000035D0(v3 + 2, v9);
      if ((*(v10 + 112))(v9, v10))
      {
        sub_10000A748(v3 + 1, (v3 + 7));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v8[2] + 1, 1);
          v8 = v46;
        }

        v12 = v5;
        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          sub_100025B1C((v13 > 1), v14 + 1, 1);
        }

        v15 = v3[10];
        v16 = v3[11];
        v17 = sub_10015049C((v3 + 7), v15);
        v18 = *(v15 - 8);
        v19 = *(v18 + 64) + 15;
        v20 = swift_task_alloc();
        (*(v18 + 16))(v20, v17, v15);
        sub_1006252D4(v14, v20, &v46, v15, v16);
        sub_100007BAC(v3 + 7);

        v5 = v12;
        v4 = v45;
        v8 = v46;
      }

      else
      {
        a1 = sub_100007BAC(v3 + 2);
      }

      ++v6;
      v7 += 40;
      if (v5 == v6)
      {
        v21 = v3[46];
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_14:
  v3[47] = v8;

  v22 = v8[2];
  v3[48] = v22;
  if (v22)
  {
    v3[49] = 0;
    v23 = v3[47];
    if (*(v23 + 16))
    {
      v24 = v3[43];
      v25 = v3[33];
      sub_10001F280(v23 + 32, (v3 + 12));
      v26 = v3[15];
      v27 = v3[16];
      sub_1000035D0(v3 + 12, v26);
      (*(*(*(v27 + 8) + 8) + 32))(v26);
      a1 = sub_1004DDBA4;
      a2 = v24;
      a3 = 0;

      return _swift_task_switch(a1, a2, a3);
    }

LABEL_25:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v28 = v3[47];
  v29 = v3[39];

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v3[43];
  if (v32)
  {
    v34 = v3[28];
    v35 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v46);
    *(v35 + 12) = 2082;
    v36 = sub_1010D74EC(v34);
    v38 = sub_1000136BC(v36, v37, &v46);

    *(v35 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s Found no accessory with %{public}s", v35, 0x16u);
    swift_arrayDestroy();
  }

  v39 = v3[38];
  v40 = v3[35];
  v42 = v3[32];
  v41 = v3[33];

  v43 = v3[1];

  return v43(0);
}

uint64_t sub_1004DDBA4()
{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[29];
  (*(v3 + 16))(v2, v0[33], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[50] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  v8[1] = sub_1004DDCFC;
  v10 = v0[34];
  v9 = v0[35];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1004E4A64, v6, v10);
}

uint64_t sub_1004DDCFC()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 264);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v9 = *v0;

  v7 = *(v5 + 8);
  *(v1 + 416) = v7;
  *(v1 + 424) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);

  return _swift_task_switch(sub_1004DDE84, 0, 0);
}

uint64_t sub_1004DDE84()
{
  v72 = v0;
  v1 = v0[36];
  v2 = v0[35];
  if ((*(v0[37] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[39];
    sub_10000B3A8(v2, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10001F280((v0 + 12), (v0 + 17));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[52];
      v69 = v0[53];
      v7 = v0[33];
      v8 = v0[29];
      v9 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v9 = 136315651;
      *(v9 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v71);
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      v11 = v0[20];
      v10 = v0[21];
      sub_1000035D0(v0 + 17, v11);
      (*(*(*(v10 + 8) + 8) + 32))(v11);
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v6(v7, v8);
      sub_100007BAC(v0 + 17);
      v15 = sub_1000136BC(v12, v14, &v71);

      *(v9 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Missing product info for %{private,mask.hash}s!", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC(v0 + 17);
    }
  }

  else
  {
    v16 = v0[38];
    v17 = v0[28];
    sub_10002AAA4(v2, v16, type metadata accessor for BeaconProductInfoRecord);
    v18 = *(v16 + *(v1 + 80));
    if ((v17 & ~sub_1010D73CC(v18)) == 0)
    {
      v19 = v0[47];
      v20 = v0[39];

      sub_10001F280((v0 + 12), (v0 + 22));
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v66 = v0[52];
        v67 = v0[53];
        v68 = v0[43];
        v70 = v0[38];
        v23 = v0[33];
        v24 = v0[29];
        v25 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v25 = 136315907;
        *(v25 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v71);
        *(v25 + 12) = 2160;
        *(v25 + 14) = 1752392040;
        *(v25 + 22) = 2081;
        v27 = v0[25];
        v26 = v0[26];
        sub_1000035D0(v0 + 22, v27);
        (*(*(*(v26 + 8) + 8) + 32))(v27);
        sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v66(v23, v24);
        sub_100007BAC(v0 + 22);
        v31 = sub_1000136BC(v28, v30, &v71);

        *(v25 + 24) = v31;
        *(v25 + 32) = 2082;
        v32 = sub_1010D840C(v18);
        v34 = sub_1000136BC(v32, v33, &v71);

        *(v25 + 34) = v34;
        _os_log_impl(&_mh_execute_header, v21, v22, "%s Found %{private,mask.hash}s with %{public}s", v25, 0x2Au);
        swift_arrayDestroy();

        sub_1004E4A04(v70, type metadata accessor for BeaconProductInfoRecord);
      }

      else
      {
        v58 = v0[43];
        v59 = v0[38];

        sub_1004E4A04(v59, type metadata accessor for BeaconProductInfoRecord);
        sub_100007BAC(v0 + 22);
      }

      sub_100007BAC(v0 + 12);
      v51 = 1;
LABEL_19:
      v60 = v0[38];
      v61 = v0[35];
      v63 = v0[32];
      v62 = v0[33];

      v64 = v0[1];

      return v64(v51);
    }

    sub_1004E4A04(v0[38], type metadata accessor for BeaconProductInfoRecord);
  }

  v35 = v0[48];
  v36 = v0[49] + 1;
  v37 = sub_100007BAC(v0 + 12);
  if (v36 == v35)
  {
    v40 = v0[47];
    v41 = v0[39];

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v0[43];
    if (v44)
    {
      v46 = v0[28];
      v47 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v47 = 136315394;
      *(v47 + 4) = sub_1000136BC(0xD000000000000013, 0x8000000101357760, &v71);
      *(v47 + 12) = 2082;
      v48 = sub_1010D74EC(v46);
      v50 = sub_1000136BC(v48, v49, &v71);

      *(v47 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s Found no accessory with %{public}s", v47, 0x16u);
      swift_arrayDestroy();
    }

    v51 = 0;
    goto LABEL_19;
  }

  v52 = v0[49] + 1;
  v0[49] = v52;
  v53 = v0[47];
  if (v52 >= *(v53 + 16))
  {
    __break(1u);
  }

  else
  {
    v54 = v0[43];
    v55 = v0[33];
    sub_10001F280(v53 + 40 * v52 + 32, (v0 + 12));
    v56 = v0[15];
    v57 = v0[16];
    sub_1000035D0(v0 + 12, v56);
    (*(*(*(v57 + 8) + 8) + 32))(v56);
    v37 = sub_1004DDBA4;
    v38 = v54;
    v39 = 0;
  }

  return _swift_task_switch(v37, v38, v39);
}

uint64_t sub_1004DE618()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];

  v6 = v0[1];
  v7 = v0[44];

  return v6(0);
}

void sub_1004DE6B4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v30 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = (v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = v30 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v30[0] = a1;
  sub_10001F280(a1, v32);
  _Block_copy(a3);
  _Block_copy(a3);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    sub_10002AAA4(v19, v17, type metadata accessor for OwnedBeaconRecord);
    _Block_copy(a3);

    sub_100401924(v17, 1, a2, a3);
    _Block_release(a3);

    v21 = type metadata accessor for OwnedBeaconRecord;
    v22 = v17;
LABEL_5:
    sub_1004E4A04(v22, v21);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    sub_10002AAA4(v12, v10, type metadata accessor for SharedBeaconRecord);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10026AE30;
    *(v23 + 24) = v20;

    sub_1003E0AE0(v10, sub_1003FD88C, v23);

    v21 = type metadata accessor for SharedBeaconRecord;
    v22 = v10;
    goto LABEL_5;
  }

  static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  sub_10001F280(v30[0], &v31);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for SPOwnerSessionError(0);
  v30[1] = 0;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v28 = v31;
  v29 = _convertErrorToNSError(_:)();
  (a3)[2](a3, v29);

LABEL_9:
  sub_100007BAC(v32);

  _Block_release(a3);
}

uint64_t sub_1004DEB00(uint64_t a1, uint64_t a2, void (**a3)(const void *, void *))
{
  v44 = type metadata accessor for OwnedBeaconRecord();
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v44);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v43 = &v40 - v16;
  v47 = swift_allocObject();
  *(v47 + 16) = a3;
  v42 = a2;
  v17 = *(a2 + 280);
  v45 = a3;
  _Block_copy(a3);
  v18 = sub_100008CA0();
  v19 = sub_100009324(v18);

  v20 = sub_1000066C8();
  v21 = sub_100009924(v20);

  v51[0] = v19;
  v22 = a1;
  sub_100009AF4(v21);
  v48 = a1;
  sub_1000314D0(sub_1004E44E0, v51[0], v51);

  sub_1000D2A70(v51, v50, &unk_1016AA480, &unk_1013BD050);
  if (v50[3])
  {
    sub_1000BC4D4(&qword_10169EF38, &unk_1013AB040);
    v23 = swift_dynamicCast();
    (*(v12 + 56))(v10, v23 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v24 = v10;
      v25 = v43;
      sub_10002AAA4(v24, v43, type metadata accessor for OwnedBeaconGroup);
      sub_1004E46C0(v25, v15, type metadata accessor for OwnedBeaconGroup);
      v26 = a1;
      v27 = v46;
      sub_1004E46C0(v26, v46, type metadata accessor for OwnedBeaconRecord);
      v28 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v29 = (v13 + *(v41 + 80) + v28) & ~*(v41 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v42;
      sub_10002AAA4(v15, v30 + v28, type metadata accessor for OwnedBeaconGroup);
      sub_10002AAA4(v27, v30 + v29, type metadata accessor for OwnedBeaconRecord);
      v31 = (v30 + ((v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
      v32 = v47;
      *v31 = sub_10001E370;
      v31[1] = v32;

      sub_1003D9064(v22, 0, sub_1004E4500, v30);

      sub_1004E4A04(v43, type metadata accessor for OwnedBeaconGroup);
      sub_10000B3A8(v51, &unk_1016AA480, &unk_1013BD050);
    }
  }

  else
  {
    sub_10000B3A8(v50, &unk_1016AA480, &unk_1013BD050);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_10000B3A8(v10, &unk_1016AF8B0, &unk_1013A0700);
  static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  sub_1004E46C0(a1, v46, type metadata accessor for OwnedBeaconRecord);
  v34 = String.init<A>(describing:)();
  v36 = v35;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100008C00();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  os_log(_:dso:log:_:_:)();

  type metadata accessor for SPOwnerSessionError(0);
  v49 = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v37 = v50[0];
  v38 = _convertErrorToNSError(_:)();
  v45[2](v45, v38);

  sub_10000B3A8(v51, &unk_1016AA480, &unk_1013BD050);
}

uint64_t sub_1004DF188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for OwnedBeaconRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v51 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v24 = v23;
  v26 = v25;
  sub_1000D2A70(v22, v17, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v24 + 48))(v17, 1, v26) == 1)
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    v27 = *(*(a2 + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_1012E7BBC(0);

    return (*(a3 + 16))(a3, 0);
  }

  else
  {
    (*(v24 + 32))(v21, v17, v26);
    v29 = *(a2 + 280);
    sub_100AA33AC(v21, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v52 = v24;
      sub_10000B3A8(v9, &unk_1016A9A20, &qword_10138B280);
      static os_log_type_t.error.getter();
      v30 = a3;
      if (qword_101695050 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v31 = swift_allocObject();
      v51 = xmmword_101385D80;
      *(v31 + 16) = xmmword_101385D80;
      v32 = v21;
      v33 = UUID.uuidString.getter();
      v35 = v34;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_100008C00();
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      os_log(_:dso:log:_:_:)();

      sub_1000BC4D4(&unk_1016B2700, &unk_1013AB050);
      inited = swift_initStackObject();
      *(inited + 16) = v51;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v37;
      v53 = 0;
      v54 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v53 = 0xD00000000000002DLL;
      v54 = 0x80000001013575A0;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v38);

      v39 = v54;
      *(inited + 48) = v53;
      *(inited + 56) = v39;
      v40 = sub_100907E70(inited);
      swift_setDeallocating();
      sub_10000B3A8(inited + 32, &qword_101696D88, &unk_10138B760);
      sub_1006953B0(v40);

      v41 = objc_allocWithZone(NSError);
      v42 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v44 = [v41 initWithDomain:v42 code:500 userInfo:isa];

      v45 = v44;
      v46 = _convertErrorToNSError(_:)();
      (*(v30 + 16))(v30, v46);

      return (*(v52 + 8))(v32, v26);
    }

    else
    {
      v47 = v52;
      sub_10002AAA4(v9, v52, type metadata accessor for OwnedBeaconRecord);
      v48 = *(v29 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v49 = v53;
      v50 = type metadata accessor for Transaction();
      __chkstk_darwin(v50);
      *(&v51 - 6) = v49;
      *(&v51 - 5) = v47;
      *(&v51 - 32) = 2;
      *(&v51 - 3) = 0;
      *(&v51 - 2) = 0;
      static Transaction.named<A>(_:with:)();

      (*(a3 + 16))(a3, 0);
      (*(v24 + 8))(v21, v26);
      return sub_1004E4A04(v47, type metadata accessor for OwnedBeaconRecord);
    }
  }
}

void sub_1004DF8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v44 = type metadata accessor for UUID();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v21 = *(a2 + 280);
  sub_100AA33AC(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177BA08);
    v23 = v44;
    (*(v5 + 16))(v8, a1, v44);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47 = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v5 + 8))(v8, v23);
      v31 = sub_1000136BC(v28, v30, &v47);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to get keySync/keyAlignment record for beacon: %{private,mask.hash}s.", v26, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {

      (*(v5 + 8))(v8, v23);
    }

    type metadata accessor for SPOwnerSessionError(0);
    v46 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1004DB51C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = v47;
    v43 = _convertErrorToNSError(_:)();
    (*(v45 + 16))(v45, v43);
  }

  else
  {
    sub_10002AAA4(v12, v20, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177BA08);
    sub_1004E46C0(v20, v18, type metadata accessor for OwnedBeaconRecord);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 141558275;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      v37 = *(v13 + 20);
      sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1004E4A04(v18, type metadata accessor for OwnedBeaconRecord);
      v41 = sub_1000136BC(v38, v40, &v47);

      *(v35 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Forcing KeyAlignmentRecord update for beacon: %{private,mask.hash}s.", v35, 0x16u);
      sub_100007BAC(v36);
    }

    else
    {

      sub_1004E4A04(v18, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100ABEEFC(v20);
    (*(v45 + 16))(v45, 0);
    sub_1004E4A04(v20, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_1004DFF38(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 184) + 112);

  AnyCurrentValuePublisher.value.getter();

  v5 = *(a1 + 280);
  v6 = sub_100007F54();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v7 = sub_100319914(v6, v5, qword_10177B2E8, v16[0]);

  v8 = v7[2];
  if (v8)
  {
    v19 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (v7 + 4);
    do
    {
      sub_10001F280(v9, v16);
      v10 = v17;
      v11 = v18;
      v12 = sub_1000035D0(v16, v17);
      sub_100B005BC(v12, v5, v10, v11);
      sub_100007BAC(v16);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = v19[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 40;
      --v8;
    }

    while (v8);

    v14 = v19;
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  sub_10000AB68(v14);

  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  sub_10000ABA0();
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1004E0128(uint64_t a1, void *a2, char a3, uint64_t a4, void (*a5)(void *, void *))
{
  v8 = *(a4 + 280);
  sub_100025020(a1, &v22);
  if (!v23)
  {
    sub_10000B3A8(&v22, &qword_101696920, &unk_10138B200);
    sub_1003FD838();
    swift_allocError();
    *v12 = 10;
    v13 = _convertErrorToNSError(_:)();
    a5(_swiftEmptyArrayStorage, v13);
  }

  sub_10000A748(&v22, v25);
  v9 = [a2 sequence];
  if (v9 == 1)
  {
    v10 = [a2 index];
    v23 = &type metadata for PrimaryIndex;
    v11 = sub_10002A2B8();
    goto LABEL_9;
  }

  if (v9 == 2)
  {
    v10 = [a2 index];
    v23 = &type metadata for PrimaryWildIndex;
    v11 = sub_10022A528();
    goto LABEL_9;
  }

  if (v9 != 3)
  {
    sub_1003FD838();
    swift_allocError();
    *v20 = 4;
    v21 = _convertErrorToNSError(_:)();
    a5(_swiftEmptyArrayStorage, v21);

    sub_100007BAC(v25);
  }

  v10 = [a2 index];
  v23 = &type metadata for SecondaryIndex;
  v11 = sub_10022A4D4();
LABEL_9:
  v24 = v11;
  *&v22 = v10;
  v14 = sub_100ABE3A4(v25, &v22, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v16 = v15[2];
  if (v16)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v17 = 4;
    do
    {
      [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v15[v17]];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v17;
      --v16;
    }

    while (v16);
  }

  a5(_swiftEmptyArrayStorage, 0);

  sub_100007BAC(v25);
  return sub_100007BAC(&v22);
}

void sub_1004E03F4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
LABEL_35:
    swift_once();
  }

  v9 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v10 = sub_10107406C(v38);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      static os_log_type_t.default.getter();
      if (qword_101694760 == -1)
      {
LABEL_24:
        os_log(_:dso:log:_:_:)();
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_29:
          sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
          sub_10000ABA0();
          v29.super.isa = Set._bridgeToObjectiveC()().super.isa;
          goto LABEL_33;
        }

LABEL_36:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_100B110DC(_swiftEmptyArrayStorage);
        }

        goto LABEL_29;
      }

LABEL_38:
      swift_once();
      goto LABEL_24;
    }
  }

  v17 = *(a1 + 200);
  if (!v17)
  {
    static os_log_type_t.error.getter();
    if (qword_101694760 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_38;
  }

  v18 = *(v17 + 24);

  AnyCurrentValuePublisher.value.getter();

  if ((v38 & 1) == 0)
  {
    static os_log_type_t.default.getter();
    if (qword_101694760 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    LOBYTE(v38) = 0;
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)();

    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v36 = a2;
  v19 = *(a1 + 280);
  v20 = sub_100025044();
  v21 = _swiftEmptyArrayStorage;
  v38 = _swiftEmptyArrayStorage;
  v22 = v20[2];
  if (v22)
  {
    v23 = 0;
    v35 = v22 - 1;
    do
    {
      a2 = v23;
      while (1)
      {
        if (a2 >= v20[2])
        {
          __break(1u);
          goto LABEL_35;
        }

        sub_1004E46C0(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2, v8, type metadata accessor for OwnedBeaconRecord);
        sub_1004C29A8(v8, a1, &v37);
        sub_1004E4A04(v8, type metadata accessor for OwnedBeaconRecord);
        if (v37)
        {
          break;
        }

        if (v22 == ++a2)
        {
          goto LABEL_30;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v23 = a2 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v38;
    }

    while (v35 != a2);
  }

LABEL_30:

  static os_log_type_t.default.getter();
  if (qword_101694760 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  v31 = Array.description.getter();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_100008C00();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  os_log(_:dso:log:_:_:)();

  sub_10000AB68(v21);

  sub_10000ABA0();
  v29.super.isa = Set._bridgeToObjectiveC()().super.isa;
  a2 = v36;
LABEL_33:
  (*(a2 + 16))(a2, v29.super.isa);
}

uint64_t sub_1004E0A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v56 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v52 = &v44[-v11];
  v12 = __chkstk_darwin(v10);
  v55 = &v44[-v13];
  __chkstk_darwin(v12);
  v15 = &v44[-v14];
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B048);
  v17 = *(v7 + 16);
  v17(v15, v56, v6);
  v51 = v17;
  v17(v55, a2, v6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v50 = a3;
    v21 = v20;
    v47 = swift_slowAlloc();
    v57 = v47;
    *v21 = 136446979;
    *(v21 + 4) = sub_1000136BC(0xD00000000000003ELL, 0x8000000101357410, &v57);
    *(v21 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v48 = a2;
    v46 = v18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v45 = v19;
    v49 = v7;
    v25 = *(v7 + 8);
    v25(v15, v6);
    v26 = sub_1000136BC(v22, v24, &v57);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2081;
    v27 = v55;
    a2 = v48;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v25(v27, v6);
    v7 = v49;
    v31 = sub_1000136BC(v28, v30, &v57);

    *(v21 + 34) = v31;
    v32 = v46;
    _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s", v21, 0x2Au);
    swift_arrayDestroy();

    a3 = v50;
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v55, v6);
    v33(v15, v6);
  }

  v55 = type metadata accessor for Transaction();
  v34 = v51;
  v35 = v52;
  v51(v52, a2, v6);
  v36 = v53;
  v34(v53, v56, v6);
  v37 = *(v7 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = (v8 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 16) = a3;
  *(v40 + 24) = v41;
  v42 = *(v7 + 32);
  v42(v40 + v38, v35, v6);
  v42(v40 + v39, v36, v6);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1004E0F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v56 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v53 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v9);
  v52 = &v44[-v11];
  v12 = __chkstk_darwin(v10);
  v55 = &v44[-v13];
  __chkstk_darwin(v12);
  v15 = &v44[-v14];
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B048);
  v17 = *(v7 + 16);
  v17(v15, v56, v6);
  v51 = v17;
  v17(v55, a2, v6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v50 = a3;
    v21 = v20;
    v47 = swift_slowAlloc();
    v57 = v47;
    *v21 = 136446979;
    *(v21 + 4) = sub_1000136BC(0xD00000000000003DLL, 0x8000000101357480, &v57);
    *(v21 + 12) = 2082;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v48 = a2;
    v46 = v18;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v45 = v19;
    v49 = v7;
    v25 = *(v7 + 8);
    v25(v15, v6);
    v26 = sub_1000136BC(v22, v24, &v57);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2081;
    v27 = v55;
    a2 = v48;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v25(v27, v6);
    v7 = v49;
    v31 = sub_1000136BC(v28, v30, &v57);

    *(v21 + 34) = v31;
    v32 = v46;
    _os_log_impl(&_mh_execute_header, v46, v45, "%{public}s commandIdentifier: %{public}s beaconIdentifier: %{private,mask.hash}s", v21, 0x2Au);
    swift_arrayDestroy();

    a3 = v50;
  }

  else
  {

    v33 = *(v7 + 8);
    v33(v55, v6);
    v33(v15, v6);
  }

  v55 = type metadata accessor for Transaction();
  v34 = v51;
  v35 = v52;
  v51(v52, a2, v6);
  v36 = v53;
  v34(v53, v56, v6);
  v37 = *(v7 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = (v8 + v37 + v38) & ~v37;
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 16) = a3;
  *(v40 + 24) = v41;
  v42 = *(v7 + 32);
  v42(v40 + v38, v35, v6);
  v42(v40 + v39, v36, v6);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1004E1458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B048);
  v34 = *(v7 + 16);
  v34(v12, a1, v6);
  v14 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v33))
  {
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = v15;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v16 = 136446723;
    *(v16 + 4) = sub_1000136BC(0xD000000000000024, 0x80000001013573B0, &v35);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v29 = v14;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v10;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v22 = v21;
    (*(v7 + 8))(v12, v6);
    v23 = sub_1000136BC(v17, v22, &v35);
    a3 = v20;
    a2 = v19;
    a1 = v18;
    v10 = v32;

    *(v16 + 24) = v23;
    v24 = v29;
    _os_log_impl(&_mh_execute_header, v29, v33, "%{public}s beaconIdentifier: %{private,mask.hash}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  type metadata accessor for Transaction();
  v34(v10, a1, v6);
  v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  (*(v7 + 32))(v26 + v25, v10, v6);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1004E1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a4;
  v44 = a8;
  v41 = a7;
  v42 = a3;
  v36[1] = a6;
  v38 = a1;
  v39 = type metadata accessor for UUID();
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  v10 = __chkstk_darwin(v39);
  v40 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v36 - v11;
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v36 - v15;
  static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  v18 = UUID.uuidString.getter();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100008C00();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  os_log(_:dso:log:_:_:)();

  v21 = type metadata accessor for TaskPriority();
  v22 = *(*(v21 - 8) + 56);
  v36[0] = v16;
  v22(v16, 1, 1, v21);
  v23 = v37;
  v24 = *(v37 + 16);
  v25 = v39;
  v24(v12, v38, v39);
  v26 = v40;
  v24(v40, a2, v25);
  v27 = *(v23 + 80);
  v28 = (v27 + 32) & ~v27;
  v29 = (v9 + v27 + v28) & ~v27;
  v30 = (v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v32 = *(v23 + 32);
  v32(v31 + v28, v12, v25);
  v32(v31 + v29, v26, v25);
  v33 = (v31 + v30);
  v34 = v43;
  *v33 = v42;
  v33[1] = v34;

  sub_10025EDD4(0, 0, v36[0], v44, v31);
}

uint64_t sub_1004E1BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = type metadata accessor for BeaconObservation();
  v67 = *(v66 - 8);
  v6 = *(v67 + 64);
  __chkstk_darwin(v66);
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v70 = &v62 - v10;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v85 = &v62 - v13;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v83 = *(v14 - 8);
  v84 = v14;
  v15 = *(v83 + 64);
  __chkstk_darwin(v14);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  __chkstk_darwin(v17);
  v78 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = *(v76 + 64);
  __chkstk_darwin(v20);
  v75 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UUID();
  v23 = *(v74 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v74);
  v65 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v62 - v26;
  v81 = a2;
  v82 = a3;
  static os_log_type_t.default.getter();
  if (a2 | a3)
  {
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100008C00();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
  }

  else
  {
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
  }

  os_log(_:dso:log:_:_:)();

  v36 = v86;
  v72 = *(v86 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue);
  v37 = *(v23 + 16);
  v73 = a1;
  v38 = v74;
  v64 = v23 + 16;
  v63 = v37;
  v37(v27, a1, v74);
  v39 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v40 = swift_allocObject();
  v41 = v82;
  *(v40 + 2) = v81;
  *(v40 + 3) = v41;
  *(v40 + 4) = v36;
  v69 = v23;
  v62 = *(v23 + 32);
  v62(&v40[v39], v27, v38);
  aBlock[4] = sub_1004E25E0;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101622D30;
  v42 = _Block_copy(aBlock);
  swift_errorRetain();
  swift_errorRetain();

  v43 = v75;
  static DispatchQoS.unspecified.getter();
  v87 = _swiftEmptyArrayStorage;
  sub_1004DB51C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v44 = v78;
  v45 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v79 + 8))(v44, v45);
  (*(v76 + 8))(v43, v77);

  v46 = *(v36 + 280);
  v47 = v85;
  sub_100AA33AC(v73, v85);
  v48 = v84;
  if ((*(v83 + 48))(v47, 1, v84) == 1)
  {
    v49 = &unk_1016A9A20;
    v50 = &qword_10138B280;
    return sub_10000B3A8(v47, v49, v50);
  }

  v51 = v71;
  sub_10002AAA4(v47, v71, type metadata accessor for OwnedBeaconRecord);
  v47 = v70;
  sub_1000D2A70(v51 + *(v48 + 28), v70, &qword_1016980D0, &unk_10138F3B0);
  v52 = v69;
  if ((*(v69 + 48))(v47, 1, v38) == 1)
  {
    sub_1004E4A04(v51, type metadata accessor for OwnedBeaconRecord);
    v49 = &qword_1016980D0;
    v50 = &unk_10138F3B0;
    return sub_10000B3A8(v47, v49, v50);
  }

  v54 = v65;
  v62(v65, v47, v38);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v55 = qword_10177B2E8;
  v56 = v68;
  v63(v68, v54, v38);
  v57 = v66;
  static Date.trustedNow.getter(v56 + *(v66 + 20));
  *(v56 + *(v57 + 24)) = 29;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v58 = *(v67 + 72);
  v59 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_101385D80;
  sub_1004E46C0(v56, v60 + v59, type metadata accessor for BeaconObservation);
  v61 = type metadata accessor for Transaction();
  __chkstk_darwin(v61);
  *(&v62 - 4) = v55;
  *(&v62 - 3) = v60;
  *(&v62 - 2) = 0;
  *(&v62 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1004E4A04(v56, type metadata accessor for BeaconObservation);
  (*(v52 + 8))(v54, v38);
  return sub_1004E4A04(v51, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_1004E25E0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1004D3C60(v2, v3, v4, v5);
}

void sub_1004E2648(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v47 = &v40 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v15;
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  if (qword_1016950D8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_1000076D4(v45, qword_10177C430);
  v43 = *(v12 + 16);
  v44 = v12 + 16;
  v43(v18, a1, v11);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v7;
    v40 = v23;
    v48 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_1004DB51C(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = a1;
    v27 = v26;
    (*(v12 + 8))(v18, v11);
    v28 = sub_1000136BC(v24, v27, &v48);
    a1 = v25;

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "SoundPlaybackCoordinator reported soundPlaybackStateChanged: %{private,mask.hash}s.", v22, 0x16u);
    sub_100007BAC(v40);
    v7 = v42;

    v2 = v41;
  }

  else
  {

    (*(v12 + 8))(v18, v11);
  }

  v29 = *(v2 + 280);
  v30 = v47;
  sub_100023184(a1, v47);
  v31 = type metadata accessor for WildModeAssociationRecord(0);
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_10000B3A8(v30, &unk_1016C7C90, &qword_1013BB4B0);
  if (v32 == 1)
  {
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    v43(v16, a1, v11);
    v34 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    (*(v12 + 32))(v35 + v34, v16, v11);
    sub_10025EDD4(0, 0, v7, &unk_1013AAF28, v35);
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v45, qword_10177BA08);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v38, 8u);
    }

    ThrottledDarwinPoster.post(bypassRateLimit:)(1);
    if (v39)
    {
    }
  }
}

uint64_t sub_1004E2BE8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1004D3DEC(a1, v6, v7, v1 + v5);
}

uint64_t sub_1004E2D88()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1004BC8CC();
}

uint64_t sub_1004E2E38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_100A44BBC(v1);
}

uint64_t sub_1004E2E94(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  Transaction.capture()();
  return v3(a1);
}

uint64_t sub_1004E2F38(uint64_t a1)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1004D44F0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1004E3064()
{
  v1 = *(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1004AED5C(v4, v5, v6, v0 + v2, v7, v9, v10);
}

unint64_t sub_1004E3130()
{
  result = qword_1016A2498;
  if (!qword_1016A2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2498);
  }

  return result;
}