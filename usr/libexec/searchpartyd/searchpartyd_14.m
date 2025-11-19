uint64_t sub_10018346C()
{
  v2 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = sub_1001839F0;
  }

  else
  {
    v3 = sub_1001835F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100183580()
{
  v1 = v0[84];

  v0[92] = v0[87];
  v2 = v0[69];

  return _swift_task_switch(sub_100183A78, v2, 0);
}

uint64_t sub_1001835F0()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[86];
  v4 = v0[69];

  sub_100007BAC(v0 + 32);

  return _swift_task_switch(sub_100183684, v4, 0);
}

uint64_t sub_100183684()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 648) + 1;
  sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberSharingCircle);
  if (v2 == v1)
  {
    v3 = *(v0 + 632);

    v4 = *(v0 + 552);
    v5 = *(v0 + 837);
    v6 = *(v0 + 544);
    type metadata accessor for Transaction();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    *(v8 + 32) = v5 & 1;

    static Transaction.asyncTask(name:block:)();

    if (*(v0 + 838) == 1)
    {
      v9 = [objc_opt_self() standardUserDefaults];
      v10 = String._bridgeToObjectiveC()();
      [v9 setInteger:2 forKey:v10];
    }

    v11 = *(v0 + 608);
    v12 = *(v0 + 600);
    v13 = *(v0 + 592);
    v14 = *(v0 + 584);
    v15 = *(v0 + 576);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 648) + 1;
    *(v0 + 839) = 1;
    *(v0 + 648) = v18;
    v19 = *(v0 + 632);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
    }

    else
    {
      v20 = *(v0 + 838);
      sub_1001BB2E0(v19 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 568) + 72) * v18, *(v0 + 608), type metadata accessor for MemberSharingCircle);
      v21 = *(v0 + 552);
      if (v20 == 1)
      {
        v22 = *(v21 + 200);
        v23 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 656) = v23;
        *(v0 + 280) = v23;
        *(v0 + 288) = &off_1016634E8;
        *(v0 + 256) = v22;
        v24 = async function pointer to daemon.getter[1];

        v25 = swift_task_alloc();
        *(v0 + 664) = v25;
        *v25 = v0;
        v26 = sub_100182DF4;
      }

      else
      {
        v27 = *(v21 + 200);
        v28 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 744) = v28;
        *(v0 + 40) = v28;
        *(v0 + 48) = &off_1016634E8;
        *(v0 + 16) = v27;
        v29 = async function pointer to daemon.getter[1];

        v25 = swift_task_alloc();
        *(v0 + 752) = v25;
        *v25 = v0;
        v26 = sub_10018447C;
      }

      v25[1] = v26;
    }

    return daemon.getter();
  }
}

uint64_t sub_1001839F0()
{
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[86];

  v0[92] = v0[91];
  v4 = v0[69];

  return _swift_task_switch(sub_100183A78, v4, 0);
}

uint64_t sub_100183A78()
{
  sub_100007BAC((v0 + 256));
  *(v0 + 504) = *(v0 + 736);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 836) & 1) == 0)
  {
    if (qword_101694480 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for MemberSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v5, v6))
  {
    v11 = *(v0 + 608);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);

    sub_1001BA80C(v13, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v12, type metadata accessor for MemberSharingCircle);
    i = v11;
    goto LABEL_19;
  }

  v87 = v6;
  v7 = *(v0 + 837);
  v8 = swift_slowAlloc();
  *(v0 + 512) = swift_slowAlloc();
  *v8 = 136316419;
  if (v7)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    *(v0 + 520) = *(v0 + 544);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v23;
  }

  v84 = *(v0 + 838);
  v86 = *(v0 + 608);
  v24 = *(v0 + 584);
  v82 = *(v0 + 576);
  v25 = *(v0 + 560);
  v26 = sub_1000136BC(v9, v10, (v0 + 512));

  *(v8 + 4) = v26;
  *(v8 + 12) = 2160;
  *(v8 + 14) = 1752392040;
  *(v8 + 22) = 2081;
  v27 = *(v25 + 28);
  type metadata accessor for UUID();
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  sub_1001BA80C(v24, type metadata accessor for MemberSharingCircle);
  v31 = sub_1000136BC(v28, v30, (v0 + 512));

  *(v8 + 24) = v31;
  *(v8 + 32) = 2160;
  *(v8 + 34) = 1752392040;
  *(v8 + 42) = 2081;
  v32 = v82 + *(v25 + 24);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34;
  sub_1001BA80C(v82, type metadata accessor for MemberSharingCircle);
  v36 = sub_1000136BC(v33, v35, (v0 + 512));

  *(v8 + 44) = v36;
  *(v8 + 52) = 1024;
  *(v8 + 54) = v84;
  v37 = "%s Failed to download keys on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
LABEL_18:
  _os_log_impl(&_mh_execute_header, v5, v87, v37, v8, 0x3Au);
  swift_arrayDestroy();

  for (i = v86; ; i = v38)
  {
LABEL_19:
    sub_1001BA80C(i, type metadata accessor for MemberSharingCircle);
    v55 = *(v0 + 648) + 1;
    if (v55 == *(v0 + 640))
    {
      v56 = *(v0 + 839);
      v57 = *(v0 + 632);

      if (v56 == 1)
      {
        v58 = *(v0 + 552);
        v59 = *(v0 + 837);
        v60 = *(v0 + 544);
        type metadata accessor for Transaction();
        v61 = swift_allocObject();
        swift_weakInit();
        v62 = swift_allocObject();
        *(v62 + 16) = v61;
        *(v62 + 24) = v60;
        *(v62 + 32) = v59 & 1;

        static Transaction.asyncTask(name:block:)();
      }

      if (*(v0 + 838) == 1)
      {
        v63 = [objc_opt_self() standardUserDefaults];
        v64 = String._bridgeToObjectiveC()();
        [v63 setInteger:2 forKey:v64];
      }

      v65 = *(v0 + 608);
      v66 = *(v0 + 600);
      v67 = *(v0 + 592);
      v68 = *(v0 + 584);
      v69 = *(v0 + 576);

      v70 = *(v0 + 8);

      return v70();
    }

    *(v0 + 648) = v55;
    v72 = *(v0 + 632);
    if (v55 < *(v72 + 16))
    {
      break;
    }

    __break(1u);
LABEL_35:
    swift_once();
LABEL_10:
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177A560);
    sub_1001BB2E0(v15, v16, type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v15, v17, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v19))
    {
      v87 = v19;
      v20 = *(v0 + 837);
      v8 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v8 = 136316419;
      if (v20)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 536) = *(v0 + 544);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v41;
      }

      v85 = *(v0 + 838);
      v86 = *(v0 + 608);
      v42 = *(v0 + 600);
      v83 = *(v0 + 592);
      v43 = *(v0 + 560);
      v44 = sub_1000136BC(v21, v22, (v0 + 528));

      *(v8 + 4) = v44;
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      v45 = *(v43 + 28);
      type metadata accessor for UUID();
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_1001BA80C(v42, type metadata accessor for MemberSharingCircle);
      v49 = sub_1000136BC(v46, v48, (v0 + 528));

      *(v8 + 24) = v49;
      *(v8 + 32) = 2160;
      *(v8 + 34) = 1752392040;
      *(v8 + 42) = 2081;
      v50 = *(v43 + 24);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_1001BA80C(v83, type metadata accessor for MemberSharingCircle);
      v54 = sub_1000136BC(v51, v53, (v0 + 528));

      *(v8 + 44) = v54;
      *(v8 + 52) = 1024;
      *(v8 + 54) = v85;
      v37 = "%s Throttled key download on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
      goto LABEL_18;
    }

    v38 = *(v0 + 608);
    v39 = *(v0 + 600);
    v40 = *(v0 + 592);

    sub_1001BA80C(v40, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v39, type metadata accessor for MemberSharingCircle);
  }

  v73 = *(v0 + 838);
  sub_1001BB2E0(v72 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 568) + 72) * v55, *(v0 + 608), type metadata accessor for MemberSharingCircle);
  if (v73 == 1)
  {
    v74 = *(*(v0 + 552) + 200);
    v75 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 656) = v75;
    *(v0 + 280) = v75;
    *(v0 + 288) = &off_1016634E8;
    *(v0 + 256) = v74;
    v76 = async function pointer to daemon.getter[1];

    v77 = swift_task_alloc();
    *(v0 + 664) = v77;
    *v77 = v0;
    v78 = sub_100182DF4;
  }

  else
  {
    v79 = *(*(v0 + 552) + 200);
    v80 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 744) = v80;
    *(v0 + 40) = v80;
    *(v0 + 48) = &off_1016634E8;
    *(v0 + 16) = v79;
    v81 = async function pointer to daemon.getter[1];

    v77 = swift_task_alloc();
    *(v0 + 752) = v77;
    *v77 = v0;
    v78 = sub_10018447C;
  }

  v77[1] = v78;

  return daemon.getter();
}

uint64_t sub_10018447C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 752);
  v12 = *v1;
  *(v3 + 760) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 768) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100184658;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100184658(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 768);
  v8 = *v2;
  v3[97] = a1;
  v3[98] = v1;

  if (v1)
  {
    v5 = sub_100184C38;
  }

  else
  {
    v6 = v3[95];

    v5 = sub_100184778;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100184778()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 744);
  v27 = *(v0 + 837);
  v3 = type metadata accessor for SharingCircleKeyManager();
  v4 = swift_allocObject();
  *(v0 + 792) = v4;
  v25 = v1;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v4 + 112) = v5;
  *(v4 + 120) = v1;
  sub_10001F280(v0 + 16, v0 + 56);
  v6 = *(v0 + 80);
  sub_10015049C(v0 + 56, v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v26 = swift_task_alloc();
  (*(v7 + 16))();
  v9 = *v26;
  *(v0 + 96) = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = &off_10164E4F0;
  *(v0 + 160) = v2;
  *(v0 + 168) = &off_1016634E8;
  *(v0 + 136) = v9;
  type metadata accessor for ShareKeysDownloadUseCase();
  v10 = swift_allocObject();
  *(v0 + 800) = v10;
  v11 = sub_10015049C(v0 + 96, v3);
  v12 = *(v3 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  (*(v12 + 16))(v14, v11, v3);
  v15 = *(v0 + 160);
  v16 = sub_10015049C(v0 + 136, v15);
  v17 = *(v15 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v15);
  v20 = *v19;
  *(v0 + 176) = *v14;
  *(v0 + 200) = v3;
  *(v0 + 208) = &off_10164E4F0;
  *(v0 + 240) = v2;
  *(v0 + 248) = &off_1016634E8;
  *(v0 + 216) = v20;

  swift_defaultActor_initialize();
  sub_10000A748((v0 + 176), v10 + 112);
  *(v10 + 152) = v25;
  sub_10000A748((v0 + 216), v10 + 160);
  sub_100007BAC((v0 + 136));

  sub_100007BAC((v0 + 96));

  sub_100007BAC((v0 + 56));

  v21 = swift_task_alloc();
  *(v0 + 808) = v21;
  *v21 = v0;
  v21[1] = sub_100184B24;
  v22 = *(v0 + 608);
  v23 = *(v0 + 544);

  return sub_1007C5654(v22, v23, v27 & 1);
}

uint64_t sub_100184B24()
{
  v2 = *(*v1 + 808);
  v5 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v3 = sub_100184D3C;
  }

  else
  {
    v3 = sub_100184CA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100184C38()
{
  v1 = v0[95];

  v0[103] = v0[98];
  v2 = v0[69];

  return _swift_task_switch(sub_100184DC4, v2, 0);
}

uint64_t sub_100184CA8()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[97];
  v4 = v0[69];

  sub_100007BAC(v0 + 2);

  return _swift_task_switch(sub_1001BE4D4, v4, 0);
}

uint64_t sub_100184D3C()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[97];

  v0[103] = v0[102];
  v4 = v0[69];

  return _swift_task_switch(sub_100184DC4, v4, 0);
}

uint64_t sub_100184DC4()
{
  sub_100007BAC((v0 + 16));
  *(v0 + 504) = *(v0 + 824);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 836) & 1) == 0)
  {
    if (qword_101694480 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for MemberSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v5, v6))
  {
    v11 = *(v0 + 608);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);

    sub_1001BA80C(v13, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v12, type metadata accessor for MemberSharingCircle);
    i = v11;
    goto LABEL_19;
  }

  v87 = v6;
  v7 = *(v0 + 837);
  v8 = swift_slowAlloc();
  *(v0 + 512) = swift_slowAlloc();
  *v8 = 136316419;
  if (v7)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    *(v0 + 520) = *(v0 + 544);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v23;
  }

  v84 = *(v0 + 838);
  v86 = *(v0 + 608);
  v24 = *(v0 + 584);
  v82 = *(v0 + 576);
  v25 = *(v0 + 560);
  v26 = sub_1000136BC(v9, v10, (v0 + 512));

  *(v8 + 4) = v26;
  *(v8 + 12) = 2160;
  *(v8 + 14) = 1752392040;
  *(v8 + 22) = 2081;
  v27 = *(v25 + 28);
  type metadata accessor for UUID();
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  sub_1001BA80C(v24, type metadata accessor for MemberSharingCircle);
  v31 = sub_1000136BC(v28, v30, (v0 + 512));

  *(v8 + 24) = v31;
  *(v8 + 32) = 2160;
  *(v8 + 34) = 1752392040;
  *(v8 + 42) = 2081;
  v32 = v82 + *(v25 + 24);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34;
  sub_1001BA80C(v82, type metadata accessor for MemberSharingCircle);
  v36 = sub_1000136BC(v33, v35, (v0 + 512));

  *(v8 + 44) = v36;
  *(v8 + 52) = 1024;
  *(v8 + 54) = v84;
  v37 = "%s Failed to download keys on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
LABEL_18:
  _os_log_impl(&_mh_execute_header, v5, v87, v37, v8, 0x3Au);
  swift_arrayDestroy();

  for (i = v86; ; i = v38)
  {
LABEL_19:
    sub_1001BA80C(i, type metadata accessor for MemberSharingCircle);
    v55 = *(v0 + 648) + 1;
    if (v55 == *(v0 + 640))
    {
      v56 = *(v0 + 839);
      v57 = *(v0 + 632);

      if (v56 == 1)
      {
        v58 = *(v0 + 552);
        v59 = *(v0 + 837);
        v60 = *(v0 + 544);
        type metadata accessor for Transaction();
        v61 = swift_allocObject();
        swift_weakInit();
        v62 = swift_allocObject();
        *(v62 + 16) = v61;
        *(v62 + 24) = v60;
        *(v62 + 32) = v59 & 1;

        static Transaction.asyncTask(name:block:)();
      }

      if (*(v0 + 838) == 1)
      {
        v63 = [objc_opt_self() standardUserDefaults];
        v64 = String._bridgeToObjectiveC()();
        [v63 setInteger:2 forKey:v64];
      }

      v65 = *(v0 + 608);
      v66 = *(v0 + 600);
      v67 = *(v0 + 592);
      v68 = *(v0 + 584);
      v69 = *(v0 + 576);

      v70 = *(v0 + 8);

      return v70();
    }

    *(v0 + 648) = v55;
    v72 = *(v0 + 632);
    if (v55 < *(v72 + 16))
    {
      break;
    }

    __break(1u);
LABEL_35:
    swift_once();
LABEL_10:
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177A560);
    sub_1001BB2E0(v15, v16, type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v15, v17, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v19))
    {
      v87 = v19;
      v20 = *(v0 + 837);
      v8 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v8 = 136316419;
      if (v20)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 536) = *(v0 + 544);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v41;
      }

      v85 = *(v0 + 838);
      v86 = *(v0 + 608);
      v42 = *(v0 + 600);
      v83 = *(v0 + 592);
      v43 = *(v0 + 560);
      v44 = sub_1000136BC(v21, v22, (v0 + 528));

      *(v8 + 4) = v44;
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      v45 = *(v43 + 28);
      type metadata accessor for UUID();
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_1001BA80C(v42, type metadata accessor for MemberSharingCircle);
      v49 = sub_1000136BC(v46, v48, (v0 + 528));

      *(v8 + 24) = v49;
      *(v8 + 32) = 2160;
      *(v8 + 34) = 1752392040;
      *(v8 + 42) = 2081;
      v50 = *(v43 + 24);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_1001BA80C(v83, type metadata accessor for MemberSharingCircle);
      v54 = sub_1000136BC(v51, v53, (v0 + 528));

      *(v8 + 44) = v54;
      *(v8 + 52) = 1024;
      *(v8 + 54) = v85;
      v37 = "%s Throttled key download on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
      goto LABEL_18;
    }

    v38 = *(v0 + 608);
    v39 = *(v0 + 600);
    v40 = *(v0 + 592);

    sub_1001BA80C(v40, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v39, type metadata accessor for MemberSharingCircle);
  }

  v73 = *(v0 + 838);
  sub_1001BB2E0(v72 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 568) + 72) * v55, *(v0 + 608), type metadata accessor for MemberSharingCircle);
  if (v73 == 1)
  {
    v74 = *(*(v0 + 552) + 200);
    v75 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 656) = v75;
    *(v0 + 280) = v75;
    *(v0 + 288) = &off_1016634E8;
    *(v0 + 256) = v74;
    v76 = async function pointer to daemon.getter[1];

    v77 = swift_task_alloc();
    *(v0 + 664) = v77;
    *v77 = v0;
    v78 = sub_100182DF4;
  }

  else
  {
    v79 = *(*(v0 + 552) + 200);
    v80 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 744) = v80;
    *(v0 + 40) = v80;
    *(v0 + 48) = &off_1016634E8;
    *(v0 + 16) = v79;
    v81 = async function pointer to daemon.getter[1];

    v77 = swift_task_alloc();
    *(v0 + 752) = v77;
    *v77 = v0;
    v78 = sub_10018447C;
  }

  v77[1] = v78;

  return daemon.getter();
}

