uint64_t sub_1007FAE0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  v3[41] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[42] = v6;
  v7 = type metadata accessor for Daemon();
  v3[43] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[44] = v9;
  v10 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1007FAFEC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007FAFEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = v4[20];
    v8 = sub_1007FB368;
  }

  else
  {
    v9 = v4[41];
    v10 = v4[20];
    v4[46] = a1;

    v8 = sub_1007FB12C;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007FB12C()
{
  (*(v0[24] + 56))(v0[35], 1, 1, v0[23]);
  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_1007FB1EC;
  v2 = v0[46];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[19];

  return sub_1010CE7E4(v3, v5, 8, v4);
}

uint64_t sub_1007FB1EC()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 368);
  v5 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 384) = v0;

  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);

  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_1007FBA64;
  }

  else
  {
    v8 = sub_1007FB6B0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007FB368()
{
  v33 = v0;
  v1 = v0[41];

  v2 = v0[45];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = v0[19];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B368);
  sub_1007FF3E4(v4, v3, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v9 = v0[23];
    v10 = v0[21];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v11 = 138543875;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v15 = *(v10 + 20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_10003627C(v8, type metadata accessor for BeaconIdentifier);
    v19 = sub_1000136BC(v16, v18, &v32);

    *(v11 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to send the updated location from a device event: %{public}@for beacon: %{private,mask.hash}s", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v13);
  }

  else
  {
    v20 = v0[22];

    sub_10003627C(v20, type metadata accessor for BeaconIdentifier);
  }

  v21 = v0[39];
  v23 = v0[35];
  v22 = v0[36];
  v24 = v0[34];
  v26 = v0[30];
  v25 = v0[31];
  v28 = v0[26];
  v27 = v0[27];
  v29 = v0[22];
  sub_100007BAC(v0 + 2);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1007FB6B0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v2, 1, v1) == 1)
  {
    v3 = &unk_1016AA500;
    v4 = &unk_1013B3600;
LABEL_5:
    sub_10000B3A8(v2, v3, v4);
    v11 = *(v0 + 312);
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v14 = *(v0 + 272);
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 176);
    sub_100007BAC((v0 + 16));

    v20 = *(v0 + 8);

    return v20();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  sub_100035B84(v2, v5, type metadata accessor for DeviceEvent);
  sub_1000D2A70(v5 + *(v1 + 28), v8, &qword_101699E50, &qword_1013D97C0);
  v9 = (*(v7 + 48))(v8, 1, v6);
  v10 = *(v0 + 312);
  if (v9 == 1)
  {
    v2 = *(v0 + 248);
    sub_10003627C(*(v0 + 312), type metadata accessor for DeviceEvent);
    v3 = &qword_101699E50;
    v4 = &qword_1013D97C0;
    goto LABEL_5;
  }

  sub_100035B84(*(v0 + 248), *(v0 + 272), type metadata accessor for DeviceEvent.Location);
  v22 = 0x10F0F0F0F040200uLL >> (8 * *(v10 + 9));
  *(v0 + 492) = v22;
  v23 = *(v0 + 272);
  v24 = *(v0 + 192);
  v44 = *(v0 + 184);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  *(v0 + 480) = *(*(v0 + 256) + 28);
  v28 = *v23;
  v29 = v23[1];
  v30 = v23[2];
  v31 = sub_1010CBDEC(v22);
  v32 = objc_allocWithZone(SPBeaconLocation);
  v33 = v31;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 392) = [v32 initWithTimestamp:isa latitude:v33 longitude:v28 horizontalAccuracy:v29 source:v30];

  v35 = *(v26 + 208);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v36 = *(v24 + 72);
  v37 = *(v24 + 80);
  *(v0 + 484) = v37;
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101385D80;
  v40 = *(v25 + 20);
  *(v0 + 488) = v40;
  v41 = *(v24 + 16);
  *(v0 + 400) = v41;
  *(v0 + 408) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v39 + v38, v27 + v40, v44);
  *(v0 + 136) = v39;
  AsyncStreamProvider.yield(value:transaction:)();

  v42 = async function pointer to daemon.getter[1];
  v43 = swift_task_alloc();
  *(v0 + 416) = v43;
  *v43 = v0;
  v43[1] = sub_1007FBDA4;

  return daemon.getter();
}

uint64_t sub_1007FBA64()
{
  v32 = v0;
  v1 = v0[48];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[19];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B368);
  sub_1007FF3E4(v3, v2, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v8 = v0[23];
    v9 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v10 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    v14 = *(v9 + 20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_10003627C(v7, type metadata accessor for BeaconIdentifier);
    v18 = sub_1000136BC(v15, v17, &v31);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to send the updated location from a device event: %{public}@for beacon: %{private,mask.hash}s", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
    v19 = v0[22];

    sub_10003627C(v19, type metadata accessor for BeaconIdentifier);
  }

  v20 = v0[39];
  v22 = v0[35];
  v21 = v0[36];
  v23 = v0[34];
  v25 = v0[30];
  v24 = v0[31];
  v27 = v0[26];
  v26 = v0[27];
  v28 = v0[22];
  sub_100007BAC(v0 + 2);

  v29 = v0[1];

  return v29();
}

uint64_t sub_1007FBDA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  v5 = *v1;
  v3[53] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[54] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1007FBF58;
  v10 = v3[44];
  v11 = v3[43];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1007FBF58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v7 = v4[20];
    v8 = sub_1007FC734;
  }

  else
  {
    v9 = v4[53];

    v4[56] = a1;
    v8 = sub_1007FC094;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007FC094()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 408);
  v3 = *(v0 + 484);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  (*(v0 + 400))(v4, *(v0 + 152) + *(v0 + 488), v5);
  v7 = (v3 + 24) & ~v3;
  v8 = swift_allocObject();
  *(v0 + 456) = v8;
  *(v8 + 16) = v1;
  (*(v6 + 32))(v8 + v7, v4, v5);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  v11 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v10 = v0;
  v10[1] = sub_1007FC208;

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC94, v8, v11);
}

uint64_t sub_1007FC208()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v5 = *v0;

  return _swift_task_switch(sub_1007FC334, v3, 0);
}

uint64_t sub_1007FC334()
{
  v1 = v0[56];
  v2 = v0[20];

  v0[59] = v0[18];

  return _swift_task_switch(sub_1007FC3A8, v2, 0);
}

uint64_t sub_1007FC3A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1012BAB18(*(v0 + 472), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v8 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 216), &unk_101696940, &unk_10138B210);
    v9 = *(v8 + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 56);
    v10 = swift_allocObject();
    sub_10000A748((v0 + 56), v10 + 16);
    *(v10 + 56) = v9;
    *(v10 + 64) = v4;
    *(v10 + 72) = v5;

    v11 = v4;
    static Transaction.asyncTask(name:block:)();

LABEL_5:
    sub_10003627C(v7, type metadata accessor for DeviceEvent.Location);
    v23 = v6;
    goto LABEL_7;
  }

  v12 = *(v0 + 480);
  v13 = *(v0 + 272);
  v14 = *(v0 + 224);
  sub_100035B84(*(v0 + 216), *(v0 + 240), type metadata accessor for BeaconEstimatedLocation);
  v15 = *(v14 + 40);
  v16 = static Date.> infix(_:_:)();
  v17 = *(v0 + 392);
  if (v16)
  {
    v18 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v19 = *(v0 + 240);
    v20 = *(*(v0 + 160) + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 96);
    v21 = swift_allocObject();
    sub_10000A748((v0 + 96), v21 + 16);
    *(v21 + 56) = v20;
    *(v21 + 64) = v17;
    *(v21 + 72) = v18;
    v22 = v17;

    static Transaction.asyncTask(name:block:)();

    sub_10003627C(v19, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_5;
  }

  v24 = *(v0 + 312);
  v25 = *(v0 + 272);
  v26 = *(v0 + 240);

  sub_10003627C(v26, type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v25, type metadata accessor for DeviceEvent.Location);
  v23 = v24;
LABEL_7:
  sub_10003627C(v23, type metadata accessor for DeviceEvent);
  v27 = *(v0 + 312);
  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v30 = *(v0 + 272);
  v32 = *(v0 + 240);
  v31 = *(v0 + 248);
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);
  v35 = *(v0 + 176);
  sub_100007BAC((v0 + 16));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1007FC734()
{
  v36 = v0;
  v1 = v0[53];
  v2 = v0[49];
  v3 = v0[39];
  v4 = v0[34];

  sub_10003627C(v4, type metadata accessor for DeviceEvent.Location);
  sub_10003627C(v3, type metadata accessor for DeviceEvent);
  v5 = v0[55];
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v6 = v0[22];
  v7 = v0[19];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B368);
  sub_1007FF3E4(v7, v6, type metadata accessor for BeaconIdentifier);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[22];
    v12 = v0[23];
    v13 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v14 = 138543875;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    v18 = *(v13 + 20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10003627C(v11, type metadata accessor for BeaconIdentifier);
    v22 = sub_1000136BC(v19, v21, &v35);

    *(v14 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to send the updated location from a device event: %{public}@for beacon: %{private,mask.hash}s", v14, 0x20u);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v16);
  }

  else
  {
    v23 = v0[22];

    sub_10003627C(v23, type metadata accessor for BeaconIdentifier);
  }

  v24 = v0[39];
  v26 = v0[35];
  v25 = v0[36];
  v27 = v0[34];
  v29 = v0[30];
  v28 = v0[31];
  v31 = v0[26];
  v30 = v0[27];
  v32 = v0[22];
  sub_100007BAC(v0 + 2);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1007FCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a1;
  v5[20] = a3;
  v9 = type metadata accessor for BeaconIdentifier();
  v5[21] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v5[23] = v11;
  v12 = *(v11 - 8);
  v5[24] = v12;
  v5[25] = *(v12 + 64);
  v5[26] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&unk_101696940, &unk_10138B210) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v14 = type metadata accessor for BeaconEstimatedLocation();
  v5[28] = v14;
  v15 = *(v14 - 8);
  v5[29] = v15;
  v16 = *(v15 + 64) + 15;
  v5[30] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v18 = type metadata accessor for DeviceEvent.Location(0);
  v5[32] = v18;
  v19 = *(v18 - 8);
  v5[33] = v19;
  v20 = *(v19 + 64) + 15;
  v5[34] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v22 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v23 = type metadata accessor for DeviceEvent(0);
  v5[37] = v23;
  v24 = *(v23 - 8);
  v5[38] = v24;
  v25 = *(v24 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  v26 = sub_1000280DC(v5 + 2);
  (*(*(a4 - 8) + 16))(v26, a2, a4);
  v27 = async function pointer to daemon.getter[1];
  v28 = swift_task_alloc();
  v5[40] = v28;
  *v28 = v5;
  v28[1] = sub_1007FCE30;

  return daemon.getter();
}

uint64_t sub_1007FCE30(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  v3[41] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[42] = v6;
  v7 = type metadata accessor for Daemon();
  v3[43] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[44] = v9;
  v10 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1007FD010;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1007FD010(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = v4[20];
    v8 = sub_1007FFC8C;
  }

  else
  {
    v9 = v4[41];
    v10 = v4[20];
    v4[46] = a1;

    v8 = sub_1007FD150;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007FD150()
{
  (*(v0[24] + 56))(v0[35], 1, 1, v0[23]);
  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_1007FD210;
  v2 = v0[46];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[19];

  return sub_1010CE7E4(v3, v5, 8, v4);
}

uint64_t sub_1007FD210()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 368);
  v5 = *(*v1 + 280);
  v6 = *v1;
  *(*v1 + 384) = v0;

  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);

  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_1007FFC88;
  }

  else
  {
    v8 = sub_1007FD38C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007FD38C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  if ((*(*(v0 + 304) + 48))(v2, 1, v1) == 1)
  {
    v3 = &unk_1016AA500;
    v4 = &unk_1013B3600;
LABEL_5:
    sub_10000B3A8(v2, v3, v4);
    v11 = *(v0 + 312);
    v13 = *(v0 + 280);
    v12 = *(v0 + 288);
    v14 = *(v0 + 272);
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v19 = *(v0 + 176);
    sub_100007BAC((v0 + 16));

    v20 = *(v0 + 8);

    return v20();
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  sub_100035B84(v2, v5, type metadata accessor for DeviceEvent);
  sub_1000D2A70(v5 + *(v1 + 28), v8, &qword_101699E50, &qword_1013D97C0);
  v9 = (*(v7 + 48))(v8, 1, v6);
  v10 = *(v0 + 312);
  if (v9 == 1)
  {
    v2 = *(v0 + 248);
    sub_10003627C(*(v0 + 312), type metadata accessor for DeviceEvent);
    v3 = &qword_101699E50;
    v4 = &qword_1013D97C0;
    goto LABEL_5;
  }

  sub_100035B84(*(v0 + 248), *(v0 + 272), type metadata accessor for DeviceEvent.Location);
  v22 = 0x10F0F0F0F040200uLL >> (8 * *(v10 + 9));
  *(v0 + 492) = v22;
  v23 = *(v0 + 272);
  v24 = *(v0 + 192);
  v44 = *(v0 + 184);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v27 = *(v0 + 152);
  *(v0 + 480) = *(*(v0 + 256) + 28);
  v28 = *v23;
  v29 = v23[1];
  v30 = v23[2];
  v31 = sub_1010CBDEC(v22);
  v32 = objc_allocWithZone(SPBeaconLocation);
  v33 = v31;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 392) = [v32 initWithTimestamp:isa latitude:v33 longitude:v28 horizontalAccuracy:v29 source:v30];

  v35 = *(v26 + 208);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v36 = *(v24 + 72);
  v37 = *(v24 + 80);
  *(v0 + 484) = v37;
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_101385D80;
  v40 = *(v25 + 20);
  *(v0 + 488) = v40;
  v41 = *(v24 + 16);
  *(v0 + 400) = v41;
  *(v0 + 408) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v39 + v38, v27 + v40, v44);
  *(v0 + 136) = v39;
  AsyncStreamProvider.yield(value:transaction:)();

  v42 = async function pointer to daemon.getter[1];
  v43 = swift_task_alloc();
  *(v0 + 416) = v43;
  *v43 = v0;
  v43[1] = sub_1007FD740;

  return daemon.getter();
}

uint64_t sub_1007FD740(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  v5 = *v1;
  v3[53] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[54] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_1007FD8F4;
  v10 = v3[44];
  v11 = v3[43];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1007FD8F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v7 = v4[20];
    v8 = sub_1007FFCA4;
  }

  else
  {
    v9 = v4[53];

    v4[56] = a1;
    v8 = sub_1007FDA30;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007FDA30()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 408);
  v3 = *(v0 + 484);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  (*(v0 + 400))(v4, *(v0 + 152) + *(v0 + 488), v5);
  v7 = (v3 + 24) & ~v3;
  v8 = swift_allocObject();
  *(v0 + 456) = v8;
  *(v8 + 16) = v1;
  (*(v6 + 32))(v8 + v7, v4, v5);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  v11 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v10 = v0;
  v10[1] = sub_1007FDBA4;

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC94, v8, v11);
}

uint64_t sub_1007FDBA4()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v5 = *v0;

  return _swift_task_switch(sub_1007FDCD0, v3, 0);
}

uint64_t sub_1007FDCD0()
{
  v1 = v0[56];
  v2 = v0[20];

  v0[59] = v0[18];

  return _swift_task_switch(sub_1007FDD44, v2, 0);
}

uint64_t sub_1007FDD44()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1012BAB18(*(v0 + 472), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v8 = *(v0 + 160);
    sub_10000B3A8(*(v0 + 216), &unk_101696940, &unk_10138B210);
    v9 = *(v8 + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 56);
    v10 = swift_allocObject();
    sub_10000A748((v0 + 56), v10 + 16);
    *(v10 + 56) = v9;
    *(v10 + 64) = v4;
    *(v10 + 72) = v5;

    v11 = v4;
    static Transaction.asyncTask(name:block:)();

LABEL_5:
    sub_10003627C(v7, type metadata accessor for DeviceEvent.Location);
    v23 = v6;
    goto LABEL_7;
  }

  v12 = *(v0 + 480);
  v13 = *(v0 + 272);
  v14 = *(v0 + 224);
  sub_100035B84(*(v0 + 216), *(v0 + 240), type metadata accessor for BeaconEstimatedLocation);
  v15 = *(v14 + 40);
  v16 = static Date.> infix(_:_:)();
  v17 = *(v0 + 392);
  if (v16)
  {
    v18 = *(v0 + 492);
    v6 = *(v0 + 312);
    v7 = *(v0 + 272);
    v19 = *(v0 + 240);
    v20 = *(*(v0 + 160) + 160);
    type metadata accessor for Transaction();
    sub_10001F280(v0 + 16, v0 + 96);
    v21 = swift_allocObject();
    sub_10000A748((v0 + 96), v21 + 16);
    *(v21 + 56) = v20;
    *(v21 + 64) = v17;
    *(v21 + 72) = v18;
    v22 = v17;

    static Transaction.asyncTask(name:block:)();

    sub_10003627C(v19, type metadata accessor for BeaconEstimatedLocation);
    goto LABEL_5;
  }

  v24 = *(v0 + 312);
  v25 = *(v0 + 272);
  v26 = *(v0 + 240);

  sub_10003627C(v26, type metadata accessor for BeaconEstimatedLocation);
  sub_10003627C(v25, type metadata accessor for DeviceEvent.Location);
  v23 = v24;
LABEL_7:
  sub_10003627C(v23, type metadata accessor for DeviceEvent);
  v27 = *(v0 + 312);
  v29 = *(v0 + 280);
  v28 = *(v0 + 288);
  v30 = *(v0 + 272);
  v32 = *(v0 + 240);
  v31 = *(v0 + 248);
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);
  v35 = *(v0 + 176);
  sub_100007BAC((v0 + 16));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1007FE0D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 268) = a3;
  *(v4 + 136) = a1;
  *(v4 + 144) = a4;
  v6 = type metadata accessor for UUID();
  *(v4 + 152) = v6;
  v7 = *(v6 - 8);
  *(v4 + 160) = v7;
  *(v4 + 168) = *(v7 + 64);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  v8 = type metadata accessor for LocalFindableAccessoryRecord();
  v9 = *(*(v8 - 8) + 64) + 15;
  v10 = swift_task_alloc();
  *(v4 + 192) = v10;
  *(v4 + 40) = v8;
  *(v4 + 48) = sub_1000194F8(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord);
  v11 = sub_1000280DC((v4 + 16));
  sub_1007FF3E4(a2, v11, type metadata accessor for LocalFindableAccessoryRecord);
  sub_1007FF3E4(v11, v10, type metadata accessor for LocalFindableAccessoryRecord);

  return _swift_task_switch(sub_1007FE268, 0, 0);
}

uint64_t sub_1007FE268()
{
  v63 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  *(v0 + 200) = *(v3 + 72);
  v4 = *(v3 + 80);
  *(v0 + 264) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = *(v3 + 16);
  *(v0 + 208) = v7;
  *(v0 + 216) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v6 + v5, v1, v2);
  sub_10003627C(v1, type metadata accessor for LocalFindableAccessoryRecord);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 136);
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 56);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {

    sub_100007BAC((v0 + 56));
    goto LABEL_22;
  }

  v60 = v12;
  v13 = *(v0 + 184);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v57 = *(v0 + 136);
  v16 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  *v16 = 141558787;
  *(v16 + 4) = 1752392040;
  *(v16 + 12) = 2081;
  v17 = sub_1000035D0((v0 + 56), *(v0 + 80));
  v7(v13, v17, v15);
  sub_1000194F8(&qword_101696930, &type metadata accessor for UUID);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  (*(v14 + 8))(v13, v15);
  sub_100007BAC((v0 + 56));
  v21 = sub_1000136BC(v18, v20, &v62);

  *(v16 + 14) = v21;
  *(v16 + 22) = 2082;
  v22 = [v57 source];
  if (v22 > 2)
  {
    if (v22 <= 4)
    {
      v23 = 0xE700000000000000;
      if (v22 == 3)
      {
        v24 = 1953784110;
      }

      else
      {
        v24 = 1952801838;
      }

      v25 = v24 | 0x68636100000000;
      goto LABEL_21;
    }

    if (v22 == 5)
    {
      v23 = 0xE500000000000000;
      v25 = 0x726961702ELL;
      goto LABEL_21;
    }

    if (v22 == 6)
    {
      v23 = 0xEF79627261654E64;
      v25 = 0x657463657465642ELL;
      goto LABEL_21;
    }

LABEL_16:
    v23 = 0xE800000000000000;
    v25 = 0x6E776F6E6B6E752ELL;
    goto LABEL_21;
  }

  if (!v22)
  {
    goto LABEL_16;
  }

  if (v22 == 1)
  {
    v23 = 0xE800000000000000;
    v25 = 0x7463656E6E6F632ELL;
    goto LABEL_21;
  }

  if (v22 != 2)
  {
    goto LABEL_16;
  }

  v23 = 0xEB00000000746365;
  v25 = 0x6E6E6F637369642ELL;
LABEL_21:
  v26 = sub_1000136BC(v25, v23, &v62);

  *(v16 + 24) = v26;
  *(v16 + 32) = 2048;
  *(v16 + 34) = 1;

  _os_log_impl(&_mh_execute_header, v11, v60, "Update device event for beacon: %{private,mask.hash}s, source: %{public}s,\nclientBeaconIdentifiers %ld].", v16, 0x2Au);
  swift_arrayDestroy();

LABEL_22:
  v27 = *(v0 + 152);
  v28 = sub_10000954C(v6);
  *(v0 + 224) = v28;
  swift_setDeallocating();
  v29 = *(v6 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = *(v28 + 32);
  *(v0 + 269) = v30;
  v31 = -1;
  v32 = -1 << v30;
  if (-v32 < 64)
  {
    v31 = ~(-1 << -v32);
  }

  v33 = v31 & *(v28 + 56);
  if (v33)
  {
    v34 = 0;
    v35 = *(v0 + 224);
LABEL_29:
    *(v0 + 232) = v33;
    *(v0 + 240) = v34;
    v38 = *(v0 + 216);
    v39 = *(v0 + 176);
    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v61 = *(v0 + 268);
    v42 = *(v0 + 144);
    v43 = *(v0 + 152);
    v58 = v42;
    v59 = *(v0 + 136);
    v44 = (*(v0 + 264) + 24) & ~*(v0 + 264);
    v45 = (*(v0 + 168) + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    (*(v0 + 208))(v39, *(v35 + 48) + *(v0 + 200) * (__clz(__rbit64(v33)) | (v34 << 6)), v43);
    v46 = *(v41 + 32);
    v46(v40, v39, v43);
    sub_10001F280(v0 + 16, v0 + 96);
    v47 = swift_allocObject();
    *(v0 + 248) = v47;
    *(v47 + 16) = v58;
    v46(v47 + v44, v40, v43);
    sub_10000A748((v0 + 96), v47 + v45);
    v48 = v47 + ((v45 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v48 = v59;
    *(v48 + 8) = v61;
    v49 = async function pointer to unsafeBlocking<A>(_:)[1];
    v50 = v59;

    v51 = swift_task_alloc();
    *(v0 + 256) = v51;
    *v51 = v0;
    v51[1] = sub_1007FE930;

    return unsafeBlocking<A>(_:)(v51, sub_1007FF798, v47, &type metadata for () + 8);
  }

  else
  {
    v36 = 0;
    v37 = ((63 - v32) >> 6) - 1;
    v35 = *(v0 + 224);
    while (v37 != v36)
    {
      v34 = v36 + 1;
      v33 = *(v35 + 8 * v36++ + 64);
      if (v33)
      {
        goto LABEL_29;
      }
    }

    v52 = *(v0 + 184);
    v53 = *(v0 + 192);
    v54 = *(v0 + 176);

    sub_100007BAC((v0 + 16));

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_1007FE930()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_1007FEA48, 0, 0);
}

uint64_t sub_1007FEA48(void *a1, uint64_t (*a2)(), uint64_t a3, char *a4)
{
  v5 = *(v4 + 240);
  v6 = (*(v4 + 232) - 1) & *(v4 + 232);
  if (v6)
  {
    a1 = *(v4 + 224);
LABEL_7:
    *(v4 + 232) = v6;
    *(v4 + 240) = v5;
    v8 = *(v4 + 216);
    v9 = *(v4 + 176);
    v10 = *(v4 + 184);
    v11 = *(v4 + 160);
    v28 = *(v4 + 268);
    v12 = *(v4 + 144);
    v13 = *(v4 + 152);
    v26 = v12;
    v27 = *(v4 + 136);
    v14 = (*(v4 + 264) + 24) & ~*(v4 + 264);
    v15 = (*(v4 + 168) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    (*(v4 + 208))(v9, a1[6] + *(v4 + 200) * (__clz(__rbit64(v6)) | (v5 << 6)), v13);
    v16 = *(v11 + 32);
    v16(v10, v9, v13);
    sub_10001F280(v4 + 16, v4 + 96);
    v17 = swift_allocObject();
    *(v4 + 248) = v17;
    *(v17 + 16) = v26;
    v16(v17 + v14, v10, v13);
    sub_10000A748((v4 + 96), v17 + v15);
    v18 = v17 + ((v15 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v18 = v27;
    *(v18 + 8) = v28;
    v19 = async function pointer to unsafeBlocking<A>(_:)[1];
    v20 = v27;

    a1 = swift_task_alloc();
    *(v4 + 256) = a1;
    *a1 = v4;
    a1[1] = sub_1007FE930;
    a2 = sub_1007FF798;
    a4 = &type metadata for () + 8;
    a3 = v17;

    return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
      }

      a1 = *(v4 + 224);
      if (v7 >= (((1 << *(v4 + 269)) + 63) >> 6))
      {
        break;
      }

      v6 = a1[v7 + 7];
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v21 = *(v4 + 184);
    v22 = *(v4 + 192);
    v23 = *(v4 + 176);

    sub_100007BAC((v4 + 16));

    v24 = *(v4 + 8);

    return v24();
  }
}

uint64_t sub_1007FECD8()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1007F0870(v0 + 16, v2, v3, v4);
}

uint64_t sub_1007FEDB8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1007FEE58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014744;

  return sub_1007F28E4(v2, v3, v4, v7, v5, v6);
}

uint64_t sub_1007FEF1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014744;

  return sub_1007F2ABC(v2, v3, v6, v4, v5);
}

uint64_t sub_1007FEFFC(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3 + *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) + 48);
  v9 = *(v5 + 40);
  v10 = *(v5 + 56);
  *v11 = *(v5 + 72);
  *&v11[9] = *(v5 + 81);
  v7 = *(v5 + 8);
  v8 = *(v5 + 24);
  return sub_101106DA0(a1, v4, a1[5]) & 1;
}

BOOL sub_1007FF0A0@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_1007F4F30(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

uint64_t sub_1007FF158()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100E73BB0(v2, v3);
}

