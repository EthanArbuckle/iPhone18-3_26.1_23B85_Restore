uint64_t sub_10012BEBC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10012BF24()
{
  result = qword_1016977A0;
  if (!qword_1016977A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016977A0);
  }

  return result;
}

uint64_t sub_10012BF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StableIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StableIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C1C4(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryProductInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10012C220()
{
  result = qword_1016977B8;
  if (!qword_1016977B8)
  {
    sub_1000BC580(&qword_1016977B0, &qword_10138C670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016977B8);
  }

  return result;
}

uint64_t sub_10012C284()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A4D0);
  v1 = sub_1000076D4(v0, qword_10177A4D0);
  if (qword_101694458 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A4E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10012C34C()
{
  v1[3] = v0;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for StableIdentifier();
  v1[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord();
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v1[15] = v11;
  *v11 = v1;
  v11[1] = sub_10012C4EC;

  return daemon.getter();
}

uint64_t sub_10012C4EC(uint64_t a1)
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
  v9 = sub_100132F98(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100132F98(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10012C6D0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10012C6D0(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v5 = v4[3];

    return _swift_task_switch(sub_10012D258, v5, 0);
  }

  else
  {
    v6 = v4[16];

    v7 = swift_task_alloc();
    v4[20] = v7;
    *v7 = v4;
    v7[1] = sub_10012C844;
    v8 = v4[3];

    return sub_10012D3D0();
  }
}

uint64_t sub_10012C844(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = v1;

  v7 = v4[3];
  if (v1)
  {
    v8 = sub_10012D314;
  }

  else
  {
    v4[22] = a1;
    v8 = sub_10012C980;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10012C980()
{
  v1 = sub_10000954C(v0[22]);
  v0[23] = v1;

  if (qword_101694450 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A4D0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "FMIP server has %ld self-beaconing devices registered.", v5, 0xCu);
  }

  else
  {
  }

  v6 = v0[18];

  return _swift_task_switch(sub_10012CAE4, v6, 0);
}

uint64_t sub_10012CAE4()
{
  v1 = *(v0 + 144);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_10012CBD0;
  v5 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_10012CBD0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_10012CCE8, v2, 0);
}

uint64_t sub_10012CCE8()
{
  v1 = v0[3];
  v0[25] = v0[2];
  return _swift_task_switch(sub_10012CD08, v1, 0);
}

void sub_10012CD08()
{
  v1 = v0[25];
  v55 = *(v1 + 16);
  if (v55)
  {
    v2 = 0;
    v3 = v0[10];
    v53 = v0[9];
    v4 = _swiftEmptyArrayStorage;
    while (v2 < *(v1 + 16))
    {
      v5 = v0[14];
      v7 = v0[7];
      v6 = v0[8];
      v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v9 = *(v3 + 72);
      sub_100132E88(v0[25] + v8 + v9 * v2, v5, type metadata accessor for OwnedBeaconRecord);
      sub_100132E88(v5 + *(v53 + 24), v6, type metadata accessor for StableIdentifier);
      LODWORD(v5) = swift_getEnumCaseMultiPayload();
      sub_100132DC4(v6, type metadata accessor for StableIdentifier);
      v10 = v0[14];
      if (v5)
      {
        sub_100132DC4(v10, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        sub_100132D2C(v10, v0[12]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, v4[2] + 1, 1);
        }

        v12 = v4[2];
        v11 = v4[3];
        v13 = v4;
        if (v12 >= v11 >> 1)
        {
          sub_10112434C(v11 > 1, v12 + 1, 1);
          v13 = v4;
        }

        v14 = v0[12];
        v13[2] = v12 + 1;
        v4 = v13;
        sub_100132D2C(v14, v13 + v8 + v12 * v9);
      }

      if (v55 == ++v2)
      {
        v15 = v0[25];
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_14:

  v47 = v4[2];
  if (v47)
  {
    v16 = 0;
    v54 = v0[13];
    v48 = v4;
    v52 = *(v0[9] + 20);
    v46 = v0[10];
    v17 = v4;
    v44 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v45 = v4 + v44;
    v56 = v0[23];
    v51 = v56 + 56;
    v18 = _swiftEmptyArrayStorage;
    v43 = v0[5];
    while (v16 < v17[2])
    {
      v49 = *(v46 + 72);
      v50 = v18;
      sub_100132E88(&v45[v49 * v16], v0[13], type metadata accessor for OwnedBeaconRecord);
      if (*(v56 + 16) && (v19 = v0[4], v20 = *(v56 + 40), sub_100132F98(&qword_1016967B0, 255, &type metadata accessor for UUID), v21 = dispatch thunk of Hashable._rawHashValue(seed:)(), v22 = -1 << *(v56 + 32), v23 = v21 & ~v22, ((*(v51 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        v25 = *(v43 + 72);
        v26 = *(v43 + 16);
        while (1)
        {
          v27 = v0[6];
          v28 = v0[4];
          v26(v27, *(v56 + 48) + v23 * v25, v28);
          sub_100132F98(&qword_1016984A0, 255, &type metadata accessor for UUID);
          v29 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v43 + 8))(v27, v28);
          if (v29)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v51 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        sub_100132DC4(v0[13], type metadata accessor for OwnedBeaconRecord);
        v18 = v50;
      }

      else
      {
LABEL_24:
        sub_100132D2C(v0[13], v0[11]);
        v18 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100A5C050(0, v50[2] + 1, 1, v50);
        }

        v31 = v18[2];
        v30 = v18[3];
        if (v31 >= v30 >> 1)
        {
          v18 = sub_100A5C050(v30 > 1, v31 + 1, 1, v18);
        }

        v32 = v0[11];
        v18[2] = v31 + 1;
        sub_100132D2C(v32, v18 + v44 + v31 * v49);
      }

      ++v16;
      v17 = v48;
      if (v16 == v47)
      {
        v33 = v0[18];

        goto LABEL_31;
      }
    }

LABEL_35:
    __break(1u);
    return;
  }

  v34 = v0[18];

  v18 = _swiftEmptyArrayStorage;
LABEL_31:

  v35 = v0[23];
  v36 = v0[13];
  v37 = v0[14];
  v39 = v0[11];
  v38 = v0[12];
  v40 = v0[8];
  v41 = v0[6];

  v42 = v0[1];

  v42(v18);
}

uint64_t sub_10012D258()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10012D314()
{
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10012D3D0()
{
  v1[34] = v0;
  v2 = type metadata accessor for AnyAnalyticsEvent();
  v1[35] = v2;
  v3 = *(v2 - 8);
  v1[36] = v3;
  v4 = *(v3 + 64) + 15;
  v1[37] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v1[39] = v6;
  v7 = *(v6 - 8);
  v1[40] = v7;
  v8 = *(v7 + 64) + 15;
  v1[41] = swift_task_alloc();
  v9 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v1[42] = v9;
  v10 = *(v9 - 8);
  v1[43] = v10;
  v11 = *(v10 + 64) + 15;
  v1[44] = swift_task_alloc();
  v12 = type metadata accessor for Response();
  v1[45] = v12;
  v13 = *(v12 - 8);
  v1[46] = v13;
  v14 = *(v13 + 64) + 15;
  v1[47] = swift_task_alloc();
  v15 = type metadata accessor for ContinuousClock.Instant();
  v1[48] = v15;
  v16 = *(v15 - 8);
  v1[49] = v16;
  v17 = *(v16 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  DevicesEndpoint = type metadata accessor for FetchDevicesEndpoint();
  v1[53] = DevicesEndpoint;
  v19 = *(*(DevicesEndpoint - 8) + 64) + 15;
  v1[54] = swift_task_alloc();
  v20 = *(*(type metadata accessor for SearchpartyAccount() - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v21 = type metadata accessor for ContinuousClock();
  v1[57] = v21;
  v22 = *(v21 - 8);
  v1[58] = v22;
  v23 = *(v22 + 64) + 15;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  v1[61] = v25;
  *v25 = v1;
  v25[1] = sub_10012D750;

  return daemon.getter();
}

uint64_t sub_10012D750(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 488);
  v12 = *v1;
  *(v3 + 496) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 504) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService();
  v9 = sub_100132F98(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100132F98(&qword_101697890, 255, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_10012D934;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10012D934(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v5 = *(*v2 + 272);
  v6 = *v2;
  v3[64] = a1;
  v3[65] = v1;

  if (v1)
  {
    v7 = sub_10012F0C4;
  }

  else
  {
    v8 = v3[62];

    v7 = sub_10012DA78;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_10012DA78()
{
  v1 = v0[60];
  ContinuousClock.init()();
  v2 = swift_task_alloc();
  v0[66] = v2;
  *v2 = v0;
  v2[1] = sub_10012DB18;
  v3 = v0[64];

  return sub_1002FFDE0((v0 + 2));
}

uint64_t sub_10012DB18()
{
  v2 = *(*v1 + 528);
  v3 = *v1;
  v3[67] = v0;

  if (v0)
  {
    v4 = v3[34];

    return _swift_task_switch(sub_10012F1DC, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[68] = v5;
    *v5 = v3;
    v5[1] = sub_10012DC8C;
    v6 = v3[64];
    v7 = v3[56];

    return sub_100300A9C(v7);
  }
}

uint64_t sub_10012DC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v8 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    sub_1001322A0(v2 + 16);
    v5 = sub_10012F314;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 272);
    v5 = sub_10012DDB4;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10012DDB4()
{
  v1 = v0[69];
  v2 = v0[55];
  v3 = v0[56];
  v4 = v0[54];
  URLComponents.init()();
  URLComponents.scheme.setter();
  v5 = v0[10];
  v6 = v0[11];

  URLComponents.host.setter();
  sub_1001322A0((v0 + 2));
  URLComponents.path.setter();
  sub_100132E88(v3, v2, type metadata accessor for SearchpartyAccount);
  v0[70] = v2[2];
  v0[71] = v2[3];
  v0[72] = v2[4];
  v0[73] = v2[5];

  sub_100132DC4(v2, type metadata accessor for SearchpartyAccount);
  v0[74] = sub_100F4DED0();
  v0[75] = v7;
  if (v1)
  {
    v8 = v0[64];
    v9 = v0[60];
    v11 = v0[57];
    v10 = v0[58];
    v12 = v0[56];
    v13 = v0[54];

    sub_100132DC4(v13, type metadata accessor for FetchDevicesEndpoint);
    sub_100132DC4(v12, type metadata accessor for SearchpartyAccount);
    (*(v10 + 8))(v9, v11);
    v15 = v0[59];
    v14 = v0[60];
    v17 = v0[55];
    v16 = v0[56];
    v18 = v0[54];
    v20 = v0[51];
    v19 = v0[52];
    v21 = v0[50];
    v22 = v0[47];
    v23 = v0[44];
    v30 = v0[41];
    v31 = v0[38];
    v32 = v0[37];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[60];
    v27 = v0[52];
    type metadata accessor for ServerInteractionController();
    v0[76] = ServerInteractionController.__allocating_init(bundleIdentifier:)();
    sub_1000BC4D4(&qword_1016978D0, &qword_10138C798);
    v0[77] = AnalyticsEvent.__allocating_init(name:)();
    ContinuousClock.now.getter();
    sub_100132E24();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[78] = v29;
    v0[79] = v28;

    return _swift_task_switch(sub_10012E0F0, v29, v28);
  }
}

uint64_t sub_10012E0F0()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 272);
  dispatch thunk of AnalyticsEvent.startTiming()();

  return _swift_task_switch(sub_10012E15C, v2, 0);
}

uint64_t sub_10012E15C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v13 = *(v0 + 560);
  v5 = *(v0 + 432);
  *(v0 + 120) = *(v0 + 424);
  *(v0 + 128) = sub_100132F98(&qword_1016978E0, 255, type metadata accessor for FetchDevicesEndpoint);
  v6 = sub_1000280DC((v0 + 96));
  sub_100132E88(v5, v6, type metadata accessor for FetchDevicesEndpoint);
  *(v0 + 160) = &type metadata for FetchDevicesRequest;
  *(v0 + 168) = sub_100132EF0();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  *(v0 + 200) = &type metadata for SearchpartyCredential;
  *(v0 + 208) = sub_100132C84();
  v7 = swift_allocObject();
  *(v0 + 176) = v7;
  *(v7 + 16) = v13;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 216) = 0u;
  sub_10002E98C(v2, v1);
  v8 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
  v14 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));
  v9 = swift_task_alloc();
  *(v0 + 640) = v9;
  *v9 = v0;
  v9[1] = sub_10012E330;
  v10 = *(v0 + 608);
  v11 = *(v0 + 376);

  return v14(v11, v0 + 96, v0 + 136, v0 + 176, v0 + 216);
}

uint64_t sub_10012E330()
{
  v2 = *v1;
  v3 = (*v1)[80];
  v7 = *v1;
  (*v1)[81] = v0;

  if (v0)
  {
    v4 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    v5 = sub_10012F44C;
  }

  else
  {
    v4 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 22), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 17);
    sub_100007BAC(v2 + 12);
    v5 = sub_10012E4A4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10012E4A4()
{
  v128 = v0;
  if (qword_101694450 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v1 = v0[59];
    v2 = v0[60];
    v3 = v0[57];
    v4 = v0[58];
    v6 = v0[51];
    v5 = v0[52];
    v7 = v0[48];
    v8 = v0[49];
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177A4D0);
    (*(v8 + 16))(v6, v5, v7);
    (*(v4 + 16))(v1, v2, v3);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[58];
    v13 = v0[59];
    v15 = v0[57];
    v16 = v0[51];
    if (v12)
    {
      v17 = v0[49];
      v18 = v0[50];
      v116 = v0[57];
      v20 = v0[43];
      v19 = v0[44];
      v105 = v0[48];
      v108 = v0[42];
      bufa = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v126 = v124;
      *bufa = 136315138;
      ContinuousClock.now.getter();
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100132F98(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
      v99 = static Duration.description<A>(_:_:units:)();
      v102 = v11;
      v22 = v21;
      (*(v20 + 8))(v19, v108);
      v23 = *(v17 + 8);
      v23(v18, v105);
      v24 = *(v14 + 8);
      (v24)(v13, v116);
      v23(v16, v105);
      v25 = sub_1000136BC(v99, v22, &v126);

      *(bufa + 4) = v25;
      _os_log_impl(&_mh_execute_header, v10, v102, "fetchDevices duration: %s", bufa, 0xCu);
      sub_100007BAC(v124);
    }

    else
    {
      v26 = v0[48];
      v27 = v0[49];

      v24 = *(v14 + 8);
      (v24)(v13, v15);
      v23 = *(v27 + 8);
      v23(v16, v26);
    }

    v0[83] = v23;
    v0[82] = v24;
    v28 = v0[47];
    v29 = Response.response.getter();
    v30 = [v29 statusCode];

    v31 = v23;
    if (v30 != 200)
    {
      v48 = v0[77];
      v92 = v0[74];
      v94 = v0[75];
      v87 = v0[76];
      v88 = v0[64];
      v118 = v0[60];
      log = v24;
      v110 = v0[58];
      bufc = v0[57];
      v104 = v0[54];
      v107 = v0[56];
      v96 = v0[49];
      v98 = v0[48];
      v101 = v0[52];
      v49 = v0[46];
      v50 = v0[47];
      v90 = v0[45];
      v51 = type metadata accessor for GenericError();
      sub_100132F98(&qword_1016978C0, 255, &type metadata accessor for GenericError);
      swift_allocError();
      v53 = v52;
      v126 = 0;
      v127 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v126 = 0xD000000000000013;
      v127 = 0x800000010134BBD0;
      v54 = Response.response.getter();
      v55 = [v54 statusCode];

      v0[32] = v55;
      v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v56);

      v57 = v127;
      *v53 = v126;
      v53[1] = v57;
      (*(*(v51 - 8) + 104))(v53, enum case for GenericError.error(_:), v51);
      swift_willThrow();

      sub_100006654(v92, v94);
      (*(v49 + 8))(v50, v90);
      v31(v101, v98);
      sub_100132DC4(v104, type metadata accessor for FetchDevicesEndpoint);
      sub_100132DC4(v107, type metadata accessor for SearchpartyAccount);
      v46 = bufc;
      v47 = v118;
      goto LABEL_9;
    }

    v117 = v23;
    v32 = v0[81];
    v33 = v0[47];
    v34 = type metadata accessor for JSONDecoder();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v37 = Response.body.getter();
    v39 = v38;
    sub_100132F44();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v32)
    {
      log = v24;
      v40 = v0[77];
      v41 = v0[76];
      v89 = v0[74];
      v91 = v0[75];
      v42 = v0[64];
      v109 = v0[57];
      bufb = v0[60];
      v103 = v0[56];
      v106 = v0[58];
      v97 = v0[52];
      v100 = v0[54];
      v93 = v0[49];
      v95 = v0[48];
      v44 = v0[46];
      v43 = v0[47];
      v45 = v0[45];
      sub_100016590(v37, v39);

      sub_100006654(v89, v91);
      (*(v44 + 8))(v43, v45);
      v117(v97, v95);
      sub_100132DC4(v100, type metadata accessor for FetchDevicesEndpoint);
      sub_100132DC4(v103, type metadata accessor for SearchpartyAccount);
      v46 = v109;
      v47 = bufb;
LABEL_9:
      (log)(v47, v46);
      v59 = v0[59];
      v58 = v0[60];
      v61 = v0[55];
      v60 = v0[56];
      v62 = v0[54];
      v64 = v0[51];
      v63 = v0[52];
      v65 = v0[50];
      v66 = v0[47];
      v67 = v0[44];
      bufd = v0[41];
      v119 = v0[38];
      logb = v0[37];

      v68 = v0[1];

      return v68();
    }

    sub_100016590(v37, v39);

    v70 = v0[33];
    v125 = *(v70 + 16);
    if (!v125)
    {
      break;
    }

    v71 = 0;
    v72 = v0[40];
    v73 = (v70 + 32);
    buf = v72;
    v120 = (v72 + 32);
    loga = (v72 + 48);
    v74 = _swiftEmptyArrayStorage;
    while (v71 < *(v70 + 16))
    {
      v76 = v0[38];
      v75 = v0[39];
      v77 = v73[3];
      v79 = *v73;
      v78 = v73[1];

      UUID.init(uuidString:)();

      if ((loga->isa)(v76, 1, v75) == 1)
      {
        sub_10000B3A8(v0[38], &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v80 = *v120;
        (*v120)(v0[41], v0[38], v0[39]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_100A5BFE0(0, *(v74 + 2) + 1, 1, v74);
        }

        v82 = *(v74 + 2);
        v81 = *(v74 + 3);
        if (v82 >= v81 >> 1)
        {
          v74 = sub_100A5BFE0(v81 > 1, v82 + 1, 1, v74);
        }

        v83 = v0[41];
        v84 = v0[39];
        *(v74 + 2) = v82 + 1;
        v80(&v74[((buf[80] + 32) & ~buf[80]) + *(buf + 9) * v82], v83, v84);
      }

      ++v71;
      v73 += 4;
      if (v125 == v71)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v74 = _swiftEmptyArrayStorage;
LABEL_24:
  v0[84] = v74;

  v85 = v0[79];
  v86 = v0[78];

  return _swift_task_switch(sub_10012EE08, v86, v85);
}

uint64_t sub_10012EE08()
{
  v1 = v0[77];
  v2 = v0[37];
  v3 = v0[34];
  dispatch thunk of AnalyticsEvent.stopTiming()();
  dispatch thunk of AnalyticsEvent.anyAnalyticsEvent.getter();

  return _swift_task_switch(sub_10012EE88, v3, 0);
}

uint64_t sub_10012EE88()
{
  v1 = v0[77];
  v2 = v0[76];
  v13 = v0[74];
  v14 = v0[75];
  v3 = v0[64];
  v24 = v0[59];
  v25 = v0[82];
  v21 = v0[58];
  v22 = v0[57];
  v23 = v0[60];
  v19 = v0[83];
  v20 = v0[56];
  v17 = v0[52];
  v18 = v0[54];
  v26 = v0[55];
  v27 = v0[51];
  v28 = v0[50];
  v4 = v0[47];
  v15 = v0[49];
  v16 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v29 = v0[44];
  v30 = v0[41];
  v7 = v0[37];
  v31 = v0[38];
  v9 = v0[35];
  v8 = v0[36];
  static AnalyticsPublisher.publish(event:)();

  sub_100006654(v13, v14);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v19(v17, v16);
  sub_100132DC4(v18, type metadata accessor for FetchDevicesEndpoint);
  sub_100132DC4(v20, type metadata accessor for SearchpartyAccount);
  v25(v23, v22);

  v10 = v0[1];
  v11 = v0[84];

  return v10(v11);
}

uint64_t sub_10012F0C4()
{
  v1 = v0[62];

  v3 = v0[59];
  v2 = v0[60];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];
  v10 = v0[47];
  v11 = v0[44];
  v14 = v0[41];
  v15 = v0[38];
  v16 = v0[37];
  v17 = v0[65];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10012F1DC()
{
  v1 = v0[64];
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[58];

  (*(v4 + 8))(v2, v3);
  v6 = v0[59];
  v5 = v0[60];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[54];
  v11 = v0[51];
  v10 = v0[52];
  v12 = v0[50];
  v13 = v0[47];
  v14 = v0[44];
  v17 = v0[41];
  v18 = v0[38];
  v19 = v0[37];
  v20 = v0[67];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10012F314()
{
  v1 = v0[64];
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[58];

  (*(v4 + 8))(v2, v3);
  v6 = v0[59];
  v5 = v0[60];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[54];
  v11 = v0[51];
  v10 = v0[52];
  v12 = v0[50];
  v13 = v0[47];
  v14 = v0[44];
  v17 = v0[41];
  v18 = v0[38];
  v19 = v0[37];
  v20 = v0[69];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10012F44C()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[64];
  v6 = v0[58];
  v26 = v0[57];
  v28 = v0[60];
  v24 = v0[56];
  v7 = v0[54];
  v8 = v0[52];
  v9 = v0[48];
  v10 = v0[49];

  sub_100006654(v4, v3);
  (*(v10 + 8))(v8, v9);
  sub_100132DC4(v7, type metadata accessor for FetchDevicesEndpoint);
  sub_100132DC4(v24, type metadata accessor for SearchpartyAccount);
  (*(v6 + 8))(v28, v26);
  sub_10000B3A8((v0 + 22), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 17);
  sub_100007BAC(v0 + 12);
  v12 = v0[59];
  v11 = v0[60];
  v14 = v0[55];
  v13 = v0[56];
  v15 = v0[54];
  v17 = v0[51];
  v16 = v0[52];
  v18 = v0[50];
  v19 = v0[47];
  v20 = v0[44];
  v23 = v0[41];
  v25 = v0[38];
  v27 = v0[37];
  v29 = v0[81];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10012F63C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for StableIdentifier();
  v2[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconRecord();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_10012F7AC, v1, 0);
}

uint64_t sub_10012F7AC()
{
  v1 = v0[3];
  v41 = *(v1 + 16);
  if (v41)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v5 = v1 + v4;
    v6 = *(v2 + 72);
    v7 = *(v1 + 16);
    do
    {
      v8 = v0[15];
      v10 = v0[9];
      v9 = v0[10];
      sub_100132E88(v5, v8, type metadata accessor for OwnedBeaconRecord);
      sub_100132E88(v8 + *(v3 + 24), v9, type metadata accessor for StableIdentifier);
      LODWORD(v8) = swift_getEnumCaseMultiPayload();
      sub_100132DC4(v9, type metadata accessor for StableIdentifier);
      v11 = v0[15];
      if (v8)
      {
        sub_100132D2C(v11, v0[14]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112434C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_10112434C(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[14];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        sub_100132D2C(v14, _swiftEmptyArrayStorage + v4 + v13 * v6);
      }

      else
      {
        sub_100132DC4(v11, type metadata accessor for OwnedBeaconRecord);
      }

      v5 += v6;
      --v7;
    }

    while (v7);
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    v16 = v0[12];
    v44 = v0[11];
    v17 = v0[6];
    sub_101123D4C(0, v15, 0);
    v18 = _swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v42 = *(v16 + 72);
    do
    {
      v19 = v0[13];
      v20 = v0[8];
      v21 = v0[5];
      sub_100132E88(v18, v19, type metadata accessor for OwnedBeaconRecord);
      (*(v17 + 16))(v20, v19 + *(v44 + 20), v21);
      sub_100132DC4(v19, type metadata accessor for OwnedBeaconRecord);
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_101123D4C(v22 > 1, v23 + 1, 1);
      }

      v24 = v0[8];
      v25 = v0[5];
      _swiftEmptyArrayStorage[2] = v23 + 1;
      (*(v17 + 32))(_swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23, v24, v25);
      v18 += v42;
      --v15;
    }

    while (v15);
  }

  v0[16] = _swiftEmptyArrayStorage;
  if (v41)
  {
    v26 = v0[12];
    v45 = v0[11];
    v27 = v0[6];
    v28 = v0[3];
    v29 = v41;
    sub_101123D4C(0, v41, 0);
    v30 = v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v43 = *(v26 + 72);
    do
    {
      v31 = v0[13];
      v32 = v0[7];
      v33 = v0[5];
      sub_100132E88(v30, v31, type metadata accessor for OwnedBeaconRecord);
      (*(v27 + 16))(v32, v31 + *(v45 + 20), v33);
      sub_100132DC4(v31, type metadata accessor for OwnedBeaconRecord);
      v35 = _swiftEmptyArrayStorage[2];
      v34 = _swiftEmptyArrayStorage[3];
      if (v35 >= v34 >> 1)
      {
        sub_101123D4C(v34 > 1, v35 + 1, 1);
      }

      v36 = v0[7];
      v37 = v0[5];
      _swiftEmptyArrayStorage[2] = v35 + 1;
      (*(v27 + 32))(_swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v35, v36, v37);
      v30 += v43;
      --v29;
    }

    while (v29);
  }

  v0[17] = sub_10000954C(_swiftEmptyArrayStorage);

  v38 = swift_task_alloc();
  v0[18] = v38;
  *v38 = v0;
  v38[1] = sub_10012FC74;
  v39 = v0[4];

  return sub_10012D3D0();
}

uint64_t sub_10012FC74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v8 = v4[16];
    v7 = v4[17];
    v9 = v4[4];

    v10 = sub_10012FEDC;
    v11 = v9;
  }

  else
  {
    v11 = v4[4];
    v4[20] = a1;
    v10 = sub_10012FDBC;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_10012FDBC()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[10];
  v14 = v0[8];
  v15 = v0[7];
  v7 = v0[3];
  v8 = sub_1001322F4(v0[20], v0[17]);

  v0[2] = v8;
  sub_10062536C(v2);

  v10 = sub_1001327E8(v9, v0 + 2);

  v11 = v0[2];

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_10012FEDC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];
  v8 = v0[19];

  return v7();
}

uint64_t sub_10012FF84(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = type metadata accessor for Response();
  v2[38] = v6;
  v7 = *(v6 - 8);
  v2[39] = v7;
  v8 = *(v7 + 64) + 15;
  v2[40] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v2[41] = v9;
  v10 = *(v9 - 8);
  v2[42] = v10;
  v11 = *(v10 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v12 = type metadata accessor for MetricsEndpoint();
  v2[46] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SearchpartyAccount() - 8) + 64) + 15;
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v15 = type metadata accessor for ContinuousClock();
  v2[50] = v15;
  v16 = *(v15 - 8);
  v2[51] = v16;
  v17 = *(v16 + 64) + 15;
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v2[54] = v19;
  *v19 = v2;
  v19[1] = sub_100130214;

  return daemon.getter();
}

uint64_t sub_100130214(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v12 = *v1;
  *(v3 + 440) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 448) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService();
  v9 = sub_100132F98(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100132F98(&qword_101697890, 255, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_1001303F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001303F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v5 = *(*v2 + 272);
  v6 = *v2;
  v3[57] = a1;
  v3[58] = v1;

  if (v1)
  {
    v7 = sub_10013164C;
  }

  else
  {
    v8 = v3[55];

    v7 = sub_100130538;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100130538()
{
  v1 = v0[53];
  ContinuousClock.init()();
  v2 = swift_task_alloc();
  v0[59] = v2;
  *v2 = v0;
  v2[1] = sub_1001305D8;
  v3 = v0[57];

  return sub_1002FFDE0((v0 + 2));
}

uint64_t sub_1001305D8()
{
  v2 = *(*v1 + 472);
  v3 = *v1;
  v3[60] = v0;

  if (v0)
  {
    v4 = v3[34];

    return _swift_task_switch(sub_100131740, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[61] = v5;
    *v5 = v3;
    v5[1] = sub_10013074C;
    v6 = v3[57];
    v7 = v3[49];

    return sub_100300A9C(v7);
  }
}

uint64_t sub_10013074C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v8 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);
    sub_1001322A0(v2 + 16);
    v5 = sub_100131854;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 272);
    v5 = sub_100130874;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100130874()
{
  v1 = *(v0 + 496);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 264);
  URLComponents.init()();
  URLComponents.scheme.setter();
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);

  URLComponents.host.setter();
  sub_1001322A0(v0 + 16);
  URLComponents.path.setter();
  sub_100132E88(v2, v3, type metadata accessor for SearchpartyAccount);
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];

  sub_100132DC4(v3, type metadata accessor for SearchpartyAccount);
  v12 = sub_100A1C028(v5);
  *(v0 + 504) = v12;
  *(v0 + 512) = v13;
  if (v1)
  {
    v14 = *(v0 + 456);
    v15 = *(v0 + 424);
    v16 = *(v0 + 400);
    v17 = *(v0 + 408);
    v18 = *(v0 + 392);
    v19 = *(v0 + 376);

    sub_100132DC4(v19, type metadata accessor for MetricsEndpoint);
    sub_100132DC4(v18, type metadata accessor for SearchpartyAccount);
    (*(v17 + 8))(v15, v16);
    v21 = *(v0 + 416);
    v20 = *(v0 + 424);
    v23 = *(v0 + 384);
    v22 = *(v0 + 392);
    v24 = *(v0 + 376);
    v26 = *(v0 + 352);
    v25 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 320);
    v44 = *(v0 + 296);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v42 = v11;
    v31 = *(v0 + 424);
    v32 = *(v0 + 368);
    v33 = *(v0 + 376);
    v34 = *(v0 + 360);
    v35 = v12;
    v36 = v13;
    type metadata accessor for ServerInteractionController();
    *(v0 + 520) = ServerInteractionController.__allocating_init(bundleIdentifier:)();
    ContinuousClock.now.getter();
    *(v0 + 120) = v32;
    *(v0 + 128) = sub_100132F98(&qword_101697898, 255, type metadata accessor for MetricsEndpoint);
    v37 = sub_1000280DC((v0 + 96));
    sub_100132E88(v33, v37, type metadata accessor for MetricsEndpoint);
    *(v0 + 160) = &type metadata for MetricsRequest;
    *(v0 + 168) = sub_100132C30();
    *(v0 + 136) = v35;
    *(v0 + 144) = v36;
    *(v0 + 200) = &type metadata for SearchpartyCredential;
    *(v0 + 208) = sub_100132C84();
    v38 = swift_allocObject();
    *(v0 + 176) = v38;
    v38[2] = v8;
    v38[3] = v9;
    v38[4] = v42;
    v38[5] = v10;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    *(v0 + 216) = 0u;
    sub_10002E98C(v35, v36);
    v39 = *(&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + 1);
    v43 = (&async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:) + async function pointer to dispatch thunk of ServerInteractionController.send(endpoint:content:credential:pinningCredential:));
    v40 = swift_task_alloc();
    *(v0 + 528) = v40;
    *v40 = v0;
    v40[1] = sub_100130C80;
    v41 = *(v0 + 320);

    return v43(v41, v0 + 96, v0 + 136, v0 + 176, v0 + 216);
  }
}

uint64_t sub_100130C80()
{
  v2 = *v1;
  v3 = (*v1)[66];
  v7 = *v1;
  (*v1)[67] = v0;

  if (v0)
  {
    v4 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    v5 = sub_100131968;
  }

  else
  {
    v4 = v2[34];
    sub_10000B3A8((v2 + 27), &qword_1016978B0, &qword_1013A3960);
    sub_10000B3A8((v2 + 22), &qword_1016978B8, &qword_1013C35C0);
    sub_100007BAC(v2 + 17);
    sub_100007BAC(v2 + 12);
    v5 = sub_100130DF4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100130DF4()
{
  v114 = v0;
  if (qword_101694450 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[41];
  v8 = v0[42];
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177A4D0);
  (*(v8 + 16))(v6, v5, v7);
  (*(v4 + 16))(v1, v2, v3);
  v10 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v10, v108);
  v13 = v0[51];
  v12 = v0[52];
  v14 = v0[50];
  v15 = v0[44];
  if (v11)
  {
    v16 = v0[42];
    v17 = v0[43];
    v103 = v10;
    v18 = v0[41];
    v110 = v0[50];
    v20 = v0[36];
    v19 = v0[37];
    v97 = v0[35];
    v100 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v112 = v105;
    *v100 = 136315138;
    ContinuousClock.now.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100132F98(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    v93 = static Duration.description<A>(_:_:units:)();
    v22 = v21;
    (*(v20 + 8))(v19, v97);
    v23 = *(v16 + 8);
    v23(v17, v18);
    v24 = *(v13 + 8);
    v24(v12, v110);
    v111 = v23;
    v23(v15, v18);
    v25 = sub_1000136BC(v93, v22, &v112);

    *(v100 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v103, v108, "metrics duration: %s", v100, 0xCu);
    sub_100007BAC(v105);
  }

  else
  {
    v26 = v0[41];
    v27 = v0[42];

    v24 = *(v13 + 8);
    v24(v12, v14);
    v111 = *(v27 + 8);
    v111(v15, v26);
  }

  v28 = v0[40];
  v29 = Response.response.getter();
  v30 = [v29 statusCode];

  if (v30 != 200)
  {
    v46 = v0[65];
    v76 = v0[63];
    v79 = v0[64];
    v106 = v24;
    v47 = v0[57];
    v102 = v0[50];
    v104 = v0[53];
    v95 = v0[49];
    v99 = v0[51];
    v88 = v0[45];
    v91 = v0[47];
    v82 = v0[42];
    v85 = v0[41];
    v48 = v0[39];
    v49 = v0[40];
    v74 = v0[38];
    v50 = type metadata accessor for GenericError();
    sub_100132F98(&qword_1016978C0, 255, &type metadata accessor for GenericError);
    swift_allocError();
    v52 = v51;
    v112 = 0;
    v113 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v112 = 0xD000000000000013;
    v113 = 0x800000010134BBD0;
    v53 = Response.response.getter();
    v54 = [v53 statusCode];

    v0[32] = v54;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v55);

    v56 = v113;
    *v52 = v112;
    v52[1] = v56;
    (*(*(v50 - 8) + 104))(v52, enum case for GenericError.error(_:), v50);
    swift_willThrow();

    sub_100006654(v76, v79);
    (*(v48 + 8))(v49, v74);
    v111(v88, v85);
    sub_100132DC4(v91, type metadata accessor for MetricsEndpoint);
    sub_100132DC4(v95, type metadata accessor for SearchpartyAccount);
    v45 = v102;
    goto LABEL_10;
  }

  v31 = v0[67];
  v32 = v0[40];
  v33 = type metadata accessor for JSONDecoder();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v36 = Response.body.getter();
  v38 = v37;
  sub_100132CD8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v39 = v0[65];
  v98 = v0[63];
  v101 = v0[64];
  v40 = v0[57];
  v104 = v0[53];
  if (v31)
  {
    v90 = v0[51];
    v94 = v0[50];
    v84 = v0[47];
    v87 = v0[49];
    v41 = v0[42];
    v78 = v0[41];
    v81 = v0[45];
    v106 = v24;
    v43 = v0[39];
    v42 = v0[40];
    v44 = v0[38];
    sub_100016590(v36, v38);

    sub_100006654(v98, v101);
    (*(v43 + 8))(v42, v44);
    v111(v81, v78);
    sub_100132DC4(v84, type metadata accessor for MetricsEndpoint);
    sub_100132DC4(v87, type metadata accessor for SearchpartyAccount);
    v45 = v94;
LABEL_10:
    v106(v104, v45);
    v58 = v0[52];
    v57 = v0[53];
    v60 = v0[48];
    v59 = v0[49];
    v61 = v0[47];
    v63 = v0[44];
    v62 = v0[45];
    v64 = v0[43];
    v65 = v0[40];
    v66 = v0[37];

    v67 = v0[1];
    goto LABEL_11;
  }

  v86 = v0[50];
  v89 = v0[52];
  v80 = v0[49];
  v83 = v0[51];
  v75 = v0[45];
  v77 = v0[47];
  v92 = v0[48];
  v96 = v0[44];
  v69 = v0[40];
  v72 = v0[42];
  v73 = v0[41];
  v70 = v0[38];
  v71 = v0[39];
  v107 = v0[43];
  v109 = v0[37];
  sub_100016590(v36, v38);

  sub_100006654(v98, v101);
  (*(v71 + 8))(v69, v70);
  v111(v75, v73);
  sub_100132DC4(v77, type metadata accessor for MetricsEndpoint);
  sub_100132DC4(v80, type metadata accessor for SearchpartyAccount);
  v24(v104, v86);

  v67 = v0[1];
LABEL_11:

  return v67();
}

uint64_t sub_10013164C()
{
  v1 = v0[55];

  v14 = v0[58];
  v3 = v0[52];
  v2 = v0[53];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v9 = v0[43];
  v10 = v0[40];
  v11 = v0[37];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100131740()
{
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];

  (*(v4 + 8))(v2, v3);
  v17 = v0[60];
  v6 = v0[52];
  v5 = v0[53];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v12 = v0[43];
  v13 = v0[40];
  v14 = v0[37];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100131854()
{
  v1 = v0[57];
  v2 = v0[53];
  v3 = v0[50];
  v4 = v0[51];

  (*(v4 + 8))(v2, v3);
  v17 = v0[62];
  v6 = v0[52];
  v5 = v0[53];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v12 = v0[43];
  v13 = v0[40];
  v14 = v0[37];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100131968()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[57];
  v5 = v0[51];
  v23 = v0[50];
  v24 = v0[53];
  v6 = v0[49];
  v7 = v0[47];
  v8 = v0[45];
  v10 = v0[41];
  v9 = v0[42];

  sub_100006654(v2, v3);
  (*(v9 + 8))(v8, v10);
  sub_100132DC4(v7, type metadata accessor for MetricsEndpoint);
  sub_100132DC4(v6, type metadata accessor for SearchpartyAccount);
  (*(v5 + 8))(v24, v23);
  sub_10000B3A8((v0 + 22), &qword_1016978B8, &qword_1013C35C0);
  sub_100007BAC(v0 + 17);
  sub_100007BAC(v0 + 12);
  v25 = v0[67];
  v12 = v0[52];
  v11 = v0[53];
  v14 = v0[48];
  v13 = v0[49];
  v15 = v0[47];
  v17 = v0[44];
  v16 = v0[45];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[37];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100131B20()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100131B7C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FMIPService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100131C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for FMIPService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100131CE8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FMIPService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100131D90(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FMIPService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100131E38(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FMIPService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100131EE0()
{
  v1 = *v0;
  type metadata accessor for FMIPService();
  sub_100132F98(&unk_1016B1100, v2, type metadata accessor for FMIPService);
  return ActorServiceProtocol.description.getter();
}

Swift::Int sub_100131FD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10013204C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001320CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100132148()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001321AC@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_100132220()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A4E8);
  sub_1000076D4(v0, qword_10177A4E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001322F4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100132494(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100132D90(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_100132494(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v28 - v12;
  v34 = *(a3 + 16);
  if (v34)
  {
    v30 = 0;
    v13 = 0;
    v39 = *(v11 + 16);
    v40 = v11 + 16;
    v33 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    v37 = a4 + 56;
    v38 = v14;
    v15 = (v11 + 8);
    v36 = a4;
    while (1)
    {
      v35 = v13;
      v39(v41, v33 + v38 * v13, v6);
      v18 = *(a4 + 40);
      sub_100132F98(&qword_1016967B0, 255, &type metadata accessor for UUID);
      v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
      {
        break;
      }

      v32 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24 = ~v20;
      while (1)
      {
        v39(v10, *(v36 + 48) + v21 * v38, v6);
        sub_100132F98(&qword_1016984A0, 255, &type metadata accessor for UUID);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v16 = *v15;
        (*v15)(v10, v6);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
        {
          a4 = v36;
          goto LABEL_4;
        }
      }

      result = (v16)(v41, v6);
      v27 = v31[v22];
      v31[v22] = v27 | v23;
      if ((v27 & v23) != 0)
      {
        a4 = v36;
LABEL_5:
        v17 = v35;
        goto LABEL_6;
      }

      v17 = v35;
      a4 = v36;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      ++v30;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v34)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v41, v6);
    goto LABEL_5;
  }

  v30 = 0;
LABEL_17:

  return sub_10060AF64(v31, v29, v30, a4);
}

void *sub_1001327E8(uint64_t a1, uint64_t *a2)
{
  v40 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v45 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(*(v37 - 8) + 64);
  v8 = __chkstk_darwin(v37);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  v39 = *(a1 + 16);
  if (v39)
  {
    v13 = 0;
    v14 = *(v10 + 80);
    v41 = *(v10 + 72);
    v33 = (v14 + 32) & ~v14;
    v38 = a1 + v33;
    v44 = v4 + 16;
    v36 = _swiftEmptyArrayStorage;
    v34 = v4;
    v43 = (v4 + 8);
    v47 = &v32 - v11;
    while (1)
    {
      sub_100132E88(v38 + v41 * v13, v12, type metadata accessor for OwnedBeaconRecord);
      v15 = *v40;
      if (*(*v40 + 16))
      {
        v42 = v13;
        v16 = *(v37 + 20);
        v17 = *(v15 + 40);
        sub_100132F98(&qword_1016967B0, 255, &type metadata accessor for UUID);

        v46 = v16;
        v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v15 + 32);
        v20 = v18 & ~v19;
        if ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          v22 = *(v34 + 72);
          v23 = *(v34 + 16);
          while (1)
          {
            v24 = v45;
            v23(v45, *(v15 + 48) + v22 * v20, v3);
            sub_100132F98(&qword_1016984A0, 255, &type metadata accessor for UUID);
            v25 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v43)(v24, v3);
            if (v25)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v12 = v47;
          sub_100132D2C(v47, v35);
          v26 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v26;
          v48 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10112434C(0, v26[2] + 1, 1);
            v28 = v48;
          }

          v13 = v42;
          v30 = v28[2];
          v29 = v28[3];
          if (v30 >= v29 >> 1)
          {
            sub_10112434C(v29 > 1, v30 + 1, 1);
            v28 = v48;
          }

          v28[2] = v30 + 1;
          v36 = v28;
          sub_100132D2C(v35, v28 + v33 + v30 * v41);
          goto LABEL_5;
        }

LABEL_3:

        v12 = v47;
        v13 = v42;
      }

      sub_100132DC4(v12, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
      if (++v13 == v39)
      {
        return v36;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100132C30()
{
  result = qword_1016978A0;
  if (!qword_1016978A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978A0);
  }

  return result;
}

unint64_t sub_100132C84()
{
  result = qword_1016978A8;
  if (!qword_1016978A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978A8);
  }

  return result;
}

unint64_t sub_100132CD8()
{
  result = qword_1016978C8;
  if (!qword_1016978C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978C8);
  }

  return result;
}

uint64_t sub_100132D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132D90@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100132494(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100132DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100132E24()
{
  result = qword_1016978D8;
  if (!qword_1016978D8)
  {
    sub_1000BC580(&qword_1016978D0, &qword_10138C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978D8);
  }

  return result;
}

uint64_t sub_100132E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100132EF0()
{
  result = qword_1016978E8;
  if (!qword_1016978E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978E8);
  }

  return result;
}

unint64_t sub_100132F44()
{
  result = qword_1016978F0;
  if (!qword_1016978F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978F0);
  }

  return result;
}

uint64_t sub_100132F98(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s15KnownRecordTypeOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s15KnownRecordTypeOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1001330D4()
{
  result = qword_1016978F8;
  if (!qword_1016978F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016978F8);
  }

  return result;
}

unint64_t sub_10013312C()
{
  result = qword_101697900;
  if (!qword_101697900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697900);
  }

  return result;
}

unint64_t sub_100133184()
{
  result = qword_101697908;
  if (!qword_101697908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697908);
  }

  return result;
}

unint64_t sub_1001331DC()
{
  result = qword_101697910;
  if (!qword_101697910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697910);
  }

  return result;
}

unint64_t sub_100133234()
{
  result = qword_101697918;
  if (!qword_101697918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697918);
  }

  return result;
}

unint64_t sub_10013328C()
{
  result = qword_101697920;
  if (!qword_101697920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697920);
  }

  return result;
}

uint64_t sub_100133310(void *a1)
{
  v2 = v1;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BA08);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    type metadata accessor for CloudKitCoordinator();

    v9 = String.init<A>(describing:)();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "CloudKitCoordinator was reset: %{public}s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  sub_100B07780(v12, a1, v2);
}

uint64_t sub_1001334C0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177BA08);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "CloudKitCoordinator requested flushCache", v12, 2u);
  }

  v13 = *(v2 + 168);
  v14 = *(v13 + 16);
  *v8 = v14;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v14)
  {
    v17 = dispatch_group_create();
    dispatch_group_enter(v17);

    v18 = v17;
    sub_1010101E8(0, a1, v13, v18);

    v19 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    return sub_100A8306C(6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100133718(void *a1, uint64_t a2, unint64_t a3)
{
  v285 = a2;
  v286 = a3;
  v5 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v267 = &v249 - v7;
  v266 = type metadata accessor for DirectorySequence();
  v265 = *(v266 - 8);
  v8 = *(v265 + 64);
  __chkstk_darwin(v266);
  v280 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v262 = &v249 - v12;
  v282 = type metadata accessor for SharedBeaconRecord(0);
  v274 = *(v282 - 8);
  v13 = *(v274 + 64);
  v14 = __chkstk_darwin(v282);
  v281 = &v249 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v256 = &v249 - v16;
  v264 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v17 = *(*(v264 - 8) + 64);
  __chkstk_darwin(v264);
  v273 = &v249 - v18;
  v19 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v261 = &v249 - v21;
  v260 = type metadata accessor for OwnedBeaconRecord();
  v259 = *(v260 - 8);
  v22 = *(v259 + 64);
  __chkstk_darwin(v260);
  v255 = &v249 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for URL();
  v278 = *(v283 - 1);
  v24 = *(v278 + 64);
  v25 = __chkstk_darwin(v283);
  v263 = &v249 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v275 = &v249 - v28;
  __chkstk_darwin(v27);
  v277 = &v249 - v29;
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v253 = &v249 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v254 = &v249 - v35;
  v36 = __chkstk_darwin(v34);
  v257 = &v249 - v37;
  v38 = __chkstk_darwin(v36);
  v270 = &v249 - v39;
  v40 = __chkstk_darwin(v38);
  v271 = &v249 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v249 - v43;
  __chkstk_darwin(v42);
  v46 = &v249 - v45;
  v47 = type metadata accessor for UUID();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = __chkstk_darwin(v47);
  v258 = &v249 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v268 = &v249 - v53;
  v54 = __chkstk_darwin(v52);
  v279 = &v249 - v55;
  __chkstk_darwin(v54);
  v57 = &v249 - v56;
  v58 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = v48;
  UUID.init(uuidString:)();

  v60 = *(v48 + 48);
  if (v60(v46, 1, v47) != 1)
  {
    v250 = v60;
    v269 = v3;
    v70 = *(v59 + 32);
    v276 = v57;
    v252 = v59 + 32;
    v251 = v70;
    v70(v57, v46, v47);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v284 = v59;
    v71 = type metadata accessor for Logger();
    v72 = sub_1000076D4(v71, qword_10177BA08);
    v73 = a1;
    v74 = v286;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    v77 = os_log_type_enabled(v75, v76);
    v272 = v47;
    v249 = v73;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v293 = v80;
      *v78 = 138412546;
      *(v78 + 4) = v73;
      *v79 = v73;
      *(v78 + 12) = 2082;
      v81 = v73;
      v68 = v285;
      *(v78 + 14) = sub_1000136BC(v285, v74, &v293);
      _os_log_impl(&_mh_execute_header, v75, v76, "Process CloudKit delete recordID: %@ recordType: %{public}s", v78, 0x16u);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v80);
    }

    else
    {

      v68 = v285;
    }

    v82 = sub_1008DA998(v68, v74);
    v83 = v269;
    if (v82 == 17)
    {

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v293 = v87;
        *v86 = 136446210;
        *(v86 + 4) = sub_1000136BC(v68, v74, &v293);
        _os_log_impl(&_mh_execute_header, v84, v85, "Ignoring record delete for unknown record type: %{public}s", v86, 0xCu);
        sub_100007BAC(v87);
      }

      (*(v284 + 8))(v276, v272);
      goto LABEL_79;
    }

    v88 = v82;
    v89 = [v249 recordName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    v90 = v272;
    if (v250(v44, 1, v272) == 1)
    {
      sub_10000B3A8(v44, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v91 = v279;
      v251(v279, v44, v90);
      v92 = sub_1008DA998(v68, v74);
      if (v92 != 17)
      {
        v93 = v83[21];
        v94 = v277;
        sub_1008DAD28(v92, v277);
        sub_100B2B870(v91, v94);
        (*(v278 + 8))(v94, v283);
        v95 = v288;
        if (v288)
        {
          v96 = v91;
          v97 = v289;
          v98 = sub_1000035D0(&v287, v288);
          *(&v291 + 1) = v95;
          v292 = *(v97 + 8);
          v99 = sub_1000280DC(&v290);
          (*(*(v95 - 8) + 16))(v99, v98, v95);
          (*(v284 + 8))(v96, v90);
          sub_100007BAC(&v287);
        }

        else
        {
          (*(v284 + 8))(v91, v90);
          sub_10000B3A8(&v287, &qword_101696920, &unk_10138B200);
          v290 = 0u;
          v291 = 0u;
          v292 = 0;
        }

        v293 = v290;
        v294 = v291;
        v295 = v292;
        goto LABEL_25;
      }

      (*(v284 + 8))(v91, v90);
    }

    v295 = 0;
    v293 = 0u;
    v294 = 0u;
LABEL_25:
    switch(v88)
    {
      case 1:
        v144 = v262;
        v145 = v276;
        sub_100AA5198(v276, v262);
        v146 = v282;
        if ((*(v274 + 48))(v144, 1, v282) == 1)
        {
          sub_10000B3A8(v144, &unk_101698C30, &unk_101392630);
        }

        else
        {
          v193 = v256;
          sub_10013A49C(v144, v256, type metadata accessor for SharedBeaconRecord);
          *(&v291 + 1) = v146;
          v292 = sub_1000248A8(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
          v194 = sub_1000280DC(&v290);
          sub_10013A81C(v193, v194, type metadata accessor for SharedBeaconRecord);
          v195 = *(&v291 + 1);
          v196 = v292;
          sub_1000035D0(&v290, *(&v291 + 1));
          v197 = v268;
          (*(*(*(v196 + 8) + 8) + 32))(v195);
          v198 = type metadata accessor for Transaction();
          __chkstk_darwin(v198);
          *(&v249 - 4) = v197;
          *(&v249 - 3) = v83;
          *(&v249 - 2) = &v290;
          *(&v249 - 4) = 257;
          static Transaction.named<A>(_:with:)();
          sub_10013A660(v193, type metadata accessor for SharedBeaconRecord);
          (*(v284 + 8))(v197, v90);
          sub_100007BAC(&v290);
        }

        v199 = v283;
        v200 = v267;
        v201 = v83[21];
        if (qword_101695470 != -1)
        {
          swift_once();
        }

        v202 = sub_1000076D4(v199, qword_10177CD50);
        v203 = v201[2];
        *(&v249 - 2) = __chkstk_darwin(v202);
        *(&v249 - 1) = v145;
        OS_dispatch_queue.sync<A>(execute:)();
        LODWORD(v279) = v290;
        v283 = v201;
        v204 = v278;
        (*(v278 + 16))(v275, v202, v199);
        *&v290 = _swiftEmptyArrayStorage;
        *&v287 = _swiftEmptyArrayStorage;
        v205 = [objc_opt_self() defaultManager];
        NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

        DirectorySequence.next()();
        v206 = *(v204 + 48);
        v207 = v206(v200, 1, v199);
        v208 = v199;
        v209 = v263;
        if (v207 != 1)
        {
          v210 = *(v278 + 32);
          v211 = (v278 + 8);
          do
          {
            v210(v209, v200, v199);
            v212 = objc_autoreleasePoolPush();
            sub_1005FBDCC(v209, v283, &v290, &v287);
            objc_autoreleasePoolPop(v212);
            (*v211)(v209, v199);
            DirectorySequence.next()();
          }

          while (v206(v200, 1, v199) != 1);
        }

        (*(v265 + 8))(v280, v266);
        static os_log_type_t.debug.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v213 = static OS_os_log.default.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v214 = swift_allocObject();
        *(v214 + 16) = xmmword_10138BBE0;
        v215 = v290;
        v216 = *(v290 + 16);
        *(v214 + 56) = &type metadata for Int;
        *(v214 + 64) = &protocol witness table for Int;
        *(v214 + 32) = v216;
        sub_1000248A8(&qword_1016B14E0, &type metadata accessor for URL);

        v217 = v275;
        v218 = dispatch thunk of CustomStringConvertible.description.getter();
        v220 = v219;
        *(v214 + 96) = &type metadata for String;
        *(v214 + 104) = sub_100008C00();
        *(v214 + 72) = v218;
        *(v214 + 80) = v220;
        os_log(_:dso:log:_:_:)();

        (*(v278 + 8))(v217, v208);

        v221 = *(v215 + 16);
        if (v221)
        {
          *&v290 = _swiftEmptyArrayStorage;
          sub_101123D4C(0, v221, 0);
          v222 = v290;
          v223 = v215 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
          v224 = *(v274 + 72);
          v225 = (v284 + 16);
          v226 = v272;
          v227 = v258;
          do
          {
            v228 = v281;
            sub_10013A81C(v223, v281, type metadata accessor for SharedBeaconRecord);
            (*v225)(v227, v228 + *(v282 + 20), v226);
            sub_10013A660(v228, type metadata accessor for SharedBeaconRecord);
            *&v290 = v222;
            v230 = *(v222 + 16);
            v229 = *(v222 + 24);
            if (v230 >= v229 >> 1)
            {
              sub_101123D4C(v229 > 1, v230 + 1, 1);
              v222 = v290;
            }

            *(v222 + 16) = v230 + 1;
            v251((v222 + ((*(v284 + 80) + 32) & ~*(v284 + 80)) + *(v284 + 72) * v230), v227, v226);
            v223 += v224;
            --v221;
          }

          while (v221);

          v68 = v285;
          v83 = v269;
          v90 = v226;
        }

        else
        {

          v68 = v285;
          v83 = v269;
          v90 = v272;
        }

        v107 = v276;
        goto LABEL_113;
      case 2:
        v128 = v83[21];
        if (qword_1016947B8 != -1)
        {
          swift_once();
        }

        v129 = sub_1000076D4(v283, qword_10177AEF8);
        v130 = *(v128 + 16);
        v131 = __chkstk_darwin(v129);
        v107 = v276;
        *(&v249 - 2) = v131;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 3:
        v136 = v83[21];
        if (qword_101694468 != -1)
        {
          swift_once();
        }

        v137 = sub_1000076D4(v283, qword_10177A518);
        v138 = *(v136 + 16);
        v139 = __chkstk_darwin(v137);
        v107 = v276;
        *(&v249 - 2) = v139;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 4:
        v116 = v83[21];
        if (qword_101694EB0 != -1)
        {
          swift_once();
        }

        v117 = sub_1000076D4(v283, qword_10177C0C0);
        v118 = *(v116 + 16);
        v119 = __chkstk_darwin(v117);
        v107 = v276;
        *(&v249 - 2) = v119;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 5:
        v147 = v83[21];
        if (qword_1016947A0 != -1)
        {
          swift_once();
        }

        v148 = sub_1000076D4(v283, qword_10177AEC8);
        v149 = *(v147 + 16);
        v150 = __chkstk_darwin(v148);
        v107 = v276;
        *(&v249 - 2) = v150;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 6:
        v155 = v83[21];
        if (qword_101694E08 != -1)
        {
          swift_once();
        }

        v156 = sub_1000076D4(v283, qword_10177BF38);
        v157 = *(v155 + 16);
        v158 = __chkstk_darwin(v156);
        v107 = v276;
        *(&v249 - 2) = v158;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 7:
        v140 = v83[21];
        if (qword_1016954B8 != -1)
        {
          swift_once();
        }

        v141 = sub_1000076D4(v283, qword_10177CDB8);
        v142 = *(v140 + 16);
        v143 = __chkstk_darwin(v141);
        v107 = v276;
        *(&v249 - 2) = v143;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 8:
        v163 = v83[21];
        if (qword_101694F88 != -1)
        {
          swift_once();
        }

        v164 = sub_1000076D4(v283, qword_10177C268);
        v165 = *(v163 + 16);
        v166 = __chkstk_darwin(v164);
        v107 = v276;
        *(&v249 - 2) = v166;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 9:
        v124 = v83[21];
        if (qword_101694EF8 != -1)
        {
          swift_once();
        }

        v125 = sub_1000076D4(v283, qword_10177C140);
        v126 = *(v124 + 16);
        v127 = __chkstk_darwin(v125);
        v107 = v276;
        *(&v249 - 2) = v127;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 10:
        v159 = v83[21];
        if (qword_101694460 != -1)
        {
          swift_once();
        }

        v160 = sub_1000076D4(v283, qword_10177A500);
        v161 = *(v159 + 16);
        v162 = __chkstk_darwin(v160);
        v107 = v276;
        *(&v249 - 2) = v162;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 11:
        v112 = v83[21];
        if (qword_101695268 != -1)
        {
          swift_once();
        }

        v113 = sub_1000076D4(v283, qword_10177C680);
        v114 = *(v112 + 16);
        v115 = __chkstk_darwin(v113);
        v107 = v276;
        *(&v249 - 2) = v115;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 12:
        v120 = v83[21];
        if (qword_101694568 != -1)
        {
          swift_once();
        }

        v121 = sub_1000076D4(v283, qword_10177A918);
        v122 = *(v120 + 16);
        v123 = __chkstk_darwin(v121);
        v107 = v276;
        *(&v249 - 2) = v123;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 13:
        v151 = v83[21];
        if (qword_101694F30 != -1)
        {
          swift_once();
        }

        v152 = sub_1000076D4(v283, qword_10177C1D0);
        v153 = *(v151 + 16);
        v154 = __chkstk_darwin(v152);
        v107 = v276;
        *(&v249 - 2) = v154;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 14:
        v108 = v83[21];
        if (qword_101694EB8 != -1)
        {
          swift_once();
        }

        v109 = sub_1000076D4(v283, qword_10177C0D8);
        v110 = *(v108 + 16);
        v111 = __chkstk_darwin(v109);
        v107 = v276;
        *(&v249 - 2) = v111;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 15:
        v132 = v83[21];
        if (qword_101694680 != -1)
        {
          swift_once();
        }

        v133 = sub_1000076D4(v283, qword_10177AC60);
        v134 = *(v132 + 16);
        v135 = __chkstk_darwin(v133);
        v107 = v276;
        *(&v249 - 2) = v135;
        *(&v249 - 1) = v107;
        goto LABEL_75;
      case 16:
        v103 = v83[21];
        if (qword_101694E90 != -1)
        {
          swift_once();
        }

        v104 = sub_1000076D4(v283, qword_10177C090);
        v105 = *(v103 + 16);
        v106 = __chkstk_darwin(v104);
        v107 = v276;
        *(&v249 - 2) = v106;
        *(&v249 - 1) = v107;
LABEL_75:
        OS_dispatch_queue.sync<A>(execute:)();
        v167 = v290;
        goto LABEL_76;
      default:
        v282 = v72;
        v100 = v261;
        sub_100AA33AC(v276, v261);
        v101 = v260;
        if ((*(v259 + 48))(v100, 1, v260) == 1)
        {
          sub_10000B3A8(v100, &unk_1016A9A20, &qword_10138B280);
          v102 = v284;
        }

        else
        {
          v171 = v255;
          sub_10013A49C(v100, v255, type metadata accessor for OwnedBeaconRecord);
          *(&v291 + 1) = v101;
          v292 = sub_1000248A8(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
          v172 = sub_1000280DC(&v290);
          sub_10013A81C(v171, v172, type metadata accessor for OwnedBeaconRecord);
          v173 = *(&v291 + 1);
          v174 = v292;
          sub_1000035D0(&v290, *(&v291 + 1));
          v175 = v268;
          (*(*(*(v174 + 8) + 8) + 32))(v173);
          v176 = type metadata accessor for Transaction();
          __chkstk_darwin(v176);
          *(&v249 - 4) = v175;
          *(&v249 - 3) = v83;
          *(&v249 - 2) = &v290;
          *(&v249 - 4) = 256;
          static Transaction.named<A>(_:with:)();
          sub_10013A660(v171, type metadata accessor for OwnedBeaconRecord);
          v102 = v284;
          (*(v284 + 8))(v175, v90);
          sub_100007BAC(&v290);
        }

        v177 = v283;
        v178 = v264;
        v179 = v83[21];
        if (qword_101694E78 != -1)
        {
          v248 = v283;
          swift_once();
          v177 = v248;
        }

        v180 = sub_1000076D4(v177, qword_10177C070);
        v181 = *(v179 + 16);
        v182 = __chkstk_darwin(v180);
        v183 = v276;
        *(&v249 - 2) = v182;
        *(&v249 - 1) = v183;
        OS_dispatch_queue.sync<A>(execute:)();
        LODWORD(v279) = v290;
        v184 = v271;
        (*(v102 + 16))(v271, v183, v90);
        v283 = *(v102 + 56);
        (v283)(v184, 0, 1, v90);
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v185 = *(qword_10177B348 + 40);
        v281 = qword_10177B348;
        OS_dispatch_queue.sync<A>(execute:)();
        v186 = v290;
        KeyPath = swift_getKeyPath();
        v188 = v270;
        sub_101075400(KeyPath, v186, v270);

        v189 = *(v178 + 48);
        v190 = v273;
        sub_1000D2A70(v184, v273, &qword_1016980D0, &unk_10138F3B0);
        sub_1000D2A70(v188, v190 + v189, &qword_1016980D0, &unk_10138F3B0);
        v191 = v250;
        if (v250(v190, 1, v90) == 1)
        {
          sub_10000B3A8(v188, &qword_1016980D0, &unk_10138F3B0);
          v190 = v273;
          sub_10000B3A8(v184, &qword_1016980D0, &unk_10138F3B0);
          v192 = v191(v190 + v189, 1, v90);
          v107 = v276;
          if (v192 == 1)
          {
            sub_10000B3A8(v190, &qword_1016980D0, &unk_10138F3B0);
LABEL_109:
            v240 = v249;
            v241 = Logger.logObject.getter();
            v242 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v241, v242))
            {
              v243 = swift_slowAlloc();
              v244 = swift_slowAlloc();
              *v243 = 138412290;
              *(v243 + 4) = v240;
              *v244 = v240;
              v245 = v240;
              _os_log_impl(&_mh_execute_header, v241, v242, "Deleted current self-beacon OwnedBeaconRecord %@", v243, 0xCu);
              sub_10000B3A8(v244, &qword_10169BB30, &unk_10138B3C0);

              v83 = v269;
            }

            v246 = v254;
            v90 = v272;
            (v283)(v254, 1, 1, v272);
            sub_1000034A4();
            v247 = v253;
            sub_1000D2A70(v246, v253, &qword_1016980D0, &unk_10138F3B0);
            sub_100EEAE98(v247);

            v234 = v246;
            v232 = &qword_1016980D0;
            v233 = &unk_10138F3B0;
            goto LABEL_112;
          }

LABEL_105:
          v232 = &qword_1016AF880;
          v233 = &unk_10138CE20;
          v234 = v190;
LABEL_112:
          sub_10000B3A8(v234, v232, v233);
          v68 = v285;
          goto LABEL_113;
        }

        v231 = v257;
        sub_1000D2A70(v190, v257, &qword_1016980D0, &unk_10138F3B0);
        if (v191(v190 + v189, 1, v90) == 1)
        {
          sub_10000B3A8(v270, &qword_1016980D0, &unk_10138F3B0);
          sub_10000B3A8(v271, &qword_1016980D0, &unk_10138F3B0);
          (*(v284 + 8))(v231, v90);
          v107 = v276;
          goto LABEL_105;
        }

        v235 = (v190 + v189);
        v236 = v268;
        v251(v268, v235, v90);
        sub_1000248A8(&qword_1016984A0, &type metadata accessor for UUID);
        v237 = dispatch thunk of static Equatable.== infix(_:_:)();
        v238 = v90;
        v239 = *(v284 + 8);
        v239(v236, v238);
        sub_10000B3A8(v270, &qword_1016980D0, &unk_10138F3B0);
        sub_10000B3A8(v271, &qword_1016980D0, &unk_10138F3B0);
        v239(v231, v238);
        v83 = v269;
        sub_10000B3A8(v190, &qword_1016980D0, &unk_10138F3B0);
        v107 = v276;
        if (v237)
        {
          goto LABEL_109;
        }

        v68 = v285;
        v90 = v272;
LABEL_113:
        v167 = v279;
LABEL_76:
        sub_100A8375C();
        sub_1000D2A70(&v293, &v287, &qword_101697930, &qword_10138C9C8);
        if (v288)
        {
          sub_10000A748(&v287, &v290);
          v168 = *(v83 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
          PassthroughSubject.send(_:)();
          sub_100007BAC(&v290);
          if (v167)
          {
LABEL_78:
            sub_10000B3A8(&v293, &qword_101697930, &qword_10138C9C8);
            (*(v284 + 8))(v107, v90);
LABEL_79:

            return v68;
          }
        }

        else
        {
          sub_10000B3A8(&v287, &qword_101697930, &qword_10138C9C8);
          if (v167)
          {
            goto LABEL_78;
          }
        }

        sub_100139CA0();
        v68 = swift_allocError();
        *v170 = 11;
        sub_10000B3A8(&v293, &qword_101697930, &qword_10138C9C8);
        (*(v284 + 8))(v107, v90);
        return v68;
    }
  }

  sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_1000076D4(v61, qword_10177BA08);
  v62 = a1;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138543362;
    *(v65 + 4) = v62;
    *v66 = v62;
    v67 = v62;
    _os_log_impl(&_mh_execute_header, v63, v64, "Invalid record identifier beaconRecord: %{public}@", v65, 0xCu);
    sub_10000B3A8(v66, &qword_10169BB30, &unk_10138B3C0);
  }

  sub_100139CA0();
  v68 = swift_allocError();
  *v69 = 12;
  return v68;
}

uint64_t sub_100135D88(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharingCircleSecret();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v178 = *(v8 - 8);
  v9 = *(v178 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v11 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v155 - v12;
  v170 = type metadata accessor for MemberSharingCircle();
  v175 = *(v170 - 8);
  v14 = *(v175 + 64);
  v15 = __chkstk_darwin(v170);
  v177 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v16;
  __chkstk_darwin(v15);
  v18 = (&v155 - v17);
  v19 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v172 = *(v19 - 8);
  v20 = *(v172 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v174 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v22;
  __chkstk_darwin(v21);
  v180 = &v155 - v23;
  v167 = type metadata accessor for OwnerSharingCircle();
  v168 = *(v167 - 8);
  v24 = *(v168 + 64);
  v25 = __chkstk_darwin(v167);
  v171 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v26;
  __chkstk_darwin(v25);
  v195 = (&v155 - v27);
  v28 = type metadata accessor for MemberPeerTrust();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v192 = (&v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for OwnerPeerTrust();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v191 = (&v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for OwnedDeviceKeyRecord();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v190 = (&v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for KeyAlignmentRecord();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v189 = (&v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for LostModeRecord();
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v188 = (&v155 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for SafeLocation();
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v187 = (&v155 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for LeashRecord();
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v186 = (&v155 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  found = type metadata accessor for NotifyWhenFoundRecord();
  v50 = *(*(found - 8) + 64);
  __chkstk_darwin(found - 8);
  v185 = (&v155 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for BeaconNamingRecord();
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v184 = (&v155 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for ShareRecord();
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8);
  v183 = (&v155 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for OwnedBeaconGroup(0);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58 - 8);
  v182 = (&v155 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v62 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61 - 8);
  v193 = &v155 - v63;
  v64 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v164 = *(v64 - 8);
  v65 = *(v164 + 64);
  v66 = __chkstk_darwin(v64 - 8);
  v166 = &v155 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v67;
  __chkstk_darwin(v66);
  v69 = &v155 - v68;
  v160 = type metadata accessor for SharedBeaconRecord(0);
  v161 = *(v160 - 8);
  v70 = *(v161 + 64);
  v71 = __chkstk_darwin(v160);
  v163 = &v155 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v72;
  __chkstk_darwin(v71);
  v194 = &v155 - v73;
  v74 = type metadata accessor for OwnedBeaconRecord();
  v75 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74 - 8);
  v181 = (&v155 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for Logger();
  v78 = sub_1000076D4(v77, qword_10177BA08);
  v79 = a1;
  v196 = v78;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  v82 = os_log_type_enabled(v80, v81);
  v179 = v69;
  if (v82)
  {
    v83 = swift_slowAlloc();
    v156 = v81;
    v84 = v83;
    v155 = swift_slowAlloc();
    v197 = v155;
    *v84 = 136315138;
    v85 = v79;
    v159 = v79;
    v86 = v85;
    v87 = v9;
    v88 = v13;
    v89 = v2;
    v90 = [v85 description];
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v157 = v7;
    v92 = v91;
    v158 = v11;
    v93 = v18;
    v95 = v94;

    v79 = v159;
    v2 = v89;
    v13 = v88;
    v9 = v87;
    v96 = sub_1000136BC(v92, v95, &v197);
    v18 = v93;
    v11 = v158;

    *(v84 + 4) = v96;
    v7 = v157;
    _os_log_impl(&_mh_execute_header, v80, v156, "processBeaconZoneRecordUpdate: %s", v84, 0xCu);
    sub_100007BAC(v155);
  }

  v97 = CKRecord.recordType.getter();
  v99 = sub_1008DA998(v97, v98);

  switch(v99)
  {
    case 1:
      v129 = v79;
      v130 = v194;
      sub_1011D5D0C(v129, v194);
      v131 = v179;
      sub_100AA5198(&v130[*(v160 + 20)], v179);
      v132 = type metadata accessor for TaskPriority();
      v133 = v193;
      (*(*(v132 - 8) + 56))(v193, 1, 1, v132);
      v134 = v166;
      sub_1000D2A70(v131, v166, &unk_101698C30, &unk_101392630);
      v135 = v163;
      sub_10013A81C(v130, v163, type metadata accessor for SharedBeaconRecord);
      v136 = (*(v164 + 80) + 32) & ~*(v164 + 80);
      v137 = (v165 + *(v161 + 80) + v136) & ~*(v161 + 80);
      v138 = swift_allocObject();
      *(v138 + 16) = 0;
      *(v138 + 24) = 0;
      sub_1000D2AD8(v134, v138 + v136, &unk_101698C30, &unk_101392630);
      sub_10013A49C(v135, v138 + v137, type metadata accessor for SharedBeaconRecord);
      v101 = v194;
      sub_10025EDD4(0, 0, v133, &unk_10138CA20, v138);

      sub_100137BA8(*(v2 + 168), type metadata accessor for SharedBeaconRecord, sub_1009F1368, type metadata accessor for SharedBeaconRecord, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v179, &unk_101698C30, &unk_101392630);
      v153 = type metadata accessor for SharedBeaconRecord;
      goto LABEL_28;
    case 2:
      v118 = v79;
      v101 = v182;
      sub_100518A90(v118, v182);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnedBeaconGroup, sub_1009F10FC, type metadata accessor for OwnedBeaconGroup, type metadata accessor for OwnedBeaconGroup);
      v153 = type metadata accessor for OwnedBeaconGroup;
      goto LABEL_28;
    case 3:
      v127 = v79;
      v101 = v183;
      sub_1001547CC(v127, v183);
      sub_100137BA8(*(v2 + 168), type metadata accessor for ShareRecord, sub_1009F0E90, type metadata accessor for ShareRecord, type metadata accessor for ShareRecord);
      v153 = type metadata accessor for ShareRecord;
      goto LABEL_28;
    case 4:
      v115 = v79;
      v101 = v184;
      sub_100DE08D0(v115, v184);
      sub_100137BA8(*(v2 + 168), type metadata accessor for BeaconNamingRecord, sub_1009F0C24, type metadata accessor for BeaconNamingRecord, type metadata accessor for BeaconNamingRecord);
      v153 = type metadata accessor for BeaconNamingRecord;
      goto LABEL_28;
    case 5:
      v144 = v79;
      v101 = v185;
      sub_1004EBE10(v144, v185);
      sub_100137BA8(*(v2 + 168), type metadata accessor for NotifyWhenFoundRecord, sub_1009F09B8, type metadata accessor for NotifyWhenFoundRecord, type metadata accessor for NotifyWhenFoundRecord);
      v153 = type metadata accessor for NotifyWhenFoundRecord;
      goto LABEL_28;
    case 6:
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        _os_log_impl(&_mh_execute_header, v146, v147, "Ignoring BeaconEstimatedLocation record change.", v148, 2u);
      }

      goto LABEL_30;
    case 7:
      v128 = v79;
      v101 = v186;
      sub_101251FDC(v128, v186);
      sub_100137BA8(*(v2 + 168), type metadata accessor for LeashRecord, sub_1009F074C, type metadata accessor for LeashRecord, type metadata accessor for LeashRecord);
      v153 = type metadata accessor for LeashRecord;
      goto LABEL_28;
    case 8:
      v150 = v79;
      v101 = v187;
      sub_100EE51B8(v150, v187);
      sub_100137BA8(*(v2 + 168), type metadata accessor for SafeLocation, sub_1009F04E0, type metadata accessor for SafeLocation, type metadata accessor for SafeLocation);
      v153 = type metadata accessor for SafeLocation;
      goto LABEL_28;
    case 9:
      v117 = v79;
      v101 = v188;
      sub_100E7815C(v117, v188);
      sub_100137BA8(*(v2 + 168), type metadata accessor for LostModeRecord, sub_1009F0274, type metadata accessor for LostModeRecord, type metadata accessor for LostModeRecord);
      v153 = type metadata accessor for LostModeRecord;
      goto LABEL_28;
    case 10:
      v149 = v79;
      v101 = v189;
      sub_100150FC8(v149, v189);
      sub_100137BA8(*(v2 + 168), type metadata accessor for KeyAlignmentRecord, sub_1009F0008, type metadata accessor for KeyAlignmentRecord, type metadata accessor for KeyAlignmentRecord);
      v153 = type metadata accessor for KeyAlignmentRecord;
      goto LABEL_28;
    case 11:
      v114 = v79;
      v101 = v190;
      sub_101103E74(v114, v190);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnedDeviceKeyRecord, sub_1009EFD9C, type metadata accessor for OwnedDeviceKeyRecord, type metadata accessor for OwnedDeviceKeyRecord);
      v153 = type metadata accessor for OwnedDeviceKeyRecord;
      goto LABEL_28;
    case 12:
      v116 = v79;
      v101 = v191;
      sub_100310ECC(v116, v191);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnerPeerTrust, sub_1009EFB30, type metadata accessor for OwnerPeerTrust, type metadata accessor for OwnerPeerTrust);
      v153 = type metadata accessor for OwnerPeerTrust;
      goto LABEL_28;
    case 13:
      v145 = v79;
      v101 = v192;
      sub_100E939A4(v145, v192);
      sub_100137BA8(*(v2 + 168), type metadata accessor for MemberPeerTrust, sub_1009EF8C4, type metadata accessor for MemberPeerTrust, type metadata accessor for MemberPeerTrust);
      v153 = type metadata accessor for MemberPeerTrust;
      goto LABEL_28;
    case 14:
      v102 = v79;
      v103 = v195;
      sub_100E0F270(v102, v195);
      v104 = v103 + *(v167 + 20);
      v105 = v180;
      sub_100AB2B14();
      v106 = type metadata accessor for TaskPriority();
      v107 = v193;
      (*(*(v106 - 8) + 56))(v193, 1, 1, v106);
      v108 = v174;
      sub_1000D2A70(v105, v174, &unk_1016AFA00, &qword_10138C4D0);
      v109 = v171;
      sub_10013A81C(v195, v171, type metadata accessor for OwnerSharingCircle);
      v110 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v111 = (v173 + *(v168 + 80) + v110) & ~*(v168 + 80);
      v112 = swift_allocObject();
      *(v112 + 16) = 0;
      *(v112 + 24) = 0;
      v113 = v108;
      v101 = v195;
      sub_1000D2AD8(v113, v112 + v110, &unk_1016AFA00, &qword_10138C4D0);
      sub_10013A49C(v109, v112 + v111, type metadata accessor for OwnerSharingCircle);
      sub_10025EDD4(0, 0, v107, &unk_10138CA10, v112);

      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnerSharingCircle, sub_1009EF658, type metadata accessor for OwnerSharingCircle, type metadata accessor for OwnerSharingCircle);
      sub_10000B3A8(v180, &unk_1016AFA00, &qword_10138C4D0);
      v153 = type metadata accessor for OwnerSharingCircle;
      goto LABEL_28;
    case 15:
      sub_1003268EC(v79, v18);
      v119 = v18 + *(v170 + 20);
      sub_100AB2C88();
      v120 = type metadata accessor for TaskPriority();
      v121 = v193;
      (*(*(v120 - 8) + 56))(v193, 1, 1, v120);
      sub_1000D2A70(v13, v11, &unk_101698BC0, &qword_10138C440);
      v195 = type metadata accessor for MemberSharingCircle;
      v122 = v177;
      sub_10013A81C(v18, v177, type metadata accessor for MemberSharingCircle);
      v123 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v124 = (v9 + *(v175 + 80) + v123) & ~*(v175 + 80);
      v125 = swift_allocObject();
      v194 = v13;
      v126 = v125;
      *(v125 + 16) = 0;
      *(v125 + 24) = 0;
      sub_1000D2AD8(v11, v125 + v123, &unk_101698BC0, &qword_10138C440);
      sub_10013A49C(v122, v126 + v124, type metadata accessor for MemberSharingCircle);
      sub_10025EDD4(0, 0, v121, &unk_10138CA00, v126);

      sub_100137BA8(*(v2 + 168), type metadata accessor for MemberSharingCircle, sub_1009EF3EC, v195, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v194, &unk_101698BC0, &qword_10138C440);
      v151 = type metadata accessor for MemberSharingCircle;
      v152 = v18;
      goto LABEL_29;
    case 16:
      sub_100D69EDC(v79, v7);
      sub_100137BA8(*(v2 + 168), type metadata accessor for SharingCircleSecret, sub_1009EF180, type metadata accessor for SharingCircleSecret, type metadata accessor for SharingCircleSecret);
      v151 = type metadata accessor for SharingCircleSecret;
      v152 = v7;
      goto LABEL_29;
    case 17:
      static os_log_type_t.fault.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v139 = swift_allocObject();
      *(v139 + 16) = xmmword_10138BBE0;
      v140 = CKRecord.recordType.getter();
      v142 = v141;
      *(v139 + 56) = &type metadata for String;
      *(v139 + 64) = sub_100008C00();
      *(v139 + 32) = v140;
      *(v139 + 40) = v142;
      *(v139 + 96) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      *(v139 + 104) = sub_10013A2D8();
      *(v139 + 72) = v79;
      v143 = v79;
      os_log(_:dso:log:_:_:)();

      return CKRecord.recordType.getter();
    default:
      v100 = v79;
      v101 = v181;
      sub_100D5E184(v100, v181);
      sub_100137BA8(*(v2 + 168), type metadata accessor for OwnedBeaconRecord, sub_1009F15D4, type metadata accessor for OwnedBeaconRecord, type metadata accessor for OwnedBeaconRecord);
      v153 = type metadata accessor for OwnedBeaconRecord;
LABEL_28:
      v151 = v153;
      v152 = v101;
LABEL_29:
      sub_10013A660(v152, v151);
LABEL_30:
      sub_100A8375C();
      return CKRecord.recordType.getter();
  }
}

uint64_t sub_100137944(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BA08);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cloud data purged, attempting to clear local data", v14, 2u);
  }

  v15 = *(v3 + 168);
  v16 = *(v15 + 16);
  *v10 = v16;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v16)
  {
    v19 = dispatch_group_create();
    dispatch_group_enter(v19);

    v20 = v19;
    sub_1010101E8(a2 & 1, a1, v15, v20);

    v21 = *(v3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    return sub_100A8306C(6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100137BA8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v10 = a2(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  a3(v5);
  if (!v6)
  {
    v26[1] = 0;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    sub_10013A81C(v5, v16, a4);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      sub_10013A81C(v16, v14, a4);
      v22 = String.init<A>(describing:)();
      v24 = v23;
      sub_10013A660(v16, a5);
      v25 = sub_1000136BC(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "New record: %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {

      sub_10013A660(v16, a5);
    }
  }
}

void sub_100137DEC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_100B2E5D0(v2, v13, *(v12 + 8));
  if (!v3)
  {
    v23[1] = 0;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BA08);
    v15 = *(v5 + 16);
    v15(v11, v2, a2);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v23[0] = swift_slowAlloc();
      v24 = v23[0];
      *v18 = 136315138;
      v15(v9, v11, a2);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      (*(v5 + 8))(v11, a2);
      v22 = sub_1000136BC(v19, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "New record: %s", v18, 0xCu);
      sub_100007BAC(v23[0]);
    }

    else
    {

      (*(v5 + 8))(v11, a2);
    }
  }
}

uint64_t sub_100138070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_1000BC4D4(&qword_101697948, &qword_10138CA40) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  v5[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v5[13] = v10;
  *v10 = v5;
  v10[1] = sub_100138178;

  return daemon.getter();
}

uint64_t sub_100138178(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_1000248A8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000248A8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v6 = v12;
  v6[1] = sub_100138354;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100138354(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;

  v8 = *(v4 + 112);
  if (v1)
  {

    v9 = sub_10013A958;
    v10 = 0;
  }

  else
  {

    *(v5 + 128) = a1;
    v9 = sub_1001384B4;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1001384B4()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[11] + 48);
  sub_1000D2A70(v0[8], v2, &unk_101698BC0, &qword_10138C440);
  sub_10013A81C(v4, v2 + v5, type metadata accessor for MemberSharingCircle);
  swift_beginAccess();
  v6 = *(*(v1 + 208) + 16);
  swift_beginAccess();
  sub_1000D2AD8(v2, v3, &unk_1016B1630, &qword_10138CA48);
  sub_100A05120(v6, v6, v3);
  swift_endAccess();

  return _swift_task_switch(sub_10013A95C, 0, 0);
}

uint64_t sub_1001385D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_1000BC4D4(&qword_101697940, &qword_10138CA30) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  v5[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v5[13] = v10;
  *v10 = v5;
  v10[1] = sub_1001386E0;

  return daemon.getter();
}

uint64_t sub_1001386E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_1000248A8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000248A8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v6 = v12;
  v6[1] = sub_1001388BC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1001388BC(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;

  v8 = *(v4 + 112);
  if (v1)
  {

    v9 = sub_10013A958;
    v10 = 0;
  }

  else
  {

    *(v5 + 128) = a1;
    v9 = sub_100138A1C;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100138A1C()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[11] + 48);
  sub_1000D2A70(v0[8], v2, &unk_1016AFA00, &qword_10138C4D0);
  sub_10013A81C(v4, v2 + v5, type metadata accessor for OwnerSharingCircle);
  swift_beginAccess();
  v6 = *(*(v1 + 224) + 16);
  swift_beginAccess();
  sub_1000D2AD8(v2, v3, &unk_1016B1610, &qword_10138CA38);
  sub_100A05214(v6, v6, v3);
  swift_endAccess();

  return _swift_task_switch(sub_10013A95C, 0, 0);
}

uint64_t sub_100138B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_1000BC4D4(&qword_101697938, &qword_10138CA28) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  v5[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v5[13] = v10;
  *v10 = v5;
  v10[1] = sub_100138C48;

  return daemon.getter();
}

uint64_t sub_100138C48(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ItemSharingNotificationsService();
  v9 = sub_1000248A8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1000248A8(&qword_1016B1160, type metadata accessor for ItemSharingNotificationsService);
  *v6 = v12;
  v6[1] = sub_100138E24;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100138E24(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 120);
  v7 = *v2;

  v8 = *(v4 + 112);
  if (v1)
  {

    v9 = sub_100138F84;
    v10 = 0;
  }

  else
  {

    *(v5 + 128) = a1;
    v9 = sub_1001390AC;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100138F84()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BAA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ItemSharingNotificationsService available!", v4, 2u);
  }

  v5 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001390AC()
{
  v1 = v0[16];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[11] + 48);
  sub_1000D2A70(v0[8], v2, &unk_101698C30, &unk_101392630);
  sub_10013A81C(v4, v2 + v5, type metadata accessor for SharedBeaconRecord);
  swift_beginAccess();
  v6 = *(*(v1 + 216) + 16);
  swift_beginAccess();
  sub_1000D2AD8(v2, v3, &unk_1016B15C0, &unk_1013D7870);
  sub_100A05308(v6, v6, v3);
  swift_endAccess();

  return _swift_task_switch(sub_1001391D0, 0, 0);
}

uint64_t sub_1001391D0()
{
  v1 = v0[16];

  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

void sub_100139244(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  __chkstk_darwin(v4);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v35);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BA08);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = a1;
    aBlock[0] = v20;
    *v19 = 136446210;
    type metadata accessor for CloudKitCoordinator();

    v21 = String.init<A>(describing:)();
    v23 = sub_1000136BC(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "CloudKitCoordinator available again after reset: %{public}s", v19, 0xCu);
    sub_100007BAC(v20);

    v10 = v32;
  }

  v24 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler);
  if (v24)
  {
    v25 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_resetHandler + 8);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);

    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v14, v10);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = v25;
    aBlock[4] = sub_10013A884;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10160F7A8;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_1000248A8(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v29 = v34;
    v30 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    sub_1000BB27C(v24);
    (*(v36 + 8))(v29, v30);
    (*(v33 + 8))(v9, v35);
  }
}