uint64_t sub_1001857C8(uint64_t a1, char a2)
{
  *(v3 + 276) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = type metadata accessor for OwnerSharingCircle();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 + 64);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1001858D0, v2, 0);
}

uint64_t sub_1001858D0()
{
  v1 = *(*(v0 + 104) + 136);
  *(v0 + 184) = v1;
  return _swift_task_switch(sub_1001858F4, v1, 0);
}

uint64_t sub_1001858F4()
{
  v1 = *(v0 + 184);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_1001859E0;
  v5 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_1001859E0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_100185AF8, v2, 0);
}

uint64_t sub_100185AF8()
{
  v1 = v0[13];
  v0[25] = v0[7];
  return _swift_task_switch(sub_100185B1C, v1, 0);
}

uint64_t sub_100185B1C()
{
  v1 = *(*(v0 + 200) + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 120);
    *(v0 + 272) = *(v3 + 80);
    *(v0 + 216) = *(v3 + 72);
    while (1)
    {
      *(v0 + 224) = v2;
      v4 = *(v0 + 176);
      v5 = *(v0 + 112);
      sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v2, v4, type metadata accessor for OwnerSharingCircle);
      v6 = *(v0 + 176);
      if (*(v4 + *(v5 + 36)) == 1)
      {
        break;
      }

      sub_1001BA80C(v6, type metadata accessor for OwnerSharingCircle);
      v2 = *(v0 + 224) + 1;
      if (v2 == *(v0 + 208))
      {
        v7 = *(v0 + 200);
        goto LABEL_6;
      }
    }

    if (*(v6 + *(*(v0 + 112) + 28)) == 3)
    {

      return _swift_task_switch(sub_100185E6C, 0, 0);
    }

    else
    {
      v16 = swift_task_alloc();
      *(v0 + 232) = v16;
      *v16 = v0;
      v16[1] = sub_100185D40;
      v17 = *(v0 + 176);
      v18 = *(v0 + 104);

      return sub_1001942F0(v17, 0);
    }
  }

  else
  {
LABEL_6:

    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100185D40()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_100186984;
  }

  else
  {
    v6 = sub_1001BE4A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100185E6C()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_100185F10;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_100185F10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  sub_10000B3A8(v3 + 16, &unk_101698E08, &qword_101390A08);
  if (v1)
  {
    v5 = sub_1001863A0;
  }

  else
  {
    v5 = sub_10018603C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10018603C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = (*(v0 + 272) + 24) & ~*(v0 + 272);
  sub_1001BB2E0(*(v0 + 176), v2, type metadata accessor for OwnerSharingCircle);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  sub_1001BAAE8(v2, v6 + v5, type metadata accessor for OwnerSharingCircle);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1001861A0, v4, 0);
}

uint64_t sub_1001861A0()
{
  v1 = *(v0 + 176);
  while (1)
  {
    sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);
    v2 = *(v0 + 224) + 1;
    if (v2 == *(v0 + 208))
    {
      break;
    }

    *(v0 + 224) = v2;
    v3 = *(v0 + 176);
    v4 = *(v0 + 112);
    sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v2, v3, type metadata accessor for OwnerSharingCircle);
    v1 = *(v0 + 176);
    if (*(v3 + *(v4 + 36)) == 1)
    {
      if (*(v1 + *(*(v0 + 112) + 28)) == 3)
      {

        return _swift_task_switch(sub_100185E6C, 0, 0);
      }

      else
      {
        v13 = swift_task_alloc();
        *(v0 + 232) = v13;
        *v13 = v0;
        v13[1] = sub_100185D40;
        v14 = *(v0 + 176);
        v15 = *(v0 + 104);

        return sub_1001942F0(v14, 0);
      }
    }
  }

  v5 = *(v0 + 200);

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001863BC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v2, v3, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v2, v4, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v51 = v7;
    v8 = *(v0 + 276);
    v9 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *(v0 + 80) = swift_slowAlloc();
    *v9 = 136316419;
    log = v6;
    if (v8)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 88) = *(v0 + 96);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v17;
    }

    v48 = *(v0 + 264);
    v49 = *(v0 + 176);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 112);
    v21 = sub_1000136BC(v10, v11, (v0 + 80));

    *(v9 + 4) = v21;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v22 = *(v20 + 20);
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1001BA80C(v18, type metadata accessor for OwnerSharingCircle);
    v26 = sub_1000136BC(v23, v25, (v0 + 80));

    *(v9 + 24) = v26;
    *(v9 + 32) = 2160;
    *(v9 + 34) = 1752392040;
    *(v9 + 42) = 2081;
    v27 = v19 + *(v20 + 24);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    sub_1001BA80C(v19, type metadata accessor for OwnerSharingCircle);
    v31 = sub_1000136BC(v28, v30, (v0 + 80));

    *(v9 + 44) = v31;
    *(v9 + 52) = 2114;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 54) = v32;
    *v50 = v32;
    _os_log_impl(&_mh_execute_header, log, v51, "%s Failed to retry apns registration for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v9, 0x3Eu);
    sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v16 = v49;
  }

  else
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 176);
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);

    sub_1001BA80C(v15, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    v16 = v13;
  }

  do
  {
    sub_1001BA80C(v16, type metadata accessor for OwnerSharingCircle);
    v35 = *(v0 + 224) + 1;
    if (v35 == *(v0 + 208))
    {
      v36 = *(v0 + 200);

      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v40 = *(v0 + 152);
      v39 = *(v0 + 160);
      v42 = *(v0 + 136);
      v41 = *(v0 + 144);

      v43 = *(v0 + 8);

      return v43();
    }

    *(v0 + 224) = v35;
    v33 = *(v0 + 176);
    v34 = *(v0 + 112);
    sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v35, v33, type metadata accessor for OwnerSharingCircle);
    v16 = *(v0 + 176);
  }

  while (*(v33 + *(v34 + 36)) != 1);
  if (*(v16 + *(*(v0 + 112) + 28)) == 3)
  {

    return _swift_task_switch(sub_100185E6C, 0, 0);
  }

  else
  {
    v45 = swift_task_alloc();
    *(v0 + 232) = v45;
    *v45 = v0;
    v45[1] = sub_100185D40;
    v46 = *(v0 + 176);
    v47 = *(v0 + 104);

    return sub_1001942F0(v46, 0);
  }
}

uint64_t sub_100186984()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = *(v0 + 176);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v2, v3, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v2, v4, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v51 = v7;
    v8 = *(v0 + 276);
    v9 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *(v0 + 64) = swift_slowAlloc();
    *v9 = 136316419;
    log = v6;
    if (v8)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 72) = *(v0 + 96);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v17;
    }

    v48 = *(v0 + 240);
    v49 = *(v0 + 176);
    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v20 = *(v0 + 112);
    v21 = sub_1000136BC(v10, v11, (v0 + 64));

    *(v9 + 4) = v21;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v22 = *(v20 + 20);
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1001BA80C(v18, type metadata accessor for OwnerSharingCircle);
    v26 = sub_1000136BC(v23, v25, (v0 + 64));

    *(v9 + 24) = v26;
    *(v9 + 32) = 2160;
    *(v9 + 34) = 1752392040;
    *(v9 + 42) = 2081;
    v27 = v19 + *(v20 + 24);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    sub_1001BA80C(v19, type metadata accessor for OwnerSharingCircle);
    v31 = sub_1000136BC(v28, v30, (v0 + 64));

    *(v9 + 44) = v31;
    *(v9 + 52) = 2114;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 54) = v32;
    *v50 = v32;
    _os_log_impl(&_mh_execute_header, log, v51, "%s Failed to upload keys for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v9, 0x3Eu);
    sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v16 = v49;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 176);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);

    sub_1001BA80C(v15, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    v16 = v13;
  }

  do
  {
    sub_1001BA80C(v16, type metadata accessor for OwnerSharingCircle);
    v35 = *(v0 + 224) + 1;
    if (v35 == *(v0 + 208))
    {
      v36 = *(v0 + 200);

      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v40 = *(v0 + 152);
      v39 = *(v0 + 160);
      v42 = *(v0 + 136);
      v41 = *(v0 + 144);

      v43 = *(v0 + 8);

      return v43();
    }

    *(v0 + 224) = v35;
    v33 = *(v0 + 176);
    v34 = *(v0 + 112);
    sub_1001BB2E0(*(v0 + 200) + ((*(v0 + 272) + 32) & ~*(v0 + 272)) + *(v0 + 216) * v35, v33, type metadata accessor for OwnerSharingCircle);
    v16 = *(v0 + 176);
  }

  while (*(v33 + *(v34 + 36)) != 1);
  if (*(v16 + *(*(v0 + 112) + 28)) == 3)
  {

    return _swift_task_switch(sub_100185E6C, 0, 0);
  }

  else
  {
    v45 = swift_task_alloc();
    *(v0 + 232) = v45;
    *v45 = v0;
    v45[1] = sub_100185D40;
    v46 = *(v0 + 176);
    v47 = *(v0 + 104);

    return sub_1001942F0(v46, 0);
  }
}

uint64_t sub_100186F6C()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 136);
    v0[9] = v3;

    return _swift_task_switch(sub_100187028, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100187028()
{
  v1 = *(v0 + 72);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100187114;
  v5 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_100187114()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_10018722C, v2, 0);
}

uint64_t sub_100187250()
{
  v1 = v0[8];
  v0[12] = *(v0[11] + 16);

  v2 = *(v1 + 136);
  v0[13] = v2;

  return _swift_task_switch(sub_1001872C8, v2, 0);
}

uint64_t sub_1001872C8()
{
  v1 = *(v0 + 104);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_1001873B4;
  v5 = *(v0 + 104);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v5, v4);
}

uint64_t sub_1001873B4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1001874CC, v2, 0);
}

uint64_t sub_1001874F0()
{
  v1 = *(v0[15] + 16);

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1001875A8;
  v3 = v0[12];

  return sub_100ECA718(v3, v1);
}

uint64_t sub_1001875A8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1001876A4, 0, 0);
}

uint64_t sub_1001876A4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64) != 0;

  return v2(v3);
}

uint64_t sub_100187710(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698D18, &qword_1013908A8) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001877AC, v1, 0);
}

uint64_t sub_1001877AC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  sub_100A053FC(0, 0, v1);
  swift_endAccess();
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[9] = qword_10177B348;

  return _swift_task_switch(sub_1001878C4, 0, 0);
}

uint64_t sub_1001878C4()
{
  v1 = *(v0 + 72);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_100187988;
  v4 = *(v0 + 72);

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_100187988()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_100187AA0, 0, 0);
}

uint64_t sub_100187AA0()
{
  v1 = v0[7];
  v0[11] = v0[5];
  return _swift_task_switch(sub_100187AC4, v1, 0);
}

uint64_t sub_100187AC4()
{
  v1 = v0[7];
  v2 = sub_101074AC8(v0[11]);

  v3 = *(*(v1 + 240) + 16);
  if (v3)
  {
    v4 = v3 > v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v3 - v2;
    v6 = v0[7] + 240;
    sub_100187B6C(v5);
  }

  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

unint64_t sub_100187B6C(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return sub_100A07658(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100187B94()
{
  v1 = type metadata accessor for XPCServiceDescription();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  __chkstk_darwin(v1);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MachServiceName();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  MachServiceName.init(_:)();
  v11 = type metadata accessor for BeaconSharingService(0);
  v47 = v11;
  v48 = &off_101610E30;
  v46[0] = v0;
  v12 = type metadata accessor for BeaconSharingTrampoline();
  v13 = objc_allocWithZone(v12);
  v14 = v47;
  v15 = sub_10015049C(v46, v47);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v45[3] = v11;
  v45[4] = &off_101610E30;
  v45[0] = v20;
  sub_10001F280(v45, v13 + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation);
  v44.receiver = v13;
  v44.super_class = v12;

  v21 = objc_msgSendSuper2(&v44, "init");
  sub_100007BAC(v45);
  sub_100007BAC(v46);
  v22 = *(v0 + 176);
  *(v0 + 176) = v21;
  v23 = v21;

  v24 = *(v43 + 16);
  v39 = v4;
  v40 = v10;
  v24(v8, v10, v4);
  v25 = qword_101694490;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = qword_101698698;
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 interfaceWithProtocol:&OBJC_PROTOCOL___SPBeaconSharingClientXPCProtocol];

  v31 = v38;
  XPCServiceDescription.init(name:options:exportedObject:exportedInterface:remoteObjectInterface:shouldAccept:interruptionHandler:invalidationHandler:)();
  v32 = *(v0 + 168);
  XPCSessionManager.register(service:)();
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000076D4(v33, qword_10177A560);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "BeaconSharingService: Successfully registered XPC services.", v36, 2u);
  }

  (*(v41 + 8))(v31, v42);
  return (*(v43 + 8))(v40, v39);
}

id sub_100188020()
{
  result = sub_100188040();
  qword_101698698 = result;
  return result;
}

id sub_100188040()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___SPBeaconSharingXPCProtocol];
  v1 = sub_100A47234();
  v2 = *(v1 + 52);
  v3 = (*(v1 + 48) + 7) & 0x1FFFFFFF8;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  *(v4 + 32) = sub_100008BB8(0, &qword_101698CF8, NSSet_ptr);
  *(v4 + 40) = sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  v5 = sub_100A47234();
  v6 = *(v5 + 52);
  v7 = (*(v5 + 48) + 7) & 0x1FFFFFFF8;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  *(v8 + 32) = sub_100008BB8(0, &qword_10169BAF0, NSArray_ptr);
  *(v8 + 40) = sub_100008BB8(0, &qword_101698D10, NSUUID_ptr);
  NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();

  return v0;
}

uint64_t sub_1001881A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return _swift_task_switch(sub_1001881CC, 0, 0);
}

uint64_t sub_1001881CC()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 64);
    v5 = *(Strong + 160);
    *(v0 + 40) = 0x6470556572616853;
    *(v0 + 48) = 0xEB00000000657461;
    v6 = Strong;
    v7 = swift_allocObject();
    *(v0 + 80) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    *(v7 + 32) = v3 & 1;
    v8 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + 1);
    v12 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    *v9 = v0;
    v9[1] = sub_100188388;

    return (v12)(v0 + 40, &unk_101390710, v7, SharingCircleWildAdvertisementKey.init(key:), 0);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100188388()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 80);
  }

  else
  {
    v5 = *(v2 + 80);
  }

  return _swift_task_switch(sub_1001884B4, 0, 0);
}

uint64_t sub_1001884B4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100188514(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 256) = a3;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  return _swift_task_switch(sub_100188538, 0, 0);
}

uint64_t sub_100188538()
{
  v1 = *(*(v0 + 120) + 192);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_10018855C, v1, 0);
}

uint64_t sub_10018855C()
{
  v1 = *(*(v0 + 136) + 136);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_100188614, 0, 0);
}

uint64_t sub_100188614()
{
  v19 = v0;
  v1 = *(*(v0 + 120) + 184);
  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v0 + 144) = v2;
  if ((v2 & 0xC000000000000001) != 0)
  {

    if (__CocoaSet.count.getter())
    {
LABEL_3:
      v3 = swift_task_alloc();
      *(v0 + 152) = v3;
      *v3 = v0;
      v3[1] = sub_1001888B0;
      v4 = *(v0 + 120);

      return sub_1001A6AA0(0, 0, 1);
    }
  }

  else
  {
    v6 = *(v2 + 16);

    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A560);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 256);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    if (v10)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 112) = *(v0 + 128);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v15;
    }

    v16 = sub_1000136BC(v13, v14, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s BeaconSharingService: no sessions to notify for share updates.", v11, 0xCu);
    sub_100007BAC(v12);
  }

  v17 = *(v0 + 8);

  return v17(1);
}

