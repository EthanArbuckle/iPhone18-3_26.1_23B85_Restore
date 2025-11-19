uint64_t sub_100351ABC()
{
  v1 = v0[39];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[22];

  (*(v7 + 8))(v5, v6);
  sub_100359E10(v4, type metadata accessor for NotifyMeResponseResult);
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v12 = v0[24];
  v11 = v0[25];
  v14 = v0[19];
  v13 = v0[20];
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[45];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100351C1C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 392);
  v5 = *v1;
  v3[50] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[51] = v7;
  *v7 = v5;
  v7[1] = sub_100351DA8;
  v8 = v3[44];
  v9 = v3[43];
  v10 = v3[42];
  v11 = v3[41];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_100351DA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 408);
  v10 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
    v5 = v3[10];
    v6 = sub_1003520E4;
  }

  else
  {
    v7 = v3[50];
    v8 = v3[10];

    v6 = sub_100351ED0;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100351ED0()
{
  v1 = v0[53];
  v2 = v0[20];
  v3 = v0[13];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_100359F10, v3);
  v4 = v0[52];
  if (v1)
  {
    v6 = v0[31];
    v5 = v0[32];
    v7 = v0[30];
    v8 = v0[25];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];

    (*(v9 + 8))(v8, v10);
    sub_100359E10(v7, type metadata accessor for NotifyMeResponseResult);
    sub_100359E10(v11, type metadata accessor for NotifyWhenFoundRecord);
    v13 = v0[29];
    v12 = v0[30];
    v14 = v0[28];
    v16 = v0[24];
    v15 = v0[25];
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[18];
    v20 = v0[15];
    v21 = v0[13];
    v24 = v0[12];
    v25 = v0[11];

    v22 = v0[1];

    return v22();
  }

  else
  {

    return _swift_task_switch(sub_100352264, v4, 0);
  }
}

uint64_t sub_1003520E4()
{
  v1 = v0[50];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];

  (*(v7 + 8))(v5, v6);
  sub_100359E10(v4, type metadata accessor for NotifyMeResponseResult);
  sub_100359E10(v8, type metadata accessor for NotifyWhenFoundRecord);
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];
  v13 = v0[24];
  v12 = v0[25];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[13];
  v21 = v0[12];
  v22 = v0[11];
  v23 = v0[53];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10035228C()
{
  v1 = v0[54];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_100352384;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100352384()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  v2[57] = v0;

  v5 = v2[55];
  if (v0)
  {
    v6 = v2[32];

    v7 = sub_100352C04;
  }

  else
  {

    v7 = sub_1003524CC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1003524CC()
{
  v1 = v0[52];
  v2 = v0[13];
  v3 = v0[10];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100352554, v3, 0);
}

uint64_t sub_100352554()
{
  v69 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = type metadata accessor for TaskPriority();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  sub_1000D2A70(v1, v2, &qword_101698C00, &qword_10138B570);
  LODWORD(v2) = (*(v5 + 48))(v2, 1, v4);

  v7 = *(v0 + 88);
  if (v2 == 1)
  {
    sub_10000B3A8(*(v0 + 88), &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v5 + 8))(v7, v4);
  }

  v9 = v6[2];
  v8 = v6[3];
  swift_unknownObjectRetain();

  if (v9)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  sub_10000B3A8(*(v0 + 96), &qword_101698C00, &qword_10138B570);
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_10139D770;
  *(v13 + 24) = v6;
  sub_1000BC4D4(&unk_10169BA88, &qword_101395670);
  if (v12 | v10)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v12;
  }

  v14 = *(v0 + 240);
  v15 = *(v0 + 200);
  v16 = *(v0 + 168);
  v17 = *(v0 + 176);
  v18 = *(v0 + 160);
  swift_task_create();

  (*(v17 + 8))(v15, v16);
  sub_100359E10(v14, type metadata accessor for NotifyMeResponseResult);
  sub_100359E10(v18, type metadata accessor for NotifyWhenFoundRecord);
  v19 = *(v0 + 280) + 1;
  if (v19 == *(v0 + 272))
  {
LABEL_10:
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    v24 = *(v0 + 224);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v29 = *(v0 + 144);
    v61 = *(v0 + 120);
    v62 = *(v0 + 104);
    v64 = *(v0 + 96);
    v66 = *(v0 + 88);

    v30 = *(v0 + 8);

    return v30();
  }

  while (1)
  {
    *(v0 + 280) = v19;
    v34 = *(v0 + 256);
    if (v19 >= *(v34 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v35 = *(v0 + 240);
    v36 = *(v0 + 208);
    v37 = *(v0 + 200);
    v38 = *(v0 + 168);
    v39 = *(v0 + 176);
    sub_100034E04(v34 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 216) + 72) * v19, v35, type metadata accessor for NotifyMeResponseResult);
    v40 = *(v39 + 16);
    *(v0 + 288) = v40;
    *(v0 + 296) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v37, v35, v38);
    if (*(v35 + *(v36 + 20)))
    {
      break;
    }

    v32 = *(v0 + 240);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    v33 = v32;
LABEL_15:
    sub_100359E10(v33, type metadata accessor for NotifyMeResponseResult);
    v19 = *(v0 + 280) + 1;
    if (v19 == *(v0 + 272))
    {
      goto LABEL_10;
    }
  }

  if (*(v35 + *(v36 + 20)) == 2)
  {
    v41 = *(v0 + 264);
    sub_100034E04(*(v0 + 240), *(v0 + 232), type metadata accessor for NotifyMeResponseResult);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 232);
    v46 = *(v0 + 240);
    if (v44)
    {
      v47 = *(v0 + 224);
      v48 = *(v0 + 208);
      v49 = *(v0 + 176);
      v65 = *(v0 + 168);
      v67 = *(v0 + 200);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v68 = v51;
      *v50 = 136446210;
      sub_100034E04(v45, v47, type metadata accessor for NotifyMeResponseResult);
      v52 = String.init<A>(describing:)();
      v63 = v46;
      v54 = v53;
      sub_100359E10(v45, type metadata accessor for NotifyMeResponseResult);
      v55 = sub_1000136BC(v52, v54, &v68);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to process notify request: %{public}s", v50, 0xCu);
      sub_100007BAC(v51);

      (*(v49 + 8))(v67, v65);
      v33 = v63;
    }

    else
    {
      v56 = *(v0 + 200);
      v58 = *(v0 + 168);
      v57 = *(v0 + 176);

      sub_100359E10(v45, type metadata accessor for NotifyMeResponseResult);
      (*(v57 + 8))(v56, v58);
      v33 = v46;
    }

    goto LABEL_15;
  }

  v59 = async function pointer to daemon.getter[1];
  v60 = swift_task_alloc();
  *(v0 + 304) = v60;
  *v60 = v0;
  v60[1] = sub_100350E5C;

  return daemon.getter();
}

uint64_t sub_100352C20()
{
  v1 = v0[52];
  v2 = v0[13];
  v3 = v0[10];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100352CA8, v3, 0);
}

uint64_t sub_100352CA8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];

  (*(v5 + 8))(v3, v4);
  sub_100359E10(v2, type metadata accessor for NotifyMeResponseResult);
  sub_100359E10(v6, type metadata accessor for NotifyWhenFoundRecord);
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v11 = v0[24];
  v10 = v0[25];
  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[13];
  v19 = v0[12];
  v20 = v0[11];
  v21 = v0[57];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100352E80(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  found = type metadata accessor for NotifyWhenFoundUserNotification();
  v2[32] = found;
  v4 = *(*(found - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v2[35] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v8 = type metadata accessor for BeaconObservation();
  v2[37] = v8;
  v9 = *(v8 - 8);
  v2[38] = v9;
  v10 = *(v9 + 64) + 15;
  v2[39] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v2[40] = v11;
  v12 = *(v11 - 8);
  v2[41] = v12;
  v2[42] = *(v12 + 64);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_100353090, v1, 0);
}

uint64_t sub_100353090()
{
  v1 = v0[49];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[30];
  v5 = *(type metadata accessor for NotifyWhenFoundRecord() + 24);
  v6 = *(v3 + 16);
  v0[50] = v6;
  v0[51] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = swift_task_alloc();
  v0[52] = v7;
  *v7 = v0;
  v7[1] = sub_100353170;
  v8 = v0[49];
  v9 = v0[31];

  return sub_10034F730(v8);
}

uint64_t sub_100353170(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  *(v4 + 424) = v1;

  v7 = *(v4 + 248);
  if (v1)
  {
    v8 = sub_100355C7C;
  }

  else
  {
    *(v4 + 684) = a1 & 1;
    v8 = sub_1003532B0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003532B0()
{
  v68 = v0;
  if (*(v0 + 684))
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 400);
    v1 = *(v0 + 408);
    v3 = *(v0 + 392);
    v4 = *(v0 + 344);
    v5 = *(v0 + 320);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AC78);
    v2(v4, v3, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 392);
    v11 = *(v0 + 344);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    if (v9)
    {
      v64 = *(v0 + 392);
      v14 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v67[0] = v63;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = *(v12 + 8);
      v18(v11, v13);
      v19 = sub_1000136BC(v15, v17, v67);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Already posted local notification for beacon %{private,mask.hash}s.", v14, 0x16u);
      sub_100007BAC(v63);

      v18(v64, v13);
    }

    else
    {

      v48 = *(v12 + 8);
      v48(v11, v13);
      v48(v10, v13);
    }

    v50 = *(v0 + 384);
    v49 = *(v0 + 392);
    v52 = *(v0 + 368);
    v51 = *(v0 + 376);
    v54 = *(v0 + 352);
    v53 = *(v0 + 360);
    v55 = *(v0 + 344);
    v56 = *(v0 + 312);
    v57 = *(v0 + 288);
    v58 = *(v0 + 272);
    v66 = *(v0 + 264);

    v59 = *(v0 + 8);

    return v59();
  }

  else
  {
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 424);
    v21 = *(v0 + 408);
    v22 = *(v0 + 312);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = qword_10177B2E8;
    (*(v0 + 400))(v22, *(v0 + 392), *(v0 + 320));
    static Date.trustedNow.getter(v22 + *(v24 + 20));
    *(v22 + *(v24 + 24)) = 28;
    sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
    v26 = *(v23 + 72);
    v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    sub_100034E04(v22, v28 + v27, type metadata accessor for BeaconObservation);
    type metadata accessor for Transaction();
    v29 = swift_task_alloc();
    v29[2] = v25;
    v29[3] = v28;
    v29[4] = 0;
    v29[5] = 0;
    static Transaction.named<A>(_:with:)();

    sub_100359E10(v22, type metadata accessor for BeaconObservation);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 400);
    v30 = *(v0 + 408);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);
    v34 = *(v0 + 320);
    v35 = type metadata accessor for Logger();
    *(v0 + 432) = sub_1000076D4(v35, qword_10177AC78);
    v31(v32, v33, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 384);
    v40 = *(v0 + 320);
    v41 = *(v0 + 328);
    if (v38)
    {
      v42 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67[0] = v65;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v46 = *(v41 + 8);
      v46(v39, v40);
      v47 = sub_1000136BC(v43, v45, v67);

      *(v42 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "Showing local NWF notification for beacon %{private,mask.hash}s.", v42, 0x16u);
      sub_100007BAC(v65);
    }

    else
    {

      v46 = *(v41 + 8);
      v46(v39, v40);
    }

    *(v0 + 440) = v46;
    v61 = async function pointer to daemon.getter[1];
    v62 = swift_task_alloc();
    *(v0 + 448) = v62;
    *v62 = v0;
    v62[1] = sub_100353940;

    return daemon.getter();
  }
}

uint64_t sub_100353940(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 448);
  v12 = *v1;
  v3[57] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[58] = v6;
  v7 = type metadata accessor for Daemon();
  v3[59] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[60] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[61] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[62] = v10;
  *v6 = v12;
  v6[1] = sub_100353B3C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100353B3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = v4[31];
    v8 = sub_1003542A4;
  }

  else
  {
    v9 = v4[57];

    v4[64] = a1;
    v8 = sub_100353C78;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100353C78()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 408);
  v3 = *(v0 + 376);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  (*(v0 + 400))(v3, *(v0 + 392), v6);
  v7 = *(v5 + 80);
  *(v0 + 680) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 520) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 528) = v10;
  *(v0 + 536) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 544) = v12;
  v13 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v12 = v0;
  v12[1] = sub_100353E00;

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB694, v9, v13);
}

uint64_t sub_100353E00()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 512);
  v4 = *(*v0 + 248);
  v6 = *v0;

  return _swift_task_switch(sub_100353F50, v4, 0);
}

uint64_t sub_100353F50()
{
  v39 = v0;
  if (*(v0 + 128))
  {
    sub_10000A748((v0 + 104), v0 + 64);
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 552) = v2;
    *v2 = v0;
    v2[1] = sub_1003543C4;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 432);
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 392);
    v7 = *(v0 + 352);
    v8 = *(v0 + 320);
    sub_10000B3A8(v0 + 104, &qword_101696920, &unk_10138B200);
    v5(v7, v6, v8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 440);
    v13 = *(v0 + 392);
    v14 = *(v0 + 352);
    v16 = *(v0 + 320);
    v15 = *(v0 + 328);
    if (v11)
    {
      v36 = *(v0 + 440);
      v17 = swift_slowAlloc();
      v35 = v13;
      v18 = swift_slowAlloc();
      v38 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v36(v14, v16);
      v22 = sub_1000136BC(v19, v21, &v38);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "No beaconRecord for %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v18);

      v36(v35, v16);
    }

    else
    {

      v12(v14, v16);
      v12(v13, v16);
    }

    v24 = *(v0 + 384);
    v23 = *(v0 + 392);
    v26 = *(v0 + 368);
    v25 = *(v0 + 376);
    v28 = *(v0 + 352);
    v27 = *(v0 + 360);
    v29 = *(v0 + 344);
    v30 = *(v0 + 312);
    v31 = *(v0 + 288);
    v32 = *(v0 + 272);
    v37 = *(v0 + 264);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1003542A4()
{
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[49];
  v4 = v0[40];
  v5 = v0[41];

  v2(v3, v4);
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[46];
  v8 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v12 = v0[43];
  v13 = v0[39];
  v14 = v0[36];
  v15 = v0[34];
  v18 = v0[33];
  v19 = v0[63];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003543C4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 552);
  v5 = *v1;
  v3[70] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[71] = v7;
  *v7 = v5;
  v7[1] = sub_100354550;
  v8 = v3[62];
  v9 = v3[61];
  v10 = v3[60];
  v11 = v3[59];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_100354550(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v7 = v4[31];
    v8 = sub_100355094;
  }

  else
  {
    v9 = v4[70];

    v4[73] = a1;
    v8 = sub_10035468C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10035468C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 408);
  v5 = *(v0 + 376);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v8 = (*(v0 + 680) + 24) & ~*(v0 + 680);
  (*(v0 + 400))(v5, *(v0 + 392), v7);
  v9 = swift_allocObject();
  *(v0 + 592) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 600) = v11;
  v12 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v11 = v0;
  v11[1] = sub_1003547F8;

  return unsafeBlocking<A>(context:_:)(v0 + 224, 0xD000000000000010, 0x800000010134A8C0, sub_100358E50, v9, v12);
}

uint64_t sub_1003547F8()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 584);
  v5 = *v0;

  return _swift_task_switch(sub_100354924, v3, 0);
}

uint64_t sub_100354924()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 248);

  *(v0 + 608) = *(v0 + 224);

  return _swift_task_switch(sub_100354998, v2, 0);
}

uint64_t sub_100354998()
{
  v69 = v0;
  if (!*(v0 + 616))
  {
    v30 = *(v0 + 432);
    v31 = *(v0 + 408);
    (*(v0 + 400))(*(v0 + 360), *(v0 + 392), *(v0 + 320));
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 440);
    v36 = *(v0 + 392);
    v37 = *(v0 + 360);
    v39 = *(v0 + 320);
    v38 = *(v0 + 328);
    if (v34)
    {
      v66 = *(v0 + 440);
      v40 = swift_slowAlloc();
      v64 = v36;
      v41 = swift_slowAlloc();
      v68 = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v66(v37, v39);
      v45 = sub_1000136BC(v42, v44, &v68);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v32, v33, "Can't construct beacon name for beacon %{private,mask.hash}s.", v40, 0x16u);
      sub_100007BAC(v41);

      v66(v64, v39);
    }

    else
    {

      v35(v37, v39);
      v35(v36, v39);
    }

LABEL_12:
    sub_100007BAC((v0 + 64));
    v50 = *(v0 + 384);
    v49 = *(v0 + 392);
    v52 = *(v0 + 368);
    v51 = *(v0 + 376);
    v54 = *(v0 + 352);
    v53 = *(v0 + 360);
    v55 = *(v0 + 344);
    v56 = *(v0 + 312);
    v57 = *(v0 + 288);
    v58 = *(v0 + 272);
    v67 = *(v0 + 264);

    v59 = *(v0 + 8);

    return v59();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 272);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  sub_1000035D0((v0 + 64), v4);
  (*(v5 + 200))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 288);
    sub_10000B3A8(*(v0 + 272), &qword_1016980D0, &unk_10138F3B0);
    v7 = type metadata accessor for OwnedBeaconGroup(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 616);
    v9 = *(v0 + 608);
    v10 = *(v0 + 288);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    sub_10001F280(v0 + 64, v12 + v11[8]);
    sub_1000D2A70(v10, v12 + v11[9], &unk_1016AF8B0, &unk_1013A0700);
    *v12 = 24577;
    v13 = v12 + v11[6];
    UUID.init()();
    v14 = (v12 + v11[7]);
    *v14 = v9;
    v14[1] = v8;
    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 392);
    v65 = *(v0 + 440);
    v61 = *(v0 + 328);
    v62 = *(v0 + 320);
    v15 = *(v0 + 288);
    v16 = *(v0 + 264);
    *(v0 + 168) = *(v0 + 256);
    *(v0 + 176) = &off_1016700E8;
    v17 = sub_1000280DC((v0 + 144));
    sub_100034E04(v16, v17, type metadata accessor for NotifyWhenFoundUserNotification);
    v18 = *v17;
    v19 = objc_allocWithZone(UNUserNotificationCenter);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 initWithBundleIdentifier:v20];

    v22 = sub_10111979C(v17);
    v23 = v17 + v11[6];
    UUID.uuidString.getter();
    v24 = v22;
    v25 = String._bridgeToObjectiveC()();

    v26 = [objc_opt_self() requestWithIdentifier:v25 content:v24 trigger:0 destinations:7];

    sub_10001F280(v0 + 144, v0 + 184);
    v27 = swift_allocObject();
    sub_10000A748((v0 + 184), v27 + 16);
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    *(v0 + 48) = sub_100358EC4;
    *(v0 + 56) = v27;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10077732C;
    *(v0 + 40) = &unk_101618D58;
    v28 = _Block_copy((v0 + 16));
    v29 = *(v0 + 56);

    [v21 addNotificationRequest:v26 withCompletionHandler:v28];

    _Block_release(v28);
    sub_100007BAC((v0 + 144));
    sub_100359E10(v16, type metadata accessor for NotifyWhenFoundUserNotification);
    sub_10000B3A8(v15, &unk_1016AF8B0, &unk_1013A0700);
    v65(v63, v62);
    goto LABEL_12;
  }

  v46 = *(v0 + 536);
  (*(v0 + 528))(*(v0 + 368), *(v0 + 272), *(v0 + 320));
  v47 = async function pointer to daemon.getter[1];
  v48 = swift_task_alloc();
  *(v0 + 624) = v48;
  *v48 = v0;
  v48[1] = sub_1003551BC;

  return daemon.getter();
}