uint64_t sub_100139770(uint64_t a1)
{
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BA08);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "databaseUpdated recordsDeleted: %ld.", v5, 0xCu);
  }

  else
  {
  }

  v6 = &_swiftEmptySetSingleton;
  v31 = &_swiftEmptySetSingleton;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
    v8 = (a1 + 48);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v8 - 2);

      v12 = objc_autoreleasePoolPush();
      v13 = [v11 zoneID];
      if (qword_101694C00 != -1)
      {
        swift_once();
      }

      v14 = qword_10177BA50;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = sub_100133718(v11, v9, v10);
        v18 = v17;
        v20 = v19;

        if (v20)
        {
          sub_100139C90(v16, v18, 1);
        }

        else
        {
          sub_100DE9538(&v30, v16, v18);
        }
      }

      else
      {

        v21 = v11;
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138543362;
          *(v24 + 4) = v21;
          *v25 = v21;
          v26 = v21;
          _os_log_impl(&_mh_execute_header, v22, v23, "Ignoring delete record from unknown zone: %{public}@", v24, 0xCu);
          sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
        }
      }

      objc_autoreleasePoolPop(v12);

      v8 += 3;
      --v7;
    }

    while (v7);
    v27 = *(v29 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_100A8306C(7);
    v6 = v31;
  }

  if (sub_10111EACC(0x61636F4C65666153, 0xEC0000006E6F6974, v6))
  {
    sub_100A83364(0);
    sub_100A8338C();
  }

  else if (sub_10111EACC(0x636552687361654CLL, 0xEB0000000064726FLL, v6))
  {
    sub_100A83364(0);
  }

  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  if (sub_10111EACC(qword_10177C060, *algn_10177C068, v6) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC20, v6) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC40, v6))
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_100139C90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100139CA0()
{
  result = qword_101697928;
  if (!qword_101697928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697928);
  }

  return result;
}