uint64_t sub_1001888B0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_1001889B0, 0, 0);
}

uint64_t sub_1001889B0()
{
  v14 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 256);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    if (v4)
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 104) = *(v0 + 128);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v8 = v9;
    }

    v10 = sub_1000136BC(v7, v8, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s BeaconSharingService: Forwarding share updates to listeners.", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v11 = *(*(v0 + 120) + 136);
  *(v0 + 168) = v11;

  return _swift_task_switch(sub_100188B6C, v11, 0);
}

uint64_t sub_100188B6C()
{
  v1 = v0[21];
  v2 = swift_allocObject();
  v0[22] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 7;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_100188C78;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 8);
}

uint64_t sub_100188C78()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v5 = *v0;

  return _swift_task_switch(sub_100188DA4, v3, 0);
}

uint64_t sub_100188DC0(uint64_t a1, void (*a2)(uint64_t a1), uint64_t a3)
{
  v4 = *(v3 + 144);
  if ((v4 & 0xC000000000000001) == 0)
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v9 = v11 & *(v4 + 56);
    *(v3 + 200) = v6;
    *(v3 + 208) = ~v12;
    *(v3 + 192) = v4;
    v10 = 63 - v12;
    goto LABEL_9;
  }

  if (v4 < 0)
  {
    v5 = *(v3 + 144);
  }

  __CocoaSet.makeIterator()();
  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  a1 = Set.Iterator.init(_cocoa:)();
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  *(v3 + 200) = v6;
  *(v3 + 208) = v7;
  *(v3 + 192) = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v7 + 64;
LABEL_9:
    v13 = v9;
    v14 = v8;
    if (!v9)
    {
      v15 = v10 >> 6;
      v16 = v8;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= v15)
        {
          goto LABEL_21;
        }

        v13 = *(v6 + 8 * v14);
        ++v16;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(a1, a2, a3);
    }

LABEL_14:
    v17 = (v13 - 1) & v13;
    v18 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    goto LABEL_15;
  }

  v24 = __CocoaSet.Iterator.next()();
  if (!v24)
  {
    goto LABEL_21;
  }

  *(v3 + 96) = v24;
  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  swift_dynamicCast();
  v18 = *(v3 + 88);
  v14 = v8;
  v17 = v9;
LABEL_15:
  *(v3 + 224) = v14;
  *(v3 + 232) = v17;
  *(v3 + 216) = v18;
  if (v18)
  {
    v19 = *(v3 + 256);
    v20 = *(v3 + 128);
    v21 = swift_allocObject();
    *(v3 + 240) = v21;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19 & 1;
    v22 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v23 = swift_task_alloc();
    *(v3 + 248) = v23;
    *v23 = v3;
    v23[1] = sub_1001890AC;
    a2 = sub_1001BA7D0;
    a1 = v3 + 80;
    a3 = v21;

    return XPCSession.proxy(errorHandler:)(a1, a2, a3);
  }

LABEL_21:
  v25 = *(v3 + 200);
  v26 = *(v3 + 208);
  v27 = *(v3 + 192);
  v28 = *(v3 + 160);
  sub_1000128F8();

  v29 = *(v3 + 8);

  return v29(1);
}

uint64_t sub_1001890AC()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_1001891C4, 0, 0);
}

uint64_t sub_1001891C4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 216);
  if (v1)
  {
    v3 = *(v0 + 160);
    sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
    sub_100009CC8(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
    swift_unknownObjectRetain();

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v1 receivedUpdatedShares:isa];
    swift_unknownObjectRelease_n();
  }

  else
  {
    v8 = *(v0 + 216);
  }

  v9 = *(v0 + 224);
  v10 = *(v0 + 232);
  v11 = *(v0 + 192);
  if (v11 < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17)
    {
      goto LABEL_17;
    }

    *(v0 + 96) = v17;
    sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
    swift_dynamicCast();
    v16 = *(v0 + 88);
    v13 = v9;
    v15 = v10;
  }

  else
  {
    v12 = *(v0 + 232);
    v13 = *(v0 + 224);
    if (!v10)
    {
      v14 = *(v0 + 224);
      while (1)
      {
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v13 >= ((*(v0 + 208) + 64) >> 6))
        {
          goto LABEL_17;
        }

        v12 = *(*(v0 + 200) + 8 * v13);
        ++v14;
        if (v12)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return XPCSession.proxy(errorHandler:)(v5, v6, v7);
    }

LABEL_10:
    v15 = (v12 - 1) & v12;
    v16 = *(*(v11 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  }

  *(v0 + 224) = v13;
  *(v0 + 232) = v15;
  *(v0 + 216) = v16;
  if (v16)
  {
    v18 = *(v0 + 256);
    v19 = *(v0 + 128);
    v20 = swift_allocObject();
    *(v0 + 240) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18 & 1;
    v21 = async function pointer to XPCSession.proxy(errorHandler:)[1];
    v22 = swift_task_alloc();
    *(v0 + 248) = v22;
    *v22 = v0;
    v22[1] = sub_1001890AC;
    v6 = sub_1001BA7D0;
    v5 = v0 + 80;
    v7 = v20;

    return XPCSession.proxy(errorHandler:)(v5, v6, v7);
  }

LABEL_17:
  v23 = *(v0 + 200);
  v24 = *(v0 + 208);
  v25 = *(v0 + 192);
  v26 = *(v0 + 160);
  sub_1000128F8();

  v27 = *(v0 + 8);

  return v27(1);
}

void sub_1001894A4(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    if (a3)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v11;
    }

    v12 = sub_1000136BC(v9, v10, &v15);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, oslog, v5, "%s BeaconSharingService: failed to create reverse-proxy to forward shares %@.", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  else
  {
  }
}

uint64_t sub_1001896BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100189804, v1, 0);
}

uint64_t sub_100189804()
{
  v1 = *(v0[4] + 136);
  v0[15] = v1;
  v0[16] = sub_100B08164(&off_101608210);

  return _swift_task_switch(sub_100189880, v1, 0);
}

uint64_t sub_100189880()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v6 + 16);
  *(v0 + 136) = v8;
  *(v0 + 144) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = *(v6 + 80);
  *(v0 + 216) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 152) = v12;
  *(v12 + 16) = v1;
  (*(v6 + 32))(v12 + v10, v4, v5);
  *(v12 + v11) = v2;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_100189A24;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v15);
}

uint64_t sub_100189A24()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100189B50, v3, 0);
}

uint64_t sub_100189B50()
{
  v1 = v0[4];
  v0[21] = v0[2];
  return _swift_task_switch(sub_100189B74, v1, 0);
}

uint64_t sub_100189B74()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[4];
    v5 = *(v0[10] + 80);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnerSharingCircle);

    sub_1001BAAE8(v2, v3, type metadata accessor for OwnerSharingCircle);
    v6 = *(v4 + 200);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_100189D10;
    v8 = v0[14];

    return (sub_1003BF348)(v8, 0, v6);
  }

  else
  {
    v10 = v0[21];

    v12 = v0[13];
    v11 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100189D10()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10018A0B0;
  }

  else
  {
    v6 = sub_100189E3C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100189E3C()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v8 = *(v7 + 72);
  v9 = (v1 + 32) & ~v1;
  v10 = swift_allocObject();
  *(v0 + 192) = v10;
  *(v10 + 16) = xmmword_101385D80;
  v3(v10 + v9, v4 + *(v5 + 20), v6);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_100189F50;
  v12 = *(v0 + 32);

  return sub_10018A968(v10);
}

uint64_t sub_100189F50()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v13 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_10018A544;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 216);
    v10 = v2 + 32;
    v8 = *(v2 + 32);
    v9 = *(v10 + 8);
    swift_setDeallocating();
    v11 = *(v6 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_10018A498;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10018A0B0()
{
  v38 = v0;
  v1 = v0[23];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v2, v3, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v2, v4, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[9];
    v13 = v0[5];
    v36 = v0[14];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v14 = 141559043;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v34 = v7;
    v15 = *(v12 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v11, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v37);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v20 = v10 + *(v12 + 24);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v37);

    *(v14 + 34) = v24;
    *(v14 + 42) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 44) = v25;
    *v35 = v25;
    _os_log_impl(&_mh_execute_header, v6, v34, "Failed to enable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v14, 0x34u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v26 = v36;
  }

  else
  {

    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v11, type metadata accessor for OwnerSharingCircle);
    v26 = v9;
  }

  sub_1001BA80C(v26, type metadata accessor for OwnerSharingCircle);
  v28 = v0[13];
  v27 = v0[14];
  v30 = v0[11];
  v29 = v0[12];
  v31 = v0[8];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10018A498()
{
  sub_1001BA80C(v0[14], type metadata accessor for OwnerSharingCircle);
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10018A544()
{
  v42 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 40);
  v3 = (*(v0 + 216) + 32) & ~*(v0 + 216);
  swift_setDeallocating();
  v4 = *(v1 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v5 = *(v0 + 208);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177A560);
  sub_1001BB2E0(v6, v7, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v6, v8, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (v12)
  {
    v16 = *(v0 + 72);
    v17 = *(v0 + 40);
    v40 = *(v0 + 112);
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v18 = 141559043;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v38 = v11;
    v19 = *(v16 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1001BA80C(v15, type metadata accessor for OwnerSharingCircle);
    v23 = sub_1000136BC(v20, v22, &v41);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2081;
    v24 = v14 + *(v16 + 24);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    v28 = sub_1000136BC(v25, v27, &v41);

    *(v18 + 34) = v28;
    *(v18 + 42) = 2114;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 44) = v29;
    *v39 = v29;
    _os_log_impl(&_mh_execute_header, v10, v38, "Failed to enable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v18, 0x34u);
    sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v30 = v40;
  }

  else
  {

    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v15, type metadata accessor for OwnerSharingCircle);
    v30 = v13;
  }

  sub_1001BA80C(v30, type metadata accessor for OwnerSharingCircle);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v34 = *(v0 + 88);
  v33 = *(v0 + 96);
  v35 = *(v0 + 64);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10018A968(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v2[12] = v10;
  *v10 = v2;
  v10[1] = sub_10018AAC0;

  return daemon.getter();
}

uint64_t sub_10018AAC0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CircleTrustService();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&unk_101698CE0, type metadata accessor for CircleTrustService);
  *v6 = v12;
  v6[1] = sub_10018AC9C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10018AC9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_10018B5DC;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_10018ADB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10018ADB8()
{
  v2 = v0[3];
  v1 = v0[4];

  v0[17] = sub_10000954C(v3);

  v4 = *(v1 + 136);
  v0[18] = v4;

  return _swift_task_switch(sub_10018AE38, v4, 0);
}

uint64_t sub_10018AE38()
{
  v1 = *(v0 + 144);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_10018AF24;
  v5 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v5, v4);
}

uint64_t sub_10018AF24()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_10018B03C, v2, 0);
}

void sub_10018B060()
{
  v1 = v0[20];
  v30 = *(v1 + 16);
  if (v30)
  {
    v2 = 0;
    v27 = v0[8];
    v28 = v0[9];
    v35 = v0[17];
    v34 = v35 + 56;
    v25 = v0[6];
    v26 = _swiftEmptyArrayStorage;
    v29 = v0[20];
    while (v2 < *(v1 + 16))
    {
      v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v33 = v2;
      v31 = *(v28 + 72);
      sub_1001BB2E0(v0[20] + v32 + v31 * v2, v0[11], type metadata accessor for OwnerSharingCircle);
      if (!*(v35 + 16))
      {
        goto LABEL_3;
      }

      v3 = v0[11];
      v4 = v0[5];
      v5 = *(v27 + 20);
      v6 = *(v35 + 40);
      sub_1001B8FE4(&qword_1016967B0, &type metadata accessor for UUID);
      v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v8 = -1 << *(v35 + 32);
      v9 = v7 & ~v8;
      if ((*(v34 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        v11 = *(v25 + 72);
        v12 = *(v25 + 16);
        while (1)
        {
          v13 = v0[7];
          v14 = v0[5];
          v12(v13, *(v35 + 48) + v9 * v11, v14);
          sub_1001B8FE4(&qword_1016984A0, &type metadata accessor for UUID);
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v25 + 8))(v13, v14);
          if (v15)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v34 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1001BAAE8(v0[11], v0[10], type metadata accessor for OwnerSharingCircle);
        v16 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, v26[2] + 1, 1);
          v16 = v26;
        }

        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17 >> 1)
        {
          sub_101123FE4(v17 > 1, v18 + 1, 1);
          v16 = v26;
        }

        v19 = v0[10];
        v16[2] = v18 + 1;
        v26 = v16;
        sub_1001BAAE8(v19, v16 + v32 + v18 * v31, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
LABEL_3:
        sub_1001BA80C(v0[11], type metadata accessor for OwnerSharingCircle);
      }

      v2 = v33 + 1;
      v1 = v29;
      if (v33 + 1 == v30)
      {
        v20 = v0[20];
        v21 = v26;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_19:
    v0[21] = v21;
    v22 = v0[17];

    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_10018B420;
    v24 = v0[15];

    sub_100D276D8(v21);
  }
}

uint64_t sub_10018B420()
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_10018B664;
  }

  else
  {
    v4 = sub_10018B550;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10018B550()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10018B5DC()
{
  v1 = v0[13];

  v2 = v0[16];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10018B664()
{
  v1 = v0[15];

  v2 = v0[23];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10018B6EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10018B834, v1, 0);
}

uint64_t sub_10018B834()
{
  v1 = *(v0[4] + 136);
  v0[15] = v1;
  v0[16] = sub_100B08164(&off_101608238);

  return _swift_task_switch(sub_10018B8B0, v1, 0);
}

uint64_t sub_10018B8B0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v6 + 16);
  *(v0 + 136) = v8;
  *(v0 + 144) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = *(v6 + 80);
  *(v0 + 216) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 152) = v12;
  *(v12 + 16) = v1;
  (*(v6 + 32))(v12 + v10, v4, v5);
  *(v12 + v11) = v2;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_10018BA54;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v15);
}

uint64_t sub_10018BA54()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_10018BB80, v3, 0);
}

uint64_t sub_10018BB80()
{
  v1 = v0[4];
  v0[21] = v0[2];
  return _swift_task_switch(sub_10018BBA4, v1, 0);
}

uint64_t sub_10018BBA4()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[13];
    v3 = v0[14];
    v4 = v0[4];
    v5 = *(v0[10] + 80);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnerSharingCircle);

    sub_1001BAAE8(v2, v3, type metadata accessor for OwnerSharingCircle);
    v6 = *(v4 + 200);
    v7 = swift_task_alloc();
    v0[22] = v7;
    *v7 = v0;
    v7[1] = sub_10018BD40;
    v8 = v0[14];

    return (sub_1003C53CC)(v8, 0, v6);
  }

  else
  {
    v10 = v0[21];

    v12 = v0[13];
    v11 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10018BD40()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10018C0E0;
  }

  else
  {
    v6 = sub_10018BE6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10018BE6C()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v8 = *(v7 + 72);
  v9 = (v1 + 32) & ~v1;
  v10 = swift_allocObject();
  *(v0 + 192) = v10;
  *(v10 + 16) = xmmword_101385D80;
  v3(v10 + v9, v4 + *(v5 + 20), v6);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_10018BF80;
  v12 = *(v0 + 32);

  return sub_10018A968(v10);
}