uint64_t sub_100355094()
{
  v1 = v0[70];
  v2 = v0[55];
  v3 = v0[49];
  v4 = v0[40];
  v5 = v0[41];

  v2(v3, v4);
  sub_100007BAC(v0 + 8);
  v7 = v0[48];
  v6 = v0[49];
  v9 = v0[46];
  v8 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v12 = v0[43];
  v13 = v0[39];
  v14 = v0[36];
  v15 = v0[34];
  v18 = v0[33];
  v19 = v0[72];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003551BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 624);
  v5 = *v1;
  v3[79] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[80] = v7;
  *v7 = v5;
  v7[1] = sub_100355348;
  v8 = v3[62];
  v9 = v3[61];
  v10 = v3[60];
  v11 = v3[59];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_100355348(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 640);
  v6 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {
    v7 = v4[31];
    v8 = sub_100355B30;
  }

  else
  {
    v9 = v4[79];

    v4[82] = a1;
    v8 = sub_100355484;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100355484()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 408);
  v5 = *(v0 + 376);
  v6 = *(v0 + 336);
  v7 = *(v0 + 320);
  v8 = (*(v0 + 680) + 24) & ~*(v0 + 680);
  (*(v0 + 400))(v5, *(v0 + 368), v7);
  v9 = swift_allocObject();
  *(v0 + 664) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 672) = v11;
  *v11 = v0;
  v11[1] = sub_1003555D4;
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100358ED0, v9, v13);
}

uint64_t sub_1003555D4()
{
  v1 = *(*v0 + 672);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 656);
  v4 = *(*v0 + 248);
  v6 = *v0;

  return _swift_task_switch(sub_100355724, v4, 0);
}

uint64_t sub_100355724()
{
  v1 = v0[41] + 8;
  (v0[55])(v0[46], v0[40]);
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[36];
  v5 = v0[32];
  v6 = v0[33];
  sub_10001F280((v0 + 8), v6 + v5[8]);
  sub_1000D2A70(v4, v6 + v5[9], &unk_1016AF8B0, &unk_1013A0700);
  *v6 = 24577;
  v7 = v6 + v5[6];
  UUID.init()();
  v8 = (v6 + v5[7]);
  *v8 = v3;
  v8[1] = v2;
  if (qword_101694EE0 != -1)
  {
    swift_once();
  }

  v38 = v0[49];
  v39 = v0[55];
  v36 = v0[41];
  v37 = v0[40];
  v9 = v0[36];
  v10 = v0[33];
  v0[21] = v0[32];
  v0[22] = &off_1016700E8;
  v11 = sub_1000280DC(v0 + 18);
  sub_100034E04(v10, v11, type metadata accessor for NotifyWhenFoundUserNotification);
  v12 = *v11;
  v13 = objc_allocWithZone(UNUserNotificationCenter);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithBundleIdentifier:v14];

  v16 = sub_10111979C(v11);
  v17 = v11 + v5[6];
  UUID.uuidString.getter();
  v18 = v16;
  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() requestWithIdentifier:v19 content:v18 trigger:0 destinations:7];

  sub_10001F280((v0 + 18), (v0 + 23));
  v21 = swift_allocObject();
  sub_10000A748((v0 + 23), v21 + 16);
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  v0[6] = sub_100358EC4;
  v0[7] = v21;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10077732C;
  v0[5] = &unk_101618D58;
  v22 = _Block_copy(v0 + 2);
  v23 = v0[7];

  [v15 addNotificationRequest:v20 withCompletionHandler:v22];

  _Block_release(v22);
  sub_100007BAC(v0 + 18);
  sub_100359E10(v10, type metadata accessor for NotifyWhenFoundUserNotification);
  sub_10000B3A8(v9, &unk_1016AF8B0, &unk_1013A0700);
  v39(v38, v37);
  sub_100007BAC(v0 + 8);
  v25 = v0[48];
  v24 = v0[49];
  v27 = v0[46];
  v26 = v0[47];
  v29 = v0[44];
  v28 = v0[45];
  v30 = v0[43];
  v31 = v0[39];
  v32 = v0[36];
  v33 = v0[34];
  v40 = v0[33];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100355B30()
{
  v1 = v0[79];
  v2 = v0[77];
  v3 = v0[55];
  v4 = v0[49];
  v5 = v0[46];
  v6 = v0[40];
  v7 = v0[41];

  v3(v5, v6);
  v3(v4, v6);
  sub_100007BAC(v0 + 8);
  v9 = v0[48];
  v8 = v0[49];
  v11 = v0[46];
  v10 = v0[47];
  v13 = v0[44];
  v12 = v0[45];
  v14 = v0[43];
  v15 = v0[39];
  v16 = v0[36];
  v17 = v0[34];
  v20 = v0[33];
  v21 = v0[81];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100355C7C()
{
  (*(v0[41] + 8))(v0[49], v0[40]);
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[34];
  v13 = v0[33];
  v14 = v0[53];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100355D88()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 88);
  v6 = *v0;

  return _swift_task_switch(sub_100355ED8, v4, 0);
}

uint64_t sub_100355ED8()
{
  v65 = v0;
  v1 = v0[23];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[17];
    v5 = v0[13];
    v6 = v0[10];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC78);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[17];
    v12 = v0[13];
    v13 = v0[14];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v64 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, &v64);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "No NWF record for beacon %{private,mask.hash}s. No need to publish", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v13 + 8))(v11, v12);
    }

LABEL_17:
    v52 = v0[26];
    v53 = v0[23];
    v55 = v0[20];
    v54 = v0[21];
    v57 = v0[18];
    v56 = v0[19];
    v59 = v0[16];
    v58 = v0[17];
    v60 = v0[12];

    v61 = v0[1];

    return v61();
  }

  v21 = v0[34];
  v20 = v0[35];
  v23 = v0[20];
  v22 = v0[21];
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[10];
  v27 = v0[11];
  sub_100359DA8(v1, v0[26], type metadata accessor for NotifyWhenFoundRecord);
  v21(v23, v26, v24);
  swift_beginAccess();
  v28 = sub_100DE8BCC(v22, v23);
  v29 = *(v25 + 8);
  v0[38] = v29;
  v0[39] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v22, v24);
  swift_endAccess();
  if ((v28 & 1) == 0)
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v35 = v0[34];
    v34 = v0[35];
    v36 = v0[18];
    v37 = v0[13];
    v38 = v0[10];
    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177AC78);
    v35(v36, v38, v37);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[26];
    v44 = v0[18];
    v45 = v0[13];
    if (v42)
    {
      v46 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = v63;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v62 = v43;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v29(v44, v45);
      v50 = sub_1000136BC(v47, v49, &v64);

      *(v46 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v40, v41, "Found pending force publish for beacon %{private,mask.hash}s", v46, 0x16u);
      sub_100007BAC(v63);

      v51 = v62;
    }

    else
    {

      v29(v44, v45);
      v51 = v43;
    }

    sub_100359E10(v51, type metadata accessor for NotifyWhenFoundRecord);
    goto LABEL_17;
  }

  v30 = swift_task_alloc();
  v0[40] = v30;
  *v30 = v0;
  v30[1] = sub_1003564D8;
  v31 = v0[26];
  v32 = v0[11];

  return sub_100352E80(v31);
}

uint64_t sub_1003564D8()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {
    v4 = v3[11];

    return _swift_task_switch(sub_1003582B4, v4, 0);
  }

  else
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v3[42] = v6;
    *v6 = v3;
    v6[1] = sub_100356644;

    return daemon.getter();
  }
}

uint64_t sub_100356644(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 336);
  v5 = *v1;
  v3[43] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[44] = v7;
  MyNetworkPublisherService = type metadata accessor for FindMyNetworkPublisherService();
  v9 = sub_10003A260(&unk_10169BA60, 255, type metadata accessor for FindMyNetworkPublisherService);
  *v7 = v5;
  v7[1] = sub_1003567FC;
  v10 = v3[31];
  v11 = v3[30];

  return ActorServiceDaemon.getService<A>()(v11, MyNetworkPublisherService, v10, v9);
}

uint64_t sub_1003567FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  v4[45] = a1;
  v4[46] = v1;

  if (v1)
  {
    v7 = v4[11];

    return _swift_task_switch(sub_100356B14, v7, 0);
  }

  else
  {
    v8 = v4[43];

    v9 = swift_task_alloc();
    v4[47] = v9;
    *v9 = v6;
    v9[1] = sub_100356988;

    return sub_1008EDF50(0);
  }
}

uint64_t sub_100356988(void *a1)
{
  v4 = *(*v2 + 376);
  v5 = *v2;
  v5[48] = v1;

  if (v1)
  {
    v6 = v5[11];

    return _swift_task_switch(sub_1003583A8, v6, 0);
  }

  else
  {
    v7 = v5[45];

    v5[49] = 0;
    v8 = async function pointer to daemon.getter[1];
    v9 = swift_task_alloc();
    v5[50] = v9;
    *v9 = v5;
    v9[1] = sub_100356CE0;

    return daemon.getter();
  }
}

uint64_t sub_100356B14()
{
  v1 = v0[46];
  v2 = v0[43];

  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AC78);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Force publish FMN failed. Error - %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[49] = v1;
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v0[50] = v10;
  *v10 = v0;
  v10[1] = sub_100356CE0;

  return daemon.getter();
}

uint64_t sub_100356CE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v5 = *v1;
  v3[51] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[52] = v7;
  v8 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v9 = sub_10003A260(&qword_101698D50, 255, type metadata accessor for DeviceBeaconPayloadPublisher);
  *v7 = v5;
  v7[1] = sub_100356E98;
  v10 = v3[31];
  v11 = v3[30];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100356E98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[53] = a1;
  v4[54] = v1;

  if (v1)
  {
    v7 = v4[11];
    v8 = sub_100357210;
  }

  else
  {
    v9 = v4[51];

    v8 = sub_100356FD0;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100356FD0()
{
  v1 = *(v0[53] + 136);
  v0[8] = 0xD000000000000013;
  v0[9] = 0x800000010134CBD0;
  v2 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
  v6 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_1003570E0;
  v4 = v0[53];

  return (v6)(v0 + 8, &unk_10139D750, v4, sub_100853598, 0);
}

uint64_t sub_1003570E0()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v8 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 424);

    v5 = sub_100357D2C;
  }

  else
  {
    v6 = *(v2 + 424);
    v4 = *(v2 + 88);

    v5 = sub_100357734;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100357210()
{
  v56 = v0;
  v1 = *(v0 + 408);

  v2 = *(v0 + 432);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AC78);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 392);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Force publish owned device failed. Error - %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v3, qword_10177AC78);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Force publish failed, removing pending forece publish.", v13, 2u);
  }

  v14 = *(v0 + 456);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 128);
  v18 = *(v0 + 104);
  v19 = *(v0 + 112);
  v20 = *(v0 + 80);

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v21 = *(v19 + 72);
  v22 = (v14 + 32) & ~v14;
  v23 = swift_allocObject();
  v16(v23 + v22, v20, v18);
  v16(v17, v23 + v22, v18);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v28 = *(v0 + 304);
  v27 = *(v0 + 312);
  v29 = *(v0 + 128);
  v30 = *(v0 + 104);
  if (v26)
  {
    v53 = *(v0 + 304);
    v31 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v54;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v53(v29, v30);
    v35 = sub_1000136BC(v32, v34, &v55);

    *(v31 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Removing beacon %{private,mask.hash}s from pending force publish.", v31, 0x16u);
    sub_100007BAC(v54);
  }

  else
  {

    v28(v29, v30);
  }

  v37 = *(v0 + 304);
  v36 = *(v0 + 312);
  v38 = *(v0 + 208);
  v40 = *(v0 + 96);
  v39 = *(v0 + 104);
  v41 = *(v0 + 88);
  swift_beginAccess();
  sub_1010F6584(v23 + v22, v40);
  sub_10000B3A8(v40, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  sub_100359E10(v38, type metadata accessor for NotifyWhenFoundRecord);
  swift_setDeallocating();
  v37(v23 + v22, v39);
  swift_deallocClassInstance();

  v42 = *(v0 + 208);
  v43 = *(v0 + 184);
  v45 = *(v0 + 160);
  v44 = *(v0 + 168);
  v47 = *(v0 + 144);
  v46 = *(v0 + 152);
  v49 = *(v0 + 128);
  v48 = *(v0 + 136);
  v50 = *(v0 + 96);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100357734()
{
  v70 = v0;
  if (*(v0 + 392))
  {
    v67 = *(v0 + 392);
    swift_willThrow();
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177AC78);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Force publish failed, removing pending forece publish.", v4, 2u);
    }

    v5 = *(v0 + 456);
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 80);

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v12 = *(v10 + 72);
    v13 = (v5 + 32) & ~v5;
    v14 = swift_allocObject();
    v7(v14 + v13, v11, v9);
    v7(v8, v14 + v13, v9);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 128);
    v21 = *(v0 + 104);
    if (v17)
    {
      v65 = *(v0 + 304);
      v22 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v65(v20, v21);
      v26 = sub_1000136BC(v23, v25, v69);

      *(v22 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Removing beacon %{private,mask.hash}s from pending force publish.", v22, 0x16u);
      sub_100007BAC(v66);
    }

    else
    {

      v19(v20, v21);
    }

    v49 = *(v0 + 304);
    v48 = *(v0 + 312);
    v50 = *(v0 + 208);
    v52 = *(v0 + 96);
    v51 = *(v0 + 104);
    v53 = *(v0 + 88);
    swift_beginAccess();
    sub_1010F6584(v14 + v13, v52);
    sub_10000B3A8(v52, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();
    sub_100359E10(v50, type metadata accessor for NotifyWhenFoundRecord);
    swift_setDeallocating();
    v49(v14 + v13, v51);
    swift_deallocClassInstance();
  }

  else
  {
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    v29 = *(v0 + 152);
    v30 = *(v0 + 104);
    v31 = *(v0 + 80);
    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177AC78);
    v28(v29, v31, v30);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 304);
    v37 = *(v0 + 312);
    v38 = *(v0 + 208);
    v39 = *(v0 + 152);
    v40 = *(v0 + 104);
    if (v35)
    {
      v68 = *(v0 + 208);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v69[0] = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v36(v39, v40);
      v46 = sub_1000136BC(v43, v45, v69);

      *(v41 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v33, v34, "Force publish succeeded for beacon %{private,mask.hash}s.", v41, 0x16u);
      sub_100007BAC(v42);

      v47 = v68;
    }

    else
    {

      v36(v39, v40);
      v47 = v38;
    }

    sub_100359E10(v47, type metadata accessor for NotifyWhenFoundRecord);
  }

  v54 = *(v0 + 208);
  v55 = *(v0 + 184);
  v57 = *(v0 + 160);
  v56 = *(v0 + 168);
  v59 = *(v0 + 144);
  v58 = *(v0 + 152);
  v61 = *(v0 + 128);
  v60 = *(v0 + 136);
  v62 = *(v0 + 96);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_100357D2C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100357D98, v2, 0);
}

uint64_t sub_100357D98()
{
  v55 = v0;
  v1 = *(v0 + 448);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AC78);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 392);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Force publish owned device failed. Error - %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  swift_willThrow();
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v2, qword_10177AC78);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Force publish failed, removing pending forece publish.", v12, 2u);
  }

  v13 = *(v0 + 456);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 128);
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v19 = *(v0 + 80);

  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v20 = *(v18 + 72);
  v21 = (v13 + 32) & ~v13;
  v22 = swift_allocObject();
  v15(v22 + v21, v19, v17);
  v15(v16, v22 + v21, v17);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 304);
  v26 = *(v0 + 312);
  v28 = *(v0 + 128);
  v29 = *(v0 + 104);
  if (v25)
  {
    v52 = *(v0 + 304);
    v30 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v30 = 141558275;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v52(v28, v29);
    v34 = sub_1000136BC(v31, v33, &v54);

    *(v30 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "Removing beacon %{private,mask.hash}s from pending force publish.", v30, 0x16u);
    sub_100007BAC(v53);
  }

  else
  {

    v27(v28, v29);
  }

  v36 = *(v0 + 304);
  v35 = *(v0 + 312);
  v37 = *(v0 + 208);
  v39 = *(v0 + 96);
  v38 = *(v0 + 104);
  v40 = *(v0 + 88);
  swift_beginAccess();
  sub_1010F6584(v22 + v21, v39);
  sub_10000B3A8(v39, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  sub_100359E10(v37, type metadata accessor for NotifyWhenFoundRecord);
  swift_setDeallocating();
  v36(v22 + v21, v38);
  swift_deallocClassInstance();

  v41 = *(v0 + 208);
  v42 = *(v0 + 184);
  v44 = *(v0 + 160);
  v43 = *(v0 + 168);
  v46 = *(v0 + 144);
  v45 = *(v0 + 152);
  v48 = *(v0 + 128);
  v47 = *(v0 + 136);
  v49 = *(v0 + 96);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1003582B4()
{
  sub_100359E10(v0[26], type metadata accessor for NotifyWhenFoundRecord);
  v1 = v0[41];
  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003583A8()
{
  v1 = v0[48];
  v2 = v0[45];

  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AC78);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Force publish FMN failed. Error - %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[49] = v1;
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v0[50] = v10;
  *v10 = v0;
  v10[1] = sub_100356CE0;

  return daemon.getter();
}

uint64_t sub_100358574()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  v6 = v0[20];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void *sub_1003585D4()
{
  swift_defaultActor_initialize();
  v0[14] = 0xD000000000000016;
  v0[15] = 0x800000010139D560;
  v1 = type metadata accessor for DeviceIdentityUtility();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 10;
  v0[16] = v4;
  v0[17] = 0;
  v0[19] = 0;
  v0[20] = 0;
  v0[18] = &_swiftEmptySetSingleton;
  return v0;
}

uint64_t sub_1003586C8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(found, a2);
}

uint64_t sub_100358770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, found, a4);
}

uint64_t sub_100358834(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(found, a2);
}

uint64_t sub_1003588DC()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100358978, v0, 0);
}

uint64_t sub_100358978()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v5 = sub_10003A260(&qword_10169E320, v4, type metadata accessor for NotifyWhenFoundManager);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  swift_retain_n();
  sub_10025EDD4(0, 0, v2, &unk_10139D718, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100358AB8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  found = type metadata accessor for NotifyWhenFoundManager();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(found, a2);
}

uint64_t sub_100358B60()
{
  v1 = *v0;
  type metadata accessor for NotifyWhenFoundManager();
  sub_10003A260(&unk_1016B10A0, v2, type metadata accessor for NotifyWhenFoundManager);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100358C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100329BA8(a1, v4, v5, v6);
}

uint64_t sub_100358D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100339C10(a1, v4, v5, v6);
}

uint64_t sub_100358DC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BA6C8;

  return sub_100044C20();
}

uint64_t sub_100358E50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E73E54(v4, v5, a1);
}

unint64_t sub_100358EE8()
{
  result = qword_10169E330;
  if (!qword_10169E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E330);
  }

  return result;
}

unint64_t sub_100358F3C()
{
  result = qword_10169E338;
  if (!qword_10169E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E338);
  }

  return result;
}