uint64_t sub_100139D50(unint64_t a1)
{
  v37 = &_swiftEmptySetSingleton;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BA08);

  v4 = Logger.logObject.getter();
  LOBYTE(v5) = static os_log_type_t.default.getter();
  v6 = a1 >> 62;
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_8;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v6)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v1 + 4) = i;

    _os_log_impl(&_mh_execute_header, v4, v5, "databaseUpdated recordsChanged: processed %ld change records.", v1, 0xCu);

LABEL_8:
    if (v6)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v5)
    {
      v31 = &_swiftEmptySetSingleton;
      goto LABEL_28;
    }

    v8 = sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
    if (v5 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  v9 = v8;
  v10 = 0;
  v11 = a1 & 0xC000000000000001;
  v33 = a1 & 0xC000000000000001;
  v34 = a1;
  do
  {
    if (v11)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(a1 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    v15 = [v13 recordID];
    v16 = [v15 zoneID];

    if (qword_101694C00 != -1)
    {
      swift_once();
    }

    v17 = qword_10177BA50;
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      v19 = sub_100135D88(v13);
      if (v21)
      {
        sub_100139C90(v19, v20, 1);
      }

      else
      {
        sub_100DE9538(&v36, v19, v20);
      }
    }

    else
    {
      v22 = v13;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = v5;
        v27 = v9;
        v28 = swift_slowAlloc();
        *v25 = 138543362;
        v29 = [v22 recordID];
        *(v25 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring changed record from unknown zone: %{public}@", v25, 0xCu);
        sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
        v9 = v27;
        v5 = v26;
        v11 = v33;

        a1 = v34;
      }
    }

    ++v10;
    objc_autoreleasePoolPop(v14);
  }

  while (v5 != v10);
  v30 = *(v35 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(7);
  v31 = v37;
LABEL_28:
  if (sub_10111EACC(0x61636F4C65666153, 0xEC0000006E6F6974, v31))
  {
    sub_100A83364(0);
    sub_100A8338C();
  }

  else if (sub_10111EACC(0x636552687361654CLL, 0xEB0000000064726FLL, v31))
  {
    sub_100A83364(0);
  }

  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  if (sub_10111EACC(qword_10177C060, *algn_10177C068, v31) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC20, v31) & 1) != 0 || (sub_10111EACC(0xD000000000000012, 0x800000010134BC40, v31))
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }
}