uint64_t sub_10018BF80()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v13 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_10018C4C8;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 216);
    v10 = v2 + 32;
    v8 = *(v2 + 32);
    v9 = *(v10 + 8);
    swift_setDeallocating();
    v11 = *(v6 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_1001BE494;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10018C0E0()
{
  v38 = v0;
  v1 = v0[23];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_1001BB2E0(v2, v3, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v2, v4, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  if (v8)
  {
    v12 = v0[9];
    v13 = v0[5];
    v36 = v0[14];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v14 = 141559043;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v34 = v7;
    v15 = *(v12 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v11, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v37);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v20 = v10 + *(v12 + 24);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v24 = sub_1000136BC(v21, v23, &v37);

    *(v14 + 34) = v24;
    *(v14 + 42) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 44) = v25;
    *v35 = v25;
    _os_log_impl(&_mh_execute_header, v6, v34, "Failed to disable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v14, 0x34u);
    sub_10000B3A8(v35, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v26 = v36;
  }

  else
  {

    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v11, type metadata accessor for OwnerSharingCircle);
    v26 = v9;
  }

  sub_1001BA80C(v26, type metadata accessor for OwnerSharingCircle);
  v28 = v0[13];
  v27 = v0[14];
  v30 = v0[11];
  v29 = v0[12];
  v31 = v0[8];

  v32 = v0[1];

  return v32();
}

uint64_t sub_10018C4C8()
{
  v42 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 40);
  v3 = (*(v0 + 216) + 32) & ~*(v0 + 216);
  swift_setDeallocating();
  v4 = *(v1 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v5 = *(v0 + 208);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177A560);
  sub_1001BB2E0(v6, v7, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v6, v8, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  if (v12)
  {
    v16 = *(v0 + 72);
    v17 = *(v0 + 40);
    v40 = *(v0 + 112);
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v18 = 141559043;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v38 = v11;
    v19 = *(v16 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1001BA80C(v15, type metadata accessor for OwnerSharingCircle);
    v23 = sub_1000136BC(v20, v22, &v41);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2081;
    v24 = v14 + *(v16 + 24);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    v28 = sub_1000136BC(v25, v27, &v41);

    *(v18 + 34) = v28;
    *(v18 + 42) = 2114;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 44) = v29;
    *v39 = v29;
    _os_log_impl(&_mh_execute_header, v10, v38, "Failed to disable lost mode on key drop for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v18, 0x34u);
    sub_10000B3A8(v39, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v30 = v40;
  }

  else
  {

    sub_1001BA80C(v14, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v15, type metadata accessor for OwnerSharingCircle);
    v30 = v13;
  }

  sub_1001BA80C(v30, type metadata accessor for OwnerSharingCircle);
  v32 = *(v0 + 104);
  v31 = *(v0 + 112);
  v34 = *(v0 + 88);
  v33 = *(v0 + 96);
  v35 = *(v0 + 64);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10018C8EC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 160);

  v6 = *(v0 + 168);

  v7 = *(v0 + 184);

  v8 = *(v0 + 192);

  v9 = *(v0 + 200);

  v10 = *(v0 + 208);

  v11 = *(v0 + 216);

  v12 = *(v0 + 224);

  v13 = *(v0 + 232);

  v14 = *(v0 + 240);

  v15 = *(v0 + 248);

  v16 = *(v0 + 256);

  v17 = *(v0 + 264);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_pendingExpirationTask, &qword_101698C08, &unk_101390730);
  v18 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_dailySharesCountAnalyticsThrottle);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10018C9CC()
{
  sub_10018C8EC();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10018CA00()
{
  sub_10018CAF0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10018CAF0()
{
  if (!qword_1016988A0)
  {
    type metadata accessor for BeaconSharingService.PendingExpirationTask(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016988A0);
    }
  }
}

void sub_10018CB90()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10018CC14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10018CC14()
{
  if (!qword_101698B78[0])
  {
    sub_1000BC580(&qword_101696960, &unk_10138B220);
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, qword_101698B78);
    }
  }
}

uint64_t sub_10018CC8C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconSharingService(0);
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10018CD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for BeaconSharingService(0);
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10018CE00(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconSharingService(0);
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10018CEAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100173058();
}

uint64_t sub_10018CF38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003633C;

  return sub_10017D190();
}

uint64_t sub_10018CFC4()
{
  v1 = *v0;
  type metadata accessor for BeaconSharingService(0);
  sub_1001B8FE4(&unk_101696950, type metadata accessor for BeaconSharingService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10018D030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_10018D0C0();
}

uint64_t sub_10018D0C0()
{
  v1[3] = v0;
  v2 = type metadata accessor for OwnerSharingCircle();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[8] = v5;
  v1[9] = *(v5 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v1[12] = v7;
  *v7 = v1;
  v7[1] = sub_10018D234;

  return daemon.getter();
}

uint64_t sub_10018D234(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DelegatedShareMetadataService();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_1001B8FE4(&unk_101698C70, type metadata accessor for DelegatedShareMetadataService);
  *v6 = v12;
  v6[1] = sub_10018D410;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10018D410(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  v6 = *(v3 + 104);
  v7 = *(v3 + 24);
  if (v1)
  {

    v8 = sub_10018DEBC;
  }

  else
  {

    v8 = sub_10018D574;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10018D574()
{
  v1 = v0[11];
  v2 = *(v0[3] + 136);
  v0[16] = v2;
  v3 = type metadata accessor for UUID();
  v0[17] = v3;
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);

  return _swift_task_switch(sub_10018D628, v2, 0);
}

uint64_t sub_10018D628()
{
  v1 = v0[16];
  v2 = v0[10];
  v4 = v0[8];
  v3 = v0[9];
  sub_1000D2A70(v0[11], v2, &qword_1016980D0, &unk_10138F3B0);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + v3;
  v7 = swift_allocObject();
  v0[18] = v7;
  *(v7 + 16) = v1;
  sub_1000D2AD8(v2, v7 + v5, &qword_1016980D0, &unk_10138F3B0);
  *(v7 + v6) = 1;
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[19] = v9;
  v10 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v9 = v0;
  v9[1] = sub_10018D7A4;

  return unsafeBlocking<A>(context:_:)(v0 + 2, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3164, v7, v10);
}

uint64_t sub_10018D7A4()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return _swift_task_switch(sub_10018D8D0, v3, 0);
}

uint64_t sub_10018D8D0()
{
  v1 = v0[3];
  sub_10000B3A8(v0[11], &qword_1016980D0, &unk_10138F3B0);
  v0[20] = v0[2];

  return _swift_task_switch(sub_10018D954, v1, 0);
}

uint64_t sub_10018D954()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  if (v2)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v3 + 80);
    *(v0 + 208) = v5;
    *(v0 + 176) = *(v3 + 72);
    *(v0 + 184) = 0;
    v6 = *(v0 + 56);
    sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), v6, type metadata accessor for OwnerSharingCircle);
    v7 = *(v4 + 20);
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_10018DB60;
    v9 = *(v0 + 120);

    return sub_1007AFF7C(v6 + v7);
  }

  else
  {

    v11 = *(v0 + 120);
    v12 = *(v0 + 24);
    type metadata accessor for Transaction();
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_10018DB60()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_10018DFF4;
  }

  else
  {
    v6 = sub_10018DC8C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10018DC8C()
{
  sub_1001BA80C(*(v0 + 56), type metadata accessor for OwnerSharingCircle);
  v1 = *(v0 + 184) + 1;
  if (v1 == *(v0 + 168))
  {
    v2 = *(v0 + 160);

    v3 = *(v0 + 120);
    v4 = *(v0 + 24);
    type metadata accessor for Transaction();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    *(v6 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    *(v0 + 184) = v1;
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    sub_1001BB2E0(*(v0 + 160) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 176) * v1, v13, type metadata accessor for OwnerSharingCircle);
    v15 = *(v14 + 20);
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    *v16 = v0;
    v16[1] = sub_10018DB60;
    v17 = *(v0 + 120);

    return sub_1007AFF7C(v13 + v15);
  }
}

uint64_t sub_10018DEBC()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service: DelegatedShareMetadataService", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[6];
  v7 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10018DFF4()
{
  v41 = v0;
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177AE28);
  sub_1001BB2E0(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  if (v6)
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 48);
    v39 = *(v0 + 56);
    v10 = *(v0 + 32);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 141558275;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v13 = *(v10 + 20);
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    v17 = sub_1000136BC(v14, v16, &v40);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching delegated share metadata for %{private,mask.hash}s", v11, 0x16u);
    sub_100007BAC(v12);

    v18 = v39;
  }

  else
  {
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    v21 = *(v0 + 200);

    sub_1001BA80C(v20, type metadata accessor for OwnerSharingCircle);
    v18 = v19;
  }

  sub_1001BA80C(v18, type metadata accessor for OwnerSharingCircle);
  v22 = *(v0 + 184) + 1;
  if (v22 == *(v0 + 168))
  {
    v23 = *(v0 + 160);

    v24 = *(v0 + 120);
    v25 = *(v0 + 24);
    type metadata accessor for Transaction();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = 0;
    *(v27 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v31 = *(v0 + 48);
    v30 = *(v0 + 56);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    *(v0 + 184) = v22;
    v34 = *(v0 + 56);
    v35 = *(v0 + 32);
    sub_1001BB2E0(*(v0 + 160) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + *(v0 + 176) * v22, v34, type metadata accessor for OwnerSharingCircle);
    v36 = *(v35 + 20);
    v37 = swift_task_alloc();
    *(v0 + 192) = v37;
    *v37 = v0;
    v37[1] = sub_10018DB60;
    v38 = *(v0 + 120);

    return sub_1007AFF7C(v34 + v36);
  }
}

uint64_t sub_10018E438(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a2;
  *(v4 + 216) = a1;
  return _swift_task_switch(sub_10018E460, v3, 0);
}

uint64_t sub_10018E460()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 216);
  v4 = *(*(v0 + 144) + 208);
  *(v0 + 152) = sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_10018E558;

  return sub_101268B0C(inited);
}

uint64_t sub_10018E558(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v5 = *v2;
  *(*v2 + 176) = a1;

  v6 = *(v3 + 160);
  v7 = *(v3 + 144);
  if (v1)
  {

    swift_setDeallocating();
    sub_1001BAE8C(v6 + 32);
    v8 = sub_10018EEF0;
  }

  else
  {
    swift_setDeallocating();
    sub_1001BAE8C(v6 + 32);
    v8 = sub_10018E6CC;
  }

  return _swift_task_switch(v8, v7, 0);
}

char *sub_10018E6CC()
{
  if (*(*(v0 + 176) + 16))
  {
    v1 = sub_100772110(*(v0 + 216), *(v0 + 128), *(v0 + 136));
    if (v2)
    {
      v3 = *(*(*(v0 + 176) + 56) + 8 * v1);

      if (v3 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
LABEL_5:
          result = sub_1011244D8(0, v4 & ~(v4 >> 63), 0);
          if (v4 < 0)
          {
            __break(1u);
            return result;
          }

          v6 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v7 = *(v3 + 8 * v6 + 32);
            }

            v8 = v7;
            v9 = [v7 pushToken];
            v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v12 = v11;

            v14 = _swiftEmptyArrayStorage[2];
            v13 = _swiftEmptyArrayStorage[3];
            if (v14 >= v13 >> 1)
            {
              sub_1011244D8((v13 > 1), v14 + 1, 1);
            }

            ++v6;
            _swiftEmptyArrayStorage[2] = v14 + 1;
            v15 = &_swiftEmptyArrayStorage[2 * v14];
            v15[4] = v10;
            v15[5] = v12;
          }

          while (v4 != v6);
        }
      }

      v16 = sub_101129EC8(_swiftEmptyArrayStorage);

      goto LABEL_17;
    }
  }

  v16 = &_swiftEmptySetSingleton;
LABEL_17:
  *(v0 + 184) = v16;
  v17 = *(v0 + 152);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 216);
  v21 = *(*(v0 + 144) + 216);
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v20;
  *(inited + 40) = v19;
  *(inited + 48) = v18;

  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  v23[1] = sub_10018E944;

  return sub_101268B0C(inited);
}

uint64_t sub_10018E944(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v5 = *v2;
  *(*v2 + 208) = a1;

  v6 = *(v3 + 192);
  v7 = *(v3 + 144);
  if (v1)
  {

    swift_setDeallocating();
    sub_1001BAE8C(v6 + 32);
    v8 = sub_10018EFDC;
  }

  else
  {
    swift_setDeallocating();
    sub_1001BAE8C(v6 + 32);
    v8 = sub_10018EAB8;
  }

  return _swift_task_switch(v8, v7, 0);
}

char *sub_10018EAB8()
{
  v39 = v0;
  if (*(*(v0 + 208) + 16))
  {
    v1 = sub_100772110(*(v0 + 216), *(v0 + 128), *(v0 + 136));
    if (v2)
    {
      v3 = *(*(*(v0 + 208) + 56) + 8 * v1);

      if (v3 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
LABEL_5:
          v38 = _swiftEmptyArrayStorage;
          result = sub_1011244D8(0, v4 & ~(v4 >> 63), 0);
          if (v4 < 0)
          {
            __break(1u);
            return result;
          }

          v6 = 0;
          v7 = v38;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v8 = *(v3 + 8 * v6 + 32);
            }

            v9 = v8;
            v10 = [v8 pushToken];
            v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;

            v38 = v7;
            v15 = v7[2];
            v14 = v7[3];
            if (v15 >= v14 >> 1)
            {
              sub_1011244D8((v14 > 1), v15 + 1, 1);
              v7 = v38;
            }

            ++v6;
            v7[2] = v15 + 1;
            v16 = &v7[2 * v15];
            v16[4] = v11;
            v16[5] = v13;
          }

          while (v4 != v6);

          goto LABEL_17;
        }
      }

      v7 = _swiftEmptyArrayStorage;
LABEL_17:
      v17 = sub_101129EC8(v7);

      goto LABEL_18;
    }
  }

  v17 = &_swiftEmptySetSingleton;
LABEL_18:
  v18 = *(v0 + 184);
  if (v17[2] <= *(v18 + 16) >> 3)
  {
    v38 = *(v0 + 184);
    sub_10087D37C(v17);

    v19 = v38;
  }

  else
  {
    v19 = sub_10060EAD8(v17, *(v0 + 184));
  }

  v20 = v19[2];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 184);
  v22 = *(v0 + 136);
  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177A560);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 184);
  if (v26)
  {
    v28 = *(v0 + 128);
    v36 = *(v0 + 136);
    v29 = swift_slowAlloc();
    v37 = v20;
    v38 = swift_slowAlloc();
    v30 = v38;
    *v29 = 141559043;
    *(v29 + 4) = 1752392040;
    *(v29 + 12) = 2081;
    *(v29 + 14) = sub_1000136BC(v28, v36, &v38);
    v31 = v0;
    *(v29 + 22) = 2048;
    v32 = *(v18 + 16);

    *(v29 + 24) = v32;

    *(v29 + 32) = 2048;
    v33 = v17[2];

    *(v29 + 34) = v33;

    *(v29 + 42) = 2048;
    v34 = v19[2];

    *(v29 + 44) = v34;
    v0 = v31;

    _os_log_impl(&_mh_execute_header, v24, v25, "                Destination: %{private,mask.hash}s reported legacy endpoints: %ld, endpoints: %ld, remaining Legacy Endpoints: %ld.", v29, 0x34u);
    sub_100007BAC(v30);
    v20 = v37;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v35 = *(v0 + 8);

  return v35(v20 != 0);
}

uint64_t sub_10018EEF0()
{
  *(v0 + 184) = &_swiftEmptySetSingleton;
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 216);
  v5 = *(*(v0 + 144) + 216);
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v2;

  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_10018E944;

  return sub_101268B0C(inited);
}

uint64_t sub_10018EFDC()
{
  v22 = v0;
  v1 = v0[23];
  if (*(&_swiftEmptySetSingleton + 2) <= *(v1 + 16) >> 3)
  {
    v21 = v0[23];
    sub_10087D37C(&_swiftEmptySetSingleton);

    v2 = v21;
  }

  else
  {
    v2 = sub_10060EAD8(&_swiftEmptySetSingleton, v0[23]);
  }

  v3 = v2[2];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = v0[17];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  if (v9)
  {
    v20 = v3;
    v11 = v0[16];
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141559043;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    *(v13 + 14) = sub_1000136BC(v11, v12, &v21);
    *(v13 + 22) = 2048;
    v15 = *(v1 + 16);

    *(v13 + 24) = v15;

    *(v13 + 32) = 2048;
    v16 = *(&_swiftEmptySetSingleton + 2);

    *(v13 + 34) = v16;

    *(v13 + 42) = 2048;
    v3 = v20;
    v17 = v2[2];

    *(v13 + 44) = v17;

    _os_log_impl(&_mh_execute_header, v7, v8, "                Destination: %{private,mask.hash}s reported legacy endpoints: %ld, endpoints: %ld, remaining Legacy Endpoints: %ld.", v13, 0x34u);
    sub_100007BAC(v14);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v18 = v0[1];

  return v18(v3 != 0);
}

uint64_t sub_10018F2A8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10018F380, v2, 0);
}

uint64_t sub_10018F380()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[15] = v6;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Create automatic share (UT only) for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[9] + 200);
  v0[5] = type metadata accessor for MemberCircleRevokeManager();
  v0[6] = &off_1016634E8;
  v0[2] = v19;

  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_10018F63C;

  return sub_1003AE100((v0 + 2));
}

uint64_t sub_10018F63C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {
    *(v3 + 176) = v1;
    v6 = *(v3 + 72);
    v7 = sub_1001BE458;
  }

  else
  {
    v7 = sub_10018F76C;
    v6 = 0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10018F76C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  (*(v0 + 120))(v3, *(v0 + 56), v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  *(v10 + 16) = v1;
  (*(v6 + 32))(v10 + v8, v3, v5);
  v11 = v10 + v9;
  *v11 = v7;
  *(v11 + 8) = 0;
  v12 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v15 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_10018F910;

  return v15(&unk_101390820, v10);
}

uint64_t sub_10018F910()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_10018FBD4;
  }

  else
  {
    v4 = sub_10018FA40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10018FA40()
{
  v1 = v0[18];
  v2 = v0[9];

  sub_100007BAC(v0 + 2);

  return _swift_task_switch(sub_10018FAB4, v2, 0);
}

uint64_t sub_10018FAB4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10018FBD4()
{
  v1 = v0[18];

  v0[22] = v0[21];
  v2 = v0[9];

  return _swift_task_switch(sub_1001BE458, v2, 0);
}

uint64_t sub_10018FC44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10018FD08, v2, 0);
}