unint64_t sub_100358FC0()
{
  result = qword_10169E340;
  if (!qword_10169E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E340);
  }

  return result;
}

uint64_t sub_100359014@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100E74614(v4, v5, a1);
}

uint64_t sub_100359088(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

uint64_t sub_1003590D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_100338E14(a1, a2, v7, v6);
}

uint64_t sub_10035918C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100339390(a1, a2, v2);
}

uint64_t sub_100359234(uint64_t a1)
{
  v1[8] = a1;
  v3 = type metadata accessor for UUID();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v1[11] = *(v4 + 64);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10035930C, a1, 0);
}

uint64_t sub_10035930C()
{
  v1 = *(v0 + 64);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = sub_1000BC4D4(&qword_10169E390, &qword_10139D830);
  *v3 = v0;
  v3[1] = sub_1003593F8;
  v5 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100359D74, v5, v4);
}

uint64_t sub_1003593F8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100359510, v2, 0);
}

uint64_t sub_100359534()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  v0[16] = v2;
  if (v2)
  {
    v3 = v0[10];
    v0[17] = 0;
    if (*(v1 + 16))
    {
      v4 = v0[13];
      v6 = v0[8];
      v5 = v0[9];
      found = type metadata accessor for NotifyWhenFoundRecord();
      v8 = (*(*(found - 8) + 80) + 32) & ~*(*(found - 8) + 80);
      v9 = v1 + *(found + 24);
      v10 = *(v3 + 16);
      v0[18] = v10;
      v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v10(v4, v9 + v8, v5);

      return _swift_task_switch(sub_100359744, v6, 0);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_101694688 != -1)
  {
LABEL_13:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177AC78);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No Notify when found activity required.", v14, 2u);
  }

  v16 = v0[12];
  v15 = v0[13];

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_100359744()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  (*(v0 + 144))(v2, *(v0 + 104), v5);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, v2, v5);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  v11 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v10 = v0;
  v10[1] = sub_1003598A4;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v8, v11);
}

uint64_t sub_1003598A4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100359A18, 0, 0);
}

uint64_t sub_100359A18()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[15];

    sub_10000B3A8((v0 + 2), &qword_101696920, &unk_10138B200);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AC78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = "Notify when found activity updating criteria required.";
LABEL_11:
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, v6, v14, 2u);

LABEL_12:
    v16 = v0[12];
    v15 = v0[13];

    v17 = v0[1];

    return v17(v1 != 0);
  }

  v7 = v0[16];
  v8 = v0[17] + 1;
  v9 = sub_10000B3A8((v0 + 2), &qword_101696920, &unk_10138B200);
  if (v8 == v7)
  {
    v12 = v0[15];

    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177AC78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = "No Notify when found activity required.";
    goto LABEL_11;
  }

  v0[17] = v8;
  v19 = v0[15];
  if (v8 >= *(v19 + 16))
  {
    __break(1u);
  }

  else
  {
    v20 = v0[13];
    v21 = v0[9];
    v22 = v0[10];
    v23 = v0[8];
    found = type metadata accessor for NotifyWhenFoundRecord();
    v25 = v19 + ((*(*(found - 8) + 80) + 32) & ~*(*(found - 8) + 80)) + *(*(found - 8) + 72) * v8;
    v26 = *(found + 24);
    v27 = *(v22 + 16);
    v0[18] = v27;
    v0[19] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v27(v20, v25 + v26, v21);
    v9 = sub_100359744;
    v10 = v23;
    v11 = 0;
  }

  return _swift_task_switch(v9, v10, v11);
}

unint64_t sub_100359D10()
{
  result = qword_10169E388;
  if (!qword_10169E388)
  {
    sub_1000BC580(&qword_10169E380, &unk_1013B8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E388);
  }

  return result;
}

uint64_t sub_100359DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100359E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100359EB0()
{
  result = qword_10169E3A8;
  if (!qword_10169E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E3A8);
  }

  return result;
}

uint64_t sub_100359F48(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 128) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return _swift_task_switch(sub_100359F6C, 0, 0);
}

uint64_t sub_100359F6C()
{
  v1 = *(v0 + 80);
  v2 = [objc_opt_self() sharedInstance];
  [v2 isInternalBuild];

  sub_1000BC4D4(&unk_1016A62B0, &unk_10139DA70);
  v3 = *(type metadata accessor for AccessoryMetadata(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  sub_10038B278(v1, v6 + v5, type metadata accessor for AccessoryMetadata);
  if (qword_101694698 != -1)
  {
    swift_once();
  }

  v7 = qword_10177ACA8;

  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_10035A14C;
  v9 = *(v0 + 128);

  return sub_100ED2090(v6, 0, v9, v7);
}

uint64_t sub_10035A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v6 = v4[11];
  v8 = *v3;
  v5[12] = a1;

  return _swift_task_switch(sub_10035A254, 0, 0);
}

uint64_t sub_10035A254()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 48) = v1;
    *(v0 + 56) = *(v0 + 32);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v0 + 48;
    v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
    *v5 = v0;
    v5[1] = sub_10035A4DC;
    v7 = *(v0 + 72);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000023, 0x8000000101351660, sub_10038B270, v3, v6);
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177AC90);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "retrieveProductInfo: invalid parameters", v11, 2u);
    }

    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10035A4DC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_10035A66C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_10035A5F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10035A5F8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];

  sub_100016590(v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10035A66C()
{
  v1 = v0[13];

  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];

  sub_100016590(v3, v4);
  v5 = v0[15];
  v6 = v0[1];

  return v6();
}

uint64_t sub_10035A6E8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AC90);
  sub_1000076D4(v0, qword_10177AC90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10035A760()
{
  v0 = type metadata accessor for DeviceIdentityUtility();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v5 = type metadata accessor for Date();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 8;
  qword_10177ACA8 = v3;
  return result;
}

uint64_t sub_10035A818()
{
  v1 = type metadata accessor for AccessoryMetadata(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MACAddress();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryMetadataManager.Error(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10038B278(v0, v13, type metadata accessor for AccessoryMetadataManager.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        return 0x70707553746F6E2ELL;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        return 0x6176616E5574622ELL;
      }

      else
      {
        return 0x726F43617461642ELL;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      return 0x74756F656D69742ELL;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x676E697373696D2ELL;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v9, v13, v5);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v24 = 0xD000000000000028;
      v25 = 0x8000000101351B10;
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
      v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);
      v17 = v24;
      (*(v6 + 8))(v9, v5);
      return v17;
    }

    else
    {
      sub_10038BEAC(v13, v4, type metadata accessor for AccessoryMetadata);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v24 = 0xD00000000000001CLL;
      v25 = 0x8000000101351AD0;
      v21._countAndFlagsBits = sub_100230E34();
      String.append(_:)(v21);

      v22 = v24;
      sub_10038B428(v4, type metadata accessor for AccessoryMetadata);
      return v22;
    }
  }

  else
  {
    v19 = *v13;
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v24 = 0xD000000000000013;
    v25 = 0x800000010134D700;
    v23[1] = v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    return v24;
  }
}

uint64_t sub_10035AD04()
{
  v1 = v0[2];

  sub_10038B428(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info, type metadata accessor for AccessoryMetadataManager.MetadataInfo);
  v2 = *(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writeQueue);

  sub_100006654(*(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer), *(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer + 8));
  v3 = *(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8);
  sub_1000BB27C(*(v0 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_10035ADBC(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10038B3E0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[5] = &_swiftEmptySetSingleton;
  v2[6] = _swiftEmptyDictionarySingleton;
  v12 = v16;
  v2[2] = v15;
  v2[3] = v12;
  return v2;
}

uint64_t sub_10035B054()
{
  v1 = *v0;
  v2 = v0[4];
  sub_1000BC4D4(&unk_1016C7D70, &qword_1013BB580);
  OS_dispatch_queue.sync<A>(execute:)();
  return v4;
}

void sub_10035B0F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v55 = a4;
  v52 = a3;
  v56 = a2;
  v5 = type metadata accessor for MACAddress();
  *&v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_10169E8D8, &qword_10139DCA0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v53 = PassthroughSubject.init()();
  v17 = swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    v18 = *(a1 + 48);

    sub_1007723C0(v56);
    v20 = v19;

    if (v20)
    {
      v21 = v56;
      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177AC90);
      v23 = v51;
      (*(v51 + 16))(v8, v21, v5);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v57 = v27;
        *v26 = 141558275;
        *(v26 + 4) = 1752392040;
        *(v26 + 12) = 2081;
        sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v23;
        v31 = v30;
        (*(v29 + 8))(v8, v5);
        v32 = sub_1000136BC(v28, v31, &v57);

        *(v26 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v24, v25, "Existing metadata session for %{private,mask.hash}s in progress!", v26, 0x16u);
        sub_100007BAC(v27);
      }

      else
      {

        (*(v23 + 8))(v8, v5);
      }

      goto LABEL_11;
    }
  }

  v33 = *(*(*(a1 + 24) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  __chkstk_darwin(v17);
  *(&v51 - 2) = v56;
  *(&v51 - 1) = v34;
  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();
  v35 = v57;
  if (!v57)
  {
LABEL_11:
    v57 = v53;
    sub_1000041A4(&qword_10169E8E0, &qword_10169E8D8, &qword_10139DCA0);
    v50 = Publisher.eraseToAnyPublisher()();

    goto LABEL_12;
  }

  v36 = [*&v57[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = type metadata accessor for AccessoryMetadataManager.MetadataCoordinator(0);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  *(v40 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writeQueue) = _swiftEmptyArrayStorage;
  v51 = xmmword_10138BBF0;
  *(v40 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer) = xmmword_10138BBF0;
  v41 = (v40 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
  *v41 = 0;
  v41[1] = 0;
  v54 = v14;
  v42 = v53;
  *(v40 + 16) = v53;
  v43 = v40 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info;
  (*(v10 + 32))(v40 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info, v13, v9);
  v44 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
  *(v43 + v44[5]) = v51;
  v45 = (v43 + v44[6]);
  *v45 = 0;
  v45[1] = 0;
  v46 = v43 + v44[7];
  *v46 = 0;
  *(v46 + 4) = 1;
  *(v43 + v44[8]) = 0;
  swift_beginAccess();

  v47 = *(a1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *(a1 + 48);
  *(a1 + 48) = 0x8000000000000000;
  sub_100FFC714(v40, v56, isUniquelyReferenced_nonNull_native);
  *(a1 + 48) = v58;
  swift_endAccess();
  v49 = type metadata accessor for Transaction();
  __chkstk_darwin(v49);
  *(&v51 - 4) = v35;
  *(&v51 - 3) = a1;
  *(&v51 - 2) = v52;
  static Transaction.named<A>(_:with:)();
  v57 = v42;
  sub_1000041A4(&qword_10169E8E0, &qword_10169E8D8, &qword_10139DCA0);
  v50 = Publisher.eraseToAnyPublisher()();

LABEL_12:
  *v55 = v50;
}

uint64_t sub_10035B7E0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v70 - v8;
  v74 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v80 = *(v74 - 8);
  v10 = v80[8];
  __chkstk_darwin(v74);
  v79 = v70 - v11;
  v84 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v82 = *(v84 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v84);
  v81 = v70 - v13;
  v86 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v85 = *(v86 - 8);
  v14 = *(v85 + 64);
  __chkstk_darwin(v86);
  v83 = v70 - v15;
  v92 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v89 = *(v92 - 8);
  v16 = *(v89 + 64);
  __chkstk_darwin(v92);
  v87 = v70 - v17;
  v95 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v93 = *(v95 - 8);
  v18 = *(v93 + 64);
  __chkstk_darwin(v95);
  v88 = v70 - v19;
  v97 = sub_1000BC4D4(&qword_10169E870, &qword_10139DC58);
  v94 = *(v97 - 8);
  v20 = *(v94 + 64);
  __chkstk_darwin(v97);
  v90 = v70 - v21;
  v98 = sub_1000BC4D4(&qword_10169E878, &qword_10139DC60);
  v96 = *(v98 - 8);
  v22 = *(v96 + 64);
  __chkstk_darwin(v98);
  v91 = v70 - v23;
  v24 = sub_1000BC4D4(&qword_10169E880, &qword_10139DC68);
  v100 = *(v24 - 8);
  v101 = v24;
  v25 = *(v100 + 64);
  __chkstk_darwin(v24);
  v99 = v70 - v26;
  v27 = sub_1000BC4D4(&qword_10169E888, &unk_10139DC70);
  v103 = *(v27 - 8);
  v104 = v27;
  v28 = *(v103 + 64);
  __chkstk_darwin(v27);
  v102 = v70 - v29;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177AC90);
  v31 = a2;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "readMetadata peripheral: %@", v34, 0xCu);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);
  }

  v78 = Transaction.subscriptionCleaner.getter();
  v75 = a3;
  v37 = *(*(a3 + 24) + 24);
  v38 = sub_10131F050(v31, 0);
  v77 = a1;
  v110 = v38;
  v109 = *(a3 + 32);
  v39 = v109;
  v72 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = *(v72 - 8);
  v73 = *(v40 + 56);
  v108 = v40 + 56;
  v73(v9, 1, 1, v72);
  v71 = v39;
  v41 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v76 = v31;
  v106 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v42 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  v105 = sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
  v43 = v79;
  v70[2] = v41;
  v70[1] = v42;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v107 = type metadata accessor for Peripheral();
  v70[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
  v44 = v81;
  v45 = v74;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (v80[1])(v43, v45);
  v46 = v71;
  v110 = v71;
  v47 = v72;
  v48 = v73;
  v73(v9, 1, 1, v72);
  v80 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500);
  v49 = v83;
  v50 = v84;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

  (*(v82 + 8))(v44, v50);
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40);
  v51 = v87;
  v52 = v86;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v85 + 8))(v49, v52);
  v110 = v46;
  v48(v9, 1, 1, v47);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510);
  v53 = v88;
  v54 = v92;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

  (*(v89 + 8))(v51, v54);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50);
  v55 = v90;
  v56 = v95;
  Publisher.timeout(_:queue:customError:)();
  (*(v93 + 8))(v53, v56);
  sub_1000041A4(&qword_10169E8C0, &qword_10169E870, &qword_10139DC58);
  v57 = v91;
  v58 = v97;
  Publisher.compactMap<A>(_:)();
  (*(v94 + 8))(v55, v58);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v59 = v98;
  v60 = v99;
  Publishers.CompactMap.map<A>(_:)();
  (*(v96 + 8))(v57, v59);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_10169E8C8, &qword_10169E880, &qword_10139DC68);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v61 = v101;
  v62 = v102;
  Publisher.catch<A>(_:)();
  (*(v100 + 8))(v60, v61);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  v64[2] = v77;
  v64[3] = v63;
  v65 = v76;
  v66 = v78;
  v64[4] = v76;
  v64[5] = v66;
  sub_1000041A4(&qword_10169E8D0, &qword_10169E888, &unk_10139DC70);
  v67 = v65;

  swift_unknownObjectRetain();
  v68 = v104;
  Publisher<>.sink(receiveValue:)();

  (*(v103 + 8))(v62, v68);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_10035C644@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = *a1;
  v34[3] = &type metadata for BAServiceIdentifier;
  v34[4] = &off_10162CAF0;
  LOBYTE(v34[0]) = 1;
  v15 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v16 = *&v14[v15];
  v33 = v34;

  v17 = sub_1012BBDB4(sub_1001DB3F8, v32, v16);

  sub_100007BAC(v34);
  if (v17)
  {
    sub_1000BC4D4(&unk_1016A6320, &qword_1013B3CD0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 56) = &type metadata for BACharacteristicIdentifier.FindMy;
    *(v18 + 64) = &off_10162CAD0;
    *(v18 + 32) = 2;
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();

    v34[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v23 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AC90);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v31 = v10;
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No FindMy service", v28, 2u);
      v10 = v31;
    }

    v34[0] = v14;
    type metadata accessor for Peripheral();
    v29 = v14;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v8, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v23 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v13, v9);
  }

  *a2 = v23;
  return result;
}

uint64_t sub_10035CAB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_1000D2A70(a1, &v37, &unk_1016A6150, &unk_10139DB30);
  if ((v39 & 1) == 0)
  {
    v16 = v37;
    *&v36[8] = &type metadata for BAServiceIdentifier;
    *&v36[16] = &off_10162CAF0;
    LOBYTE(v35) = 1;
    v17 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
    v18 = swift_beginAccess();
    v19 = *&v16[v17];
    __chkstk_darwin(v18);
    v32 = &v35;

    v20 = sub_1012BBDB4(sub_1001DB3F8, v31, v19);

    sub_100007BAC(&v35);
    if (v20)
    {
      *&v36[8] = &type metadata for BACharacteristicIdentifier.FindMy;
      *&v36[16] = &off_10162CAD0;
      LOBYTE(v35) = 2;
      v21 = swift_beginAccess();
      v22 = *(v20 + 40);
      __chkstk_darwin(v21);
      v32 = &v35;

      v23 = sub_1012BBE10(sub_10038C458, v31, v22);

      sub_100007BAC(&v35);
      if (v23)
      {
        sub_100360CFC(v16, v23);
        sub_10036011C(v16, v23);
      }

      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000076D4(v28, qword_10177AC90);
      v25 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v25, v29, "Missing Paired Owner Characteristic!", v30, 2u);
      }
    }

    else
    {
      if (qword_101694690 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177AC90);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No FindMy service", v27, 2u);
      }
    }
  }

  v35 = v37;
  *v36 = *v38;
  *&v36[9] = *&v38[9];
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AC90);
  sub_100101AA8(&v35, v34);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136446210;
    v12 = sub_1013181BC(v11);
    v14 = v13;
    sub_100101B04(v34);
    v15 = sub_1000136BC(v12, v14, &v33);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "readMetadata failed due to %{public}s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100101B04(v34);
  }

  sub_10035FC9C(a4);

  return sub_100101B04(&v35);
}

uint64_t sub_10035CFD8(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v10 = sub_1000BC4D4(&qword_10169E840, &unk_101406170);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v15[1] = Future.init(_:)();
  sub_1000041A4(&unk_1016C7E00, &qword_10169E840, &unk_101406170);
  v13 = Publisher.eraseToAnyPublisher()();

  return v13;
}