unint64_t sub_10013A2D8()
{
  result = qword_101697F90;
  if (!qword_101697F90)
  {
    sub_100008BB8(255, &qword_101698150, CKRecord_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F90);
  }

  return result;
}

uint64_t sub_10013A340(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MemberSharingCircle() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100138070(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10013A49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013A504(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1001385D8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10013A660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013A6C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014650;

  return sub_100138B40(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10013A81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013A884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_10013A8AC()
{
  result = qword_1016A30C0;
  if (!qword_1016A30C0)
  {
    sub_1000BC580(&qword_101696AE0, qword_10138B3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A30C0);
  }

  return result;
}

uint64_t sub_10013A980()
{
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10013AAA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10013B98C(*a1);
  *a2 = result;
  return result;
}

void sub_10013AAD8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00554B53646574;
  v4 = 0x726F707075736E75;
  v5 = 0x8000000101347710;
  v6 = 0xD00000000000001CLL;
  v7 = 0xEC00000065636976;
  v8 = 0x6544654D41746F6ELL;
  if (v2 != 4)
  {
    v8 = 0x6F4E656369766564;
    v7 = 0xEE006573556E4974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001013476E0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001013476C0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10013AD54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return sub_10076B778(v2, v3);
}

void *sub_10013ADA8()
{
  v1 = v0;
  v2 = v0[8];
  v3 = v1[9];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 56);
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = v1[2];

  sub_100007BAC(v1 + 3);
  v7 = v1[8];
  swift_unknownObjectRelease();
  v8 = v1[10];

  v9 = v1[11];

  v10 = v1[12];

  return v1;
}

uint64_t sub_10013AE4C()
{
  sub_10013ADA8();

  return swift_deallocClassInstance();
}

uint64_t sub_10013AEA4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  return (*(v2 + 48))(ObjectType, v2);
}

void sub_10013AEF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 80);
  v5 = a3;
  CurrentValueSubject.send(_:)();
}