uint64_t sub_10018FD08()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Create automatic (self beaconing) share for %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_10018FFA4;
  v20 = v0[2];
  v19 = v0[3];

  return sub_1003C5E1C(v20, v19, 1);
}

uint64_t sub_10018FFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 32);

    return _swift_task_switch(sub_1001900F0, v8, 0);
  }
}

uint64_t sub_1001900F0()
{
  v1 = v0[7];
  v2 = v0[4];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100190208(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001902E0, v2, 0);
}

uint64_t sub_1001902E0()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[15] = v6;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Create explicit share for %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[9] + 200);
  v0[5] = type metadata accessor for MemberCircleRevokeManager();
  v0[6] = &off_1016634E8;
  v0[2] = v19;

  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_10019059C;

  return sub_1003AE100((v0 + 2));
}

uint64_t sub_10019059C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {
    *(v3 + 176) = v1;
    v6 = *(v3 + 72);
    v7 = sub_100190BA8;
  }

  else
  {
    v7 = sub_1001906CC;
    v6 = 0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001906CC()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  (*(v0 + 120))(v3, *(v0 + 56), v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  *(v10 + 16) = v1;
  (*(v6 + 32))(v10 + v8, v3, v5);
  v11 = v10 + v9;
  *v11 = v7;
  *(v11 + 8) = 2;
  v12 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v15 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_100190874;

  return v15(&unk_101390D08, v10);
}

uint64_t sub_100190874()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100190B38;
  }

  else
  {
    v4 = sub_1001909A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001909A4()
{
  v1 = v0[18];
  v2 = v0[9];

  sub_100007BAC(v0 + 2);

  return _swift_task_switch(sub_100190A18, v2, 0);
}

uint64_t sub_100190A18()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100190B38()
{
  v1 = v0[18];

  v0[22] = v0[21];
  v2 = v0[9];

  return _swift_task_switch(sub_100190BA8, v2, 0);
}

uint64_t sub_100190BA8()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100007BAC(v0 + 2);

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_100190C20(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return _swift_task_switch(sub_100190C44, 0, 0);
}

uint64_t sub_100190C44()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100190CFC, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100190CFC()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1 & 1;

  static Transaction.asyncTask(name:block:)();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100190E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 80) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  return _swift_task_switch(sub_100190E34, 0, 0);
}

uint64_t sub_100190E34()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_100190F30;
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);

    return sub_10017FFA4(v6, v5, v3 & 1);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100190F30()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 64);

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_100191044(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100191064, v1, 0);
}

uint64_t sub_100191064()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = [v6 inputUrl];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Preview import from url %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  v14 = swift_task_alloc();
  *(v0 + 32) = v14;
  *v14 = v0;
  v14[1] = sub_100191280;
  v15 = *(v0 + 16);

  return sub_1003C0FF8(v15);
}

uint64_t sub_100191280(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1 & 1;

    return _swift_task_switch(sub_1001913D4, v9, 0);
  }
}

uint64_t sub_1001913D4()
{
  v1 = *(v0 + 24);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);
  v5 = *(v0 + 40);

  return v4(v5);
}

uint64_t sub_1001914DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100191500, v3, 0);
}

uint64_t sub_100191500()
{
  v20 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = [v6 inputUrl];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_1000136BC(v10, v12, &v19);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Import url %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_100191720;
  v15 = v0[3];
  v16 = v0[4];
  v17 = v0[2];

  return sub_1003C1768(v17, v15, v16);
}

uint64_t sub_100191720()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 40);

    return _swift_task_switch(sub_100191864, v7, 0);
  }
}

uint64_t sub_100191864()
{
  v1 = *(v0 + 40);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100191968(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100191A2C, v2, 0);
}

uint64_t sub_100191A2C()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove imported share %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  *(v0 + 56) = v18;
  *v18 = v0;
  v18[1] = sub_100191CC8;
  v19 = *(v0 + 16);
  v20 = *(v0 + 64);

  return sub_1003C1EE0(v19, v20);
}

uint64_t sub_100191CC8()
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
    v8 = *(v2 + 24);

    return _swift_task_switch(sub_100191E14, v8, 0);
  }
}

uint64_t sub_100191E14()
{
  v1 = v0[6];
  v2 = v0[3];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100191F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100191FFC, v3, 0);
}

uint64_t sub_100191FFC()
{
  v28 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v27);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Create delegated share for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 104);
  v18 = *(v0 + 80);
  v19 = [*(v0 + 56) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = *(v18 + 200);
  v21 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 16) = v20;
  *(v0 + 40) = v21;
  *(v0 + 48) = &off_1016634E8;

  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *v22 = v0;
  v22[1] = sub_1001922E8;
  v23 = *(v0 + 104);
  v24 = *(v0 + 64);
  v25 = *(v0 + 72);

  return sub_1003C24F8(v23, v0 + 16, v24, v25);
}

uint64_t sub_1001922E8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v11 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 80);
    v8 = sub_100192594;
  }

  else
  {
    v9 = *(v2 + 80);
    sub_100007BAC((v2 + 16));
    v8 = sub_100192474;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100192474()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100192594()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_100007BAC(v0 + 2);

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_10019260C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for UUID();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001926DC, v3, 0);
}

uint64_t sub_1001926DC()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Check web share status for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 104);
  v18 = [*(v0 + 56) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_100192948, 0, 0);
}

uint64_t sub_100192948()
{
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1001929EC;

  return sub_1003AC554(v0 + 16);
}

uint64_t sub_1001929EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = v1;

  sub_10000B3A8((v4 + 2), &unk_101698E08, &qword_101390A08);
  if (v1)
  {

    return _swift_task_switch(sub_100192D48, 0, 0);
  }

  else
  {
    v4[17] = a1;
    v7 = swift_task_alloc();
    v4[18] = v7;
    *v7 = v6;
    v7[1] = sub_100192B90;
    v8 = v4[13];

    return sub_1005B29FC(v8);
  }
}

uint64_t sub_100192B90(char a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_100192C90, 0, 0);
}

uint64_t sub_100192C90()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 152));

  (*(v5 + 8))(v3, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100192D48()
{
  v1 = v0[10];
  (*(v0[12] + 8))(v0[13], v0[11]);

  return _swift_task_switch(sub_100192DC0, v1, 0);
}

uint64_t sub_100192DC0()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_100192E2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100192EFC, v2, 0);
}

uint64_t sub_100192EFC()
{
  v24 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v23);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Check web share status for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 56);
  v18 = [*(v0 + 24) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_1001931A0;
  v20 = *(v0 + 56);
  v21 = *(v0 + 16);

  return sub_10039E2E4(v21, v20);
}

uint64_t sub_1001931A0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[10] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[4];

    return _swift_task_switch(sub_100193354, v7, 0);
  }

  else
  {
    v9 = v6[7];
    v8 = v6[8];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_100193354()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1001933C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10019348C, v1, 0);
}

uint64_t sub_10019348C()
{
  v26 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_1000136BC(v13, v15, &v25);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Stops temporary location share for %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 64);
  v19 = [*(v0 + 56) beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = *(v18 + 200);
  v21 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 16) = v20;
  *(v0 + 40) = v21;
  *(v0 + 48) = &off_1016634E8;

  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = sub_100193770;
  v23 = *(v0 + 88);

  return sub_1003C2BB4(v23, v0 + 16);
}

uint64_t sub_100193770()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v11 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 64);
    v8 = sub_100193A1C;
  }

  else
  {
    v9 = *(v2 + 64);
    sub_100007BAC((v2 + 16));
    v8 = sub_1001938FC;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001938FC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100193A1C()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100007BAC(v0 + 2);

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_100193A94(uint64_t a1, char a2)
{
  *(v3 + 160) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 + 64);
  *(v3 + 72) = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v3 + 80) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v8 = type metadata accessor for OwnerSharingCircle();
  *(v3 + 96) = v8;
  v9 = *(v8 - 8);
  *(v3 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100193BF8, v2, 0);
}

uint64_t sub_100193BF8()
{
  v1 = *(*(v0 + 40) + 136);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_100193C1C, v1, 0);
}

uint64_t sub_100193C1C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  (*(v4 + 16))(v2, v0[4], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_100193D7C;
  v10 = v0[10];
  v9 = v0[11];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B0, v6, v10);
}

uint64_t sub_100193D7C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return _swift_task_switch(sub_100193EA8, v3, 0);
}

uint64_t sub_100193EA8()
{
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 24) = 5;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v2 = *(v0 + 16);
    swift_willThrow();
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_1001BAAE8(v1, *(v0 + 112), type metadata accessor for OwnerSharingCircle);
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_100194080;
    v9 = *(v0 + 112);
    v10 = *(v0 + 40);
    v11 = *(v0 + 160);

    return sub_1001942F0(v9, v11);
  }
}

uint64_t sub_100194080()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100194250;
  }

  else
  {
    v6 = sub_1001941AC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001941AC()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_1001BA80C(v0[14], type metadata accessor for OwnerSharingCircle);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100194250()
{
  sub_1001BA80C(v0[14], type metadata accessor for OwnerSharingCircle);
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001942F0(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for OwnerSharingCircle();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100194388, v2, 0);
}

uint64_t sub_100194388()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for OwnerSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v8 + 20);
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v7, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Upload keys for %{private,mask.hash}s", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {

    sub_1001BA80C(v7, type metadata accessor for OwnerSharingCircle);
  }

  v16 = *(*(v0 + 24) + 200);
  v17 = swift_task_alloc();
  *(v0 + 48) = v17;
  *v17 = v0;
  v17[1] = sub_100194644;
  v18 = *(v0 + 56);
  v19 = *(v0 + 16);

  return sub_1003BF348(v19, v18, v16);
}

uint64_t sub_100194644()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 24);

    return _swift_task_switch(sub_100194790, v8, 0);
  }
}

uint64_t sub_100194790()
{
  v1 = v0[5];
  v2 = v0[3];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001948A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 289) = a4;
  *(v5 + 288) = a2;
  *(v5 + 104) = a1;
  v6 = type metadata accessor for MemberSharingCircle();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v5 + 152) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v5 + 176) = v11;
  v12 = *(v11 - 8);
  *(v5 + 184) = v12;
  *(v5 + 192) = *(v12 + 64);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100194A2C, v4, 0);
}

uint64_t sub_100194A2C()
{
  v28 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 104);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  *(v0 + 216) = v6;
  *(v0 + 224) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 289);
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136315651;
    if (v9)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 96) = *(v0 + 112);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v16;
    }

    v17 = *(v0 + 208);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v20 = sub_1000136BC(v11, v12, &v27);

    *(v10 + 4) = v20;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v19 + 8))(v17, v18);
    v24 = sub_1000136BC(v21, v23, &v27);

    *(v10 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Download keys for %{private,mask.hash}s", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 208);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);

    (*(v15 + 8))(v13, v14);
  }

  v25 = *(*(v0 + 120) + 136);
  *(v0 + 232) = v25;

  return _swift_task_switch(sub_100194D08, v25, 0);
}

uint64_t sub_100194D08()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  (*(v0 + 216))(v3, *(v0 + 104), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  *(v7 + 16) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_100194E60;
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1001BAD40, v7, v11);
}

uint64_t sub_100194E60()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return _swift_task_switch(sub_100194F8C, v3, 0);
}

uint64_t sub_100194F8C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  sub_1000D2A70(*(v0 + 168), v1, &unk_101698BC0, &qword_10138C440);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 168);
    sub_10000B3A8(*(v0 + 160), &unk_101698BC0, &qword_10138C440);
    sub_1001BAB50();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    sub_10000B3A8(v4, &unk_101698BC0, &qword_10138C440);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v10 = *(v0 + 144);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 288);
    sub_1001BAAE8(*(v0 + 160), *(v0 + 144), type metadata accessor for MemberSharingCircle);
    v15 = *(v13 + 200);
    v16 = type metadata accessor for MemberCircleRevokeManager();
    if (v14 == 1)
    {
      *(v0 + 56) = v15;
      v17 = v0 + 56;
      *(v0 + 80) = v16;
      *(v0 + 88) = &off_1016634E8;
      v21 = sub_1003BFA7C;

      v18 = swift_task_alloc();
      *(v0 + 256) = v18;
      *v18 = v0;
      v19 = sub_100195230;
    }

    else
    {
      *(v0 + 16) = v15;
      v17 = v0 + 16;
      *(v0 + 40) = v16;
      *(v0 + 48) = &off_1016634E8;
      v21 = sub_1003C00F0;

      v18 = swift_task_alloc();
      *(v0 + 272) = v18;
      *v18 = v0;
      v19 = sub_1001955C0;
    }

    v18[1] = v19;
    v20 = *(v0 + 144);

    return v21(v20, v17);
  }
}

uint64_t sub_100195230()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v8 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_1001954E4;
  }

  else
  {
    v6 = *(v2 + 120);
    sub_100007BAC((v2 + 56));
    v5 = sub_100195358;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100195358()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v11 = *(v0 + 200);
  v12 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 289);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v4 & 1;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v3, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001954E4()
{
  v1 = v0[21];
  sub_1001BA80C(v0[18], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  sub_100007BAC(v0 + 7);
  v2 = v0[33];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001955C0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v8 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_1001956E8;
  }

  else
  {
    v6 = *(v2 + 120);
    sub_100007BAC((v2 + 16));
    v5 = sub_1001BE444;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001956E8()
{
  v1 = v0[21];
  sub_1001BA80C(v0[18], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  sub_100007BAC(v0 + 2);
  v2 = v0[35];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001957C4(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[46] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v2[48] = v5;
  v6 = *(v5 - 8);
  v2[49] = v6;
  v7 = *(v6 + 64) + 15;
  v2[50] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle();
  v2[51] = v8;
  v9 = *(v8 - 8);
  v2[52] = v9;
  v10 = *(v9 + 64) + 15;
  v2[53] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_101698CC0, &unk_101390890);
  v2[54] = v11;
  v12 = *(v11 - 8);
  v2[55] = v12;
  v13 = *(v12 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v14 = type metadata accessor for OwnerSharingCircle();
  v2[62] = v14;
  v15 = *(v14 - 8);
  v2[63] = v15;
  v16 = *(v15 + 64) + 15;
  v2[64] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v2[65] = v17;
  v18 = *(v17 - 8);
  v2[66] = v18;
  v2[67] = *(v18 + 64);
  v2[68] = swift_task_alloc();

  return _swift_task_switch(sub_100195A80, v1, 0);
}

uint64_t sub_100195A80()
{
  v1 = *(*(v0 + 360) + 136);
  *(v0 + 552) = v1;
  return _swift_task_switch(sub_100195AA4, v1, 0);
}

uint64_t sub_100195AA4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 352);
  v7 = *(v4 + 16);
  *(v0 + 560) = v7;
  *(v0 + 568) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v5);
  v8 = *(v4 + 80);
  *(v0 + 824) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 576) = v10;
  *(v10 + 16) = v1;
  v11 = *(v4 + 32);
  *(v0 + 584) = v11;
  *(v0 + 592) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v5);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 600) = v13;
  v14 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v13 = v0;
  v13[1] = sub_100195C4C;

  return unsafeBlocking<A>(context:_:)(v0 + 288, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v10, v14);
}

uint64_t sub_100195C4C()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 552);
  v5 = *v0;

  return _swift_task_switch(sub_100195D78, v3, 0);
}

uint64_t sub_100195D78()
{
  v1 = v0[45];
  v0[76] = v0[36];
  return _swift_task_switch(sub_100195D9C, v1, 0);
}

uint64_t sub_100195D9C()
{
  v1 = *(v0 + 552);
  *(v0 + 616) = sub_100B08164(&off_101608260);

  return _swift_task_switch(sub_100195E10, v1, 0);
}

uint64_t sub_100195E10()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 568);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 520);
  v9 = (*(v0 + 824) + 24) & ~*(v0 + 824);
  (*(v0 + 560))(v6, *(v0 + 352), v8);
  v10 = swift_allocObject();
  *(v0 + 624) = v10;
  *(v10 + 16) = v5;
  v3(v10 + v9, v6, v8);
  *(v10 + ((v9 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 632) = v12;
  v13 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v12 = v0;
  v12[1] = sub_100195F9C;

  return unsafeBlocking<A>(context:_:)(v0 + 296, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v10, v13);
}

uint64_t sub_100195F9C()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 552);
  v5 = *v0;

  return _swift_task_switch(sub_1001960C8, v3, 0);
}