uint64_t sub_10035D1F0(void (*a1)(char *), void (*a2)(char *), uint64_t a3, void (*a4)(void, void, void, void))
{
  v147 = a4;
  v148 = a2;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v145 = v111 - v7;
  v122 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v121 = *(v122 - 1);
  v8 = *(v121 + 64);
  __chkstk_darwin(v122);
  v120 = v111 - v9;
  v126 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v125 = *(v126 - 8);
  v10 = *(v125 + 64);
  __chkstk_darwin(v126);
  v123 = v111 - v11;
  v128 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v127 = *(v128 - 8);
  v12 = *(v127 + 64);
  __chkstk_darwin(v128);
  v124 = v111 - v13;
  v134 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v131 = *(v134 - 8);
  v14 = *(v131 + 64);
  __chkstk_darwin(v134);
  v129 = v111 - v15;
  v137 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v135 = *(v137 - 8);
  v16 = *(v135 + 64);
  __chkstk_darwin(v137);
  v130 = v111 - v17;
  v139 = sub_1000BC4D4(&qword_10169E870, &qword_10139DC58);
  v136 = *(v139 - 8);
  v18 = *(v136 + 64);
  __chkstk_darwin(v139);
  v132 = v111 - v19;
  v140 = sub_1000BC4D4(&qword_10169E878, &qword_10139DC60);
  v138 = *(v140 - 8);
  v20 = *(v138 + 64);
  __chkstk_darwin(v140);
  v133 = v111 - v21;
  v22 = sub_1000BC4D4(&qword_10169E880, &qword_10139DC68);
  v142 = *(v22 - 8);
  v143 = v22;
  v23 = *(v142 + 64);
  __chkstk_darwin(v22);
  v141 = v111 - v24;
  v25 = sub_1000BC4D4(&qword_10169E888, &unk_10139DC70);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v144 = v111 - v28;
  v29 = type metadata accessor for MACAddress();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v118 = v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v111 - v33;
  v35 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = v111 - v37;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a1(v38);
    return sub_10000B3A8(v38, &qword_10169E890, &unk_1013BB590);
  }

  v117 = v35;
  v114 = v26;
  v115 = v25;
  v146 = a1;
  v40 = *(*(*(Strong + 24) + 24) + OBJC_IVAR____TtC12searchpartyd14CentralManager_lock);
  v41 = __chkstk_darwin(Strong);
  v111[-2] = v147;
  v111[-1] = v42;
  v43 = v41;

  sub_1000BC4D4(&unk_1016A6370, &unk_101391AA0);
  Lock.callAsFunction<A>(_:)();

  v44 = aBlock[0];
  v119 = v43;
  if (!aBlock[0])
  {
    v100 = v147;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_1000076D4(v101, qword_10177AC90);
    v102 = v118;
    (*(v30 + 16))(v118, v100, v29);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      aBlock[0] = v106;
      *v105 = 141558275;
      *(v105 + 4) = 1752392040;
      *(v105 + 12) = 2081;
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      (*(v30 + 8))(v102, v29);
      v110 = sub_1000136BC(v107, v109, aBlock);

      *(v105 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v103, v104, "Unable to retrieve peripheral for %{private,mask.hash}s", v105, 0x16u);
      sub_100007BAC(v106);
    }

    else
    {

      (*(v30 + 8))(v102, v29);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v146(v38);

    return sub_10000B3A8(v38, &qword_10169E890, &unk_1013BB590);
  }

  v45 = *(v43 + 32);
  (*(v30 + 16))(v34, v147, v29);
  v46 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v47 = (v31 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v43;
  (*(v30 + 32))(v49 + v46, v34, v29);
  v50 = (v49 + v47);
  v51 = v148;
  *v50 = v146;
  v50[1] = v51;
  *(v49 + v48) = v44;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10038C160;
  *(v52 + 24) = v49;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101619680;
  v53 = _Block_copy(aBlock);

  v54 = v44;

  dispatch_sync(v45, v53);
  _Block_release(v53);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (qword_101694690 != -1)
  {
LABEL_17:
    swift_once();
  }

  v113 = v49;
  v55 = type metadata accessor for Logger();
  sub_1000076D4(v55, qword_10177AC90);
  v56 = v54;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  v59 = v56;

  if (os_log_type_enabled(v57, v58))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v60 = 138412290;
    *(v60 + 4) = v59;
    *v61 = v44;
    v62 = v59;
    _os_log_impl(&_mh_execute_header, v57, v58, "readMetadataAirTag peripheral: %@", v60, 0xCu);
    sub_10000B3A8(v61, &qword_10169BB30, &unk_10138B3C0);
  }

  v63 = *(*(v43 + 24) + 24);

  v112 = v59;
  v64 = sub_10131F050(v59, 0);

  v149 = *(v43 + 32);
  v65 = v149;
  aBlock[0] = v64;
  v116 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v66 = *(v116 - 8);
  v147 = *(v66 + 56);
  v111[4] = v66 + 56;
  v67 = v145;
  v147(v145, 1, 1, v116);
  v68 = v65;
  v69 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v111[3] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v70 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970);
  v117 = sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
  v71 = v120;
  v111[2] = v69;
  v111[1] = v70;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v67, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v118 = type metadata accessor for Peripheral();
  v111[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30);
  v72 = v123;
  v73 = v122;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v121 + 8))(v71, v73);
  v74 = v119;
  aBlock[0] = *(v119 + 32);
  v75 = aBlock[0];
  v147(v67, 1, 1, v116);
  v122 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500);
  v76 = v75;
  v77 = v124;
  v78 = v126;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v67, &unk_1016B0FE0, &unk_101391980);

  (*(v125 + 8))(v72, v78);
  static Subscribers.Demand.unlimited.getter();
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40);
  v79 = v129;
  v80 = v128;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  (*(v127 + 8))(v77, v80);
  aBlock[0] = *(v74 + 32);
  v81 = aBlock[0];
  v147(v67, 1, 1, v116);
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510);
  v82 = v81;
  v83 = v130;
  v84 = v134;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v67, &unk_1016B0FE0, &unk_101391980);

  (*(v131 + 8))(v79, v84);
  v85 = *(v74 + 32);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50);
  v86 = v132;
  v87 = v137;
  Publisher.timeout(_:queue:customError:)();
  (*(v135 + 8))(v83, v87);
  sub_1000041A4(&qword_10169E8C0, &qword_10169E870, &qword_10139DC58);
  v88 = v133;
  v89 = v139;
  Publisher.compactMap<A>(_:)();
  (*(v136 + 8))(v86, v89);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  v90 = v140;
  v91 = v141;
  Publishers.CompactMap.map<A>(_:)();
  (*(v138 + 8))(v88, v90);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_10169E8C8, &qword_10169E880, &qword_10139DC68);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80);
  v92 = v143;
  v93 = v144;
  Publisher.catch<A>(_:)();
  (*(v142 + 8))(v91, v92);
  v94 = swift_allocObject();
  v95 = v112;
  v94[2] = v74;
  v94[3] = v95;
  v96 = v148;
  v94[4] = v146;
  v94[5] = v96;
  sub_1000041A4(&qword_10169E8D0, &qword_10169E888, &unk_10139DC70);

  v97 = v95;
  v98 = v115;
  Publisher<>.sink(receiveValue:)();

  (*(v114 + 8))(v93, v98);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10035E6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  *&v54 = a3;
  v56 = a2;
  v52 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v7 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v9 = &v50 - v8;
  v10 = type metadata accessor for MACAddress();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&qword_10169E8D8, &qword_10139DCA0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v55 = PassthroughSubject.init()();
  swift_beginAccess();
  if (*(*(a1 + 48) + 16) && (v22 = *(a1 + 48), , sub_1007723C0(v56), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = v56;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177AC90);
    v27 = v51;
    (*(v51 + 16))(v13, v25, v10);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v27;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v58 = v32;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v30 + 8))(v13, v10);
      v36 = sub_1000136BC(v33, v35, &v58);

      *(v31 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "Existing metadata session for %{private,mask.hash}s in progress!", v31, 0x16u);
      sub_100007BAC(v32);
    }

    else
    {

      (*(v27 + 8))(v13, v10);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    (v54)(v9);

    return sub_10000B3A8(v9, &qword_10169E890, &unk_1013BB590);
  }

  else
  {
    v37 = [*(a5 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = type metadata accessor for AccessoryMetadataManager.MetadataCoordinator(0);
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    v41 = swift_allocObject();
    *(v41 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writeQueue) = _swiftEmptyArrayStorage;
    v54 = xmmword_10138BBF0;
    *(v41 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer) = xmmword_10138BBF0;
    v42 = (v41 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
    *v42 = 0;
    v42[1] = 0;
    *(v41 + 16) = v55;
    v43 = v41 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info;
    (*(v15 + 32))(v41 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info, v18, v14);
    v44 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
    *(v43 + v44[5]) = v54;
    v45 = (v43 + v44[6]);
    *v45 = 0;
    v45[1] = 0;
    v46 = v43 + v44[7];
    *v46 = 0;
    *(v46 + 4) = 1;
    *(v43 + v44[8]) = 0;
    swift_beginAccess();

    v47 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(a1 + 48);
    *(a1 + 48) = 0x8000000000000000;
    sub_100FFC714(v41, v56, isUniquelyReferenced_nonNull_native);
    *(a1 + 48) = v57;
    swift_endAccess();
  }
}

uint64_t sub_10035EC38@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = a2;
  v7 = (inited + 32);
  v8 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v7);
  *a3 = v8;
  return result;
}

uint64_t sub_10035ECDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = *a1;
  v34[3] = &type metadata for BAServiceIdentifier;
  v34[4] = &off_10162CAF0;
  LOBYTE(v34[0]) = 2;
  v15 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  swift_beginAccess();
  v16 = *&v14[v15];
  v33 = v34;

  v17 = sub_1012BBDB4(sub_1001DB3F8, v32, v16);

  sub_100007BAC(v34);
  if (v17)
  {
    sub_1000BC4D4(&unk_1016A6320, &qword_1013B3CD0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 56) = &type metadata for BACharacteristicIdentifier.UnauthorizedAirTag;
    *(v18 + 64) = &off_10162CAA0;
    *(v18 + 32) = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();

    v34[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90);
    v23 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AC90);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v31 = v10;
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No UT service", v28, 2u);
      v10 = v31;
    }

    v34[0] = v14;
    type metadata accessor for Peripheral();
    v29 = v14;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v5 + 8))(v8, v4);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90);
    v23 = Publisher.eraseToAnyPublisher()();
    result = (*(v10 + 8))(v13, v9);
  }

  *a2 = v23;
  return result;
}

unint64_t sub_10035F14C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_1000BC4D4(&qword_10169E890, &unk_1013BB590);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v82 - v12);
  v90 = type metadata accessor for UUID();
  v89 = *(v90 - 8);
  v14 = *(v89 + 64);
  __chkstk_darwin(v90);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessoryMetadata(0);
  v18 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, &v98, &unk_1016A6150, &unk_10139DB30);
  v93 = a3;
  if (v100)
  {
    v96 = v98;
    *v97 = *v99;
    *&v97[9] = *&v99[9];
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177AC90);
    sub_100101AA8(&v96, v95);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v92 = a4;
      v26 = v25;
      v94[0] = v25;
      *v24 = 136446210;
      v27 = sub_1013181BC(v25);
      v29 = v28;
      sub_100101B04(v95);
      v30 = sub_1000136BC(v27, v29, v94);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "readMetadata failed due to %{public}s", v24, 0xCu);
      sub_100007BAC(v26);
      a4 = v92;
    }

    else
    {

      sub_100101B04(v95);
    }

    v49 = v93;
    sub_100101B58();
    v51 = swift_allocError();
    sub_100101AA8(&v96, v52);
    *v13 = v51;
    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a4(v13);
    sub_10000B3A8(v13, &qword_10169E890, &unk_1013BB590);
    sub_100101B04(&v96);
    return sub_10035FC9C(v49);
  }

  v88 = v13;
  v31 = a2;
  v87 = a5;
  v92 = a4;
  v32 = v98;
  *&v97[8] = &type metadata for BAServiceIdentifier;
  *&v97[16] = &off_10162CAF0;
  LOBYTE(v96) = 2;
  v33 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v34 = swift_beginAccess();
  v91 = v32;
  v35 = *&v32[v33];
  __chkstk_darwin(v34);
  *(&v82 - 2) = &v96;

  v36 = sub_1012BBDB4(sub_1001DB280, (&v82 - 4), v35);

  sub_100007BAC(&v96);
  if (!v36)
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177AC90);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    v56 = os_log_type_enabled(v54, v55);
    v49 = v93;
    v57 = v92;
    v58 = v91;
    if (v56)
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "No UT service", v59, 2u);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    v60 = v88;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v57(v60);

    sub_10000B3A8(v60, &qword_10169E890, &unk_1013BB590);
    return sub_10035FC9C(v49);
  }

  v85 = v10;
  v86 = v31;
  *&v97[8] = &type metadata for BACharacteristicIdentifier.UnauthorizedAirTag;
  *&v97[16] = &off_10162CAA0;
  LOBYTE(v96) = 0;
  v37 = swift_beginAccess();
  v38 = *(v36 + 40);
  __chkstk_darwin(v37);
  *(&v82 - 2) = &v96;

  v39 = sub_1012BBE10(sub_1001DB2A0, (&v82 - 4), v38);

  sub_100007BAC(&v96);
  if (!v39)
  {
    v49 = v93;
    v43 = v88;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1000076D4(v61, qword_10177AC90);
    v45 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    v63 = os_log_type_enabled(v45, v62);
    v48 = v92;
    if (v63)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v45, v62, "Missing UT Ranging Characteristic!", v64, 2u);
    }

    goto LABEL_25;
  }

  v40 = sub_100314604(76, 21760);
  v42 = v93;
  v43 = v88;
  if (v41 >> 60 == 15)
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177AC90);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v92;
    v49 = v42;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Invalid AirTag productData", v50, 2u);
    }

LABEL_25:

    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v48(v43);

    sub_10000B3A8(v43, &qword_10169E890, &unk_1013BB590);
    return sub_10035FC9C(v49);
  }

  v65 = v41;
  v84 = v40;
  v66 = [*&v91[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject] identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10098E9DC(0x302E302E31, 0xE500000000000000);
  if ((result & 0x100000000) == 0)
  {
    v68 = result;
    v69 = result >> 16;
    v83 = result >> 24;
    v70 = v17[9];
    v71 = type metadata accessor for AirTagVersionNumber();
    (*(*(v71 - 8) + 56))(&v20[v70], 1, 1, v71);
    v72 = &v20[v17[11]];
    *v72 = 0;
    *(v72 + 1) = 0;
    v72[16] = 1;
    v73 = &v20[v17[16]];
    *v73 = 0;
    *(v73 + 1) = 0xE000000000000000;
    (*(v89 + 32))(v20, v16, v90);
    v74 = &v20[v17[5]];
    *v74 = v84;
    *(v74 + 1) = v65;
    v75 = &v20[v17[8]];
    *v75 = v68;
    v75[2] = v69;
    v75[3] = v83;
    v76 = &v20[v17[7]];
    *v76 = 0;
    *(v76 + 1) = 0;
    v77 = &v20[v17[6]];
    *v77 = 0;
    *(v77 + 1) = 0;
    v78 = &v20[v17[10]];
    *v78 = 0;
    v78[4] = 1;
    v79 = &v20[v17[12]];
    *v79 = 0;
    v79[8] = 1;
    v80 = &v20[v17[13]];
    *v80 = 257;
    v80[4] = 0;
    v20[v17[14]] = 4;
    v20[v17[15]] = 5;
    v81 = &v20[v17[17]];
    *v81 = 0;
    v81[4] = 1;
    sub_10038B278(v20, v43, type metadata accessor for AccessoryMetadata);
    swift_storeEnumTagMultiPayload();
    v92(v43);

    sub_10000B3A8(v43, &qword_10169E890, &unk_1013BB590);
    sub_10038B428(v20, type metadata accessor for AccessoryMetadata);
    v49 = v93;
    return sub_10035FC9C(v49);
  }

  __break(1u);
  return result;
}

uint64_t sub_10035FC9C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[4];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (qword_101694690 == -1)
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
  v19 = type metadata accessor for Logger();
  sub_1000076D4(v19, qword_10177AC90);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = v5;
    v24 = v4;
    v25 = v23;
    v26 = swift_slowAlloc();
    v41 = v9;
    v27 = v26;
    v44[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    sub_100A22DF0(v11);
    sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v42 + 8))(v11, v24);
    v31 = sub_1000136BC(v28, v30, v44);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, "Cleaning up for %{private,mask.hash}s", v25, 0x16u);
    sub_100007BAC(v27);
    v9 = v41;

    v4 = v24;
    v5 = v42;
  }

  sub_100A22DF0(v9);
  swift_beginAccess();
  v32 = v2[6];
  if (!*(v32 + 16))
  {
    goto LABEL_9;
  }

  v33 = v2[6];

  v34 = sub_1007723C0(v9);
  if ((v35 & 1) == 0)
  {

LABEL_9:
    (*(v5 + 8))(v9, v4);
    goto LABEL_10;
  }

  v36 = *(*(v32 + 56) + 8 * v34);
  v37 = *(v5 + 8);

  v37(v9, v4);

  v38 = *(v36 + 16);

  v43 = 1;
  PassthroughSubject.send(completion:)();

LABEL_10:
  sub_100A22DF0(v11);
  swift_beginAccess();
  sub_1001DE440(0, v11);
  swift_endAccess();
  v39 = *(v2[3] + 24);
  sub_10131FAE0(v20);
}

uint64_t sub_10036011C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v3[4];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = type metadata accessor for Transaction();
    __chkstk_darwin(v15);
    *&v16[-32] = v3;
    *&v16[-24] = a2;
    *&v16[-16] = a1;
    *&v16[-8] = v6;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003602DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v47 = a3;
  v8 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v42 - v10;
  v12 = sub_1000BC4D4(&qword_10169E800, &qword_10139DC08);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v15 = v42 - v14;
  v16 = sub_1000BC4D4(&qword_10169E808, &qword_10139DC10);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  __chkstk_darwin(v16);
  v19 = v42 - v18;
  v20 = sub_1000BC4D4(&qword_10169E810, &qword_10139DC18);
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  __chkstk_darwin(v20);
  v52 = v42 - v22;
  v23 = sub_1000BC4D4(&qword_10169E818, &unk_10139DC20);
  v56 = *(v23 - 8);
  v24 = *(v56 + 64);
  __chkstk_darwin(v23);
  v55 = v42 - v25;
  sub_10038BF14();
  BinaryDecodable.init(data:)();
  if (v4)
  {
  }

  v46 = 0;
  v45 = Transaction.subscriptionCleaner.getter();
  v57[0] = 4;
  v57[1] = 0;
  v57[2] = 0;
  v57[3] = 0x2000000000000000;
  v58 = 1;
  v59 = 0;
  v27 = sub_100361E84(v57, v47, a4);
  v42[1] = v27;
  sub_10000B3A8(v57, &qword_10169E770, &qword_10139DB98);
  v57[0] = v27;
  v60 = a2[4];
  v28 = v60;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  v42[0] = v28;
  v47 = v23;
  sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
  v44 = a1;
  v42[2] = a2;
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v43 = a4;
  sub_1000041A4(&qword_10169E7C8, &qword_10169E778, &unk_10139DBA0);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v11, &unk_1016B0FE0, &unk_101391980);

  sub_1000041A4(&qword_10169E820, &qword_10169E800, &qword_10139DC08);
  v30 = v49;
  Publisher.timeout(_:queue:customError:)();
  (*(v48 + 8))(v15, v30);
  sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
  sub_1000041A4(&qword_10169E828, &qword_10169E808, &qword_10139DC10);
  v31 = v51;
  v32 = v52;
  Publisher.map<A>(_:)();
  (*(v50 + 8))(v19, v31);
  sub_1000BC4D4(&qword_10169E7E0, &qword_10139DC00);
  sub_1000041A4(&qword_10169E830, &qword_10169E810, &qword_10139DC18);
  sub_1000041A4(&qword_10169E7F0, &qword_10169E7E0, &qword_10139DC00);
  v33 = v54;
  v34 = v55;
  Publisher.catch<A>(_:)();
  (*(v53 + 8))(v32, v33);
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v43;
  v38 = v44;
  v36[2] = v35;
  v36[3] = v38;
  v39 = v45;
  v36[4] = v37;
  v36[5] = v39;
  sub_1000041A4(&qword_10169E838, &qword_10169E818, &unk_10139DC20);

  v40 = v37;
  swift_unknownObjectRetain();
  v41 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v34, v41);
  AnyCancellable.store(in:)();
  swift_unknownObjectRelease();
}