uint64_t sub_10013AF40()
{
  v1 = v0;
  v34 = sub_1000BC4D4(&qword_101697B48, &qword_10138CB98);
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v34);
  v5 = &v33 - v4;
  v6 = sub_1000BC4D4(&qword_101697B50, &qword_10138CBA0);
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = sub_1000BC4D4(&qword_101697B58, &qword_10138CBA8);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v37 = &v33 - v12;
  v13 = sub_1000BC4D4(&qword_101697B60, &unk_10138CBB0);
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v40 = &v33 - v15;
  v16 = v0[9];
  v17 = v0[8];
  ObjectType = swift_getObjectType();
  (*(v16 + 48))(ObjectType, v16);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177B780);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Starting Separation Monitoring support observer.", v22, 2u);
  }

  v43 = v1[13];
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10013BF2C;
  *(v23 + 24) = v1;

  sub_1000BC4D4(&unk_1016B2870, &qword_1013B1320);
  sub_1000041A4(&qword_101697B68, &unk_1016B2870, &qword_1013B1320);
  Publisher.map<A>(_:)();

  v33 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_1000041A4(&qword_101697B70, &qword_101697B48, &qword_10138CB98);
  v24 = v34;
  Publisher<>.removeDuplicates()();
  (*(v2 + 8))(v5, v24);
  v43 = v1[2];
  v44 = v1[10];
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000BC4D4(&qword_1016B2990, &qword_1013D37A0);
  sub_1000041A4(&qword_101697B78, &qword_101697B50, &qword_10138CBA0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B88, &qword_1016B2990, &qword_1013D37A0);
  v25 = v36;
  v26 = v37;
  Publisher.combineLatest<A, B>(_:_:)();
  (*(v35 + 8))(v9, v25);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10013BF64;
  *(v27 + 24) = v1;
  sub_1000041A4(&qword_101697B90, &qword_101697B58, &qword_10138CBA8);

  v28 = v39;
  v29 = v40;
  Publisher.map<A>(_:)();

  (*(v38 + 8))(v26, v28);
  v30 = v1[11];
  sub_1000BC4D4(&qword_101697B98, &unk_10138CBD0);
  sub_1000041A4(&qword_101697BA0, &qword_101697B60, &unk_10138CBB0);
  sub_1000041A4(&qword_101697BA8, &qword_101697B98, &unk_10138CBD0);
  v31 = v42;
  Publisher.subscribe<A>(_:)();
  (*(v41 + 8))(v29, v31);
  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_10013B6AC()
{
  sub_10013ADA8();
  v1 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SeparationMonitoringStateDecider.SeparationMonitoringPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SeparationMonitoringStateDecider.SeparationMonitoringPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10013B864(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10013B878(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t sub_10013B898(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10013B8B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013B90C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_10013B95C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_10013B98C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607B88, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10013B9D8()
{
  v0 = 0;
  sub_1000DF96C();
  v1 = StringProtocol.contains<A>(_:)();

  if ((v1 & 1) == 0)
  {
    v0 = 1;
    v2 = StringProtocol.contains<A>(_:)();

    if ((v2 & 1) == 0)
    {
      v0 = 2;
      v3 = StringProtocol.contains<A>(_:)();

      if ((v3 & 1) == 0)
      {
        v0 = 3;
        v4 = StringProtocol.contains<A>(_:)();

        if ((v4 & 1) == 0)
        {
          v5 = StringProtocol.contains<A>(_:)();

          if (v5)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_10013BD94(unsigned int a1)
{
  if (a1 < 3)
  {
    v2 = *(v1 + 80);
LABEL_10:
    v15 = 2;
    return CurrentValueSubject.send(_:)();
  }

  if (a1 - 3 > 1)
  {
    v4 = v1;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B780);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      type metadata accessor for CLAuthorizationStatus(0);
      v10 = String.init<A>(describing:)();
      v12 = sub_1000136BC(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unknown CLAuthorizationStatus value detected: %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v13 = *(v4 + 80);
    goto LABEL_10;
  }

  v3 = *(v1 + 80);
  v15 = 0;
  return CurrentValueSubject.send(_:)();
}

uint64_t sub_10013BF30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10013BF68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

void *sub_10013BFA8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for SystemVersionNumber();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v45 - v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v52 = (v10 + 48);
    v53 = v5;
    v50 = (v10 + 32);
    v51 = (v10 + 8);
    v14 = a1 + 32;
    result = _swiftEmptyArrayStorage;
    v48 = v12;
    v46 = a1 + 32;
    while (1)
    {
      v47 = result;
      v16 = (v14 + 160 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v18 = v16[7];
        v62 = v16[6];
        v63 = v18;
        v19 = v16[9];
        v64 = v16[8];
        v65 = v19;
        v20 = v16[3];
        v58 = v16[2];
        v59 = v20;
        v21 = v16[5];
        v60 = v16[4];
        v61 = v21;
        v22 = v16[1];
        v56 = *v16;
        v57 = v22;
        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_27;
        }

        sub_10013CD18(&v56, &v55);

        v23 = v53;
        SystemVersionNumber.init(string:)();
        if ((*v52)(v23, 1, v6) == 1)
        {
          sub_10013CD74(v23);
          goto LABEL_5;
        }

        (*v50)(v54, v23, v6);

        v24 = sub_10013B9D8();

        if (v24 > 2u)
        {
          if (v24 != 4)
          {
LABEL_15:
            (*v51)(v54, v6);
            goto LABEL_5;
          }
        }

        else if (v24 - 1 >= 2)
        {
          goto LABEL_15;
        }

        v25 = v6;
        v26 = v54;
        v27 = v49;
        SystemVersionNumber.init(stringLiteral:)();
        sub_10013CE30();
        v28 = dispatch thunk of static Comparable.< infix(_:_:)();
        v29 = *v51;
        v30 = v27;
        v12 = v48;
        (*v51)(v30, v25);
        v31 = v26;
        v6 = v25;
        v29(v31, v25);
        if ((v28 & 1) == 0)
        {
          break;
        }

LABEL_5:
        result = sub_10013CDDC(&v56);
        ++v17;
        v16 += 10;
        if (v13 == v12)
        {
          result = v47;
          goto LABEL_25;
        }
      }

      v32 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v32;
      if (isUniquelyReferenced_nonNull_native)
      {
        result = v32;
      }

      else
      {
        sub_101124390(0, v32[2] + 1, 1);
        result = v66;
      }

      v35 = result[2];
      v34 = result[3];
      if (v35 >= v34 >> 1)
      {
        sub_101124390((v34 > 1), v35 + 1, 1);
        result = v66;
      }

      result[2] = v35 + 1;
      v36 = &result[20 * v35];
      v37 = v57;
      v36[2] = v56;
      v36[3] = v37;
      v38 = v58;
      v39 = v59;
      v40 = v61;
      v36[6] = v60;
      v36[7] = v40;
      v36[4] = v38;
      v36[5] = v39;
      v41 = v62;
      v42 = v63;
      v43 = v65;
      v36[10] = v64;
      v36[11] = v43;
      v36[8] = v41;
      v36[9] = v42;
      v14 = v46;
      if (v13 == v12)
      {
        goto LABEL_25;
      }
    }
  }

  result = _swiftEmptyArrayStorage;
LABEL_25:
  v44 = result[2];

  return v44;
}

unint64_t sub_10013CCC4()
{
  result = qword_101697BC0;
  if (!qword_101697BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697BC0);
  }

  return result;
}

uint64_t sub_10013CD74(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697BC8, &qword_10138CBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013CE30()
{
  result = qword_101697BD0;
  if (!qword_101697BD0)
  {
    type metadata accessor for SystemVersionNumber();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697BD0);
  }

  return result;
}

unint64_t sub_10013CE9C()
{
  result = qword_101697BD8;
  if (!qword_101697BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697BD8);
  }

  return result;
}

uint64_t sub_10013D298(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v23 = result;
    v24 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_10001F280(v8, v28);
      v10 = v6(v28);
      if (v3)
      {
        sub_100007BAC(v28);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_10000A748(v28, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v9[2] + 1, 1);
          v9 = v29;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_100025B1C((v12 > 1), v13 + 1, 1);
        }

        v14 = v26;
        v15 = v27;
        v16 = sub_10015049C(v25, v26);
        v17 = *(*(v14 - 8) + 64);
        __chkstk_darwin(v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_1006252D4(v13, v19, &v29, v14, v15);
        result = sub_100007BAC(v25);
        v9 = v29;
        v6 = v23;
        v4 = v24;
        v5 = v22;
      }

      else
      {
        result = sub_100007BAC(v28);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_10013D5D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v7 < *(a3 + 16))
    {
      v14 = *(a3 + 16 * v7 + 32);
      sub_100017D5C(v14, *(&v14 + 1));
      v9 = v6(&v14);
      if (v3)
      {
        sub_100016590(v14, *(&v14 + 1));

        goto LABEL_15;
      }

      if (v9)
      {
        v13 = v14;
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1011244D8(0, v8[2] + 1, 1);
          v8 = v15;
        }

        v11 = v8[2];
        v10 = v8[3];
        v12 = v13;
        if (v11 >= v10 >> 1)
        {
          result = sub_1011244D8((v10 > 1), v11 + 1, 1);
          v12 = v13;
          v8 = v15;
        }

        v8[2] = v11 + 1;
        *&v8[2 * v11 + 4] = v12;
      }

      else
      {
        result = sub_100016590(v14, *(&v14 + 1));
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_10013D9A0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, uint64_t, uint64_t))
{
  v27 = a6;
  v6 = a5;
  v33 = a1;
  v34 = a2;
  v9 = sub_1000BC4D4(a4, a5);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v31 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v35 = &v27 - v14;
  v30 = *(a3 + 16);
  if (v30)
  {
    v15 = 0;
    v16 = _swiftEmptyArrayStorage;
    v28 = v6;
    v29 = a3;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v18 = *(v32 + 72);
      v19 = a3;
      v20 = a3 + v17 + v18 * v15;
      v21 = v35;
      sub_1000D2A70(v20, v35, a4, v6);
      v22 = v36;
      v23 = v33(v21);
      if (v22)
      {
        sub_10000B3A8(v35, a4, v6);

        return v16;
      }

      v36 = 0;
      if (v23)
      {
        sub_1000D2AD8(v35, v31, a4, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27(0, v16[2] + 1, 1);
          v16 = v37;
        }

        v26 = v16[2];
        v25 = v16[3];
        if (v26 >= v25 >> 1)
        {
          v27(v25 > 1, v26 + 1, 1);
          v16 = v37;
        }

        v16[2] = v26 + 1;
        v6 = v28;
        result = sub_1000D2AD8(v31, v16 + v17 + v26 * v18, a4, v28);
        a3 = v29;
      }

      else
      {
        result = sub_10000B3A8(v35, a4, v6);
        a3 = v19;
      }

      if (v30 == ++v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_14:

    return v16;
  }

  return result;
}

uint64_t sub_10013DCB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(BOOL, uint64_t, uint64_t))
{
  v7 = a3;
  v21 = *(a3 + 16);
  if (v21)
  {
    v10 = result;
    v11 = 0;
    v12 = a3 + 32;
    v13 = _swiftEmptyArrayStorage;
    v19 = result;
    while (v11 < *(v7 + 16))
    {
      sub_1000D2A70(v12, v26, a4, a5);
      v14 = v10(v26);
      if (v6)
      {
        sub_10000B3A8(v26, a4, a5);

        goto LABEL_15;
      }

      if (v14)
      {
        v22 = v26[0];
        v23 = v26[1];
        v24 = v26[2];
        v25 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        v28 = v13;
        if ((result & 1) == 0)
        {
          result = a6(0, v13[2] + 1, 1);
          v13 = v28;
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          result = a6(v15 > 1, v16 + 1, 1);
          v13 = v28;
        }

        v13[2] = v16 + 1;
        v17 = &v13[7 * v16];
        v17[10] = v25;
        *(v17 + 3) = v23;
        *(v17 + 4) = v24;
        *(v17 + 2) = v22;
        v7 = a3;
        v10 = v19;
      }

      else
      {
        result = sub_10000B3A8(v26, a4, a5);
      }

      ++v11;
      v12 += 56;
      if (v21 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_15:

    return v13;
  }

  return result;
}

void *sub_10013DEC8(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_10013E074(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_10001F280(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_100007BAC(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_10000A748(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101125580(0, v9[2] + 1, 1);
          v9 = v17;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_101125580((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        v9[2] = v13 + 1;
        result = sub_10000A748(v15, &v9[5 * v13 + 4]);
        v6 = v14;
      }

      else
      {
        result = sub_100007BAC(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_10013E228(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, uint64_t, uint64_t))
{
  v32 = a6;
  v43 = sub_1000BC4D4(a4, a5);
  v10 = *(*(v43 - 8) + 64);
  v11 = __chkstk_darwin(v43);
  v40 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v42 = &v32 - v15;
  v39 = *(a3 + 16);
  if (v39)
  {
    v16 = 0;
    v36 = (v14 + 8);
    v37 = (v14 + 32);
    v38 = v14 + 16;
    v41 = _swiftEmptyArrayStorage;
    v34 = a2;
    v35 = a3;
    v33 = a1;
    while (v16 < *(a3 + 16))
    {
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = *(v14 + 72);
      v19 = a3;
      v20 = a3 + v17 + v18 * v16;
      v21 = v14;
      v22 = a1;
      v23 = v42;
      (*(v14 + 16))(v42, v20, v43);
      v24 = v23;
      a1 = v22;
      v25 = v22(v24);
      if (v6)
      {
        (*v36)(v42, v43);
        v31 = v41;

        return v31;
      }

      if (v25)
      {
        v26 = *v37;
        (*v37)(v40, v42, v43);
        v27 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32(0, v27[2] + 1, 1);
          v27 = v44;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v32(v29 > 1, v30 + 1, 1);
          v27 = v44;
        }

        v27[2] = v30 + 1;
        v41 = v27;
        result = (v26)(v27 + v17 + v30 * v18, v40, v43);
        a3 = v35;
        a1 = v33;
      }

      else
      {
        result = (*v36)(v42, v43);
        a3 = v19;
      }

      ++v16;
      v14 = v21;
      if (v39 == v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
LABEL_14:

    return v41;
  }

  return result;
}

uint64_t sub_10013E510()
{
  v1 = *(v0 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_10013E5C8()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ServerConfigurationProvider();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_1009405D4();
    v6 = *(v2 + 64);
    *(v2 + 64) = v1;
  }

  return v1;
}

uint64_t sub_10013E63C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    type metadata accessor for UserDefaultsConfigurationProvider();
    swift_allocObject();
    v1 = sub_1011D4264();
    v3 = *(v2 + 72);
    *(v2 + 72) = v1;
  }

  return v1;
}

unint64_t sub_10013E6BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100150E20(*a1);
  *a2 = result;
  return result;
}

void sub_10013E6EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x73656C6F72;
  v7 = 0xEC00000073746C75;
  v8 = 0x6166654472657375;
  if (v2 != 3)
  {
    v8 = 0x5365636976726573;
    v7 = 0xEF73676E69747465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726576726573;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_10013E798()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10013E888()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10013E964()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void *sub_10013EB00(char *a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for URL();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  *&v42 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v42);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = &_swiftEmptyArrayStorage;
  v15 = [objc_allocWithZone(FMStateCapture) init];
  aBlock[4] = sub_100695DF8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015013C;
  aBlock[3] = &unk_10160FB38;
  v16 = _Block_copy(aBlock);

  [v15 setStateCaptureBlock:v16];
  _Block_release(v16);
  v2[3] = v15;
  sub_1000BC488();
  v39[1] = "@NSDictionary8@?0";
  v40 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v17 = *(v11 + 104);
  v41 = v11 + 104;
  v43 = v17;
  v17(v14);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001505C0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v43(v14, v40, v42);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v18 = v2;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000BC4D4(&qword_101697DD8, &unk_10138CDD0);
  v19 = *(type metadata accessor for DefaultConfigurationLayer() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  v42 = xmmword_101385D80;
  *(v22 + 16) = xmmword_101385D80;
  sub_1008F826C(v22 + v21);
  v2[7] = v22;
  v2[8] = 0;
  v2[9] = 0;
  v2[10] = 0;
  LODWORD(v44) = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v43 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = v42;
  v24 = v45;
  v25 = v46;
  *&v42 = *(v46 + 16);
  v27 = v47;
  v26 = v48;
  (v42)(v45, v48, v47);
  sub_1001505C0(&qword_1016B14E0, &type metadata accessor for URL);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  v31 = *(v25 + 8);
  v31(v24, v27);
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v28;
  *(v23 + 40) = v30;
  os_log(_:dso:log:_:_:)();

  (v42)(v18 + OBJC_IVAR____TtC12searchpartyd24ConfigurationCoordinator_rootURL, v26, v27);
  v32 = v18[5];
  v33 = type metadata accessor for QueueSynchronizer();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v32;
  v37 = QueueSynchronizer.init(queue:)();
  v31(v26, v27);
  v18[6] = v37;
  return v18;
}

uint64_t sub_10013F190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v67 = a2;
  v66 = a1;
  v70 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v70 - 8);
  v5 = *(v72 + 64);
  __chkstk_darwin(v70);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v59 = *(v71 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v71);
  v69 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v63 = *(v64 - 8);
  v9 = *(v63 + 64);
  __chkstk_darwin(v64);
  v65 = &v51 - v10;
  v11 = type metadata accessor for ServiceStateConfigurationLayer();
  v12 = *(*(v11 - 1) + 64);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_101697DE8, &unk_1013CA800);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  sub_10014023C(0);
  sub_10013E63C();
  v20 = type metadata accessor for ConfigurationCoordinator();
  v81 = v20;
  v82 = &off_10160FA10;
  aBlock[0] = v3;

  sub_1011D44D4(aBlock, v19);

  v21 = *(v16 + 8);
  v21(v19, v15);
  sub_100007BAC(aBlock);
  v81 = &type metadata for UserDefaultsConfigurationLayer;
  v82 = &off_10166A3C8;
  v22 = *(v3 + 48);
  v73 = 3;
  v74 = v4;
  v75 = aBlock;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v54 = v22;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100007BAC(aBlock);
  sub_1000034A4();
  v81 = v20;
  v82 = &off_10160FA10;
  v62 = v20;
  aBlock[0] = v4;

  sub_100EEC2D8(aBlock, v19);

  v58 = v19;
  v61 = v15;
  v60 = v16 + 8;
  v56 = v21;
  v21(v19, v15);
  sub_100007BAC(aBlock);
  v23 = *(v4 + 80);

  v24 = sub_100003518();
  v25 = [v24 stringForKey:SPSettingsServiceStateKey];

  if (!v25)
  {
    if (qword_101694A88 != -1)
    {
      swift_once();
    }

    v25 = qword_10177B658;
  }

  v53 = 0;
  v52 = sub_100EEA744();
  sub_100EEAC04(&v14[v11[6]]);
  sub_100EEB5B4(&v14[v11[7]]);
  v26 = sub_100EEB5E0();
  v28 = v27;
  sub_100EEB8F8(&v14[v11[9]]);
  v29 = v14;
  v30 = sub_100003518();
  v31 = *(v23 + 48);
  v32 = *(v23 + 56);
  v33 = String._bridgeToObjectiveC()();
  v34 = [v30 BOOLForKey:v33];

  v35 = v52;
  *v29 = v25;
  v29[1] = v35;
  v36 = v29 + v11[8];
  *v36 = v26;
  v36[8] = v28 & 1;
  *(v29 + v11[10]) = v34;
  v55 = v29;
  v81 = v11;
  v82 = &off_10165A058;
  v37 = sub_1000280DC(aBlock);
  v38 = sub_100150B0C(v29, v37, type metadata accessor for ServiceStateConfigurationLayer);
  __chkstk_darwin(v38);
  *(&v51 - 48) = 4;
  *(&v51 - 5) = v4;
  *(&v51 - 4) = aBlock;
  *(&v51 - 24) = 0;
  *(&v51 - 2) = 0;
  *(&v51 - 1) = 0;
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100007BAC(aBlock);
  sub_10013E5C8();
  v39 = v62;
  v81 = v62;
  v82 = &off_10160FA10;
  aBlock[0] = v4;

  v40 = v58;
  sub_1009438EC(aBlock, v58);

  v56(v40, v61);
  sub_100007BAC(aBlock);
  v81 = v39;
  v82 = &off_10160F9E8;
  aBlock[0] = v4;

  v41 = v65;
  sub_1004F33B4(aBlock, v65);
  (*(v63 + 8))(v41, v64);
  sub_100007BAC(aBlock);
  v42 = *(v4 + 40);
  v43 = swift_allocObject();
  v44 = v67;
  v45 = v68;
  *(v43 + 16) = v67;
  *(v43 + 24) = v45;
  v82 = sub_100150B9C;
  v83 = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  v81 = &unk_101610290;
  v46 = _Block_copy(aBlock);
  sub_100012908(v44);
  v47 = v69;
  static DispatchQoS.unspecified.getter();
  v79 = _swiftEmptyArrayStorage;
  sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v48 = v57;
  v49 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);
  (*(v72 + 8))(v48, v49);
  (*(v59 + 8))(v47, v71);
  sub_100150BA4(v55, type metadata accessor for ServiceStateConfigurationLayer);
}

uint64_t sub_10013FA40(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = a1;
  *(v17 + 24) = v18;
  aBlock[4] = sub_100150C44;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016102E0;
  v19 = _Block_copy(aBlock);
  sub_100012908(a1);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v23 + 8))(v6, v3);
  (*(v7 + 8))(v10, v22);
}

uint64_t sub_10013FE3C(uint64_t a1)
{
  v1 = *(a1 + 56);

  v3 = sub_1010735A8(v2);

  sub_10013FF08(v3, 0);

  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10013FF08(uint64_t a1, int a2)
{
  v17 = a2;
  v4 = type metadata accessor for URL();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v2 + 40));
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v8 = *(v2 + 56);
  *(v2 + 56) = a1;
  v9 = type metadata accessor for PropertyListEncoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  PropertyListEncoder.init()();
  v18 = a1;
  sub_100150AB8();
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v14 = v13;

  URL.appendingPathComponent(_:isDirectory:)();
  Data.write(to:excludeFromBackup:options:)();
  (*(v16 + 8))(v7, v4);
  sub_100016590(v12, v14);
  if (sub_10039014C(v8, a1) & 1) == 0 && (v17)
  {
    sub_100140940(v8, a1);
  }
}

uint64_t sub_10014023C(char a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 40);
  static DispatchWorkItemFlags.barrier.getter();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = sub_100150A58;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101610240;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_100140498(uint64_t a1, int a2)
{
  v3 = type metadata accessor for DefaultConfigurationLayer();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = a2;
    static os_log_type_t.default.getter();
    if (qword_101695088 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C3D0;
    os_log(_:dso:log:_:_:)();
    URL.appendingPathComponent(_:isDirectory:)();
    v14 = Data.init(contentsOf:options:)();
    v27[1] = v13;
    v15 = v14;
    v17 = v16;
    v18 = type metadata accessor for PropertyListDecoder();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_100150A64();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v21 = v29;
    sub_1008F826C(v6);
    v22 = sub_1010738E0(v6, v21);

    sub_100150BA4(v6, type metadata accessor for DefaultConfigurationLayer);
    if (v28)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v24 = *(Strong + 56);

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_100140940(v24, v22);
        }
      }
    }

    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    sub_100016590(v15, v17);
    if (v25)
    {

      (*(v8 + 8))(v11, v7);
      v26 = *(v25 + 56);
      *(v25 + 56) = v22;
    }

    else
    {

      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t sub_100140940(uint64_t a1, uint64_t a2)
{
  v617 = type metadata accessor for Date();
  v620 = *(v617 - 8);
  v5 = *(v620 + 64);
  __chkstk_darwin(v617);
  v605 = &v601 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v619 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v7 = *(*(v619 - 8) + 64);
  v8 = __chkstk_darwin(v619);
  v616 = &v601 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v608 = &v601 - v10;
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v604 = &v601 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v615 = &v601 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v601 - v18;
  v20 = __chkstk_darwin(v17);
  v603 = &v601 - v21;
  v22 = __chkstk_darwin(v20);
  v613 = &v601 - v23;
  __chkstk_darwin(v22);
  v614 = &v601 - v24;
  v607 = type metadata accessor for UUID();
  v25 = *(v607 - 8);
  v26 = v25[8];
  __chkstk_darwin(v607);
  v601 = &v601 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v606 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v28 = *(*(v606 - 8) + 64);
  __chkstk_darwin(v606);
  v609 = &v601 - v29;
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v602 = &v601 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v612 = &v601 - v35;
  __chkstk_darwin(v34);
  v618 = &v601 - v36;
  v37 = type metadata accessor for Mirror();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v601 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v621 = v2;
  dispatch_assert_queue_V2(*(v2 + 40));
  static os_log_type_t.default.getter();
  v42 = *sub_100F4D180();
  os_log(_:dso:log:_:_:)();
  v43 = swift_allocObject();
  v624 = type metadata accessor for DefaultConfigurationLayer();
  v44 = sub_1000280DC(&v623);
  sub_1008F826C(v44);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  (*(v38 + 8))(v41, v37);
  v45 = dispatch thunk of _AnyCollectionBox._count.getter();

  if (__OFSUB__(v45, 1))
  {
    __break(1u);
    return result;
  }

  v611 = v19;
  *(v43 + 16) = v45 - 1;
  v47 = sub_101073A3C(a1);
  v49 = v48;
  v50 = sub_101073A3C(a2);
  v52 = v51;
  v53 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v47, v49, v50, v51);
  sub_100016590(v50, v52);
  sub_100016590(v47, v49);
  if ((v53 & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    sub_1001451FC(a2, KeyPath);
  }

  sub_1001450F4(v43);
  v55 = sub_101073B58(a1);
  v56 = sub_101073B58(a2);
  v610 = v25;
  if (v55 != v56)
  {
    v57 = swift_getKeyPath();
    sub_1001459A0(a2, v57);
  }

  sub_1001450F4(v43);
  sub_10107341C(a1);
  v59 = v58;
  sub_10107341C(a2);
  v60 = v618;
  if (v59 != v61)
  {
    v62 = swift_getKeyPath();
    sub_100146144(a2, v62);
  }

  sub_1001450F4(v43);
  sub_101073B74(a1);
  v64 = v63;
  sub_101073B74(a2);
  if (v64 != v65)
  {
    v66 = swift_getKeyPath();
    sub_100146144(a2, v66);
  }

  sub_1001450F4(v43);
  v67 = sub_101073B80(a1) & 1;
  if (v67 != (sub_101073B80(a2) & 1))
  {
    v68 = swift_getKeyPath();
    sub_1001468E8(a2, v68);
  }

  sub_1001450F4(v43);
  v69 = sub_101073B8C(a1);
  v70 = sub_101073B8C(a2);
  v71 = sub_10038ED80(v69, v70);

  if ((v71 & 1) == 0)
  {
    v72 = swift_getKeyPath();
    sub_10014708C(a2, v72);
  }

  sub_1001450F4(v43);
  v73 = sub_101073BA8(a1) & 1;
  if (v73 != (sub_101073BA8(a2) & 1))
  {
    v74 = swift_getKeyPath();
    sub_1001468E8(a2, v74);
  }

  sub_1001450F4(v43);
  v75 = sub_101073BB4(a1);
  v77 = v76;
  if (v75 == sub_101073BB4(a2) && v77 == v78)
  {
  }

  else
  {
    v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v79 & 1) == 0)
    {
      v80 = swift_getKeyPath();
      sub_100147830(a2, v80);
    }
  }

  sub_1001450F4(v43);
  v81 = sub_101073BC0(a1);
  if (v81 != sub_101073BC0(a2))
  {
    v82 = swift_getKeyPath();
    sub_100147FD4(a2, v82);
  }

  sub_1001450F4(v43);
  v83 = sub_101073BDC(a1) & 1;
  if (v83 != (sub_101073BDC(a2) & 1))
  {
    v84 = swift_getKeyPath();
    sub_1001468E8(a2, v84);
  }

  sub_1001450F4(v43);
  v85 = sub_101073BE8(a1) & 1;
  if (v85 != (sub_101073BE8(a2) & 1))
  {
    v86 = swift_getKeyPath();
    sub_1001468E8(a2, v86);
  }

  sub_1001450F4(v43);
  v87 = sub_101073BF4(a1);
  if (v87 != sub_101073BF4(a2))
  {
    v88 = swift_getKeyPath();
    sub_100147FD4(a2, v88);
  }

  sub_1001450F4(v43);
  v89 = sub_101073524(a1);
  if (v89 != sub_101073524(a2))
  {
    v90 = swift_getKeyPath();
    sub_100147FD4(a2, v90);
  }

  sub_1001450F4(v43);
  v91 = sub_101073C10(a1);
  if (v91 != sub_101073C10(a2))
  {
    v92 = swift_getKeyPath();
    sub_100147FD4(a2, v92);
  }

  sub_1001450F4(v43);
  v93 = sub_101073C2C(a1);
  if (v93 != sub_101073C2C(a2))
  {
    v94 = swift_getKeyPath();
    sub_100147FD4(a2, v94);
  }

  sub_1001450F4(v43);
  v95 = sub_101073C48(a1);
  if (v95 != sub_101073C48(a2))
  {
    v96 = swift_getKeyPath();
    sub_100147FD4(a2, v96);
  }

  sub_1001450F4(v43);
  sub_101073C64(a1);
  v98 = v97;
  sub_101073C64(a2);
  if (v98 != v99)
  {
    v100 = swift_getKeyPath();
    sub_100146144(a2, v100);
  }

  sub_1001450F4(v43);
  v101 = sub_101073C70(a1);
  if (v101 != sub_101073C70(a2))
  {
    v102 = swift_getKeyPath();
    sub_100147FD4(a2, v102);
  }

  sub_1001450F4(v43);
  v103 = sub_101073C8C(a1);
  if (v103 != sub_101073C8C(a2))
  {
    v104 = swift_getKeyPath();
    sub_100147FD4(a2, v104);
  }

  sub_1001450F4(v43);
  v105 = sub_101073CA8(a1);
  if (v105 != sub_101073CA8(a2))
  {
    v106 = swift_getKeyPath();
    sub_1001459A0(a2, v106);
  }

  sub_1001450F4(v43);
  sub_101073CC4(a1);
  v108 = v107;
  sub_101073CC4(a2);
  if (v108 != v109)
  {
    v110 = swift_getKeyPath();
    sub_100146144(a2, v110);
  }

  sub_1001450F4(v43);
  v111 = sub_101073CD0(a1);
  if (v111 != sub_101073CD0(a2))
  {
    v112 = swift_getKeyPath();
    sub_100147FD4(a2, v112);
  }

  sub_1001450F4(v43);
  v113 = sub_101073CEC(a1);
  if (v113 != sub_101073CEC(a2))
  {
    v114 = swift_getKeyPath();
    sub_100147FD4(a2, v114);
  }

  sub_1001450F4(v43);
  v115 = sub_101073D08(a1);
  if (v115 != sub_101073D08(a2))
  {
    v116 = swift_getKeyPath();
    sub_100147FD4(a2, v116);
  }

  sub_1001450F4(v43);
  v117 = sub_101073D24(a1);
  v118 = sub_101073D24(a2);
  v119 = sub_10038F634(v117, v118);

  if ((v119 & 1) == 0)
  {
    v120 = swift_getKeyPath();
    sub_100148778(a2, v120);
  }

  sub_1001450F4(v43);
  v121 = sub_101073E44(a1) & 1;
  if (v121 != (sub_101073E44(a2) & 1))
  {
    v122 = swift_getKeyPath();
    sub_1001468E8(a2, v122);
  }

  sub_1001450F4(v43);
  v123 = sub_101073E50(a1);
  v124 = sub_101073E50(a2);
  v125 = sub_100DE6F58(v123, v124);

  if ((v125 & 1) == 0)
  {
    v126 = swift_getKeyPath();
    sub_100148F1C(a2, v126);
  }

  sub_1001450F4(v43);
  v127 = sub_101073E6C(a1);
  if (v127 != sub_101073E6C(a2))
  {
    v128 = swift_getKeyPath();
    sub_100147FD4(a2, v128);
  }

  sub_1001450F4(v43);
  v129 = sub_101073E88(a1);
  if (v129 != sub_101073E88(a2))
  {
    v130 = swift_getKeyPath();
    sub_100147FD4(a2, v130);
  }

  sub_1001450F4(v43);
  v131 = sub_101073EA4(a1);
  if (v131 != sub_101073EA4(a2))
  {
    v132 = swift_getKeyPath();
    sub_100147FD4(a2, v132);
  }

  sub_1001450F4(v43);
  v133 = sub_101073EC0(a1);
  if (v133 != sub_101073EC0(a2))
  {
    v134 = swift_getKeyPath();
    sub_100147FD4(a2, v134);
  }

  sub_1001450F4(v43);
  v135 = sub_101073EDC(a1);
  if (v135 != sub_101073EDC(a2))
  {
    v136 = swift_getKeyPath();
    sub_100147FD4(a2, v136);
  }

  sub_1001450F4(v43);
  v137 = sub_101073EF8(a1);
  if (v137 != sub_101073EF8(a2))
  {
    v138 = swift_getKeyPath();
    sub_100147FD4(a2, v138);
  }

  sub_1001450F4(v43);
  v139 = sub_101073F14(a1);
  if (v139 != sub_101073F14(a2))
  {
    v140 = swift_getKeyPath();
    sub_100147FD4(a2, v140);
  }

  sub_1001450F4(v43);
  v141 = sub_101073F30(a1);
  if (v141 != sub_101073F30(a2))
  {
    v142 = swift_getKeyPath();
    sub_100147FD4(a2, v142);
  }

  sub_1001450F4(v43);
  v143 = sub_101073F4C(a1);
  if (v143 != sub_101073F4C(a2))
  {
    v144 = swift_getKeyPath();
    sub_100147FD4(a2, v144);
  }

  sub_1001450F4(v43);
  v145 = sub_101073F68(a1);
  if (v145 != sub_101073F68(a2))
  {
    v146 = swift_getKeyPath();
    sub_100147FD4(a2, v146);
  }

  sub_1001450F4(v43);
  v147 = sub_101073F84(a1) & 1;
  if (v147 != (sub_101073F84(a2) & 1))
  {
    v148 = swift_getKeyPath();
    sub_1001468E8(a2, v148);
  }

  sub_1001450F4(v43);
  v149 = sub_101073F90(a1);
  if (v149 != sub_101073F90(a2))
  {
    v150 = swift_getKeyPath();
    sub_100147FD4(a2, v150);
  }

  sub_1001450F4(v43);
  v151 = sub_101073FAC(a1);
  if (v151 != sub_101073FAC(a2))
  {
    v152 = swift_getKeyPath();
    sub_100147FD4(a2, v152);
  }

  sub_1001450F4(v43);
  v153 = sub_101073FC8(a1);
  if (v153 != sub_101073FC8(a2))
  {
    v154 = swift_getKeyPath();
    sub_100147FD4(a2, v154);
  }

  sub_1001450F4(v43);
  v155 = sub_101073FE4(a1);
  if (v155 != sub_101073FE4(a2))
  {
    v156 = swift_getKeyPath();
    sub_100147FD4(a2, v156);
  }

  sub_1001450F4(v43);
  v157 = sub_101074000(a1);
  if (v157 != sub_101074000(a2))
  {
    v158 = swift_getKeyPath();
    sub_100147FD4(a2, v158);
  }

  sub_1001450F4(v43);
  v159 = sub_10107401C(a1);
  if (v159 != sub_10107401C(a2))
  {
    v160 = swift_getKeyPath();
    sub_100147FD4(a2, v160);
  }

  sub_1001450F4(v43);
  v161 = sub_101074038(a1);
  if (v161 != sub_101074038(a2))
  {
    v162 = swift_getKeyPath();
    sub_100147FD4(a2, v162);
  }

  sub_1001450F4(v43);
  sub_101074054(a1);
  v164 = v163;
  sub_101074054(a2);
  if (v164 != v165)
  {
    v166 = swift_getKeyPath();
    sub_100146144(a2, v166);
  }

  sub_1001450F4(v43);
  sub_101074060(a1);
  v168 = v167;
  sub_101074060(a2);
  if (v168 != v169)
  {
    v170 = swift_getKeyPath();
    sub_100146144(a2, v170);
  }

  sub_1001450F4(v43);
  v171 = sub_10107406C(a1);
  v172 = sub_10107406C(a2);
  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v175 = v174;
  if (v173 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v175 == v176)
  {
  }

  else
  {
    v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v177 & 1) == 0)
    {
      v178 = swift_getKeyPath();
      sub_1001496C0(a2, v178);
    }
  }

  sub_1001450F4(v43);
  v179 = sub_10107416C(a1);
  v180 = sub_10107416C(a2);
  v181 = sub_10038F7B4(v179, v180);

  if ((v181 & 1) == 0)
  {
    v182 = swift_getKeyPath();
    sub_100149E64(a2, v182);
  }

  sub_1001450F4(v43);
  v183 = sub_101074188(a1);
  v184 = sub_101074188(a2);
  v185 = v612;
  if (v183 != v184)
  {
    v186 = swift_getKeyPath();
    sub_100147FD4(a2, v186);
  }

  sub_1001450F4(v43);
  v187 = sub_1010741A4(a1);
  if (v187 != sub_1010741A4(a2))
  {
    v188 = swift_getKeyPath();
    sub_100147FD4(a2, v188);
  }

  sub_1001450F4(v43);
  v189 = sub_1010741C0(a1);
  if (v189 != sub_1010741C0(a2))
  {
    v190 = swift_getKeyPath();
    sub_100147FD4(a2, v190);
  }

  sub_1001450F4(v43);
  v191 = sub_1010741DC(a1);
  if (v191 != sub_1010741DC(a2))
  {
    v192 = swift_getKeyPath();
    sub_100147FD4(a2, v192);
  }

  sub_1001450F4(v43);
  v193 = sub_1010741F8(a1);
  if (v193 != sub_1010741F8(a2))
  {
    v194 = swift_getKeyPath();
    sub_100147FD4(a2, v194);
  }

  sub_1001450F4(v43);
  v195 = sub_101074214(a1) & 1;
  if (v195 != (sub_101074214(a2) & 1))
  {
    v196 = swift_getKeyPath();
    sub_1001468E8(a2, v196);
  }

  sub_1001450F4(v43);
  sub_101073578(a1, v60);
  sub_101073578(a2, v185);
  v197 = *(v606 + 48);
  v198 = v609;
  sub_1000D2A70(v60, v609, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v185, v198 + v197, &qword_1016980D0, &unk_10138F3B0);
  v199 = v610[6];
  v200 = v607;
  if (v199(v198, 1, v607) == 1)
  {
    sub_10000B3A8(v185, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v60, &qword_1016980D0, &unk_10138F3B0);
    v201 = v199(v198 + v197, 1, v200);
    v202 = v619;
    v203 = v614;
    if (v201 == 1)
    {
      sub_10000B3A8(v198, &qword_1016980D0, &unk_10138F3B0);
      v204 = v613;
      goto LABEL_125;
    }

    goto LABEL_123;
  }

  v205 = v602;
  sub_1000D2A70(v198, v602, &qword_1016980D0, &unk_10138F3B0);
  if (v199(v198 + v197, 1, v200) == 1)
  {
    sub_10000B3A8(v612, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v618, &qword_1016980D0, &unk_10138F3B0);
    (v610[1])(v205, v200);
    v202 = v619;
    v203 = v614;
LABEL_123:
    sub_10000B3A8(v198, &qword_1016AF880, &unk_10138CE20);
    v204 = v613;
LABEL_124:
    v206 = swift_getKeyPath();
    sub_10014A608(a2, v206);

    goto LABEL_125;
  }

  v588 = v610;
  v589 = v601;
  (v610[4])(v601, v198 + v197, v200);
  sub_1001505C0(&qword_1016984A0, &type metadata accessor for UUID);
  LODWORD(v606) = dispatch thunk of static Equatable.== infix(_:_:)();
  v590 = v588[1];
  v590(v589, v200);
  sub_10000B3A8(v612, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v618, &qword_1016980D0, &unk_10138F3B0);
  v590(v205, v200);
  sub_10000B3A8(v609, &qword_1016980D0, &unk_10138F3B0);
  v202 = v619;
  v203 = v614;
  v204 = v613;
  if ((v606 & 1) == 0)
  {
    goto LABEL_124;
  }

LABEL_125:
  sub_1001450F4(v43);
  v618 = a1;
  sub_101074220(a1, v203);
  sub_101074220(a2, v204);
  v207 = *(v202 + 48);
  v208 = v608;
  sub_1000D2A70(v203, v608, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v204, v208 + v207, &unk_101696900, &unk_10138B1E0);
  v210 = v620 + 48;
  v209 = *(v620 + 48);
  v211 = v617;
  v212 = (v209)(v208, 1, v617);
  v610 = v209;
  v612 = v210;
  if (v212 == 1)
  {
    sub_10000B3A8(v204, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v203, &unk_101696900, &unk_10138B1E0);
    v213 = (v209)(v208 + v207, 1, v211);
    v214 = v618;
    if (v213 == 1)
    {
      sub_10000B3A8(v208, &unk_101696900, &unk_10138B1E0);
      v215 = v615;
      v216 = v619;
      goto LABEL_132;
    }

    goto LABEL_130;
  }

  v217 = v603;
  sub_1000D2A70(v208, v603, &unk_101696900, &unk_10138B1E0);
  if ((v209)(v208 + v207, 1, v211) == 1)
  {
    sub_10000B3A8(v613, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v614, &unk_101696900, &unk_10138B1E0);
    (*(v620 + 8))(v217, v211);
    v214 = v618;
LABEL_130:
    sub_10000B3A8(v208, &unk_1016B1660, &unk_10138CE10);
    v215 = v615;
    v216 = v619;
LABEL_131:
    v218 = swift_getKeyPath();
    sub_10014ADAC(a2, v218);

    goto LABEL_132;
  }

  v591 = v620;
  v592 = v605;
  (*(v620 + 32))(v605, v208 + v207, v211);
  sub_1001505C0(&qword_101698290, &type metadata accessor for Date);
  v593 = v217;
  v594 = dispatch thunk of static Equatable.== infix(_:_:)();
  v595 = *(v591 + 8);
  v595(v592, v617);
  sub_10000B3A8(v613, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v614, &unk_101696900, &unk_10138B1E0);
  v595(v593, v617);
  v216 = v619;
  v211 = v617;
  sub_10000B3A8(v208, &unk_101696900, &unk_10138B1E0);
  v215 = v615;
  v214 = v618;
  if ((v594 & 1) == 0)
  {
    goto LABEL_131;
  }

LABEL_132:
  sub_1001450F4(v43);
  v219 = sub_101074250(v214);
  v221 = v220;
  v222 = sub_101074250(a2);
  if (v221)
  {
    if (v223)
    {
      goto LABEL_138;
    }

LABEL_137:
    v224 = swift_getKeyPath();
    sub_10014B550(a2, v224);

    goto LABEL_138;
  }

  if ((v223 & 1) != 0 || v219 != v222)
  {
    goto LABEL_137;
  }

LABEL_138:
  sub_1001450F4(v43);
  v225 = v611;
  sub_1010742A8(v214, v611);
  sub_1010742A8(a2, v215);
  v226 = *(v216 + 48);
  v227 = v616;
  sub_1000D2A70(v225, v616, &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v215, v227 + v226, &unk_101696900, &unk_10138B1E0);
  v228 = v610;
  if ((v610)(v227, 1, v211) != 1)
  {
    v232 = v604;
    sub_1000D2A70(v227, v604, &unk_101696900, &unk_10138B1E0);
    if (v228(v227 + v226, 1, v211) != 1)
    {
      v596 = v620;
      v597 = v605;
      (*(v620 + 32))(v605, v227 + v226, v211);
      sub_1001505C0(&qword_101698290, &type metadata accessor for Date);
      v598 = v227;
      v599 = dispatch thunk of static Equatable.== infix(_:_:)();
      v600 = *(v596 + 8);
      v600(v597, v211);
      sub_10000B3A8(v615, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v611, &unk_101696900, &unk_10138B1E0);
      v600(v232, v211);
      sub_10000B3A8(v598, &unk_101696900, &unk_10138B1E0);
      v231 = v618;
      if (v599)
      {
        goto LABEL_145;
      }

      goto LABEL_144;
    }

    sub_10000B3A8(v615, &unk_101696900, &unk_10138B1E0);
    v229 = v616;
    sub_10000B3A8(v611, &unk_101696900, &unk_10138B1E0);
    (*(v620 + 8))(v232, v211);
    v231 = v618;
LABEL_143:
    sub_10000B3A8(v229, &unk_1016B1660, &unk_10138CE10);
LABEL_144:
    v233 = swift_getKeyPath();
    sub_10014ADAC(a2, v233);

    goto LABEL_145;
  }

  sub_10000B3A8(v215, &unk_101696900, &unk_10138B1E0);
  v229 = v616;
  sub_10000B3A8(v225, &unk_101696900, &unk_10138B1E0);
  v230 = v228(v229 + v226, 1, v211);
  v231 = v618;
  if (v230 != 1)
  {
    goto LABEL_143;
  }

  sub_10000B3A8(v229, &unk_101696900, &unk_10138B1E0);
LABEL_145:
  sub_1001450F4(v43);
  v234 = sub_101074350(v231);
  if (v234 != sub_101074350(a2))
  {
    v235 = swift_getKeyPath();
    sub_100147FD4(a2, v235);
  }

  sub_1001450F4(v43);
  v236 = sub_10107436C(v231);
  if (v236 != sub_10107436C(a2))
  {
    v237 = swift_getKeyPath();
    sub_100147FD4(a2, v237);
  }

  sub_1001450F4(v43);
  sub_101074388(v231);
  v239 = v238;
  sub_101074388(a2);
  if (v239 != v240)
  {
    v241 = swift_getKeyPath();
    sub_100146144(a2, v241);
  }

  sub_1001450F4(v43);
  sub_101074394(v231);
  v243 = v242;
  sub_101074394(a2);
  if (v243 != v244)
  {
    v245 = swift_getKeyPath();
    sub_100146144(a2, v245);
  }

  sub_1001450F4(v43);
  sub_1010743A0(v231);
  v247 = v246;
  sub_1010743A0(a2);
  if (v247 != v248)
  {
    v249 = swift_getKeyPath();
    sub_100146144(a2, v249);
  }

  sub_1001450F4(v43);
  sub_1010743AC(v231);
  v251 = v250;
  sub_1010743AC(a2);
  if (v251 != v252)
  {
    v253 = swift_getKeyPath();
    sub_100146144(a2, v253);
  }

  sub_1001450F4(v43);
  sub_1010743B8(v231, v622);
  sub_1010743B8(a2, &v623);
  v254 = _s12searchpartyd19AllMacBeaconConfigsV23__derived_struct_equalsySbAC_ACtFZ_0(v622, &v623);
  sub_10015056C(&v623);
  sub_10015056C(v622);
  if (!v254)
  {
    v255 = swift_getKeyPath();
    sub_10014BCF4(a2, v255);
  }

  sub_1001450F4(v43);
  v256 = sub_101074528(v231) & 1;
  if (v256 != (sub_101074528(a2) & 1))
  {
    v257 = swift_getKeyPath();
    sub_1001468E8(a2, v257);
  }

  sub_1001450F4(v43);
  v258 = sub_101074534(v231) & 1;
  if (v258 != (sub_101074534(a2) & 1))
  {
    v259 = swift_getKeyPath();
    sub_1001468E8(a2, v259);
  }

  sub_1001450F4(v43);
  v260 = sub_101074540(v231) & 1;
  if (v260 != (sub_101074540(a2) & 1))
  {
    v261 = swift_getKeyPath();
    sub_1001468E8(a2, v261);
  }

  sub_1001450F4(v43);
  sub_10107454C(v231);
  v263 = v262;
  sub_10107454C(a2);
  if (v263 != v264)
  {
    v265 = swift_getKeyPath();
    sub_100146144(a2, v265);
  }

  sub_1001450F4(v43);
  sub_101074558(v231);
  v267 = v266;
  sub_101074558(a2);
  if (v267 != v268)
  {
    v269 = swift_getKeyPath();
    sub_100146144(a2, v269);
  }

  sub_1001450F4(v43);
  sub_101074564(v231);
  v271 = v270;
  sub_101074564(a2);
  if (v271 != v272)
  {
    v273 = swift_getKeyPath();
    sub_100146144(a2, v273);
  }

  sub_1001450F4(v43);
  sub_101074570(v231);
  v275 = v274;
  sub_101074570(a2);
  if (v275 != v276)
  {
    v277 = swift_getKeyPath();
    sub_100146144(a2, v277);
  }

  sub_1001450F4(v43);
  sub_10107457C(v231);
  v279 = v278;
  sub_10107457C(a2);
  if (v279 != v280)
  {
    v281 = swift_getKeyPath();
    sub_100146144(a2, v281);
  }

  sub_1001450F4(v43);
  sub_101074588(v231);
  v283 = v282;
  sub_101074588(a2);
  if (v283 != v284)
  {
    v285 = swift_getKeyPath();
    sub_100146144(a2, v285);
  }

  sub_1001450F4(v43);
  sub_101074594(v231);
  v287 = v286;
  sub_101074594(a2);
  if (v287 != v288)
  {
    v289 = swift_getKeyPath();
    sub_100146144(a2, v289);
  }

  sub_1001450F4(v43);
  sub_1010745A0(v231);
  v291 = v290;
  sub_1010745A0(a2);
  if (v291 != v292)
  {
    v293 = swift_getKeyPath();
    sub_100146144(a2, v293);
  }

  sub_1001450F4(v43);
  v294 = sub_1010745AC(v231);
  v296 = v295;
  if (v294 == sub_1010745AC(a2) && v296 == v297)
  {
  }

  else
  {
    v298 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v298 & 1) == 0)
    {
      v299 = swift_getKeyPath();
      sub_100147830(a2, v299);
    }
  }

  sub_1001450F4(v43);
  v300 = sub_1010745B8(v231);
  if (v300 != sub_1010745B8(a2))
  {
    v301 = swift_getKeyPath();
    sub_100147FD4(a2, v301);
  }

  sub_1001450F4(v43);
  v302 = sub_1010745D4(v231);
  v304 = v303;
  if (v302 == sub_1010745D4(a2) && v304 == v305)
  {
  }

  else
  {
    v306 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v306 & 1) == 0)
    {
      v307 = swift_getKeyPath();
      sub_100147830(a2, v307);
    }
  }

  sub_1001450F4(v43);
  v308 = sub_1010745E0(v231);
  if (v308 != sub_1010745E0(a2))
  {
    v309 = swift_getKeyPath();
    sub_100147FD4(a2, v309);
  }

  sub_1001450F4(v43);
  v310 = sub_1010745FC(v231);
  v311 = sub_1010745FC(a2);
  v312 = sub_10038F898(v310, v311);

  if ((v312 & 1) == 0)
  {
    v313 = swift_getKeyPath();
    sub_10014C498(a2, v313);
  }

  sub_1001450F4(v43);
  v314 = sub_101074618(v231);
  v316 = v315;
  if (v314 == sub_101074618(a2) && v316 == v317)
  {
  }

  else
  {
    v318 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v318 & 1) == 0)
    {
      v319 = swift_getKeyPath();
      sub_100147830(a2, v319);
    }
  }

  sub_1001450F4(v43);
  sub_101074624(v231);
  v321 = v320;
  sub_101074624(a2);
  if (v321 != v322)
  {
    v323 = swift_getKeyPath();
    sub_100146144(a2, v323);
  }

  sub_1001450F4(v43);
  v324 = sub_101074630(v231) & 1;
  if (v324 != (sub_101074630(a2) & 1))
  {
    v325 = swift_getKeyPath();
    sub_1001468E8(a2, v325);
  }

  sub_1001450F4(v43);
  v326 = sub_10107463C(v231) & 1;
  if (v326 != (sub_10107463C(a2) & 1))
  {
    v327 = swift_getKeyPath();
    sub_1001468E8(a2, v327);
  }

  sub_1001450F4(v43);
  v328 = sub_101074648(v231) & 1;
  if (v328 != (sub_101074648(a2) & 1))
  {
    v329 = swift_getKeyPath();
    sub_1001468E8(a2, v329);
  }

  sub_1001450F4(v43);
  v330 = sub_101074654(v231) & 1;
  if (v330 != (sub_101074654(a2) & 1))
  {
    v331 = swift_getKeyPath();
    sub_1001468E8(a2, v331);
  }

  sub_1001450F4(v43);
  v332 = sub_101074660(v231);
  if (v332 != sub_101074660(a2))
  {
    v333 = swift_getKeyPath();
    sub_100147FD4(a2, v333);
  }

  sub_1001450F4(v43);
  v334 = sub_10107467C(v231);
  if (v334 != sub_10107467C(a2))
  {
    v335 = swift_getKeyPath();
    sub_100147FD4(a2, v335);
  }

  sub_1001450F4(v43);
  v336 = sub_101074698(v231);
  if (v336 != sub_101074698(a2))
  {
    v337 = swift_getKeyPath();
    sub_100147FD4(a2, v337);
  }

  sub_1001450F4(v43);
  v338 = sub_1010746B4(v231);
  if (v338 != sub_1010746B4(a2))
  {
    v339 = swift_getKeyPath();
    sub_100147FD4(a2, v339);
  }

  sub_1001450F4(v43);
  v340 = sub_1010746D0(v231);
  if (v340 != sub_1010746D0(a2))
  {
    v341 = swift_getKeyPath();
    sub_100147FD4(a2, v341);
  }

  sub_1001450F4(v43);
  sub_1010746EC(v231);
  v343 = v342;
  sub_1010746EC(a2);
  if (v343 != v344)
  {
    v345 = swift_getKeyPath();
    sub_100146144(a2, v345);
  }

  sub_1001450F4(v43);
  sub_1010746F8(v231);
  v347 = v346;
  sub_1010746F8(a2);
  if (v347 != v348)
  {
    v349 = swift_getKeyPath();
    sub_100146144(a2, v349);
  }

  sub_1001450F4(v43);
  sub_101074704(v231);
  v351 = v350;
  sub_101074704(a2);
  if (v351 != v352)
  {
    v353 = swift_getKeyPath();
    sub_100146144(a2, v353);
  }

  sub_1001450F4(v43);
  v354 = sub_10107355C(v231);
  if (v354 != sub_10107355C(a2))
  {
    v355 = swift_getKeyPath();
    sub_100147FD4(a2, v355);
  }

  sub_1001450F4(v43);
  v356 = sub_101074710(v231);
  if (v356 != sub_101074710(a2))
  {
    v357 = swift_getKeyPath();
    sub_100147FD4(a2, v357);
  }

  sub_1001450F4(v43);
  v358 = sub_10107472C(v231);
  if (v358 != sub_10107472C(a2))
  {
    v359 = swift_getKeyPath();
    sub_100147FD4(a2, v359);
  }

  sub_1001450F4(v43);
  v360 = sub_101074748(v231);
  if (v360 != sub_101074748(a2))
  {
    v361 = swift_getKeyPath();
    sub_100147FD4(a2, v361);
  }

  sub_1001450F4(v43);
  sub_101074764(v231);
  v363 = v362;
  sub_101074764(a2);
  if (v363 != v364)
  {
    v365 = swift_getKeyPath();
    sub_100146144(a2, v365);
  }

  sub_1001450F4(v43);
  sub_101074770(v231);
  v367 = v366;
  sub_101074770(a2);
  if (v367 != v368)
  {
    v369 = swift_getKeyPath();
    sub_100146144(a2, v369);
  }

  sub_1001450F4(v43);
  v370 = sub_10107477C(v231);
  if (v370 != sub_10107477C(a2))
  {
    v371 = swift_getKeyPath();
    sub_100147FD4(a2, v371);
  }

  sub_1001450F4(v43);
  v372 = sub_101074798(v231);
  if (v372 != sub_101074798(a2))
  {
    v373 = swift_getKeyPath();
    sub_100147FD4(a2, v373);
  }

  sub_1001450F4(v43);
  v374 = sub_1010747B4(v231);
  if (v374 != sub_1010747B4(a2))
  {
    v375 = swift_getKeyPath();
    sub_100147FD4(a2, v375);
  }

  sub_1001450F4(v43);
  v376 = sub_1010747D0(v231);
  if (v376 != sub_1010747D0(a2))
  {
    v377 = swift_getKeyPath();
    sub_100147FD4(a2, v377);
  }

  sub_1001450F4(v43);
  v378 = sub_1010747EC(v231);
  if (v378 != sub_1010747EC(a2))
  {
    v379 = swift_getKeyPath();
    sub_100147FD4(a2, v379);
  }

  sub_1001450F4(v43);
  v380 = sub_101074808(v231);
  if (v380 != sub_101074808(a2))
  {
    v381 = swift_getKeyPath();
    sub_100147FD4(a2, v381);
  }

  sub_1001450F4(v43);
  v382 = sub_101074824(v231);
  if (v382 != sub_101074824(a2))
  {
    v383 = swift_getKeyPath();
    sub_100147FD4(a2, v383);
  }

  sub_1001450F4(v43);
  v384 = sub_101074840(v231);
  if (v384 != sub_101074840(a2))
  {
    v385 = swift_getKeyPath();
    sub_100147FD4(a2, v385);
  }

  sub_1001450F4(v43);
  sub_10107485C(v231);
  v387 = v386;
  sub_10107485C(a2);
  if (v387 != v388)
  {
    v389 = swift_getKeyPath();
    sub_100146144(a2, v389);
  }

  sub_1001450F4(v43);
  v390 = sub_101074868(v231) & 1;
  if (v390 != (sub_101074868(a2) & 1))
  {
    v391 = swift_getKeyPath();
    sub_1001468E8(a2, v391);
  }

  sub_1001450F4(v43);
  sub_101074874(v231);
  v393 = v392;
  sub_101074874(a2);
  if (v393 != v394)
  {
    v395 = swift_getKeyPath();
    sub_100146144(a2, v395);
  }

  sub_1001450F4(v43);
  sub_101074880(v231);
  v397 = v396;
  sub_101074880(a2);
  if (v397 != v398)
  {
    v399 = swift_getKeyPath();
    sub_100146144(a2, v399);
  }

  sub_1001450F4(v43);
  v400 = sub_10107488C(v231);
  if (v400 != sub_10107488C(a2))
  {
    v401 = swift_getKeyPath();
    sub_100147FD4(a2, v401);
  }

  sub_1001450F4(v43);
  v402 = sub_1010748A8(v231) & 1;
  if (v402 != (sub_1010748A8(a2) & 1))
  {
    v403 = swift_getKeyPath();
    sub_1001468E8(a2, v403);
  }

  sub_1001450F4(v43);
  v404 = sub_1010748B4(v231) & 1;
  if (v404 != (sub_1010748B4(a2) & 1))
  {
    v405 = swift_getKeyPath();
    sub_1001468E8(a2, v405);
  }

  sub_1001450F4(v43);
  v406 = sub_1010748C0(v231) & 1;
  if (v406 != (sub_1010748C0(a2) & 1))
  {
    v407 = swift_getKeyPath();
    sub_1001468E8(a2, v407);
  }

  sub_1001450F4(v43);
  v408 = sub_1010748CC(v231);
  if (v408 != sub_1010748CC(a2))
  {
    v409 = swift_getKeyPath();
    sub_100147FD4(a2, v409);
  }

  sub_1001450F4(v43);
  sub_1010748E8(v231);
  v411 = v410;
  sub_1010748E8(a2);
  if (v411 != v412)
  {
    v413 = swift_getKeyPath();
    sub_100146144(a2, v413);
  }

  sub_1001450F4(v43);
  sub_1010748F4(v231);
  v415 = v414;
  sub_1010748F4(a2);
  if (v415 != v416)
  {
    v417 = swift_getKeyPath();
    sub_100146144(a2, v417);
  }

  sub_1001450F4(v43);
  v418 = sub_101074900(v231);
  if (v418 != sub_101074900(a2))
  {
    v419 = swift_getKeyPath();
    sub_10014CC3C(a2, v419);
  }

  sub_1001450F4(v43);
  v420 = sub_10107491C(v231);
  if (v420 != sub_10107491C(a2))
  {
    v421 = swift_getKeyPath();
    sub_10014CC3C(a2, v421);
  }

  sub_1001450F4(v43);
  v422 = sub_101074938(v231);
  if (v422 != sub_101074938(a2))
  {
    v423 = swift_getKeyPath();
    sub_10014CC3C(a2, v423);
  }

  sub_1001450F4(v43);
  v424 = sub_101074954(v231);
  if (v424 != sub_101074954(a2))
  {
    v425 = swift_getKeyPath();
    sub_10014CC3C(a2, v425);
  }

  sub_1001450F4(v43);
  sub_101074970(v231);
  v427 = v426;
  sub_101074970(a2);
  if (v427 != v428)
  {
    v429 = swift_getKeyPath();
    sub_100146144(a2, v429);
  }

  sub_1001450F4(v43);
  v430 = sub_10107497C(v231) & 1;
  if (v430 != (sub_10107497C(a2) & 1))
  {
    v431 = swift_getKeyPath();
    sub_1001468E8(a2, v431);
  }

  sub_1001450F4(v43);
  sub_101074988(v231);
  v433 = v432;
  sub_101074988(a2);
  if (v433 != v434)
  {
    v435 = swift_getKeyPath();
    sub_100146144(a2, v435);
  }

  sub_1001450F4(v43);
  sub_101074994(v231);
  v437 = v436;
  sub_101074994(a2);
  if (v437 != v438)
  {
    v439 = swift_getKeyPath();
    sub_100146144(a2, v439);
  }

  sub_1001450F4(v43);
  v440 = sub_1010749A0(v231);
  v441 = sub_1010749A0(a2);
  v442 = sub_10038F898(v440, v441);

  if ((v442 & 1) == 0)
  {
    v443 = swift_getKeyPath();
    sub_10014C498(a2, v443);
  }

  sub_1001450F4(v43);
  v444 = sub_1010749BC(v231) & 1;
  if (v444 != (sub_1010749BC(a2) & 1))
  {
    v445 = swift_getKeyPath();
    sub_1001468E8(a2, v445);
  }

  sub_1001450F4(v43);
  v446 = sub_1010749C8(v231) & 1;
  if (v446 != (sub_1010749C8(a2) & 1))
  {
    v447 = swift_getKeyPath();
    sub_1001468E8(a2, v447);
  }

  sub_1001450F4(v43);
  v448 = sub_1010749D4(v231);
  v449 = sub_1010749D4(a2);
  v450 = sub_100DE7510(v448, v449);

  if ((v450 & 1) == 0)
  {
    v451 = swift_getKeyPath();
    sub_10014D3E0(a2, v451);
  }

  sub_1001450F4(v43);
  sub_1010749F0(v231);
  v453 = v452;
  sub_1010749F0(a2);
  if (v453 != v454)
  {
    v455 = swift_getKeyPath();
    sub_100146144(a2, v455);
  }

  sub_1001450F4(v43);
  sub_1010749FC(v231);
  v457 = v456;
  sub_1010749FC(a2);
  if (v457 != v458)
  {
    v459 = swift_getKeyPath();
    sub_100146144(a2, v459);
  }

  sub_1001450F4(v43);
  v460 = sub_101074A08(v231) & 1;
  if (v460 != (sub_101074A08(a2) & 1))
  {
    v461 = swift_getKeyPath();
    sub_1001468E8(a2, v461);
  }

  sub_1001450F4(v43);
  v462 = sub_101074A14(v231) & 1;
  if (v462 != (sub_101074A14(a2) & 1))
  {
    v463 = swift_getKeyPath();
    sub_1001468E8(a2, v463);
  }

  sub_1001450F4(v43);
  v464 = sub_101074A20(v231);
  if (v464 != sub_101074A20(a2))
  {
    v465 = swift_getKeyPath();
    sub_1001459A0(a2, v465);
  }

  sub_1001450F4(v43);
  v466 = sub_101074A3C(v231);
  if (v466 != sub_101074A3C(a2))
  {
    v467 = swift_getKeyPath();
    sub_1001459A0(a2, v467);
  }

  sub_1001450F4(v43);
  v468 = sub_101074A58(v231);
  if (v468 != sub_101074A58(a2))
  {
    v469 = swift_getKeyPath();
    sub_1001459A0(a2, v469);
  }

  sub_1001450F4(v43);
  v470 = sub_101074A74(v231);
  if (v470 != sub_101074A74(a2))
  {
    v471 = swift_getKeyPath();
    sub_1001459A0(a2, v471);
  }

  sub_1001450F4(v43);
  v472 = sub_101073540(v231);
  if (v472 != sub_101073540(a2))
  {
    v473 = swift_getKeyPath();
    sub_1001459A0(a2, v473);
  }

  sub_1001450F4(v43);
  v474 = sub_101074A90(v231);
  if (v474 != sub_101074A90(a2))
  {
    v475 = swift_getKeyPath();
    sub_1001459A0(a2, v475);
  }

  sub_1001450F4(v43);
  v476 = sub_101074AAC(v231);
  if (v476 != sub_101074AAC(a2))
  {
    v477 = swift_getKeyPath();
    sub_1001459A0(a2, v477);
  }

  sub_1001450F4(v43);
  v478 = sub_101074AC8(v231);
  if (v478 != sub_101074AC8(a2))
  {
    v479 = swift_getKeyPath();
    sub_1001459A0(a2, v479);
  }

  sub_1001450F4(v43);
  v480 = sub_101074AE4(v231);
  if (v480 != sub_101074AE4(a2))
  {
    v481 = swift_getKeyPath();
    sub_1001459A0(a2, v481);
  }

  sub_1001450F4(v43);
  v482 = sub_101074B00(v231);
  if (v482 != sub_101074B00(a2))
  {
    v483 = swift_getKeyPath();
    sub_1001459A0(a2, v483);
  }

  sub_1001450F4(v43);
  v484 = sub_101074B1C(v231);
  if (v484 != sub_101074B1C(a2))
  {
    v485 = swift_getKeyPath();
    sub_1001459A0(a2, v485);
  }

  sub_1001450F4(v43);
  v486 = sub_101074B38(v231);
  if (v486 != sub_101074B38(a2))
  {
    v487 = swift_getKeyPath();
    sub_1001459A0(a2, v487);
  }

  sub_1001450F4(v43);
  v488 = sub_101074B54(v231);
  if (v488 != sub_101074B54(a2))
  {
    v489 = swift_getKeyPath();
    sub_1001459A0(a2, v489);
  }

  sub_1001450F4(v43);
  v490 = sub_101074B70(v231);
  if (v490 != sub_101074B70(a2))
  {
    v491 = swift_getKeyPath();
    sub_1001459A0(a2, v491);
  }

  sub_1001450F4(v43);
  v492 = sub_101074B8C(v231);
  if (v492 != sub_101074B8C(a2))
  {
    v493 = swift_getKeyPath();
    sub_1001459A0(a2, v493);
  }

  sub_1001450F4(v43);
  v494 = sub_101074BA8(v231);
  if (v494 != sub_101074BA8(a2))
  {
    v495 = swift_getKeyPath();
    sub_1001459A0(a2, v495);
  }

  sub_1001450F4(v43);
  sub_101074BC4(v231);
  v497 = v496;
  sub_101074BC4(a2);
  if (v497 != v498)
  {
    v499 = swift_getKeyPath();
    sub_100146144(a2, v499);
  }

  sub_1001450F4(v43);
  sub_101074BD0(v231);
  v501 = v500;
  sub_101074BD0(a2);
  if (v501 != v502)
  {
    v503 = swift_getKeyPath();
    sub_100146144(a2, v503);
  }

  sub_1001450F4(v43);
  v504 = sub_101074BDC(v231) & 1;
  if (v504 != (sub_101074BDC(a2) & 1))
  {
    v505 = swift_getKeyPath();
    sub_1001468E8(a2, v505);
  }

  sub_1001450F4(v43);
  sub_101074BE8(v231);
  v507 = v506;
  sub_101074BE8(a2);
  if (v507 != v508)
  {
    v509 = swift_getKeyPath();
    sub_100146144(a2, v509);
  }

  sub_1001450F4(v43);
  sub_101073404(v231);
  v511 = v510;
  sub_101073404(a2);
  if (v511 != v512)
  {
    v513 = swift_getKeyPath();
    sub_100146144(a2, v513);
  }

  sub_1001450F4(v43);
  sub_101074BF4(v231);
  v515 = v514;
  sub_101074BF4(a2);
  if (v515 != v516)
  {
    v517 = swift_getKeyPath();
    sub_100146144(a2, v517);
  }

  sub_1001450F4(v43);
  v518 = sub_101074C00(v231);
  v520 = v519;
  if (v518 == sub_101074C00(a2) && v520 == v521)
  {
  }

  else
  {
    v522 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v522 & 1) == 0)
    {
      v523 = swift_getKeyPath();
      sub_100147830(a2, v523);
    }
  }

  sub_1001450F4(v43);
  v524 = sub_101074D18(v231);
  if (v524 != sub_101074D18(a2))
  {
    v525 = swift_getKeyPath();
    sub_1001459A0(a2, v525);
  }

  sub_1001450F4(v43);
  v526 = sub_101073410(v231) & 1;
  if (v526 != (sub_101073410(a2) & 1))
  {
    v527 = swift_getKeyPath();
    sub_1001468E8(a2, v527);
  }

  sub_1001450F4(v43);
  sub_1001450F4(v43);
  sub_101074D34(v231);
  v529 = v528;
  sub_101074D34(a2);
  if (v529 != v530)
  {
    v531 = swift_getKeyPath();
    sub_100146144(a2, v531);
  }

  sub_101074D40(v231);
  v533 = v532;
  sub_101074D40(a2);
  if (v533 != v534)
  {
    v535 = swift_getKeyPath();
    sub_100146144(a2, v535);
  }

  sub_1001450F4(v43);
  sub_101074D4C(v231);
  v537 = v536;
  sub_101074D4C(a2);
  if (v537 != v538)
  {
    v539 = swift_getKeyPath();
    sub_100146144(a2, v539);
  }

  sub_1001450F4(v43);
  v540 = sub_101074D58(v231) & 1;
  if (v540 != (sub_101074D58(a2) & 1))
  {
    v541 = swift_getKeyPath();
    sub_1001468E8(a2, v541);
  }

  sub_1001450F4(v43);
  v542 = sub_101074D64(v231) & 1;
  if (v542 != (sub_101074D64(a2) & 1))
  {
    v543 = swift_getKeyPath();
    sub_1001468E8(a2, v543);
  }

  sub_1001450F4(v43);
  v544 = sub_101074D70(v231);
  if (v544 != sub_101074D70(a2))
  {
    v545 = swift_getKeyPath();
    sub_10014DB84(a2, v545);
  }

  sub_1001450F4(v43);
  v546 = sub_101074E70(v231);
  if (v546 != sub_101074E70(a2))
  {
    v547 = swift_getKeyPath();
    sub_100147FD4(a2, v547);
  }

  sub_1001450F4(v43);
  sub_101074E8C(v231);
  v549 = v548;
  sub_101074E8C(a2);
  if (v549 != v550)
  {
    v551 = swift_getKeyPath();
    sub_100146144(a2, v551);
  }

  sub_1001450F4(v43);
  sub_101074E98(v231);
  v553 = v552;
  sub_101074E98(a2);
  if (v553 != v554)
  {
    v555 = swift_getKeyPath();
    sub_100146144(a2, v555);
  }

  sub_1001450F4(v43);
  sub_101074EA4(v231);
  v557 = v556;
  sub_101074EA4(a2);
  if (v557 != v558)
  {
    v559 = swift_getKeyPath();
    sub_100146144(a2, v559);
  }

  sub_1001450F4(v43);
  sub_101074EB0(v231);
  v561 = v560;
  sub_101074EB0(a2);
  if (v561 != v562)
  {
    v563 = swift_getKeyPath();
    sub_100146144(a2, v563);
  }

  sub_1001450F4(v43);
  sub_101074EBC(v231);
  v565 = v564;
  sub_101074EBC(a2);
  if (v565 != v566)
  {
    v567 = swift_getKeyPath();
    sub_100146144(a2, v567);
  }

  sub_1001450F4(v43);
  sub_101074EC8(v231);
  v569 = v568;
  sub_101074EC8(a2);
  if (v569 != v570)
  {
    v571 = swift_getKeyPath();
    sub_100146144(a2, v571);
  }

  sub_1001450F4(v43);
  v572 = sub_101074ED4(v231) & 1;
  if (v572 != (sub_101074ED4(a2) & 1))
  {
    v573 = swift_getKeyPath();
    sub_1001468E8(a2, v573);
  }

  sub_1001450F4(v43);
  sub_101074FE4(v231);
  v575 = v574;
  sub_101074FE4(a2);
  if (v575 != v576)
  {
    v577 = swift_getKeyPath();
    sub_100146144(a2, v577);
  }

  sub_1001450F4(v43);
  sub_101074FF0(v231);
  v579 = v578;
  sub_101074FF0(a2);
  if (v579 != v580)
  {
    v581 = swift_getKeyPath();
    sub_100146144(a2, v581);
  }

  sub_1001450F4(v43);
  v582 = sub_101074FFC(v231);
  if (v582 != sub_101074FFC(a2))
  {
    v583 = swift_getKeyPath();
    sub_10014E328(a2, v583);
  }

  sub_1001450F4(v43);
  sub_1010750FC(v231);
  v585 = v584;
  sub_1010750FC(a2);
  if (v585 != v586)
  {
    v587 = swift_getKeyPath();
    sub_100146144(a2, v587);
  }

  sub_1001450F4(v43);
}