uint64_t sub_1001960C8()
{
  v1 = v0[45];
  v0[80] = v0[37];
  return _swift_task_switch(sub_1001960EC, v1, 0);
}

uint64_t sub_1001960EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 640);
  v5 = *(v3 + 360);
  v6 = *(v4 + 16);
  *(v3 + 648) = v6;
  if (v6)
  {
    v8 = *(v3 + 496);
    v7 = *(v3 + 504);
    *(v3 + 664) = 0;
    *(v3 + 656) = _swiftEmptyArrayStorage;
    if (*(v4 + 16))
    {
      v9 = *(v3 + 512);
      sub_1001BB2E0(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v9, type metadata accessor for OwnerSharingCircle);
      *(v3 + 672) = *(v5 + 128);
      v10 = *(v8 + 20);
      *(v3 + 828) = v10;
      v11 = swift_task_alloc();
      *(v3 + 680) = v11;
      *v11 = v3;
      v11[1] = sub_1001963A8;

      return sub_100C7BA0C(v3 + 80, v9 + v10);
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *(v3 + 608);

  v14 = *(v13 + 16);
  *(v3 + 720) = v14;
  if (v14)
  {
    v15 = *(v3 + 608);
    v16 = *(v3 + 408);
    v17 = *(*(v3 + 416) + 80);
    *(v3 + 832) = v17;
    *(v3 + 736) = _swiftEmptyArrayStorage;
    *(v3 + 728) = 0;
    if (*(v15 + 16))
    {
      v18 = *(v3 + 552);
      sub_1001BB2E0(v15 + ((v17 + 32) & ~v17), *(v3 + 424), type metadata accessor for MemberSharingCircle);
      *(v3 + 836) = *(v16 + 24);
      v4 = sub_100196F70;
      a2 = v18;
      a3 = 0;

      return _swift_task_switch(v4, a2, a3);
    }

LABEL_15:
    __break(1u);
    return _swift_task_switch(v4, a2, a3);
  }

  v19 = *(v3 + 608);
  v20 = *(v3 + 544);
  v21 = *(v3 + 512);
  v23 = *(v3 + 480);
  v22 = *(v3 + 488);
  v25 = *(v3 + 464);
  v24 = *(v3 + 472);
  v27 = *(v3 + 448);
  v26 = *(v3 + 456);
  v28 = *(v3 + 424);
  v30 = *(v3 + 400);
  v31 = *(v3 + 376);

  v29 = *(v3 + 8);

  return v29(_swiftEmptyArrayStorage);
}

uint64_t sub_1001963A8()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v4 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v5 = v2[82];
    v6 = v2[80];
    v7 = v2[76];

    v2[89] = v0;
    v8 = v2[45];
    v9 = sub_100196E5C;
  }

  else
  {
    v8 = v2[84];
    v9 = sub_1001964F0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1001964F0()
{
  v1 = v0[16];
  if (v1 >> 60 == 15)
  {
    v2 = v0[82];
    v3 = v0[80];
    v4 = v0[76];

    sub_1001BAEE0();
    v5 = swift_allocError();
    *v6 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 10));

    v0[89] = v5;
    v7 = v0[45];
    v8 = sub_100196E5C;
    goto LABEL_3;
  }

  v10 = v0[15];
  sub_100017D5C(v10, v0[16]);
  sub_100017D5C(v10, v1);
  sub_10002EA98(57, v10, v1, v0 + 28);
  v8 = v0[28];
  v7 = v0[29];
  v11 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_21;
    }

    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (!v14)
    {
      if (v15 == 57)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v11)
  {
    if (!__OFSUB__(HIDWORD(v8), v8))
    {
      if (HIDWORD(v8) - v8 == 57)
      {
        goto LABEL_13;
      }

LABEL_21:
      sub_100016590(v8, v7);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    goto LABEL_44;
  }

  if (BYTE6(v7) != 57)
  {
    goto LABEL_21;
  }

LABEL_13:
  v16 = v0[86];
  v17 = v0[28];
  v18 = v0[29];
  v19 = sub_100A7A194(v8, v7);
  if (v16)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    v0[38] = v16;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100008C00();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    os_log(_:dso:log:_:_:)();

    sub_1001BAF88();
    v26 = swift_allocError();
    *v27 = 0;
    swift_willThrow();

    goto LABEL_18;
  }

  v20 = sub_100A7829C(v19, 0);
  v0[87] = v20;
  v0[88] = v21;
  v32 = v20;
  v33 = v21;
  v8 = CCECCryptorRelease();
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      v39 = 0;
      goto LABEL_42;
    }

    v37 = *(v32 + 16);
    v36 = *(v32 + 24);
    v14 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v14)
    {
      v8 = v17;
      v7 = v18;
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v8 = v17;
  v7 = v18;
  if (!v34)
  {
    v35 = BYTE6(v33);
    goto LABEL_31;
  }

  LODWORD(v35) = HIDWORD(v32) - v32;
  if (__OFSUB__(HIDWORD(v32), v32))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v35 = v35;
LABEL_31:
  if (v35 == 28)
  {
    v38 = v0[45];
    sub_100016590(v8, v7);
    sub_100006654(v10, v1);
    sub_1001BAF34((v0 + 10));
    v8 = sub_100196A04;
    v7 = v38;
LABEL_3:
    v9 = 0;

    return _swift_task_switch(v8, v7, v9);
  }

  if (v34 == 2)
  {
    v41 = *(v32 + 16);
    v40 = *(v32 + 24);
    v39 = v40 - v41;
    if (!__OFSUB__(v40, v41))
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v34 != 1)
  {
LABEL_41:
    v39 = BYTE6(v33);
    goto LABEL_42;
  }

  if (!__OFSUB__(HIDWORD(v32), v32))
  {
    v39 = HIDWORD(v32) - v32;
LABEL_42:
    sub_100018350();
    v26 = swift_allocError();
    *v42 = 28;
    *(v42 + 8) = v39;
    *(v42 + 16) = 0;
    swift_willThrow();
    sub_100016590(v32, v33);
LABEL_18:
    _StringGuts.grow(_:)(35);
    v0[30] = 0;
    v0[31] = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000021;
    v28._object = 0x800000010134CB30;
    String.append(_:)(v28);
    v0[39] = v26;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    v29 = v0[30];
    v30 = v0[31];
    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_47:
  __break(1u);
  return _swift_task_switch(v8, v7, v9);
}

uint64_t sub_100196A04()
{
  v1 = *(v0 + 828);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  v6 = *(v0 + 488);
  v7 = *(v0 + 496);
  v8 = *(*(v0 + 432) + 48);
  *v6 = *(v0 + 696);
  v3(&v6[v8], v5 + v1, v4);
  v9 = 0x4000201u >> (8 * *(v5 + *(v7 + 28)));
  v10 = *(v0 + 656);
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 520);
  v15 = *(v0 + 480);
  v14 = *(v0 + 488);
  v16 = *(v0 + 472);
  v17 = *(v0 + 432);
  *(v14 + *(v17 + 64)) = v9;
  sub_1000D2A70(v14, v15, &qword_101698CC0, &unk_101390890);
  v18 = *(v17 + 48);
  v19 = *(v17 + 64);
  v20 = *(v15 + v19);
  *v16 = *v15;
  v12(&v16[v18], v15 + v18, v13);
  v16[v19] = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v0 + 656);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_100A5C3B0(0, v22[2] + 1, 1, *(v0 + 656));
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_100A5C3B0(v23 > 1, v24 + 1, 1, v22);
  }

  v25 = *(v0 + 648);
  v26 = *(v0 + 512);
  v27 = *(v0 + 472);
  v28 = *(v0 + 440);
  v29 = *(v0 + 664) + 1;
  sub_10000B3A8(*(v0 + 488), &qword_101698CC0, &unk_101390890);
  sub_1001BA80C(v26, type metadata accessor for OwnerSharingCircle);
  v22[2] = v24 + 1;
  v30 = sub_1000D2AD8(v27, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, &qword_101698CC0, &unk_101390890);
  if (v29 == v25)
  {
    v33 = *(v0 + 640);
    v34 = *(v0 + 608);

    v35 = *(v34 + 16);
    *(v0 + 720) = v35;
    if (v35)
    {
      v36 = *(v0 + 608);
      v37 = *(v0 + 408);
      v38 = *(*(v0 + 416) + 80);
      *(v0 + 832) = v38;
      *(v0 + 736) = v22;
      *(v0 + 728) = 0;
      if (*(v36 + 16))
      {
        v39 = *(v0 + 552);
        sub_1001BB2E0(v36 + ((v38 + 32) & ~v38), *(v0 + 424), type metadata accessor for MemberSharingCircle);
        *(v0 + 836) = *(v37 + 24);
        v30 = sub_100196F70;
        v31 = v39;
        v32 = 0;

        return _swift_task_switch(v30, v31, v32);
      }

LABEL_19:
      __break(1u);
      return _swift_task_switch(v30, v31, v32);
    }

    v48 = *(v0 + 608);
    v49 = *(v0 + 544);
    v50 = *(v0 + 512);
    v52 = *(v0 + 480);
    v51 = *(v0 + 488);
    v54 = *(v0 + 464);
    v53 = *(v0 + 472);
    v56 = *(v0 + 448);
    v55 = *(v0 + 456);
    v58 = *(v0 + 424);
    v59 = *(v0 + 400);
    v60 = *(v0 + 376);

    v57 = *(v0 + 8);

    return v57(v22);
  }

  else
  {
    v40 = *(v0 + 664) + 1;
    *(v0 + 664) = v40;
    *(v0 + 656) = v22;
    v41 = *(v0 + 640);
    if (v40 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v42 = *(v0 + 512);
    v43 = *(v0 + 496);
    v44 = *(v0 + 360);
    sub_1001BB2E0(v41 + ((*(*(v0 + 504) + 80) + 32) & ~*(*(v0 + 504) + 80)) + *(*(v0 + 504) + 72) * v40, v42, type metadata accessor for OwnerSharingCircle);
    *(v0 + 672) = *(v44 + 128);
    v45 = *(v43 + 20);
    *(v0 + 828) = v45;
    v46 = swift_task_alloc();
    *(v0 + 680) = v46;
    *v46 = v0;
    v46[1] = sub_1001963A8;

    return sub_100C7BA0C(v0 + 80, v42 + v45);
  }
}

uint64_t sub_100196E5C()
{
  sub_1001BA80C(v0[64], type metadata accessor for OwnerSharingCircle);
  v1 = v0[68];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v6 = v0[58];
  v5 = v0[59];
  v8 = v0[56];
  v7 = v0[57];
  v9 = v0[53];
  v10 = v0[50];
  v13 = v0[47];
  v14 = v0[89];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100196F70()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 520);
  v8 = (*(v0 + 824) + 24) & ~*(v0 + 824);
  (*(v0 + 560))(v5, *(v0 + 424) + *(v0 + 836), v7);
  v9 = swift_allocObject();
  *(v0 + 744) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 752) = v11;
  *v11 = v0;
  v11[1] = sub_1001970D0;
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4A4, v9, v13);
}

uint64_t sub_1001970D0()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 744);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return _swift_task_switch(sub_1001971FC, v3, 0);
}

uint64_t sub_1001971FC()
{
  v1 = *(v0 + 376);
  if ((*(*(v0 + 392) + 48))(v1, 1, *(v0 + 384)) != 1)
  {
    v18 = *(v0 + 552);
    sub_1001BAAE8(v1, *(v0 + 400), type metadata accessor for SharedBeaconRecord);
    v2 = sub_100197458;
    v3 = v18;
    goto LABEL_9;
  }

  sub_1001BA80C(*(v0 + 424), type metadata accessor for MemberSharingCircle);
  v2 = sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
  v5 = *(v0 + 728) + 1;
  if (v5 != *(v0 + 720))
  {
    *(v0 + 728) = v5;
    v19 = *(v0 + 608);
    if (v5 >= *(v19 + 16))
    {
      __break(1u);
      return _swift_task_switch(v2, v3, v4);
    }

    v20 = *(v0 + 552);
    v21 = *(v0 + 408);
    sub_1001BB2E0(v19 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 416) + 72) * v5, *(v0 + 424), type metadata accessor for MemberSharingCircle);
    *(v0 + 836) = *(v21 + 24);
    v2 = sub_100196F70;
    v3 = v20;
LABEL_9:
    v4 = 0;

    return _swift_task_switch(v2, v3, v4);
  }

  v6 = *(v0 + 608);
  v7 = *(v0 + 544);
  v8 = *(v0 + 512);
  v10 = *(v0 + 480);
  v9 = *(v0 + 488);
  v12 = *(v0 + 464);
  v11 = *(v0 + 472);
  v14 = *(v0 + 448);
  v13 = *(v0 + 456);
  v15 = *(v0 + 424);
  v22 = *(v0 + 400);
  v23 = *(v0 + 376);
  v24 = *(v0 + 736);

  v16 = *(v0 + 8);

  return v16(v24);
}

uint64_t sub_100197458()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 568);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 520);
  v8 = (*(v0 + 824) + 24) & ~*(v0 + 824);
  (*(v0 + 560))(v5, *(v0 + 424) + *(v0 + 836), v7);
  v9 = swift_allocObject();
  *(v0 + 760) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 768) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_1001975D0;

  return unsafeBlocking<A>(context:_:)(v0 + 184, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v9, v12);
}

uint64_t sub_1001975D0()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 360);
  v5 = *v0;

  return _swift_task_switch(sub_1001976FC, v3, 0);
}

uint64_t sub_1001976FC()
{
  v1 = *(v0 + 424);
  if (*(v0 + 208))
  {
    v2 = *(v0 + 408);
    v3 = *(v0 + 360);
    sub_10000A748((v0 + 184), v0 + 144);
    *(v0 + 776) = *(v3 + 128);
    v4 = *(v2 + 20);
    v5 = swift_task_alloc();
    *(v0 + 784) = v5;
    *v5 = v0;
    v5[1] = sub_1001979BC;

    return sub_100C7BA0C(v0 + 16, v1 + v4);
  }

  else
  {
    sub_1001BA80C(*(v0 + 400), type metadata accessor for SharedBeaconRecord);
    sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);
    v7 = sub_10000B3A8(v0 + 184, &qword_101696920, &unk_10138B200);
    v10 = *(v0 + 728) + 1;
    if (v10 == *(v0 + 720))
    {
      v11 = *(v0 + 608);
      v12 = *(v0 + 544);
      v13 = *(v0 + 512);
      v15 = *(v0 + 480);
      v14 = *(v0 + 488);
      v17 = *(v0 + 464);
      v16 = *(v0 + 472);
      v19 = *(v0 + 448);
      v18 = *(v0 + 456);
      v20 = *(v0 + 424);
      v25 = *(v0 + 400);
      v26 = *(v0 + 376);
      v27 = *(v0 + 736);

      v21 = *(v0 + 8);

      return v21(v27);
    }

    else
    {
      *(v0 + 728) = v10;
      v22 = *(v0 + 608);
      if (v10 >= *(v22 + 16))
      {
        __break(1u);
      }

      else
      {
        v23 = *(v0 + 552);
        v24 = *(v0 + 408);
        sub_1001BB2E0(v22 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 416) + 72) * v10, *(v0 + 424), type metadata accessor for MemberSharingCircle);
        *(v0 + 836) = *(v24 + 24);
        v7 = sub_100196F70;
        v8 = v23;
        v9 = 0;
      }

      return _swift_task_switch(v7, v8, v9);
    }
  }
}

uint64_t sub_1001979BC()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v5 = v2[92];
    v6 = v2[76];

    v2[102] = v0;
    v7 = v2[45];
    v8 = sub_100198570;
  }

  else
  {
    v7 = v2[97];
    v8 = sub_100197AF8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100197AF8()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    v2 = v0[92];
    v3 = v0[76];

    sub_1001BAEE0();
    v4 = swift_allocError();
    *v5 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));

    v0[102] = v4;
    v6 = v0[45];
    v7 = sub_100198570;
    goto LABEL_3;
  }

  v9 = v0[7];
  sub_100017D5C(v9, v0[8]);
  sub_100017D5C(v9, v1);
  sub_10002EA98(57, v9, v1, v0 + 32);
  v7 = v0[32];
  v6 = v0[33];
  v10 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_21;
    }

    v12 = *(v7 + 16);
    v11 = *(v7 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 == 57)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(v7), v7))
    {
      if (HIDWORD(v7) - v7 == 57)
      {
        goto LABEL_13;
      }

LABEL_21:
      sub_100016590(v7, v6);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    goto LABEL_44;
  }

  if (BYTE6(v6) != 57)
  {
    goto LABEL_21;
  }