uint64_t sub_100360A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC90);
    sub_1000D2A70(a1, v20, &qword_10169E770, &qword_10139DB98);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      sub_1000D2A70(v20, &v18, &qword_10169E770, &qword_10139DB98);
      sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
      v12 = String.init<A>(describing:)();
      v13 = a1;
      v14 = a4;
      v16 = v15;
      sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
      v17 = sub_1000136BC(v12, v16, &v19);
      a4 = v14;
      a1 = v13;

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "getProductData result: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
    }

    sub_1000D2A70(a1, v20, &qword_10169E770, &qword_10139DB98);
    if (v20[41])
    {
      sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
      sub_10035FC9C(a4);
    }

    else
    {

      return sub_10000B3A8(v20, &qword_10169E770, &qword_10139DB98);
    }
  }

  return result;
}

uint64_t sub_100360CFC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v2[4];
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = type metadata accessor for Transaction();
    __chkstk_darwin(v14);
    *&v15[-32] = a2;
    *&v15[-24] = v2;
    *&v15[-16] = a1;
    *&v15[-8] = v5;
    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100360EB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v73 = a4;
  v94 = a3;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v65 - v9;
  v11 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  __chkstk_darwin(v11);
  v74 = &v65 - v13;
  v14 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = *(v77 + 64);
  __chkstk_darwin(v14);
  v17 = &v65 - v16;
  v83 = sub_1000BC4D4(&qword_10169E798, &qword_10139DBD0);
  v81 = *(v83 - 8);
  v18 = *(v81 + 64);
  __chkstk_darwin(v83);
  v79 = &v65 - v19;
  v86 = sub_1000BC4D4(&qword_10169E7A0, &qword_10139DBD8);
  v84 = *(v86 - 8);
  v20 = *(v84 + 64);
  __chkstk_darwin(v86);
  v80 = &v65 - v21;
  v87 = sub_1000BC4D4(&qword_10169E7A8, &qword_10139DBE0);
  v85 = *(v87 - 8);
  v22 = *(v85 + 64);
  __chkstk_darwin(v87);
  v82 = &v65 - v23;
  v24 = sub_1000BC4D4(&qword_10169E7B0, &qword_10139DBE8);
  v90 = *(v24 - 8);
  v91 = v24;
  v25 = *(v90 + 64);
  __chkstk_darwin(v24);
  v89 = &v65 - v26;
  v27 = sub_1000BC4D4(&qword_10169E7B8, &unk_10139DBF0);
  v93 = *(v27 - 8);
  v28 = *(v93 + 64);
  __chkstk_darwin(v27);
  v92 = &v65 - v29;
  v30 = Transaction.subscriptionCleaner.getter();
  v31 = *(a2 + 16);
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v88 = a2;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v4)
  {
  }

  else
  {
    v71 = v27;
    v95 = *(v94 + 32);
    v33 = v95;
    v72 = 0;
    v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    v66 = v17;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v70 = a1;
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0);
    v69 = v30;
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
    v35 = v33;
    v68 = v35;
    v36 = v74;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v10, &unk_1016B0FE0, &unk_101391980);

    v37 = swift_allocObject();
    v38 = v73;
    *(v37 + 16) = v94;
    *(v37 + 24) = v38;

    v39 = v38;
    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v73 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0);
    v67 = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0);
    v40 = v66;
    v41 = v76;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v75 + 8))(v36, v41);
    v42 = swift_allocObject();
    v43 = v94;
    *(v42 + 16) = v94;
    *(v42 + 24) = v39;
    v44 = v43;

    v45 = v39;
    v76 = sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0);
    v46 = v78;
    v47 = v79;
    Publisher.map<A>(_:)();

    (*(v77 + 8))(v40, v46);
    v48 = swift_allocObject();
    v49 = v88;
    v48[2] = v44;
    v48[3] = v49;
    v48[4] = v45;

    v78 = v45;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
    sub_1000041A4(&qword_10169E7C0, &qword_10169E798, &qword_10139DBD0);
    sub_1000041A4(&qword_10169E7C8, &qword_10169E778, &unk_10139DBA0);
    v50 = v80;
    v51 = v83;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v81 + 8))(v47, v51);
    sub_1000041A4(&qword_10169E7D0, &qword_10169E7A0, &qword_10139DBD8);
    v52 = v82;
    v53 = v86;
    Publisher.timeout(_:queue:customError:)();
    (*(v84 + 8))(v50, v53);
    sub_1000041A4(&qword_10169E7D8, &qword_10169E7A8, &qword_10139DBE0);
    v54 = v89;
    v55 = v87;
    Publisher.map<A>(_:)();
    (*(v85 + 8))(v52, v55);
    sub_1000BC4D4(&qword_10169E7E0, &qword_10139DC00);
    sub_1000041A4(&qword_10169E7E8, &qword_10169E7B0, &qword_10139DBE8);
    sub_1000041A4(&qword_10169E7F0, &qword_10169E7E0, &qword_10139DC00);
    v56 = v91;
    v57 = v92;
    Publisher.catch<A>(_:)();
    (*(v90 + 8))(v54, v56);
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = swift_allocObject();
    v60 = v70;
    v59[2] = v58;
    v59[3] = v60;
    v61 = v78;
    v62 = v69;
    v59[4] = v78;
    v59[5] = v62;
    sub_1000041A4(&qword_10169E7F8, &qword_10169E7B8, &unk_10139DBF0);
    v63 = v61;

    swift_unknownObjectRetain();
    v64 = v71;
    Publisher<>.sink(receiveValue:)();

    (*(v93 + 8))(v57, v64);
    AnyCancellable.store(in:)();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100361AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 41) = 0;
  return sub_10038BE2C(v3, v2, v4, v5, v6);
}

uint64_t sub_100361B10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100101AA8(a1, v6);
  v6[41] = 1;
  sub_1000BC4D4(a2, a3);
  return Just.init(_:)();
}

uint64_t sub_100361B74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AC90);
    sub_1000D2A70(a1, v23, &qword_10169E770, &qword_10139DB98);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      sub_1000D2A70(v23, v21, &qword_10169E770, &qword_10139DB98);
      sub_1000BC4D4(&qword_10169E770, &qword_10139DB98);
      v12 = a4;
      v13 = String.init<A>(describing:)();
      v14 = a1;
      v16 = v15;
      sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
      v17 = sub_1000136BC(v13, v16, &v22);
      a1 = v14;

      *(v10 + 4) = v17;
      a4 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "didNotify result: %s", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
    }

    sub_1000D2A70(a1, v23, &qword_10169E770, &qword_10139DB98);
    if (v23[41])
    {
      sub_10035FC9C(a4);

      return sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
    }

    else
    {
      sub_10000B3A8(v23, &qword_10169E770, &qword_10139DB98);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "handleNotify success!", v20, 2u);
      }
    }
  }

  return result;
}

uint64_t sub_100361E84(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + 32);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v35, &qword_10169E770, &qword_10139DB98);
  if (v37)
  {
    v33 = v35;
    *v34 = *v36;
    *&v34[9] = *&v36[9];
    sub_100101AA8(&v33, &v31);
    v14 = swift_allocObject();
    v15 = *v32;
    v14[1] = v31;
    v14[2] = v15;
    *(v14 + 41) = *&v32[9];
    v16 = sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = Future.init(_:)();
    sub_100101B04(&v33);
    return v19;
  }

  v33 = v35;
  *v34 = *v36;
  v34[16] = v36[16];
  if (qword_101694690 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177AC90);
  sub_10038BC18(&v33, &v31);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  sub_10038BF70(&v33);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315138;
    v31 = v33;
    *v32 = *v34;
    v32[16] = v34[16];
    sub_10038BC18(&v33, v29);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000136BC(v25, v26, &v30);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Sending: %s", v23, 0xCu);
    sub_100007BAC(v24);
  }

  v19 = sub_100364B60(&v33, a2, a3);
  sub_10038BF70(&v33);
  return v19;
}

uint64_t sub_1003621E0(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  v8[0] = v5;
  v9 = 256;
  a1(v8);
  return sub_10000B3A8(v8, &qword_10169E770, &qword_10139DB98);
}

void sub_100362270(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v172 = a1;
  v173 = a3;
  v171 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
  v6 = *(*(v171 - 1) + 64);
  __chkstk_darwin(v171);
  v167 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016A62A0, &unk_101396E10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v168 = &v161 - v10;
  v166 = type metadata accessor for AccessoryMetadata(0);
  v165 = *(v166 - 8);
  v11 = *(v165 + 64);
  v12 = __chkstk_darwin(v166);
  v169 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v170 = &v161 - v14;
  v15 = type metadata accessor for MACAddress();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v161 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v4 + 32);
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  v30 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  sub_100A22DF0(v22);
  swift_beginAccess();
  v31 = *(v4 + 48);
  if (!*(v31 + 16))
  {
LABEL_17:
    v30 = *(v16 + 8);
    (v30)(v22, v15);
    if (qword_101694690 == -1)
    {
LABEL_18:
      v58 = type metadata accessor for Logger();
      sub_1000076D4(v58, qword_10177AC90);
      v59 = a2;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = v30;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v178 = v64;
        *v63 = 141558275;
        *(v63 + 4) = 1752392040;
        *(v63 + 12) = 2081;
        sub_100A22DF0(v20);
        sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        v62(v20, v15);
        v68 = sub_1000136BC(v65, v67, &v178);

        *(v63 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v60, v61, "Missing coordinator for %{private,mask.hash}s", v63, 0x16u);
        sub_100007BAC(v64);
      }

      v69 = 8;
      v55 = v173;
      goto LABEL_21;
    }

LABEL_62:
    swift_once();
    goto LABEL_18;
  }

  v32 = *(v4 + 48);

  v33 = sub_1007723C0(v22);
  if ((v34 & 1) == 0)
  {

    goto LABEL_17;
  }

  v35 = *(*(v31 + 56) + 8 * v33);
  v36 = *(v16 + 8);

  v36(v22, v15);

  v37 = v172;
  sub_1001011C0(v172, &v178);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (swift_dynamicCast())
  {
    v38 = v174[0];
    v39 = v174[1];
    v40 = v174[2];
    v41 = v175;
    LODWORD(v42) = v176;
    if (v176)
    {
      v43 = 4;
    }

    else
    {
      v43 = 0;
    }

    v44 = (v175 >> 60) & 3 | v43;
    if (v44 > 3)
    {
      if (v44 == 4)
      {
        if (qword_101694690 != -1)
        {
          swift_once();
        }

        v130 = type metadata accessor for Logger();
        sub_1000076D4(v130, qword_10177AC90);
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v178 = v134;
          *v133 = 136315138;
          v135 = sub_1010D840C(v38);
          v137 = sub_1000136BC(v135, v136, &v178);

          *(v133 + 4) = v137;
          _os_log_impl(&_mh_execute_header, v131, v132, "Received capabilities %s", v133, 0xCu);
          sub_100007BAC(v134);
        }

        v55 = v173;
        *(v35 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v171[8]) = v38;
        sub_10038BF14();
        BinaryDecodable.init(data:)();

        v157 = 0;
        v158 = 7;
        goto LABEL_57;
      }

      if (v44 == 5)
      {
        v79 = v174[0] >> 16;
        v80 = v174[0] >> 24;
        if (qword_101694690 != -1)
        {
          swift_once();
        }

        v172 = v35;
        v81 = type metadata accessor for Logger();
        sub_1000076D4(v81, qword_10177AC90);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v174[0] = v161;
          *v84 = 136315138;
          v163 = v80 << 24;
          v164 = v79 << 16;
          v162 = v38;
          v85 = (v80 << 24) | v164 | v38;
          v86 = sub_10098E010();
          v88 = v87;
          v178 = 0x756C615677617220;
          v179 = 0xEA00000000002065;
          v89 = sub_10098E0F0(v85);
          v91 = v90;
          v92 = Data.hexString.getter();
          v94 = v93;
          sub_100016590(v89, v91);
          v95._countAndFlagsBits = v92;
          v95._object = v94;
          String.append(_:)(v95);

          v96 = v178;
          v97 = v179;
          v178 = v86;
          v179 = v88;

          v98._countAndFlagsBits = v96;
          v98._object = v97;
          String.append(_:)(v98);

          v99 = sub_1000136BC(v178, v179, v174);

          *(v84 + 4) = v99;
          _os_log_impl(&_mh_execute_header, v82, v83, "Received firmwareVersion %s", v84, 0xCu);
          sub_100007BAC(v161);

          v100 = v162;
          v101 = v164;
          v102 = v163;
        }

        else
        {

          v100 = v38;
          v101 = v79 << 16;
          v102 = v80 << 24;
        }

        v138 = v172;
        v139 = v169;
        v140 = v168;
        v141 = v167;
        v142 = v166;
        v143 = v165;
        v144 = v100 | v101 | v102;
        v145 = v172 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info;
        v146 = v172 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v171[7];
        *v146 = v144;
        *(v146 + 4) = 0;
        sub_10038B278(v145, v141, type metadata accessor for AccessoryMetadataManager.MetadataInfo);
        sub_1003635A8(v141, v140);
        if ((*(v143 + 48))(v140, 1, v142) == 1)
        {

          sub_10000B3A8(v140, &qword_1016A62A0, &unk_101396E10);
          v55 = v173;
        }

        else
        {
          v147 = v140;
          v148 = v170;
          sub_10038BEAC(v147, v170, type metadata accessor for AccessoryMetadata);
          sub_10038B278(v148, v139, type metadata accessor for AccessoryMetadata);
          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v178 = v152;
            *v151 = 136315138;
            v153 = sub_100230E34();
            v155 = v154;
            sub_10038B428(v139, type metadata accessor for AccessoryMetadata);
            v156 = sub_1000136BC(v153, v155, &v178);

            *(v151 + 4) = v156;
            _os_log_impl(&_mh_execute_header, v149, v150, "AccessoryMetadata %s", v151, 0xCu);
            sub_100007BAC(v152);
          }

          else
          {

            sub_10038B428(v139, type metadata accessor for AccessoryMetadata);
          }

          v55 = v173;
          v159 = *(v138 + 16);

          v160 = v170;
          PassthroughSubject.send(_:)();

          sub_10038B428(v160, type metadata accessor for AccessoryMetadata);
        }

        *(v55 + 32) = 0;
        *v55 = 0u;
        *(v55 + 16) = 0u;
        goto LABEL_22;
      }
    }

    else
    {
      if (v44 == 2)
      {
        if (qword_101694690 != -1)
        {
          swift_once();
        }

        v117 = type metadata accessor for Logger();
        sub_1000076D4(v117, qword_10177AC90);
        sub_100017D5C(v38, v39);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.default.getter();
        sub_10038BCE4(v38, v39, v40, v41, v42);
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v178 = v121;
          *v120 = 136315138;
          v122 = sub_100313D58(v38, v39);
          v172 = v40;
          v124 = sub_1000136BC(v122, v123, &v178);
          LODWORD(v170) = v119;
          v125 = v38;
          v126 = v42;
          v42 = v124;
          v40 = v172;

          *(v120 + 4) = v42;
          LOBYTE(v42) = v126;
          v38 = v125;
          _os_log_impl(&_mh_execute_header, v118, v170, "Received productData %s", v120, 0xCu);
          sub_100007BAC(v121);
        }

        v55 = v173;
        v127 = (v35 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v171[5]);
        v128 = *v127;
        v129 = v127[1];
        *v127 = v38;
        v127[1] = v39;
        sub_100017D5C(v38, v39);
        sub_100006654(v128, v129);
        sub_10038BF14();
        BinaryDecodable.init(data:)();

        sub_10038BCE4(v38, v39, v40, v41, v42);
        v157 = 0;
        v158 = 5;
        goto LABEL_57;
      }

      if (v44 == 3)
      {
        v45 = qword_101694690;

        if (v45 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_1000076D4(v46, qword_10177AC90);

        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        sub_10038BCE4(v38, v39, v40, v41, v42);
        v49 = os_log_type_enabled(v47, v48);
        v172 = v40;
        if (v49)
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v178 = v51;
          *v50 = 136315138;

          v52 = sub_1000136BC(v38, v39, &v178);
          v53 = v40;
          v54 = v52;
          sub_10038BCE4(v38, v39, v53, v41, v42);
          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v47, v48, "Received modelName %s", v50, 0xCu);
          sub_100007BAC(v51);
        }

        v55 = v173;
        v56 = (v35 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_info + v171[6]);
        v57 = v56[1];
        *v56 = v38;
        v56[1] = v39;

        sub_10038BF14();
        BinaryDecodable.init(data:)();

        sub_10038BCE4(v38, v39, v172, v41, v42);
        v157 = 0;
        v158 = 6;
LABEL_57:
        *v55 = v158;
        *(v55 + 8) = 0;
        *(v55 + 16) = 0;
        *(v55 + 24) = 0x2000000000000000;
        *(v55 + 32) = 1;
        goto LABEL_23;
      }
    }

    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_1000076D4(v103, qword_10177AC90);
    sub_10038BE2C(v38, v39, v40, v41, v42);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    sub_10038BCE4(v38, v39, v40, v41, v42);
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v174[0] = v107;
      *v106 = 136315138;
      v178 = v38;
      v179 = v39;
      v180 = v40;
      v181 = v41;
      v182 = v42;
      sub_10038BE2C(v38, v39, v40, v41, v42);
      v108 = String.init<A>(describing:)();
      v172 = v40;
      v110 = sub_1000136BC(v108, v109, v174);
      LODWORD(v171) = v42;
      v111 = v110;

      *(v106 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v104, v105, "Unexpected command %s", v106, 0xCu);
      sub_100007BAC(v107);

      v112 = v38;
      v113 = v39;
      v114 = v172;
      v115 = v41;
      v116 = v171;
    }

    else
    {

      v112 = v38;
      v113 = v39;
      v114 = v40;
      v115 = v41;
      v116 = v42;
    }

    sub_10038BCE4(v112, v113, v114, v115, v116);
    v55 = v173;
    v69 = 10;
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177AC90);
    sub_1001011C0(v37, &v178);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v177 = v74;
      *v73 = 136315138;
      sub_1001011C0(&v178, v174);
      v75 = String.init<A>(describing:)();
      v77 = v76;
      sub_100007BAC(&v178);
      v78 = sub_1000136BC(v75, v77, &v177);

      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v71, v72, "Invalid command from payload %s", v73, 0xCu);
      sub_100007BAC(v74);
    }

    else
    {

      sub_100007BAC(&v178);
    }

    v55 = v173;
    v69 = 14;
  }

LABEL_21:
  *v55 = v69;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
LABEL_22:
  *(v55 + 40) = 11;
  v157 = 1;
LABEL_23:
  *(v55 + 41) = v157;
}