uint64_t sub_1007FF1CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1007E5BCC(a1, v4, v5, v6);
}

uint64_t sub_1007FF280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1007E8110(a1, v4, v5, v7, v6);
}

uint64_t sub_1007FF348()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 73);
}

unint64_t sub_1007FF390()
{
  result = qword_1016AA568;
  if (!qword_1016AA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA568);
  }

  return result;
}

uint64_t sub_1007FF3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007FF44C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BeaconIdentifier() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = v1[4];
  v11 = *(v1 + 5);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1007E9364(v10, a1, v8, v9, v11, v1 + v6, v1 + v7);
}

uint64_t sub_1007FF584()
{
  v1 = (type metadata accessor for BeaconIdentifier() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 40);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);
  sub_100007BAC((v0 + v3));

  return _swift_deallocObject(v0, v3 + 40);
}

uint64_t sub_1007FF6A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  sub_100007BAC((v0 + v4));

  return _swift_deallocObject(v0, v5 + 9);
}

uint64_t sub_1007FF7B0(uint64_t (*a1)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = (v1 + ((v4 + 47) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = *(v6 + 8);

  return a1(v5, v1 + v3, v1 + v4, v7, v8);
}

uint64_t sub_1007FF8AC(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1007D95C4(a1, v1 + v5, v8, v1 + v7);
}

uint64_t sub_1007FF9C8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1007D9BAC(v2, v0 + 24);
}

uint64_t sub_1007FFA60()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[11];

  return _swift_deallocObject(v0, 113);
}

uint64_t sub_1007FFAC8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1007D710C(v2, v0 + 24);
}

uint64_t sub_1007FFB88()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1007D6ADC(v0);
}

unint64_t sub_1007FFC2C()
{
  result = qword_1016AA5D8;
  if (!qword_1016AA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA5D8);
  }

  return result;
}

uint64_t sub_1007FFCA8(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v59 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v56 = v13;
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v22 = &v47 - v21;
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v48 = v20;
  v49 = v14;
  v50 = v19;
  v51 = v7;
  v52 = v8;
  v53 = v4;
  v54 = v3;
  v23 = *(type metadata accessor for CryptoKeys() - 8);
  v24 = a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  DateInterval.start.getter();
  LODWORD(v47) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10138BBE0;
  v26 = v57;
  v27 = v57 + *(v11 + 20);
  v28 = UUID.uuidString.getter();
  v30 = v29;
  *(v25 + 56) = &type metadata for String;
  v31 = sub_100008C00();
  *(v25 + 64) = v31;
  *(v25 + 32) = v28;
  *(v25 + 40) = v30;
  sub_1008015A8(&qword_1016969A0, &type metadata accessor for Date);
  v32 = v50;
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = v31;
  *(v25 + 72) = v33;
  *(v25 + 80) = v34;
  os_log(_:dso:log:_:_:)();

  v35 = v58;
  v47 = *(v58 + 24);
  v36 = v26;
  v37 = v49;
  sub_100801664(v36, v49, type metadata accessor for SharedBeaconRecord);
  v38 = v48;
  (*(v16 + 16))(v48, v22, v32);
  v39 = (*(v55 + 80) + 24) & ~*(v55 + 80);
  v40 = (v56 + *(v16 + 80) + v39) & ~*(v16 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  sub_100591C20(v37, v41 + v39);
  (*(v16 + 32))(v41 + v40, v38, v32);
  aBlock[4] = sub_1008014D8;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101634F70;
  v42 = _Block_copy(aBlock);

  v43 = v59;
  static DispatchQoS.unspecified.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_1008015A8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v44 = v51;
  v45 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v53 + 8))(v44, v45);
  (*(v60 + 8))(v43, v52);
  (*(v16 + 8))(v22, v32);
}