LABEL_13:
  v15 = v0[99];
  v16 = v0[32];
  v17 = v0[33];
  v18 = sub_100A7A194(v7, v6);
  if (v15)
  {
    static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    v0[40] = v15;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)();

    sub_1001BAF88();
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();

    goto LABEL_18;
  }

  v19 = sub_100A7829C(v18, 0);
  v0[100] = v19;
  v0[101] = v20;
  v31 = v19;
  v32 = v20;
  v7 = CCECCryptorRelease();
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 != 2)
    {
      v38 = 0;
      goto LABEL_42;
    }

    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    v13 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (!v13)
    {
      v7 = v16;
      v6 = v17;
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v7 = v16;
  v6 = v17;
  if (!v33)
  {
    v34 = BYTE6(v32);
    goto LABEL_31;
  }

  LODWORD(v34) = HIDWORD(v31) - v31;
  if (__OFSUB__(HIDWORD(v31), v31))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = v34;
LABEL_31:
  if (v34 == 28)
  {
    v37 = v0[45];
    sub_100016590(v7, v6);
    sub_100006654(v9, v1);
    sub_1001BAF34((v0 + 2));
    v7 = sub_100198000;
    v6 = v37;
LABEL_3:
    v8 = 0;

    return _swift_task_switch(v7, v6, v8);
  }

  if (v33 == 2)
  {
    v40 = *(v31 + 16);
    v39 = *(v31 + 24);
    v38 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (v33 != 1)
  {
LABEL_41:
    v38 = BYTE6(v32);
    goto LABEL_42;
  }

  if (!__OFSUB__(HIDWORD(v31), v31))
  {
    v38 = HIDWORD(v31) - v31;
LABEL_42:
    sub_100018350();
    v25 = swift_allocError();
    *v41 = 28;
    *(v41 + 8) = v38;
    *(v41 + 16) = 0;
    swift_willThrow();
    sub_100016590(v31, v32);
LABEL_18:
    _StringGuts.grow(_:)(35);
    v0[34] = 0;
    v0[35] = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD000000000000021;
    v27._object = 0x800000010134CB30;
    String.append(_:)(v27);
    v0[41] = v25;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    v28 = v0[34];
    v29 = v0[35];
    return _assertionFailure(_:_:file:line:flags:)();
  }

LABEL_47:
  __break(1u);
  return _swift_task_switch(v7, v6, v8);
}

uint64_t sub_100198000()
{
  v1 = *(*(v0 + 400) + *(*(v0 + 384) + 64));
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  sub_1000035D0((v0 + 144), v2);
  v4 = (*(v3 + 88))(v2, v3);
  if (v1 > 2)
  {
    if (v1 == 3 || v1 != 4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v1)
  {
    if (v1 != 1)
    {
      LOBYTE(v1) = 0;
LABEL_13:
      v67 = *(v0 + 736);
      v6 = *(v0 + 592);
      v7 = *(v0 + 584);
      v8 = *(v0 + 568);
      v9 = *(v0 + 560);
      v10 = *(v0 + 520);
      v12 = *(v0 + 456);
      v11 = *(v0 + 464);
      v13 = *(v0 + 448);
      v14 = *(v0 + 424);
      v15 = *(v0 + 432);
      v16 = *(v0 + 408);
      v17 = *(v15 + 48);
      v18 = *(v15 + 64);
      *v11 = *(v0 + 800);
      v9(&v11[v17], v14 + *(v16 + 28), v10);
      v11[v18] = v1;
      sub_1000D2A70(v11, v12, &qword_101698CC0, &unk_101390890);
      v19 = *(v15 + 48);
      v20 = *(v15 + 64);
      LOBYTE(v11) = *(v12 + v20);
      *v13 = *v12;
      v7(&v13[v19], v12 + v19, v10);
      v13[v20] = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v0 + 736);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_100A5C3B0(0, v22[2] + 1, 1, *(v0 + 736));
      }

      v24 = v22[2];
      v23 = v22[3];
      if (v24 >= v23 >> 1)
      {
        v22 = sub_100A5C3B0(v23 > 1, v24 + 1, 1, v22);
      }

      v26 = *(v0 + 440);
      v25 = *(v0 + 448);
      v27 = *(v0 + 424);
      v28 = *(v0 + 400);
      sub_10000B3A8(*(v0 + 464), &qword_101698CC0, &unk_101390890);
      sub_1001BA80C(v28, type metadata accessor for SharedBeaconRecord);
      sub_1001BA80C(v27, type metadata accessor for MemberSharingCircle);
      v22[2] = v24 + 1;
      sub_1000D2AD8(v25, v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, &qword_101698CC0, &unk_101390890);
      v29 = sub_100007BAC((v0 + 144));
      v32 = *(v0 + 728) + 1;
      if (v32 == *(v0 + 720))
      {
        v33 = *(v0 + 608);
        v34 = *(v0 + 544);
        v35 = *(v0 + 512);
        v37 = *(v0 + 480);
        v36 = *(v0 + 488);
        v39 = *(v0 + 464);
        v38 = *(v0 + 472);
        v41 = *(v0 + 448);
        v40 = *(v0 + 456);
        v64 = *(v0 + 424);
        v65 = *(v0 + 400);
        v68 = *(v0 + 376);

        v42 = *(v0 + 8);

        return v42(v22);
      }

      else
      {
        *(v0 + 736) = v22;
        *(v0 + 728) = v32;
        v44 = *(v0 + 608);
        if (v32 >= *(v44 + 16))
        {
          __break(1u);
        }

        else
        {
          v45 = *(v0 + 552);
          v46 = *(v0 + 408);
          sub_1001BB2E0(v44 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 416) + 72) * v32, *(v0 + 424), type metadata accessor for MemberSharingCircle);
          *(v0 + 836) = *(v46 + 24);
          v29 = sub_100196F70;
          v30 = v45;
          v31 = 0;
        }

        return _swift_task_switch(v29, v30, v31);
      }
    }

LABEL_10:
    if (v4)
    {
      LOBYTE(v1) = 2;
    }

    else
    {
      LOBYTE(v1) = 1;
    }

    goto LABEL_13;
  }

  v47 = *(v0 + 808);
  v48 = *(v0 + 800);
  v49 = *(v0 + 736);
  v50 = *(v0 + 608);
  v51 = *(v0 + 424);
  v52 = *(v0 + 400);

  type metadata accessor for SPBeaconSharingError(0);
  *(v0 + 344) = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v69 = *(v0 + 336);
  swift_willThrow();
  sub_100016590(v48, v47);
  sub_1001BA80C(v52, type metadata accessor for SharedBeaconRecord);
  sub_1001BA80C(v51, type metadata accessor for MemberSharingCircle);

  sub_100007BAC((v0 + 144));
  v53 = *(v0 + 544);
  v54 = *(v0 + 512);
  v56 = *(v0 + 480);
  v55 = *(v0 + 488);
  v58 = *(v0 + 464);
  v57 = *(v0 + 472);
  v60 = *(v0 + 448);
  v59 = *(v0 + 456);
  v61 = *(v0 + 424);
  v62 = *(v0 + 400);
  v66 = *(v0 + 376);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_100198570()
{
  v1 = v0[53];
  sub_1001BA80C(v0[50], type metadata accessor for SharedBeaconRecord);
  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);
  sub_100007BAC(v0 + 18);
  v2 = v0[68];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v9 = v0[56];
  v8 = v0[57];
  v10 = v0[53];
  v11 = v0[50];
  v14 = v0[47];
  v15 = v0[102];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001986AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  v2[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(*(type metadata accessor for OwnerSharingCircle() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = *(*(type metadata accessor for OwnerPeerTrust() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100198844, v1, 0);
}

uint64_t sub_100198844()
{
  v1 = *(*(v0 + 24) + 136);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100198868, v1, 0);
}

uint64_t sub_100198868()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1001989C8;
  v10 = v0[8];
  v9 = v0[9];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1001BAE74, v6, v10);
}

uint64_t sub_1001989C8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100198AF4, v3, 0);
}

uint64_t sub_100198AF4()
{
  v1 = v0[9];
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_1001990D0;
    v4 = v0[2];

    return sub_1003B218C(v4, 0);
  }

  else
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = *(v2 + 48);
    v11 = *(v9 + 48);
    sub_1001BAAE8(v1, v8, type metadata accessor for OwnerPeerTrust);
    sub_1001BAAE8(v1 + v10, v8 + v11, type metadata accessor for OwnerSharingCircle);
    v12 = *(v9 + 48);
    sub_1001BAAE8(v8, v6, type metadata accessor for OwnerPeerTrust);
    sub_1001BAAE8(v8 + v12, v7, type metadata accessor for OwnerSharingCircle);
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = sub_100198D40;
    v14 = v0[12];
    v15 = v0[13];

    return sub_1003B0F40(v15, v14, 0);
  }
}

uint64_t sub_100198D40()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100198FF8;
  }

  else
  {
    v6 = sub_100198E6C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100198E6C()
{
  v1 = v0[13];
  sub_1001BA80C(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_1001BA80C(v1, type metadata accessor for OwnerPeerTrust);
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[3];
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0;
  *(v9 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100198FF8()
{
  v1 = v0[13];
  sub_1001BA80C(v0[12], type metadata accessor for OwnerSharingCircle);
  sub_1001BA80C(v1, type metadata accessor for OwnerPeerTrust);
  v2 = v0[18];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[9];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001990D0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[12];
    v5 = v2[13];
    v7 = v2[11];
    v8 = v2[9];
    v9 = v2[7];

    v10 = *(v4 + 8);

    return v10();
  }

  else
  {
    v12 = v2[3];

    return _swift_task_switch(sub_10019924C, v12, 0);
  }
}

uint64_t sub_10019924C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[3];
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001993A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100199500, v1, 0);
}

uint64_t sub_100199500()
{
  v1 = *(*(v0 + 24) + 136);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100199524, v1, 0);
}

uint64_t sub_100199524()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100199684;
  v10 = v0[8];
  v9 = v0[9];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4C4, v6, v10);
}

uint64_t sub_100199684()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_1001997B0, v3, 0);
}

uint64_t sub_1001997B0()
{
  v1 = v0[9];
  v2 = (*(v0[11] + 48))(v1, 1, v0[10]);
  v3 = v0[12];
  if (v2 == 1)
  {
    v4 = v0[7];
    sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
    sub_1001BAB50();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[3];
    sub_1001BAAE8(v1, v0[12], type metadata accessor for MemberSharingCircle);
    v9 = *(v8 + 200);
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_100199948;
    v11 = v0[12];

    return sub_10107F924(v11);
  }
}

uint64_t sub_100199948()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100199A58, v2, 0);
}

uint64_t sub_100199A58()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  type metadata accessor for Transaction();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v1, type metadata accessor for MemberSharingCircle);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100199BAC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 476) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  v6 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v5 + 64) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle();
  *(v5 + 80) = v8;
  v9 = *(v8 - 8);
  *(v5 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v11 = *(type metadata accessor for OwnerPeerTrust() - 8);
  *(v5 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v13 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v5 + 128) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v15 = type metadata accessor for OwnerSharingCircle();
  *(v5 + 144) = v15;
  v16 = *(v15 - 8);
  *(v5 + 152) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v5 + 168) = v18;
  v19 = *(v18 - 8);
  *(v5 + 176) = v19;
  *(v5 + 184) = *(v19 + 64);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100199E28, v4, 0);
}

uint64_t sub_100199E28()
{
  v24 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[27] = v5;
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[21];
  v12 = v0[22];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handle decline %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[30] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[31] = v20;
  *v20 = v0;
  v20[1] = sub_10019A0BC;

  return daemon.getter();
}

uint64_t sub_10019A0BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v12 = *v1;
  v3[32] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[33] = v6;
  v7 = type metadata accessor for Daemon();
  v3[34] = v7;
  v8 = type metadata accessor for PeerTrustService();
  v9 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[35] = v9;
  v10 = sub_1001B8FE4(&qword_1016B1190, type metadata accessor for PeerTrustService);
  *v6 = v12;
  v6[1] = sub_10019A29C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10019A29C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[7];
    v6 = sub_10019C38C;
  }

  else
  {
    v7 = v3[32];
    v8 = v3[7];

    v6 = sub_10019A3C4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10019A3C4()
{
  v1 = *(*(v0 + 56) + 136);
  *(v0 + 304) = v1;
  return _swift_task_switch(sub_10019A3E8, v1, 0);
}

uint64_t sub_10019A3E8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  (*(v0 + 224))(v3, *(v0 + 32), v6);
  v7 = *(v5 + 80);
  *(v0 + 472) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 312) = v9;
  *(v9 + 16) = v1;
  v10 = *(v5 + 32);
  *(v0 + 320) = v10;
  *(v0 + 328) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 336) = v12;
  *v12 = v0;
  v12[1] = sub_10019A554;
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B0, v9, v14);
}

uint64_t sub_10019A554()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_10019A680, v3, 0);
}

uint64_t sub_10019A680()
{
  v1 = *(v0 + 136);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    v2 = *(v0 + 304);

    return _swift_task_switch(sub_10019B8E4, v2, 0);
  }

  else
  {
    sub_1001BAAE8(v1, *(v0 + 160), type metadata accessor for OwnerSharingCircle);
    v3 = swift_task_alloc();
    *(v0 + 344) = v3;
    *v3 = v0;
    v3[1] = sub_10019A7B4;
    v4 = *(v0 + 288);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 476);

    return sub_100E86158(v7, v5, v6);
  }
}

uint64_t sub_10019A7B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 56);
  if (v1)
  {
    v8 = sub_10019C470;
  }

  else
  {
    v8 = sub_10019A8E8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10019A8E8()
{
  v1 = v0[44];
  if (*(v1 + 16))
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = *(v0[13] + 80);
    sub_1001BB2E0(v1 + ((v4 + 32) & ~v4), v3, type metadata accessor for OwnerPeerTrust);

    sub_1001BAAE8(v3, v2, type metadata accessor for OwnerPeerTrust);
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v0[46] = v6;
    *v6 = v0;
    v6[1] = sub_10019AA48;

    return daemon.getter();
  }

  else
  {
    sub_1001BA80C(v0[20], type metadata accessor for OwnerSharingCircle);

    v7 = v0[38];

    return _swift_task_switch(sub_10019B8E4, v7, 0);
  }
}

uint64_t sub_10019AA48(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 368);
  v5 = *v1;
  v3[47] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[48] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_1001B8FE4(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_10019ABFC;
  v10 = v3[35];
  v11 = v3[34];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10019ABFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 392) = a1;

  v7 = *(v3 + 376);
  if (v1)
  {
    v8 = *(v4 + 56);

    return _swift_task_switch(sub_10019B714, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    *(v4 + 400) = v9;
    *v9 = v6;
    v9[1] = sub_10019ADD0;
    v10 = *(v4 + 40);
    v11 = *(v4 + 48);
    v12 = *(v4 + 476);

    return sub_100D4E560(v12, v10, v11);
  }
}

uint64_t sub_10019ADD0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 400);
  v7 = *v3;
  *(v5 + 408) = a2;
  *(v5 + 416) = v2;

  v8 = *(v4 + 56);
  if (v2)
  {
    v9 = sub_10019B1BC;
  }

  else
  {
    v9 = sub_10019AEFC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10019AEFC()
{
  if (v0[51])
  {

LABEL_11:
    v23 = swift_task_alloc();
    v0[53] = v23;
    *v23 = v0;
    v23[1] = sub_10019B2EC;
    v24 = v0[20];
    v25 = v0[15];

    return sub_1003B0F40(v25, v24, 1);
  }

  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_101129F64(&off_101608288);
  LOBYTE(v1) = sub_10112C0E0(*(v1 + *(v2 + 28)), v3);

  if ((v1 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_101694488 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[27], qword_10177A578);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[49];
  v8 = v0[36];
  v9 = v0[20];
  v10 = v0[15];
  if (v6)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Ignoring incoming UTFS message from non-family member", v11, 2u);
  }

  sub_1001BA80C(v10, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  v15 = v0[20];
  v16 = v0[17];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[12];
  v20 = v0[9];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10019B1BC()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[20];
  v4 = v0[15];

  sub_1001BA80C(v4, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v3, type metadata accessor for OwnerSharingCircle);
  v5 = v0[52];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[12];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10019B2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_10019B5E4;
  }

  else
  {
    v6 = sub_10019B418;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10019B418()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[7];
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v4, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v3, type metadata accessor for OwnerSharingCircle);

  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[20];
  v12 = v0[17];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10019B5E4()
{
  v1 = v0[49];
  v2 = v0[36];
  v3 = v0[20];
  v4 = v0[15];

  sub_1001BA80C(v4, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v3, type metadata accessor for OwnerSharingCircle);
  v5 = v0[54];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[12];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10019B714()
{
  if (qword_101694488 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[27], qword_10177A578);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[36];
  v5 = v0[20];
  v6 = v0[15];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "No FamilyCircleService available!", v7, 2u);
  }

  sub_1001BA80C(v6, type metadata accessor for OwnerPeerTrust);
  sub_1001BA80C(v5, type metadata accessor for OwnerSharingCircle);
  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[24];
  v11 = v0[20];
  v12 = v0[17];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10019B8E4()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 232);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = (*(v0 + 472) + 24) & ~*(v0 + 472);
  (*(v0 + 224))(v5, *(v0 + 32), v7);
  v9 = swift_allocObject();
  *(v0 + 440) = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 448) = v11;
  *v11 = v0;
  v11[1] = sub_10019BA34;
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B4, v9, v13);
}