unint64_t sub_1003635A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryMetadata(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 36);
  v11 = type metadata accessor for AirTagVersionNumber();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = &v9[v4[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v9[v4[16]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = type metadata accessor for AccessoryMetadataManager.MetadataInfo(0);
  v15 = (a1 + v14[5]);
  v16 = v15[1];
  if (v16 >> 60 == 15 || (v17 = (a1 + v14[6]), (v18 = v17[1]) == 0) || (v19 = a1 + v14[7], (*(v19 + 4) & 1) != 0))
  {
    sub_10038B428(a1, type metadata accessor for AccessoryMetadataManager.MetadataInfo);
    sub_10000B3A8(&v9[v10], &qword_10169A0C0, &unk_10139DBB0);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  else
  {
    v35 = v14;
    v21 = *v15;
    v37 = *v17;
    v22 = *v19;
    v23 = HIWORD(*v19);
    v36 = HIBYTE(*v19);
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 16))(v9, a1, v24);
    v25 = &v9[v4[5]];
    *v25 = v21;
    v25[1] = v16;
    v26 = &v9[v4[8]];
    *v26 = v22;
    v26[2] = v23;
    v26[3] = v36;
    v27 = &v9[v4[7]];
    *v27 = v37;
    *(v27 + 1) = v18;
    v28 = &v9[v4[6]];
    *v28 = 0;
    *(v28 + 1) = 0;
    sub_10002E98C(v21, v16);

    result = sub_10098E9DC(0x302E302E31, 0xE500000000000000);
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v29 = &v9[v4[10]];
      *v29 = result;
      v29[4] = 0;
      v30 = &v9[v4[12]];
      *v30 = 0;
      v30[8] = 1;
      v31 = *(a1 + v35[8]);
      sub_10038B428(a1, type metadata accessor for AccessoryMetadataManager.MetadataInfo);
      v32 = &v9[v4[13]];
      *v32 = v31;
      v32[4] = 0;
      v9[v4[14]] = 4;
      v9[v4[15]] = 5;
      v33 = &v9[v4[17]];
      *v33 = 0;
      v33[4] = 1;
      sub_10038B278(v9, a2, type metadata accessor for AccessoryMetadata);
      (*(v5 + 56))(a2, 0, 1, v4);
      return sub_10038B428(v9, type metadata accessor for AccessoryMetadata);
    }
  }

  return result;
}

uint64_t sub_100363918(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v4[4];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (qword_101694690 == -1)
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
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177AC90);
  sub_100017D5C(a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v17, v18))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = a3;
    v27[4] = a1;
    v27[5] = a2;
    v27[6] = v8;
    v28 = sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    v31 = a3;
    return Future.init(_:)();
  }

  result = swift_slowAlloc();
  *result = 134349056;
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v21 = 0;
      goto LABEL_15;
    }

    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v24 = __OFSUB__(v22, v23);
    v21 = v22 - v23;
    if (!v24)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = BYTE6(a2);
LABEL_15:
    *(result + 4) = v21;
    v25 = result;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v17, v18, "didNotify data length %{public}ld", v25, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v21) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v21 = v21;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100363C34(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  v120 = a6;
  v121 = a5;
  v116 = type metadata accessor for BinaryDecodingError();
  v114 = *(v116 - 8);
  v9 = *(v114 + 64);
  __chkstk_darwin(v116);
  v115 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for BinaryDecoder();
  v111 = *(v112 - 8);
  v11 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Bit();
  v119 = *(v117 - 8);
  v13 = *(v119 + 64);
  v14 = __chkstk_darwin(v117);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v106 - v17;
  v18 = type metadata accessor for MACAddress();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v106 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    memset(v125, 0, sizeof(v125));
    LOBYTE(v126) = 11;
    v127 = 1;
    a1(v125);
    return sub_10000B3A8(v125, &qword_101699380, &unk_1013918F0);
  }

  v27 = Strong;
  sub_100A22DF0(v25);
  swift_beginAccess();
  v28 = *(v27 + 48);
  v29 = *(v28 + 16);
  v118 = v27;
  if (!v29)
  {
LABEL_19:
    v121 = a2;
    v120 = *(v19 + 8);
    v120(v25, v18);
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_1000076D4(v72, qword_10177AC90);
    v73 = a4;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v125 = v77;
      *v76 = 141558275;
      *(v76 + 4) = 1752392040;
      *(v76 + 12) = 2081;
      sub_100A22DF0(v23);
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = a1;
      v81 = v80;
      v120(v23, v18);
      v82 = sub_1000136BC(v78, v81, v125);
      a1 = v79;

      *(v76 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v74, v75, "Missing coordinator for %{private,mask.hash}s", v76, 0x16u);
      sub_100007BAC(v77);
    }

    *v125 = 8;
    memset(&v125[8], 0, 32);
    LOBYTE(v126) = 11;
    v127 = 1;
    a1(v125);

    return sub_10000B3A8(v125, &qword_101699380, &unk_1013918F0);
  }

  v30 = sub_1007723C0(v25);
  if ((v31 & 1) == 0)
  {

    goto LABEL_19;
  }

  v32 = *(*(v28 + 56) + 8 * v30);
  v33 = *(v19 + 8);

  v33(v25, v18);

  v34 = (v32 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer);
  v35 = *(v32 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer);
  v36 = *(v32 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer + 8);
  if (v36 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v32 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer);
  }

  v38 = 0xC000000000000000;
  if (v36 >> 60 != 15)
  {
    v38 = *(v32 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_readBuffer + 8);
  }

  v123 = v37;
  v124 = v38;
  sub_10002E98C(v35, v36);
  v39 = v121;
  v40 = v120;
  sub_100017D5C(v121, v120);
  sub_100ED428C(1, v39, v40, v125);
  v41 = *v125;
  Data.append(_:)();
  sub_100016590(v41, *(&v41 + 1));
  v42 = v123;
  v43 = v124;
  v44 = *v34;
  v45 = v34[1];
  *v34 = v123;
  v34[1] = v43;
  v108 = v34;
  sub_100017D5C(v42, v43);
  sub_100006654(v44, v45);
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  v109 = sub_1000076D4(v46, qword_10177AC90);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v106 = v49;
    v107 = swift_slowAlloc();
    *v125 = v107;
    *v49 = 136315138;
    swift_beginAccess();
    v50 = v32;
    v52 = v123;
    v51 = v124;
    sub_100017D5C(v123, v124);
    v53 = Data.description.getter();
    v54 = a1;
    v56 = v55;
    v57 = v52;
    v32 = v50;
    sub_100016590(v57, v51);
    v58 = sub_1000136BC(v53, v56, v125);
    a1 = v54;
    v40 = v120;

    v59 = v106;
    *(v106 + 1) = v58;
    _os_log_impl(&_mh_execute_header, v47, v48, "localReadBuffer %s", v59, 0xCu);
    sub_100007BAC(v107);
  }

  v60 = v117;
  v61 = v119;
  v62 = v121;
  v63 = sub_100017C08(v121, v40);
  if ((v63 & 0x100) != 0)
  {
    goto LABEL_25;
  }

  v125[0] = v63;
  sub_1000198E8();
  v64 = FixedWidthInteger.bits()();
  if (!*(v64 + 16))
  {

LABEL_25:
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v83 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100016590(v123, v124);
    v84 = v116;
    goto LABEL_26;
  }

  v107 = v32;
  (*(v61 + 16))(v113, v64 + ((*(v61 + 80) + 32) & ~*(v61 + 80)), v60);

  (*(v61 + 104))(v16, enum case for Bit.one(_:), v60);
  sub_10038B3E0(&qword_101698660, &type metadata accessor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v67 = *(v61 + 8);
  v65 = v61 + 8;
  v66 = v67;
  (v67)(v16, v60);
  if (v125[0] == v122)
  {
    v106 = v66;
    v119 = v65;
    v68 = v110;
    BinaryDecoder.init()();
    swift_beginAccess();
    v70 = v123;
    v69 = v124;
    sub_100017D5C(v123, v124);
    v71 = sub_10038BDD8();
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v70, v69);
    v100 = *v125;
    v101 = *&v125[16];
    LOBYTE(v70) = v125[32];
    v102 = *v108;
    v103 = v108[1];
    *v108 = xmmword_10138BBF0;
    sub_100006654(v102, v103);
    *&v125[24] = &type metadata for AccessoryNonOwnerCommand;
    *&v125[32] = v71;
    v126 = sub_10038BD74();
    v104 = swift_allocObject();
    *v125 = v104;
    *(v104 + 16) = v100;
    *(v104 + 32) = v101;
    *(v104 + 48) = v70;
    v127 = 0;
    sub_10038BE2C(v100, *(&v100 + 1), v101, *(&v101 + 1), v70);
    a1(v125);

    sub_10038BCE4(v100, *(&v100 + 1), v101, *(&v101 + 1), v70);
    (*(v111 + 8))(v68, v112);
    (v106)(v113, v117);
    sub_10000B3A8(v125, &qword_101699380, &unk_1013918F0);
    return sub_100016590(v123, v124);
  }

  sub_10038B3E0(&qword_101696E30, &type metadata accessor for BinaryDecodingError);
  v84 = v116;
  v83 = swift_allocError();
  (*(v114 + 104))(v99, enum case for BinaryDecodingError.insufficientData(_:), v84);
  swift_willThrow();
  (v66)(v113, v60);
  sub_100016590(v123, v124);
LABEL_26:
  *v125 = v83;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v85 = v115;
  if (!swift_dynamicCast())
  {
LABEL_32:

    sub_100017D5C(v62, v40);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.info.getter();
    sub_100016590(v62, v40);
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *v125 = v93;
      *v92 = 136315138;
      v94 = Data.hexString.getter();
      v96 = sub_1000136BC(v94, v95, v125);

      *(v92 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v90, v91, "Failed to decode data %s", v92, 0xCu);
      sub_100007BAC(v93);
    }

    v97 = *v108;
    v98 = v108[1];
    *v108 = xmmword_10138BBF0;
    sub_100006654(v97, v98);
    *v125 = v83;
    LOBYTE(v126) = 10;
    v127 = 1;
    swift_errorRetain();
    a1(v125);

    return sub_10000B3A8(v125, &qword_101699380, &unk_1013918F0);
  }

  v86 = v114;
  if ((*(v114 + 88))(v85, v84) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v86 + 8))(v85, v84);
    goto LABEL_32;
  }

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "insufficientData. Keep reading...", v89, 2u);
  }
}

uint64_t sub_100364B60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(v3 + 32);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a3;
    v17 = *(a1 + 16);
    *(v16 + 32) = *a1;
    *(v16 + 48) = v17;
    *(v16 + 64) = *(a1 + 32);
    *(v16 + 72) = a2;
    v18 = sub_1000BC4D4(&qword_10169E778, &unk_10139DBA0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = a3;
    sub_10038BC18(a1, v23);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100364D30(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v9 = type metadata accessor for BinaryEncoder();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v52 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v56 = a2;
    sub_100A22DF0(v20);
    swift_beginAccess();
    v23 = *(v22 + 48);
    if (*(v23 + 16))
    {
      v24 = *(v22 + 48);

      v25 = sub_1007723C0(v20);
      if (v26)
      {
        v27 = *(*(v23 + 56) + 8 * v25);
        v28 = *(v14 + 8);

        v28(v20, v13);

        v29 = (v27 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
        v30 = *(v27 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
        v31 = *(v27 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8);
        v32 = v56;
        *v29 = a1;
        v29[1] = v32;

        sub_1000BB27C(v30);
        BinaryEncoder.init()();
        v33 = v53;
        v34 = *(v53 + 16);
        *v57 = *v53;
        *&v57[16] = v34;
        v57[32] = *(v53 + 32);
        sub_10038BD74();
        v46 = BinaryEncoder.encode<A>(_:)();
        v48 = v47;
        v49 = Data.chunked(into:)();
        v50 = sub_1001D97CC(v49);

        swift_beginAccess();
        sub_100398324(v50);
        swift_endAccess();
        sub_100365428(v52, v33, a4);
        sub_100016590(v46, v48);

        return (*(v54 + 8))(v12, v55);
      }
    }

    v54 = v22;
    v55 = a1;
    v35 = *(v14 + 8);
    v35(v20, v13);
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177AC90);
    v37 = a4;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v57 = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      sub_100A22DF0(v18);
      sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v35(v18, v13);
      v45 = sub_1000136BC(v42, v44, v57);

      *(v40 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Missing coordinator for %{private,mask.hash}s", v40, 0x16u);
      sub_100007BAC(v41);
    }

    *v57 = 8;
    memset(&v57[8], 0, 32);
    v58 = 267;
    v55(v57);
  }

  else
  {
    memset(v57, 0, sizeof(v57));
    v58 = 267;
    a1(v57);
  }

  return sub_10000B3A8(v57, &qword_10169E770, &qword_10139DB98);
}

void sub_100365428(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v105 = a2;
  v110 = a1;
  v109 = type metadata accessor for DispatchTime();
  v108 = *(v109 - 8);
  isa = v108[8].isa;
  v7 = __chkstk_darwin(v109);
  v106 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v107 = &v98 - v9;
  v10 = type metadata accessor for MACAddress();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v98 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v4 + 32);
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  sub_100A22DF0(v17);
  swift_beginAccess();
  v25 = *(v4 + 48);
  if (!*(v25 + 16))
  {
LABEL_17:
    v22 = *(v11 + 8);
    (v22)(v17, v10);
    if (qword_101694690 == -1)
    {
LABEL_18:
      v68 = type metadata accessor for Logger();
      sub_1000076D4(v68, qword_10177AC90);
      v69 = a3;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v116 = v73;
        *v72 = 141558275;
        *(v72 + 4) = 1752392040;
        *(v72 + 12) = 2081;
        sub_100A22DF0(v15);
        sub_10038B3E0(&qword_1016A4210, &type metadata accessor for MACAddress);
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v75;
        (v22)(v15, v10);
        v77 = sub_1000136BC(v74, v76, &v116);

        *(v72 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v70, v71, "Missing coordinator for %{private,mask.hash}s", v72, 0x16u);
        sub_100007BAC(v73);
      }

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_18;
  }

  v26 = *(v4 + 48);

  v27 = sub_1007723C0(v17);
  if ((v28 & 1) == 0)
  {

    goto LABEL_17;
  }

  v29 = *(*(v25 + 56) + 8 * v27);
  v30 = *(v11 + 8);

  v30(v17, v10);

  v31 = OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writeQueue;
  swift_beginAccess();
  v32 = *(v29 + v31);
  if (v32[2])
  {
    swift_beginAccess();
    v33 = v32[4];
    v34 = v32[5];
    sub_100017D5C(v33, v34);
    v99 = v31;
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    v36 = sub_1000076D4(v35, qword_10177AC90);
    sub_100017D5C(v33, v34);
    v101 = v36;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    sub_100016590(v33, v34);
    v39 = os_log_type_enabled(v37, v38);
    v103 = v34;
    v104 = v33;
    v100 = a3;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v116 = v41;
      *v40 = 136315138;
      sub_100017D5C(v104, v34);
      v42 = Data.description.getter();
      v44 = v43;
      sub_100016590(v104, v103);
      v45 = sub_1000136BC(v42, v44, &v116);

      *(v40 + 4) = v45;
      v34 = v103;
      _os_log_impl(&_mh_execute_header, v37, v38, "processQueuedUpdates: writing %s.", v40, 0xCu);
      sub_100007BAC(v41);
      v33 = v104;
    }

    v46 = swift_allocObject();
    *(v46 + 16) = 0u;
    v47 = v46 + 16;
    *(v46 + 32) = 0u;
    *(v46 + 48) = 0;
    *(v46 + 56) = 267;
    v48 = dispatch_group_create();
    dispatch_group_enter(v48);
    *&v116 = sub_100A59B98(v33, v34);
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    *(v49 + 24) = v48;
    v102 = v46;

    v50 = v48;
    sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
    sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
    Publisher.oneshot(_:)();

    v51 = v106;
    static DispatchTime.now()();
    v52 = v107;
    + infix(_:_:)();
    v53 = v108[1].isa;
    v54 = v109;
    v53(v51, v109);
    v108 = v50;
    OS_dispatch_group.wait(timeout:)();
    v53(v52, v54);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Timed out waiting for writeFuture", v57, 2u);
      }
    }

    swift_beginAccess();
    sub_1000D2A70(v47, &v116, &qword_1016B1CA0, &qword_1013918C0);
    if (v118)
    {
      v114 = v116;
      v115[0] = *v117;
      *(v115 + 9) = *&v117[9];
      sub_100101AA8(&v114, v112);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v103;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v111 = v63;
        *v62 = 136446210;
        v64 = sub_1013181BC();
        v66 = v65;
        sub_100101B04(v112);
        v67 = sub_1000136BC(v64, v66, &v111);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v58, v59, "writeFuture error: %{public}s", v62, 0xCu);
        sub_100007BAC(v63);
      }

      else
      {

        sub_100101B04(v112);
      }

      v93 = *(v29 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
      if (v93)
      {
        v94 = *(v29 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8);
        sub_100101B58();
        v95 = swift_allocError();
        sub_100101AA8(&v114, v96);
        v112[0] = v95;
        v113 = 256;

        v93(v112);
        sub_1000BB27C(v93);

        sub_100016590(v104, v61);
        sub_10000B3A8(v112, &qword_10169E770, &qword_10139DB98);
      }

      else
      {
        sub_100016590(v104, v61);
      }

      sub_100101B04(&v114);
    }

    else
    {

      v82 = Logger.logObject.getter();
      v83 = v29;
      v84 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v82, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v112[0] = v86;
        *v85 = 134218242;
        v87 = v99;
        *(v85 + 4) = *(*(v83 + v99) + 16);

        *(v85 + 12) = 2080;
        v88 = *(v83 + v87);

        v89 = Array.description.getter();
        v91 = v90;

        v92 = sub_1000136BC(v89, v91, v112);

        *(v85 + 14) = v92;
        _os_log_impl(&_mh_execute_header, v82, v84, "writeFuture success. writeQueue [%ld] %s", v85, 0x16u);
        sub_100007BAC(v86);
      }

      else
      {
      }

      v97 = v104;
      sub_100365428(v110, v105, v100);

      sub_100016590(v97, v103);
    }
  }

  else
  {
    v78 = *(v29 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise);
    if (v78)
    {
      v79 = *(v29 + OBJC_IVAR____TtCC12searchpartyd24AccessoryMetadataManagerP33_9E4B9D7C2AC40BB201ED52E047F00DA919MetadataCoordinator_writePromise + 8);
      v80 = v105;
      v81 = *(v105 + 16);
      v116 = *v105;
      *v117 = v81;
      v117[16] = *(v105 + 32);
      v118 = 0;
      sub_100012908(v78);
      sub_10038BC18(v80, v112);
      v78(&v116);
      sub_1000BB27C(v78);

      sub_10000B3A8(&v116, &qword_10169E770, &qword_10139DB98);
      return;
    }
  }
}

void sub_10036611C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  sub_10038BC74(a1, a2 + 16);
  dispatch_group_leave(a3);
}