uint64_t sub_1008002E0(char *a1, uint64_t a2, uint64_t a3)
{
  v69 = type metadata accessor for CryptoKeyStreamInspector.Event(0);
  v6 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedBeaconRecord(0);
  v10 = v9 - 8;
  v68 = *(v9 - 8);
  v11 = *(v68 + 64);
  __chkstk_darwin(v9);
  v12 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v65 = &v55 - v14;
  v70 = sub_1000BC4D4(&qword_1016AA780, &qword_1013BD3D0);
  v64 = *(v70 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v70);
  v17 = (&v55 - v16);
  v18 = sub_1000BC4D4(&qword_1016AA788, &qword_1013BD3D8);
  v67 = *(v18 - 8);
  v19 = *(v67 + 64);
  __chkstk_darwin(v18);
  v66 = &v55 - v20;
  v21 = *(v10 + 28);
  swift_beginAccess();
  v22 = *(a1 + 4);
  if (!*(v22 + 16))
  {
    goto LABEL_5;
  }

  v23 = *(a1 + 4);

  v24 = sub_1000210EC(a2 + v21);
  if ((v25 & 1) == 0)
  {

LABEL_5:
    v27 = sub_1000BC4D4(&qword_1016AA790, &qword_1013BD3E0);
    v61 = v21;
    v59 = v27;
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = PassthroughSubject.init()();
    v60 = v18;
    v31 = v30;
    swift_beginAccess();
    v58 = v31;
    swift_retain_n();
    v32 = *(a1 + 4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(a1 + 4);
    *(a1 + 4) = 0x8000000000000000;
    sub_101000064(v31, a2 + v21, isUniquelyReferenced_nonNull_native);
    *(a1 + 4) = v71;
    swift_endAccess();
    v72 = v31;
    v34 = sub_1000BC4D4(&qword_1016AA798, &qword_101400BB0);
    v62 = v8;
    v63 = a3;
    v35 = *(v34 + 48);
    v36 = *(a1 + 3);
    v37 = v17;
    *v17 = v36;
    v38 = OBJC_IVAR____TtC12searchpartyd24CryptoKeyStreamInspector_delay;
    v39 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    (*(*(v39 - 8) + 16))(v17 + v35, &a1[v38], v39);
    v40 = v64;
    (*(v64 + 104))(v37, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v70);
    v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v42 = v65;
    (*(*(v41 - 8) + 56))(v65, 1, 1, v41);
    sub_1000BC488();
    v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v11;
    sub_1000041A4(&qword_1016AA7A0, &qword_1016AA790, &qword_1013BD3E0);
    sub_1008015A8(&qword_1016AF9C0, sub_1000BC488);
    v43 = v36;
    v44 = v66;
    v8 = v62;
    Publisher.collect<A>(_:options:)();
    sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);
    (*(v40 + 8))(v37, v70);

    v45 = v56;
    sub_100801664(a2, v56, type metadata accessor for SharedBeaconRecord);
    v46 = (*(v68 + 80) + 24) & ~*(v68 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = a1;
    sub_100591C20(v45, v47 + v46);
    sub_1000041A4(&qword_1016AA7A8, &qword_1016AA788, &qword_1013BD3D8);

    v48 = v60;
    v49 = Publisher<>.sink(receiveValue:)();

    (*(v67 + 8))(v44, v48);
    swift_beginAccess();

    v50 = *(a1 + 5);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(a1 + 5);
    *(a1 + 5) = 0x8000000000000000;
    sub_101000050(v49, a2 + v61, v51);
    *(a1 + 5) = v71;
    swift_endAccess();
    a3 = v63;

    goto LABEL_6;
  }

  v26 = *(*(v22 + 56) + 8 * v24);
  swift_retain_n();

LABEL_6:
  sub_100801664(a2, v8, type metadata accessor for SharedBeaconRecord);
  v52 = *(v69 + 20);
  v53 = type metadata accessor for Date();
  (*(*(v53 - 8) + 16))(&v8[v52], a3, v53);
  PassthroughSubject.send(_:)();

  return sub_1008016CC(v8, type metadata accessor for CryptoKeyStreamInspector.Event);
}

uint64_t sub_100800A08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v4 = type metadata accessor for UUID();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SharedBeaconRecord(0);
  v8 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for CryptoKeyStreamInspector.Event(0);
  v11 = *(v55 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v55);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v47 = &v41 - v17;
  v52 = type metadata accessor for Date();
  v18 = *(v52 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v52);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v49 = &v41 - v23;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  v48 = v11;
  v46 = v24;
  if (v25)
  {
    v41 = v4;
    v42 = v7;
    v43 = v10;
    v56 = _swiftEmptyArrayStorage;
    sub_10112524C(0, v25, 0);
    v26 = v56;
    v27 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v28 = *(v11 + 72);
    v53 = v18 + 32;
    v54 = v28;
    v29 = v52;
    do
    {
      sub_100801664(v27, v14, type metadata accessor for CryptoKeyStreamInspector.Event);
      (*(v18 + 16))(v22, &v14[*(v55 + 20)], v29);
      sub_1008016CC(v14, type metadata accessor for CryptoKeyStreamInspector.Event);
      v56 = v26;
      v31 = v26[2];
      v30 = v26[3];
      if (v31 >= v30 >> 1)
      {
        sub_10112524C(v30 > 1, v31 + 1, 1);
        v26 = v56;
      }

      v26[2] = v31 + 1;
      (*(v18 + 32))(v26 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v31, v22, v29);
      v27 += v54;
      --v25;
    }

    while (v25);
    v33 = v50;
    v32 = v51;
    v7 = v42;
    v10 = v43;
    v4 = v41;
  }

  else
  {
    v33 = v50;
    v32 = v51;
  }

  v34 = v47;
  sub_10030BB60(v26, v47);

  v35 = v52;
  v36 = (*(v18 + 48))(v34, 1, v52);
  v37 = v48;
  v38 = v49;
  if (v36 == 1)
  {
    return sub_10000B3A8(v34, &unk_101696900, &unk_10138B1E0);
  }

  result = (*(v18 + 32))(v49, v34, v35);
  if (*(v46 + 16))
  {
    sub_100801664(v46 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v10, type metadata accessor for SharedBeaconRecord);
    (*(v45 + 16))(v7, v33 + *(v44 + 20), v4);
    swift_beginAccess();
    sub_1001DFFF8(0, v7);
    swift_endAccess();
    v40 = *(v32 + 16);
    swift_unownedRetainStrong();
    sub_1005754E0(v10, v38);

    sub_1008016CC(v10, type metadata accessor for SharedBeaconRecord);
    return (*(v18 + 8))(v38, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100800F38()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC12searchpartyd24CryptoKeyStreamInspector_delay;
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10080101C()
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10080111C()
{
  result = type metadata accessor for SharedBeaconRecord(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_1008011A0(uint64_t a1)
{
  v20 = a1;
  v2 = type metadata accessor for DispatchTimeInterval();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC488();
  v17[0] = "";
  v17[1] = v15;
  (*(v11 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1008015A8(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = _swiftEmptyDictionarySingleton;
  v1[5] = _swiftEmptyDictionarySingleton;
  *v5 = 60;
  (*(v18 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v19);
  OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
  v1[2] = v20;
  swift_unownedRetain();
  return v1;
}

uint64_t sub_1008014D8()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1008002E0(v5, v0 + v2, v6);
}

uint64_t sub_1008015A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008015F0(uint64_t *a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100800A08(a1, v4, v5);
}

uint64_t sub_100801664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008016CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SPPlaySoundContext.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000010;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6E696B636172742ELL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6F4365756575712ELL;
  }

  else
  {
    if (!a1)
    {
      return 0x746C75616665642ELL;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6E696B636172742ELL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x676E69676E61722ELL;
  }
}

uint64_t sub_100801818()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B380);
  sub_1000076D4(v0, qword_10177B380);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1008018A0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008320D4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10080197C()
{
  v1 = *v0;
  v2 = 0x65755179616C702ELL;
  v3 = 0x6D6F43706F74732ELL;
  if (v1 != 5)
  {
    v3 = 0x74756F656D69742ELL;
  }

  v4 = 0x6D6F4379616C702ELL;
  if (v1 != 3)
  {
    v4 = 0x696E49706F74732ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x696E4979616C702ELL;
  if (v1 != 1)
  {
    v5 = 0x6E755279616C702ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100801A98()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016AA7B0);
  v1 = sub_1000076D4(v0, qword_1016AA7B0);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B380);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100801B60()
{
  v1 = (v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager);
  if (*(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager))
  {
    v2 = v1[1];
    v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager);
  }

  else
  {
    v4 = [objc_allocWithZone(CLFindMyAccessoryManager) initWithDelegate:v0 delegateQueue:*(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue)];
    v5 = *v1;
    *v1 = v4;
    v1[1] = &off_10166B548;
    v3 = v4;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

id sub_100801C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue;
  v14 = sub_1000BC488();
  v30[1] = "ndPlaybackManager";
  v30[2] = v14;
  (*(v9 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v2[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_stopSoundSubjects] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators] = _swiftEmptyDictionarySingleton;
  v15 = &v2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager____lazy_storage___commandManager];
  *v15 = 0;
  *(v15 + 1) = 0;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B380);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Init SoundPlaybackManager", v19, 2u);
  }

  v20 = v31;
  *&v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore] = v31;
  v21 = *&v3[v13];
  v22 = type metadata accessor for OwnerCommandManager();
  swift_allocObject();

  v23 = v32;

  v24 = v21;
  v25 = sub_10067C33C(v20, v23, v21);

  v26 = &v3[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager];
  *(v26 + 3) = v22;
  *(v26 + 4) = &off_10162CB90;
  *v26 = v25;
  v27 = type metadata accessor for SoundPlaybackManager();
  v33.receiver = v3;
  v33.super_class = v27;

  v28 = objc_msgSendSuper2(&v33, "init");

  v25[6] = &off_101635158;
  swift_unknownObjectWeakAssign();

  return v28;
}

uint64_t sub_100802044()
{
  v1 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v166 = &v166 - v3;
  v195 = type metadata accessor for BeaconObservation();
  v186 = *(v195 - 8);
  v4 = *(v186 + 64);
  v5 = __chkstk_darwin(v195);
  v7 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v181 = &v166 - v9;
  v10 = __chkstk_darwin(v8);
  v194 = &v166 - v11;
  v12 = __chkstk_darwin(v10);
  v193 = &v166 - v13;
  v14 = __chkstk_darwin(v12);
  v171 = &v166 - v15;
  v16 = __chkstk_darwin(v14);
  v170 = &v166 - v17;
  v18 = __chkstk_darwin(v16);
  v168 = &v166 - v19;
  v20 = __chkstk_darwin(v18);
  v169 = &v166 - v21;
  __chkstk_darwin(v20);
  v167 = &v166 - v22;
  v191 = type metadata accessor for WildModeAssociationRecord(0);
  v187 = *(v191 - 8);
  v23 = *(v187 + 64);
  v24 = __chkstk_darwin(v191);
  v182 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v189 = &v166 - v27;
  __chkstk_darwin(v26);
  v29 = &v166 - v28;
  v184 = type metadata accessor for UUID();
  v190 = *(v184 - 8);
  v30 = *(v190 + 64);
  v31 = __chkstk_darwin(v184);
  v180 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v183 = &v166 - v34;
  __chkstk_darwin(v33);
  v36 = &v166 - v35;
  v185 = *(v0 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  v37 = sub_100007F54();
  v38 = v37;
  v39 = v37[2];
  v40 = _swiftEmptyArrayStorage;
  v192 = v7;
  if (v39)
  {
    v41 = 0;
    v42 = (v37 + 4);
    v188 = v37;
    while (v41 < v38[2])
    {
      sub_10001F280(v42, &v197);
      v43 = v198;
      v44 = v199;
      sub_1000035D0(&v197, v198);
      if ((*(v44 + 112))(v43, v44))
      {
        sub_10000A748(&v197, &v200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v40[2] + 1, 1);
          v40 = v203;
        }

        v47 = v40[2];
        v46 = v40[3];
        if (v47 >= v46 >> 1)
        {
          sub_100025B1C((v46 > 1), v47 + 1, 1);
        }

        v48 = v201;
        v49 = v202;
        v50 = sub_10015049C(&v200, v201);
        v51 = *(*(v48 - 8) + 64);
        __chkstk_darwin(v50);
        v53 = &v166 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v54 + 16))(v53);
        sub_1006252D4(v47, v53, &v203, v48, v49);
        sub_100007BAC(&v200);
        v40 = v203;
        v38 = v188;
      }

      else
      {
        sub_100007BAC(&v197);
      }

      ++v41;
      v42 += 40;
      v7 = v192;
      if (v39 == v41)
      {
        goto LABEL_12;
      }
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

LABEL_12:

  v55 = v40[2];
  if (v55)
  {
    v200 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v55, 0);
    v41 = v200;
    v56 = (v40 + 4);
    do
    {
      sub_10001F280(v56, &v197);
      v58 = v198;
      v57 = v199;
      sub_1000035D0(&v197, v198);
      (*(*(*(v57 + 8) + 8) + 32))(v58);
      sub_100007BAC(&v197);
      v200 = v41;
      v60 = *(v41 + 16);
      v59 = *(v41 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_101123D4C(v59 > 1, v60 + 1, 1);
        v41 = v200;
      }

      *(v41 + 16) = v60 + 1;
      (*(v190 + 32))(v41 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v60, v36, v184);
      v56 += 40;
      --v55;
    }

    while (v55);

    v7 = v192;
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
  }

  v200 = v41;
  v61 = sub_10002F740();
  v62 = v61[2];
  v63 = _swiftEmptyArrayStorage;
  if (v62)
  {
    v64 = 0;
    v65 = v187;
    while (v64 < v61[2])
    {
      v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v67 = *(v65 + 72);
      sub_100833680(v61 + v66 + v67 * v64, v29, type metadata accessor for WildModeAssociationRecord);
      if (v29[*(v191 + 52)] == 3)
      {
        sub_1008336E8(v29, v189, type metadata accessor for WildModeAssociationRecord);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        *&v197 = v63;
        if ((v68 & 1) == 0)
        {
          sub_101124B2C(0, v63[2] + 1, 1);
          v65 = v187;
          v63 = v197;
        }

        v41 = v63[2];
        v69 = v63[3];
        if (v41 >= v69 >> 1)
        {
          sub_101124B2C(v69 > 1, v41 + 1, 1);
          v65 = v187;
          v63 = v197;
        }

        v63[2] = v41 + 1;
        sub_1008336E8(v189, v63 + v66 + v41 * v67, type metadata accessor for WildModeAssociationRecord);
      }

      else
      {
        sub_1008333E4(v29, type metadata accessor for WildModeAssociationRecord);
      }

      v7 = v192;
      if (v62 == ++v64)
      {
        goto LABEL_31;
      }
    }

LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v65 = v187;
LABEL_31:

  v70 = v63[2];
  if (v70)
  {
    *&v197 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v70, 0);
    v71 = v197;
    v72 = v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v191 = *(v65 + 72);
    v73 = (v190 + 16);
    v189 = v190 + 32;
    v74 = v184;
    v75 = v182;
    v76 = v180;
    do
    {
      sub_100833680(v72, v75, type metadata accessor for WildModeAssociationRecord);
      (*v73)(v76, v75, v74);
      sub_1008333E4(v75, type metadata accessor for WildModeAssociationRecord);
      *&v197 = v71;
      v78 = v71[2];
      v77 = v71[3];
      if (v78 >= v77 >> 1)
      {
        sub_101123D4C(v77 > 1, v78 + 1, 1);
        v75 = v182;
        v71 = v197;
      }

      v71[2] = v78 + 1;
      (*(v190 + 32))(v71 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v78, v76, v74);
      v72 += v191;
      --v70;
    }

    while (v70);

    v7 = v192;
  }

  else
  {

    v71 = _swiftEmptyArrayStorage;
  }

  sub_100398278(v71);
  v79 = v186;
  v173 = v200[2];
  v177 = v200;
  if (v173)
  {
    v80 = 0;
    v81 = 0;
    v175 = v200 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
    v174 = v190 + 16;
    v172 = (v190 + 8);
    v41 = &off_10160A270;
    v176 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v80 >= v177[2])
      {
        goto LABEL_137;
      }

      v82 = *(v190 + 72);
      v178 = v80;
      (*(v190 + 16))(v183, &v175[v82 * v80], v184);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v83 = qword_10177B2E8;
      v180 = objc_autoreleasePoolPush();
      v84 = *(v83 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
      sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
      OS_dispatch_queue.sync<A>(execute:)();
      v85 = v197;
      v86 = *(v197 + 16);
      v179 = v81;
      if (v86 && (v87 = sub_1000210EC(v183), (v88 & 1) != 0))
      {
        v89 = *(*(v85 + 56) + 8 * v87);

        v90 = *(v89 + 16);
        if (v90)
        {
          v91 = sub_100034824(*(v89 + 16), 0);
          v92 = sub_1000364B4(&v197, v91 + 4, v90, v89);
          sub_1000128F8();
          if (v92 != v90)
          {
            goto LABEL_139;
          }
        }

        else
        {

          v91 = _swiftEmptyArrayStorage;
        }

        v94 = sub_100034838(v91);

        v187 = *(v94 + 16);
        if (v187)
        {
          v95 = 0;
          v182 = _swiftEmptyArrayStorage;
          v185 = v94;
          while (v95 < *(v94 + 16))
          {
            v96 = (*(v79 + 80) + 32) & ~*(v79 + 80);
            v97 = *(v79 + 72);
            v191 = v95 + 1;
            v189 = v96;
            v188 = v97;
            sub_100833680(v94 + v96 + v97 * v95, v194, type metadata accessor for BeaconObservation);
            sub_100525F50();
            v98 = Set.init(minimumCapacity:)();
            v99 = 0;
            while (2)
            {
              v100 = v98 + 56;
              while (1)
              {
                v101 = *(&off_10160A270 + v99++ + 32);
                v102 = *(v98 + 40);
                Hasher.init(_seed:)();
                v103 = qword_1013BD818[v101];
                Hasher._combine(_:)(v103);
                v104 = Hasher._finalize()();
                v105 = -1 << *(v98 + 32);
                v106 = v104 & ~v105;
                if (((*(v100 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
                {
                  break;
                }

                v107 = ~v105;
                while (qword_1013BD818[*(*(v98 + 48) + v106)] != v103)
                {
                  v106 = (v106 + 1) & v107;
                  if (((*(v100 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
                  {
                    goto LABEL_66;
                  }
                }

                if (v99 == 7)
                {
                  v129 = *(v98 + 16);
                  v130 = v98;
                  goto LABEL_96;
                }
              }

LABEL_66:
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v196 = v98;
              v109 = *(v98 + 16);
              if (*(v98 + 24) <= v109)
              {
                if (v108)
                {
                  sub_100DF81C8(v109 + 1);
                }

                else
                {
                  sub_100E0B618(v109 + 1);
                }

                v130 = v196;
                v110 = *(v196 + 40);
                Hasher.init(_seed:)();
                Hasher._combine(_:)(v103);
                v111 = Hasher._finalize()();
                v112 = -1 << *(v130 + 32);
                v106 = v111 & ~v112;
                if ((*(v130 + 56 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106))
                {
                  v113 = ~v112;
                  while (qword_1013BD818[*(*(v130 + 48) + v106)] != v103)
                  {
                    v106 = (v106 + 1) & v113;
                    if (((*(v130 + 56 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
                    {
                      goto LABEL_76;
                    }
                  }

                  goto LABEL_140;
                }
              }

              else if (v108)
              {
                v130 = v98;
              }

              else
              {
                sub_1000BC4D4(&qword_1016AAA18, &qword_1013BD810);
                v116 = static _SetStorage.copy(original:)();
                v130 = v116;
                if (*(v98 + 16))
                {
                  v117 = (v116 + 56);
                  v118 = v98 + 56;
                  v119 = ((1 << *(v130 + 32)) + 63) >> 6;
                  if (v130 != v98 || v117 >= v118 + 8 * v119)
                  {
                    memmove(v117, (v98 + 56), 8 * v119);
                  }

                  v120 = 0;
                  *(v130 + 16) = *(v98 + 16);
                  v121 = 1 << *(v98 + 32);
                  if (v121 < 64)
                  {
                    v122 = ~(-1 << v121);
                  }

                  else
                  {
                    v122 = -1;
                  }

                  v123 = v122 & *(v98 + 56);
                  for (i = (v121 + 63) >> 6; v123; *(*(v130 + 48) + v126) = *(*(v98 + 48) + v126))
                  {
                    v125 = __clz(__rbit64(v123));
                    v123 &= v123 - 1;
                    v126 = v125 | (v120 << 6);
LABEL_93:
                    ;
                  }

                  v127 = v120;
                  while (1)
                  {
                    v120 = v127 + 1;
                    if (__OFADD__(v127, 1))
                    {
                      goto LABEL_138;
                    }

                    if (v120 >= i)
                    {
                      break;
                    }

                    v128 = *(v118 + 8 * v120);
                    ++v127;
                    if (v128)
                    {
                      v123 = (v128 - 1) & v128;
                      v126 = __clz(__rbit64(v128)) | (v120 << 6);
                      goto LABEL_93;
                    }
                  }
                }
              }

LABEL_76:
              *(v130 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v106;
              *(*(v130 + 48) + v106) = v101;
              v114 = *(v130 + 16);
              v115 = __OFADD__(v114, 1);
              v129 = v114 + 1;
              if (v115)
              {
                __break(1u);
                goto LABEL_132;
              }

              *(v130 + 16) = v129;
              v98 = v130;
              if (v99 != 7)
              {
                continue;
              }

              break;
            }

LABEL_96:
            v79 = v186;
            v7 = v192;
            v94 = v185;
            if (!v129)
            {
              goto LABEL_54;
            }

            v131 = *(v194 + *(v195 + 24));
            v132 = *(v130 + 40);
            Hasher.init(_seed:)();
            v133 = qword_1013BD818[v131];
            Hasher._combine(_:)(v133);
            v134 = Hasher._finalize()();
            v135 = -1 << *(v130 + 32);
            v136 = v134 & ~v135;
            if ((*(v130 + 56 + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v136))
            {
              v137 = ~v135;
              while (qword_1013BD818[*(*(v130 + 48) + v136)] != v133)
              {
                v136 = (v136 + 1) & v137;
                if (((*(v130 + 56 + ((v136 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v136) & 1) == 0)
                {
                  goto LABEL_54;
                }
              }

              sub_1008336E8(v194, v181, type metadata accessor for BeaconObservation);
              v138 = v182;
              v139 = swift_isUniquelyReferenced_nonNull_native();
              v140 = v138;
              v203 = v138;
              if ((v139 & 1) == 0)
              {
                sub_101124308(0, *(v138 + 16) + 1, 1);
                v140 = v203;
              }

              v142 = *(v140 + 16);
              v141 = *(v140 + 24);
              if (v142 >= v141 >> 1)
              {
                sub_101124308(v141 > 1, v142 + 1, 1);
                v140 = v203;
              }

              *(v140 + 16) = v142 + 1;
              v182 = v140;
              sub_1008336E8(v181, v140 + v189 + v142 * v188, type metadata accessor for BeaconObservation);
            }

            else
            {
LABEL_54:

              sub_1008333E4(v194, type metadata accessor for BeaconObservation);
            }

            v95 = v191;
            if (v191 == v187)
            {
              goto LABEL_108;
            }
          }

          goto LABEL_133;
        }

        v182 = _swiftEmptyArrayStorage;
LABEL_108:

        v93 = v182;
      }

      else
      {

        v93 = _swiftEmptyArrayStorage;
      }

      objc_autoreleasePoolPop(v180);
      v143 = v93[2];
      if (v143)
      {
        v191 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v144 = v93 + v191;
        sub_100833680(v93 + v191, v193, type metadata accessor for BeaconObservation);
        v145 = v93;
        if (v143 != 1)
        {
          v156 = 1;
          while (v156 < v145[2])
          {
            sub_100833680(&v144[*(v79 + 72) * v156], v7, type metadata accessor for BeaconObservation);
            v157 = *(v195 + 20);
            v158 = v193;
            if (static Date.< infix(_:_:)())
            {
              sub_1008333E4(v158, type metadata accessor for BeaconObservation);
              sub_1008336E8(v7, v158, type metadata accessor for BeaconObservation);
            }

            else
            {
              sub_1008333E4(v7, type metadata accessor for BeaconObservation);
            }

            ++v156;
            v145 = v93;
            if (v143 == v156)
            {
              goto LABEL_111;
            }
          }

LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

LABEL_111:

        v146 = v171;
        sub_1008336E8(v193, v171, type metadata accessor for BeaconObservation);
        v147 = v146;
        v148 = v170;
        sub_1008336E8(v147, v170, type metadata accessor for BeaconObservation);
        v149 = sub_1005C8B3C(*(v148 + *(v195 + 24)), &off_10160A248);
        (*v172)(v183, v184);
        if (v149)
        {
          v150 = v148;
          v151 = v168;
          sub_1008336E8(v150, v168, type metadata accessor for BeaconObservation);
          sub_1008336E8(v151, v169, type metadata accessor for BeaconObservation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v176 = sub_100A5D28C(0, v176[2] + 1, 1, v176);
          }

          v152 = v191;
          v154 = v176[2];
          v153 = v176[3];
          if (v154 >= v153 >> 1)
          {
            v176 = sub_100A5D28C(v153 > 1, v154 + 1, 1, v176);
          }

          v155 = v176;
          v176[2] = v154 + 1;
          sub_1008336E8(v169, v155 + v152 + *(v79 + 72) * v154, type metadata accessor for BeaconObservation);
        }

        else
        {
          sub_1008333E4(v148, type metadata accessor for BeaconObservation);
        }
      }

      else
      {

        (*v172)(v183, v184);
      }

      v81 = v179;
      v80 = v178 + 1;
      if (v178 + 1 == v173)
      {
        goto LABEL_125;
      }
    }
  }

  v81 = 0;
  v176 = _swiftEmptyArrayStorage;
LABEL_125:
  v159 = v176;
  v160 = v176[2];
  v41 = v167;
  if (!v160)
  {
LABEL_130:

    v162 = type metadata accessor for TaskPriority();
    v163 = v166;
    (*(*(v162 - 8) + 56))(v166, 1, 1, v162);
    v164 = swift_allocObject();
    v164[2] = 0;
    v164[3] = 0;
    v164[4] = v159;
    sub_10025EDD4(0, 0, v163, &unk_1013BD808, v164);
  }

  v161 = 0;
  while (v161 < v159[2])
  {
    sub_100833680(v159 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v161, v41, type metadata accessor for BeaconObservation);
    sub_100803688(v41);
    if (v81)
    {
      goto LABEL_141;
    }

    ++v161;
    sub_1008333E4(v41, type metadata accessor for BeaconObservation);
    if (v160 == v161)
    {
      goto LABEL_130;
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_141:

  result = sub_1008333E4(v41, type metadata accessor for BeaconObservation);
  __break(1u);
  return result;
}

uint64_t sub_100803688(uint64_t a1)
{
  v3 = type metadata accessor for BeaconObservation();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v36 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v40 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v12;
  v15 = *(v12 + 16);
  v42 = v16;
  v37 = v15;
  v15();
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177B380);
  sub_100833680(a1, v10, type metadata accessor for BeaconObservation);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36[1] = v1;
    v22 = v21;
    v43 = v21;
    *v20 = 136315138;
    v23 = sub_1009201A4();
    v25 = v24;
    sub_1008333E4(v10, type metadata accessor for BeaconObservation);
    v26 = sub_1000136BC(v23, v25, &v43);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Found %s. Force completion so we're not stuck forever", v20, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    sub_1008333E4(v10, type metadata accessor for BeaconObservation);
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v27 = qword_10177B2E8;
  v28 = v40;
  v29 = v42;
  (v37)(v8, v40, v42);
  v30 = v38;
  static Date.trustedNow.getter(&v8[*(v38 + 20)]);
  v8[*(v30 + 24)] = 29;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v31 = *(v39 + 72);
  v32 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_101385D80;
  sub_100833680(v8, v33 + v32, type metadata accessor for BeaconObservation);
  v34 = type metadata accessor for Transaction();
  __chkstk_darwin(v34);
  v36[-4] = v27;
  v36[-3] = v33;
  v36[-2] = 0;
  v36[-1] = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v8, type metadata accessor for BeaconObservation);
  return (*(v41 + 8))(v28, v29);
}

uint64_t sub_100803B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for BeaconObservation() - 8);
  v4[3] = v5;
  v6 = *(v5 + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100803C34, 0, 0);
}

uint64_t sub_100803C34()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      sub_100833680(v5, v8, type metadata accessor for BeaconObservation);
      (*(v3 + 16))(v6, v8, v7);
      sub_1008333E4(v8, type metadata accessor for BeaconObservation);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[7];
      v12 = v0[5];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v0[8] = sub_10000954C(_swiftEmptyArrayStorage);

  v13 = async function pointer to daemon.getter[1];
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_100803E2C;

  return daemon.getter();
}

uint64_t sub_100803E2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v12 = *v1;
  *(v3 + 80) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 88) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100804008;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100804008(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 88);
  v7 = *v2;

  v8 = v4[10];
  if (v1)
  {
    v9 = v5[8];

    v10 = v5[7];
    v11 = v5[4];

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {

    v5[12] = a1;
    v14 = swift_task_alloc();
    v5[13] = v14;
    *v14 = v7;
    v14[1] = sub_1008041DC;
    v15 = v5[8];

    return sub_10094DB94(v15);
  }
}

uint64_t sub_1008041DC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_1008042F4, 0, 0);
}

uint64_t sub_1008042F4()
{
  v1 = v0[12];

  v2 = v0[7];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100804368(uint64_t a1, uint64_t a2, void (*a3)(void **), void (*a4)(void **))
{
  v161 = a3;
  v160 = a4;
  v163 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v152 = *(v5 - 8);
  v153 = v5;
  v6 = *(v152 + 64);
  __chkstk_darwin(v5);
  v149 = &v129[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v150 = *(v8 - 8);
  v151 = v8;
  v9 = *(v150 + 64);
  __chkstk_darwin(v8);
  v148 = &v129[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v141 = &v129[-v13];
  v142 = type metadata accessor for OwnedBeaconRecord();
  v147 = *(v142 - 8);
  v14 = *(v147 + 64);
  v15 = __chkstk_darwin(v142);
  v138 = &v129[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v136 = &v129[-v18];
  v137 = v19;
  __chkstk_darwin(v17);
  v144 = &v129[-v20];
  v21 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v155 = &v129[-v23];
  v156 = type metadata accessor for OwnedBeaconGroup(0);
  v154 = *(v156 - 8);
  v24 = *(v154 + 64);
  v25 = __chkstk_darwin(v156);
  v135 = &v129[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v28 = &v129[-v27];
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = __chkstk_darwin(v29);
  v140 = &v129[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v32);
  v146 = &v129[-v34];
  v35 = __chkstk_darwin(v33);
  v134 = &v129[-v36];
  v37 = __chkstk_darwin(v35);
  v39 = &v129[-v38];
  __chkstk_darwin(v37);
  v41 = &v129[-v40];
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_1000076D4(v42, qword_10177B380);
  v44 = v30[2];
  v157 = a1;
  v44(v41, a1, v29);
  v158 = v44;
  v159 = v30 + 2;
  v44(v39, v163, v29);
  v139 = v43;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v145 = v28;
    v48 = v47;
    v132 = swift_slowAlloc();
    aBlock = v132;
    *v48 = 141558531;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v143 = v31;
    v51 = v50;
    v130 = v46;
    v131 = v30;
    v52 = v30[1];
    v52(v41, v29);
    v53 = sub_1000136BC(v49, v51, &aBlock);

    *(v48 + 14) = v53;
    *(v48 + 22) = 2082;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v133 = v52;
    v52(v39, v29);
    v57 = sub_1000136BC(v54, v56, &aBlock);
    v31 = v143;

    *(v48 + 24) = v57;
    _os_log_impl(&_mh_execute_header, v45, v130, "Connect to %{private,mask.hash}s commandId: %{public}s.", v48, 0x20u);
    swift_arrayDestroy();

    v28 = v145;

    v58 = v131;
  }

  else
  {

    v59 = v30[1];
    v59(v39, v29);
    v133 = v59;
    v59(v41, v29);
    v58 = v30;
  }

  v60 = v155;
  v61 = v156;
  v62 = v162;
  v63 = *&v162[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore];
  v64 = v157;
  sub_100AC53EC(v157, v155);
  if ((*(v154 + 48))(v60, 1, v61) == 1)
  {
    sub_10000B3A8(v60, &unk_1016AF8B0, &unk_1013A0700);
    v156 = *&v62[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v65 = v146;
    v66 = v158;
    v158(v146, v64, v29);
    v67 = v140;
    v66(v140, v163, v29);
    v68 = *(v58 + 80);
    v69 = (v68 + 24) & ~v68;
    v70 = (v31 + v68 + v69) & ~v68;
    v71 = swift_allocObject();
    *(v71 + 16) = v62;
    v72 = v58[4];
    v72(v71 + v69, v65, v29);
    v72(v71 + v70, v67, v29);
    v73 = (v71 + ((v31 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    v74 = v160;
    *v73 = v161;
    v73[1] = v74;
    v169 = sub_100834374;
    v170 = v71;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_100006684;
    v168 = &unk_101636058;
    v75 = _Block_copy(&aBlock);
    v76 = v62;

    v77 = v148;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v78 = v149;
    v79 = v153;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v75);
    (*(v152 + 8))(v78, v79);
    (*(v150 + 8))(v77, v151);
  }

  sub_1008336E8(v60, v28, type metadata accessor for OwnedBeaconGroup);
  v80 = v141;
  sub_100A85ED4(v28, v141);
  v81 = v142;
  if ((*(v147 + 48))(v80, 1, v142) != 1)
  {
    v143 = v31;
    v145 = v28;
    v93 = v80;
    v94 = v144;
    sub_1008336E8(v93, v144, type metadata accessor for OwnedBeaconRecord);
    v95 = v136;
    sub_100833680(v94, v136, type metadata accessor for OwnedBeaconRecord);
    v96 = v134;
    v97 = v163;
    v158(v134, v163, v29);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = v96;
      v101 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      aBlock = v157;
      *v101 = 141558531;
      *(v101 + 4) = 1752392040;
      *(v101 + 12) = 2081;
      v102 = *(v81 + 20);
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v103 = v58;
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v105 = v95;
      v107 = v106;
      sub_1008333E4(v105, type metadata accessor for OwnedBeaconRecord);
      v108 = sub_1000136BC(v104, v107, &aBlock);
      v97 = v163;

      *(v101 + 14) = v108;
      *(v101 + 22) = 2082;
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v110;
      v133(v100, v29);
      v112 = sub_1000136BC(v109, v111, &aBlock);
      v62 = v162;

      *(v101 + 24) = v112;
      _os_log_impl(&_mh_execute_header, v98, v99, "Connect to primary beacon %{private,mask.hash}s commandId: %{public}s.", v101, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v133(v96, v29);
      sub_1008333E4(v95, type metadata accessor for OwnedBeaconRecord);
      v103 = v58;
    }

    v163 = *&v62[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v115 = v144;
    v116 = v138;
    sub_100833680(v144, v138, type metadata accessor for OwnedBeaconRecord);
    v117 = v146;
    v158(v146, v97, v29);
    v118 = (*(v147 + 80) + 24) & ~*(v147 + 80);
    v119 = (v137 + *(v103 + 80) + v118) & ~*(v103 + 80);
    v120 = (v143 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v121 = swift_allocObject();
    *(v121 + 16) = v62;
    sub_1008336E8(v116, v121 + v118, type metadata accessor for OwnedBeaconRecord);
    (v103[4])(v121 + v119, v117, v29);
    v122 = (v121 + v120);
    v123 = v160;
    *v122 = v161;
    v122[1] = v123;
    v169 = sub_100834448;
    v170 = v121;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_100006684;
    v168 = &unk_1016360A8;
    v124 = _Block_copy(&aBlock);
    v125 = v62;

    v126 = v148;
    static DispatchQoS.unspecified.getter();
    v164 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v127 = v149;
    v128 = v153;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v124);
    (*(v152 + 8))(v127, v128);
    (*(v150 + 8))(v126, v151);
    sub_1008333E4(v115, type metadata accessor for OwnedBeaconRecord);
    sub_1008333E4(v145, type metadata accessor for OwnedBeaconGroup);
  }

  sub_10000B3A8(v80, &unk_1016A9A20, &qword_10138B280);
  v82 = v135;
  sub_100833680(v28, v135, type metadata accessor for OwnedBeaconGroup);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v28;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    aBlock = v87;
    *v86 = 136446210;
    v88 = *(v61 + 24);
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v90;
    sub_1008333E4(v82, type metadata accessor for OwnedBeaconGroup);
    v92 = sub_1000136BC(v89, v91, &aBlock);

    *(v86 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v83, v84, "No primary beacon for group %{public}s. Cannot connect!", v86, 0xCu);
    sub_100007BAC(v87);

    v28 = v85;
  }

  else
  {

    sub_1008333E4(v82, type metadata accessor for OwnedBeaconGroup);
  }

  type metadata accessor for CommandError(0);
  v164 = 3;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1008345FC(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v113 = aBlock;
  v161(aBlock);

  return sub_1008333E4(v28, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1008055B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager), *(a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24));
  v10 = type metadata accessor for OwnedBeaconRecord();
  v11 = *v9;
  return sub_10067A8F4(a2 + *(v10 + 20), a3, a4, a5);
}

uint64_t sub_100805628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v39 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v39);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  v9 = *(v38 + 64);
  __chkstk_darwin(v40);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  v36 = *&v4[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v18 = *(v12 + 16);
  v18(&v33 - v16, a1, v11);
  v18(v15, a2, v11);
  v19 = *(v12 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v13 + v19 + v20) & ~v19;
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  v24 = *(v12 + 32);
  v24(v23 + v20, v17, v11);
  v24(v23 + v21, v15, v11);
  v25 = (v23 + v22);
  v26 = v35;
  *v25 = v34;
  v25[1] = v26;
  aBlock[4] = sub_1008340A4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635FB8;
  v27 = _Block_copy(aBlock);
  v28 = v4;

  v29 = v33;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v30 = v37;
  v31 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v41 + 8))(v30, v31);
  (*(v38 + 8))(v29, v40);
}

uint64_t sub_100805A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v27 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v26[0] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v26 - v13;
  v15 = *sub_1000035D0((a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager), *(a1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_findMyCommandManager + 24));
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v28 = type metadata accessor for Transaction();
  v17 = *(v10 + 16);
  v17(v14, a2, v9);
  v17(v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v9);
  v18 = *(v10 + 80);
  v19 = (v18 + 24) & ~v18;
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v18 + v20 + 16) & ~v18;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = *(v10 + 32);
  v23(v22 + v19, v14, v9);
  v24 = (v22 + v20);
  *v24 = sub_100680F90;
  v24[1] = v16;
  v23(v22 + v21, v26[0], v9);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100805CB0(uint64_t (**a1)(uint64_t a1), uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v197 = a4;
  v198 = a5;
  v199 = a3;
  v184 = type metadata accessor for BeaconObservation();
  v187 = *(v184 - 8);
  v10 = *(v187 + 64);
  v11 = __chkstk_darwin(v184);
  v192 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v193 = &v171 - v13;
  v14 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v194 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v182 = &v171 - v19;
  __chkstk_darwin(v18);
  v191 = &v171 - v20;
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v186 = &v171 - v23;
  v24 = type metadata accessor for UUID();
  v195 = *(v24 - 8);
  v196 = v24;
  v25 = *(v195 + 64);
  v26 = __chkstk_darwin(v24);
  v181 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v177 = &v171 - v29;
  v30 = __chkstk_darwin(v28);
  v176 = &v171 - v31;
  v32 = __chkstk_darwin(v30);
  v183 = &v171 - v33;
  v34 = __chkstk_darwin(v32);
  v188 = &v171 - v35;
  __chkstk_darwin(v34);
  v37 = &v171 - v36;
  v38 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v171 - v40;
  v42 = type metadata accessor for OwnedBeaconGroup(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v185 = &v171 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v171 - v48;
  __chkstk_darwin(v47);
  v51 = &v171 - v50;
  v180 = *(v6 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100AC53EC(a2, v41);
  v52 = *(v43 + 48);
  v190 = v42;
  if (v52(v41, 1, v42) == 1)
  {
    sub_10000B3A8(v41, &unk_1016AF8B0, &unk_1013A0700);
    return sub_10080738C(a1, a2, v199, v197, v198, a6);
  }

  v175 = a2;
  v189 = a1;
  v179 = v6;
  sub_1008336E8(v41, v51, type metadata accessor for OwnedBeaconGroup);
  v54 = v51;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  v56 = sub_1000076D4(v55, qword_10177B380);
  sub_100833680(v51, v49, type metadata accessor for OwnedBeaconGroup);
  v57 = v195;
  v58 = v196;
  v59 = v195 + 16;
  v173 = *(v195 + 16);
  v173(v37, v189, v196);
  v178 = v56;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v174 = v59;
  if (!v62)
  {

    v70 = *(v57 + 8);
    v70(v37, v58);
    sub_1008333E4(v49, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_23;
  }

  v172 = v54;
  v63 = swift_slowAlloc();
  v171 = swift_slowAlloc();
  v201[0] = v171;
  *v63 = 136446722;
  v64 = *(v190 + 6);
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
  v65 = dispatch thunk of CustomStringConvertible.description.getter();
  v67 = v66;
  sub_1008333E4(v49, type metadata accessor for OwnedBeaconGroup);
  v68 = sub_1000136BC(v65, v67, v201);

  *(v63 + 4) = v68;
  *(v63 + 12) = 2080;
  if (v199 > 2)
  {
    switch(v199)
    {
      case 3:
        v69 = 0x8000000101357040;
        v71 = 0xD000000000000010;
        goto LABEL_22;
      case 4:
        v69 = 0xEF64656D7269666ELL;
        v71 = 0x6F4365756575712ELL;
        goto LABEL_22;
      case 5:
        v69 = 0xEE0074726F685367;
        goto LABEL_16;
    }

LABEL_19:
    v69 = 0xE700000000000000;
    v71 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

  if (!v199)
  {
    v69 = 0xE800000000000000;
    v71 = 0x746C75616665642ELL;
    goto LABEL_22;
  }

  if (v199 == 1)
  {
    v69 = 0xE800000000000000;
    v71 = 0x676E69676E61722ELL;
    goto LABEL_22;
  }

  if (v199 != 2)
  {
    goto LABEL_19;
  }

  v69 = 0xE900000000000067;
LABEL_16:
  v71 = 0x6E696B636172742ELL;
LABEL_22:
  v72 = sub_1000136BC(v71, v69, v201);

  *(v63 + 14) = v72;
  *(v63 + 22) = 2082;
  v73 = v196;
  v74 = dispatch thunk of CustomStringConvertible.description.getter();
  v76 = v75;
  v70 = *(v57 + 8);
  v70(v37, v73);
  v77 = sub_1000136BC(v74, v76, v201);
  v58 = v73;

  *(v63 + 24) = v77;
  _os_log_impl(&_mh_execute_header, v60, v61, "Play sound for group %{public}s with context %s. CommandId %{public}s", v63, 0x20u);
  swift_arrayDestroy();

  v54 = v172;
LABEL_23:
  v78 = sub_10080AF18();
  v80 = v193;
  v79 = v194;
  v81 = v192;
  if ((v78 & 1) == 0)
  {
    v95 = v54;
    v96 = v185;
    sub_100833680(v54, v185, type metadata accessor for OwnedBeaconGroup);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v201[0] = v100;
      *v99 = 136446210;
      v101 = *(v190 + 6);
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = v103;
      sub_1008333E4(v96, type metadata accessor for OwnedBeaconGroup);
      v105 = sub_1000136BC(v102, v104, v201);

      *(v99 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v97, v98, "Queue not needed for group %{public}s", v99, 0xCu);
      sub_100007BAC(v100);
    }

    else
    {

      sub_1008333E4(v96, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100809A10(v189, v95, v199, v197, v198, a6);
    v114 = v95;
    return sub_1008333E4(v114, type metadata accessor for OwnedBeaconGroup);
  }

  v190 = v70;
  v82 = sub_100519FB0();
  v83 = v186;
  sub_10112C648(v82, v186);

  if ((*(v57 + 48))(v83, 1, v58) == 1)
  {
    v84 = v54;
    sub_10000B3A8(v83, &qword_1016980D0, &unk_10138F3B0);
    v85 = v181;
    v173(v181, v175, v58);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v201[0] = v89;
      *v88 = 136315138;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v85;
      v93 = v92;
      v190(v91, v58);
      v94 = sub_1000136BC(v90, v93, v201);

      *(v88 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v86, v87, "Group %s has no member!", v88, 0xCu);
      sub_100007BAC(v89);
    }

    else
    {

      v190(v85, v58);
    }

    v115 = v197;
    type metadata accessor for CommandError(0);
    v200 = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1008345FC(&qword_101696428, type metadata accessor for CommandError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v116 = v201[0];
    v115(v201[0]);

    v114 = v84;
    return sub_1008333E4(v114, type metadata accessor for OwnedBeaconGroup);
  }

  v106 = v188;
  (*(v57 + 32))(v188, v83, v58);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v107 = sub_100035730(v106, sub_100526B58, 0);
  v108 = v191;
  sub_1012BB138(v107, v191);

  v109 = v182;
  sub_1000D2A70(v108, v182, &qword_1016A42E0, &qword_1013B0010);
  v110 = v187 + 48;
  v111 = *(v187 + 48);
  v112 = v184;
  v113 = v111(v109, 1, v184);
  v172 = v54;
  if (v113 == 1)
  {
    sub_10000B3A8(v109, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    v187 = v110;
    sub_1008336E8(v109, v80, type metadata accessor for BeaconObservation);
    sub_100833680(v80, v81, type metadata accessor for BeaconObservation);
    v117 = Logger.logObject.getter();
    v118 = v81;
    v119 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v117, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v201[0] = v121;
      *v120 = 136315138;
      v122 = sub_1009201A4();
      v124 = v123;
      sub_1008333E4(v118, type metadata accessor for BeaconObservation);
      v125 = sub_1000136BC(v122, v124, v201);

      *(v120 + 4) = v125;
      _os_log_impl(&_mh_execute_header, v117, v119, "Found observation %s", v120, 0xCu);
      sub_100007BAC(v121);
      v79 = v194;

      v54 = v172;
    }

    else
    {

      sub_1008333E4(v118, type metadata accessor for BeaconObservation);
    }

    sub_1008333E4(v80, type metadata accessor for BeaconObservation);
    v112 = v184;
  }

  sub_1000D2A70(v191, v79, &qword_1016A42E0, &qword_1013B0010);
  if (v111(v79, 1, v112) == 1)
  {
    sub_10000B3A8(v79, &qword_1016A42E0, &qword_1013B0010);
    v126 = v198;
    v127 = v175;
    v128 = v183;
  }

  else
  {
    v129 = *(v79 + *(v112 + 24));
    sub_1008333E4(v79, type metadata accessor for BeaconObservation);
    v126 = v198;
    v127 = v175;
    v128 = v183;
    if (v129 == 23)
    {
      v130 = v177;
      v131 = v196;
      v173(v177, v175, v196);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v201[0] = v135;
        *v134 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v136 = dispatch thunk of CustomStringConvertible.description.getter();
        v138 = v137;
        v139 = v130;
        v140 = v190;
        v190(v139, v131);
        v141 = sub_1000136BC(v136, v138, v201);

        *(v134 + 4) = v141;
        _os_log_impl(&_mh_execute_header, v132, v133, "Play Sound has already been queued for groupIdentifier: %s", v134, 0xCu);
        sub_100007BAC(v135);
      }

      else
      {

        v166 = v130;
        v140 = v190;
        v190(v166, v131);
      }

      v167 = v197;
      type metadata accessor for CommandError(0);
      v168 = 11;
      goto LABEL_59;
    }
  }

  v142 = sub_100831CC4(v127);
  sub_100A8B080(v54);

  if (v199 == 4)
  {
    sub_100831EA0(v127);
LABEL_51:
    v153 = v196;
    v173(v128, v127, v196);
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = v126;
      v158 = swift_slowAlloc();
      v201[0] = v158;
      *v156 = 141558275;
      *(v156 + 4) = 1752392040;
      *(v156 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v159 = dispatch thunk of CustomStringConvertible.description.getter();
      v161 = v160;
      v162 = v128;
      v163 = v190;
      v190(v162, v153);
      v164 = sub_1000136BC(v159, v161, v201);

      *(v156 + 14) = v164;
      _os_log_impl(&_mh_execute_header, v154, v155, "Queuing play sound for %{private,mask.hash}s.", v156, 0x16u);
      sub_100007BAC(v158);
      v126 = v157;

      v54 = v172;
    }

    else
    {

      v165 = v128;
      v163 = v190;
      v190(v165, v153);
    }

    sub_100809A10(v189, v54, v199, v197, v126, a6);
    sub_10000B3A8(v191, &qword_1016A42E0, &qword_1013B0010);
    v163(v188, v153);
    v114 = v54;
    return sub_1008333E4(v114, type metadata accessor for OwnedBeaconGroup);
  }

  if (!v142)
  {
    goto LABEL_51;
  }

  v143 = v176;
  v131 = v196;
  v173(v176, v127, v196);
  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v201[0] = v147;
    *v146 = 141558275;
    *(v146 + 4) = 1752392040;
    *(v146 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v148 = dispatch thunk of CustomStringConvertible.description.getter();
    v150 = v149;
    v151 = v143;
    v140 = v190;
    v190(v151, v131);
    v152 = sub_1000136BC(v148, v150, v201);

    *(v146 + 14) = v152;
    _os_log_impl(&_mh_execute_header, v144, v145, "Queue confirmation required for %{private,mask.hash}s, done with play sound.", v146, 0x16u);
    sub_100007BAC(v147);
  }

  else
  {

    v169 = v143;
    v140 = v190;
    v190(v169, v131);
  }

  v167 = v197;
  type metadata accessor for CommandError(0);
  v168 = 10;
LABEL_59:
  v200 = v168;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1008345FC(&qword_101696428, type metadata accessor for CommandError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v170 = v201[0];
  v167(v201[0]);

  sub_10000B3A8(v191, &qword_1016A42E0, &qword_1013B0010);
  v140(v188, v131);
  v114 = v172;
  return sub_1008333E4(v114, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_10080738C(uint64_t (**a1)(uint64_t a1), uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v276 = a5;
  v275 = a4;
  v271 = a1;
  v11 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v256 = &v252 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v255 = &v252 - v16;
  __chkstk_darwin(v15);
  v259 = &v252 - v17;
  v18 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v262 = &v252 - v20;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v21 - 8);
  v278 = v21;
  v279 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v277 = &v252 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v26 = *(v25 - 8);
  v281 = v25;
  v282 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v280 = &v252 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = type metadata accessor for DispatchQoS.QoSClass();
  v267 = *(v268 - 8);
  v29 = *(v267 + 64);
  __chkstk_darwin(v268);
  v266 = &v252 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for BeaconObservation();
  v31 = *(v263 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v263);
  v254 = &v252 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v283 = (&v252 - v36);
  __chkstk_darwin(v35);
  v261 = &v252 - v37;
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v257 = &v252 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v253 = &v252 - v44;
  v45 = __chkstk_darwin(v43);
  v270 = &v252 - v46;
  v47 = __chkstk_darwin(v45);
  v284 = &v252 - v48;
  v272 = v49;
  __chkstk_darwin(v47);
  v51 = &v252 - v50;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  v53 = sub_1000076D4(v52, qword_10177B380);
  v54 = *(v39 + 16);
  v286 = v39 + 16;
  v273 = v54;
  v54(v51, a2, v38);
  v260 = v53;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  v57 = os_log_type_enabled(v55, v56);
  v274 = v7;
  v285 = v39;
  v264 = v31;
  if (!v57)
  {

    v67 = *(v39 + 8);
    (v67)(v51, v38);
    goto LABEL_21;
  }

  v258 = a2;
  v58 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v58 = 136315650;
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
  v59 = dispatch thunk of CustomStringConvertible.description.getter();
  v61 = v60;
  v62 = *(v39 + 8);
  v265 = v38;
  v252 = v62;
  (v62)(v51, v38);
  v63 = sub_1000136BC(v59, v61, &aBlock);

  *(v58 + 4) = v63;
  *(v58 + 12) = 2080;
  v269 = a3;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v65 = 0xD000000000000010;
      v66 = 0x8000000101357040;
    }

    else
    {
      if (a3 != 4)
      {
        v64 = v274;
        if (a3 == 5)
        {
          v66 = 0xEE0074726F685367;
          v65 = 0x6E696B636172742ELL;
          goto LABEL_20;
        }

LABEL_16:
        v66 = 0xE700000000000000;
        v65 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      v66 = 0xEF64656D7269666ELL;
      v65 = 0x6F4365756575712ELL;
    }

LABEL_19:
    v64 = v274;
    goto LABEL_20;
  }

  if (!a3)
  {
    v65 = 0x746C75616665642ELL;
    v66 = 0xE800000000000000;
    goto LABEL_19;
  }

  if (a3 == 1)
  {
    v66 = 0xE800000000000000;
    v65 = 0x676E69676E61722ELL;
    goto LABEL_19;
  }

  v64 = v274;
  if (a3 != 2)
  {
    goto LABEL_16;
  }

  v65 = 0x6E696B636172742ELL;
  v66 = 0xE900000000000067;
LABEL_20:
  a2 = v258;
  v68 = sub_1000136BC(v65, v66, &aBlock);

  *(v58 + 14) = v68;
  *(v58 + 22) = 2048;
  *(v58 + 24) = a6;
  _os_log_impl(&_mh_execute_header, v55, v56, "playSoundSingle %s context %s timeout %f", v58, 0x20u);
  swift_arrayDestroy();

  v38 = v265;
  v39 = v285;
  v7 = v64;
  v67 = v252;
  a3 = v269;
LABEL_21:
  v69 = *&v7[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore];
  sub_100025020(a2, &aBlock);
  v70 = v7;
  v71 = v291;
  sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
  v72 = v283;
  if (!v71)
  {
    v105 = v262;
    sub_100023184(a2, v262);
    v106 = type metadata accessor for WildModeAssociationRecord(0);
    v107 = (*(*(v106 - 8) + 48))(v105, 1, v106);
    sub_10000B3A8(v105, &unk_1016C7C90, &qword_1013BB4B0);
    if (v107 == 1)
    {
      v108 = v257;
      v273(v257, a2, v38);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        aBlock = v112;
        *v111 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v113 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = v114;
        (v67)(v108, v38);
        v116 = sub_1000136BC(v113, v115, &aBlock);

        *(v111 + 4) = v116;
        _os_log_impl(&_mh_execute_header, v109, v110, "Invalid beacon %s", v111, 0xCu);
        sub_100007BAC(v112);
      }

      else
      {

        (v67)(v108, v38);
      }

      sub_1000BC488();
      v144 = v267;
      v145 = v266;
      v146 = v268;
      (*(v267 + 104))(v266, enum case for DispatchQoS.QoSClass.default(_:), v268);
      v147 = static OS_dispatch_queue.global(qos:)();
      (*(v144 + 8))(v145, v146);
      v148 = swift_allocObject();
      v149 = v276;
      *(v148 + 16) = v275;
      *(v148 + 24) = v149;
      v292 = sub_100833820;
      v293 = v148;
      aBlock = _NSConcreteStackBlock;
      v289 = 1107296256;
      v150 = &unk_101635A18;
      goto LABEL_44;
    }

    v91 = v67;
    v89 = v264;
    switch(a3)
    {
      case 2:
        goto LABEL_39;
      case 5:
        v283 = *&v70[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
        v153 = v273;
        v273(v284, a2, v38);
        v153(v270, v271, v38);
        v154 = v285;
        v155 = *(v285 + 80);
        v156 = (v155 + 16) & ~v155;
        v157 = (v272 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
        v158 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
        v159 = v38;
        v160 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;
        v161 = (v160 + 15) & 0xFFFFFFFFFFFFFFF8;
        v162 = (v155 + 16 + v161) & ~v155;
        v163 = swift_allocObject();
        v164 = *(v154 + 32);
        v164(v163 + v156, v284, v159);
        *(v163 + v157) = 5;
        *(v163 + v158) = a6;
        v165 = v274;
        *(v163 + v160) = v274;
        v166 = (v163 + v161);
        v167 = v276;
        *v166 = v275;
        v166[1] = v167;
        v164(v163 + v162, v270, v159);
        v292 = sub_1008338B0;
        v293 = v163;
        aBlock = _NSConcreteStackBlock;
        v289 = 1107296256;
        v290 = sub_100006684;
        v291 = &unk_101635C20;
        v132 = _Block_copy(&aBlock);
        v168 = v165;
        goto LABEL_35;
      case 4:
LABEL_39:
        if (qword_101694920 == -1)
        {
          goto LABEL_40;
        }

        goto LABEL_81;
    }

    v183 = Logger.logObject.getter();
    v184 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v183, v184))
    {
LABEL_79:

      sub_1000BC488();
      v247 = v267;
      v248 = v266;
      v249 = v268;
      (*(v267 + 104))(v266, enum case for DispatchQoS.QoSClass.default(_:), v268);
      v147 = static OS_dispatch_queue.global(qos:)();
      (*(v247 + 8))(v248, v249);
      v250 = swift_allocObject();
      v251 = v276;
      *(v250 + 16) = v275;
      *(v250 + 24) = v251;
      v292 = sub_100834730;
      v293 = v250;
      aBlock = _NSConcreteStackBlock;
      v289 = 1107296256;
      v150 = &unk_101635A68;
LABEL_44:
      v290 = sub_100006684;
      v291 = v150;
      v151 = _Block_copy(&aBlock);

      v134 = v280;
      static DispatchQoS.unspecified.getter();
      v287 = _swiftEmptyArrayStorage;
      sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v136 = v277;
      v135 = v278;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v151);

      goto LABEL_45;
    }

    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    aBlock = v186;
    *v185 = 136315138;
    if (a3 > 1)
    {
      if (a3 == 3)
      {
        v188 = 0xD000000000000010;
        v187 = 0x8000000101357040;
        goto LABEL_78;
      }
    }

    else
    {
      if (!a3)
      {
        v188 = 0x746C75616665642ELL;
        v187 = 0xE800000000000000;
        goto LABEL_78;
      }

      if (a3 == 1)
      {
        v187 = 0xE800000000000000;
        v188 = 0x676E69676E61722ELL;
LABEL_78:
        v246 = sub_1000136BC(v188, v187, &aBlock);

        *(v185 + 4) = v246;
        _os_log_impl(&_mh_execute_header, v183, v184, "Invalid context for UT play sound %s", v185, 0xCu);
        sub_100007BAC(v186);

        goto LABEL_79;
      }
    }

    v187 = 0xE700000000000000;
    v188 = 0x6E776F6E6B6E75;
    goto LABEL_78;
  }

  if ((sub_10081008C(a2) & 1) == 0)
  {
    v283 = *&v70[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v265 = v38;
    v117 = v273;
    v273(v284, a2, v38);
    v117(v270, v271, v38);
    v118 = *(v39 + 80);
    v119 = (v118 + 16) & ~v118;
    v120 = (v272 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v121 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
    v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
    v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
    v124 = (v118 + 16 + v123) & ~v118;
    v125 = swift_allocObject();
    v126 = *(v39 + 32);
    v127 = v125 + v119;
    v128 = v265;
    v126(v127, v284, v265);
    *(v125 + v120) = a3;
    *(v125 + v121) = a6;
    v129 = v274;
    *(v125 + v122) = v274;
    v130 = (v125 + v123);
    v131 = v276;
    *v130 = v275;
    v130[1] = v131;
    v126(v125 + v124, v270, v128);
    v292 = sub_100834708;
    v293 = v125;
    aBlock = _NSConcreteStackBlock;
    v289 = 1107296256;
    v290 = sub_100006684;
    v291 = &unk_101635C70;
    v132 = _Block_copy(&aBlock);
    v133 = v129;
LABEL_35:

    v134 = v280;
    static DispatchQoS.unspecified.getter();
    v287 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v136 = v277;
    v135 = v278;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v132);
LABEL_45:
    (*(v279 + 8))(v136, v135);
    (*(v282 + 8))(v134, v281);
  }

  v269 = a3;
  v73 = v70;
  if (sub_10081008C(a2))
  {
    v74 = 23;
  }

  else
  {
    v74 = 24;
  }

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v75 = qword_10177B2E8;
  v76 = v261;
  v77 = v38;
  v78 = v273;
  v273(v261, a2, v38);
  v79 = v263;
  static Date.trustedNow.getter(v76 + *(v263 + 20));
  *(v76 + *(v79 + 24)) = v74;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v80 = *(v264 + 72);
  v81 = (*(v264 + 80) + 32) & ~*(v264 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_101385D80;
  sub_100833680(v76, v82 + v81, type metadata accessor for BeaconObservation);
  v83 = type metadata accessor for Transaction();
  __chkstk_darwin(v83);
  *(&v252 - 4) = v75;
  *(&v252 - 3) = v82;
  *(&v252 - 2) = 0;
  *(&v252 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v76, type metadata accessor for BeaconObservation);
  sub_10082145C(a2);
  v84 = *&v73[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v85 = v284;
  v78(v284, a2, v38);
  v86 = v73;
  v87 = v285;
  v88 = (*(v285 + 80) + 24) & ~*(v285 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = v86;
  (*(v87 + 32))(v89 + v88, v85, v77);
  v90 = swift_allocObject();
  *(v90 + 16) = sub_10083470C;
  *(v90 + 24) = v89;
  v292 = sub_10040B9F8;
  v293 = v90;
  v91 = a2;
  aBlock = _NSConcreteStackBlock;
  v289 = 1107296256;
  v92 = v86;
  a2 = &v290;
  v290 = sub_10013FE14;
  v291 = &unk_101635CE8;
  a3 = _Block_copy(&aBlock);
  v38 = v293;
  v72 = v92;

  dispatch_sync(v84, a3);
  _Block_release(a3);
  LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

  if ((v84 & 1) == 0)
  {
    v93 = type metadata accessor for Transaction();
    __chkstk_darwin(v93);
    *(&v252 - 6) = v72;
    *(&v252 - 5) = v91;
    *(&v252 - 4) = a6;
    v94 = v269;
    *(&v252 - 3) = v271;
    *(&v252 - 2) = v94;
    static Transaction.named<A>(_:with:)();
    sub_1000BC488();
    v95 = v267;
    v96 = v266;
    v97 = v268;
    (*(v267 + 104))(v266, enum case for DispatchQoS.QoSClass.default(_:), v268);
    v98 = static OS_dispatch_queue.global(qos:)();
    (*(v95 + 8))(v96, v97);
    v99 = swift_allocObject();
    v100 = v276;
    *(v99 + 16) = v275;
    *(v99 + 24) = v100;
    v292 = sub_100470308;
    v293 = v99;
    aBlock = _NSConcreteStackBlock;
    v289 = 1107296256;
    v290 = sub_100006684;
    v291 = &unk_101635D38;
    v101 = _Block_copy(&aBlock);

    v102 = v280;
    static DispatchQoS.unspecified.getter();
    v287 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v104 = v277;
    v103 = v278;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v101);

    (*(v279 + 8))(v104, v103);
    (*(v282 + 8))(v102, v281);
LABEL_30:
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_40:
  v137 = qword_10177B2E8;
  v258 = a2;
  v138 = sub_100035730(a2, sub_100526B58, 0);
  v139 = v259;
  sub_1012BB138(v138, v259);

  v140 = v139;
  v141 = v255;
  sub_1000D2A70(v140, v255, &qword_1016A42E0, &qword_1013B0010);
  v142 = *(v89 + 48);
  v143 = v263;
  if ((v142)(v141, 1, v263) == 1)
  {
    sub_10000B3A8(v141, &qword_1016A42E0, &qword_1013B0010);
  }

  else
  {
    v270 = v142;
    sub_1008336E8(v141, v72, type metadata accessor for BeaconObservation);
    v169 = v254;
    sub_100833680(v72, v254, type metadata accessor for BeaconObservation);
    v170 = Logger.logObject.getter();
    v171 = v72;
    v172 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v170, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v269 = a3;
      v262 = v137;
      v175 = v38;
      v176 = v174;
      aBlock = v174;
      *v173 = 136315138;
      v177 = sub_1009201A4();
      v178 = v91;
      v180 = v179;
      sub_1008333E4(v169, type metadata accessor for BeaconObservation);
      v181 = sub_1000136BC(v177, v180, &aBlock);
      v91 = v178;

      *(v173 + 4) = v181;
      _os_log_impl(&_mh_execute_header, v170, v172, "Found observation %s", v173, 0xCu);
      sub_100007BAC(v176);
      v38 = v175;
      v137 = v262;
      a3 = v269;

      v89 = v264;

      v182 = v283;
    }

    else
    {

      sub_1008333E4(v169, type metadata accessor for BeaconObservation);
      v182 = v171;
    }

    sub_1008333E4(v182, type metadata accessor for BeaconObservation);
    v143 = v263;
    v142 = v270;
  }

  v189 = v256;
  sub_1000D2A70(v259, v256, &qword_1016A42E0, &qword_1013B0010);
  if ((v142)(v189, 1, v143) == 1)
  {
    sub_10000B3A8(v189, &qword_1016A42E0, &qword_1013B0010);
    v190 = v274;
    v191 = v258;
  }

  else
  {
    v192 = *(v189 + *(v143 + 24));
    sub_1008333E4(v189, type metadata accessor for BeaconObservation);
    v190 = v274;
    v191 = v258;
    if (v192 == 23)
    {
      v193 = v253;
      v273(v253, v258, v38);
      v194 = Logger.logObject.getter();
      v195 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        aBlock = v197;
        *v196 = 136315138;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v198 = dispatch thunk of CustomStringConvertible.description.getter();
        v199 = v193;
        v201 = v200;
        (v91)(v199, v38);
        v202 = sub_1000136BC(v198, v201, &aBlock);

        *(v196 + 4) = v202;
        _os_log_impl(&_mh_execute_header, v194, v195, "Play Sound has already been queued for: %s", v196, 0xCu);
        sub_100007BAC(v197);
      }

      else
      {

        (v91)(v193, v38);
      }

      sub_1000BC488();
      v237 = v267;
      v238 = v266;
      v239 = v268;
      (*(v267 + 104))(v266, enum case for DispatchQoS.QoSClass.default(_:), v268);
      v206 = static OS_dispatch_queue.global(qos:)();
      (*(v237 + 8))(v238, v239);
      v240 = swift_allocObject();
      v241 = v276;
      *(v240 + 16) = v275;
      *(v240 + 24) = v241;
      v292 = sub_100833890;
      v293 = v240;
      aBlock = _NSConcreteStackBlock;
      v289 = 1107296256;
      v209 = &unk_101635BD0;
      goto LABEL_73;
    }
  }

  if (a3 == 4)
  {
    sub_100831EA0(v191);
    goto LABEL_66;
  }

  if (sub_100831CC4(v191))
  {
    sub_1000BC488();
    v203 = v267;
    v204 = v266;
    v205 = v268;
    (*(v267 + 104))(v266, enum case for DispatchQoS.QoSClass.default(_:), v268);
    v206 = static OS_dispatch_queue.global(qos:)();
    (*(v203 + 8))(v204, v205);
    v207 = swift_allocObject();
    v208 = v276;
    *(v207 + 16) = v275;
    *(v207 + 24) = v208;
    v292 = sub_100833870;
    v293 = v207;
    aBlock = _NSConcreteStackBlock;
    v289 = 1107296256;
    v209 = &unk_101635B80;
LABEL_73:
    v290 = sub_100006684;
    v291 = v209;
    v242 = _Block_copy(&aBlock);

    v243 = v280;
    static DispatchQoS.unspecified.getter();
    v287 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v245 = v277;
    v244 = v278;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v242);

    (*(v279 + 8))(v245, v244);
    (*(v282 + 8))(v243, v281);
    sub_10000B3A8(v259, &qword_1016A42E0, &qword_1013B0010);
  }

LABEL_66:
  if (sub_10081008C(v191))
  {
    v210 = 23;
  }

  else
  {
    v210 = 24;
  }

  v211 = v261;
  v212 = v273;
  v273(v261, v191, v38);
  v213 = v263;
  static Date.trustedNow.getter(v211 + *(v263 + 20));
  *(v211 + *(v213 + 24)) = v210;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v214 = *(v89 + 72);
  v215 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v216 = swift_allocObject();
  *(v216 + 16) = xmmword_101385D80;
  sub_100833680(v211, v216 + v215, type metadata accessor for BeaconObservation);
  v217 = type metadata accessor for Transaction();
  __chkstk_darwin(v217);
  *(&v252 - 4) = v137;
  *(&v252 - 3) = v216;
  *(&v252 - 2) = 0;
  *(&v252 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v211, type metadata accessor for BeaconObservation);
  sub_10082145C(v191);
  v218 = *&v190[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  v219 = v284;
  v212(v284, v191, v38);
  v220 = v285;
  v221 = (*(v285 + 80) + 24) & ~*(v285 + 80);
  v222 = swift_allocObject();
  *(v222 + 16) = v190;
  (*(v220 + 32))(v222 + v221, v219, v38);
  v223 = swift_allocObject();
  *(v223 + 16) = sub_100833840;
  *(v223 + 24) = v222;
  v292 = sub_10040B9F8;
  v293 = v223;
  aBlock = _NSConcreteStackBlock;
  v289 = 1107296256;
  v290 = sub_10013FE14;
  v291 = &unk_101635AE0;
  v224 = _Block_copy(&aBlock);
  v225 = v190;

  dispatch_sync(v218, v224);
  _Block_release(v224);
  LOBYTE(v218) = swift_isEscapingClosureAtFileLocation();

  if ((v218 & 1) == 0)
  {
    v226 = type metadata accessor for Transaction();
    __chkstk_darwin(v226);
    *(&v252 - 6) = v225;
    *(&v252 - 5) = v191;
    *(&v252 - 4) = a6;
    *(&v252 - 3) = v271;
    *(&v252 - 2) = 2;
    static Transaction.named<A>(_:with:)();
    sub_1000BC488();
    v227 = v267;
    v228 = v266;
    v229 = v268;
    (*(v267 + 104))(v266, enum case for DispatchQoS.QoSClass.default(_:), v268);
    v230 = static OS_dispatch_queue.global(qos:)();
    (*(v227 + 8))(v228, v229);
    v231 = swift_allocObject();
    v232 = v276;
    *(v231 + 16) = v275;
    *(v231 + 24) = v232;
    v292 = sub_100470308;
    v293 = v231;
    aBlock = _NSConcreteStackBlock;
    v289 = 1107296256;
    v290 = sub_100006684;
    v291 = &unk_101635B30;
    v233 = _Block_copy(&aBlock);

    v234 = v280;
    static DispatchQoS.unspecified.getter();
    v287 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v236 = v277;
    v235 = v278;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v233);

    (*(v279 + 8))(v236, v235);
    (*(v282 + 8))(v234, v281);
    sub_10000B3A8(v259, &qword_1016A42E0, &qword_1013B0010);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_100809A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v129 = a5;
  v126 = a4;
  v121 = a3;
  v120 = a1;
  v138 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v137 = &v113 - v10;
  v153 = type metadata accessor for Date();
  v11 = *(v153 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v153);
  v151 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for BeaconObservation();
  v149 = *(v150 - 8);
  v14 = *(v149 + 64);
  __chkstk_darwin(v150);
  v148 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v128 - 8);
  v16 = *(v127 + 64);
  __chkstk_darwin(v128);
  v125 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for DispatchQoS();
  v123 = *(v124 - 8);
  v18 = *(v123 + 64);
  __chkstk_darwin(v124);
  v122 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for DispatchQoS.QoSClass();
  v118 = *(v119 - 8);
  v20 = *(v118 + 64);
  __chkstk_darwin(v119);
  v117 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OwnedBeaconGroup(0);
  v131 = *(v22 - 8);
  v23 = *(v131 + 64);
  __chkstk_darwin(v22 - 8);
  v132 = v24;
  v133 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v139 = &v113 - v31;
  __chkstk_darwin(v30);
  v130 = &v113 - v32;
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v158 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v113 - v38;
  v134 = v6;
  if (sub_10080AF18())
  {
    v40 = 23;
  }

  else
  {
    v40 = 24;
  }

  v144 = v40;
  v135 = a2;
  v41 = sub_100519FB0();
  v42 = v39;
  v43 = v41 + 56;
  v44 = 1 << *(v41 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v41 + 56);
  v47 = (v44 + 63) >> 6;
  v156 = v34 + 16;
  v136 = (v11 + 48);
  v152 = (v11 + 32);
  v140 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
  v116 = NSSystemClockDidChangeNotification;
  v115 = &v166;
  v143 = (v34 + 32);
  v146 = v34;
  v142 = (v34 + 8);
  v155 = v41;

  v49 = 0;
  v50 = 0;
  v141 = xmmword_101385D80;
  v154 = v29;
  v147 = v33;
  v145 = v42;
  while (v46)
  {
LABEL_14:
    v62 = *(v146 + 16);
    v62(v42, *(v155 + 48) + *(v146 + 72) * (__clz(__rbit64(v46)) | (v49 << 6)), v33);
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v157 = qword_10177B2E8;
    v62(v158, v42, v33);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    aBlock = 7.45683732e247;
    *&v165 = -5.98008217e197;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v159 == 1)
    {
      v63 = [objc_opt_self() sharedInstance];
      v64 = [v63 isInternalBuild];

      if (v64)
      {
        if (qword_101694418 != -1)
        {
          swift_once();
        }

        v65 = sub_1000076D4(v138, qword_101696A00);
        swift_beginAccess();
        v66 = v137;
        sub_1000D2A70(v65, v137, &unk_101696900, &unk_10138B1E0);
        v67 = v153;
        if ((*v136)(v66, 1, v153) != 1)
        {
          v51 = v151;
          (*v152)(v151, v66, v67);
          v52 = v67;
          goto LABEL_8;
        }

        sub_10000B3A8(v66, &unk_101696900, &unk_10138B1E0);
      }
    }

    My = type metadata accessor for Feature.FindMy();
    v167 = My;
    v168 = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v69 = sub_1000280DC(&aBlock);
    (*(*(My - 8) + 104))(v69, v140, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(&aBlock);
    if (My)
    {
      if (qword_101694FD8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&qword_101696CB8, &unk_10138B600);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v70 = *&v165;
      if ((LOBYTE(aBlock) & 1) == 0)
      {
        v71 = [objc_opt_self() defaultCenter];
        v168 = sub_1008347D8;
        v169 = 0;
        aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
        v165 = 1107296256;
        v166 = sub_100F0FA50;
        v167 = &unk_101635608;
        v72 = _Block_copy(&aBlock);

        v73 = [v71 addObserverForName:v116 object:0 queue:0 usingBlock:v72];
        _Block_release(v72);
        v29 = v154;
        swift_unknownObjectRelease();
      }

      if (qword_101694FE8 != -1)
      {
        swift_once();
      }

      if (*&qword_1016C0DA0 >= v70)
      {
        sub_100F10324(0);
      }

      Current = CFAbsoluteTimeGetCurrent();
      sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      if (Current - aBlock - *&v165 > 86400.0)
      {
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v114 = v50;
        v75 = v29;
        v76 = type metadata accessor for TaskPriority();
        v77 = *(v76 - 8);
        v78 = v139;
        (*(v77 + 56))(v139, 1, 1, v76);
        v79 = swift_allocObject();
        *(v79 + 16) = 0;
        *(v79 + 24) = 0;
        sub_1000D2A70(v78, v75, &qword_101698C00, &qword_10138B570);
        v80 = (*(v77 + 48))(v75, 1, v76);

        if (v80 == 1)
        {
          sub_10000B3A8(v75, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v77 + 8))(v75, v76);
        }

        v82 = *(v79 + 16);
        v81 = *(v79 + 24);
        swift_unknownObjectRetain();

        v50 = v114;
        if (v82)
        {
          swift_getObjectType();
          v83 = dispatch thunk of Actor.unownedExecutor.getter();
          v85 = v84;
          swift_unknownObjectRelease();
        }

        else
        {
          v83 = 0;
          v85 = 0;
        }

        sub_10000B3A8(v139, &qword_101698C00, &qword_10138B570);
        v86 = swift_allocObject();
        *(v86 + 16) = &unk_1013BD7A8;
        *(v86 + 24) = v79;
        if (v85 | v83)
        {
          v160 = 0;
          v161 = 0;
          v162 = v83;
          v163 = v85;
        }

        swift_task_create();
      }

      v52 = v153;
      v51 = v151;
      Date.init(timeIntervalSinceReferenceDate:)();
    }

    else
    {
      v51 = v151;
      Date.init()();
      v52 = v153;
    }

LABEL_8:
    v46 &= v46 - 1;
    v53 = v148;
    v54 = v147;
    (*v143)(v148, v158, v147);
    v55 = v150;
    (*v152)((v53 + *(v150 + 20)), v51, v52);
    *(v53 + *(v55 + 24)) = v144;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v56 = *(v149 + 72);
    v57 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v141;
    sub_100833680(v53, v58 + v57, type metadata accessor for BeaconObservation);
    v59 = type metadata accessor for Transaction();
    __chkstk_darwin(v59);
    *(&v113 - 4) = v157;
    *(&v113 - 3) = v58;
    *(&v113 - 2) = 0;
    *(&v113 - 1) = 0;
    static Transaction.named<A>(_:with:)();

    v60 = v53;
    v33 = v54;
    sub_1008333E4(v60, type metadata accessor for BeaconObservation);
    v42 = v145;
    result = (*v142)(v145, v54);
    v29 = v154;
  }

  while (1)
  {
    v61 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v61 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v61);
    ++v49;
    if (v46)
    {
      v49 = v61;
      goto LABEL_14;
    }
  }

  v87 = type metadata accessor for TaskPriority();
  v88 = v130;
  (*(*(v87 - 8) + 56))(v130, 1, 1, v87);
  v89 = v135;
  v90 = v133;
  sub_100833680(v135, v133, type metadata accessor for OwnedBeaconGroup);
  v91 = *(v131 + 80);
  v92 = v132;
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  *(v93 + 24) = 0;
  sub_1008336E8(v90, v93 + ((v91 + 32) & ~v91), type metadata accessor for OwnedBeaconGroup);
  sub_10025EDD4(0, 0, v88, &unk_1013BD7C0, v93);

  v94 = v134;
  v95 = *&v134[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  sub_100833680(v89, v90, type metadata accessor for OwnedBeaconGroup);
  v96 = (v91 + 16) & ~v91;
  v97 = swift_allocObject();
  sub_1008336E8(v90, v97 + v96, type metadata accessor for OwnedBeaconGroup);
  *(v97 + ((v92 + v96 + 7) & 0xFFFFFFFFFFFFFFF8)) = v94;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_100832DF8;
  *(v98 + 24) = v97;
  v168 = sub_1000D2FB0;
  v169 = v98;
  aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v165 = 1107296256;
  v166 = sub_10013FE14;
  v167 = &unk_1016356F8;
  v99 = _Block_copy(&aBlock);
  v100 = v94;

  dispatch_sync(v95, v99);
  _Block_release(v99);
  LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

  if ((v95 & 1) == 0)
  {
    v101 = type metadata accessor for Transaction();
    __chkstk_darwin(v101);
    *(&v113 - 6) = v100;
    *(&v113 - 5) = v89;
    *(&v113 - 4) = a6;
    v102 = v121;
    *(&v113 - 3) = v120;
    *(&v113 - 2) = v102;
    static Transaction.named<A>(_:with:)();
    sub_1000BC488();
    v103 = v118;
    v104 = v117;
    v105 = v119;
    (*(v118 + 104))(v117, enum case for DispatchQoS.QoSClass.default(_:), v119);
    v106 = static OS_dispatch_queue.global(qos:)();
    (*(v103 + 8))(v104, v105);
    v107 = swift_allocObject();
    v108 = v129;
    *(v107 + 16) = v126;
    *(v107 + 24) = v108;
    v168 = sub_10041ABC0;
    v169 = v107;
    aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
    v165 = 1107296256;
    v166 = sub_100006684;
    v167 = &unk_101635748;
    v109 = _Block_copy(&aBlock);

    v110 = v122;
    static DispatchQoS.unspecified.getter();
    v159 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v111 = v125;
    v112 = v128;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v109);

    (*(v127 + 8))(v111, v112);
    (*(v123 + 8))(v110, v124);
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10080AF18()
{
  v1 = v0;
  v66 = type metadata accessor for SystemInfo.DeviceLockState();
  v74 = *(v66 - 8);
  v2 = *(v74 + 64);
  v3 = __chkstk_darwin(v66);
  v65 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v64 = v52 - v5;
  v6 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v52 - v8;
  v73 = type metadata accessor for WildModeAssociationRecord(0);
  v10 = *(v73 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v73);
  v61 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100519FB0();
  v19 = v18;
  v20 = v18 + 56;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 56);
  v71 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore;
  v53 = (v21 + 63) >> 6;
  v69 = (v10 + 48);
  v70 = v14 + 16;
  v60 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v59 = (v74 + 104);
  v58 = (v74 + 8);
  v54 = SPBeaconTypeHele;
  v72 = v14;
  v74 = v14 + 8;

  v25 = 0;
  v68 = 0;
  v57 = xmmword_101385D80;
  v56 = v0;
  v63 = v13;
  v55 = v9;
  v62 = result;
  v75 = v17;
  while (v23)
  {
LABEL_11:
    (*(v72 + 16))(v17, *(v19 + 48) + *(v72 + 72) * (__clz(__rbit64(v23)) | (v25 << 6)), v13);
    v30 = *(v1 + v71);
    sub_100023184(v17, v9);
    v31 = v73;
    if ((*v69)(v9, 1, v73) == 1)
    {
      v67 = v30;
      sub_10000B3A8(v9, &unk_1016C7C90, &qword_1013BB4B0);
      static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v32 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v33 = swift_allocObject();
      *(v33 + 16) = v57;
      v34 = v75;
      v35 = UUID.uuidString.getter();
      v37 = v36;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_100008C00();
      *(v33 + 32) = v35;
      *(v33 + 40) = v37;
      v52[1] = v32;
      os_log(_:dso:log:_:_:)();

      v38 = v64;
      static SystemInfo.lockState.getter();
      v40 = v65;
      v39 = v66;
      (*v59)(v65, v60, v66);
      sub_1008345FC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      LOBYTE(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *v58;
      (*v58)(v40, v39);
      v41(v38, v39);
      if (v35)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        v78 = 0;
        v76 = 0u;
        v77 = 0u;
LABEL_24:
        sub_10000B3A8(&v76, &qword_101696920, &unk_10138B200);
        (*v74)(v75, v63);

LABEL_25:

        return 0;
      }

      v42 = sub_100007F54();
      __chkstk_darwin(v42);
      v52[-2] = v34;
      v43 = v68;
      sub_1000314D0(sub_100030E14, v42, &v76);

      v44 = *(&v77 + 1);
      if (!*(&v77 + 1))
      {
        goto LABEL_24;
      }

      v45 = v78;
      sub_1000035D0(&v76, *(&v77 + 1));
      v46 = (*(v45 + 184))(v44, v45);
      sub_100007BAC(&v76);
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v43;
      if (v47 == v50 && v49 == v51)
      {
        v28 = 1;
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v1 = v56;

      v19 = v62;
      v13 = v63;
      v9 = v55;
    }

    else
    {
      v26 = v61;
      sub_1008336E8(v9, v61, type metadata accessor for WildModeAssociationRecord);
      v27 = *(v26 + *(v31 + 52));
      sub_1008333E4(v26, type metadata accessor for WildModeAssociationRecord);
      v28 = v27 == 3;
    }

    v23 &= v23 - 1;
    v17 = v75;
    result = (*v74)(v75, v13);
    if ((v28 & 1) == 0)
    {

      goto LABEL_25;
    }
  }

  while (1)
  {
    v29 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v29 >= v53)
    {

      return 1;
    }

    v23 = *(v20 + 8 * v29);
    ++v25;
    if (v23)
    {
      v25 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10080B6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v111 = a3;
  v112 = a4;
  v119 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v8 - 8);
  v118 = v8;
  v9 = *(v117 + 64);
  __chkstk_darwin(v8);
  v114 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v115 = *(v11 - 8);
  v116 = v11;
  v12 = *(v115 + 64);
  __chkstk_darwin(v11);
  v113 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for UUID();
  v14 = *(v108 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v108);
  v109 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v99 - v18;
  __chkstk_darwin(v17);
  v105 = &v99 - v20;
  v21 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v99 - v23;
  v25 = type metadata accessor for OwnedBeaconGroup(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v107 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v103 = &v99 - v31;
  v104 = v32;
  __chkstk_darwin(v30);
  v34 = &v99 - v33;
  v35 = v5;
  v36 = *&v5[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore];
  sub_100AC53EC(a2, v24);
  v106 = v26;
  v37 = (*(v26 + 48))(v24, 1, v25);
  v110 = v35;
  v120 = v19;
  if (v37 == 1)
  {
    sub_10000B3A8(v24, &unk_1016AF8B0, &unk_1013A0700);
    v107 = *&v35[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v38 = *(v14 + 16);
    v39 = v19;
    v40 = v108;
    v38(v39, a2, v108);
    v38(v109, v119, v40);
    v41 = *(v14 + 80);
    v42 = (v41 + 16) & ~v41;
    v43 = (v15 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v41 + 16 + v45) & ~v41;
    v47 = swift_allocObject();
    v48 = *(v14 + 32);
    v48(v47 + v42, v120, v40);
    *(v47 + v43) = a5;
    v50 = v110;
    v49 = v111;
    *(v47 + v44) = v110;
    v51 = (v47 + v45);
    v52 = v112;
    *v51 = v49;
    v51[1] = v52;
    v48(v47 + v46, v109, v40);
    v126 = sub_100832154;
    v127 = v47;
    aBlock = _NSConcreteStackBlock;
    v123 = 1107296256;
    v124 = sub_100006684;
    v125 = &unk_1016351A8;
    v53 = _Block_copy(&aBlock);
    v54 = v50;

    v55 = v113;
    static DispatchQoS.unspecified.getter();
    v121 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v56 = v114;
    v57 = v118;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v53);
    (*(v117 + 8))(v56, v57);
    (*(v115 + 8))(v55, v116);
  }

  else
  {
    v58 = v15;
    v59 = v14;
    v60 = v108;
    sub_1008336E8(v24, v34, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177B380);
    v109 = v34;
    v62 = v103;
    sub_100833680(v34, v103, type metadata accessor for OwnedBeaconGroup);
    v63 = v59;
    v64 = *(v59 + 16);
    v65 = v105;
    v66 = v119;
    v67 = v60;
    v102 = v59 + 16;
    v101 = v64;
    v64(v105, v119, v60);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      aBlock = v99;
      *v70 = 136315394;
      v100 = v58;
      v71 = v69;
      v72 = *(v25 + 24);
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      sub_1008333E4(v62, type metadata accessor for OwnedBeaconGroup);
      v76 = sub_1000136BC(v73, v75, &aBlock);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2080;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      (*(v63 + 8))(v65, v60);
      v80 = sub_1000136BC(v77, v79, &aBlock);
      v67 = v60;

      *(v70 + 14) = v80;
      v81 = v71;
      v58 = v100;
      _os_log_impl(&_mh_execute_header, v68, v81, "Stop sound for group %s. CommandId %s", v70, 0x16u);
      swift_arrayDestroy();

      v66 = v119;
    }

    else
    {

      (*(v63 + 8))(v65, v60);
      sub_1008333E4(v62, type metadata accessor for OwnedBeaconGroup);
    }

    v82 = v110;
    v83 = v120;
    v119 = *&v110[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
    v84 = v107;
    sub_100833680(v109, v107, type metadata accessor for OwnedBeaconGroup);
    v101(v83, v66, v67);
    v85 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v86 = v67;
    v87 = (v104 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
    v89 = (*(v63 + 80) + v88 + 8) & ~*(v63 + 80);
    v90 = swift_allocObject();
    sub_1008336E8(v84, v90 + v85, type metadata accessor for OwnedBeaconGroup);
    *(v90 + v87) = v82;
    *(v90 + v88) = a5;
    (*(v63 + 32))(v90 + v89, v120, v86);
    v91 = (v90 + ((v58 + v89 + 7) & 0xFFFFFFFFFFFFFFF8));
    v92 = v112;
    *v91 = v111;
    v91[1] = v92;
    v126 = sub_100832208;
    v127 = v90;
    aBlock = _NSConcreteStackBlock;
    v123 = 1107296256;
    v124 = sub_100006684;
    v125 = &unk_1016351F8;
    v93 = _Block_copy(&aBlock);
    v94 = v82;

    v95 = v113;
    static DispatchQoS.unspecified.getter();
    v121 = _swiftEmptyArrayStorage;
    sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v96 = v114;
    v97 = v118;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v93);
    (*(v117 + 8))(v96, v97);
    (*(v115 + 8))(v95, v116);
    sub_1008333E4(v109, type metadata accessor for OwnedBeaconGroup);
  }
}

uint64_t sub_10080C294@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&a1[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore];
  sub_100AC53EC(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000B3A8(v14, &unk_1016AF8B0, &unk_1013A0700);
    result = sub_10080C89C(a2);
    v22 = result;
  }

  else
  {
    sub_1008336E8(v14, v19, type metadata accessor for OwnedBeaconGroup);
    v23 = sub_100519FB0();
    v24 = a1;
    v25 = sub_1008319C0(v23, v24, sub_10080C89C);

    v47 = v19;
    v48 = a3;
    if (v25 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v27 = 0;
      v28 = v25 & 0xC000000000000001;
      do
      {
        if (v28)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v29 = *(v25 + 8 * v27 + 32);
        }

        v22 = v29;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (![v29 state])
        {
LABEL_30:
          sub_1008333E4(v47, type metadata accessor for OwnedBeaconGroup);

          goto LABEL_51;
        }

        ++v27;
      }

      while (v30 != i);
      v31 = 0;
      while (1)
      {
        if (v28)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v32 = *(v25 + 8 * v31 + 32);
        }

        v22 = v32;
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if ([v32 state] == 1)
        {
          goto LABEL_30;
        }

        ++v31;
        if (v33 == i)
        {
          v34 = 0;
          while (1)
          {
            if (v28)
            {
              v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v34 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_46;
              }

              v35 = *(v25 + 8 * v34 + 32);
            }

            v22 = v35;
            v36 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_45;
            }

            if ([v35 state] == 4)
            {
              goto LABEL_30;
            }

            ++v34;
            if (v36 == i)
            {
              v37 = 0;
              v46 = v4;
              while (1)
              {
                if (v28)
                {
                  v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v37 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_48;
                  }

                  v39 = *(v25 + 8 * v37 + 32);
                }

                v22 = v39;
                v4 = v37 + 1;
                if (__OFADD__(v37, 1))
                {
                  goto LABEL_47;
                }

                v40 = [v39 error];
                if (v40)
                {
                  v53 = v40;
                  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                  type metadata accessor for CommandError(0);
                  if (swift_dynamicCast())
                  {
                    v45 = v52;
                    v53 = v52;
                    sub_1008345FC(&qword_101696428, type metadata accessor for CommandError);
                    _BridgedStoredNSError.code.getter();

                    if (v52 == 10)
                    {
                      sub_1008333E4(v47, type metadata accessor for OwnedBeaconGroup);

                      a3 = v48;
                      goto LABEL_52;
                    }
                  }
                }

                ++v37;
                v38 = v4 == i;
                v4 = v46;
                if (v38)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

LABEL_50:

    v41 = SPBeaconTaskNamePlaySound;
    v42 = v49;
    static Date.trustedNow.getter(v49);
    v43 = objc_allocWithZone(SPBeaconTaskInformation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v22 = [v43 initWithName:v41 lastUpdated:isa error:0 state:2];

    (*(v50 + 8))(v42, v51);
    result = sub_1008333E4(v47, type metadata accessor for OwnedBeaconGroup);
LABEL_51:
    a3 = v48;
  }

LABEL_52:
  *a3 = v22;
  return result;
}

id sub_10080C89C(void *a1)
{
  v314 = a1;
  v2 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v307 = &v277 - v4;
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v292 = &v277 - v7;
  v293 = type metadata accessor for OwnedBeaconRecord();
  v291 = *(v293 - 8);
  isa = v291[8].isa;
  v9 = __chkstk_darwin(v293);
  v286 = &v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v289 = &v277 - v11;
  v308 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v310 = *(v308 - 8);
  v12 = *(v310 + 64);
  v13 = __chkstk_darwin(v308);
  v305 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v301 = &v277 - v16;
  v17 = __chkstk_darwin(v15);
  v302 = &v277 - v18;
  v19 = __chkstk_darwin(v17);
  v283 = &v277 - v20;
  v21 = __chkstk_darwin(v19);
  v288 = (&v277 - v22);
  v23 = __chkstk_darwin(v21);
  v280 = &v277 - v24;
  v25 = __chkstk_darwin(v23);
  v282 = &v277 - v26;
  v27 = __chkstk_darwin(v25);
  v284 = &v277 - v28;
  v29 = __chkstk_darwin(v27);
  v287 = &v277 - v30;
  v31 = __chkstk_darwin(v29);
  v278 = &v277 - v32;
  v33 = __chkstk_darwin(v31);
  v277 = &v277 - v34;
  v35 = __chkstk_darwin(v33);
  v279 = &v277 - v36;
  v37 = __chkstk_darwin(v35);
  v290 = &v277 - v38;
  __chkstk_darwin(v37);
  v294 = &v277 - v39;
  v40 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v299 = &v277 - v42;
  v298 = type metadata accessor for OwnedBeaconGroup(0);
  v297 = *(v298 - 1);
  v43 = v297[8];
  __chkstk_darwin(v298);
  v296 = (&v277 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v303 = &v277 - v47;
  v309 = type metadata accessor for UUID();
  v311 = *(v309 - 8);
  v48 = *(v311 + 8);
  v49 = __chkstk_darwin(v309);
  v306 = &v277 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v304 = &v277 - v52;
  v53 = __chkstk_darwin(v51);
  v295 = &v277 - v54;
  v55 = __chkstk_darwin(v53);
  v281 = &v277 - v56;
  v57 = __chkstk_darwin(v55);
  v285 = &v277 - v58;
  __chkstk_darwin(v57);
  v300 = &v277 - v59;
  v60 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v61 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60 - 8);
  v63 = &v277 - v62;
  v64 = type metadata accessor for BeaconObservation();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  v68 = &v277 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Date();
  v312 = *(v69 - 8);
  v313 = v69;
  v70 = *(v312 + 64);
  __chkstk_darwin(v69);
  v72 = &v277 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchPredicate();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  v77 = &v277 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = v1;
  v78 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v77 = v78;
  (*(v74 + 104))(v77, enum case for DispatchPredicate.onQueue(_:), v73);
  v79 = v78;
  LOBYTE(v78) = _dispatchPreconditionTest(_:)();
  (*(v74 + 8))(v77, v73);
  if (v78)
  {
    Date.init()();
    v77 = v72;
    if (qword_101694920 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v80 = v314;
  v81 = sub_100035730(v314, sub_100526B58, 0);
  sub_1012BB138(v81, v63);

  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    v82 = v77;
    sub_10000B3A8(v63, &qword_1016A42E0, &qword_1013B0010);
    v315 = 2;
  }

  else
  {
    sub_1008336E8(v63, v68, type metadata accessor for BeaconObservation);
    v83 = v68[*(v64 + 24)];
    if (v83 == 23)
    {
      v85 = v312;
      v84 = v313;
      (*(v312 + 8))(v77, v313);
      v88 = 4;
    }

    else
    {
      v85 = v312;
      v84 = v313;
      if (v83 == 24)
      {
        (*(v312 + 8))(v77, v313);
        v88 = 1;
      }

      else if (v83 == 25)
      {
        v86 = sub_1008108D4(v68);
        (*(v312 + 8))(v77, v313);
        v87 = !v86;
        v85 = v312;
        v84 = v313;
        v88 = 2;
        if (v87)
        {
          v88 = 0;
        }
      }

      else
      {
        (*(v312 + 8))(v77, v313);
        v88 = 2;
      }
    }

    v315 = v88;
    v89 = &v68[*(v64 + 20)];
    v82 = v77;
    (*(v85 + 16))(v77, v89, v84);
    sub_1008333E4(v68, type metadata accessor for BeaconObservation);
  }

  v90 = *(v316 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100025020(v80, &v318);
  if (!v319)
  {
    sub_10000B3A8(&v318, &qword_101696920, &unk_10138B200);
LABEL_21:
    v97 = v309;
LABEL_25:
    v101 = v308;
    goto LABEL_26;
  }

  sub_10000A748(&v318, &v321);
  v91 = v322;
  v92 = v323;
  sub_1000035D0(&v321, v322);
  if (((*(v92 + 120))(v91, v92) & 1) == 0)
  {
    sub_100007BAC(&v321);
    goto LABEL_21;
  }

  v93 = v322;
  v94 = v323;
  sub_1000035D0(&v321, v322);
  v95 = v303;
  (*(v94 + 200))(v93, v94);
  v96 = v311;
  v97 = v309;
  if ((*(v311 + 6))(v95, 1, v309) == 1)
  {
    v98 = &qword_1016980D0;
    v99 = &unk_10138F3B0;
LABEL_24:
    sub_10000B3A8(v95, v98, v99);
    sub_100007BAC(&v321);
    goto LABEL_25;
  }

  v100 = v300;
  v96[4](v300, v95, v97);
  v95 = v299;
  sub_100AC53EC(v100, v299);
  if ((v297[6])(v95, 1, v298) == 1)
  {
    (v96[1])(v100, v97);
    v98 = &unk_1016AF8B0;
    v99 = &unk_1013A0700;
    goto LABEL_24;
  }

  v144 = v296;
  sub_1008336E8(v95, v296, type metadata accessor for OwnedBeaconGroup);
  v145 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v146 = v316;
  swift_beginAccess();
  v299 = v145;
  v147 = *(v146 + v145);
  v101 = v308;
  if (!*(v147 + 16))
  {
    goto LABEL_67;
  }

  v148 = sub_1000210EC(v314);
  if ((v149 & 1) == 0)
  {

LABEL_67:
    sub_1008333E4(v144, type metadata accessor for OwnedBeaconGroup);
    (*(v311 + 1))(v300, v97);
    goto LABEL_123;
  }

  v150 = *(v147 + 56);
  v303 = *(v310 + 72);
  v151 = v290;
  sub_100833680(v150 + v303 * v148, v290, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v151, v294, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v152 = v292;
  sub_100A85ED4(v144, v292);
  v153 = v293;
  if ((v291[6].isa)(v152, 1, v293) == 1)
  {
    sub_10000B3A8(v152, &unk_1016A9A20, &qword_10138B280);
LABEL_70:
    v156 = sub_100519FB0();
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v157 = v311;
    v158 = (v311[80] + 32) & ~v311[80];
    v293 = *(v311 + 9);
    v159 = swift_allocObject();
    *(v159 + 16) = xmmword_101385D80;
    v161 = v322;
    v160 = v323;
    sub_1000035D0(&v321, v322);
    (*(*(*(v160 + 8) + 8) + 32))(v161);
    v162 = sub_100615D6C(v159, v156);
    swift_setDeallocating();
    v163 = *(v159 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v164 = (v162 + 7);
    v165 = 1 << *(v162 + 32);
    v166 = -1;
    if (v165 < 64)
    {
      v166 = ~(-1 << v165);
    }

    v167 = v166 & v162[7];
    v168 = (v165 + 63) >> 6;
    v169 = (v157 + 16);
    v298 = (v157 + 8);
    v297 = v162;

    v170 = 0;
    v171 = _swiftEmptyArrayStorage;
LABEL_73:
    v172 = v295;
    while (v167)
    {
LABEL_80:
      v174 = __clz(__rbit64(v167));
      v167 &= v167 - 1;
      (*v169)(v172, v297[6] + (v174 | (v170 << 6)) * v293, v309);
      v161 = *(v316 + v299);
      if (*(v161 + 16))
      {
        v175 = *(v316 + v299);

        v176 = sub_1000210EC(v172);
        if (v177)
        {
          v178 = v280;
          sub_100833680(*(v161 + 56) + v176 * v303, v280, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          (*v298)(v295, v309);

          sub_1008336E8(v178, v282, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v171 = sub_100A5DEF4(0, v171[2].isa + 1, 1, v171);
          }

          v180 = v171[2].isa;
          v179 = v171[3].isa;
          v161 = v180 + 1;
          if (v180 >= v179 >> 1)
          {
            v171 = sub_100A5DEF4(v179 > 1, v180 + 1, 1, v171);
          }

          v171[2].isa = v161;
          sub_1008336E8(v282, v171 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + v180 * v303, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          goto LABEL_73;
        }

        v172 = v295;
      }

      (*v298)(v172, v309);
    }

    while (1)
    {
      v173 = v170 + 1;
      if (__OFADD__(v170, 1))
      {
        __break(1u);
LABEL_132:
        v229 = 0xE700000000000000;
        v230 = 0x6465756575712ELL;
        goto LABEL_134;
      }

      if (v173 >= v168)
      {
        break;
      }

      v167 = *(v164 + 8 * v173);
      ++v170;
      if (v167)
      {
        v170 = v173;
        goto LABEL_80;
      }
    }

    v181 = v171[2].isa;
    v97 = v309;
    v101 = v308;
    v182 = v296;
    v183 = v288;
    if (v181)
    {
      v184 = 0;
      v185 = v171;
      while (1)
      {
        if (v184 >= v171[2].isa)
        {
          __break(1u);
          goto LABEL_165;
        }

        sub_100833680(v185 + ((*(v310 + 80) + 32) & ~*(v310 + 80)), v183, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        if (*(v183 + v101[10]))
        {
          break;
        }

        ++v184;
        sub_1008333E4(v183, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v185 += v303;
        if (v181 == v184)
        {
          goto LABEL_93;
        }
      }

      v215 = v284;
      sub_1008336E8(v183, v284, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v216 = v287;
      sub_1008336E8(v215, v287, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v217 = v294;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        sub_1008333E4(v216, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v186 = v217;
        goto LABEL_94;
      }

      v218 = sub_10080C89C(v216 + v101[5]);
      if (qword_101694960 != -1)
      {
        swift_once();
      }

      v219 = type metadata accessor for Logger();
      sub_1000076D4(v219, qword_10177B380);
      sub_10001F280(&v321, &v318);
      v220 = v283;
      sub_100833680(v216, v283, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v221 = v218;
      v171 = Logger.logObject.getter();
      LOBYTE(v167) = static os_log_type_t.info.getter();
      v314 = v221;

      if (!os_log_type_enabled(v171, v167))
      {

        sub_1008333E4(v220, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1008333E4(v216, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1008333E4(v217, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        sub_1008333E4(v182, type metadata accessor for OwnedBeaconGroup);
        (*v298)(v300, v97);
        (*(v312 + 8))(v82, v313);
        sub_100007BAC(&v318);
        goto LABEL_172;
      }

      v168 = 0x676E696E6E75722ELL;
      v164 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v317 = v316;
      *v164 = 141559299;
      *(v164 + 4) = 1752392040;
      *(v164 + 12) = 2081;
      v223 = v319;
      v222 = v320;
      sub_1000035D0(&v318, v319);
      v224 = v281;
      (*(*(*(v222 + 8) + 8) + 32))(v223);
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v225 = dispatch thunk of CustomStringConvertible.description.getter();
      v227 = v226;
      v311 = *v298;
      (v311)(v224, v97);
      sub_100007BAC(&v318);
      v228 = sub_1000136BC(v225, v227, &v317);

      *(v164 + 14) = v228;
      *(v164 + 22) = 2082;
      if (v315 <= 1)
      {
        if (v315)
        {
          v230 = 0x676E69646E65702ELL;
        }

        else
        {
          v230 = 0x676E696E6E75722ELL;
        }

        v229 = 0xE800000000000000;
        v161 = v287;
      }

      else
      {
        v161 = v287;
        if (v315 == 4)
        {
          goto LABEL_132;
        }

        if (v315 == 3)
        {
          v229 = 0xE600000000000000;
          v230 = 0x726F7272652ELL;
        }

        else
        {
          v229 = 0xE500000000000000;
          v230 = 0x656C64692ELL;
        }
      }

LABEL_134:
      v255 = sub_1000136BC(v230, v229, &v317);

      *(v164 + 24) = v255;
      *(v164 + 32) = 2082;
      v256 = [v314 state];
      if (v256 > 1)
      {
        switch(v256)
        {
          case 4:
            v257 = 0xE700000000000000;
            v168 = 0x6465756575712ELL;
            goto LABEL_148;
          case 3:
            v257 = 0xE600000000000000;
            v168 = 0x726F7272652ELL;
            goto LABEL_148;
          case 2:
            v257 = 0xE500000000000000;
            v168 = 0x656C64692ELL;
            goto LABEL_148;
        }
      }

      else
      {
        switch(v256)
        {
          case -1:
            v257 = 0xE800000000000000;
            v168 = 0x6E776F6E6B6E752ELL;
            goto LABEL_148;
          case 0:
            v257 = 0xE800000000000000;
            goto LABEL_148;
          case 1:
            v257 = 0xE800000000000000;
            v168 = 0x676E69646E65702ELL;
LABEL_148:
            v258 = sub_1000136BC(v168, v257, &v317);

            *(v164 + 34) = v258;
            *(v164 + 42) = 2160;
            *(v164 + 44) = 1752392040;
            *(v164 + 52) = 2081;
            v259 = v283;
            v260 = v283 + *(v308 + 20);
            v261 = v309;
            v262 = dispatch thunk of CustomStringConvertible.description.getter();
            v264 = v263;
            sub_1008333E4(v259, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v265 = sub_1000136BC(v262, v264, &v317);

            *(v164 + 54) = v265;
            _os_log_impl(&_mh_execute_header, v171, v167, "Beacon: %{private,mask.hash}s has state: %{public}s, -- taking playSound taskInfo state %{public}s from %{private,mask.hash}s.", v164, 0x3Eu);
            swift_arrayDestroy();

            sub_1008333E4(v161, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v294, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            sub_1008333E4(v296, type metadata accessor for OwnedBeaconGroup);
            (v311)(v300, v261);
            (*(v312 + 8))(v82, v313);
            goto LABEL_172;
        }
      }

      v168 = 0xD000000000000010;
      v257 = 0x8000000101360CA0;
      goto LABEL_148;
    }

LABEL_93:

    v186 = v294;
LABEL_94:
    sub_1008333E4(v186, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v182, type metadata accessor for OwnedBeaconGroup);
    (*v298)(v300, v97);
LABEL_123:
    sub_100007BAC(&v321);
LABEL_26:
    v102 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    v103 = v316;
    swift_beginAccess();
    v104 = *(v103 + v102);
    if (*(v104 + 16))
    {
      v105 = *(v103 + v102);

      v106 = v314;
      v107 = sub_1000210EC(v314);
      v108 = v82;
      v109 = v311;
      if (v110)
      {
        v111 = v310;
        v112 = v301;
        sub_100833680(*(v104 + 56) + *(v310 + 72) * v107, v301, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

        v113 = v302;
        sub_1008336E8(v112, v302, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v114 = *(v113 + v101[9]);
        swift_errorRetain();
        sub_1008333E4(v113, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v115 = v315;
        if (v114)
        {
          v115 = 3;
        }

        v315 = v115;
        goto LABEL_34;
      }

      v114 = 0;
    }

    else
    {
      v114 = 0;
      v108 = v82;
      v109 = v311;
      v106 = v314;
    }

    v111 = v310;
LABEL_34:
    v116 = SPBeaconTaskNamePlaySound;
    swift_errorRetain();
    v311 = v108;
    v117.super.isa = Date._bridgeToObjectiveC()().super.isa;
    if (v114)
    {
      v118 = _convertErrorToNSError(_:)();
    }

    else
    {
      v118 = 0;
    }

    v119 = objc_allocWithZone(SPBeaconTaskInformation);
    v314 = [v119 initWithName:v116 lastUpdated:v117.super.isa error:v118 state:v315];

    v120 = *(v316 + v102);
    if (*(v120 + 16))
    {
      v121 = *(v316 + v102);

      v122 = sub_1000210EC(v106);
      v123 = v307;
      v124 = v306;
      if (v125)
      {
        sub_100833680(*(v120 + 56) + *(v111 + 72) * v122, v307, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v126 = 0;
      }

      else
      {
        v126 = 1;
      }
    }

    else
    {
      v126 = 1;
      v123 = v307;
      v124 = v306;
    }

    (*(v111 + 56))(v123, v126, 1, v101);
    if ((*(v111 + 48))(v123, 1, v101))
    {
      sub_10000B3A8(v123, &qword_1016998E0, &qword_101392030);
      v127 = 0;
    }

    else
    {
      v128 = v305;
      sub_100833680(v123, v305, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      sub_10000B3A8(v123, &qword_1016998E0, &qword_101392030);
      v129 = v304;
      v109[2](v304, v128, v97);
      sub_1008333E4(v128, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v127 = UUID._bridgeToObjectiveC()().super.isa;
      (v109[1])(v129, v97);
    }

    [v314 setCommandIdentifier:v127];

    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    sub_1000076D4(v130, qword_10177B380);
    v109[2](v124, v106, v97);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = v124;
      v134 = swift_slowAlloc();
      v135 = v109;
      *&v318 = swift_slowAlloc();
      *v134 = 141558531;
      *(v134 + 4) = 1752392040;
      *(v134 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v137;
      (v135[1])(v133, v97);
      v139 = sub_1000136BC(v136, v138, &v318);

      *(v134 + 14) = v139;
      *(v134 + 22) = 2082;
      if (v315 <= 1)
      {
        if (v315)
        {
          v140 = 0xE800000000000000;
          v141 = 0x676E69646E65702ELL;
        }

        else
        {
          v141 = 0x676E696E6E75722ELL;
          v140 = 0xE800000000000000;
        }
      }

      else if (v315 == 4)
      {
        v140 = 0xE700000000000000;
        v141 = 0x6465756575712ELL;
      }

      else if (v315 == 3)
      {
        v140 = 0xE600000000000000;
        v141 = 0x726F7272652ELL;
      }

      else
      {
        v140 = 0xE500000000000000;
        v141 = 0x656C64692ELL;
      }

      v142 = sub_1000136BC(v141, v140, &v318);

      *(v134 + 24) = v142;
      _os_log_impl(&_mh_execute_header, v131, v132, "TaskInfo for Beacon: %{private,mask.hash}s has state: %{public}s.", v134, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (v109[1])(v124, v97);
    }

    (*(v312 + 8))(v311, v313);
    return v314;
  }

  v154 = v289;
  sub_1008336E8(v152, v289, type metadata accessor for OwnedBeaconRecord);
  v155 = *(v153 + 20);
  sub_1008345FC(&qword_1016984A0, &type metadata accessor for UUID);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_1008333E4(v154, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_70;
  }

  v297 = v155;
  v187 = sub_100A8B080(v144);
  __chkstk_darwin(v187);
  *(&v277 - 2) = v154;
  v188 = sub_1012BC794(sub_100832138, (&v277 - 4), v187);

  if (v188)
  {
    v189 = v188;
  }

  else
  {
    v189 = &_swiftEmptySetSingleton;
  }

  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v190 = type metadata accessor for Logger();
  v191 = sub_1000076D4(v190, qword_10177B380);
  v192 = v285;
  (*(v311 + 2))(v285, v314, v97);
  v193 = v286;
  sub_100833680(v154, v286, type metadata accessor for OwnedBeaconRecord);

  v295 = v191;
  v194 = Logger.logObject.getter();
  LODWORD(v191) = static os_log_type_t.info.getter();

  LODWORD(v298) = v191;
  v195 = os_log_type_enabled(v194, v191);
  v196 = v189;
  if (v195)
  {
    v197 = swift_slowAlloc();
    v290 = v189;
    v291 = v194;
    v198 = v197;
    v292 = swift_slowAlloc();
    *&v318 = v292;
    *v198 = 141559299;
    *(v198 + 4) = 1752392040;
    *(v198 + 12) = 2081;
    v288 = &type metadata accessor for UUID;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v199 = v193;
    v200 = dispatch thunk of CustomStringConvertible.description.getter();
    v202 = v201;
    v203 = *(v311 + 1);
    (v203)(v192, v309);
    v204 = sub_1000136BC(v200, v202, &v318);

    *(v198 + 14) = v204;
    *(v198 + 22) = 2160;
    *(v198 + 24) = 1752392040;
    *(v198 + 32) = 2081;
    v205 = v193 + *(v293 + 20);
    v206 = dispatch thunk of CustomStringConvertible.description.getter();
    v208 = v207;
    sub_1008333E4(v199, type metadata accessor for OwnedBeaconRecord);
    v209 = sub_1000136BC(v206, v208, &v318);

    *(v198 + 34) = v209;
    *(v198 + 42) = 2160;
    v101 = v308;
    *(v198 + 44) = 1752392040;
    v97 = v309;
    *(v198 + 52) = 2081;
    v144 = v296;
    sub_1008345FC(&qword_1016967B0, v288);
    v210 = v290;
    v211 = Set.description.getter();
    v213 = sub_1000136BC(v211, v212, &v318);

    *(v198 + 54) = v213;
    v214 = v291;
    _os_log_impl(&_mh_execute_header, v291, v298, "device: %{private,mask.hash}s, primaryBeacon: %{private,mask.hash}s, nearbyPeers: %{private,mask.hash}s", v198, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    sub_1008333E4(v193, type metadata accessor for OwnedBeaconRecord);
    v203 = *(v311 + 1);
    (v203)(v192, v97);
    v210 = v196;
  }

  v231 = sub_100037E20(v314, v210);

  v232 = v294;
  v233 = v289;
  if ((v231 & 1) == 0 || (v234 = *(v316 + v299), !*(v234 + 16)))
  {
LABEL_122:
    sub_1008333E4(v232, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v144, type metadata accessor for OwnedBeaconGroup);
    (v203)(v300, v97);
    sub_1008333E4(v233, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_123;
  }

  v183 = v203;
  v235 = v294;
  v236 = *(v316 + v299);

  v237 = sub_1000210EC(v297 + v233);
  if ((v238 & 1) == 0)
  {

    v232 = v235;
    v203 = v183;
    goto LABEL_122;
  }

  v239 = v277;
  sub_100833680(*(v234 + 56) + v237 * v303, v277, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v240 = v279;
  sub_1008336E8(v239, v279, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v241 = sub_10080C89C(v240 + v101[5]);
  sub_10001F280(&v321, &v318);
  v242 = v278;
  sub_100833680(v240, v278, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v243 = v241;
  v171 = Logger.logObject.getter();
  v244 = static os_log_type_t.info.getter();
  v314 = v243;

  if (!os_log_type_enabled(v171, v244))
  {

    sub_1008333E4(v242, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v240, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v235, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_1008333E4(v144, type metadata accessor for OwnedBeaconGroup);
    (v183)(v300, v97);
    (*(v312 + 8))(v82, v313);
    sub_100007BAC(&v318);
    v184 = v289;
    goto LABEL_171;
  }

  LODWORD(v316) = v244;
  v245 = 0x676E696E6E75722ELL;
  v185 = swift_slowAlloc();
  v310 = swift_slowAlloc();
  v317 = v310;
  *v185 = 141559299;
  *(v185 + 4) = 1752392040;
  *(v185 + 12) = 2081;
  v247 = v319;
  v246 = v320;
  sub_1000035D0(&v318, v319);
  v248 = v281;
  (*(*(*(v246 + 8) + 8) + 32))(v247);
  sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
  v249 = dispatch thunk of CustomStringConvertible.description.getter();
  v251 = v250;
  v311 += 8;
  (v183)(v248, v97);
  sub_100007BAC(&v318);
  v252 = sub_1000136BC(v249, v251, &v317);

  *(v185 + 14) = v252;
  *(v185 + 22) = 2082;
  if (v315 <= 1)
  {
    v184 = v289;
    v253 = 0xE800000000000000;
    if (v315)
    {
      v254 = 0x676E69646E65702ELL;
    }

    else
    {
      v254 = 0x676E696E6E75722ELL;
    }
  }

  else
  {
    if (v315 == 4)
    {
      v253 = 0xE700000000000000;
      v254 = 0x6465756575712ELL;
    }

    else if (v315 == 3)
    {
      v253 = 0xE600000000000000;
      v254 = 0x726F7272652ELL;
    }

    else
    {
      v253 = 0xE500000000000000;
      v254 = 0x656C64692ELL;
    }

    v184 = v289;
  }

  v266 = sub_1000136BC(v254, v253, &v317);

  *(v185 + 24) = v266;
  *(v185 + 32) = 2082;
  v267 = [v314 state];
  if (v267 > 1)
  {
    switch(v267)
    {
      case 4:
        v268 = 0xE700000000000000;
        v245 = 0x6465756575712ELL;
        goto LABEL_170;
      case 3:
        v268 = 0xE600000000000000;
        v245 = 0x726F7272652ELL;
        goto LABEL_170;
      case 2:
        v268 = 0xE500000000000000;
        v245 = 0x656C64692ELL;
        goto LABEL_170;
    }

LABEL_167:
    v245 = 0xD000000000000010;
    v268 = 0x8000000101360CA0;
    goto LABEL_170;
  }

  if (v267 == -1)
  {
LABEL_165:
    v268 = 0xE800000000000000;
    v245 = 0x6E776F6E6B6E752ELL;
    goto LABEL_170;
  }

  if (!v267)
  {
    v268 = 0xE800000000000000;
    goto LABEL_170;
  }

  if (v267 != 1)
  {
    goto LABEL_167;
  }

  v268 = 0xE800000000000000;
  v245 = 0x676E69646E65702ELL;
LABEL_170:
  v269 = sub_1000136BC(v245, v268, &v317);

  *(v185 + 34) = v269;
  *(v185 + 42) = 2160;
  *(v185 + 44) = 1752392040;
  *(v185 + 52) = 2081;
  v270 = v278;
  v271 = v278 + *(v308 + 20);
  v272 = v309;
  v273 = dispatch thunk of CustomStringConvertible.description.getter();
  v275 = v274;
  sub_1008333E4(v270, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v276 = sub_1000136BC(v273, v275, &v317);

  *(v185 + 54) = v276;
  _os_log_impl(&_mh_execute_header, v171, v316, "Beacon: %{private,mask.hash}s has state: %{public}s, -- taking playSound taskInfo state %{public}s from primary %{private,mask.hash}s.", v185, 0x3Eu);
  swift_arrayDestroy();

  sub_1008333E4(v279, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  sub_1008333E4(v294, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  sub_1008333E4(v296, type metadata accessor for OwnedBeaconGroup);
  (v183)(v300, v272);
  (*(v312 + 8))(v82, v313);
LABEL_171:
  sub_1008333E4(v184, type metadata accessor for OwnedBeaconRecord);
LABEL_172:
  sub_100007BAC(&v321);
  return v314;
}

uint64_t sub_10080F2F4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = type metadata accessor for Date();
  v39 = *(v40 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v40);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&a1[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore];
  sub_100AC53EC(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000B3A8(v12, &unk_1016AF8B0, &unk_1013A0700);
    result = sub_10080F73C(a2);
    v20 = result;
  }

  else
  {
    sub_1008336E8(v12, v17, type metadata accessor for OwnedBeaconGroup);
    v21 = sub_100519FB0();
    v22 = a1;
    v23 = sub_1008319C0(v21, v22, sub_10080F73C);

    v36 = v3;
    v37 = a3;
    if (v23 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v25 = 0;
      v26 = v23 & 0xC000000000000001;
      do
      {
        if (v26)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v27 = *(v23 + 8 * v25 + 32);
        }

        v20 = v27;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (![v27 state])
        {
LABEL_22:
          sub_1008333E4(v17, type metadata accessor for OwnedBeaconGroup);

          goto LABEL_29;
        }

        ++v25;
      }

      while (v28 != i);
      v29 = 0;
      while (1)
      {
        if (v26)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v29 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v30 = *(v23 + 8 * v29 + 32);
        }

        v20 = v30;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if ([v30 state] == 1)
        {
          goto LABEL_22;
        }

        ++v29;
        if (v31 == i)
        {
          goto LABEL_28;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v32 = SPBeaconTaskNameStopSound;
    v33 = v38;
    static Date.trustedNow.getter(v38);
    v34 = objc_allocWithZone(SPBeaconTaskInformation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v20 = [v34 initWithName:v32 lastUpdated:isa error:0 state:2];

    (*(v39 + 8))(v33, v40);
    result = sub_1008333E4(v17, type metadata accessor for OwnedBeaconGroup);
LABEL_29:
    a3 = v37;
  }

  *a3 = v20;
  return result;
}

id sub_10080F73C(uint64_t a1)
{
  v79 = a1;
  v2 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v76 = &v67 - v4;
  v5 = type metadata accessor for UUID();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  __chkstk_darwin(v5);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  v10 = __chkstk_darwin(v8);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v67 = &v67 - v13;
  __chkstk_darwin(v12);
  v68 = &v67 - v14;
  v15 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v67 - v17;
  v19 = type metadata accessor for BeaconObservation();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date();
  v77 = *(v73 - 8);
  v24 = *(v77 + 64);
  __chkstk_darwin(v73);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (&v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = v1;
  v32 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v31 = v32;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v31, v27);
  if (v32)
  {
    Date.init()();
    v27 = v26;
    if (qword_101694920 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v34 = sub_100035730(v79, sub_100526B58, 0);
  sub_1012BB138(v34, v18);

  v35 = (*(v20 + 48))(v18, 1, v19);
  v36 = v73;
  if (v35 == 1)
  {
    sub_10000B3A8(v18, &qword_1016A42E0, &qword_1013B0010);
    v37 = 2;
  }

  else
  {
    v38 = v77;
    (*(v77 + 8))(v27, v73);
    sub_1008336E8(v18, v23, type metadata accessor for BeaconObservation);
    v37 = 2 * (v23[*(v19 + 24)] != 26);
    (*(v38 + 16))(v27, &v23[*(v19 + 20)], v36);
    sub_1008333E4(v23, type metadata accessor for BeaconObservation);
  }

  v40 = v74;
  v39 = v75;
  v41 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v42 = v78;
  swift_beginAccess();
  v43 = *(v42 + v41);
  if (!*(v43 + 16))
  {
    goto LABEL_12;
  }

  v44 = *(v42 + v41);

  v45 = sub_1000210EC(v79);
  if ((v46 & 1) == 0)
  {

LABEL_12:
    v50 = 0;
    goto LABEL_13;
  }

  v47 = v67;
  sub_100833680(*(v43 + 56) + *(v40 + 72) * v45, v67, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  v48 = v47;
  v49 = v68;
  sub_1008336E8(v48, v68, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  v50 = *(v49 + *(v39 + 36));
  swift_errorRetain();
  sub_1008333E4(v49, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (v50)
  {
    v37 = 3;
  }

LABEL_13:
  v51 = SPBeaconTaskNameStopSound;
  swift_errorRetain();
  v52.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v50)
  {
    v53 = _convertErrorToNSError(_:)();
  }

  else
  {
    v53 = 0;
  }

  v54 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v51 lastUpdated:v52.super.isa error:v53 state:v37];

  v55 = *(v78 + v41);
  if (*(v55 + 16))
  {
    v56 = *(v78 + v41);

    v57 = sub_1000210EC(v79);
    v58 = v76;
    if (v59)
    {
      sub_100833680(*(v55 + 56) + *(v40 + 72) * v57, v76, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      v60 = 0;
    }

    else
    {
      v60 = 1;
    }
  }

  else
  {
    v60 = 1;
    v58 = v76;
  }

  (*(v40 + 56))(v58, v60, 1, v39);
  if ((*(v40 + 48))(v58, 1, v39))
  {
    sub_10000B3A8(v58, &qword_1016998E0, &qword_101392030);
    isa = 0;
  }

  else
  {
    v62 = v69;
    sub_100833680(v58, v69, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    sub_10000B3A8(v58, &qword_1016998E0, &qword_101392030);
    v64 = v70;
    v63 = v71;
    v65 = v72;
    (*(v71 + 16))(v70, v62, v72);
    sub_1008333E4(v62, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v63 + 8))(v64, v65);
  }

  [v54 setCommandIdentifier:isa];

  (*(v77 + 8))(v27, v36);
  return v54;
}

id sub_10080FFBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SoundPlaybackManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10081008C(uint64_t a1)
{
  v3 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24[-1] - v5;
  v7 = type metadata accessor for WildModeAssociationRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100023184(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &unk_1016C7C90, &qword_1013BB4B0);
    sub_100025020(a1, v24);
    v13 = v25;
    if (v25)
    {
      v14 = v26;
      sub_1000035D0(v24, v25);
      v15 = (*(v14 + 184))(v13, v14);
      sub_100007BAC(v24);
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
      if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      sub_10000B3A8(v24, &qword_101696920, &unk_10138B200);
      v20 = 0;
    }
  }

  else
  {
    sub_1008336E8(v6, v11, type metadata accessor for WildModeAssociationRecord);
    v21 = v11[*(v7 + 52)];
    sub_1008333E4(v11, type metadata accessor for WildModeAssociationRecord);
    v20 = v21 == 3;
  }

  return v20 & 1;
}

uint64_t sub_100810310(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for BeaconProductInfoRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v41 - v17;
  v19 = type metadata accessor for WildModeAssociationRecord(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100023184(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000B3A8(v18, &unk_1016C7C90, &qword_1013BB4B0);
    sub_100025020(a1, &v45);
    if (v46)
    {
      sub_10000A748(&v45, v47);
      sub_100AC1584(a1, v9);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_10000B3A8(v9, &unk_1016AF8C0, &unk_1013A07A0);
        v26 = v48;
        v25 = v49;
        sub_1000035D0(v47, v48);
        LOBYTE(v26) = (*(v25 + 96))(v26, v25);
      }

      else
      {
        sub_1008336E8(v9, v14, type metadata accessor for BeaconProductInfoRecord);
        v39 = *&v14[*(v10 + 80)];
        sub_1008333E4(v14, type metadata accessor for BeaconProductInfoRecord);
        LODWORD(v26) = (v39 >> 8) & 1;
      }

      sub_100007BAC(v47);
    }

    else
    {
      sub_10000B3A8(&v45, &qword_101696920, &unk_10138B200);
      if (qword_101694968 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_1016AA7B0);
      v29 = v42;
      v28 = v43;
      v30 = v44;
      (*(v43 + 16))(v42, a1, v44);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v47[0] = v34;
        *v33 = 141558275;
        *(v33 + 4) = 1752392040;
        *(v33 + 12) = 2081;
        sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        (*(v28 + 8))(v29, v30);
        v38 = sub_1000136BC(v35, v37, v47);

        *(v33 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Missing beacon record for %{private,mask.hash}s!", v33, 0x16u);
        sub_100007BAC(v34);
      }

      else
      {

        (*(v28 + 8))(v29, v30);
      }

      LOBYTE(v26) = 0;
    }
  }

  else
  {
    sub_1008336E8(v18, v23, type metadata accessor for WildModeAssociationRecord);
    LOBYTE(v26) = sub_1003073D8();
    sub_1008333E4(v23, type metadata accessor for WildModeAssociationRecord);
  }

  return v26 & 1;
}

BOOL sub_1008108D4(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  sub_100030068();

  v19 = *(v18 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  v37 = v18;
  v38 = a1;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_1000D2AD8(v10, v12, &qword_1016980D0, &unk_10138F3B0);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v17, a1, v13);
    if (v20(v12, 1, v13) != 1)
    {
      sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  sub_100025020(v17, &v39);
  if (!v40)
  {
    (*(v14 + 8))(v17, v13);
    sub_10000B3A8(&v39, &qword_101696920, &unk_10138B200);
    return 0;
  }

  sub_10000A748(&v39, v41);
  v21 = v42;
  v22 = v43;
  sub_1000035D0(v41, v42);
  if (((*(v22 + 88))(v21, v22) & 1) == 0)
  {
    v23 = v42;
    v24 = v43;
    sub_1000035D0(v41, v42);
    if (((*(v24 + 120))(v23, v24) & 1) == 0)
    {
      (*(v14 + 8))(v17, v13);
      sub_100007BAC(v41);
      return 0;
    }
  }

  v25 = type metadata accessor for BeaconObservation();
  if (*(a1 + *(v25 + 24)) == 25)
  {
    v26 = v25;
    v27 = v34;
    static Date.trustedNow.getter(v34);
    v28 = *(v26 + 20);
    Date.timeIntervalSince(_:)();
    v30 = v29;
    (*(v35 + 8))(v27, v36);
    (*(v14 + 8))(v17, v13);
    v31 = v30 > 120.0;
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    v31 = 0;
  }

  sub_100007BAC(v41);
  return v31;
}

uint64_t sub_100810D44()
{
  v1 = v0[2];
  v0[3] = sub_100519FB0();
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100810DE0;

  return daemon.getter();
}

uint64_t sub_100810DE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  v9 = sub_1008345FC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1008345FC(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  *v6 = v12;
  v6[1] = sub_100810FBC;

  return ActorServiceDaemon.getService<A>()(v7, updated, v9, v10);
}

uint64_t sub_100810FBC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;

  v8 = v4[5];
  if (v1)
  {
    v9 = v5[3];

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    v5[7] = a1;
    v12 = swift_task_alloc();
    v5[8] = v12;
    *v12 = v7;
    v12[1] = sub_10081117C;
    v13 = v5[3];

    return sub_10094DB94(v13);
  }
}

uint64_t sub_10081117C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_1004BCEC0, 0, 0);
}

uint64_t sub_100811294(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v55 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100519FB0();
  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  v63 = v13;

  v65 = v18;
  result = swift_beginAccess();
  v20 = v9;
  v21 = 0;
  v22 = (v15 + 63) >> 6;
  v60 = v10;
  v61 = v9;
  v56 = (v10 + 8);
  v57 = v10 + 16;
  v58 = v22;
  v59 = v14;
  v55 = a2;
  while (v17)
  {
    v26 = v65;
    v27 = v66;
LABEL_13:
    v29 = *(v60 + 72);
    (*(v60 + 16))(v27, *(v63 + 48) + v29 * (__clz(__rbit64(v17)) | (v21 << 6)), v20);
    v30 = *(a2 + v26);
    if (*(v30 + 16))
    {
      v31 = *(a2 + v26);

      v32 = sub_1000210EC(v27);
      if (v33)
      {
        v34 = v32;
        v64 = *(v30 + 56);
        v35 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
        v36 = *(v35 - 8);
        v37 = v64 + *(v36 + 72) * v34;
        v38 = v62;
        sub_100833680(v37, v62, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v39 = v38;

        (*(v36 + 56))(v38, 0, 1, v35);
      }

      else
      {

        v35 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
        v39 = v62;
        (*(*(v35 - 8) + 56))(v62, 1, 1, v35);
      }

      a2 = v55;
    }

    else
    {
      v35 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
      v39 = v62;
      (*(*(v35 - 8) + 56))(v62, 1, 1, v35);
    }

    type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
    v40 = *(v35 - 8);
    v41 = (*(v40 + 48))(v39, 1, v35);
    v64 = v35;
    if (v41)
    {
      sub_10000B3A8(v39, &qword_1016998E0, &qword_101392030);
    }

    else
    {
      v42 = v39;
      v43 = *(v39 + *(v35 + 28));

      sub_10000B3A8(v42, &qword_1016998E0, &qword_101392030);
      dispatch thunk of DispatchWorkItem.cancel()();
    }

    v44 = v65;
    swift_beginAccess();
    v45 = *(a2 + v44);
    v46 = sub_1000210EC(v27);
    v47 = a2;
    if (v48)
    {
      v49 = v46;
      v50 = *(v47 + v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v47 + v44);
      v67 = v52;
      *(v47 + v44) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10100773C();
        v52 = v67;
      }

      v53 = *(v52 + 48) + v49 * v29;
      v25 = v56;
      v24 = v61;
      (*v56)(v53, v61);
      sub_1008336E8(*(v52 + 56) + *(v40 + 72) * v49, v7, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
      sub_100AF8234(v49, v52);
      v54 = *(v47 + v44);
      *(v47 + v44) = v52;

      v23 = 0;
      a2 = v47;
    }

    else
    {
      v23 = 1;
      v24 = v61;
      v25 = v56;
    }

    v17 &= v17 - 1;
    (*(v40 + 56))(v7, v23, 1, v64);
    sub_10000B3A8(v7, &qword_1016998E0, &qword_101392030);
    swift_endAccess();
    result = (*v25)(v66, v24);
    v20 = v24;
    v22 = v58;
    v14 = v59;
  }

  v26 = v65;
  v27 = v66;
  while (1)
  {
    v28 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
    }

    v17 = *(v14 + 8 * v28);
    ++v21;
    if (v17)
    {
      v21 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100811844(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v41 = a1;
  v42 = a5;
  v37 = a2;
  v38 = a4;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v45 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v45);
  v43 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  v11 = *(v44 + 64);
  __chkstk_darwin(v46);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *&a2[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  sub_100833680(a3, v19, type metadata accessor for OwnedBeaconGroup);
  (*(v14 + 16))(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v13);
  v20 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v14 + 80) + v22 + 8) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1008336E8(v19, v25 + v20, type metadata accessor for OwnedBeaconGroup);
  v26 = v36;
  v27 = v37;
  *(v25 + v21) = v37;
  *(v25 + v22) = a6;
  (*(v14 + 32))(v25 + v23, v26, v35);
  v28 = v41;
  *(v25 + v24) = v42;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_100832EF8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635798;
  v29 = _Block_copy(aBlock);
  v30 = v27;

  v31 = v39;
  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v32 = v43;
  v33 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v47 + 8))(v32, v33);
  (*(v44 + 8))(v31, v46);
}

uint64_t sub_100811D24(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v290 = a5;
  v283 = a4;
  v295 = a3;
  v296 = a2;
  v300 = sub_1000BC4D4(&qword_1016AA8E8, &qword_1013BD6E0);
  v298 = *(v300 - 1);
  v8 = *(v298 + 8);
  __chkstk_darwin(v300);
  v256 = &v230 - v9;
  v255 = sub_1000BC4D4(&qword_1016AA8F0, &unk_1013BD6E8);
  v297 = *(v255 - 1);
  v10 = *(v297 + 64);
  __chkstk_darwin(v255);
  v254 = &v230 - v11;
  v12 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v273 = &v230 - v14;
  v266 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v264 = *(v266 - 8);
  v15 = *(v264 + 64);
  __chkstk_darwin(v266);
  v262 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_1000BC4D4(&qword_1016AA8F8, &qword_1013BD6F8);
  v259 = *(v261 - 8);
  v17 = *(v259 + 64);
  __chkstk_darwin(v261);
  v258 = &v230 - v18;
  v265 = sub_1000BC4D4(&qword_1016AA900, &qword_1013BD700);
  v263 = *(v265 - 8);
  v19 = *(v263 + 64);
  __chkstk_darwin(v265);
  v260 = &v230 - v20;
  v269 = sub_1000BC4D4(&qword_1016AA908, &qword_1013BD708);
  v268 = *(v269 - 8);
  v21 = *(v268 + 64);
  __chkstk_darwin(v269);
  v267 = &v230 - v22;
  v272 = sub_1000BC4D4(&qword_1016AA910, &qword_1013BD710);
  v271 = *(v272 - 8);
  v23 = *(v271 + 64);
  __chkstk_darwin(v272);
  v270 = &v230 - v24;
  v275 = sub_1000BC4D4(&qword_1016AA918, &qword_1013BD718);
  v274 = *(v275 - 8);
  v25 = *(v274 + 64);
  __chkstk_darwin(v275);
  v279 = &v230 - v26;
  v27 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v280 = (&v230 - v29);
  v240 = type metadata accessor for DispatchWorkItemFlags();
  v239 = *(v240 - 8);
  v30 = *(v239 + 64);
  __chkstk_darwin(v240);
  v237 = &v230 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for DispatchQoS();
  v236 = *(v238 - 8);
  v32 = *(v236 + 64);
  __chkstk_darwin(v238);
  v235 = &v230 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OwnedBeaconGroup(0);
  v35 = v34 - 8;
  v276 = *(v34 - 8);
  v36 = *(v276 + 8);
  __chkstk_darwin(v34);
  v282 = v37;
  v292 = &v230 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for DispatchTime();
  v246 = *(v245 - 8);
  v38 = *(v246 + 64);
  v39 = __chkstk_darwin(v245);
  v234 = &v230 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v244 = &v230 - v41;
  v243 = type metadata accessor for Date();
  v242 = *(v243 - 8);
  v42 = *(v242 + 64);
  __chkstk_darwin(v243);
  v241 = &v230 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v250 = *(v252 - 8);
  v44 = *(v250 + 64);
  v45 = __chkstk_darwin(v252);
  v251 = &v230 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v233 = &v230 - v48;
  v49 = __chkstk_darwin(v47);
  v249 = &v230 - v50;
  __chkstk_darwin(v49);
  v253 = &v230 - v51;
  v52 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v299 = &v230 - v54;
  v55 = type metadata accessor for UUID();
  v56 = *(v55 - 8);
  v57 = v56[8];
  v58 = __chkstk_darwin(v55);
  v278 = &v230 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v247 = &v230 - v61;
  v62 = __chkstk_darwin(v60);
  v291 = &v230 - v63;
  v64 = __chkstk_darwin(v62);
  v257 = &v230 - v65;
  v66 = __chkstk_darwin(v64);
  v68 = &v230 - v67;
  v69 = __chkstk_darwin(v66);
  v71 = &v230 - v70;
  v281 = v72;
  __chkstk_darwin(v69);
  v74 = &v230 - v73;
  v75 = v56[2];
  v75(&v230 - v73, a1 + *(v35 + 32), v55);
  v294 = a1;
  v76 = v296;
  v77 = sub_10080AF18();
  LODWORD(v284) = v77;
  v78 = 0x6575657551;
  if ((v77 & 1) == 0)
  {
    v78 = 0;
  }

  v277 = v78;
  if (v77)
  {
    v79 = 0xE500000000000000;
  }

  else
  {
    v79 = 0xE000000000000000;
  }

  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  v81 = sub_1000076D4(v80, qword_10177B380);
  v75(v71, v74, v55);
  v286 = v75;
  v75(v68, v295, v55);

  v285 = v79;
  v248 = v81;
  v82 = Logger.logObject.getter();
  v83 = v285;
  v84 = v82;
  v85 = static os_log_type_t.default.getter();

  v86 = os_log_type_enabled(v84, v85);
  v293 = v74;
  v288 = v56;
  v287 = v56 + 2;
  if (v86)
  {
    v87 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    aBlock[0] = v232;
    *v87 = 136446978;
    *(v87 + 4) = sub_1000136BC(v277, v83, aBlock);
    *(v87 + 12) = 2082;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v231 = v85;
    v88 = dispatch thunk of CustomStringConvertible.description.getter();
    v230 = v84;
    v89 = v55;
    v91 = v90;
    v92 = v56[1];
    v92(v71, v89);
    v93 = sub_1000136BC(v88, v91, aBlock);
    v55 = v89;
    v94 = v76;
    v95 = v294;

    *(v87 + 14) = v93;
    *(v87 + 22) = 2048;
    *(v87 + 24) = a6;
    *(v87 + 32) = 2082;
    v96 = dispatch thunk of CustomStringConvertible.description.getter();
    v98 = v97;
    v92(v68, v55);
    v99 = v92;
    v100 = sub_1000136BC(v96, v98, aBlock);
    v101 = v295;

    *(v87 + 34) = v100;
    v102 = v230;
    _os_log_impl(&_mh_execute_header, v230, v231, "%{public}s playSound for group %{public}s with timeout %f. CommandId %{public}s", v87, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v99 = v56[1];
    v99(v68, v55);
    v99(v71, v55);
    v94 = v76;
    v95 = v294;
    v101 = v295;
  }

  if ((v284 & 1) == 0)
  {
    goto LABEL_25;
  }

  v103 = sub_100519FB0();
  v104 = v299;
  sub_10112C648(v103, v299);

  v105 = v288;
  if ((v288[6])(v104, 1, v55) != 1)
  {
    v106 = v105[4];
    v232 = v99;
    v107 = v257;
    v106(v257, v104, v55);
    v108 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
    swift_beginAccess();
    v109 = *(&v94->isa + v108);
    v110 = v107;
    v111 = v232;
    if (*(v109 + 16))
    {

      v112 = sub_1000210EC(v110);
      if (v113)
      {
        v114 = v249;
        sub_100833680(*(v109 + 56) + *(v250 + 72) * v112, v249, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

        v115 = v114;
        v116 = v253;
        sub_1008336E8(v115, v253, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v117 = v252;
        if (*(v116 + *(v252 + 24)))
        {

          v118 = v247;
          v119 = v293;
          v286(v247, v293, v55);
          v120 = v251;
          sub_100833680(v116, v251, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v121, v122))
          {

            sub_1008333E4(v120, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v197 = v232;
            v232(v118, v55);
            sub_1008333E4(v116, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v197(v257, v55);
            return (v197)(v119, v55);
          }

          v123 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v123 = 136315394;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          v232(v118, v55);
          v127 = sub_1000136BC(v124, v126, aBlock);

          *(v123 + 4) = v127;
          *(v123 + 12) = 2080;
          v128 = *(v251 + *(v252 + 24));
          if (v128 > 2)
          {
            if (*(v251 + *(v252 + 24)) > 4u)
            {
              if (v128 != 5)
              {
                v226 = 0xE800000000000000;
                v224 = 0x74756F656D69742ELL;
                goto LABEL_48;
              }

              v129 = 0x43706F74732ELL;
              goto LABEL_42;
            }

            if (v128 == 3)
            {
              v129 = 0x4379616C702ELL;
LABEL_42:
              v224 = v129 & 0xFFFFFFFFFFFFLL | 0x6D6F000000000000;
              v225 = 1952803952;
LABEL_47:
              v226 = v225 | 0xEE00646500000000;
              goto LABEL_48;
            }

            v208 = 0x49706F74732ELL;
LABEL_46:
            v224 = v208 & 0xFFFFFFFFFFFFLL | 0x696E000000000000;
            v225 = 1952541044;
            goto LABEL_47;
          }

          if (*(v251 + *(v252 + 24)))
          {
            if (v128 == 1)
            {
              v208 = 0x4979616C702ELL;
              goto LABEL_46;
            }

            v226 = 0xEC000000676E696ELL;
            v224 = 0x6E755279616C702ELL;
          }

          else
          {
            v226 = 0xEB00000000646575;
            v224 = 0x65755179616C702ELL;
          }

LABEL_48:
          sub_1008333E4(v251, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v227 = sub_1000136BC(v224, v226, aBlock);

          *(v123 + 14) = v227;
          _os_log_impl(&_mh_execute_header, v121, v122, "Cannot queue play sound for %s. Invalid state %s!", v123, 0x16u);
          swift_arrayDestroy();

          sub_1008333E4(v253, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v228 = v232;
          v232(v257, v55);
          return v228(v119, v55);
        }

        v193 = v241;
        static Date.trustedNow.getter(v241);
        v194 = *(v117 + 32);
        Date.timeIntervalSince(_:)();
        v196 = v195;
        (*(v242 + 8))(v193, v243);
        if (a6 * 0.5 >= v196)
        {

          v198 = v233;
          sub_100833680(v116, v233, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v199 = Logger.logObject.getter();
          v200 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v199, v200))
          {
            v201 = swift_slowAlloc();
            v202 = swift_slowAlloc();
            aBlock[0] = v202;
            *v201 = 136446466;
            v203 = v198 + *(v252 + 32);
            v204 = Date.localISO8601.getter();
            v206 = v205;
            sub_1008333E4(v198, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
            v207 = sub_1000136BC(v204, v206, aBlock);
            v94 = v296;

            *(v201 + 4) = v207;
            *(v201 + 12) = 2050;
            *(v201 + 14) = v196;
            _os_log_impl(&_mh_execute_header, v199, v200, "Last retry %{public}s.\nTime since: %{public}f. Defer retry", v201, 0x16u);
            sub_100007BAC(v202);
            v95 = v294;

            v105 = v288;
          }

          else
          {

            sub_1008333E4(v198, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          }

          v209 = v286;
          v299 = *(&v94->isa + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
          v210 = v234;
          static DispatchTime.now()();
          + infix(_:_:)();
          v211 = *(v246 + 8);
          v246 += 8;
          v300 = v211;
          v211(v210, v245);
          v212 = v291;
          v209(v291, v295, v55);
          sub_100833680(v95, v292, type metadata accessor for OwnedBeaconGroup);
          v213 = (*(v105 + 80) + 24) & ~*(v105 + 80);
          v214 = (v281 + *(v276 + 80) + v213) & ~*(v276 + 80);
          v215 = (v282 + v214 + 7) & 0xFFFFFFFFFFFFFFF8;
          v216 = swift_allocObject();
          *(v216 + 16) = v94;
          v106((v216 + v213), v212, v55);
          sub_1008336E8(v292, v216 + v214, type metadata accessor for OwnedBeaconGroup);
          *(v216 + v215) = v283;
          *(v216 + ((v215 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
          aBlock[4] = sub_1008332C8;
          aBlock[5] = v216;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100006684;
          aBlock[3] = &unk_101635860;
          v217 = _Block_copy(aBlock);
          v218 = v94;
          v219 = v235;
          static DispatchQoS.unspecified.getter();
          v302 = _swiftEmptyArrayStorage;
          sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v220 = v237;
          v221 = v240;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v222 = v244;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v217);
          (*(v239 + 8))(v220, v221);
          (*(v236 + 8))(v219, v238);
          v300(v222, v245);
          sub_1008333E4(v253, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
          v223 = v232;
          v232(v257, v55);
          v223(v293, v55);
        }

        sub_1008333E4(v116, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
        v130 = v257;
LABEL_24:
        v111(v130, v55);
        v101 = v295;
        goto LABEL_25;
      }
    }

    v130 = v110;
    goto LABEL_24;
  }

  sub_10000B3A8(v104, &qword_1016980D0, &unk_10138F3B0);
LABEL_25:
  v289 = v55;
  v131 = *(&v94->isa + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_beaconStore);
  v132 = v280;
  sub_100A85ED4(v95, v280);
  v133 = sub_100A8B080(v95);
  v134 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  v135 = sub_100519FB0();
  __chkstk_darwin(v135);
  *(&v230 - 6) = v132;
  *(&v230 - 5) = v133;
  *(&v230 - 4) = aBlock;
  *(&v230 - 3) = v94;
  v229 = v101;
  sub_1005C6534(sub_100833018, &(&v230)[-8], v135);

  v136 = aBlock[0];
  v137 = *(aBlock[0] + 16);
  v257 = aBlock[0];
  if (v137)
  {
    v302 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v138 = (v136 + 32);
    v139 = sub_1000041A4(&qword_1016AA930, &qword_1016AA920, &qword_1013BD720);
    v298 = (v298 + 8);
    v299 = v139;
    v297 += 8;
    v140 = v256;
    v141 = v255;
    v142 = v254;
    do
    {
      v143 = *v138++;
      aBlock[9] = v143;

      sub_1000BC4D4(&qword_1016AA920, &qword_1013BD720);
      sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
      Publisher.map<A>(_:)();
      sub_1000BC4D4(&qword_1016AA938, &qword_1013BD730);
      sub_1000041A4(&qword_1016AA940, &qword_1016AA8E8, &qword_1013BD6E0);
      sub_1000041A4(&qword_1016AA948, &qword_1016AA938, &qword_1013BD730);
      v144 = v300;
      Publisher.catch<A>(_:)();
      (*v298)(v140, v144);
      sub_1000041A4(&qword_1016AA950, &qword_1016AA8F0, &unk_1013BD6E8);
      Publisher.eraseToAnyPublisher()();

      (*v297)(v142, v141);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v145 = v302[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v137;
    }

    while (v137);
    v134 = v302;
  }

  v300 = Transaction.subscriptionCleaner.getter();
  v146 = swift_allocObject();
  v299 = v146;
  *(v146 + 16) = 2;
  *(v146 + 24) = 1;
  v302 = v134;
  sub_1000BC4D4(&qword_1016AA958, &qword_1013BD738);
  sub_1000041A4(&qword_1016AA960, &qword_1016AA958, &qword_1013BD738);
  sub_1000041A4(&qword_1016AA968, &qword_1016AA970, &qword_1013BD740);
  v147 = Sequence<>.merged()();

  v302 = v147;
  sub_1000BC4D4(&qword_1016AA970, &qword_1013BD740);
  sub_100832458();
  v148 = v258;
  Publisher<>.setFailureType<A>(to:)();

  v149 = v262;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v302 = *(&v296->isa + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  v150 = v302;
  v151 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v152 = *(v151 - 8);
  v297 = *(v152 + 56);
  v298 = (v152 + 56);
  v153 = v273;
  (v297)(v273, 1, 1, v151);
  v256 = sub_1000BC488();
  sub_1000041A4(&qword_1016AA980, &qword_1016AA8F8, &qword_1013BD6F8);
  v154 = sub_1008345FC(&qword_1016AF9C0, sub_1000BC488);
  v255 = v150;
  v229 = v154;
  v155 = v260;
  v156 = v261;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v153, &unk_1016B0FE0, &unk_101391980);
  (*(v264 + 8))(v149, v266);
  (*(v259 + 8))(v148, v156);
  sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  sub_1000041A4(&qword_1016AA990, &qword_1016AA900, &qword_1013BD700);
  v157 = v267;
  v158 = v265;
  Publisher.map<A>(_:)();
  (*(v263 + 8))(v155, v158);
  sub_1000BC4D4(&qword_1016AA998, &qword_1013BD750);
  sub_1000041A4(&qword_1016AA9A0, &qword_1016AA908, &qword_1013BD708);
  sub_1000041A4(&qword_1016AA9A8, &qword_1016AA998, &qword_1013BD750);
  v159 = v270;
  v160 = v269;
  Publisher.catch<A>(_:)();
  (*(v268 + 8))(v157, v160);
  v161 = v255;
  v302 = v255;
  (v297)(v153, 1, 1, v151);
  sub_1000041A4(&qword_1016AA9B0, &qword_1016AA910, &qword_1013BD710);
  v162 = v272;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v153, &unk_1016B0FE0, &unk_101391980);

  (*(v271 + 8))(v159, v162);
  v163 = v291;
  v164 = v289;
  v165 = v286;
  v286(v291, v293, v289);
  v165(v278, v295, v164);
  v298 = type metadata accessor for OwnedBeaconGroup;
  sub_100833680(v294, v292, type metadata accessor for OwnedBeaconGroup);
  v166 = *(v288 + 80);
  v167 = v288;
  v168 = (v166 + 32) & ~v166;
  v297 = (v168 + v281 + 7) & 0xFFFFFFFFFFFFFFF8;
  v169 = (v168 + v281 + 23) & 0xFFFFFFFFFFFFFFF8;
  v170 = (v166 + v169 + 8) & ~v166;
  v171 = *(v276 + 80);
  v172 = (v281 + v171 + v170) & ~v171;
  v295 = v166 | v171;
  v273 = ((v282 + v172 + 7) & 0xFFFFFFFFFFFFFFF8);
  v272 = (v273 + 15) & 0xFFFFFFFFFFFFFFF8;
  v173 = swift_allocObject();
  v174 = v300;
  *(v173 + 16) = v290;
  *(v173 + 24) = v174;
  v175 = v167[4];
  v176 = v163;
  v177 = v289;
  v175(v173 + v168, v176, v289);
  v276 = v175;
  v178 = v296;
  v179 = v173 + v297;
  *v179 = v299;
  LODWORD(v297) = v284 & 1;
  *(v179 + 8) = v284 & 1;
  *(v173 + v169) = v178;
  v175(v173 + v170, v278, v177);
  v284 = type metadata accessor for OwnedBeaconGroup;
  v180 = v292;
  sub_1008336E8(v292, v173 + v172, type metadata accessor for OwnedBeaconGroup);
  *&v273[v173] = v283;
  *(v173 + v272) = a6;
  v278 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v286(v291, v293, v177);
  sub_100833680(v294, v180, v298);
  v181 = (v166 + 40) & ~v166;
  v182 = (v281 + v181 + 7) & 0xFFFFFFFFFFFFFFF8;
  v183 = (v182 + 15) & 0xFFFFFFFFFFFFFFF8;
  v184 = (v183 + 15) & 0xFFFFFFFFFFFFFFF8;
  v185 = (v171 + v184 + 8) & ~v171;
  v186 = v185 + v282;
  v187 = swift_allocObject();
  v188 = v277;
  *(v187 + 2) = v278;
  *(v187 + 3) = v188;
  *(v187 + 4) = v285;
  v276(&v187[v181], v291, v177);
  *&v187[v182] = v299;
  *&v187[v183] = a6;
  *&v187[v184] = v283;
  sub_1008336E8(v292, &v187[v185], v284);
  v187[v186] = v297;
  sub_1000041A4(&qword_1016AA9B8, &qword_1016AA918, &qword_1013BD718);
  swift_retain_n();
  v189 = v296;

  swift_unknownObjectRetain();
  v190 = v275;
  v191 = v279;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v274 + 8))(v191, v190);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();

  (v288[1])(v293, v289);

  return sub_10000B3A8(v280, &unk_1016A9A20, &qword_10138B280);
}

uint64_t sub_10081434C(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6)
{
  v91 = a6;
  v92 = a5;
  v80 = a3;
  v81 = a4;
  v8 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v87 = &v78 - v10;
  v85 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v88 = *(v13 - 8);
  v14 = *(v88 + 64);
  v15 = __chkstk_darwin(v13);
  v84 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v90 = &v78 - v18;
  v83 = v19;
  __chkstk_darwin(v17);
  v79 = &v78 - v20;
  v21 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v78 - v23;
  v25 = type metadata accessor for OwnedBeaconRecord();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v24, &unk_1016A9A20, &qword_10138B280);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10000B3A8(v24, &unk_1016A9A20, &qword_10138B280);
LABEL_5:
    v32 = v81;
    v33 = a1;
    sub_100814D78(a1, v91, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*v32 + 16) >= *(*v32 + 24) >> 1)
    {
      v76 = *(*v32 + 16);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_21;
  }

  sub_1008336E8(v24, v29, type metadata accessor for OwnedBeaconRecord);
  v30 = *(v25 + 20);
  sub_1008345FC(&qword_1016984A0, &type metadata accessor for UUID);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v31)
  {
    sub_1008333E4(v29, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

  __chkstk_darwin(v31);
  *(&v78 - 2) = v29;
  v34 = v89;
  v35 = sub_1012BC794(sub_1008347E0, (&v78 - 4), v80);
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = &_swiftEmptySetSingleton;
  }

  v37 = sub_100037E20(a1, v36);

  v38 = v88;
  v89 = v34;
  if (v37)
  {
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177B380);
    v40 = v79;
    (*(v38 + 16))(v79, a1, v13);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = v38;
    if (os_log_type_enabled(v41, v42))
    {
      LODWORD(v81) = v42;
      v33 = a1;
      v44 = v40;
      v45 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v46 = v41;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v43 + 8))(v44, v13);
      v50 = sub_1000136BC(v47, v49, aBlock);

      *(v45 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v46, v81, "Ignoring nearby non-primary beacon %{private,mask.hash}s", v45, 0x16u);
      sub_100007BAC(v80);
    }

    else
    {
      v33 = a1;

      (*(v38 + 8))(v40, v13);
    }
  }

  else
  {
    sub_100814D78(a1, v91, 0);
    v51 = v81;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*v51 + 16) >= *(*v51 + 24) >> 1)
    {
      v77 = *(*v51 + 16);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v33 = a1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1008333E4(v29, type metadata accessor for OwnedBeaconRecord);
LABEL_21:
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v88;
  v53 = *(v88 + 16);
  v81 = v53;
  v82 = v33;
  v54 = v90;
  v53(v90, v33, v13);
  v55 = v84;
  v53(v84, v91, v13);
  v56 = *(v52 + 80);
  v57 = (v56 + 16) & ~v56;
  v58 = (v83 + v56 + v57) & ~v56;
  v59 = (v83 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = *(v52 + 32);
  v62 = v54;
  v63 = v13;
  v61(v60 + v57, v62);
  (v61)(v60 + v58, v55, v13);
  *(v60 + v59) = v80;
  aBlock[4] = sub_100833450;
  aBlock[5] = v60;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101635900;
  _Block_copy(aBlock);
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_1008345FC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v64 = type metadata accessor for DispatchWorkItem();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = DispatchWorkItem.init(flags:block:)();

  v68 = v90;
  v69 = v81;
  v70 = v82;
  v81(v90, v82, v63);
  v71 = v87;
  v69(v87, v91, v63);
  v72 = v69;
  v73 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v72(v71 + v73[5], v70, v63);
  v74 = v73[8];

  static Date.trustedNow.getter(v71 + v74);
  *(v71 + v73[6]) = 0;
  *(v71 + v73[7]) = v67;
  *(v71 + v73[9]) = 0;
  *(v71 + v73[10]) = 0;
  (*(*(v73 - 1) + 56))(v71, 0, 1, v73);
  swift_beginAccess();
  sub_1001DE600(v71, v68);
  swift_endAccess();
}

uint64_t sub_100814D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v67 = a2;
    if (qword_101694960 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177B380);
  v64 = v8[2];
  v64(v13, a1, v7);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v66 = v8;
  if (v24)
  {
    v62 = v21;
    v63 = a1;
    v25 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v70[0] = v61;
    *v25 = 141558531;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v65 = v8[1];
    v65(v13, v7);
    v29 = sub_1000136BC(v26, v28, v70);

    *(v25 + 14) = v29;
    *(v25 + 22) = 2082;
    if (v69 > 2)
    {
      if (v69 != 3)
      {
        a1 = v63;
        if (v69 == 4)
        {
          v30 = 0xEF64656D7269666ELL;
          v31 = 0x6F4365756575712ELL;
          goto LABEL_21;
        }

        if (v69 == 5)
        {
          v30 = 0xEE0074726F685367;
          goto LABEL_14;
        }

LABEL_18:
        v30 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E75;
        goto LABEL_21;
      }

      v31 = 0xD000000000000010;
      v30 = 0x8000000101357040;
    }

    else
    {
      if (v69)
      {
        a1 = v63;
        if (v69 == 1)
        {
          v30 = 0xE800000000000000;
          v31 = 0x676E69676E61722ELL;
          goto LABEL_21;
        }

        if (v69 == 2)
        {
          v30 = 0xE900000000000067;
LABEL_14:
          v31 = 0x6E696B636172742ELL;
LABEL_21:
          v32 = sub_1000136BC(v31, v30, v70);

          *(v25 + 24) = v32;
          _os_log_impl(&_mh_execute_header, v22, v23, "Calling play sound on device %{private,mask.hash}s with context %{public}s", v25, 0x20u);
          swift_arrayDestroy();

          v21 = v62;
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      v30 = 0xE800000000000000;
      v31 = 0x746C75616665642ELL;
    }

    a1 = v63;
    goto LABEL_21;
  }

  v65 = v8[1];
  v65(v13, v7);
LABEL_22:
  v33 = sub_1000BC4D4(&qword_1016AA9C0, &qword_1013BD758);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = PassthroughSubject.init()();
  v37 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;
  swift_beginAccess();

  v38 = *(v4 + v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = *(v4 + v37);
  *(v4 + v37) = 0x8000000000000000;
  sub_101000078(v36, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + v37) = v71;
  swift_endAccess();
  v40 = sub_100810310(a1);
  My = type metadata accessor for Feature.FindMy();
  v70[3] = My;
  v70[4] = sub_1008345FC(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v42 = sub_1000280DC(v70);
  (*(*(My - 8) + 104))(v42, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v70);
  if (My & 1) == 0 || (v40)
  {
    sub_100801B60();
    v53 = v52;
    ObjectType = swift_getObjectType();
    if (v69 == 5)
    {
      v57 = [objc_opt_self() shortSequence];
      (*(v53 + 48))();
    }

    else
    {
      if (v69 == 2)
      {
        (*(v53 + 40))(a1, ObjectType, v53);
        swift_unknownObjectRelease();
LABEL_39:
        v70[0] = v36;
        sub_1000041A4(&qword_1016AA9C8, &qword_1016AA9C0, &qword_1013BD758);
        v56 = Publisher.eraseToAnyPublisher()();
        goto LABEL_40;
      }

      if (v69 == 1)
      {
        v55 = [objc_opt_self() rangingSequence];
      }

      else
      {
        v55 = [objc_opt_self() defaultSequence];
      }

      v57 = v55;
      (*(v53 + 32))();
    }

    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  if (qword_101694968 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_1016AA7B0);
  v43 = v68;
  v64(v68, a1, v7);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v46 = 136315651;
    *(v46 + 4) = sub_1000136BC(0xD000000000000024, 0x8000000101360EC0, v70);
    *(v46 + 12) = 2160;
    *(v46 + 14) = 1752392040;
    *(v46 + 22) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = a1;
    v50 = v49;
    v65(v43, v7);
    v51 = sub_1000136BC(v47, v50, v70);
    a1 = v48;

    *(v46 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s SPPlaySoundAll: %{private,mask.hash}s does NOT support ranging", v46, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v65(v43, v7);
  }

  v56 = sub_1008293E4(a1, v67, v69, v36);
LABEL_40:
  v58 = v56;

  return v58;
}

void sub_100815748(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v97 = a3;
  v95 = a2;
  v104 = a1;
  v5 = type metadata accessor for BeaconObservation();
  v6 = *(v5 - 8);
  v98 = v5;
  v99 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v100 = &v85[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v96 = &v85[-v11];
  v12 = type metadata accessor for Date();
  v92 = *(v12 - 8);
  v93 = v12;
  v13 = *(v92 + 64);
  __chkstk_darwin(v12);
  v91 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = type metadata accessor for UUID();
  v15 = *(v103 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v103);
  v19 = &v85[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v94 = &v85[-v21];
  __chkstk_darwin(v20);
  v23 = &v85[-v22];
  v24 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator();
  v101 = *(v24 - 1);
  v25 = *(v101 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v85[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v102 = &v85[-v29];
  v30 = type metadata accessor for DispatchPredicate();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v85[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *(v4 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
  *v34 = v35;
  (*(v31 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v30);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v38(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_10:
    v55 = type metadata accessor for Logger();
    sub_1000076D4(v55, qword_10177B380);
    v56 = v103;
    (*(v15 + 16))(v19, v37, v103);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v105[0] = v60;
      *v59 = 141558275;
      *(v59 + 4) = 1752392040;
      *(v59 + 12) = 2081;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      (*(v15 + 8))(v19, v56);
      v64 = sub_1000136BC(v61, v63, v105);

      *(v59 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v57, v58, "No coordinator for %{private,mask.hash}s. Cannot complete!", v59, 0x16u);
      sub_100007BAC(v60);
    }

    else
    {

      (*(v15 + 8))(v19, v56);
    }

    return;
  }

  v39 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_coordinators;
  swift_beginAccess();
  v40 = *(v4 + v39);
  v37 = v104;
  if (!*(v40 + 16))
  {
LABEL_9:
    if (qword_101694960 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v41 = v4;
  v42 = *(v4 + v39);

  v43 = sub_1000210EC(v37);
  if ((v44 & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_100833680(*(v40 + 56) + *(v101 + 72) * v43, v28, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);

  sub_1008336E8(v28, v102, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_1000076D4(v45, qword_10177B380);
  v46 = v103;
  v90 = *(v15 + 16);
  v90(v23, v37, v103);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v88 = v15 + 16;
    v50 = v49;
    v87 = swift_slowAlloc();
    v105[0] = v87;
    *v50 = 141558275;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
    v86 = v48;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v41;
    v53 = v52;
    (*(v15 + 8))(v23, v46);
    v54 = sub_1000136BC(v51, v53, v105);

    *(v50 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v47, v86, "commandComplete %{private,mask.hash}s", v50, 0x16u);
    sub_100007BAC(v87);
  }

  else
  {

    (*(v15 + 8))(v23, v46);
  }

  v65 = v46;
  v66 = v102;
  v67 = *&v102[v24[7]];
  dispatch thunk of DispatchWorkItem.cancel()();
  if (v95)
  {
    v68 = 5;
  }

  else
  {
    v68 = 3;
  }

  v66[v24[6]] = v68;
  v66[v24[10]] = 0;
  v69 = v91;
  static Date.trustedNow.getter(v91);
  (*(v92 + 40))(&v66[v24[8]], v69, v93);
  v70 = v24[9];
  v71 = *&v66[v70];
  v72 = v97;
  swift_errorRetain();

  *&v66[v70] = v72;
  v73 = v94;
  v74 = v104;
  v75 = v65;
  v76 = v90;
  v90(v94, v104, v75);
  v77 = v96;
  sub_100833680(v66, v96, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
  (*(v101 + 56))(v77, 0, 1, v24);
  swift_beginAccess();
  sub_1001DE600(v77, v73);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v78 = qword_10177B2E8;
  v79 = v100;
  v76(v100, v74, v103);
  v80 = v98;
  static Date.trustedNow.getter(v79 + *(v98 + 20));
  *(v79 + *(v80 + 24)) = 29;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v81 = *(v99 + 72);
  v82 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_101385D80;
  sub_100833680(v79, v83 + v82, type metadata accessor for BeaconObservation);
  v84 = type metadata accessor for Transaction();
  __chkstk_darwin(v84);
  *&v85[-32] = v78;
  *&v85[-24] = v83;
  *&v85[-16] = 0;
  *&v85[-8] = 0;
  static Transaction.named<A>(_:with:)();

  sub_1008333E4(v79, type metadata accessor for BeaconObservation);
  sub_10082145C(v74);
  sub_1008333E4(v66, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
}

unint64_t sub_100816244(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, unint64_t a6, char a7, uint64_t a8, char *a9, char *a10, char *a11)
{
  v52 = a8;
  LOBYTE(v13) = a7;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v51 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v47 - v21;
  Transaction.capture()();
  if (qword_101694960 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B380);
    v49 = v17[2];
    v50 = v17 + 2;
    v49(v22, a5, v16);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    v53 = v17;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v47 = a9;
      v28 = v13;
      v13 = v27;
      v54 = swift_slowAlloc();
      *v13 = 136446466;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v48 = v53[1];
      v48(v22, v16);
      v32 = sub_1000136BC(v29, v31, &v54);

      *(v13 + 4) = v32;
      *(v13 + 12) = 2082;
      swift_beginAccess();
      v33 = *(a6 + 24);
      v55 = *(a6 + 16);
      v56 = v33;
      sub_100833444(v55, v33);
      sub_1000BC4D4(&qword_1016AAA10, &unk_1013BD7E0);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000136BC(v34, v35, &v54);

      *(v13 + 14) = v36;
      v17 = v53;
      _os_log_impl(&_mh_execute_header, v24, v25, "playSound for group %{public}s) completion. Result: %{public}s", v13, 0x16u);
      swift_arrayDestroy();

      LOBYTE(v13) = v28;
      a9 = v47;
    }

    else
    {

      v48 = v17[1];
      v48(v22, v16);
    }

    result = swift_beginAccess();
    if (*(a6 + 24) != 1)
    {
      return result;
    }

    a6 = *(a6 + 16);
    sub_1008326DC(a6);
    if (v13)
    {
      sub_100816750(a9, a10, a11, a1);
      return sub_10083303C(a6, 1);
    }

    v38 = sub_100519FB0();
    v39 = v38;
    v22 = (v38 + 56);
    v40 = 1 << *(v38 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v13 = v41 & *(v38 + 56);
    v42 = (v40 + 63) >> 6;
    v47 = (v17 + 1);

    a5 = 0;
    while (v13)
    {
      v43 = a5;
      v44 = v53;
LABEL_17:
      v45 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      a9 = v51;
      v49(v51, *(v39 + 48) + v44[9] * (v45 | (v43 << 6)), v16);
      sub_100832458();
      v17 = swift_allocError();
      *v46 = a6;
      sub_100833444(a6, 1);
      sub_100815748(a9, 0, v17);

      v48(a9, v16);
    }

    v44 = v53;
    while (1)
    {
      v43 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v43 >= v42)
      {
        sub_10083303C(a6, 1);
      }

      v13 = *&v22[8 * v43];
      ++a5;
      if (v13)
      {
        a5 = v43;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t sub_100816750(char *a1, char *a2, char *a3, double a4)
{
  v100 = a1;
  v101 = a3;
  v7 = type metadata accessor for Date();
  v103 = *(v7 - 8);
  v104 = v7;
  v8 = *(v103 + 64);
  __chkstk_darwin(v7);
  v102 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v107 = &v99 - v12;
  v110 = type metadata accessor for BeaconObservation();
  v106 = *(v110 - 8);
  v13 = *(v106 + 64);
  v14 = __chkstk_darwin(v110);
  v108 = (&v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v105 = &v99 - v16;
  v17 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v99 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v109 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v99 = &v99 - v27;
  v28 = __chkstk_darwin(v26);
  v112 = &v99 - v29;
  __chkstk_darwin(v28);
  v31 = &v99 - v30;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v99 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v4;
  v37 = *&v4[OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue];
  *v36 = v37;
  (*(v33 + 104))(v36, enum case for DispatchPredicate.onQueue(_:), v32);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v36, v32);
  if ((v37 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v39 = &a2[*(type metadata accessor for OwnedBeaconGroup(0) + 24)];
  v111 = *(v22 + 16);
  v111(v31, v39, v21);
  v40 = sub_100519FB0();
  sub_10112C648(v40, v20);

  v36 = v31;
  v32 = v21;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v41 = &qword_1016980D0;
    v42 = &unk_10138F3B0;
    goto LABEL_8;
  }

  v43 = a2;
  v44 = v112;
  (*(v22 + 32))(v112, v20, v21);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v45 = sub_100035730(v44, sub_100526C48, 0);
  v20 = v107;
  sub_1012BB138(v45, v107);

  v46 = v110;
  v47 = (*(v106 + 48))(v20, 1, v110);
  v48 = v108;
  if (v47 != 1)
  {
    v54 = v105;
    sub_1008336E8(v20, v105, type metadata accessor for BeaconObservation);
    v55 = v102;
    static Date.trustedNow.getter(v102);
    v56 = *(v46 + 20);
    Date.timeIntervalSince(_:)();
    v58 = v57;
    (*(v103 + 8))(v55, v104);
    if (qword_101694960 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    v60 = sub_1000076D4(v59, qword_10177B380);
    sub_100833680(v54, v48, type metadata accessor for BeaconObservation);
    v106 = v60;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    v63 = os_log_type_enabled(v61, v62);
    v107 = v36;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v114[0] = v65;
      *v64 = 136446466;
      v66 = v48 + *(v110 + 20);
      v67 = Date.localISO8601.getter();
      v68 = v48;
      v69 = v43;
      v71 = v70;
      sub_1008333E4(v68, type metadata accessor for BeaconObservation);
      v72 = sub_1000136BC(v67, v71, v114);
      v43 = v69;

      *(v64 + 4) = v72;
      *(v64 + 12) = 2050;
      *(v64 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v61, v62, "Queued at %{public}s. Time since: %{public}f", v64, 0x16u);
      sub_100007BAC(v65);

      v54 = v105;
    }

    else
    {

      sub_1008333E4(v48, type metadata accessor for BeaconObservation);
    }

    if (v58 < 180.0)
    {
      v73 = type metadata accessor for Transaction();
      __chkstk_darwin(v73);
      *(&v99 - 6) = v113;
      *(&v99 - 5) = v43;
      *(&v99 - 4) = a4;
      v74 = v101;
      *(&v99 - 3) = v100;
      *(&v99 - 2) = v74;
      static Transaction.named<A>(_:with:)();
      sub_1008333E4(v54, type metadata accessor for BeaconObservation);
      v75 = *(v22 + 8);
      v75(v112, v32);
      return (v75)(v107, v32);
    }

    v104 = v43;
    v76 = v99;
    v77 = v107;
    v111(v99, v107, v32);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v114[0] = v81;
      *v80 = 134218242;
      *(v80 + 4) = 0x4066800000000000;
      *(v80 + 12) = 2080;
      sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v85 = *(v22 + 8);
      v110 = v22 + 8;
      v108 = v85;
      v85(v76, v32);
      v86 = sub_1000136BC(v82, v84, v114);
      v77 = v107;

      *(v80 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v78, v79, "%f elapsed. Posting error alert for %s", v80, 0x16u);
      sub_100007BAC(v81);
    }

    else
    {

      v87 = *(v22 + 8);
      v110 = v22 + 8;
      v108 = v87;
      v87(v76, v32);
    }

    sub_100819C70(v77, 0);
    v88 = sub_100519FB0();
    v89 = v88;
    v36 = (v88 + 56);
    v90 = 1 << *(v88 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v88 + 56);
    v93 = (v90 + 63) >> 6;

    v94 = 0;
    v95 = v109;
    while (v92)
    {
      v96 = v94;
LABEL_31:
      v97 = __clz(__rbit64(v92));
      v92 &= v92 - 1;
      v111(v95, (*(v89 + 48) + *(v22 + 72) * (v97 | (v96 << 6))), v32);
      sub_100815748(v95, 0, 0);
      v108(v95, v32);
    }

    while (1)
    {
      v96 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v96 >= v93)
      {

        sub_1008333E4(v105, type metadata accessor for BeaconObservation);
        v98 = v108;
        v108(v112, v32);
        v98(v107, v32);
      }

      v92 = *&v36[8 * v96];
      ++v94;
      if (v92)
      {
        v94 = v96;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  (*(v22 + 8))(v44, v32);
  v41 = &qword_1016A42E0;
  v42 = &qword_1013B0010;
LABEL_8:
  sub_10000B3A8(v20, v41, v42);
  if (qword_101694960 != -1)
  {
LABEL_36:
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000076D4(v49, qword_10177B380);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "No playback observation found. Cannot retry", v52, 2u);
  }

  return (*(v22 + 8))(v36, v32);
}

void sub_100817364(uint64_t a1, double a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v148 = a9;
  v147 = a8;
  v146 = a7;
  v152 = a6;
  v144 = a5;
  v143 = a4;
  v12 = type metadata accessor for UUID();
  v154 = *(v12 - 8);
  v155 = v12;
  v13 = *(v154 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v137[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v137[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v137[-v21];
  v23 = __chkstk_darwin(v20);
  v142 = &v137[-v24];
  v25 = __chkstk_darwin(v23);
  v150 = &v137[-v26];
  v27 = __chkstk_darwin(v25);
  v145 = &v137[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v137[-v30];
  __chkstk_darwin(v29);
  v149 = &v137[-v32];
  v33 = sub_1000BC4D4(&qword_1016AA928, &qword_1013BD728);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33);
  v37 = &v137[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v151 = &v137[-v38];
  v39 = sub_1000BC4D4(&qword_1016AA988, &qword_1013BD748);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = &v137[-v41];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000D2A70(a1, v42, &qword_1016AA988, &qword_1013BD748);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *v42;
      if (*v42 == 3)
      {
        v45 = v154;
        v44 = v155;
        if (qword_101694960 != -1)
        {
LABEL_48:
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_1000076D4(v46, qword_10177B380);
        (*(v45 + 16))(v19, v152, v44);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v158[0] = v50;
          *v49 = 136446466;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          v53 = v52;
          (*(v45 + 8))(v19, v44);
          v54 = sub_1000136BC(v51, v53, v158);

          *(v49 + 4) = v54;
          *(v49 + 12) = 2048;
          *(v49 + 14) = a2;
          _os_log_impl(&_mh_execute_header, v47, v48, "Play sound timed out for %{public}s after %f. CL should have completed by now", v49, 0x16u);
          sub_100007BAC(v50);
        }

        else
        {

          (*(v45 + 8))(v19, v44);
        }
      }

      else
      {
        v71 = v154;
        v70 = v155;
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_1000076D4(v72, qword_10177B380);
        (*(v71 + 16))(v16, v152, v70);
        sub_1008326DC(v43);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.error.getter();
        sub_1008326EC(v43);
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v158[0] = swift_slowAlloc();
          *v75 = 136446466;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          (*(v71 + 8))(v16, v70);
          v79 = sub_1000136BC(v76, v78, v158);

          *(v75 + 4) = v79;
          *(v75 + 12) = 2082;
          v157 = v43;
          sub_1008326DC(v43);
          v80 = String.init<A>(describing:)();
          v82 = sub_1000136BC(v80, v81, v158);

          *(v75 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v73, v74, "Play sound failed for %{public}s with unexpected error %{public}s", v75, 0x16u);
          swift_arrayDestroy();

          sub_1008326EC(v43);
        }

        else
        {

          sub_1008326EC(v43);
          (*(v71 + 8))(v16, v70);
        }
      }
    }

    else
    {
      v55 = v151;
      sub_1000D2AD8(v42, v151, &qword_1016AA928, &qword_1013BD728);
      sub_1000D2A70(v55, v37, &qword_1016AA928, &qword_1013BD728);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = *v37;
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_1000076D4(v57, qword_10177B380);
        v59 = v154;
        v58 = v155;
        (*(v154 + 16))(v22, v152, v155);
        sub_1008326DC(v56);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        sub_1008326EC(v56);
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v158[0] = swift_slowAlloc();
          *v62 = 136446466;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v64;
          (*(v59 + 8))(v22, v58);
          v66 = sub_1000136BC(v63, v65, v158);

          *(v62 + 4) = v66;
          *(v62 + 12) = 2082;
          v157 = v56;
          sub_1008326DC(v56);
          v67 = String.init<A>(describing:)();
          v69 = sub_1000136BC(v67, v68, v158);

          *(v62 + 14) = v69;
          _os_log_impl(&_mh_execute_header, v60, v61, "Play sound failed for %{public}s. Error %{public}s", v62, 0x16u);
          swift_arrayDestroy();

          sub_1008326EC(v56);
        }

        else
        {

          sub_1008326EC(v56);
          (*(v59 + 8))(v22, v58);
        }

        sub_10000B3A8(v151, &qword_1016AA928, &qword_1013BD728);
      }

      else
      {
        v83 = v154;
        v84 = v155;
        v85 = v149;
        (*(v154 + 32))(v149, v37, v155);
        if (qword_101694960 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        v87 = sub_1000076D4(v86, qword_10177B380);
        v88 = *(v83 + 16);
        v88(v31, v85, v84);
        v89 = v145;
        v141 = v88;
        v88(v145, v152, v84);
        v90 = v144;

        v140 = v87;
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();

        v93 = v83;
        if (os_log_type_enabled(v91, v92))
        {
          v94 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v158[0] = v139;
          *v94 = 136446979;
          *(v94 + 4) = sub_1000136BC(v143, v90, v158);
          *(v94 + 12) = 2160;
          *(v94 + 14) = 1752392040;
          *(v94 + 22) = 2081;
          sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
          v143 = v91;
          v95 = dispatch thunk of CustomStringConvertible.description.getter();
          v96 = v89;
          v98 = v97;
          v138 = v92;
          v99 = *(v83 + 8);
          v99(v31, v84);
          v100 = sub_1000136BC(v95, v98, v158);

          *(v94 + 24) = v100;
          *(v94 + 32) = 2082;
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          v145 = (v93 + 8);
          v144 = v99;
          v99(v96, v84);
          v104 = sub_1000136BC(v101, v103, v158);

          *(v94 + 34) = v104;
          v105 = v143;
          _os_log_impl(&_mh_execute_header, v143, v138, "%{public}s play sound started for %{private,mask.hash}s. Group: %{public}s", v94, 0x2Au);
          swift_arrayDestroy();

          v85 = v149;
        }

        else
        {

          v106 = *(v83 + 8);
          v106(v89, v84);
          v145 = (v83 + 8);
          v144 = v106;
          v106(v31, v84);
        }

        LODWORD(v143) = a10;
        v107 = v146;
        swift_beginAccess();
        v108 = *(v107 + 16);
        v109 = *(v107 + 24);
        *(v107 + 16) = 0;
        *(v107 + 24) = 0;
        sub_10083303C(v108, v109);
        sub_100818478(v85, v147, a2);
        v110 = sub_100519FB0();
        __chkstk_darwin(v110);
        *&v137[-16] = v85;
        v112 = sub_100B00224(sub_100834714, &v137[-32], v111);
        v113 = Strong;
        v114 = v112;
        v115 = v112 + 56;
        v116 = 1 << *(v112 + 32);
        v117 = -1;
        if (v116 < 64)
        {
          v117 = ~(-1 << v116);
        }

        v118 = v117 & *(v112 + 56);
        v44 = OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_playSoundSubjects;

        swift_beginAccess();
        v119 = 0;
        v19 = ((v116 + 63) >> 6);
        v45 = v150;
        while (v118)
        {
LABEL_36:
          v141(v45, *(v114 + 48) + *(v154 + 72) * (__clz(__rbit64(v118)) | (v119 << 6)), v155);
          v121 = *&v113[v44];
          if (*(v121 + 16))
          {
            v122 = *&v113[v44];

            v123 = sub_1000210EC(v45);
            if (v124)
            {
              v125 = *(*(v121 + 56) + 8 * v123);

              v156 = 4;
              PassthroughSubject.send(completion:)();
              v113 = Strong;
            }

            else
            {
            }

            v45 = v150;
          }

          v118 &= v118 - 1;
          sub_100815748(v45, 0, 0);
          v144(v45, v155);
        }

        while (1)
        {
          v120 = v119 + 1;
          if (__OFADD__(v119, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v120 >= v19)
          {
            break;
          }

          v118 = *(v115 + 8 * v120);
          ++v119;
          if (v118)
          {
            v119 = v120;
            goto LABEL_36;
          }
        }

        if (v143)
        {
          v126 = v142;
          v127 = v155;
          v141(v142, v152, v155);
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v156 = v131;
            *v130 = 136446210;
            sub_1008345FC(&qword_101696930, &type metadata accessor for UUID);
            v132 = dispatch thunk of CustomStringConvertible.description.getter();
            v134 = v133;
            v144(v126, v127);
            v135 = sub_1000136BC(v132, v134, &v156);

            *(v130 + 4) = v135;
            _os_log_impl(&_mh_execute_header, v128, v129, "Posting success alert for %{public}s", v130, 0xCu);
            sub_100007BAC(v131);

            v113 = Strong;
          }

          else
          {

            v144(v126, v127);
          }

          v136 = v149;
          sub_100819C70(v152, 1);

          sub_10000B3A8(v151, &qword_1016AA928, &qword_1013BD728);
        }

        else
        {
          sub_10000B3A8(v151, &qword_1016AA928, &qword_1013BD728);

          v127 = v155;
          v136 = v149;
        }

        v144(v136, v127);
      }
    }
  }
}