uint64_t sub_10019BA34()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_10019BB60, v3, 0);
}

uint64_t sub_10019BB60()
{
  v54 = v0;
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[36];
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    type metadata accessor for SPBeaconSharingError(0);
    v0[3] = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v4 = v0[2];
    swift_willThrow();

    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[24];
    v8 = v0[20];
    v9 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[12];
    v13 = v0[9];

    v14 = v0[1];
LABEL_13:

    return v14();
  }

  v15 = v0[12];
  sub_1001BAAE8(v2, v15, type metadata accessor for MemberSharingCircle);
  if (*(v15 + *(v1 + 40)) != 2)
  {
    if (qword_101694488 != -1)
    {
      swift_once();
    }

    v20 = v0[28];
    v19 = v0[29];
    v21 = v0[24];
    v22 = v0[21];
    v23 = v0[4];
    sub_1000076D4(v0[27], qword_10177A578);
    v20(v21, v23, v22);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[36];
    v28 = v0[30];
    v29 = v0[24];
    v31 = v0[21];
    v30 = v0[22];
    v32 = v0[12];
    if (v26)
    {
      v52 = v0[36];
      v50 = v0[30];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v32;
      v37 = v36;
      v50(v29, v31);
      v38 = sub_1000136BC(v35, v37, &v53);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v24, v25, "Received decline for not requested member share %{private,mask.hash}s", v33, 0x16u);
      sub_100007BAC(v34);

      v39 = v51;
    }

    else
    {
      v40 = v0[36];

      v28(v29, v31);
      v39 = v32;
    }

    sub_1001BA80C(v39, type metadata accessor for MemberSharingCircle);
    v42 = v0[25];
    v41 = v0[26];
    v43 = v0[24];
    v44 = v0[20];
    v45 = v0[17];
    v47 = v0[14];
    v46 = v0[15];
    v48 = v0[12];
    v49 = v0[9];

    v14 = v0[1];
    goto LABEL_13;
  }

  v16 = swift_task_alloc();
  v0[57] = v16;
  *v16 = v0;
  v16[1] = sub_10019C060;
  v17 = v0[12];

  return sub_1003C7900(v17);
}

uint64_t sub_10019C060()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_10019C288;
  }

  else
  {
    v6 = sub_10019C18C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10019C18C()
{
  v1 = v0[36];
  v2 = v0[12];

  sub_1001BA80C(v2, type metadata accessor for MemberSharingCircle);
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10019C288()
{
  v1 = v0[36];
  v2 = v0[12];

  sub_1001BA80C(v2, type metadata accessor for MemberSharingCircle);
  v3 = v0[58];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10019C38C()
{
  v1 = v0[32];

  v2 = v0[37];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10019C470()
{
  v1 = v0[36];
  v2 = v0[20];

  sub_1001BA80C(v2, type metadata accessor for OwnerSharingCircle);
  v3 = v0[45];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[9];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10019C574(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101698E18, &unk_101390B80);
  v2[10] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_101698E20, &unk_10139FDF0);
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = type metadata accessor for WildModeAssociationRecord(0);
  v2[15] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v2[19] = *(v13 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10019C780, v1, 0);
}

uint64_t sub_10019C780()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[23] = v6;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Request unknown beacon %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[5] + 136);
  v0[25] = v19;

  return _swift_task_switch(sub_10019C9E8, v19, 0);
}

uint64_t sub_10019C9E8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  (*(v0 + 184))(v3, *(v0 + 32), v4);
  v6 = *(v5 + 80);
  *(v0 + 312) = v6;
  v7 = (v6 + 24) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 208) = v8;
  *(v8 + 16) = v2;
  v9 = *(v5 + 32);
  *(v0 + 216) = v9;
  *(v0 + 224) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v3, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_10019CB50;
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCC5C, v8, v13);
}

uint64_t sub_10019CB50()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[25];
    v5 = sub_10019D1D8;
  }

  else
  {
    v6 = v2[26];
    v7 = v2[5];

    v5 = sub_10019CC78;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10019CC78()
{
  v1 = *(v0 + 120);
  v2 = (*(v0 + 128) + *(v1 + 48));
  v3 = v2[2];
  *(v0 + 248) = v3;
  if (v3)
  {
    v4 = *(v0 + 200);
    *(v0 + 256) = v2[1];
    *(v0 + 264) = *v2;
    *(v0 + 316) = *(v1 + 28);

    return _swift_task_switch(sub_10019CEAC, v4, 0);
  }

  else
  {
    v5 = *(v0 + 176);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failure in share requesting, can't find beacon.", v8, 2u);
    }

    v9 = *(v0 + 128);

    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 24) = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = *(v0 + 16);
    swift_willThrow();
    sub_1001BA80C(v9, type metadata accessor for WildModeAssociationRecord);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 128);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 72);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10019CEAC()
{
  v19 = *(v0 + 316);
  v25 = *(v0 + 256);
  v26 = *(v0 + 264);
  v23 = *(v0 + 224);
  v24 = *(v0 + 248);
  v1 = *(v0 + 192);
  v21 = *(v0 + 200);
  v22 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 72);
  v20 = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = (*(v0 + 312) + 24) & ~*(v0 + 312);
  (*(v0 + 184))(v3, *(v0 + 32), v5);
  (*(v8 + 16))(v6, v4 + v19, v7);
  v10 = (v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + *(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v0 + 272) = v12;
  *(v12 + 16) = v21;
  v22(v12 + v9, v3, v5);
  v13 = v12 + v10;
  *v13 = v26;
  *(v13 + 8) = v25;
  *(v13 + 16) = v24;
  (*(v8 + 32))(v12 + v11, v20, v7);
  v14 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v15 = swift_task_alloc();
  *(v0 + 280) = v15;
  *v15 = v0;
  v15[1] = sub_10019D0B0;
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BCCCC, v12, v17);
}

uint64_t sub_10019D0B0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = v2[25];
    v5 = sub_10019D5A8;
  }

  else
  {
    v6 = v2[34];
    v7 = v2[5];

    v5 = sub_10019D2F0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10019D1D8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_10019D244, v2, 0);
}

uint64_t sub_10019D244()
{
  v1 = v0[30];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10019D2F0()
{
  v1 = v0[12];
  v2 = v0[11];
  if ((*(v0[13] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101698E18, &unk_101390B80);
    v3 = v0[22];
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failure in share requesting, can't find beacon.", v6, 2u);
    }

    v7 = v0[16];

    type metadata accessor for SPBeaconSharingError(0);
    v0[3] = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = v0[2];
    swift_willThrow();
    sub_1001BA80C(v7, type metadata accessor for WildModeAssociationRecord);
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[16];
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[9];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[14];
    sub_1000D2AD8(v2, v17, &qword_101698E20, &unk_10139FDF0);
    v18 = *(v1 + 48);
    v19 = swift_task_alloc();
    v0[37] = v19;
    *v19 = v0;
    v19[1] = sub_10019D6DC;
    v20 = v0[14];

    return sub_1003BE5C0(v17 + v18, v20);
  }
}

uint64_t sub_10019D5A8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_10019D614, v2, 0);
}

uint64_t sub_10019D614()
{
  sub_1001BA80C(v0[16], type metadata accessor for WildModeAssociationRecord);
  v1 = v0[36];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10019D6DC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_10019D9A0;
  }

  else
  {
    v6 = sub_10019D808;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10019D808()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v11 = v0[9];
  v6 = v0[5];
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  sub_10000B3A8(v4, &qword_101698E20, &unk_10139FDF0);

  sub_1001BA80C(v3, type metadata accessor for WildModeAssociationRecord);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10019D9A0()
{
  v1 = v0[16];
  sub_10000B3A8(v0[14], &qword_101698E20, &unk_10139FDF0);
  sub_1001BA80C(v1, type metadata accessor for WildModeAssociationRecord);
  v2 = v0[38];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10019DA84(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10019DAA4, v1, 0);
}

uint64_t sub_10019DAA4()
{
  v1 = *(v0[8] + 200);
  v2 = type metadata accessor for MemberCircleRevokeManager();
  v0[2] = v1;
  v0[5] = v2;
  v0[6] = &off_1016634E8;

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10019DB88;
  v4 = v0[7];

  return sub_1003B2FC8(v4, (v0 + 2));
}

uint64_t sub_10019DB88()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_10019DDB4;
  }

  else
  {
    v6 = *(v2 + 64);
    sub_100007BAC((v2 + 16));
    v5 = sub_10019DCB0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10019DCB0()
{
  v1 = *(v0 + 64);
  type metadata accessor for Transaction();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10019DDB4()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_10019DE18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10019DE38, v1, 0);
}

uint64_t sub_10019DE38()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 32) = v2;
  if (v2)
  {
    v3 = *(type metadata accessor for UUID() - 8);
    v4 = *(v3 + 80);
    *(v0 + 64) = v4;
    v5 = (v4 + 32) & ~v4;
    *(v0 + 40) = *(v3 + 72);
    *(v0 + 48) = 0;
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_10019E03C;

    return sub_1003B218C(v1 + v5, 1);
  }

  else
  {
    v8 = *(v0 + 24);
    type metadata accessor for Transaction();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10019E03C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_1001BE460;
  }

  else
  {
    v6 = sub_10019E174;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10019E174()
{
  v1 = *(v0 + 48) + 1;
  if (v1 == *(v0 + 32))
  {
    v2 = *(v0 + 24);
    type metadata accessor for Transaction();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 48) = v1;
    v7 = *(v0 + 16) + ((*(v0 + 64) + 32) & ~*(v0 + 64)) + *(v0 + 40) * v1;
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_10019E03C;

    return sub_1003B218C(v7, 1);
  }
}

uint64_t sub_10019E338(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10019E418, v1, 0);
}

uint64_t sub_10019E418()
{
  v1 = *(v0[5] + 136);
  v0[12] = v1;
  v0[13] = sub_100B08164(&off_101608120);

  return _swift_task_switch(sub_10019E494, v1, 0);
}

uint64_t sub_10019E494()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v5 + 16);
  *(v0 + 112) = v8;
  *(v0 + 120) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  v9 = *(v5 + 80);
  *(v0 + 240) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 128) = v12;
  *(v12 + 16) = v1;
  v13 = *(v5 + 32);
  *(v0 + 136) = v13;
  *(v0 + 144) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v10, v3, v6);
  *(v12 + v11) = v2;
  v14 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  v16 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v15 = v0;
  v15[1] = sub_10019E648;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v12, v16);
}

uint64_t sub_10019E648()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_10019E774, v3, 0);
}

uint64_t sub_10019E774()
{
  v1 = v0[5];
  v0[20] = v0[2];
  return _swift_task_switch(sub_10019E798, v1, 0);
}

uint64_t sub_10019E798()
{
  v24 = v0;
  if (*(v0[20] + 16))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[9];
    v4 = v0[6];
    v5 = v0[4];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177A560);
    v2(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v23);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Stop sharing of %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    v20 = swift_task_alloc();
    v0[28] = v20;
    *v20 = v0;
    v20[1] = sub_10019F4D0;
    v21 = v0[20];

    return sub_1003B518C(v21);
  }

  else
  {
    v19 = v0[12];

    return _swift_task_switch(sub_10019EA84, v19, 0);
  }
}

uint64_t sub_10019EA84()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = (*(v0 + 240) + 24) & ~*(v0 + 240);
  (*(v0 + 112))(v4, *(v0 + 32), v7);
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = v5;
  v2(v9 + v8, v4, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_10019EBE8;

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v9, v12);
}

uint64_t sub_10019EBE8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return _swift_task_switch(sub_10019ED14, v3, 0);
}

uint64_t sub_10019ED14()
{
  v1 = v0[5];
  v0[23] = v0[3];
  return _swift_task_switch(sub_10019ED38, v1, 0);
}

uint64_t sub_10019ED38()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  if (v2 < 2)
  {
    goto LABEL_7;
  }

  v3 = v0[23];
  if (qword_101694480 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[23];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(v1 + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "Too much circles to decline on sharing stop! There is %ld circles.", v9, 0xCu);
    }

    else
    {
      v10 = v0[23];
    }

    v2 = *(v1 + 16);
LABEL_7:
    v0[24] = v2;
    if (!v2)
    {
      break;
    }

    v0[25] = 0;
    v11 = v0[23];
    if (*(v11 + 16))
    {
      v13 = v0[14];
      v12 = v0[15];
      v14 = v0[10];
      v15 = v0[6];
      v16 = type metadata accessor for MemberSharingCircle();
      v13(v14, v11 + *(v16 + 28) + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)), v15);
      v17 = swift_task_alloc();
      v0[26] = v17;
      *v17 = v0;
      v17[1] = sub_10019F080;
      v18 = v0[10];

      return sub_1003B218C(v18, 0);
    }

    __break(1u);
LABEL_16:
    swift_once();
    v28 = v0[23];
  }

  v20 = v0[23];

  v21 = v0[10];
  v22 = v0[11];
  v23 = v0[9];
  v24 = v0[5];
  type metadata accessor for Transaction();
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = 0;
  *(v26 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v27 = v0[1];

  return v27();
}

uint64_t sub_10019F080()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v13 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = v2[23];
    v5 = v2[10];
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[5];
    (*(v7 + 8))(v5, v6);

    v9 = sub_10019F450;
    v10 = v8;
  }

  else
  {
    v11 = v2[5];
    (*(v2[7] + 8))(v2[10], v2[6]);
    v9 = sub_10019F1E0;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

void sub_10019F1E0()
{
  v1 = v0[25] + 1;
  if (v1 == v0[24])
  {
    v2 = v0[23];

    v3 = v0[10];
    v4 = v0[11];
    v5 = v0[9];
    v6 = v0[5];
    type metadata accessor for Transaction();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;

    static Transaction.asyncTask(name:block:)();

    v9 = v0[1];

    v9();
  }

  else
  {
    v0[25] = v1;
    v10 = v0[23];
    if (v1 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = v0[14];
      v11 = v0[15];
      v13 = v0[10];
      v14 = v0[6];
      v15 = type metadata accessor for MemberSharingCircle();
      v12(v13, v10 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)) + *(*(v15 - 8) + 72) * v1 + *(v15 + 28), v14);
      v16 = swift_task_alloc();
      v0[26] = v16;
      *v16 = v0;
      v16[1] = sub_10019F080;
      v17 = v0[10];

      sub_1003B218C(v17, 0);
    }
  }
}

uint64_t sub_10019F450()
{
  v1 = v0[27];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10019F4D0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_10019F72C;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 40);

    v5 = sub_10019F5F8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10019F5F8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  type metadata accessor for Transaction();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019F72C()
{
  v1 = v0[20];

  v2 = v0[29];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10019F7B4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[8] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle();
  v2[13] = v8;
  v9 = *(v8 - 8);
  v2[14] = v9;
  v10 = *(v9 + 64) + 15;
  v2[15] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v2[16] = v11;
  v12 = *(v11 - 8);
  v2[17] = v12;
  v2[18] = *(v12 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v13 = type metadata accessor for OwnedBeaconRecord();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10019F9D8, v1, 0);
}

uint64_t sub_10019F9D8()
{
  v25 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v0[5] = v4;
    type metadata accessor for SPShareType(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000136BC(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "forceBreakAllShares of %s type", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = v0[6];
  if (v10)
  {
    v21 = *(v0[7] + 136);
    v0[24] = v21;
    v22 = sub_10019FCD4;
  }

  else
  {
    if ((v10 & 2) == 0)
    {
      v11 = v0[23];
      v12 = v0[19];
      v13 = v0[20];
      v14 = v0[15];
      v15 = v0[12];
      v23 = v0[9];
      v16 = v0[7];
      type metadata accessor for Transaction();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 1;

      static Transaction.asyncTask(name:block:)();

      v19 = v0[1];

      return v19();
    }

    v21 = *(v0[7] + 136);
    v0[37] = v21;
    v22 = sub_1001A0BD8;
  }

  return _swift_task_switch(v22, v21, 0);
}