uint64_t sub_10036617C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_100366220()
{
  result = type metadata accessor for AccessoryMetadataManager.MetadataInfo(319);
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

void sub_100366328()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &unk_10169E6F0);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016BD350);
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169A138);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100366414(uint64_t a1)
{
  sub_1000D2A70(a1, &v8, &unk_1016A6150, &unk_10139DB30);
  if ((v10 & 1) == 0)
  {
    return sub_10000B3A8(&v8, &unk_1016A6150, &unk_10139DB30);
  }

  v6 = v8;
  *v7 = *v9;
  *&v7[9] = *&v9[9];
  sub_100101B58();
  swift_willThrowTypedImpl();
  v1 = swift_allocError();
  *v2 = v6;
  v2[1] = *v7;
  *(v2 + 25) = *&v7[9];
  *&v8 = v1;
  swift_errorRetain();
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  swift_willThrowTypedImpl();
  static os_log_type_t.error.getter();
  if (qword_1016950B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = _convertErrorToNSError(_:)();
  *(v3 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
  *(v3 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr);
  *(v3 + 32) = v4;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100366634(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 3;
  *(v4 + 32) = v3;
  v5 = sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_1003666F4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = v6;
  v8 = sub_1000BC4D4(&qword_1016C7CE0, &unk_10139DA90);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_1003667B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a1;
  *(v15 + 56) = a2;
  *(v15 + 64) = a5;

  sub_10025EDD4(0, 0, v13, &unk_10139DAA8, v15);
}

uint64_t sub_1003668F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 128) = a5;
  *(v7 + 16) = a4;
  v8 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  *(v7 + 40) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  v10 = *(type metadata accessor for AccessoryMetadata(0) - 8);
  *(v7 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v13 = *(*(type metadata accessor for AccessoryInfoEndPoint() - 8) + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100366A68, 0, 0);
}

uint64_t sub_100366A68()
{
  v1 = *(v0 + 16);
  v2 = qword_101694698;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_10177ACA8;

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_100366B6C;
  v5 = *(v0 + 16);
  v6 = *(v0 + 128);

  return (sub_100ED2090)(v5, 0, v6, v3);
}

uint64_t sub_100366B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 96);
  v7 = *v3;
  v4[13] = a1;
  v4[14] = a2;
  v4[15] = a3;

  return _swift_task_switch(sub_100366C70, 0, 0);
}

uint64_t sub_100366C70()
{
  v60 = v0;
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v2 + 16);
    v55 = *(v0 + 104);
    if (v3)
    {
      v4 = *(v0 + 56);
      v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = *(v4 + 72);
      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      do
      {
        if (p_weak_ivar_lyt[210] != -1)
        {
          swift_once();
        }

        v8 = *(v0 + 64);
        v9 = type metadata accessor for Logger();
        sub_1000076D4(v9, qword_10177AC90);
        sub_10038B278(v5, v8, type metadata accessor for AccessoryMetadata);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();
        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 64);
        if (v12)
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v59 = v15;
          *v14 = 136315138;
          v16 = p_weak_ivar_lyt;
          v17 = sub_100230E34();
          v19 = v18;
          sub_10038B428(v13, type metadata accessor for AccessoryMetadata);
          v20 = v17;
          p_weak_ivar_lyt = v16;
          v21 = sub_1000136BC(v20, v19, &v59);

          *(v14 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v10, v11, "retrieveProductInfo: %s", v14, 0xCu);
          sub_100007BAC(v15);
          v6 = v56;
          v0 = v58;
        }

        else
        {

          sub_10038B428(v13, type metadata accessor for AccessoryMetadata);
        }

        v5 += v6;
        --v3;
      }

      while (v3);
      v1 = *(v0 + 104);
    }

    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v0 + 80);
    v25 = *(v0 + 88);
    v26 = *(v0 + 72);
    v27 = *(v0 + 32);
    v57 = *(v0 + 24);
    sub_1010C16DC(*(v0 + 128), v25);
    v28 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = type metadata accessor for FMNMockingPreferences();
    (*(*(v31 - 8) + 56))(v26, 1, 1, v31);
    v32 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v33 = type metadata accessor for ServerInteractionController(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    sub_10038B278(v25, v24, type metadata accessor for AccessoryInfoEndPoint);
    v37 = sub_100620924(v24, v32, v36);
    sub_10038B428(v25, type metadata accessor for AccessoryInfoEndPoint);
    sub_10038B5CC(v1, v23, v22);
    sub_1004FC6D8(v55, v23, v22, 0, v37);
    sub_100165328(v1, v23, v22);
    v38 = swift_allocObject();
    *(v38 + 16) = v57;
    *(v38 + 24) = v27;

    Future.addFailure(block:)();

    v39 = swift_allocObject();
    *(v39 + 16) = v57;
    *(v39 + 24) = v27;

    Future.addSuccess(block:)();
    sub_100165328(v1, v23, v22);
  }

  else
  {
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177AC90);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "retrieveProductInfo: invalid parameters", v43, 2u);
    }

    v45 = *(v0 + 40);
    v44 = *(v0 + 48);
    v47 = *(v0 + 24);
    v46 = *(v0 + 32);

    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v47(v44);
    sub_10000B3A8(v44, &qword_10169E748, &unk_10139DAB0);
  }

  v49 = *(v0 + 80);
  v48 = *(v0 + 88);
  v51 = *(v0 + 64);
  v50 = *(v0 + 72);
  v52 = *(v0 + 48);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_10036720C(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v15 - v6);
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177AC90);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error in product info request %{public}@", v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
  }

  *v7 = a1;
  type metadata accessor for BluetoothCommunicationCoordinator.Error();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a2(v7);
  return sub_10000B3A8(v7, &qword_10169E748, &unk_10139DAB0);
}

uint64_t sub_100367424(void *a1, void (*a2)(char *), uint64_t a3)
{
  v127 = sub_1000BC4D4(&qword_10169E748, &unk_10139DAB0);
  v6 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v8 = v118 - v7;
  v9 = type metadata accessor for AccessoryInfoResponseContent(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v131 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v130 = v118 - v13;
  v14 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v126 = v118 - v16;
  v17 = type metadata accessor for AccessoryProductInfo();
  v133 = *(v17 - 8);
  v134 = v17;
  v18 = *(v133 + 64);
  v19 = __chkstk_darwin(v17);
  v138 = (v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v129 = v118 - v21;
  v22 = type metadata accessor for AccessoryInfoResponseType(0);
  v136 = *(v22 - 8);
  v137 = v22;
  v23 = *(v136 + 64);
  v24 = __chkstk_darwin(v22);
  *&v123 = v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v118 - v26;
  v28 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v135 = *(v28 - 8);
  v29 = *(v135 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v121 = v118 - v34;
  __chkstk_darwin(v33);
  v36 = v118 - v35;
  v37 = type metadata accessor for String.Encoding();
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v39 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v128 = a2;
  if (v39 != 200)
  {
    v53 = a1;
    if (qword_101694690 == -1)
    {
LABEL_8:
      v54 = type metadata accessor for Logger();
      sub_1000076D4(v54, qword_10177AC90);
      v55 = v135;
      (*(v135 + 16))(v32, v53, v28);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v124 = v8;
        v59 = v58;
        v60 = swift_slowAlloc();
        v140[0] = v60;
        *v59 = 136315138;
        sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        (*(v55 + 8))(v32, v28);
        v64 = sub_1000136BC(v61, v63, v140);

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v56, v57, "Product info check failed: %s", v59, 0xCu);
        sub_100007BAC(v60);

        v8 = v124;
      }

      else
      {

        (*(v55 + 8))(v32, v28);
      }

      type metadata accessor for BluetoothCommunicationCoordinator.Error();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v128(v8);
      return sub_10000B3A8(v8, &qword_10169E748, &unk_10139DAB0);
    }

LABEL_51:
    swift_once();
    goto LABEL_8;
  }

  v122 = v28;
  v40 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v42 = v41;
  static String.Encoding.utf8.getter();
  v43 = String.init(data:encoding:)();
  v45 = v44;
  sub_100016590(v40, v42);
  v124 = v8;
  if (v45)
  {
    v132 = v43;
    if (qword_101694690 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177AC90);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v140[0] = v50;
      *v49 = 136315138;
      v51 = a3;
      v52 = sub_1000136BC(v132, v45, v140);

      *(v49 + 4) = v52;
      a3 = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "response data: %s", v49, 0xCu);
      sub_100007BAC(v50);
      a2 = v128;
      v8 = v124;
    }

    else
    {
    }
  }

  v125 = a1;
  v65 = v122;
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  v67 = sub_1000076D4(v66, qword_10177AC90);
  v68 = v135;
  v69 = *(v135 + 16);
  v118[1] = v135 + 16;
  v118[0] = v69;
  v69(v36, v125, v65);
  v132 = v67;
  v70 = Logger.logObject.getter();
  v71 = v36;
  v72 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v70, v72);
  v120 = a3;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v140[0] = v75;
    *v74 = 136446210;
    sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v119 = *(v68 + 8);
    v119(v71, v65);
    v79 = sub_1000136BC(v76, v78, v140);

    *(v74 + 4) = v79;
    _os_log_impl(&_mh_execute_header, v70, v72, "response: %{public}s", v74, 0xCu);
    sub_100007BAC(v75);

    a2 = v128;
    v8 = v124;
  }

  else
  {

    v119 = *(v68 + 8);
    v119(v36, v65);
  }

  v80 = v123;
  v81 = type metadata accessor for JSONDecoder();
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  swift_allocObject();
  v84 = JSONDecoder.init()();
  v28 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v86 = v85;
  sub_10038B488();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v28, v86);
  v88 = v140[0];
  if (*(v140[0] + 16))
  {
    v122 = v84;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v28 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v140[0] = v91;
      *v28 = 136315138;
      v139 = v88;

      v92 = String.init<A>(describing:)();
      v94 = sub_1000136BC(v92, v93, v140);

      *(v28 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v89, v90, "decodedResponse: %s", v28, 0xCu);
      sub_100007BAC(v91);
    }

    v32 = v126;
    v8 = v134;
    v135 = *(v88 + 16);
    if (v135)
    {
      v96 = 0;
      v125 = (v133 + 56);
      v97 = (v133 + 48);
      v53 = _swiftEmptyArrayStorage;
      *&v95 = 134217984;
      v123 = v95;
      while (v96 < *(v88 + 16))
      {
        sub_10038B278(v88 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v96, v27, type metadata accessor for AccessoryInfoResponseType);
        sub_10038B278(v27, v80, type metadata accessor for AccessoryInfoResponseType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v98 = *v80;
          v99 = Logger.logObject.getter();
          v28 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v99, v28))
          {
            v100 = swift_slowAlloc();
            *v100 = v123;
            *(v100 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v99, v28, "Failed to retrieve product info with server status: %ld", v100, 0xCu);
            v32 = v126;
          }

          v8 = v134;
          (*v125)(v32, 1, 1, v134);
        }

        else
        {
          v28 = v130;
          sub_10038BEAC(v80, v130, type metadata accessor for AccessoryInfoResponseContent);
          v101 = v131;
          sub_10038B278(v28, v131, type metadata accessor for AccessoryInfoResponseContent);
          sub_10119A0F4(v101, v32);
          sub_10038B428(v28, type metadata accessor for AccessoryInfoResponseContent);
        }

        sub_10038B428(v27, type metadata accessor for AccessoryInfoResponseType);
        if ((*v97)(v32, 1, v8) == 1)
        {
          sub_10000B3A8(v32, &qword_101697268, &qword_101394FE0);
        }

        else
        {
          v102 = v129;
          sub_10038BEAC(v32, v129, type metadata accessor for AccessoryProductInfo);
          sub_10038BEAC(v102, v138, type metadata accessor for AccessoryProductInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_100A5CAE4(0, v53[2] + 1, 1, v53);
          }

          v28 = v53[2];
          v103 = v53[3];
          if (v28 >= v103 >> 1)
          {
            v53 = sub_100A5CAE4(v103 > 1, v28 + 1, 1, v53);
          }

          v53[2] = v28 + 1;
          sub_10038BEAC(v138, v53 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v28, type metadata accessor for AccessoryProductInfo);
        }

        if (v135 == ++v96)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

    v53 = _swiftEmptyArrayStorage;
LABEL_43:

    if (v53[2])
    {
      v8 = v124;
      *v124 = v53;
      swift_storeEnumTagMultiPayload();
      v128(v8);
    }

    else
    {

      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.error.getter();
      v115 = os_log_type_enabled(v113, v114);
      v8 = v124;
      v116 = v128;
      if (v115)
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "Empty productInfos!", v117, 2u);
      }

      type metadata accessor for BluetoothCommunicationCoordinator.Error();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v116(v8);
    }
  }

  else
  {

    v104 = v121;
    v105 = v122;
    (v118[0])(v121, v125, v122);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v140[0] = v138;
      *v108 = 136446210;
      sub_10038B3E0(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v110;
      v119(v104, v105);
      v112 = sub_1000136BC(v109, v111, v140);

      *(v108 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v106, v107, "invalidResponse: %{public}s", v108, 0xCu);
      sub_100007BAC(v138);
    }

    else
    {

      v119(v104, v105);
    }

    type metadata accessor for BluetoothCommunicationCoordinator.Error();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a2(v8);
  }

  return sub_10000B3A8(v8, &qword_10169E748, &unk_10139DAB0);
}

uint64_t sub_100368640()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169E3B0);
  v1 = sub_1000076D4(v0, qword_10169E3B0);
  if (qword_101694690 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AC90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100368708()
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
  qword_10169E3C8 = result;
  return result;
}

uint64_t sub_100368844(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 192) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v5 = type metadata accessor for CentralManager.State();
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100368978, 0, 0);
}

uint64_t sub_100368978()
{
  v1 = v0[8];
  v0[9] = type metadata accessor for CentralManager();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100368A68;
  v5 = v0[8];

  return CentralManager.__allocating_init(options:)(v5);
}

uint64_t sub_100368A68(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100368B68, 0, 0);
}

uint64_t sub_100368B68()
{
  (*(v0[6] + 104))(v0[7], enum case for CentralManager.State.poweredOn(_:), v0[5]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[12] = v2;
  v3 = sub_10038B3E0(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_100368C64;
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_100368C64()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_1003694FC, 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
    v13 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v9 = swift_task_alloc();
    v2[14] = v9;
    *v9 = v4;
    v9[1] = sub_100368E5C;
    v10 = v2[11];
    v11 = v2[3];

    return v13(v11);
  }
}

uint64_t sub_100368E5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_100369584;
  }

  else
  {
    v5 = sub_100368F70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100368F70()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = type metadata accessor for ConnectUseCase();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_100369198;
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = *(v0 + 192);

    return sub_1011FC38C(v6, v1, v7, v5);
  }

  else
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 24);
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    swift_allocError();
    v12 = v11;
    v13 = type metadata accessor for MACAddress();
    (*(*(v13 - 8) + 16))(v12, v10, v13);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v16 = *(v0 + 32);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100369198()
{
  v2 = (*v1)[17];
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    sub_10000B3A8(v3[4], &qword_101697270, &qword_10138BDD0);

    return _swift_task_switch(sub_1003697C0, 0, 0);
  }

  else
  {
    v4 = v3[15];
    sub_10000B3A8(v3[4], &qword_101697270, &qword_10138BDD0);
    v5 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v8 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v6 = swift_task_alloc();
    v3[19] = v6;
    *v6 = v3;
    v6[1] = sub_100369350;

    return v8();
  }
}

uint64_t sub_100369350()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_10036986C;
  }

  else
  {
    v3 = sub_100369464;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100369464()
{
  v1 = v0[15];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1003694FC()
{
  v1 = v0[11];

  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100369584()
{
  v1 = v0[11];

  v2 = v0[16];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10036960C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_100369934;
  }

  else
  {
    v3 = sub_100369720;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100369720()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[11];
  swift_willThrow();

  v4 = v0[21];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003697C0()
{
  v0[21] = v0[18];
  v1 = v0[15];
  v2 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_10036960C;

  return v5();
}

uint64_t sub_10036986C()
{
  sub_10038B428(v0[2], type metadata accessor for RawAccessoryMetadata);
  v0[21] = v0[20];
  v1 = v0[15];
  v2 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_10036960C;

  return v5();
}

uint64_t sub_100369934()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[11];

  v4 = v0[23];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003699D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 200) = a4;
  *(v5 + 208) = a5;
  *(v5 + 1096) = a2;
  *(v5 + 184) = a1;
  *(v5 + 192) = a3;
  v6 = type metadata accessor for CentralManager.Error();
  *(v5 + 216) = v6;
  v7 = *(v6 - 8);
  *(v5 + 224) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 232) = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  *(v5 + 240) = v9;
  v10 = *(v9 - 8);
  *(v5 + 248) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  *(v5 + 336) = v12;
  v13 = *(v12 - 8);
  *(v5 + 344) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  v15 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  *(v5 + 440) = v15;
  v16 = *(v15 - 8);
  *(v5 + 448) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_100369CB8, 0, 0);
}

uint64_t sub_100369CB8()
{
  if (*(v0 + 1096) >= 2u)
  {
    v14 = *(v0 + 456);
    type metadata accessor for Service();
    Identifier.init(stringLiteral:)();
    static Task<>.checkCancellation()();
    v15 = async function pointer to dispatch thunk of PeripheralProtocol.connect()[1];
    v16 = swift_task_alloc();
    *(v0 + 464) = v16;
    *v16 = v0;
    v16[1] = sub_100369FD8;
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 184);

    return dispatch thunk of PeripheralProtocol.connect()(v18, v17);
  }

  else
  {
    sub_100101B58();
    swift_allocError();
    *v1 = 2;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 11;
    swift_willThrow();
    v2 = *(v0 + 456);
    v4 = *(v0 + 424);
    v3 = *(v0 + 432);
    v6 = *(v0 + 408);
    v5 = *(v0 + 416);
    v8 = *(v0 + 392);
    v7 = *(v0 + 400);
    v10 = *(v0 + 376);
    v9 = *(v0 + 384);
    v11 = *(v0 + 368);
    v20 = *(v0 + 360);
    v21 = *(v0 + 352);
    v22 = *(v0 + 328);
    v23 = *(v0 + 320);
    v24 = *(v0 + 312);
    v25 = *(v0 + 304);
    v26 = *(v0 + 296);
    v27 = *(v0 + 288);
    v28 = *(v0 + 280);
    v29 = *(v0 + 272);
    v30 = *(v0 + 264);
    v31 = *(v0 + 256);
    v32 = *(v0 + 232);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100369FD8()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;

  if (v0)
  {
    v2[134] = v0;
    v5 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v6 = swift_task_alloc();
    v2[135] = v6;
    *v6 = v4;
    v6[1] = sub_10036FF84;
    v7 = v2[26];
    v8 = v2[23];
    v9 = v2[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v9, v7);
  }

  else
  {
    v10 = async function pointer to dispatch thunk of PeripheralProtocol.subscript.getter[1];
    v11 = swift_task_alloc();
    v2[59] = v11;
    *v11 = v4;
    v11[1] = sub_10036A19C;
    v12 = v2[25];
    v13 = v2[26];
    v14 = v2[23];
    v15 = v2[57];

    return dispatch thunk of PeripheralProtocol.subscript.getter(v15, v12, v13);
  }
}

uint64_t sub_10036A19C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 472);
  v5 = *v2;
  v3[60] = a1;
  v3[61] = v1;

  if (v1)
  {
    v3[134] = v1;
    v6 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v7 = swift_task_alloc();
    v3[135] = v7;
    *v7 = v5;
    v7[1] = sub_10036FF84;
    v8 = v3[26];
    v9 = v3[23];
    v10 = v3[25];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v10, v8);
  }

  else
  {

    return _swift_task_switch(sub_10036A328, 0, 0);
  }
}