uint64_t sub_1001450F4(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t sub_100145144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1010790F4(KeyPath, v3);
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1001451A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_101075734(KeyPath, v3, a2);
}

uint64_t sub_1001451FC(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  (__chkstk_darwin)();
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  (__chkstk_darwin)();
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  (__chkstk_darwin)();
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697ED8, &unk_10138EBA0);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150A4C;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_1016101F0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_1001459A0(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697ED0, &qword_10138EB98);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150938;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_1016101A0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_100146144(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EC8, &qword_10138EB90);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_10015092C;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_101610150;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_1001468E8(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EC0, &qword_10138EB88);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150920;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_101610100;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_10014708C(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EB8, &qword_10138EB78);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_10015090C;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_1016100B0;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_100147830(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EB0, &qword_10138EB70);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_100150900;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_101610060;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}

uint64_t sub_100147FD4(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v60 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v60);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  __chkstk_darwin(v7);
  v63 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v56 = *(v66 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v66);
  v65 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v12 = *(v64 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v64);
  v62 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  __chkstk_darwin(v14);
  v61 = v41 - v16;
  dispatch_assert_queue_V2(*(v2 + 40));
  v17 = *(v2 + 32);
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v18 = aBlock[0];
  static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EA8, &qword_10138EB68);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)();

  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = sub_1000BC488();
    v57 = *(v12 + 16);
    v58 = v24;
    v25 = *(v12 + 80);
    v41[1] = v18;
    v26 = v18 + ((v25 + 32) & ~v25);
    v55 = *(v12 + 72);
    v54 = enum case for DispatchQoS.QoSClass.default(_:);
    v53 = (v56 + 104);
    v52 = (v56 + 8);
    v51 = v7;
    v50 = (v12 + 32);
    v56 = v25;
    v49 = (v25 + 16) & ~v25;
    v48 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = v69;
    v45 += 8;
    v44 = v6;
    v43 += 8;
    v42 = a2;
    do
    {
      v27 = v61;
      v28 = v64;
      v57(v61, v26, v64);
      v29 = v65;
      v30 = v66;
      (*v53)(v65, v54, v66);
      v31 = static OS_dispatch_queue.global(qos:)();
      (*v52)(v29, v30);
      v32 = *v50;
      v33 = v62;
      (*v50)(v62, v27, v28);
      v34 = v47;
      v35 = swift_allocObject();
      v32((v35 + v49), v33, v28);
      *(v35 + v48) = v59;
      *(v35 + v34) = v42;
      v69[2] = sub_1001508F4;
      v69[3] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_100006684;
      v69[1] = &unk_101610010;
      v36 = _Block_copy(aBlock);

      v37 = v63;
      static DispatchQoS.unspecified.getter();
      v67 = &_swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v38 = v44;
      v39 = v60;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);

      (*v45)(v38, v39);
      (*v43)(v37, v51);

      v26 += v55;
      --v23;
    }

    while (v23);
  }
}