uint64_t sub_10036A328()
{
  v1 = v0[61];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[60];
    swift_unknownObjectRelease();
    v0[134] = v1;
    v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v4 = swift_task_alloc();
    v0[135] = v4;
    *v4 = v0;
    v4[1] = sub_10036FF84;
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v5);
  }

  else
  {
    v8 = v0[43];
    sub_101123C58(0, 11, 0);
    type metadata accessor for Characteristic();
    for (i = 0; i != 11; ++i)
    {
      v10 = v0[54];
      *(&off_101607618 + i + 32);
      Identifier.init(stringLiteral:)();
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123C58(v11 > 1, v12 + 1, 1);
      }

      v0[62] = _swiftEmptyArrayStorage;
      v13 = v0[54];
      v14 = v0[42];
      _swiftEmptyArrayStorage[2] = v12 + 1;
      (*(v8 + 32))(_swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v13, v14);
    }

    v16 = v0[25];
    v15 = v0[26];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v0[63] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[64] = AssociatedConformanceWitness;
    v19 = async function pointer to dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)[1];
    v20 = swift_task_alloc();
    v0[65] = v20;
    *v20 = v0;
    v20[1] = sub_10036A6B4;
    v21 = v0[60];

    return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(_swiftEmptyArrayStorage, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036A6B4()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v7 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_100370248;
  }

  else
  {
    v5 = *(v2 + 496);

    v4 = sub_10036A7E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10036A7E8()
{
  v1 = v0[66];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[60];
LABEL_3:
    swift_unknownObjectRelease();
    v0[134] = v1;
    v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v4 = swift_task_alloc();
    v0[135] = v4;
    *v4 = v0;
    v4[1] = sub_10036FF84;
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v5);
  }

  v8 = v0[24];
  if (v8 <= 4)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v36 = v0[51];
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v37 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
        v38 = swift_task_alloc();
        v0[81] = v38;
        *v38 = v0;
        v38[1] = sub_10036BEB8;
        v12 = v0[63];
        v13 = v0[64];
        v39 = v0[60];
        v15 = v0[51];
      }

      else if (v8 == 3)
      {
        v44 = v0[50];
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v45 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
        v46 = swift_task_alloc();
        v0[88] = v46;
        *v46 = v0;
        v46[1] = sub_10036C6C8;
        v12 = v0[63];
        v13 = v0[64];
        v47 = v0[60];
        v15 = v0[50];
      }

      else
      {
        v9 = v0[49];
        type metadata accessor for Characteristic();
        Identifier.init(stringLiteral:)();
        v10 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
        v11 = swift_task_alloc();
        v0[95] = v11;
        *v11 = v0;
        v11[1] = sub_10036CED8;
        v12 = v0[63];
        v13 = v0[64];
        v14 = v0[60];
        v15 = v0[49];
      }

      goto LABEL_27;
    }

    if (!v8)
    {
      v28 = v0[53];
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v29 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v30 = swift_task_alloc();
      v0[67] = v30;
      *v30 = v0;
      v30[1] = sub_10036AE98;
      v12 = v0[63];
      v13 = v0[64];
      v31 = v0[60];
      v15 = v0[53];
      goto LABEL_27;
    }

    if (v8 == 1)
    {
      v20 = v0[52];
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v21 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v22 = swift_task_alloc();
      v0[74] = v22;
      *v22 = v0;
      v22[1] = sub_10036B6A8;
      v12 = v0[63];
      v13 = v0[64];
      v23 = v0[60];
      v15 = v0[52];
      goto LABEL_27;
    }

LABEL_30:
    v52 = v0[60];
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v53 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v1 = v53;
    goto LABEL_3;
  }

  if (v8 <= 6)
  {
    if (v8 == 5)
    {
      v32 = v0[48];
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v33 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v34 = swift_task_alloc();
      v0[102] = v34;
      *v34 = v0;
      v34[1] = sub_10036D6E8;
      v12 = v0[63];
      v13 = v0[64];
      v35 = v0[60];
      v15 = v0[48];
    }

    else
    {
      v24 = v0[47];
      type metadata accessor for Characteristic();
      Identifier.init(stringLiteral:)();
      v25 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v26 = swift_task_alloc();
      v0[106] = v26;
      *v26 = v0;
      v26[1] = sub_10036DF44;
      v12 = v0[63];
      v13 = v0[64];
      v27 = v0[60];
      v15 = v0[47];
    }

    goto LABEL_27;
  }

  if (v8 == 7)
  {
    v40 = v0[46];
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v41 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v42 = swift_task_alloc();
    v0[113] = v42;
    *v42 = v0;
    v42[1] = sub_10036E754;
    v12 = v0[63];
    v13 = v0[64];
    v43 = v0[60];
    v15 = v0[46];
    goto LABEL_27;
  }

  if (v8 == 8)
  {
    v48 = v0[45];
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v49 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v50 = swift_task_alloc();
    v0[120] = v50;
    *v50 = v0;
    v50[1] = sub_10036EF64;
    v12 = v0[63];
    v13 = v0[64];
    v51 = v0[60];
    v15 = v0[45];
    goto LABEL_27;
  }

  if (v8 != 9)
  {
    goto LABEL_30;
  }

  v16 = v0[44];
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v17 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
  v18 = swift_task_alloc();
  v0[127] = v18;
  *v18 = v0;
  v18[1] = sub_10036F774;
  v12 = v0[63];
  v13 = v0[64];
  v19 = v0[60];
  v15 = v0[44];
LABEL_27:

  return dispatch thunk of ServiceProtocol.subscript.getter(v15, v12, v13);
}

uint64_t sub_10036AE98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  v4[68] = a1;
  v4[69] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[53], v4[42]);

    return _swift_task_switch(sub_100370300, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[53], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[70] = v12;
    *v12 = v6;
    v12[1] = sub_10036B0B4;
    v13 = v4[41];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036B0B4()
{
  v2 = *(*v1 + 560);
  v3 = *v1;
  v3[71] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003703AC, 0, 0);
  }

  else
  {
    v4 = v3[68];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[72] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036B278;
    v8 = v3[41];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 20, v9, v7);
  }
}

uint64_t sub_10036B278()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[31] + 8))(v2[41], v2[30]);
  if (v0)
  {
    v5 = sub_100370464;
  }

  else
  {
    v5 = sub_10036B3E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036B3E0()
{
  v1 = v0[21];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[20];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036B6A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  v4[75] = a1;
  v4[76] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[52], v4[42]);

    return _swift_task_switch(sub_100370510, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[52], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[77] = v12;
    *v12 = v6;
    v12[1] = sub_10036B8C4;
    v13 = v4[40];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036B8C4()
{
  v2 = *(*v1 + 616);
  v3 = *v1;
  v3[78] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003705BC, 0, 0);
  }

  else
  {
    v4 = v3[75];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[79] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036BA88;
    v8 = v3[40];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 18, v9, v7);
  }
}

uint64_t sub_10036BA88()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v4 = *v1;
  *(*v1 + 640) = v0;

  (*(v2[31] + 8))(v2[40], v2[30]);
  if (v0)
  {
    v5 = sub_100370674;
  }

  else
  {
    v5 = sub_10036BBF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036BBF0()
{
  v1 = v0[19];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[18];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036BEB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 648);
  v6 = *v2;
  v4[82] = a1;
  v4[83] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[51], v4[42]);

    return _swift_task_switch(sub_100370720, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[51], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[84] = v12;
    *v12 = v6;
    v12[1] = sub_10036C0D4;
    v13 = v4[39];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036C0D4()
{
  v2 = *(*v1 + 672);
  v3 = *v1;
  v3[85] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003707CC, 0, 0);
  }

  else
  {
    v4 = v3[82];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[86] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036C298;
    v8 = v3[39];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 16, v9, v7);
  }
}

uint64_t sub_10036C298()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  (*(v2[31] + 8))(v2[39], v2[30]);
  if (v0)
  {
    v5 = sub_100370884;
  }

  else
  {
    v5 = sub_10036C400;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036C400()
{
  v1 = v0[17];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[16];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036C6C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v6 = *v2;
  v4[89] = a1;
  v4[90] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[50], v4[42]);

    return _swift_task_switch(sub_100370930, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[50], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[91] = v12;
    *v12 = v6;
    v12[1] = sub_10036C8E4;
    v13 = v4[38];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036C8E4()
{
  v2 = *(*v1 + 728);
  v3 = *v1;
  v3[92] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003709DC, 0, 0);
  }

  else
  {
    v4 = v3[89];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[93] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036CAA8;
    v8 = v3[38];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 14, v9, v7);
  }
}

uint64_t sub_10036CAA8()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;
  *(*v1 + 752) = v0;

  (*(v2[31] + 8))(v2[38], v2[30]);
  if (v0)
  {
    v5 = sub_100370A94;
  }

  else
  {
    v5 = sub_10036CC10;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036CC10()
{
  v1 = v0[15];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[14];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036CED8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 760);
  v6 = *v2;
  v4[96] = a1;
  v4[97] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[49], v4[42]);

    return _swift_task_switch(sub_100370B40, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[49], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[98] = v12;
    *v12 = v6;
    v12[1] = sub_10036D0F4;
    v13 = v4[37];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036D0F4()
{
  v2 = *(*v1 + 784);
  v3 = *v1;
  v3[99] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100370BEC, 0, 0);
  }

  else
  {
    v4 = v3[96];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[100] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036D2B8;
    v8 = v3[37];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 12, v9, v7);
  }
}

uint64_t sub_10036D2B8()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *v1;
  *(*v1 + 808) = v0;

  (*(v2[31] + 8))(v2[37], v2[30]);
  if (v0)
  {
    v5 = sub_100370CA4;
  }

  else
  {
    v5 = sub_10036D420;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036D420()
{
  v1 = v0[13];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[12];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036D6E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 816);
  v6 = *v2;
  *(*v2 + 824) = a1;

  if (v1)
  {
    v7 = v4[48];
    v8 = v4[42];
    v9 = v4[43];

    (*(v9 + 8))(v7, v8);

    return _swift_task_switch(sub_100370D50, 0, 0);
  }

  else
  {
    v11 = v4[63];
    v10 = v4[64];
    (*(v4[43] + 8))(v4[48], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v15 = swift_task_alloc();
    v4[104] = v15;
    *v15 = v6;
    v15[1] = sub_10036D910;
    v16 = v4[36];

    return dispatch thunk of CharacteristicProtocol.read()(v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036D910()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[103];

    swift_unknownObjectRelease();

    return _swift_task_switch(sub_10038C488, 0, 0);
  }

  else
  {
    v6 = v2[103];
    swift_unknownObjectRelease();
    v7 = async function pointer to AsyncSequence.first()[1];
    v8 = swift_task_alloc();
    v2[105] = v8;
    v9 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v8 = v4;
    v8[1] = sub_10036DAE4;
    v10 = v2[36];
    v11 = v2[30];

    return AsyncSequence.first()(v2 + 10, v11, v9);
  }
}

uint64_t sub_10036DAE4()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *v1;

  v5 = v2[36];
  v6 = v2[31];
  v7 = v2[30];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_10038C488;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_10036DC7C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10036DC7C()
{
  v1 = v0[11];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[10];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036DF44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 848);
  v6 = *v2;
  v4[107] = a1;
  v4[108] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[47], v4[42]);

    return _swift_task_switch(sub_100370E7C, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[47], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[109] = v12;
    *v12 = v6;
    v12[1] = sub_10036E160;
    v13 = v4[35];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036E160()
{
  v2 = *(*v1 + 872);
  v3 = *v1;
  v3[110] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100370F28, 0, 0);
  }

  else
  {
    v4 = v3[107];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[111] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036E324;
    v8 = v3[35];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 8, v9, v7);
  }
}

uint64_t sub_10036E324()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  *(*v1 + 896) = v0;

  (*(v2[31] + 8))(v2[35], v2[30]);
  if (v0)
  {
    v5 = sub_100370FE0;
  }

  else
  {
    v5 = sub_10036E48C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036E48C()
{
  v1 = v0[9];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[8];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036E754(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 904);
  v6 = *v2;
  v4[114] = a1;
  v4[115] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[46], v4[42]);

    return _swift_task_switch(sub_10037108C, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[46], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[116] = v12;
    *v12 = v6;
    v12[1] = sub_10036E970;
    v13 = v4[34];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036E970()
{
  v2 = *(*v1 + 928);
  v3 = *v1;
  v3[117] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100371138, 0, 0);
  }

  else
  {
    v4 = v3[114];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[118] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036EB34;
    v8 = v3[34];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 6, v9, v7);
  }
}

uint64_t sub_10036EB34()
{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v4 = *v1;
  *(*v1 + 952) = v0;

  (*(v2[31] + 8))(v2[34], v2[30]);
  if (v0)
  {
    v5 = sub_1003711F0;
  }

  else
  {
    v5 = sub_10036EC9C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036EC9C()
{
  v1 = v0[7];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[6];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036EF64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 960);
  v6 = *v2;
  v4[121] = a1;
  v4[122] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[45], v4[42]);

    return _swift_task_switch(sub_10037129C, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[45], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[123] = v12;
    *v12 = v6;
    v12[1] = sub_10036F180;
    v13 = v4[33];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036F180()
{
  v2 = *(*v1 + 984);
  v3 = *v1;
  v3[124] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100371348, 0, 0);
  }

  else
  {
    v4 = v3[121];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[125] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036F344;
    v8 = v3[33];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 4, v9, v7);
  }
}

uint64_t sub_10036F344()
{
  v2 = *v1;
  v3 = *(*v1 + 1000);
  v4 = *v1;
  *(*v1 + 1008) = v0;

  (*(v2[31] + 8))(v2[33], v2[30]);
  if (v0)
  {
    v5 = sub_100371400;
  }

  else
  {
    v5 = sub_10036F4AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036F4AC()
{
  v1 = v0[5];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[4];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036F774(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1016);
  v6 = *v2;
  v4[128] = a1;
  v4[129] = v1;

  if (v1)
  {
    (*(v4[43] + 8))(v4[44], v4[42]);

    return _swift_task_switch(sub_1003714AC, 0, 0);
  }

  else
  {
    v8 = v4[63];
    v7 = v4[64];
    (*(v4[43] + 8))(v4[44], v4[42]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = async function pointer to dispatch thunk of CharacteristicProtocol.read()[1];
    v12 = swift_task_alloc();
    v4[130] = v12;
    *v12 = v6;
    v12[1] = sub_10036F990;
    v13 = v4[32];

    return dispatch thunk of CharacteristicProtocol.read()(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10036F990()
{
  v2 = *(*v1 + 1040);
  v3 = *v1;
  v3[131] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003717A8, 0, 0);
  }

  else
  {
    v4 = v3[128];
    swift_unknownObjectRelease();
    v5 = async function pointer to AsyncSequence.first()[1];
    v6 = swift_task_alloc();
    v3[132] = v6;
    v7 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210);
    *v6 = v3;
    v6[1] = sub_10036FB54;
    v8 = v3[32];
    v9 = v3[30];

    return AsyncSequence.first()(v3 + 2, v9, v7);
  }
}

uint64_t sub_10036FB54()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v4 = *v1;
  *(*v1 + 1064) = v0;

  (*(v2[31] + 8))(v2[32], v2[30]);
  if (v0)
  {
    v5 = sub_100371AAC;
  }

  else
  {
    v5 = sub_10036FCBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10036FCBC()
{
  v1 = v0[3];
  v2 = v0[60];
  if (v1 >> 60 == 15)
  {
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_10038B3E0(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v0[134] = v3;
    v4 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
    v5 = swift_task_alloc();
    v0[135] = v5;
    *v5 = v0;
    v5[1] = sub_10036FF84;
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[23];

    return dispatch thunk of PeripheralProtocol.cancelConnection()(v7, v6);
  }

  else
  {
    v33 = v0[2];
    swift_unknownObjectRelease();
    v9 = v0[54];
    v11 = v0[52];
    v10 = v0[53];
    v13 = v0[50];
    v12 = v0[51];
    v15 = v0[48];
    v14 = v0[49];
    v18 = v0[47];
    v19 = v0[46];
    v20 = v0[45];
    v21 = v0[44];
    v22 = v0[41];
    v23 = v0[40];
    v24 = v0[39];
    v25 = v0[38];
    v26 = v0[37];
    v27 = v0[36];
    v28 = v0[35];
    v29 = v0[34];
    v30 = v0[33];
    v31 = v0[32];
    v32 = v0[29];
    (*(v0[56] + 8))(v0[57], v0[55]);

    v16 = v0[1];

    return v16(v33, v1);
  }
}

uint64_t sub_10036FF84()
{
  v2 = *(*v1 + 1080);
  v5 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = sub_100371DA8;
  }

  else
  {
    v3 = sub_100370098;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100370098()
{
  v1 = v0[134];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[55];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  v30 = v0[134];
  v5 = v0[57];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[51];
  v8 = v0[52];
  v11 = v0[49];
  v10 = v0[50];
  v13 = v0[47];
  v12 = v0[48];
  v14 = v0[46];
  v17 = v0[45];
  v18 = v0[44];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[33];
  v28 = v0[32];
  v29 = v0[29];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100370248()
{
  v1 = v0[62];
  v2 = v0[60];

  swift_unknownObjectRelease();
  v0[134] = v0[66];
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[135] = v4;
  *v4 = v0;
  v4[1] = sub_10036FF84;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v5);
}

uint64_t sub_100370300()
{
  v1 = v0[60];
  swift_unknownObjectRelease();
  v0[134] = v0[69];
  v2 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v3 = swift_task_alloc();
  v0[135] = v3;
  *v3 = v0;
  v3[1] = sub_10036FF84;
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
}

uint64_t sub_1003703AC()
{
  v1 = v0[68];
  v2 = v0[60];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[71];
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[135] = v4;
  *v4 = v0;
  v4[1] = sub_10036FF84;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v5);
}

uint64_t sub_100370464()
{
  v1 = v0[60];
  swift_unknownObjectRelease();
  v0[134] = v0[73];
  v2 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v3 = swift_task_alloc();
  v0[135] = v3;
  *v3 = v0;
  v3[1] = sub_10036FF84;
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
}

uint64_t sub_100370510()
{
  v1 = v0[60];
  swift_unknownObjectRelease();
  v0[134] = v0[76];
  v2 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v3 = swift_task_alloc();
  v0[135] = v3;
  *v3 = v0;
  v3[1] = sub_10036FF84;
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
}

uint64_t sub_1003705BC()
{
  v1 = v0[75];
  v2 = v0[60];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[78];
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[135] = v4;
  *v4 = v0;
  v4[1] = sub_10036FF84;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v5);
}

uint64_t sub_100370674()
{
  v1 = v0[60];
  swift_unknownObjectRelease();
  v0[134] = v0[80];
  v2 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v3 = swift_task_alloc();
  v0[135] = v3;
  *v3 = v0;
  v3[1] = sub_10036FF84;
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
}

uint64_t sub_100370720()
{
  v1 = v0[60];
  swift_unknownObjectRelease();
  v0[134] = v0[83];
  v2 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v3 = swift_task_alloc();
  v0[135] = v3;
  *v3 = v0;
  v3[1] = sub_10036FF84;
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v5, v4);
}

uint64_t sub_1003707CC()
{
  v1 = v0[82];
  v2 = v0[60];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v0[134] = v0[85];
  v3 = async function pointer to dispatch thunk of PeripheralProtocol.cancelConnection()[1];
  v4 = swift_task_alloc();
  v0[135] = v4;
  *v4 = v0;
  v4[1] = sub_10036FF84;
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[23];

  return dispatch thunk of PeripheralProtocol.cancelConnection()(v6, v5);
}