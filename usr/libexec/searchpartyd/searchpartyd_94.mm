void sub_1009CF694(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v16 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v39 - v18;
  v44 = a4;
  if (a3)
  {
    *&v46 = a1;
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError);
    swift_willThrowTypedImpl();
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B780);
    sub_100A1AB44(a1, a2, 1);
    v21 = a4;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    sub_100A1AB54(a1, a2, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = a7;
      v25 = v24;
      v26 = swift_slowAlloc();
      v42 = a8;
      v27 = v26;
      v40 = swift_slowAlloc();
      *&v45[0] = v40;
      *v25 = 138412546;
      *(v25 + 4) = v21;
      *v27 = v21;
      *(v25 + 12) = 2080;
      *&v46 = a1;
      *(&v46 + 1) = a2;
      LOBYTE(v47) = 1;
      sub_100A1AB44(a1, a2, 1);
      v28 = v21;
      sub_1000BC4D4(&qword_1016B1758, &qword_1013D0AF8);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000136BC(v29, v30, v45);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to reverse geocode location %@ for notification, result: %s", v25, 0x16u);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);
      a8 = v42;

      sub_100007BAC(v40);

      a7 = v41;
    }

    a1 = 0;
    a2 = 0;
  }

  else
  {
  }

  if (*(a5 + 40))
  {
    v32 = *(a5 + 40);

    sub_1005323CC(v45);

    v52 = v45[6];
    v53 = v45[7];
    v54 = v45[8];
    v55 = v45[9];
    v48 = v45[2];
    v49 = v45[3];
    v50 = v45[4];
    v51 = v45[5];
    v46 = v45[0];
    v47 = v45[1];
    v33 = sub_10058B134(&v46);
    if (v33 != 1)
    {
      sub_10000B3A8(v45, &qword_1016B1750, &qword_1013B1358);
    }

    v34 = v33 != 1;
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v37 = v44;
    *(v36 + 32) = v43;
    *(v36 + 40) = a7;
    *(v36 + 48) = a8;
    *(v36 + 56) = a5;
    *(v36 + 64) = v37;
    *(v36 + 72) = a9;
    *(v36 + 80) = v34;
    *(v36 + 88) = a1;
    *(v36 + 96) = a2;
    v38 = v37;

    sub_100A838D4(0, 0, v19, &unk_1013D0AF0, v36);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009CFAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = v30;
  *(v8 + 320) = v31;
  *(v8 + 769) = v29;
  *(v8 + 296) = a8;
  *(v8 + 304) = v28;
  *(v8 + 280) = a6;
  *(v8 + 288) = a7;
  *(v8 + 264) = a4;
  *(v8 + 272) = a5;
  v9 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  *(v8 + 328) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v11 = type metadata accessor for SafeLocation();
  *(v8 + 360) = v11;
  v12 = *(v11 - 8);
  *(v8 + 368) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  v14 = type metadata accessor for AnyAnalyticsEvent();
  *(v8 + 400) = v14;
  v15 = *(v14 - 8);
  *(v8 + 408) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 416) = swift_task_alloc();
  v17 = type metadata accessor for StableIdentifier();
  *(v8 + 424) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  v19 = type metadata accessor for OwnedBeaconRecord();
  *(v8 + 440) = v19;
  v20 = *(v19 - 8);
  *(v8 + 448) = v20;
  *(v8 + 456) = *(v20 + 64);
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  v21 = type metadata accessor for UUID();
  *(v8 + 512) = v21;
  v22 = *(v21 - 8);
  *(v8 + 520) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  v24 = async function pointer to daemon.getter[1];
  v25 = swift_task_alloc();
  *(v8 + 552) = v25;
  *v25 = v8;
  v25[1] = sub_1009CFDE0;

  return daemon.getter();
}

uint64_t sub_1009CFDE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 552);
  v12 = *v1;
  *(v3 + 560) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 568) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FMIPService();
  v9 = sub_100003F64(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003F64(&unk_1016B1100, type metadata accessor for FMIPService);
  *v6 = v12;
  v6[1] = sub_1009CFFBC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1009CFFBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 568);
  v5 = *v2;
  *(*v2 + 576) = a1;

  v6 = *(v3 + 560);
  if (v1)
  {

    v7 = sub_1009D010C;
  }

  else
  {

    v7 = sub_1009D02E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1009D010C()
{
  v2 = v0[33];
  v1 = v0[34];
  type metadata accessor for SPSeparationMonitoringError(0);
  v0[29] = 12;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v3 = v0[28];
  v2(v3, 1);

  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  v8 = v0[62];
  v7 = v0[63];
  v10 = v0[60];
  v9 = v0[61];
  v11 = v0[58];
  v12 = v0[59];
  v13 = v0[54];
  v16 = v0[52];
  v17 = v0[49];
  v18 = v0[48];
  v19 = v0[47];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1009D02E0()
{
  v1 = v0[35];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[65];
    v5 = v0[56];
    v20 = v0[55];

    sub_101123D4C(0, v3, 0);
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v19 = *(v5 + 72);
    do
    {
      v7 = v0[68];
      v9 = v0[63];
      v8 = v0[64];
      sub_100A1B358(v6, v9, type metadata accessor for OwnedBeaconRecord);
      (*(v4 + 16))(v7, v9 + *(v20 + 20), v8);
      sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_101123D4C(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[68];
      v13 = v0[64];
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v19;
      --v3;
    }

    while (v3);
  }

  v14 = v0[35];
  v0[73] = sub_10000954C(_swiftEmptyArrayStorage);

  swift_beginAccess();
  v15 = *(v14 + 16);
  v0[74] = v15;

  v16 = swift_task_alloc();
  v0[75] = v16;
  *v16 = v0;
  v16[1] = sub_1009D053C;
  v17 = v0[72];

  return sub_10012F63C(v15);
}

uint64_t sub_1009D053C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 600);
  v7 = *v2;

  v8 = *(v4 + 592);
  if (v1)
  {

    v9 = sub_1009D1178;
  }

  else
  {

    *(v5 + 608) = a1;
    v9 = sub_1009D0690;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1009D0690()
{
  v122 = v0;
  v1 = *(v0 + 608);
  *(v0 + 616) = v1;
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = *(v0 + 520);
    v5 = *(v0 + 448);
    v119 = *(v0 + 440);
    v121 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v117 = *(v5 + 72);
    do
    {
      v7 = *(v0 + 536);
      v9 = *(v0 + 504);
      v8 = *(v0 + 512);
      sub_100A1B358(v6, v9, type metadata accessor for OwnedBeaconRecord);
      (*(v4 + 16))(v7, v9 + *(v119 + 20), v8);
      sub_100A1B3C0(v9, type metadata accessor for OwnedBeaconRecord);
      v121 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_101123D4C(v10 > 1, v11 + 1, 1);
        v3 = v121;
      }

      v12 = *(v0 + 536);
      v13 = *(v0 + 512);
      v3[2] = v11 + 1;
      (*(v4 + 32))(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v117;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 584);
  v15 = sub_10000954C(v3);

  if (*(v15 + 16) <= *(v14 + 16) >> 3)
  {
    v121 = *(v0 + 584);
    sub_10087D5B4(v15);

    v16 = v121;
  }

  else
  {
    v16 = sub_100610BC8(v15, *(v0 + 584));
  }

  *(v0 + 624) = v16;
  v17 = *(v0 + 280);
  swift_beginAccess();
  v18 = *(v17 + 16);
  *(v0 + 632) = v18;
  v19 = *(v18 + 16);
  *(v0 + 640) = v19;
  if (!v19)
  {
LABEL_26:
    v50 = *(v0 + 616);

    v51 = *(v50 + 16);
    *(v0 + 656) = v51;
    if (v51)
    {
      v52 = *(v0 + 616);
      v53 = *(v0 + 448);
      v54 = *(v0 + 456);
      v55 = *(v53 + 80);
      *(v0 + 764) = v55;
      v56 = (v55 + 32) & ~v55;
      *(v0 + 664) = *(v53 + 72);
      *(v0 + 720) = _swiftEmptyArrayStorage;
      *(v0 + 712) = 0;
      v57 = *(v0 + 504);
      v58 = *(v0 + 480);
      v59 = *(v0 + 288);
      v60 = *(v0 + 296);
      sub_100A1B358(v52 + v56, v58, type metadata accessor for OwnedBeaconRecord);
      sub_100A1B358(v58, v57, type metadata accessor for OwnedBeaconRecord);
      v61 = swift_allocObject();
      *(v0 + 728) = v61;
      *(v61 + 16) = v59;
      *(v61 + 24) = v60;
      sub_100A18C9C(v57, v61 + v56, type metadata accessor for OwnedBeaconRecord);
      v62 = async function pointer to unsafeBlocking<A>(_:)[1];

      v63 = v60;
      v64 = swift_task_alloc();
      *(v0 + 736) = v64;
      *v64 = v0;
      v64[1] = sub_1009D2A44;
      v65 = &type metadata for Bool;
      v66 = sub_100A1AC64;
      v67 = v0 + 768;
      goto LABEL_28;
    }

    v68 = *(v0 + 616);

    *(v0 + 704) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v69 = *(v0 + 304);
      if (v69 != 1)
      {
        if (v69)
        {

          if (qword_101694B70 == -1)
          {
LABEL_38:
            v87 = type metadata accessor for Logger();
            sub_1000076D4(v87, qword_10177B780);
            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = *(v0 + 304);
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v121 = v92;
              *v91 = 136315138;
              *(v0 + 256) = v90;
              type metadata accessor for SPSeparationEventType(0);
              v93 = String.init<A>(describing:)();
              v95 = sub_1000136BC(v93, v94, &v121);

              *(v91 + 4) = v95;
              _os_log_impl(&_mh_execute_header, v88, v89, "Received unknown eventType: %s", v91, 0xCu);
              sub_100007BAC(v92);
            }

            v96 = *(v0 + 576);
            v98 = *(v0 + 264);
            v97 = *(v0 + 272);
            type metadata accessor for SPSeparationMonitoringError(0);
            *(v0 + 248) = 12;
            sub_100032898(_swiftEmptyArrayStorage);
            sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v99 = *(v0 + 240);
            v98(v99, 1);

            goto LABEL_41;
          }

LABEL_45:
          swift_once();
          goto LABEL_38;
        }

        v70 = *(v0 + 288);
        v71 = *(v0 + 296);
        v61 = swift_allocObject();
        *(v0 + 744) = v61;
        *(v61 + 16) = v70;
        *(v61 + 24) = v71;
        v72 = async function pointer to unsafeBlocking<A>(_:)[1];

        v73 = v71;
        v74 = swift_task_alloc();
        *(v0 + 752) = v74;
        *v74 = v0;
        v74[1] = sub_1009D3474;
        v67 = *(v0 + 352);
        v65 = *(v0 + 328);
        v66 = sub_100A1ACD8;
LABEL_28:

        return unsafeBlocking<A>(_:)(v67, v66, v61, v65);
      }

      v78 = *(v0 + 576);
      v79 = *(v0 + 312);
      v80 = *(v0 + 320);
      v81 = *(v0 + 769);
      v83 = *(v0 + 288);
      v82 = *(v0 + 296);
      v85 = *(v0 + 264);
      v84 = *(v0 + 272);
      *(v0 + 16) = 1;
      *(v0 + 24) = _swiftEmptyArrayStorage;
      *(v0 + 32) = v81;
      *(v0 + 40) = 0;
      *(v0 + 48) = v79;
      *(v0 + 56) = v80;
      *(v0 + 64) = v82;

      v86 = v82;
      sub_1009D4C58(v0 + 16, v85, v84);
    }

    else
    {
      v75 = *(v0 + 576);
      v77 = *(v0 + 264);
      v76 = *(v0 + 272);

      v77(0, 0);
    }

LABEL_41:
    v100 = *(v0 + 544);
    v101 = *(v0 + 536);
    v102 = *(v0 + 528);
    v104 = *(v0 + 496);
    v103 = *(v0 + 504);
    v106 = *(v0 + 480);
    v105 = *(v0 + 488);
    v107 = *(v0 + 464);
    v108 = *(v0 + 472);
    v109 = *(v0 + 432);
    v112 = *(v0 + 416);
    v113 = *(v0 + 392);
    v114 = *(v0 + 384);
    v115 = *(v0 + 376);
    v116 = *(v0 + 352);
    v118 = *(v0 + 344);
    v120 = *(v0 + 336);

    v110 = *(v0 + 8);

    return v110();
  }

  *(v0 + 760) = *(*(v0 + 448) + 80);
  *(v0 + 648) = 0;
  v20 = *(v18 + 16);

  if (!v20)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v22 = 0;
  while (1)
  {
    v23 = *(v0 + 496);
    v24 = *(v0 + 440);
    v26 = *(v0 + 424);
    v25 = *(v0 + 432);
    sub_100A1B358(v21 + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(*(v0 + 448) + 72) * v22, v23, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v23 + *(v24 + 24), v25, type metadata accessor for StableIdentifier);
    LODWORD(v23) = swift_getEnumCaseMultiPayload();
    sub_100A1B3C0(v25, type metadata accessor for StableIdentifier);
    if (!v23)
    {
      v29 = *(v0 + 624);
      if (*(v29 + 16))
      {
        v30 = *(v0 + 512);
        v31 = *(v0 + 496);
        v32 = *(*(v0 + 440) + 20);
        v33 = *(v29 + 40);
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
        v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v35 = -1 << *(v29 + 32);
        v36 = v34 & ~v35;
        if ((*(v29 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36))
        {
          break;
        }
      }
    }

LABEL_13:
    v27 = *(v0 + 640);
    v28 = *(v0 + 648) + 1;
    sub_100A1B3C0(*(v0 + 496), type metadata accessor for OwnedBeaconRecord);
    if (v28 == v27)
    {
      v48 = *(v0 + 624);

      v49 = *(v0 + 632);
      goto LABEL_26;
    }

    v22 = *(v0 + 648) + 1;
    *(v0 + 648) = v22;
    v21 = *(v0 + 632);
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_44;
    }
  }

  v37 = ~v35;
  v38 = *(v0 + 520);
  v39 = *(v38 + 72);
  v40 = *(v38 + 16);
  v41 = *(v0 + 624);
  while (1)
  {
    v42 = *(v0 + 528);
    v43 = *(v0 + 520);
    v44 = *(v0 + 512);
    v40(v42, *(v41 + 48) + v36 * v39, v44);
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v43 + 8))(v42, v44);
    if (v45)
    {
      break;
    }

    v41 = *(v0 + 624);
    v36 = (v36 + 1) & v37;
    if (((*(v41 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_1000BC4D4(&qword_1016B1760, &qword_1013D0B00);
  *(v0 + 672) = AnalyticsEvent.__allocating_init(name:)();
  sub_1000041A4(&qword_1016B1768, &qword_1016B1760, &qword_1013D0B00);
  v47 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009D1C80, v47, v46);
}

uint64_t sub_1009D1178()
{
  v123 = v0;
  v1 = *(v0 + 280);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 616) = v2;
  v3 = *(v2 + 16);

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = *(v0 + 520);
    v6 = *(v0 + 448);
    v120 = *(v0 + 440);
    v122 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v118 = *(v6 + 72);
    do
    {
      v8 = *(v0 + 536);
      v10 = *(v0 + 504);
      v9 = *(v0 + 512);
      sub_100A1B358(v7, v10, type metadata accessor for OwnedBeaconRecord);
      (*(v5 + 16))(v8, v10 + *(v120 + 20), v9);
      sub_100A1B3C0(v10, type metadata accessor for OwnedBeaconRecord);
      v122 = v4;
      v12 = v4[2];
      v11 = v4[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123D4C(v11 > 1, v12 + 1, 1);
        v4 = v122;
      }

      v13 = *(v0 + 536);
      v14 = *(v0 + 512);
      v4[2] = v12 + 1;
      (*(v5 + 32))(v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
      v7 += v118;
      --v3;
    }

    while (v3);
  }

  v15 = *(v0 + 584);
  v16 = sub_10000954C(v4);

  if (*(v16 + 16) <= *(v15 + 16) >> 3)
  {
    v122 = *(v0 + 584);
    sub_10087D5B4(v16);

    v17 = v122;
  }

  else
  {
    v17 = sub_100610BC8(v16, *(v0 + 584));
  }

  *(v0 + 624) = v17;
  v18 = *(v0 + 280);
  swift_beginAccess();
  v19 = *(v18 + 16);
  *(v0 + 632) = v19;
  v20 = *(v19 + 16);
  *(v0 + 640) = v20;
  if (!v20)
  {
LABEL_26:
    v51 = *(v0 + 616);

    v52 = *(v51 + 16);
    *(v0 + 656) = v52;
    if (v52)
    {
      v53 = *(v0 + 616);
      v54 = *(v0 + 448);
      v55 = *(v0 + 456);
      v56 = *(v54 + 80);
      *(v0 + 764) = v56;
      v57 = (v56 + 32) & ~v56;
      *(v0 + 664) = *(v54 + 72);
      *(v0 + 720) = _swiftEmptyArrayStorage;
      *(v0 + 712) = 0;
      v58 = *(v0 + 504);
      v59 = *(v0 + 480);
      v60 = *(v0 + 288);
      v61 = *(v0 + 296);
      sub_100A1B358(v53 + v57, v59, type metadata accessor for OwnedBeaconRecord);
      sub_100A1B358(v59, v58, type metadata accessor for OwnedBeaconRecord);
      v62 = swift_allocObject();
      *(v0 + 728) = v62;
      *(v62 + 16) = v60;
      *(v62 + 24) = v61;
      sub_100A18C9C(v58, v62 + v57, type metadata accessor for OwnedBeaconRecord);
      v63 = async function pointer to unsafeBlocking<A>(_:)[1];

      v64 = v61;
      v65 = swift_task_alloc();
      *(v0 + 736) = v65;
      *v65 = v0;
      v65[1] = sub_1009D2A44;
      v66 = &type metadata for Bool;
      v67 = sub_100A1AC64;
      v68 = v0 + 768;
      goto LABEL_28;
    }

    v69 = *(v0 + 616);

    *(v0 + 704) = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v70 = *(v0 + 304);
      if (v70 != 1)
      {
        if (v70)
        {

          if (qword_101694B70 == -1)
          {
LABEL_38:
            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177B780);
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = *(v0 + 304);
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v122 = v93;
              *v92 = 136315138;
              *(v0 + 256) = v91;
              type metadata accessor for SPSeparationEventType(0);
              v94 = String.init<A>(describing:)();
              v96 = sub_1000136BC(v94, v95, &v122);

              *(v92 + 4) = v96;
              _os_log_impl(&_mh_execute_header, v89, v90, "Received unknown eventType: %s", v92, 0xCu);
              sub_100007BAC(v93);
            }

            v97 = *(v0 + 576);
            v99 = *(v0 + 264);
            v98 = *(v0 + 272);
            type metadata accessor for SPSeparationMonitoringError(0);
            *(v0 + 248) = 12;
            sub_100032898(_swiftEmptyArrayStorage);
            sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
            _BridgedStoredNSError.init(_:userInfo:)();
            v100 = *(v0 + 240);
            v99(v100, 1);

            goto LABEL_41;
          }

LABEL_45:
          swift_once();
          goto LABEL_38;
        }

        v71 = *(v0 + 288);
        v72 = *(v0 + 296);
        v62 = swift_allocObject();
        *(v0 + 744) = v62;
        *(v62 + 16) = v71;
        *(v62 + 24) = v72;
        v73 = async function pointer to unsafeBlocking<A>(_:)[1];

        v74 = v72;
        v75 = swift_task_alloc();
        *(v0 + 752) = v75;
        *v75 = v0;
        v75[1] = sub_1009D3474;
        v68 = *(v0 + 352);
        v66 = *(v0 + 328);
        v67 = sub_100A1ACD8;
LABEL_28:

        return unsafeBlocking<A>(_:)(v68, v67, v62, v66);
      }

      v79 = *(v0 + 576);
      v80 = *(v0 + 312);
      v81 = *(v0 + 320);
      v82 = *(v0 + 769);
      v84 = *(v0 + 288);
      v83 = *(v0 + 296);
      v86 = *(v0 + 264);
      v85 = *(v0 + 272);
      *(v0 + 16) = 1;
      *(v0 + 24) = _swiftEmptyArrayStorage;
      *(v0 + 32) = v82;
      *(v0 + 40) = 0;
      *(v0 + 48) = v80;
      *(v0 + 56) = v81;
      *(v0 + 64) = v83;

      v87 = v83;
      sub_1009D4C58(v0 + 16, v86, v85);
    }

    else
    {
      v76 = *(v0 + 576);
      v78 = *(v0 + 264);
      v77 = *(v0 + 272);

      v78(0, 0);
    }

LABEL_41:
    v101 = *(v0 + 544);
    v102 = *(v0 + 536);
    v103 = *(v0 + 528);
    v105 = *(v0 + 496);
    v104 = *(v0 + 504);
    v107 = *(v0 + 480);
    v106 = *(v0 + 488);
    v108 = *(v0 + 464);
    v109 = *(v0 + 472);
    v110 = *(v0 + 432);
    v113 = *(v0 + 416);
    v114 = *(v0 + 392);
    v115 = *(v0 + 384);
    v116 = *(v0 + 376);
    v117 = *(v0 + 352);
    v119 = *(v0 + 344);
    v121 = *(v0 + 336);

    v111 = *(v0 + 8);

    return v111();
  }

  *(v0 + 760) = *(*(v0 + 448) + 80);
  *(v0 + 648) = 0;
  v21 = *(v19 + 16);

  if (!v21)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = 0;
  while (1)
  {
    v24 = *(v0 + 496);
    v25 = *(v0 + 440);
    v27 = *(v0 + 424);
    v26 = *(v0 + 432);
    sub_100A1B358(v22 + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(*(v0 + 448) + 72) * v23, v24, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v24 + *(v25 + 24), v26, type metadata accessor for StableIdentifier);
    LODWORD(v24) = swift_getEnumCaseMultiPayload();
    sub_100A1B3C0(v26, type metadata accessor for StableIdentifier);
    if (!v24)
    {
      v30 = *(v0 + 624);
      if (*(v30 + 16))
      {
        v31 = *(v0 + 512);
        v32 = *(v0 + 496);
        v33 = *(*(v0 + 440) + 20);
        v34 = *(v30 + 40);
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v30 + 32);
        v37 = v35 & ~v36;
        if ((*(v30 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
        {
          break;
        }
      }
    }

LABEL_13:
    v28 = *(v0 + 640);
    v29 = *(v0 + 648) + 1;
    sub_100A1B3C0(*(v0 + 496), type metadata accessor for OwnedBeaconRecord);
    if (v29 == v28)
    {
      v49 = *(v0 + 624);

      v50 = *(v0 + 632);
      goto LABEL_26;
    }

    v23 = *(v0 + 648) + 1;
    *(v0 + 648) = v23;
    v22 = *(v0 + 632);
    if (v23 >= *(v22 + 16))
    {
      goto LABEL_44;
    }
  }

  v38 = ~v36;
  v39 = *(v0 + 520);
  v40 = *(v39 + 72);
  v41 = *(v39 + 16);
  v42 = *(v0 + 624);
  while (1)
  {
    v43 = *(v0 + 528);
    v44 = *(v0 + 520);
    v45 = *(v0 + 512);
    v41(v43, *(v42 + 48) + v37 * v40, v45);
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v44 + 8))(v43, v45);
    if (v46)
    {
      break;
    }

    v42 = *(v0 + 624);
    v37 = (v37 + 1) & v38;
    if (((*(v42 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_1000BC4D4(&qword_1016B1760, &qword_1013D0B00);
  *(v0 + 672) = AnalyticsEvent.__allocating_init(name:)();
  sub_1000041A4(&qword_1016B1768, &qword_1016B1760, &qword_1013D0B00);
  v48 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009D1C80, v48, v47);
}

uint64_t sub_1009D1C80()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 416);
  dispatch thunk of AnalyticsEvent.anyAnalyticsEvent.getter();

  return _swift_task_switch(sub_1009D1CEC, 0, 0);
}

uint64_t sub_1009D1CEC()
{
  v27 = v0;
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  static AnalyticsPublisher.publish(event:)();
  (*(v2 + 8))(v1, v3);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v4 = v0[61];
  v5 = v0[62];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B780);
  sub_100A1B358(v5, v4, type metadata accessor for OwnedBeaconRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[64];
    v10 = v0[61];
    v11 = v0[55];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 20);
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100A1B3C0(v10, type metadata accessor for OwnedBeaconRecord);
    v18 = sub_1000136BC(v15, v17, &v26);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring separation monitor alert for unregistered self-beaconing device: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {
    v19 = v0[61];

    sub_100A1B3C0(v19, type metadata accessor for OwnedBeaconRecord);
  }

  v20 = v0[62];
  v21 = v0[36];
  v22 = swift_task_alloc();
  v0[85] = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v24 = swift_task_alloc();
  v0[86] = v24;
  *v24 = v0;
  v24[1] = sub_1009D1FEC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, 0, 0, 0xD00000000000003FLL, 0x8000000101367980, sub_100A1ACE0, v22, &type metadata for () + 8);
}

uint64_t sub_1009D1FEC()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  v2[87] = v0;

  v5 = v2[85];
  if (v0)
  {
    v6 = v2[79];
    v7 = v2[78];
    v8 = v2[77];

    v9 = sub_1009D3944;
  }

  else
  {

    v9 = sub_1009D214C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1009D214C()
{
  v101 = v0;
  v1 = *(v0 + 672);

  while (1)
  {
LABEL_2:
    v2 = *(v0 + 640);
    v3 = *(v0 + 648) + 1;
    sub_100A1B3C0(*(v0 + 496), type metadata accessor for OwnedBeaconRecord);
    if (v3 == v2)
    {
      v27 = *(v0 + 624);

      v28 = *(v0 + 632);
      v29 = *(v0 + 616);

      v30 = *(v29 + 16);
      *(v0 + 656) = v30;
      if (v30)
      {
        v31 = *(v0 + 616);
        v32 = *(v0 + 448);
        v33 = *(v0 + 456);
        v34 = *(v32 + 80);
        *(v0 + 764) = v34;
        v35 = (v34 + 32) & ~v34;
        *(v0 + 664) = *(v32 + 72);
        *(v0 + 720) = _swiftEmptyArrayStorage;
        *(v0 + 712) = 0;
        v36 = *(v0 + 504);
        v37 = *(v0 + 480);
        v38 = *(v0 + 288);
        v39 = *(v0 + 296);
        sub_100A1B358(v31 + v35, v37, type metadata accessor for OwnedBeaconRecord);
        sub_100A1B358(v37, v36, type metadata accessor for OwnedBeaconRecord);
        v40 = swift_allocObject();
        *(v0 + 728) = v40;
        *(v40 + 16) = v38;
        *(v40 + 24) = v39;
        sub_100A18C9C(v36, v40 + v35, type metadata accessor for OwnedBeaconRecord);
        v41 = async function pointer to unsafeBlocking<A>(_:)[1];

        v42 = v39;
        v43 = swift_task_alloc();
        *(v0 + 736) = v43;
        *v43 = v0;
        v43[1] = sub_1009D2A44;
        v44 = &type metadata for Bool;
        v45 = sub_100A1AC64;
        v46 = v0 + 768;
        goto LABEL_13;
      }

      v49 = *(v0 + 616);

      *(v0 + 704) = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
        v50 = *(v0 + 304);
        if (v50 != 1)
        {
          if (v50)
          {

            if (qword_101694B70 == -1)
            {
LABEL_26:
              v68 = type metadata accessor for Logger();
              sub_1000076D4(v68, qword_10177B780);
              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v69, v70))
              {
                v71 = *(v0 + 304);
                v72 = swift_slowAlloc();
                v73 = swift_slowAlloc();
                v100 = v73;
                *v72 = 136315138;
                *(v0 + 256) = v71;
                type metadata accessor for SPSeparationEventType(0);
                v74 = String.init<A>(describing:)();
                v76 = sub_1000136BC(v74, v75, &v100);

                *(v72 + 4) = v76;
                _os_log_impl(&_mh_execute_header, v69, v70, "Received unknown eventType: %s", v72, 0xCu);
                sub_100007BAC(v73);
              }

              v77 = *(v0 + 576);
              v79 = *(v0 + 264);
              v78 = *(v0 + 272);
              type metadata accessor for SPSeparationMonitoringError(0);
              *(v0 + 248) = 12;
              sub_100032898(_swiftEmptyArrayStorage);
              sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
              _BridgedStoredNSError.init(_:userInfo:)();
              v80 = *(v0 + 240);
              v79(v80, 1);

              goto LABEL_29;
            }

LABEL_33:
            swift_once();
            goto LABEL_26;
          }

          v51 = *(v0 + 288);
          v52 = *(v0 + 296);
          v40 = swift_allocObject();
          *(v0 + 744) = v40;
          *(v40 + 16) = v51;
          *(v40 + 24) = v52;
          v53 = async function pointer to unsafeBlocking<A>(_:)[1];

          v54 = v52;
          v55 = swift_task_alloc();
          *(v0 + 752) = v55;
          *v55 = v0;
          v55[1] = sub_1009D3474;
          v46 = *(v0 + 352);
          v44 = *(v0 + 328);
          v45 = sub_100A1ACD8;
LABEL_13:

          return unsafeBlocking<A>(_:)(v46, v45, v40, v44);
        }

        v59 = *(v0 + 576);
        v60 = *(v0 + 312);
        v61 = *(v0 + 320);
        v62 = *(v0 + 769);
        v63 = *(v0 + 288);
        v64 = *(v0 + 296);
        v66 = *(v0 + 264);
        v65 = *(v0 + 272);
        *(v0 + 16) = 1;
        *(v0 + 24) = _swiftEmptyArrayStorage;
        *(v0 + 32) = v62;
        *(v0 + 40) = 0;
        *(v0 + 48) = v60;
        *(v0 + 56) = v61;
        *(v0 + 64) = v64;

        v67 = v64;
        sub_1009D4C58(v0 + 16, v66, v65);
      }

      else
      {
        v56 = *(v0 + 576);
        v58 = *(v0 + 264);
        v57 = *(v0 + 272);

        v58(0, 0);
      }

LABEL_29:
      v81 = *(v0 + 544);
      v82 = *(v0 + 536);
      v83 = *(v0 + 528);
      v85 = *(v0 + 496);
      v84 = *(v0 + 504);
      v87 = *(v0 + 480);
      v86 = *(v0 + 488);
      v88 = *(v0 + 464);
      v89 = *(v0 + 472);
      v90 = *(v0 + 432);
      v93 = *(v0 + 416);
      v94 = *(v0 + 392);
      v95 = *(v0 + 384);
      v96 = *(v0 + 376);
      v97 = *(v0 + 352);
      v98 = *(v0 + 344);
      v99 = *(v0 + 336);

      v91 = *(v0 + 8);

      return v91();
    }

    v4 = *(v0 + 648) + 1;
    *(v0 + 648) = v4;
    v5 = *(v0 + 632);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v6 = *(v0 + 496);
    v7 = *(v0 + 440);
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);
    sub_100A1B358(v5 + ((*(v0 + 760) + 32) & ~*(v0 + 760)) + *(*(v0 + 448) + 72) * v4, v6, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v6 + *(v7 + 24), v8, type metadata accessor for StableIdentifier);
    LODWORD(v6) = swift_getEnumCaseMultiPayload();
    sub_100A1B3C0(v8, type metadata accessor for StableIdentifier);
    if (!v6)
    {
      v10 = *(v0 + 624);
      if (*(v10 + 16))
      {
        v11 = *(v0 + 512);
        v12 = *(v0 + 496);
        v13 = *(*(v0 + 440) + 20);
        v14 = *(v10 + 40);
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = -1 << *(v10 + 32);
        v17 = v15 & ~v16;
        if ((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
        {
          break;
        }
      }
    }
  }

  v18 = ~v16;
  v19 = *(v0 + 520);
  v20 = *(v19 + 72);
  v21 = *(v19 + 16);
  v22 = *(v0 + 624);
  while (1)
  {
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
    v21(v23, *(v22 + 48) + v17 * v20, v25);
    sub_100003F64(&qword_1016984A0, &type metadata accessor for UUID);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v24 + 8))(v23, v25);
    if (v26)
    {
      break;
    }

    v22 = *(v0 + 624);
    v17 = (v17 + 1) & v18;
    if (((*(v22 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  sub_1000BC4D4(&qword_1016B1760, &qword_1013D0B00);
  *(v0 + 672) = AnalyticsEvent.__allocating_init(name:)();
  sub_1000041A4(&qword_1016B1768, &qword_1016B1760, &qword_1013D0B00);
  v48 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009D1C80, v48, v47);
}

uint64_t sub_1009D2A44()
{
  v1 = *(*v0 + 736);
  v2 = *(*v0 + 728);
  v4 = *v0;

  return _swift_task_switch(sub_1009D2B5C, 0, 0);
}

uint64_t sub_1009D2B5C()
{
  v99 = v0;
  if (*(v0 + 768))
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 480);
    v2 = *(v0 + 464);
    v3 = *(v0 + 296);
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B780);
    sub_100A1B358(v1, v2, type metadata accessor for OwnedBeaconRecord);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v94 = *(v0 + 512);
      v96 = *(v0 + 480);
      v8 = *(v0 + 464);
      v9 = *(v0 + 440);
      v10 = *(v0 + 296);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v98 = v13;
      *v11 = 138412803;
      *(v11 + 4) = v10;
      *v12 = v10;
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2081;
      v14 = *(v9 + 20);
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v15 = v10;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_100A1B3C0(v8, type metadata accessor for OwnedBeaconRecord);
      v19 = sub_1000136BC(v16, v18, &v98);

      *(v11 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Location is in safe location - not posting separation notification at %@ for beacon %{private,mask.hash}s.", v11, 0x20u);
      sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v13);

      v20 = v96;
    }

    else
    {
      v29 = *(v0 + 480);
      v30 = *(v0 + 464);

      sub_100A1B3C0(v30, type metadata accessor for OwnedBeaconRecord);
      v20 = v29;
    }

    sub_100A1B3C0(v20, type metadata accessor for OwnedBeaconRecord);
    v23 = *(v0 + 720);
  }

  else
  {
    v21 = *(v0 + 720);
    sub_100A1B358(*(v0 + 480), *(v0 + 472), type metadata accessor for OwnedBeaconRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 720);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_100A5C050(0, v23[2] + 1, 1, *(v0 + 720));
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_100A5C050(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = *(v0 + 664);
    v27 = *(v0 + 472);
    v28 = (*(v0 + 764) + 32) & ~*(v0 + 764);
    sub_100A1B3C0(*(v0 + 480), type metadata accessor for OwnedBeaconRecord);
    v23[2] = v25 + 1;
    sub_100A18C9C(v27, v23 + v28 + v26 * v25, type metadata accessor for OwnedBeaconRecord);
  }

  v31 = *(v0 + 712) + 1;
  if (v31 != *(v0 + 656))
  {
    *(v0 + 720) = v23;
    *(v0 + 712) = v31;
    v43 = *(v0 + 504);
    v44 = *(v0 + 480);
    v45 = *(v0 + 456);
    v46 = *(v0 + 288);
    v47 = *(v0 + 296);
    v48 = (*(v0 + 764) + 32) & ~*(v0 + 764);
    sub_100A1B358(*(v0 + 616) + v48 + *(v0 + 664) * v31, v44, type metadata accessor for OwnedBeaconRecord);
    sub_100A1B358(v44, v43, type metadata accessor for OwnedBeaconRecord);
    v36 = swift_allocObject();
    *(v0 + 728) = v36;
    *(v36 + 16) = v46;
    *(v36 + 24) = v47;
    sub_100A18C9C(v43, v36 + v48, type metadata accessor for OwnedBeaconRecord);
    v49 = async function pointer to unsafeBlocking<A>(_:)[1];

    v50 = v47;
    v51 = swift_task_alloc();
    *(v0 + 736) = v51;
    *v51 = v0;
    v51[1] = sub_1009D2A44;
    v41 = &type metadata for Bool;
    v42 = sub_100A1AC64;
    v40 = v0 + 768;
    goto LABEL_19;
  }

  v32 = *(v0 + 616);

  *(v0 + 704) = v23;
  if (v23[2])
  {
    v33 = *(v0 + 304);
    if (v33 == 1)
    {
      v55 = *(v0 + 576);
      v56 = *(v0 + 312);
      v57 = *(v0 + 320);
      v58 = *(v0 + 769);
      v59 = *(v0 + 288);
      v60 = *(v0 + 296);
      v62 = *(v0 + 264);
      v61 = *(v0 + 272);
      *(v0 + 16) = 1;
      *(v0 + 24) = v23;
      *(v0 + 32) = v58;
      *(v0 + 40) = 0;
      *(v0 + 48) = v56;
      *(v0 + 56) = v57;
      *(v0 + 64) = v60;

      v63 = v60;
      sub_1009D4C58(v0 + 16, v62, v61);
    }

    else
    {
      if (!v33)
      {
        v34 = *(v0 + 288);
        v35 = *(v0 + 296);
        v36 = swift_allocObject();
        *(v0 + 744) = v36;
        *(v36 + 16) = v34;
        *(v36 + 24) = v35;
        v37 = async function pointer to unsafeBlocking<A>(_:)[1];

        v38 = v35;
        v39 = swift_task_alloc();
        *(v0 + 752) = v39;
        *v39 = v0;
        v39[1] = sub_1009D3474;
        v40 = *(v0 + 352);
        v41 = *(v0 + 328);
        v42 = sub_100A1ACD8;
LABEL_19:

        return unsafeBlocking<A>(_:)(v40, v42, v36, v41);
      }

      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_1000076D4(v64, qword_10177B780);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = *(v0 + 304);
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v98 = v69;
        *v68 = 136315138;
        *(v0 + 256) = v67;
        type metadata accessor for SPSeparationEventType(0);
        v70 = String.init<A>(describing:)();
        v72 = sub_1000136BC(v70, v71, &v98);

        *(v68 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v65, v66, "Received unknown eventType: %s", v68, 0xCu);
        sub_100007BAC(v69);
      }

      v73 = *(v0 + 576);
      v75 = *(v0 + 264);
      v74 = *(v0 + 272);
      type metadata accessor for SPSeparationMonitoringError(0);
      *(v0 + 248) = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v76 = *(v0 + 240);
      v75(v76, 1);
    }
  }

  else
  {
    v52 = *(v0 + 576);
    v54 = *(v0 + 264);
    v53 = *(v0 + 272);

    v54(0, 0);
  }

  v77 = *(v0 + 544);
  v78 = *(v0 + 536);
  v79 = *(v0 + 528);
  v81 = *(v0 + 496);
  v80 = *(v0 + 504);
  v83 = *(v0 + 480);
  v82 = *(v0 + 488);
  v84 = *(v0 + 464);
  v85 = *(v0 + 472);
  v86 = *(v0 + 432);
  v89 = *(v0 + 416);
  v90 = *(v0 + 392);
  v91 = *(v0 + 384);
  v92 = *(v0 + 376);
  v93 = *(v0 + 352);
  v95 = *(v0 + 344);
  v97 = *(v0 + 336);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_1009D3474()
{
  v1 = *(*v0 + 752);
  v2 = *(*v0 + 744);
  v4 = *v0;

  return _swift_task_switch(sub_1009D358C, 0, 0);
}

uint64_t sub_1009D358C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);
  v3 = *(*(v0 + 368) + 48);
  if (v3(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA10, &qword_1013CB000);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 392);
    sub_100A18C9C(v2, v5, type metadata accessor for SafeLocation);
    if (*(v5 + *(v1 + 48)) == 3)
    {
      v6 = 1;
    }

    else
    {
      sub_100A1B358(*(v0 + 392), *(v0 + 344), type metadata accessor for SafeLocation);
      v6 = 0;
    }

    v7 = *(v0 + 360);
    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    (*(*(v0 + 368) + 56))(v8, v6, 1, v7);
    sub_1000D2A70(v8, v9, &unk_1016AFA10, &qword_1013CB000);
    v10 = v3(v9, 1, v7);
    v11 = *(v0 + 392);
    if (v10 == 1)
    {
      sub_10000B3A8(*(v0 + 344), &unk_1016AFA10, &qword_1013CB000);
      sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
      v4 = 0;
    }

    else
    {
      v12 = *(v0 + 376);
      v13 = *(v0 + 384);
      v14 = *(v0 + 344);
      sub_100A18C9C(*(v0 + 336), v13, type metadata accessor for SafeLocation);
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100A1B358(v13, v12, type metadata accessor for SafeLocation);
      v4 = sub_1009C859C(v12);
      sub_100A1B3C0(v13, type metadata accessor for SafeLocation);
      sub_10000B3A8(v14, &unk_1016AFA10, &qword_1013CB000);
      sub_100A1B3C0(v11, type metadata accessor for SafeLocation);
    }

    v15 = v4;
  }

  v16 = *(v0 + 704);
  v17 = *(v0 + 576);
  v18 = *(v0 + 312);
  v19 = *(v0 + 320);
  v20 = *(v0 + 769);
  v21 = *(v0 + 288);
  v22 = *(v0 + 296);
  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  *(v0 + 72) = 0;
  *(v0 + 80) = v16;
  *(v0 + 88) = v20;
  *(v0 + 96) = v4;
  *(v0 + 104) = v18;
  *(v0 + 112) = v19;
  *(v0 + 120) = v22;

  v25 = v22;
  sub_1009D4C58(v0 + 72, v24, v23);

  v26 = *(v0 + 544);
  v27 = *(v0 + 536);
  v28 = *(v0 + 528);
  v30 = *(v0 + 496);
  v29 = *(v0 + 504);
  v32 = *(v0 + 480);
  v31 = *(v0 + 488);
  v33 = *(v0 + 464);
  v34 = *(v0 + 472);
  v35 = *(v0 + 432);
  v38 = *(v0 + 416);
  v39 = *(v0 + 392);
  v40 = *(v0 + 384);
  v41 = *(v0 + 376);
  v42 = *(v0 + 352);
  v43 = *(v0 + 344);
  v44 = *(v0 + 336);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1009D3944()
{
  v1 = v0[84];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v7 = v0[62];
  v6 = v0[63];
  v9 = v0[60];
  v8 = v0[61];
  v10 = v0[59];
  v14 = v0[58];
  v15 = v0[54];
  v16 = v0[52];
  v17 = v0[49];
  v18 = v0[48];
  v19 = v0[47];
  v20 = v0[44];
  v21 = v0[43];
  v22 = v0[42];

  sub_100A1B3C0(v7, type metadata accessor for OwnedBeaconRecord);

  v11 = v0[1];
  v12 = v0[87];

  return v11();
}

uint64_t sub_1009D3ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for OwnedBeaconRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_100A1B358(a3, v13, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 16))(v9, v24, v5);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = (v12 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  sub_100A18C9C(v13, &v21[v19], type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 32))(&v21[v20], v9, v5);

  sub_10025EDD4(0, 0, v17, &unk_1013D0B10, v21);
}

uint64_t sub_1009D3D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1009D3EB4, 0, 0);
}

uint64_t sub_1009D3EB4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  sub_100A1B358(v0[4], v1, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 16))(v3, v7, v8);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[13] = v12;
  *(v12 + 16) = v9;
  sub_100A18C9C(v1, v12 + v10, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 32))(v12 + v11, v3, v8);
  v13 = async function pointer to unsafeBlocking<A>(_:)[1];

  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_1009D4068;
  v15 = v0[2];

  return unsafeBlocking<A>(_:)(v15, sub_100A1AE54, v12, &type metadata for () + 8);
}

uint64_t sub_1009D4068()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 72);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1009D41B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v64 = a2;
  v63 = type metadata accessor for OwnedBeaconRecord();
  v57 = *(v63 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v63);
  v59 = v5;
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  v56 = *(a1 + 280);
  v19 = *(v14 + 16);
  v19(&v53 - v17, v62, v13);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19(v58, v18, v13);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v60 = v14;
  v22 = *(v14 + 32);
  v55 = v21;
  v62 = v13;
  v22(v21 + v20, v18, v13);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  v53 = xmmword_101385D80;
  *(v23 + 16) = xmmword_101385D80;
  v24 = *(v63 + 20);
  v25 = type metadata accessor for UUID();
  sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
  v63 = v24;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v26;
  *(v23 + 40) = v28;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  v29 = v54;
  (*(v7 + 104))(v54, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v6);
  sub_100003F64(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v30 = *(v7 + 8);
  v30(v29, v6);
  v30(v12, v6);
  v31 = v62;
  v32 = v58;
  if (v66 == v65)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    sub_100139CA0();
    v33 = swift_allocError();
    *v34 = 0;
    v66 = v33;
    swift_errorRetain();
    CheckedContinuation.resume(throwing:)();
    CheckedContinuation.resume(returning:)();
  }

  v35 = dispatch_group_create();
  dispatch_group_enter(v35);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v36 = *(v25 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v53;
  v40 = v64;
  (*(v36 + 16))(v39 + v38, v64 + v63, v25);
  v41 = swift_allocObject();
  *(v41 + 16) = v35;
  v42 = v35;
  v43 = v56;
  sub_1009C99E8(v39, sub_10040616C, v41, &unk_101641E30, sub_100A18748, &unk_101641E48);

  OS_dispatch_group.wait()();
  v44 = v61;
  sub_100A1B358(v40, v61, type metadata accessor for OwnedBeaconRecord);
  v45 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v46 = (v59 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_100A18C9C(v44, v48 + v45, type metadata accessor for OwnedBeaconRecord);
  v49 = (v48 + v46);
  v50 = v55;
  *v49 = sub_100A1AF38;
  v49[1] = v50;
  v51 = v48 + v47;
  *v51 = v43;
  *(v51 + 8) = 257;

  sub_100AAA40C(v40, sub_10040AE98, v48);

  return (*(v60 + 8))(v32, v31);
}

uint64_t sub_1009D4908(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    CheckedContinuation.resume(throwing:)();
  }

  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1009D4978@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17[-v10];
  v12 = *(a1 + 280);
  v13 = a3 + *(type metadata accessor for OwnedBeaconRecord() + 20);
  v14 = sub_1009E4988(a2);
  v18 = v13;
  sub_1012BC8D8(sub_100A1B250, v14, v11);

  v15 = type metadata accessor for SafeLocation();
  LOBYTE(v12) = (*(*(v15 - 8) + 48))(v11, 1, v15) != 1;
  result = sub_10000B3A8(v11, &unk_1016AFA10, &qword_1013CB000);
  *a4 = v12;
  return result;
}

uint64_t sub_1009D4AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 280);
  v10 = *(v9 + 104);
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    v13 = *(v9 + 104);
    __chkstk_darwin(result);
    *&v14[-32] = v9;
    *&v14[-24] = a2;
    *&v14[-16] = 0;
    *&v14[-8] = 0;
    sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
    return OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009D4C58(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v7 = sub_1000BC4D4(&qword_1016B1788, &qword_1013D0B18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v38 - v10;
  v45 = sub_1000BC4D4(&qword_1016B1790, &qword_1013D0B20);
  v43 = *(v45 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v45);
  v41 = v38 - v13;
  v14 = sub_1000BC4D4(&qword_1016B1798, &qword_1013D0B28);
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  __chkstk_darwin(v14);
  v42 = v38 - v16;
  if (qword_101694EE0 != -1)
  {
    swift_once();
  }

  v17 = qword_10177C138;
  v18 = *(v4 + 280);
  type metadata accessor for SeparationAlertCoalescer();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;

  v47 = a1;
  v48 = v19;
  v20 = sub_101260E5C(a1);
  v21 = *(v20 + 16);
  if (v21)
  {
    v39 = v14;
    v40 = a3;
    v53 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v38[1] = v20;
    v22 = v20 + 32;
    v49 = v4;
    v50 = (v8 + 8);
    v23 = v47;
    v24 = v48;
    do
    {
      sub_10001F280(v22, v52);
      sub_10001F280(v52, v51);
      v25 = swift_allocObject();
      *(v25 + 16) = v49;
      v26 = *(v23 + 16);
      *(v25 + 24) = *v23;
      *(v25 + 40) = v26;
      *(v25 + 56) = *(v23 + 32);
      *(v25 + 72) = *(v23 + 48);
      *(v25 + 80) = v24;
      sub_10000A748(v51, v25 + 88);
      sub_100A1B098(v23, v51);

      sub_1000BC4D4(&qword_1016B17A0, &qword_1013D0B30);
      sub_1000041A4(&qword_1016B17A8, &qword_1016B17A0, &qword_1013D0B30);
      Deferred.init(createPublisher:)();
      sub_1000041A4(&qword_1016B17B0, &qword_1016B1788, &qword_1013D0B18);
      Publisher.eraseToAnyPublisher()();
      (*v50)(v11, v7);
      sub_100007BAC(v52);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = v53[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v22 += 40;
      --v21;
    }

    while (v21);

    v28 = v53;
    a3 = v40;
    v14 = v39;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  *&v51[0] = v28;
  sub_1000BC4D4(&qword_1016B17B8, &qword_1013D0B38);
  sub_1000BC4D4(&qword_1016B17C0, &qword_1013D0B40);
  sub_1000041A4(&qword_1016B17C8, &qword_1016B17B8, &qword_1013D0B38);
  sub_1000041A4(&qword_1016B17D0, &qword_1016B17C0, &qword_1013D0B40);
  v29 = v41;
  Publishers.MergeMany.init<A>(_:)();
  sub_1000041A4(&qword_1016B17D8, &qword_1016B1790, &qword_1013D0B20);
  v30 = v42;
  v31 = v45;
  Publisher.collect()();
  (*(v43 + 8))(v29, v31);
  sub_1000041A4(&qword_1016B17E0, &qword_1016B1798, &qword_1013D0B28);
  v32 = Publisher.eraseToAnyPublisher()();
  (*(v44 + 8))(v30, v14);
  v52[0] = v32;
  v33 = swift_allocObject();
  v34 = v47;
  v35 = v47[1];
  *(v33 + 16) = *v47;
  *(v33 + 32) = v35;
  *(v33 + 48) = *(v34 + 32);
  v36 = v46;
  *(v33 + 64) = *(v34 + 48);
  *(v33 + 72) = v36;
  *(v33 + 80) = a3;
  sub_100A1B098(v34, v51);

  sub_1000BC4D4(&qword_1016B17E8, &qword_1013D0B48);
  sub_1000041A4(&qword_1016B17F0, &qword_1016B17E8, &qword_1013D0B48);
  Publisher.oneshot(_:)();
}

uint64_t sub_1009D5310(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v83 - v6;
  v8 = type metadata accessor for UUID();
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = *(v97 + 64);
  __chkstk_darwin(v8);
  v100 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    v12 = sub_1000076D4(v11, qword_10177B780);

    v89 = v12;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v104[0] = v16;
      *v15 = 136315138;
      sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
      v17 = Set.description.getter();
      v19 = sub_1000136BC(v17, v18, v104);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Will publish unification event for beacons: %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    if (qword_101694EE0 != -1)
    {
      swift_once();
    }

    v20 = qword_10177C138;
    v21 = v2[35];
    type metadata accessor for SeparationAlertCoalescer();
    inited = swift_initStackObject();
    *(inited + 16) = v21;
    *(inited + 24) = v20;
    v86 = inited;

    sub_100E1F694(&off_101609F60);
    v91 = v23;
    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        break;
      }

      goto LABEL_8;
    }

    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (!v24)
    {
      break;
    }

LABEL_8:
    v25 = 0;
    v94 = v91 & 0xC000000000000001;
    v88 = v91 & 0xFFFFFFFFFFFFFF8;
    v93 = SPSeparationAlertUserInfoBeaconIdentifiersKey;
    v87 = v91 + 32;
    v26 = (v97 + 48);
    v99 = (v97 + 32);
    v85 = "followingPlaySound&id=";
    *(&v27 + 1) = 2;
    v84 = xmmword_101385D80;
    *&v27 = 136315138;
    v83 = v27;
    v90 = a1;
    v92 = v24;
    while (1)
    {
      if (v94)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v88 + 16))
        {
          goto LABEL_57;
        }

        v28 = *(v87 + 8 * v25);
      }

      v29 = v28;
      v30 = __OFADD__(v25, 1);
      v31 = v25 + 1;
      a1 = v98;
      if (v30)
      {
        break;
      }

      v95 = v31;
      v32 = [v28 request];
      v33 = [v32 content];

      v34 = [v33 userInfo];
      v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v102 + 1) = v36;
      AnyHashable.init<A>(_:)();
      if (!*(v35 + 16) || (v37 = sub_100771E5C(v104), (v38 & 1) == 0))
      {

        sub_100476E48(v104);
LABEL_21:
        v39 = _swiftEmptyArrayStorage;
        goto LABEL_22;
      }

      sub_100013894(*(v35 + 56) + 32 * v37, &v102);
      sub_100476E48(v104);

      sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_21;
      }

      v39 = v101;
LABEL_22:
      v96 = v29;
      v40 = v39[2];
      if (v40)
      {
        v2 = 0;
        v41 = v39 + 5;
        v42 = _swiftEmptyArrayStorage;
        while (v2 < v39[2])
        {
          v43 = *(v41 - 1);
          v44 = *v41;

          UUID.init(uuidString:)();

          if ((*v26)(v7, 1, a1) == 1)
          {
            sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
          }

          else
          {
            v45 = *v99;
            (*v99)(v100, v7, a1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_100A5BFE0(0, v42[2] + 1, 1, v42);
            }

            v47 = v42[2];
            v46 = v42[3];
            if (v47 >= v46 >> 1)
            {
              v42 = sub_100A5BFE0(v46 > 1, v47 + 1, 1, v42);
            }

            v42[2] = v47 + 1;
            v48 = v42 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v47;
            a1 = v98;
            v45(v48, v100, v98);
          }

          v2 = (v2 + 1);
          v41 += 2;
          if (v40 == v2)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        break;
      }

      v42 = _swiftEmptyArrayStorage;
LABEL_34:

      v49 = sub_10000954C(v42);

      v50 = v49[2];
      if (v50)
      {
        v51 = v90;
        v2 = v96;
        if (v90[2].isa <= (v50 >> 3))
        {
          v104[0] = v49;

          sub_10087D5B4(v51);
          v52 = v104[0];
        }

        else
        {

          v52 = sub_100610BC8(v51, v49);
        }

        v53 = sub_100A0405C(v51, v49, sub_100A046E0, sub_100A046E0);
        v54 = [v2 request];
        v55 = [v54 identifier];

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        a1 = v52[2];

        if (!a1)
        {

          v67 = objc_allocWithZone(UNUserNotificationCenter);
          v68 = String._bridgeToObjectiveC()();
          v69 = [v67 initWithBundleIdentifier:v68];

          sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
          v70 = swift_allocObject();
          *(v70 + 16) = v84;
          *(v70 + 32) = v56;
          *(v70 + 40) = v58;

          isa = Array._bridgeToObjectiveC()().super.isa;

          [v69 removeDeliveredNotificationsWithIdentifiers:isa];

          a1 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(a1, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v104[0] = v74;
            *v73 = v83;
            v75 = sub_1000136BC(v56, v58, v104);

            *(v73 + 4) = v75;
            _os_log_impl(&_mh_execute_header, a1, v72, "Did remove a left behind notification with identifier: %s", v73, 0xCu);
            sub_100007BAC(v74);
          }

          else
          {
          }

          goto LABEL_48;
        }

        v59 = v53[2];

        if (!v59)
        {

LABEL_48:

          goto LABEL_10;
        }

        sub_101263AF0(v2, v51, &v102);
        if (!v103)
        {

          sub_10000B3A8(&v102, &qword_1016B1548, &qword_1013D0A70);
          v76 = Logger.logObject.getter();
          v77 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            *v78 = 0;
            _os_log_impl(&_mh_execute_header, v76, v77, "Failed to create an updatedNotification", v78, 2u);
          }

          goto LABEL_10;
        }

        sub_10000A748(&v102, v104);
        v60 = v105;
        v61 = v106;
        v62 = sub_1000035D0(v104, v105);
        sub_100E1FB1C(v56, v58, v62, v60, *(v61 + 8));

        a1 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(a1, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v102 = v65;
          *v64 = v83;
          v66 = sub_1000136BC(v56, v58, &v102);

          *(v64 + 4) = v66;
          _os_log_impl(&_mh_execute_header, a1, v63, "Did replace a left behind notification with identifier: %s", v64, 0xCu);
          sub_100007BAC(v65);
        }

        else
        {
        }

        v25 = v95;
        sub_100007BAC(v104);
        if (v25 == v92)
        {
          goto LABEL_54;
        }
      }

      else
      {

LABEL_10:
        v25 = v95;
        if (v95 == v92)
        {
          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

LABEL_54:

  v79 = v86;
  swift_setDeallocating();
  v80 = *(v79 + 16);

  v81 = *(v79 + 24);
}

uint64_t sub_1009D5ED4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a3, v15);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *(a1 + 16);
  *(v9 + 24) = *a1;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a1 + 32);
  *(v9 + 72) = *(a1 + 48);
  *(v9 + 80) = a2;
  sub_10000A748(v15, v9 + 88);
  v11 = sub_1000BC4D4(&qword_1016B17A0, &qword_1013D0B30);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_100A1B098(a1, v15);

  result = Future.init(_:)();
  *a4 = result;
  return result;
}

uint64_t sub_1009D5FEC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 256);
    v19 = swift_allocObject();
    v25 = v11;
    v20 = a5;
    v21 = v19;
    swift_weakInit();
    sub_10001F280(a6, v28);
    v22 = swift_allocObject();
    v23 = *(a4 + 16);
    *(v22 + 40) = *a4;
    *(v22 + 16) = v21;
    *(v22 + 24) = sub_100A1B1D0;
    *(v22 + 32) = v16;
    *(v22 + 56) = v23;
    *(v22 + 72) = *(a4 + 32);
    *(v22 + 88) = *(a4 + 48);
    *(v22 + 96) = v20;
    sub_10000A748(v28, v22 + 104);

    sub_100A1B098(a4, &v26);

    UUID.init()();
    Sequencer.perform(identifier:_:enqueueCompletion:)();

    (*(v12 + 8))(v15, v25);
  }

  else
  {

    v26 = 0;
    v27 = 1;
    return a1(&v26);
  }
}

uint64_t sub_1009D624C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v49 = a4;
    v51 = a5;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B780);
    sub_100A1B098(a6, &v59);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_100A1B100(a6);
    v50 = a1;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v58[0] = v18;
      *v17 = 136315138;
      v19 = *(a6 + 16);
      v59 = *a6;
      v60 = v19;
      v61 = *(a6 + 32);
      v62 = *(a6 + 48);
      sub_100A1B098(a6, v52);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000136BC(v20, v21, v58);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Attempting to coallesce notification with context: %s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    sub_101262354(&v59, v52, a8);
    sub_1000D2A70(v52, &v56, &qword_1016B17F8, &qword_1013D0B50);
    if (v57)
    {
      sub_10000A748(&v56, v58);
      sub_10001F280(v58, &v56);
      sub_10001F280(&v59, v55);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v25 = 136315394;
        sub_10001F280(&v56, v53);
        sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
        v26 = String.init<A>(describing:)();
        v28 = v27;
        sub_100007BAC(&v56);
        v29 = sub_1000136BC(v26, v28, &v54);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        sub_10001F280(v55, v53);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        sub_100007BAC(v55);
        v33 = sub_1000136BC(v30, v32, &v54);

        *(v25 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "Replacing notification %s with %s", v25, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100007BAC(v55);
        sub_100007BAC(&v56);
      }

      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10001F280(v58, &v56);
      sub_10001F280(&v59, v55);
      v44 = swift_allocObject();
      sub_10000A748(&v56, (v44 + 2));
      sub_10000A748(v55, (v44 + 7));
      v44[12] = v49;
      v44[13] = v51;
      v44[14] = v50;
      v44[15] = a2;

      sub_100E2033C(v58, &v59, sub_100A1B200, v44);

      sub_100007BAC(v58);
    }

    else
    {
      sub_10000B3A8(&v56, &qword_1016B17F8, &qword_1013D0B50);
      sub_10001F280(&v59, v58);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v55[0] = v39;
        *v38 = 136315138;
        sub_10001F280(v58, &v56);
        sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
        v40 = String.init<A>(describing:)();
        v42 = v41;
        sub_100007BAC(v58);
        v43 = sub_1000136BC(v40, v42, v55);

        *(v38 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Posting notification %s", v38, 0xCu);
        sub_100007BAC(v39);
      }

      else
      {

        sub_100007BAC(v58);
      }

      if (qword_101694EE0 != -1)
      {
        swift_once();
      }

      sub_10001F280(&v59, v58);
      v45 = swift_allocObject();
      sub_10000A748(v58, (v45 + 2));
      v45[7] = v49;
      v45[8] = v51;
      v45[9] = v50;
      v45[10] = a2;
      v46 = *(&v60 + 1);
      v47 = v61;
      v48 = sub_1000035D0(&v59, *(&v60 + 1));

      sub_100E1EF8C(v48, sub_100A1B1EC, v45, v46, v47);
    }

    sub_10000B3A8(v52, &qword_1016B17F8, &qword_1013D0B50);
    return sub_100007BAC(&v59);
  }

  else
  {
    v34 = a4(0, 1);
    return a1(v34);
  }
}

uint64_t sub_1009D6934(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t (*a7)(void))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B780);
  sub_10001F280(a3, v36);
  sub_10001F280(a4, v35);
  sub_100A1B218(a1, a2 & 1);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  sub_100A1B234(a1, a2 & 1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136315650;
    sub_10001F280(v36, &v32);
    sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
    v31 = a7;
    v17 = String.init<A>(describing:)();
    v30 = a5;
    v19 = v18;
    sub_100007BAC(v36);
    v20 = sub_1000136BC(v17, v19, &v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_10001F280(v35, &v32);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_100007BAC(v35);
    v24 = sub_1000136BC(v21, v23, &v34);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    a5 = v30;
    v32 = a1;
    v33 = a2 & 1;
    sub_100A1B218(a1, a2 & 1);
    sub_1000BC4D4(&qword_1016B1808, &qword_1013D0B58);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000136BC(v25, v26, &v34);

    *(v16 + 24) = v27;
    a7 = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "Completed replacing old separation notification: %s with %s - result: %s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v35);
    sub_100007BAC(v36);
  }

  v28 = a5(a1, a2 & 1);
  return a7(v28);
}

uint64_t sub_1009D6C30(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177B780);
  sub_10001F280(a3, v30);
  v12 = a2 & 1;
  sub_100A1B218(a1, a2 & 1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_100A1B234(a1, a2 & 1);
  if (os_log_type_enabled(v13, v14))
  {
    v25 = a2;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v15 = 136315394;
    sub_10001F280(v30, &v27);
    sub_1000BC4D4(&qword_1016B1800, &unk_1013EA8F0);
    v26 = a6;
    v16 = String.init<A>(describing:)();
    v18 = v17;
    sub_100007BAC(v30);
    v19 = sub_1000136BC(v16, v18, &v29);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v27 = a1;
    v28 = v12;
    sub_100A1B218(a1, v12);
    sub_1000BC4D4(&qword_1016B1808, &qword_1013D0B58);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000136BC(v20, v21, &v29);

    *(v15 + 14) = v22;
    a6 = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "Completed posting new separation notification: %s - result: %s", v15, 0x16u);
    swift_arrayDestroy();

    a2 = v25;
  }

  else
  {

    sub_100007BAC(v30);
  }

  v23 = a4(a1, a2 & 1);
  return a6(v23);
}

void sub_1009D6EB8(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  if (*(a1 + 8))
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B780);
    sub_100A1B098(a2, &v26);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_100A1B100(a2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      v10 = *(a2 + 16);
      v26 = *a2;
      v27 = v10;
      v28 = *(a2 + 32);
      v29 = *(a2 + 48);
      sub_100A1B098(a2, v24);
      v11 = String.init<A>(describing:)();
      v13 = sub_1000136BC(v11, v12, &v25);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to post separation notifications for context: %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v24[0] = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v26;
    a3(v26, 1);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177B780);
    sub_100A1B098(a2, &v26);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    sub_100A1B100(a2);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      v20 = *(a2 + 16);
      v26 = *a2;
      v27 = v20;
      v28 = *(a2 + 32);
      v29 = *(a2 + 48);
      sub_100A1B098(a2, v24);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, &v25);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfuly posted separation notifications for context: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    a3(0, 0);
  }
}

void sub_1009D7238(unint64_t a1, uint64_t a2, void (*a3)(id, unint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v22 = a1;
    v5 = a5;
    v23 = _CocoaArrayWrapper.endIndex.getter();
    a5 = v5;
    v24 = v23;
    a1 = v22;
    if (!v24)
    {
      goto LABEL_15;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    a3(v26, 0, 1);

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = a5;
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = a5;
    v10 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v11 = [v10 name];
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v12 = v11;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v13;

  if (qword_101694B70 != -1)
  {
LABEL_20:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B780);
  v15 = v6;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *v19 = v15;
    *(v18 + 12) = 2080;
    v21 = v15;
    *(v18 + 14) = sub_1000136BC(v25, v5, &v26);
    _os_log_impl(&_mh_execute_header, v16, v17, "Received reverse geocoded address for location: %@: %s", v18, 0x16u);
    sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v20);

    v7 = v25;
  }

  a3(v7, v5, 0);
  swift_unknownObjectRelease();
}

uint64_t sub_1009D758C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000BC4D4(&qword_1016B1748, &qword_1013D0AE0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_1009D762C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StableIdentifier();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = [result getActivePairedDevice];

    if (v9)
    {
      if ([v9 valueForProperty:NRDevicePropertyUDID])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20[0] = v18;
      v20[1] = v19;
      if (*(&v19 + 1))
      {
        if (swift_dynamicCast())
        {
          v10 = v17;
          v11 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v11 = v16 & 0xFFFFFFFFFFFFLL;
          }

          if (v11)
          {
            *v6 = v16;
            v6[1] = v10;
            swift_storeEnumTagMultiPayload();
            v12 = *(v1 + 280);
            v13 = sub_100025044();
            __chkstk_darwin(v13);
            *&v15[-16] = v6;
            sub_1012BBBD0(sub_10040A578, v13, a1);

            return sub_100A1B3C0(v6, type metadata accessor for StableIdentifier);
          }
        }

        else
        {
        }
      }

      else
      {

        sub_10000B3A8(v20, &unk_1016A0B10, &qword_10139BF40);
      }
    }

    v14 = type metadata accessor for OwnedBeaconRecord();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009D78A4()
{
  v1 = *(*v0 + 216);
  if (!v1)
  {
    return 6;
  }

  v2 = *(v1 + 88);

  CurrentValueSubject.value.getter();

  return v4;
}

uint64_t sub_1009D78FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v174 = a4;
  v173 = a3;
  v180 = a2;
  v5 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v150 = *(v5 - 8);
  v6 = *(v150 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v152 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v8;
  __chkstk_darwin(v7);
  v159 = &v146 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v175 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v176 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for DispatchPredicate();
  v161 = *(v162 - 8);
  v23 = *(v161 + 64);
  __chkstk_darwin(v162);
  v160 = (&v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v25 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v158 = &v146 - v26;
  v27 = type metadata accessor for UUID();
  v182 = *(v27 - 8);
  v28 = *(v182 + 8);
  v29 = __chkstk_darwin(v27);
  v164 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v146 = &v146 - v32;
  __chkstk_darwin(v31);
  v181 = &v146 - v33;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v168 = v22;
  v169 = v19;
  v170 = v18;
  v34 = type metadata accessor for Logger();
  v35 = sub_1000076D4(v34, qword_10177B780);

  v165 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v39 = a1;
  v177 = v14;
  v172 = v15;
  v171 = v10;
  v178 = v11;
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&aBlock = v41;
    *v40 = 136315138;
    v42 = Array.description.getter();
    v44 = sub_1000136BC(v42, v43, &aBlock);

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "Enabling separation monitoring for beacons: %s", v40, 0xCu);
    sub_100007BAC(v41);
  }

  v45 = v180;
  v163 = *(v39 + 16);
  if (v163)
  {
    v46 = 0;
    v47 = *(v182 + 2);
    v156 = 0x8000000101348120;
    v155 = 0x80000001013480F0;
    v154 = 0x8000000101348010;
    v153 = 0x8000000101347FF0;
    v167 = (v182 + 8);
    v48 = v39 + ((v182[80] + 32) & ~v182[80]);
    v182 += 16;
    v49 = *(v182 + 7);
    v149 = v39;
    v166 = v47;
    v179 = v27;
    v148 = v48;
    v147 = v49;
    while (1)
    {
      v50 = v181;
      v47(v181, (v48 + v49 * v46), v27);
      sub_100025020(v50, &aBlock);
      if (!v186)
      {
        break;
      }

      sub_10000A748(&aBlock, &v189);
      v51 = v190;
      v52 = v191;
      v53 = sub_1000035D0(&v189, v190);
      v54 = sub_1009C5A54(v53, v45, v51, v52);
      v55 = v54;
      if (!v54[2] || (v56 = v54[5], Hasher.init(_seed:)(), String.hash(into:)(), v57 = Hasher._finalize()(), v58 = -1 << *(v55 + 32), v59 = v57 & ~v58, ((*(v55 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v59) & 1) == 0))
      {
LABEL_24:

        v84 = v164;
        v85 = v179;
        v166(v164, v181, v179);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&aBlock = v89;
          *v88 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          v182 = *v167;
          (v182)(v84, v85);
          v93 = sub_1000136BC(v90, v92, &aBlock);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v86, v87, "Failed to enable separation monitoring for unsupported beacon: %s", v88, 0xCu);
          sub_100007BAC(v89);
        }

        else
        {

          v182 = *v167;
          (v182)(v84, v85);
        }

        v94 = v172;
        v95 = v171;
        v96 = v174;
        v97 = v173;
        v98 = v170;
        v99 = v169;
        v100 = v168;
        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        (*(v99 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v98);
        v101 = static OS_dispatch_queue.global(qos:)();
        (*(v99 + 8))(v100, v98);
        v102 = swift_allocObject();
        *(v102 + 16) = v97;
        *(v102 + 24) = v96;
        v187 = sub_100A18D60;
        v188 = v102;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v185 = sub_100006684;
        v186 = &unk_101642230;
        v103 = _Block_copy(&aBlock);

        v104 = v176;
        static DispatchQoS.unspecified.getter();
        v183 = _swiftEmptyArrayStorage;
        sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v105 = v175;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v103);

        (*(v178 + 8))(v105, v95);
        (*(v94 + 8))(v104, v177);
        (v182)(v181, v179);
        sub_100007BAC(&v189);
      }

      ++v46;
      v60 = ~v58;
      while (1)
      {
        switch(*(v55[6] + v59))
        {
          case 1:
            p_aBlock = &aBlock;
            goto LABEL_15;
          case 2:
            p_aBlock = (&aBlock + 8);
            goto LABEL_15;
          case 8:

            goto LABEL_20;
          case 0x13:
            p_aBlock = &v185;
LABEL_15:
            v62 = *(p_aBlock - 32);
            break;
          default:
            break;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
          break;
        }

        v59 = (v59 + 1) & v60;
        if (((*(v55 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v59) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_20:

      v27 = v179;
      (*v167)(v181, v179);
      sub_100007BAC(&v189);
      v45 = v180;
      v39 = v149;
      v47 = v166;
      v48 = v148;
      v49 = v147;
      if (v46 == v163)
      {
        goto LABEL_21;
      }
    }

    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v125 = v146;
    v47(v146, v181, v27);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&aBlock = v129;
      *v128 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v131;
      v182 = *v167;
      (v182)(v125, v27);
      v133 = sub_1000136BC(v130, v132, &aBlock);

      *(v128 + 4) = v133;
      _os_log_impl(&_mh_execute_header, v126, v127, "Failed to enable separation monitoring for unknown beacon: %s", v128, 0xCu);
      sub_100007BAC(v129);
    }

    else
    {

      v182 = *v167;
      (v182)(v125, v27);
    }

    v134 = v178;
    v135 = v174;
    v136 = v173;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v137 = v169;
    v138 = v168;
    v139 = v170;
    (*(v169 + 104))(v168, enum case for DispatchQoS.QoSClass.default(_:), v170);
    v140 = static OS_dispatch_queue.global(qos:)();
    (*(v137 + 8))(v138, v139);
    v141 = swift_allocObject();
    *(v141 + 16) = v136;
    *(v141 + 24) = v135;
    v187 = sub_100A1B70C;
    v188 = v141;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v185 = sub_100006684;
    v186 = &unk_1016421E0;
    v142 = _Block_copy(&aBlock);

    v143 = v176;
    static DispatchQoS.unspecified.getter();
    v189 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v144 = v175;
    v145 = v171;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v142);

    (*(v134 + 8))(v144, v145);
    (*(v172 + 8))(v143, v177);
    (v182)(v181, v179);
  }

LABEL_21:
  v64 = *(v45 + 104);
  v65 = v160;
  *v160 = v64;
  v66 = v161;
  v67 = v162;
  (*(v161 + 104))(v65, enum case for DispatchPredicate.notOnQueue(_:), v162);
  v68 = v64;
  v69 = _dispatchPreconditionTest(_:)();
  result = (*(v66 + 8))(v65, v67);
  if (v69)
  {
    v71 = v158;
    OS_dispatch_queue.sync<A>(execute:)();
    v72 = type metadata accessor for LeashRecord();
    v73 = (*(*(v72 - 8) + 48))(v71, 1, v72);
    sub_10000B3A8(v71, &qword_1016B1500, &unk_1013C57F0);
    if (v73 == 1)
    {
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v74 = v169;
      v75 = v168;
      v76 = v170;
      (*(v169 + 104))(v168, enum case for DispatchQoS.QoSClass.default(_:), v170);
      v77 = static OS_dispatch_queue.global(qos:)();
      (*(v74 + 8))(v75, v76);
      v78 = swift_allocObject();
      v79 = v174;
      *(v78 + 16) = v173;
      *(v78 + 24) = v79;
      v187 = sub_100A18D9C;
      v188 = v78;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v185 = sub_100006684;
      v186 = &unk_101642280;
      v80 = _Block_copy(&aBlock);

      v81 = v176;
      static DispatchQoS.unspecified.getter();
      v189 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v82 = v175;
      v83 = v171;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v80);

      (*(v178 + 8))(v82, v83);
      (*(v172 + 8))(v81, v177);
    }

    else
    {
      v106 = swift_allocObject();
      *(v106 + 16) = v39;

      v107 = v45;
      v108 = v159;
      sub_1009D954C(sub_100A18DA4, v107, sub_100A18DA8, v106, &qword_1016A78E0, &qword_1013B6888, sub_100A187B4, v159);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v109 = v169;
      v110 = v168;
      v111 = v170;
      (*(v169 + 104))(v168, enum case for DispatchQoS.QoSClass.default(_:), v170);
      v182 = static OS_dispatch_queue.global(qos:)();
      (*(v109 + 8))(v110, v111);
      v112 = v108;
      v113 = v152;
      sub_1000D2A70(v112, v152, &qword_1016A78E0, &qword_1013B6888);
      v114 = (*(v150 + 80) + 16) & ~*(v150 + 80);
      v115 = (v151 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
      v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF8;
      v117 = swift_allocObject();
      sub_1000D2AD8(v113, v117 + v114, &qword_1016A78E0, &qword_1013B6888);
      *(v117 + v115) = v39;
      v118 = (v117 + v116);
      v119 = v174;
      *v118 = v173;
      v118[1] = v119;
      *(v117 + ((v116 + 23) & 0xFFFFFFFFFFFFFFF8)) = v107;
      v187 = sub_100A18F1C;
      v188 = v117;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v185 = sub_100006684;
      v186 = &unk_1016422F8;
      v120 = _Block_copy(&aBlock);

      v121 = v176;
      static DispatchQoS.unspecified.getter();
      v189 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v122 = v175;
      v123 = v171;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v124 = v182;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v120);

      (*(v178 + 8))(v122, v123);
      (*(v172 + 8))(v121, v177);
      sub_10000B3A8(v159, &qword_1016A78E0, &qword_1013B6888);
    }
  }

  __break(1u);
  return result;
}

void sub_1009D92A4(void (*a1)(void *, uint64_t))
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to enable separation monitoring due to missing leash record.", v5, 2u);
  }

  type metadata accessor for SPSeparationMonitoringError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(v6, 1);
}

uint64_t sub_1009D9420(uint64_t a1)
{
  v2 = *(type metadata accessor for LeashRecord() + 24);
  v10 = *(a1 + v2);

  sub_100398278(v3);
  v4 = sub_10000954C(v10);

  v5 = *(v4 + 16);
  if (!v5)
  {

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v6 = sub_1003A85FC(*(v4 + 16), 0);
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = sub_1003A9D58(&v10, &v6[(*(v7 + 80) + 32) & ~*(v7 + 80)], v5, v4);
  result = sub_1000128F8();
  if (v8 == v5)
  {

LABEL_5:
    *(a1 + v2) = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1009D954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v53 = a6;
  v54 = a7;
  v51 = a4;
  v52 = a5;
  v48 = a2;
  v49 = a3;
  v47 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v46 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v45 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = v8;
  v22 = *(v8 + 104);
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.notOnQueue(_:), v17);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if (v24)
  {
    v45[1] = v23;
    v45[2] = a8;
    UUID.init()();
    v21 = v16;
    if (qword_101694B70 == -1)
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
  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177B780);
  v26 = v46;
  (*(v11 + 16))(v46, v21, v10);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v45[0] = v21;
    v30 = v29;
    v31 = swift_slowAlloc();
    v55 = v31;
    *v30 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v26;
    v35 = v34;
    v36 = *(v11 + 8);
    v36(v33, v10);
    v37 = sub_1000136BC(v32, v35, &v55);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "Queueing synced modify operation with identifier: %s", v30, 0xCu);
    sub_100007BAC(v31);

    v21 = v45[0];
  }

  else
  {

    v36 = *(v11 + 8);
    v38 = (v36)(v26, v10);
  }

  __chkstk_darwin(v38);
  v39 = v47;
  v40 = v48;
  v45[-6] = v21;
  v45[-5] = v39;
  v41 = v49;
  v42 = v50;
  v45[-4] = v40;
  v45[-3] = v42;
  v45[-2] = v41;
  v43 = v52;
  v45[-1] = v51;
  sub_1000BC4D4(v43, v53);
  OS_dispatch_queue.sync<A>(execute:)();
  return (v36)(v21, v10);
}

uint64_t sub_1009D9970(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v5 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v26 - v7);
  sub_1000D2A70(a1, &v26 - v7, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177B780);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to modify leash record due to: %{public}@", v13, 0xCu);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v26 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v27;
    a3(v27, 1);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177B780);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      type metadata accessor for UUID();
      v22 = Array.description.getter();
      v24 = sub_1000136BC(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Completed enabling separation monitoring for beacons: %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    a3(0, 0);
    sub_10000B3A8(v8, &qword_1016A78E0, &qword_1013B6888);
  }

  sub_100A83364(0);
  return sub_100A8306C(14);
}

uint64_t sub_1009D9D6C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v142 = a3;
  v143 = a4;
  v153 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v145 = *(v5 - 8);
  v6 = *(v145 + 64);
  __chkstk_darwin(v5);
  v8 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DispatchQoS();
  v9 = *(v148 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v148);
  v144 = v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v140 = *(v12 - 8);
  v141 = v12;
  v13 = *(v140 + 64);
  __chkstk_darwin(v12);
  v139 = v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v132 = *(v15 - 8);
  v16 = *(v132 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v18;
  __chkstk_darwin(v17);
  v21 = v129 - v20;
  v152 = type metadata accessor for UUID();
  v135 = *(v152 - 8);
  v22 = *(v135 + 64);
  v23 = __chkstk_darwin(v152);
  v131 = v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v130 = v129 - v26;
  __chkstk_darwin(v25);
  v137 = v129 - v27;
  v28 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = v129 - v30;
  v150 = type metadata accessor for LeashRecord();
  v138 = *(v150 - 8);
  v32 = *(v138 + 8);
  __chkstk_darwin(v150);
  v151 = v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_1000076D4(v34, qword_10177B780);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  v38 = os_log_type_enabled(v36, v37);
  v146 = v5;
  v147 = v9;
  v149 = a1;
  v136 = v21;
  v134 = v19;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock = v40;
    *v39 = 136315138;
    v41 = Array.description.getter();
    v43 = sub_1000136BC(v41, v42, &aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Disabling separation monitoring for beacons: %s", v39, 0xCu);
    sub_100007BAC(v40);
  }

  sub_100ABD310(v31);
  if ((*(v138 + 6))(v31, 1, v150) == 1)
  {
    sub_10000B3A8(v31, &qword_1016B1500, &unk_1013C57F0);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      v48 = Array.description.getter();
      v50 = sub_1000136BC(v48, v49, &aBlock);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to disable separation monitoring for beacons: %s due to missing leash record", v46, 0xCu);
      sub_100007BAC(v47);
    }

    v52 = v144;
    v51 = v145;
    v53 = v142;
    v54 = v143;
    v56 = v140;
    v55 = v141;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v57 = v139;
    (*(v56 + 104))(v139, enum case for DispatchQoS.QoSClass.default(_:), v55);
    v58 = static OS_dispatch_queue.global(qos:)();
    (*(v56 + 8))(v57, v55);
    v59 = swift_allocObject();
    *(v59 + 16) = v53;
    *(v59 + 24) = v54;
    v159 = sub_100A18754;
    v160 = v59;
    aBlock = _NSConcreteStackBlock;
    v156 = 1107296256;
    v157 = sub_100006684;
    v158 = &unk_101641E98;
    v60 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v154 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v61 = v146;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v60);

    (*(v51 + 8))(v8, v61);
    (*(v147 + 8))(v52, v148);
  }

  else
  {
    v129[1] = v35;
    v138 = v8;
    sub_100A18C9C(v31, v151, type metadata accessor for LeashRecord);
    v62 = *(v149 + 16);
    v63 = v152;
    v64 = v137;
    if (v62)
    {
      v65 = *(v135 + 16);
      v66 = (v135 + 8);
      v67 = v149 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v68 = *(v135 + 72);
      while (1)
      {
        v65(v64, v67, v63);
        sub_100025020(v64, &aBlock);
        v69 = v158;
        sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
        if (!v69)
        {
          break;
        }

        if (!sub_1005C8A30(v64, *(v151 + *(v150 + 24))))
        {
          v100 = v130;
          v90 = v152;
          v65(v130, v64, v152);
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            aBlock = v104;
            *v103 = 136315138;
            sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
            v105 = dispatch thunk of CustomStringConvertible.description.getter();
            v106 = v100;
            v108 = v107;
            v153 = *v66;
            v153(v106, v90);
            v109 = sub_1000136BC(v105, v108, &aBlock);

            *(v103 + 4) = v109;
            _os_log_impl(&_mh_execute_header, v101, v102, "Failed to disable separation monitoring for unleashed beacon: %s", v103, 0xCu);
            sub_100007BAC(v104);
          }

          else
          {

            v153 = *v66;
            v153(v100, v90);
          }

          v119 = v142;
          v118 = v143;
          v121 = v140;
          v120 = v141;
          v122 = v139;
          sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
          (*(v121 + 104))(v122, enum case for DispatchQoS.QoSClass.default(_:), v120);
          v115 = static OS_dispatch_queue.global(qos:)();
          (*(v121 + 8))(v122, v120);
          v123 = swift_allocObject();
          *(v123 + 16) = v119;
          *(v123 + 24) = v118;
          v159 = sub_100A18774;
          v160 = v123;
          aBlock = _NSConcreteStackBlock;
          v156 = 1107296256;
          v117 = &unk_101641F38;
          goto LABEL_23;
        }

        v63 = v152;
        (*v66)(v64, v152);
        v67 += v68;
        if (!--v62)
        {
          goto LABEL_14;
        }
      }

      v89 = v131;
      v90 = v152;
      v65(v131, v64, v152);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock = v94;
        *v93 = 136315138;
        sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v89;
        v98 = v97;
        v153 = *v66;
        v153(v96, v90);
        v99 = sub_1000136BC(v95, v98, &aBlock);

        *(v93 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v91, v92, "Failed to disable separation monitoring for unknown beacon: %s", v93, 0xCu);
        sub_100007BAC(v94);
      }

      else
      {

        v153 = *v66;
        v153(v89, v90);
      }

      v111 = v142;
      v110 = v143;
      v113 = v140;
      v112 = v141;
      v114 = v139;
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      (*(v113 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v112);
      v115 = static OS_dispatch_queue.global(qos:)();
      (*(v113 + 8))(v114, v112);
      v116 = swift_allocObject();
      *(v116 + 16) = v111;
      *(v116 + 24) = v110;
      v159 = sub_100A1B70C;
      v160 = v116;
      aBlock = _NSConcreteStackBlock;
      v156 = 1107296256;
      v117 = &unk_101641EE8;
LABEL_23:
      v157 = sub_100006684;
      v158 = v117;
      v124 = _Block_copy(&aBlock);

      v125 = v144;
      static DispatchQoS.unspecified.getter();
      v154 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v126 = v138;
      v127 = v146;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v124);

      (*(v145 + 8))(v126, v127);
      (*(v147 + 8))(v125, v148);
      v153(v137, v90);
    }

    else
    {
LABEL_14:
      v70 = swift_allocObject();
      v71 = v149;
      *(v70 + 16) = v149;

      v72 = v153;

      v73 = v136;
      sub_1009D954C(sub_100A1B79C, v72, sub_100A18794, v70, &qword_1016A78E0, &qword_1013B6888, sub_100A187B4, v136);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v75 = v140;
      v74 = v141;
      v76 = v139;
      (*(v140 + 104))(v139, enum case for DispatchQoS.QoSClass.default(_:), v141);
      v152 = static OS_dispatch_queue.global(qos:)();
      (*(v75 + 8))(v76, v74);
      v77 = v134;
      sub_1000D2A70(v73, v134, &qword_1016A78E0, &qword_1013B6888);
      v78 = (*(v132 + 80) + 16) & ~*(v132 + 80);
      v79 = (v133 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      sub_1000D2AD8(v77, v81 + v78, &qword_1016A78E0, &qword_1013B6888);
      *(v81 + v79) = v71;
      v82 = (v81 + v80);
      v83 = v143;
      *v82 = v142;
      v82[1] = v83;
      *(v81 + ((v80 + 23) & 0xFFFFFFFFFFFFFFF8)) = v72;
      v159 = sub_100A1879C;
      v160 = v81;
      aBlock = _NSConcreteStackBlock;
      v156 = 1107296256;
      v157 = sub_100006684;
      v158 = &unk_101641FB0;
      v84 = _Block_copy(&aBlock);

      v85 = v144;
      static DispatchQoS.unspecified.getter();
      v154 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v86 = v138;
      v87 = v146;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v88 = v152;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v84);

      (*(v145 + 8))(v86, v87);
      (*(v147 + 8))(v85, v148);
      sub_10000B3A8(v136, &qword_1016A78E0, &qword_1013B6888);
    }

    sub_100A1B3C0(v151, type metadata accessor for LeashRecord);
  }
}

unint64_t sub_1009DB0B8(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LeashRecord() + 24);

  v5 = sub_100A18384((a1 + v4), a2);

  v7 = *(*(a1 + v4) + 16);
  if (v7 >= v5)
  {
    return sub_100A07658(v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1009DB13C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v5 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_1000D2A70(a1, &v23 - v7, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000B3A8(v8, &qword_1016A78E0, &qword_1013B6888);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B780);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to disable separation monitoring due to leash record update failure.", v12, 2u);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v23 = 14;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = v24;
    a3(v24, 1);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B780);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      type metadata accessor for UUID();
      v19 = Array.description.getter();
      v21 = sub_1000136BC(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "Completed separation monitoring for beacons: %s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    a3(0, 0);
    sub_10000B3A8(v8, &qword_1016A78E0, &qword_1013B6888);
  }

  sub_100A83364(0);
  return sub_100A8306C(14);
}

void sub_1009DB4DC(char *a1, int a2, void **a3, unint64_t a4)
{
  v205 = a2;
  v201 = type metadata accessor for DispatchTime();
  v200 = *(v201 - 8);
  v7 = *(v200 + 64);
  v8 = __chkstk_darwin(v201);
  v198 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v199 = &v193 - v10;
  v216 = type metadata accessor for DispatchWorkItemFlags();
  v215 = *(v216 - 8);
  v11 = *(v215 + 64);
  __chkstk_darwin(v216);
  v212 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for DispatchQoS();
  v213 = *(v214 - 8);
  v13 = *(v213 + 64);
  __chkstk_darwin(v214);
  v211 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for DispatchQoS.QoSClass();
  v210 = *(v208 - 8);
  v15 = *(v210 + 64);
  __chkstk_darwin(v208);
  v209 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v197 = &v193 - v19;
  v196 = type metadata accessor for DirectorySequence();
  v195 = *(v196 - 8);
  v20 = *(v195 + 64);
  __chkstk_darwin(v196);
  v229 = (&v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v224 = type metadata accessor for URL();
  v207 = *(v224 - 1);
  v22 = *(v207 + 64);
  v23 = __chkstk_darwin(v224);
  v194 = &v193 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v206 = &v193 - v25;
  v26 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v218 = &v193 - v28;
  v227 = type metadata accessor for Date();
  v230 = *(v227 - 1);
  isa = v230[8].isa;
  __chkstk_darwin(v227);
  v226 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SafeLocation();
  v225 = *(v31 - 1);
  v32 = *(v225 + 64);
  v33 = __chkstk_darwin(v31);
  v35 = (&v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __chkstk_darwin(v33);
  v38 = &v193 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = (&v193 - v40);
  v202 = v42;
  __chkstk_darwin(v39);
  v44 = (&v193 - v43);
  if (qword_101694B70 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v45 = type metadata accessor for Logger();
    v46 = sub_1000076D4(v45, qword_10177B780);
    sub_100A1B358(a1, v44, type metadata accessor for SafeLocation);
    v204 = v46;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    v49 = os_log_type_enabled(v47, v48);
    v222 = v38;
    v228 = v31;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v223 = a1;
      v51 = v50;
      v52 = swift_slowAlloc();
      aBlock = v52;
      *v51 = 136315138;
      sub_100A1B358(v44, v41, type metadata accessor for SafeLocation);
      v53 = String.init<A>(describing:)();
      v203 = v41;
      v54 = v35;
      v55 = a3;
      v56 = v53;
      v57 = a4;
      v59 = v58;
      sub_100A1B3C0(v44, type metadata accessor for SafeLocation);
      v60 = sub_1000136BC(v56, v59, &aBlock);
      a4 = v57;

      *(v51 + 4) = v60;
      a3 = v55;
      v35 = v54;
      v41 = v203;
      _os_log_impl(&_mh_execute_header, v47, v48, "Adding safe location: %s", v51, 0xCu);
      sub_100007BAC(v52);
      v31 = v228;

      a1 = v223;
    }

    else
    {

      sub_100A1B3C0(v44, type metadata accessor for SafeLocation);
    }

    v61 = *&a1[v31[8]];
    v62 = *&a1[v31[9]];
    v63 = *&a1[v31[10]];
    v64 = v226;
    Date.init()();
    v65 = objc_allocWithZone(CLLocation);
    v66 = Date._bridgeToObjectiveC()().super.isa;
    v67 = [v65 initWithCoordinate:v66 altitude:v61 horizontalAccuracy:v62 verticalAccuracy:0.0 course:v63 courseAccuracy:v63 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

    v68 = v230[1].isa;
    ++v230;
    v221 = v68;
    v68(v64, v227);
    v220 = a1[v31[11]];
    [v67 setReferenceFrame:?];
    LOBYTE(v66) = sub_1010E1130();

    if (v66)
    {
      type metadata accessor for SPSeparationMonitoringError(0);
      v237 = 21;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v69 = aBlock;
      (a3)(aBlock, 1);

      return;
    }

    v219 = v31[5];
    v70 = v218;
    sub_100AC09B4();
    v71 = (*(v225 + 48))(v70, 1, v31);
    sub_10000B3A8(v70, &unk_1016AFA10, &qword_1013CB000);
    if (v71 != 1)
    {
      break;
    }

    v204 = a4;
    v193 = a3;
    v223 = a1;
    if (v205)
    {
      goto LABEL_29;
    }

    v203 = v41;
    v72 = *(v217 + 168);
    if (qword_101694F88 != -1)
    {
      swift_once();
    }

    v73 = v224;
    v74 = sub_1000076D4(v224, qword_10177C268);
    v75 = v207;
    (*(v207 + 16))(v206, v74, v73);
    aBlock = _swiftEmptyArrayStorage;
    v237 = _swiftEmptyArrayStorage;
    v76 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v77 = v197;
    DirectorySequence.next()();
    v78 = *(v75 + 48);
    v79 = v78(v77, 1, v73);
    v80 = v194;
    v218 = v72;
    if (v79 != 1)
    {
      v81 = *(v207 + 32);
      v82 = (v207 + 8);
      do
      {
        v83 = v224;
        v81(v80, v77, v224);
        v84 = objc_autoreleasePoolPush();
        sub_1006005CC(v80, v218, &aBlock, &v237);
        objc_autoreleasePoolPop(v84);
        (*v82)(v80, v83);
        DirectorySequence.next()();
      }

      while (v78(v77, 1, v83) != 1);
    }

    (*(v195 + 8))(v229, v196);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    a1 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 1) = xmmword_10138BBE0;
    a3 = aBlock;
    v85 = aBlock[2];
    v44[7] = &type metadata for Int;
    v44[8] = &protocol witness table for Int;
    v44[4] = v85;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);

    v86 = v206;
    v41 = v224;
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v88;
    v44[12] = &type metadata for String;
    v44[13] = sub_100008C00();
    v44[9] = v87;
    v44[10] = v89;
    os_log(_:dso:log:_:_:)();

    (*(v207 + 8))(v86, v41);

    v229 = a3;
    v38 = v222;
    v31 = v228;
    v224 = a3[2];
    if (!v224)
    {
LABEL_28:

      a1 = v223;
      v41 = v203;
LABEL_29:
      v163 = dispatch_group_create();
      dispatch_group_enter(v163);
      sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
      v164 = swift_allocBox();
      v166 = v165;
      v167 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
      (*(*(v167 - 8) + 56))(v166, 1, 1, v167);
      v229 = type metadata accessor for SafeLocation;
      sub_100A1B358(a1, v41, type metadata accessor for SafeLocation);
      v168 = *(v225 + 80);
      v169 = (v168 + 24) & ~v168;
      v228 = (v202 + 7);
      v170 = (v202 + 7 + v169) & 0xFFFFFFFFFFFFFFF8;
      v171 = v41;
      v172 = v217;
      v173 = v208;
      v174 = swift_allocObject();
      *(v174 + 16) = v172;
      v227 = type metadata accessor for SafeLocation;
      sub_100A18C9C(v171, v174 + v169, type metadata accessor for SafeLocation);
      v226 = v164;
      *(v174 + v170) = v164;
      *(v174 + ((v170 + 15) & 0xFFFFFFFFFFFFFFF8)) = v163;

      v230 = v163;
      sub_100ABC770(sub_100A19138, v174);

      v175 = v198;
      static DispatchTime.now()();
      v176 = v199;
      + infix(_:_:)();
      v177 = *(v200 + 8);
      v178 = v201;
      v177(v175, v201);
      LOBYTE(v170) = OS_dispatch_group.wait(timeout:)();
      v177(v176, v178);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v179 = v210;
      v180 = v209;
      (*(v210 + 104))(v209, enum case for DispatchQoS.QoSClass.default(_:), v173);
      v181 = static OS_dispatch_queue.global(qos:)();
      (*(v179 + 8))(v180, v173);
      v182 = v171;
      sub_100A1B358(v223, v171, v229);
      v183 = (v168 + 17) & ~v168;
      v184 = (v228 + v183) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v184 + 23) & 0xFFFFFFFFFFFFFFF8;
      v186 = swift_allocObject();
      *(v186 + 16) = v170 & 1;
      sub_100A18C9C(v182, v186 + v183, v227);
      v187 = (v186 + v184);
      v188 = v204;
      *v187 = v193;
      v187[1] = v188;
      *(v186 + v185) = v226;
      *(v186 + ((v185 + 15) & 0xFFFFFFFFFFFFFFF8)) = v172;
      v235 = sub_100A191E4;
      v236 = v186;
      aBlock = _NSConcreteStackBlock;
      v232 = 1107296256;
      v233 = sub_100006684;
      v234 = &unk_101642438;
      v189 = _Block_copy(&aBlock);

      v190 = v211;
      static DispatchQoS.unspecified.getter();
      v237 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v191 = v212;
      v192 = v216;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v189);

      (*(v215 + 8))(v191, v192);
      (*(v213 + 8))(v190, v214);

      goto LABEL_30;
    }

    a4 = 0;
    v90 = *(v225 + 80);
    v206 = ~v90;
    v207 = v90;
    v218 = v229 + ((v90 + 32) & ~v90);
    v35 = v230;
    while (a4 < *(v229 + 2))
    {
      sub_100A1B358(v218 + *(v225 + 72) * a4, v38, type metadata accessor for SafeLocation);
      v91 = *&v38[v31[8]];
      v92 = *&v38[v31[9]];
      v93 = *&v38[v31[10]];
      v94 = v226;
      Date.init()();
      v95 = objc_allocWithZone(CLLocation);
      v96 = Date._bridgeToObjectiveC()().super.isa;
      v97 = [v95 initWithCoordinate:v96 altitude:v91 horizontalAccuracy:v92 verticalAccuracy:0.0 course:v93 courseAccuracy:v93 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

      a3 = v227;
      v98 = v221;
      v221(v94, v227);
      [v97 setReferenceFrame:v38[v31[11]]];
      [v97 coordinate];
      v100 = v99;
      v102 = v101;

      v103 = &v38[v31[5]];
      UUID.uuidString.getter();
      v104 = objc_allocWithZone(CLCircularRegion);
      v105 = String._bridgeToObjectiveC()();

      v44 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      a1 = [v104 initWithCenter:v105 radius:v100 identifier:{v102, v93}];

      Date.init()();
      v106 = objc_allocWithZone(CLLocation);
      v107 = Date._bridgeToObjectiveC()().super.isa;
      v108 = [v106 initWithCoordinate:v107 altitude:v61 horizontalAccuracy:v62 verticalAccuracy:0.0 course:v63 courseAccuracy:v63 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

      v98(v94, a3);
      [v108 setReferenceFrame:v220];
      [v108 coordinate];
      v110 = v109;
      v112 = v111;

      UUID.uuidString.getter();
      v113 = objc_allocWithZone(CLCircularRegion);
      v114 = String._bridgeToObjectiveC()();

      v115 = v113;
      v31 = v228;
      v116 = [v115 initWithCenter:v114 radius:v110 identifier:{v112, v63}];

      v117 = sub_100EE8968(v116);
      v41 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      [a1 radius];
      v119 = v118;
      [a1 radius];
      v121 = v119 * v120 * 3.14159265;
      [v116 radius];
      v123 = v122;
      [v116 radius];
      v125 = v124;

      v38 = v222;
      v126 = v123 * v125 * 3.14159265;
      if (v126 >= v121)
      {
        v126 = v121;
      }

      if (v126 > 0.0 && v117 / v126 > 0.5 && v38[v31[12]] != 3)
      {

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v127 = v210;
        v128 = v209;
        v129 = v208;
        (*(v210 + 104))(v209, enum case for DispatchQoS.QoSClass.default(_:), v208);
        v130 = static OS_dispatch_queue.global(qos:)();
        (*(v127 + 8))(v128, v129);
        v131 = v38;
        v132 = v38;
        v133 = v203;
        sub_100A1B358(v131, v203, type metadata accessor for SafeLocation);
        v134 = (v207 + 16) & v206;
        v135 = (v202 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
        v136 = swift_allocObject();
        sub_100A18C9C(v133, v136 + v134, type metadata accessor for SafeLocation);
        v137 = (v136 + v135);
        v138 = v204;
        *v137 = v193;
        v137[1] = v138;
        v235 = sub_100A19290;
        v236 = v136;
        aBlock = _NSConcreteStackBlock;
        v232 = 1107296256;
        v233 = sub_100006684;
        v234 = &unk_101642488;
        v139 = _Block_copy(&aBlock);

        v140 = v211;
        static DispatchQoS.unspecified.getter();
        v237 = _swiftEmptyArrayStorage;
        sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v141 = v212;
        v142 = v216;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v139);

        (*(v215 + 8))(v141, v142);
        (*(v213 + 8))(v140, v214);
        sub_100A1B3C0(v132, type metadata accessor for SafeLocation);
        goto LABEL_30;
      }

      ++a4;
      sub_100A1B3C0(v38, type metadata accessor for SafeLocation);
      if (v224 == a4)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  sub_100A1B358(a1, v35, type metadata accessor for SafeLocation);
  v143 = Logger.logObject.getter();
  v144 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v147 = v31;
    v148 = v146;
    aBlock = v146;
    *v145 = 136315138;
    v149 = v147[5];
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v150 = dispatch thunk of CustomStringConvertible.description.getter();
    v152 = v151;
    sub_100A1B3C0(v35, type metadata accessor for SafeLocation);
    v153 = sub_1000136BC(v150, v152, &aBlock);

    *(v145 + 4) = v153;
    _os_log_impl(&_mh_execute_header, v143, v144, "Safe location with identifier: %s already exists", v145, 0xCu);
    sub_100007BAC(v148);
  }

  else
  {

    sub_100A1B3C0(v35, type metadata accessor for SafeLocation);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v154 = v210;
  v155 = v209;
  v156 = v208;
  (*(v210 + 104))(v209, enum case for DispatchQoS.QoSClass.default(_:), v208);
  v157 = static OS_dispatch_queue.global(qos:)();
  (*(v154 + 8))(v155, v156);
  v158 = swift_allocObject();
  *(v158 + 16) = a3;
  *(v158 + 24) = a4;
  v235 = sub_100A19320;
  v236 = v158;
  aBlock = _NSConcreteStackBlock;
  v232 = 1107296256;
  v233 = sub_100006684;
  v234 = &unk_1016424D8;
  v159 = _Block_copy(&aBlock);

  v160 = v211;
  static DispatchQoS.unspecified.getter();
  v237 = _swiftEmptyArrayStorage;
  sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v161 = v212;
  v162 = v216;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v159);

  (*(v215 + 8))(v161, v162);
  (*(v213 + 8))(v160, v214);
LABEL_30:
}

void sub_1009DD1A8(uint64_t a1, void (*a2)(void *, uint64_t))
{
  type metadata accessor for SPSeparationMonitoringError(0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  v6 = *(type metadata accessor for SafeLocation() + 20);
  v7 = type metadata accessor for UUID();
  *(inited + 72) = v7;
  v8 = sub_1000280DC((inited + 48));
  (*(*(v7 - 8) + 16))(v8, a1 + v6, v7);
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177B780);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Overlapping Safe Location detected, failing.", v12, 2u);
  }

  v13 = v14;
  a2(v14, 1);
}

void sub_1009DD3F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{

  v9 = a5;
  sub_100B16E14(a3, 0, a2, a4, v9);
}

void sub_1009DD498(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a6;
  v78 = a4;
  v79 = a3;
  v77 = a2;
  v76 = type metadata accessor for SafeLocation();
  v6 = *(*(v76 - 8) + 64);
  v7 = __chkstk_darwin(v76);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v73 = &v73 - v11;
  v12 = __chkstk_darwin(v10);
  v74 = &v73 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v73 - v15;
  __chkstk_darwin(v14);
  v18 = &v73 - v17;
  v19 = sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v73 - v21;
  v23 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v73 - v29;
  v31 = swift_projectBox();
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177B780);
    sub_100A1B358(v77, v9, type metadata accessor for SafeLocation);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v82 = v36;
      *v35 = 136315138;
      v37 = *(v76 + 20);
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_100A1B3C0(v9, type metadata accessor for SafeLocation);
      v41 = sub_1000136BC(v38, v40, &v82);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Adding safe location with identifier: %s failed due to timeout.", v35, 0xCu);
      sub_100007BAC(v36);
    }

    else
    {

      sub_100A1B3C0(v9, type metadata accessor for SafeLocation);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v81 = 19;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = v82;
LABEL_20:
    v79(v52, 1);

    return;
  }

  swift_beginAccess();
  sub_1000D2A70(v31, v22, &unk_1016B14A0, &unk_1013D68C0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_10000B3A8(v22, &unk_1016B14A0, &unk_1013D68C0);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177B780);
    sub_100A1B358(v77, v18, type metadata accessor for SafeLocation);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v81 = v46;
      *v45 = 136315138;
      v47 = *(v76 + 20);
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      sub_100A1B3C0(v18, type metadata accessor for SafeLocation);
      v51 = sub_1000136BC(v48, v50, &v81);

      *(v45 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "Adding safe location with identifier: %s failed due to unknown error.", v45, 0xCu);
      sub_100007BAC(v46);
    }

    else
    {

      sub_100A1B3C0(v18, type metadata accessor for SafeLocation);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v80 = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v52 = v81;
    goto LABEL_20;
  }

  sub_1000D2AD8(v22, v30, &unk_1016B1480, &qword_1013B6890);
  sub_1000D2A70(v30, v28, &unk_1016B1480, &qword_1013B6890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000B3A8(v28, &unk_1016B1480, &qword_1013B6890);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000076D4(v53, qword_10177B780);
    v54 = v73;
    sub_100A1B358(v77, v73, type metadata accessor for SafeLocation);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81 = v58;
      *v57 = 136315138;
      sub_100A1B358(v54, v74, type metadata accessor for SafeLocation);
      v59 = String.init<A>(describing:)();
      v61 = v60;
      sub_100A1B3C0(v54, type metadata accessor for SafeLocation);
      v62 = sub_1000136BC(v59, v61, &v81);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to add safe location: %s", v57, 0xCu);
      sub_100007BAC(v58);
    }

    else
    {

      sub_100A1B3C0(v54, type metadata accessor for SafeLocation);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v80 = 15;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v72 = v81;
    v79(v81, 1);

    sub_10000B3A8(v30, &unk_1016B1480, &qword_1013B6890);
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000076D4(v63, qword_10177B780);
    sub_100A1B358(v77, v16, type metadata accessor for SafeLocation);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v81 = v67;
      *v66 = 136315138;
      sub_100A1B358(v16, v74, type metadata accessor for SafeLocation);
      v68 = String.init<A>(describing:)();
      v70 = v69;
      sub_100A1B3C0(v16, type metadata accessor for SafeLocation);
      v71 = sub_1000136BC(v68, v70, &v81);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Completed adding safe location: %s", v66, 0xCu);
      sub_100007BAC(v67);
    }

    else
    {

      sub_100A1B3C0(v16, type metadata accessor for SafeLocation);
    }

    v79(0, 0);
    sub_100A8338C();
    sub_10000B3A8(v30, &unk_1016B1480, &qword_1013B6890);
    sub_10000B3A8(v28, &unk_1016B1480, &qword_1013B6890);
  }
}

uint64_t sub_1009DE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v121 = a3;
  v122 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v127 = *(v6 - 8);
  v128 = v6;
  v7 = *(v127 + 64);
  __chkstk_darwin(v6);
  v124 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v125 = *(v9 - 8);
  v126 = v9;
  v10 = *(v125 + 64);
  __chkstk_darwin(v9);
  v123 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = *(v119 + 64);
  __chkstk_darwin(v12);
  v118 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchTime();
  v109 = *(v110 - 8);
  v15 = *(v109 + 64);
  v16 = __chkstk_darwin(v110);
  v106 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v100 - v18;
  v19 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v112 = (&v100 - v21);
  v113 = type metadata accessor for SafeLocation();
  v129 = *(v113 - 8);
  v22 = *(v129 + 64);
  v23 = __chkstk_darwin(v113);
  v111 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v100 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v108 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v104 = &v100 - v32;
  v105 = v33;
  __chkstk_darwin(v31);
  v35 = &v100 - v34;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_1000076D4(v36, qword_10177B780);
  v38 = v27[2];
  v115 = v27 + 2;
  v114 = v38;
  v38(v35, a1, v26);
  v103 = v37;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v116 = a1;
  v117 = a2;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    aBlock = v100;
    *v42 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v25;
    v46 = v45;
    v102 = v27[1];
    v102(v35, v26);
    v47 = sub_1000136BC(v43, v46, &aBlock);
    v25 = v44;

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Removing safe location with identifier: %s", v42, 0xCu);
    sub_100007BAC(v100);
    a2 = v117;

    a1 = v116;
  }

  else
  {

    v102 = v27[1];
    v102(v35, v26);
  }

  v48 = v112;
  sub_100AC09B4();
  if ((*(v129 + 48))(v48, 1, v113) == 1)
  {
    sub_10000B3A8(v48, &unk_1016AFA10, &qword_1013CB000);
    v49 = v104;
    v114(v104, a1, v26);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock = v53;
      *v52 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v102(v49, v26);
      v57 = sub_1000136BC(v54, v56, &aBlock);

      *(v52 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Safe location with identifier: %s not found", v52, 0xCu);
      sub_100007BAC(v53);
    }

    else
    {

      v102(v49, v26);
    }

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v90 = v118;
    v89 = v119;
    v91 = v120;
    (*(v119 + 104))(v118, enum case for DispatchQoS.QoSClass.default(_:), v120);
    v92 = static OS_dispatch_queue.global(qos:)();
    (*(v89 + 8))(v90, v91);
    v93 = swift_allocObject();
    v94 = v122;
    *(v93 + 16) = v121;
    *(v93 + 24) = v94;
    v135 = sub_100A1B710;
    v136 = v93;
    aBlock = _NSConcreteStackBlock;
    v132 = 1107296256;
    v133 = sub_100006684;
    v134 = &unk_1016425F0;
    v95 = _Block_copy(&aBlock);

    v96 = v123;
    static DispatchQoS.unspecified.getter();
    v130 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v97 = v124;
    v98 = v128;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v95);

    (*(v127 + 8))(v97, v98);
    (*(v125 + 8))(v96, v126);
  }

  else
  {
    v103 = v27;
    v104 = v26;
    sub_100A18C9C(v48, v25, type metadata accessor for SafeLocation);
    v58 = dispatch_group_create();
    dispatch_group_enter(v58);
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = -1;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v58;
    v102 = v59;

    v112 = v58;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_101385D80;
    v100 = type metadata accessor for SafeLocation;
    v62 = v111;
    sub_100A1B358(v25, v111, type metadata accessor for SafeLocation);
    v63 = v25;
    v64 = String.init<A>(describing:)();
    v66 = v65;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 64) = sub_100008C00();
    *(v61 + 32) = v64;
    *(v61 + 40) = v66;
    os_log(_:dso:log:_:_:)();

    v101 = v63;
    sub_100B176D4(v63, a2, sub_100A1935C, v60);

    v67 = v106;
    static DispatchTime.now()();
    v68 = v107;
    + infix(_:_:)();
    v69 = *(v109 + 8);
    v70 = v110;
    v69(v67, v110);
    LODWORD(v109) = OS_dispatch_group.wait(timeout:)();
    v69(v68, v70);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v72 = v118;
    v71 = v119;
    v73 = v120;
    (*(v119 + 104))(v118, enum case for DispatchQoS.QoSClass.default(_:), v120);
    v113 = static OS_dispatch_queue.global(qos:)();
    (*(v71 + 8))(v72, v73);
    v74 = v108;
    v75 = v104;
    v114(v108, v116, v104);
    sub_100A1B358(v63, v62, v100);
    v76 = v103;
    v77 = (*(v103 + 80) + 17) & ~*(v103 + 80);
    v78 = (v105 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
    v80 = (*(v129 + 80) + v79 + 8) & ~*(v129 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v109 & 1;
    (v76[4])(v81 + v77, v74, v75);
    v82 = (v81 + v78);
    v83 = v122;
    *v82 = v121;
    v82[1] = v83;
    *(v81 + v79) = v102;
    sub_100A18C9C(v62, v81 + v80, type metadata accessor for SafeLocation);
    *(v81 + ((v22 + v80 + 7) & 0xFFFFFFFFFFFFFFF8)) = v117;
    v135 = sub_100A19364;
    v136 = v81;
    aBlock = _NSConcreteStackBlock;
    v132 = 1107296256;
    v133 = sub_100006684;
    v134 = &unk_101642690;
    v84 = _Block_copy(&aBlock);

    v85 = v123;
    static DispatchQoS.unspecified.getter();
    v130 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v86 = v124;
    v87 = v128;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v88 = v113;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v84);

    (*(v127 + 8))(v86, v87);
    (*(v125 + 8))(v85, v126);
    sub_100A1B3C0(v101, type metadata accessor for SafeLocation);
  }
}

void sub_1009DF068(char a1, uint64_t a2, NSObject *a3)
{
  if (a1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v9;
    v6 = 1;
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v5;
  v8 = *(a2 + 24);
  *(a2 + 24) = v6;
  sub_100A19480(v7, v8);
  dispatch_group_leave(a3);
}

void sub_1009DF154(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a6;
  v63 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v58[-v18];
  __chkstk_darwin(v17);
  v21 = &v58[-v20];
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177B780);
    (*(v12 + 16))(v16, a2, v11);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = a3;
      v27 = swift_slowAlloc();
      v67 = v27;
      *v25 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v12 + 8))(v16, v11);
      v31 = sub_1000136BC(v28, v30, &v67);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Removing safe location with identifier: %s failed due to timeout.", v25, 0xCu);
      sub_100007BAC(v27);
      a3 = v26;
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v64 = 19;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v67;
LABEL_23:
    a3(v47, 1);

    return;
  }

  swift_beginAccess();
  v32 = *(a5 + 24);
  if (v32 == 255)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177B780);
    (*(v12 + 16))(v21, a2, v11);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = a3;
      v53 = swift_slowAlloc();
      v64 = v53;
      *v51 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v12 + 8))(v21, v11);
      v57 = sub_1000136BC(v54, v56, &v64);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Removing safe location with identifier: %s failed due to unknown error.", v51, 0xCu);
      sub_100007BAC(v53);
      a3 = v52;
    }

    else
    {

      (*(v12 + 8))(v21, v11);
    }

    type metadata accessor for SPSeparationMonitoringError(0);
    v66 = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = v64;
    goto LABEL_23;
  }

  v61 = a7;
  v33 = *(a5 + 16);
  sub_1004081B0(v33, v32 & 1);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177B780);
  (*(v12 + 16))(v19, a2, v11);
  sub_1004081B0(v33, v32 & 1);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  sub_100A19480(v33, v32);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v59 = v36;
    v38 = v37;
    v60 = swift_slowAlloc();
    v66 = v60;
    *v38 = 136315394;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = a3;
    v42 = v41;
    (*(v12 + 8))(v19, v11);
    v43 = sub_1000136BC(v39, v42, &v66);
    a3 = v40;

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    v64 = v33;
    v65 = v32 & 1;
    sub_1004081B0(v33, v32 & 1);
    sub_1000BC4D4(&qword_1016B16B0, &qword_1013D0A90);
    v44 = String.init<A>(describing:)();
    v46 = sub_1000136BC(v44, v45, &v66);

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v35, v59, "Removing safe location with identifier: %s completed with result: %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v19, v11);
  }

  a3(v33, v32 & 1);
  if (*(*(v62 + *(type metadata accessor for SafeLocation() + 52)) + 16))
  {
    sub_100A83364(0);
    sub_100A8306C(14);
  }

  sub_100A8338C();
  sub_100A19480(v33, v32);
}

void sub_1009DF9B4(uint64_t a1, void (*a2)(void **, uint64_t), void (*a3)(void **, uint64_t), uint64_t a4)
{
  v112 = a2;
  v102 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v102 - 8);
  v7 = *(v109 + 64);
  __chkstk_darwin(v102);
  v106 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v107 = *(v9 - 8);
  v108 = v9;
  v10 = *(v107 + 64);
  __chkstk_darwin(v9);
  v105 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS.QoSClass();
  v100 = *(v101 - 8);
  v12 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v14 = *(*(v93 - 8) + 64);
  v15 = __chkstk_darwin(v93);
  v92 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v95 = &v91 - v21;
  v22 = type metadata accessor for Date();
  v110 = *(v22 - 8);
  v111 = v22;
  v23 = *(v110 + 64);
  __chkstk_darwin(v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SafeLocation();
  v96 = *(v26 - 1);
  v27 = *(v96 + 64);
  v28 = __chkstk_darwin(v26);
  v98 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v29;
  __chkstk_darwin(v28);
  v31 = &v91 - v30;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000076D4(v32, qword_10177B780);
  sub_100A1B358(a1, v31, type metadata accessor for SafeLocation);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v103 = v18;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v104 = a3;
    v37 = v36;
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136315138;
    v39 = v26[5];
    type metadata accessor for UUID();
    v94 = a4;
    v40 = a1;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    sub_100A1B3C0(v31, type metadata accessor for SafeLocation);
    v44 = sub_1000136BC(v41, v43, &aBlock);
    a1 = v40;
    a4 = v94;

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v33, v34, "Updating safe location with identifier: %s", v37, 0xCu);
    sub_100007BAC(v38);

    a3 = v104;
  }

  else
  {

    sub_100A1B3C0(v31, type metadata accessor for SafeLocation);
  }

  v45 = *(a1 + v26[8]);
  v46 = *(a1 + v26[9]);
  v47 = *(a1 + v26[10]);
  Date.init()();
  v48 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v50 = [v48 initWithCoordinate:isa altitude:v45 horizontalAccuracy:v46 verticalAccuracy:0.0 course:v47 courseAccuracy:v47 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

  (*(v110 + 8))(v25, v111);
  [v50 setReferenceFrame:*(a1 + v26[11])];
  LOBYTE(isa) = sub_1010E1130();

  if (isa)
  {
    type metadata accessor for SPSeparationMonitoringError(0);
    v113 = 21;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v51 = aBlock;
    v112(aBlock, 1);
  }

  else
  {
    v52 = a1 + v26[5];
    v53 = v95;
    sub_100AC09B4();
    v54 = v96;
    v55 = (*(v96 + 48))(v53, 1, v26);
    sub_10000B3A8(v53, &unk_1016AFA10, &qword_1013CB000);
    if (v55 == 1)
    {
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v56 = v100;
      v57 = v99;
      v58 = v101;
      (*(v100 + 104))(v99, enum case for DispatchQoS.QoSClass.default(_:), v101);
      v59 = static OS_dispatch_queue.global(qos:)();
      (*(v56 + 8))(v57, v58);
      v60 = v98;
      sub_100A1B358(a1, v98, type metadata accessor for SafeLocation);
      v61 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v62 = (v97 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      sub_100A18C9C(v60, v63 + v61, type metadata accessor for SafeLocation);
      v64 = (v63 + v62);
      *v64 = v112;
      v64[1] = a3;
      v118 = sub_100A19560;
      v119 = v63;
      aBlock = _NSConcreteStackBlock;
      v115 = 1107296256;
      v116 = sub_100006684;
      v117 = &unk_1016427A8;
      v65 = _Block_copy(&aBlock);

      v66 = v105;
      static DispatchQoS.unspecified.getter();
      v113 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v67 = v106;
      v68 = v102;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v65);

      (*(v109 + 8))(v67, v68);
      (*(v107 + 8))(v66, v108);
    }

    else
    {
      v104 = a3;
      v69 = v98;
      sub_100A1B358(a1, v98, type metadata accessor for SafeLocation);
      v70 = *(v54 + 80);
      v91 = a1;
      v71 = a4;
      v72 = v97;
      v73 = swift_allocObject();
      *(v73 + 16) = a4;
      sub_100A18C9C(v69, v73 + ((v70 + 24) & ~v70), type metadata accessor for SafeLocation);
      sub_100A1B358(a1, v69, type metadata accessor for SafeLocation);
      v74 = (v70 + 16) & ~v70;
      v110 = v74 + v72;
      v75 = swift_allocObject();
      sub_100A18C9C(v69, v75 + v74, type metadata accessor for SafeLocation);

      v76 = v103;
      v94 = v71;
      sub_1009D954C(sub_100A19728, v73, sub_100A1979C, v75, &unk_1016B1480, &qword_1013B6890, sub_100A074C4, v103);

      v77 = v92;
      sub_1000D2A70(v76, v92, &unk_1016B1480, &qword_1013B6890);
      LODWORD(v75) = swift_getEnumCaseMultiPayload();
      sub_10000B3A8(v77, &unk_1016B1480, &qword_1013B6890);
      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v78 = v100;
      v79 = v99;
      v80 = v101;
      (*(v100 + 104))(v99, enum case for DispatchQoS.QoSClass.default(_:), v101);
      v111 = static OS_dispatch_queue.global(qos:)();
      (*(v78 + 8))(v79, v80);
      sub_100A1B358(v91, v69, type metadata accessor for SafeLocation);
      v81 = (v110 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      sub_100A18C9C(v69, v82 + v74, type metadata accessor for SafeLocation);
      v83 = (v82 + v81);
      if (v75 == 1)
      {
        v84 = v104;
        *v83 = v112;
        v83[1] = v84;
        v118 = sub_100A19928;
        v119 = v82;
        aBlock = _NSConcreteStackBlock;
        v115 = 1107296256;
        v116 = sub_100006684;
        v117 = &unk_101642848;
        v85 = _Block_copy(&aBlock);
      }

      else
      {
        v86 = v104;
        *v83 = v112;
        v83[1] = v86;
        *(v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8)) = v94;
        v118 = sub_100A19A6C;
        v119 = v82;
        aBlock = _NSConcreteStackBlock;
        v115 = 1107296256;
        v116 = sub_100006684;
        v117 = &unk_101642898;
        v85 = _Block_copy(&aBlock);
      }

      v87 = v105;
      static DispatchQoS.unspecified.getter();
      v113 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v88 = v106;
      v89 = v102;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v90 = v111;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v85);

      (*(v109 + 8))(v88, v89);
      (*(v107 + 8))(v87, v108);
      sub_10000B3A8(v103, &unk_1016B1480, &qword_1013B6890);
    }
  }
}

uint64_t sub_1009E08D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafeLocation();
  v5 = v4[7];
  v7 = *(a2 + v5);
  v6 = *(a2 + v5 + 8);
  v8 = (a1 + v5);
  v9 = *(a1 + v5 + 8);

  *v8 = v7;
  v8[1] = v6;
  *(a1 + v4[8]) = *(a2 + v4[8]);
  *(a1 + v4[9]) = *(a2 + v4[9]);
  *(a1 + v4[10]) = *(a2 + v4[10]);
  *(a1 + v4[11]) = *(a2 + v4[11]);
  v10 = v4[12];
  LODWORD(v9) = *(a2 + v10);
  *(a1 + v10) = v9;
  *(a1 + v4[6]) = *(a2 + v4[6]);
  v11 = v4[13];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);

  *(a1 + v11) = v12;
  if (v9 != 1)
  {

    *(a1 + v11) = _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1009E09CC(uint64_t a1, void (*a2)(void, void), uint64_t a3, const char *a4, uint64_t a5)
{
  v9 = type metadata accessor for SafeLocation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B780);
  sub_100A1B358(a1, v12, type metadata accessor for SafeLocation);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = a2;
    v18 = v16;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315138;
    v20 = *(v9 + 20);
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_100A1B3C0(v12, type metadata accessor for SafeLocation);
    v24 = sub_1000136BC(v21, v23, &v29);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, a4, v18, 0xCu);
    sub_100007BAC(v19);

    a2 = v17;
    a5 = v27;
  }

  else
  {

    sub_100A1B3C0(v12, type metadata accessor for SafeLocation);
  }

  type metadata accessor for SPSeparationMonitoringError(0);
  v28 = a5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v25 = v29;
  a2(v29, 1);
}

uint64_t sub_1009E0CD0(uint64_t a1, void (*a2)(void, void))
{
  v4 = type metadata accessor for SafeLocation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B780);
  sub_100A1B358(a1, v7, type metadata accessor for SafeLocation);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = *(v4 + 20);
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100A1B3C0(v7, type metadata accessor for SafeLocation);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Successfuly updated safe location with identifier: %s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    sub_100A1B3C0(v7, type metadata accessor for SafeLocation);
  }

  a2(0, 0);
  sub_100A8306C(14);
  sub_100A83364(0);
  return sub_100A8338C();
}

uint64_t sub_1009E0F64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v193 = a5;
  v192 = a4;
  v208 = a3;
  v189 = type metadata accessor for DispatchWorkItemFlags();
  v191 = *(v189 - 8);
  v7 = *(v191 + 64);
  __chkstk_darwin(v189);
  v186 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v187 = *(v9 - 8);
  v10 = *(v187 + 64);
  __chkstk_darwin(v9);
  v185 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v183 = *(v12 - 8);
  v13 = *(v183 + 64);
  __chkstk_darwin(v12);
  v182 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for SystemInfo.DeviceLockState();
  v200 = *(v205 - 8);
  v15 = *(v200 + 64);
  v16 = __chkstk_darwin(v205);
  v204 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v203 = &v172 - v18;
  v177 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v19 = *(*(v177 - 8) + 64);
  v20 = __chkstk_darwin(v177);
  v176 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v178 = &v172 - v22;
  v23 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v201 = &v172 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v190 = v27;
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v211 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v172 = &v172 - v32;
  v33 = __chkstk_darwin(v31);
  v174 = &v172 - v34;
  v35 = __chkstk_darwin(v33);
  v173 = &v172 - v36;
  v37 = __chkstk_darwin(v35);
  v180 = &v172 - v38;
  v39 = __chkstk_darwin(v37);
  v207 = &v172 - v40;
  v175 = v41;
  __chkstk_darwin(v39);
  v43 = &v172 - v42;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_1000076D4(v44, qword_10177B780);
  v46 = v27[2];
  v195 = a2;
  v209 = v46;
  v210 = v27 + 2;
  v46(v43, a2, v26);

  v181 = v45;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v49 = os_log_type_enabled(v47, v48);
  v188 = v9;
  v184 = v12;
  v194 = a1;
  v179 = v27;
  if (v49)
  {
    v50 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v50 = 136315394;
    v51 = Array.description.getter();
    v53 = sub_1000136BC(v51, v52, &aBlock);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v57 = v27[1];
    v57(v43, v26);
    v58 = sub_1000136BC(v54, v56, &aBlock);

    *(v50 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v47, v48, "Assigning beacons: %s to safe location with identifier: %s", v50, 0x16u);
    swift_arrayDestroy();

    v59 = v57;
  }

  else
  {

    v59 = v27[1];
    v59(v43, v26);
  }

  v60 = v201;
  v61 = v195;
  v62 = v208;
  sub_100AC09B4();
  v63 = type metadata accessor for SafeLocation();
  v64 = (*(*(v63 - 8) + 48))(v60, 1, v63);
  sub_10000B3A8(v60, &unk_1016AFA10, &qword_1013CB000);
  v65 = v211;
  if (v64 == 1)
  {
    v209(v211, v61, v26);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v68 = 136315394;
      v69 = Array.description.getter();
      v71 = v59;
      v72 = v26;
      v73 = sub_1000136BC(v69, v70, &aBlock);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v71(v65, v72);
      v77 = sub_1000136BC(v74, v76, &aBlock);

      *(v68 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v66, v67, "Unable to assign beacons %s to non-existant safe location with UUID: %s", v68, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v59(v65, v26);
    }

    v113 = v192;
    v114 = v184;
    v115 = v183;
    v116 = v182;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v115 + 104))(v116, enum case for DispatchQoS.QoSClass.default(_:), v114);
    v117 = static OS_dispatch_queue.global(qos:)();
    (*(v115 + 8))(v116, v114);
    v118 = swift_allocObject();
    v119 = v193;
    *(v118 + 16) = v113;
    *(v118 + 24) = v119;
    v215 = sub_100A19ED0;
    v216 = v118;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v214 = sub_100006684;
    *(&v214 + 1) = &unk_101642A78;
    v120 = _Block_copy(&aBlock);

    v121 = v185;
    static DispatchQoS.unspecified.getter();
    v212 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v122 = v186;
    v123 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v120);

    (*(v191 + 8))(v122, v123);
    (*(v187 + 8))(v121, v188);
  }

  v78 = *(v194 + 16);
  v202 = v59;
  v79 = v180;
  v80 = v207;
  v81 = v209;
  v206 = v26;
  if (v78)
  {
    v82 = v200;
    v200 += 8;
    v201 = (v82 + 104);
    v197 = v190 + 1;
    v83 = *(v179 + 80);
    v199 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v84 = v194 + ((v83 + 32) & ~v83);
    v196 = v179[9];
    v198 = xmmword_101385D80;
    v85 = v203;
    while (1)
    {
      v211 = v78;
      v81(v79, v84, v26);
      static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v86 = swift_allocObject();
      *(v86 + 16) = v198;
      v87 = UUID.uuidString.getter();
      v89 = v88;
      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = sub_100008C00();
      *(v86 + 32) = v87;
      *(v86 + 40) = v89;
      os_log(_:dso:log:_:_:)();

      static SystemInfo.lockState.getter();
      v91 = v204;
      v90 = v205;
      (*v201)(v204, v199, v205);
      sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      LOBYTE(v87) = dispatch thunk of static Equatable.== infix(_:_:)();
      v92 = *v200;
      (*v200)(v91, v90);
      v92(v85, v90);
      if (v87)
      {
        break;
      }

      v62 = v208;
      v93 = sub_100007F54();
      __chkstk_darwin(v93);
      *(&v172 - 2) = v79;
      sub_1000314D0(sub_1004E4EC0, v93, &aBlock);

      v26 = v206;
      v80 = v207;
      if (!*(&v214 + 1))
      {
        goto LABEL_23;
      }

      sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
      v202(v79, v26);
      v84 += v196;
      v78 = v211 - 1;
      v81 = v209;
      if (v211 == 1)
      {
        goto LABEL_16;
      }
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v215 = 0;
    aBlock = 0u;
    v214 = 0u;
    v26 = v206;
LABEL_23:
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v138 = v173;
    v139 = v209;
    v209(v173, v79, v26);
    v140 = v174;
    v139(v174, v195, v26);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    v143 = os_log_type_enabled(v141, v142);
    v144 = v191;
    if (v143)
    {
      v145 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      *&aBlock = v211;
      *v145 = 136315394;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v210) = v142;
      v146 = dispatch thunk of CustomStringConvertible.description.getter();
      v147 = v138;
      v149 = v148;
      v150 = v202;
      v202(v147, v26);
      v151 = sub_1000136BC(v146, v149, &aBlock);

      *(v145 + 4) = v151;
      *(v145 + 12) = 2080;
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v154 = v153;
      v150(v140, v26);
      v144 = v191;
      v155 = sub_1000136BC(v152, v154, &aBlock);

      *(v145 + 14) = v155;
      _os_log_impl(&_mh_execute_header, v141, v210, "Unable to assign non-existant beacon %s to safe location with UUID: %s", v145, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v156 = v202;
      v202(v140, v26);
      v156(v138, v26);
    }

    v157 = v193;
    v158 = v192;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v159 = v183;
    v160 = v182;
    v161 = v184;
    (*(v183 + 104))(v182, enum case for DispatchQoS.QoSClass.default(_:), v184);
    v162 = static OS_dispatch_queue.global(qos:)();
    (*(v159 + 8))(v160, v161);
    v163 = swift_allocObject();
    *(v163 + 16) = v158;
    *(v163 + 24) = v157;
    v215 = sub_100A19EF0;
    v216 = v163;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v214 = sub_100006684;
    *(&v214 + 1) = &unk_101642AC8;
    v164 = _Block_copy(&aBlock);

    v165 = v185;
    static DispatchQoS.unspecified.getter();
    v212 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v166 = v186;
    v167 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v164);

    (*(v144 + 8))(v166, v167);
    (*(v187 + 8))(v165, v188);
    v202(v180, v206);
  }

LABEL_16:
  v81(v80, v195, v26);
  v94 = v179;
  v95 = (*(v179 + 80) + 24) & ~*(v179 + 80);
  v205 = v95 + v175;
  v96 = swift_allocObject();
  *(v96 + 16) = v62;
  v211 = v94[4];
  (v211)(v96 + v95, v80, v26);
  v97 = swift_allocObject();
  v98 = v194;
  *(v97 + 16) = v194;

  v99 = v178;
  sub_1009D954C(sub_100A19F10, v96, sub_100A19F80, v97, &unk_1016B1480, &qword_1013B6890, sub_100A074C4, v178);

  v100 = v176;
  sub_1000D2A70(v99, v176, &unk_1016B1480, &qword_1013B6890);
  LODWORD(v96) = swift_getEnumCaseMultiPayload();
  sub_10000B3A8(v100, &unk_1016B1480, &qword_1013B6890);
  if (v96 != 1)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v124 = v183;
    v125 = v182;
    v126 = v184;
    (*(v183 + 104))(v182, enum case for DispatchQoS.QoSClass.default(_:), v184);
    v127 = static OS_dispatch_queue.global(qos:)();
    (*(v124 + 8))(v125, v126);
    v128 = v206;
    v129 = v207;
    v209(v207, v195, v206);
    v130 = (v205 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = swift_allocObject();
    *(v131 + 16) = v98;
    (v211)(v131 + v95, v129, v128);
    v132 = (v131 + v130);
    v133 = v193;
    *v132 = v192;
    v132[1] = v133;
    *(v131 + ((v130 + 23) & 0xFFFFFFFFFFFFFFF8)) = v208;
    v215 = sub_100A1A07C;
    v216 = v131;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v214 = sub_100006684;
    *(&v214 + 1) = &unk_101642B68;
    v134 = _Block_copy(&aBlock);

    v135 = v185;
    static DispatchQoS.unspecified.getter();
    v212 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v136 = v186;
    v137 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v134);

    (*(v191 + 8))(v136, v137);
    (*(v187 + 8))(v135, v188);
    sub_10000B3A8(v178, &unk_1016B1480, &qword_1013B6890);
  }

  v101 = v172;
  v102 = v206;
  v209(v172, v195, v206);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v105 = 136315394;
    v106 = Array.description.getter();
    v108 = sub_1000136BC(v106, v107, &aBlock);

    *(v105 + 4) = v108;
    *(v105 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    v202(v101, v102);
    v112 = sub_1000136BC(v109, v111, &aBlock);

    *(v105 + 14) = v112;
    _os_log_impl(&_mh_execute_header, v103, v104, "Failed to assign %s to safe location with UUID: %s", v105, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v202(v101, v102);
  }

  v169 = v192;
  v170 = v178;
  type metadata accessor for SPSeparationMonitoringError(0);
  v212 = 17;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v171 = aBlock;
  v169(aBlock, 1);

  return sub_10000B3A8(v170, &unk_1016B1480, &qword_1013B6890);
}

uint64_t sub_1009E2A14(uint64_t a1)
{
  v2 = type metadata accessor for SafeLocation();
  v3 = *(v2 + 52);

  result = sub_100398278(v4);
  *(a1 + *(v2 + 48)) = 1;
  return result;
}

uint64_t sub_1009E2A6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v193 = a5;
  v192 = a4;
  v208 = a3;
  v189 = type metadata accessor for DispatchWorkItemFlags();
  v191 = *(v189 - 8);
  v7 = *(v191 + 64);
  __chkstk_darwin(v189);
  v186 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v187 = *(v9 - 8);
  v10 = *(v187 + 64);
  __chkstk_darwin(v9);
  v185 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v183 = *(v12 - 8);
  v13 = *(v183 + 64);
  __chkstk_darwin(v12);
  v182 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for SystemInfo.DeviceLockState();
  v200 = *(v205 - 8);
  v15 = *(v200 + 64);
  v16 = __chkstk_darwin(v205);
  v204 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v203 = &v172 - v18;
  v177 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v19 = *(*(v177 - 8) + 64);
  v20 = __chkstk_darwin(v177);
  v176 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v178 = &v172 - v22;
  v23 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v201 = &v172 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v190 = v27;
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v211 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v172 = &v172 - v32;
  v33 = __chkstk_darwin(v31);
  v174 = &v172 - v34;
  v35 = __chkstk_darwin(v33);
  v173 = &v172 - v36;
  v37 = __chkstk_darwin(v35);
  v180 = &v172 - v38;
  v39 = __chkstk_darwin(v37);
  v207 = &v172 - v40;
  v175 = v41;
  __chkstk_darwin(v39);
  v43 = &v172 - v42;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = sub_1000076D4(v44, qword_10177B780);
  v46 = v27[2];
  v195 = a2;
  v209 = v46;
  v210 = v27 + 2;
  v46(v43, a2, v26);

  v181 = v45;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v49 = os_log_type_enabled(v47, v48);
  v188 = v9;
  v184 = v12;
  v194 = a1;
  v179 = v27;
  if (v49)
  {
    v50 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v50 = 136315394;
    v51 = Array.description.getter();
    v53 = sub_1000136BC(v51, v52, &aBlock);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v57 = v27[1];
    v57(v43, v26);
    v58 = sub_1000136BC(v54, v56, &aBlock);

    *(v50 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v47, v48, "Unassigning beacons: %s from safe location with identifier: %s", v50, 0x16u);
    swift_arrayDestroy();

    v59 = v57;
  }

  else
  {

    v59 = v27[1];
    v59(v43, v26);
  }

  v60 = v201;
  v61 = v195;
  v62 = v208;
  sub_100AC09B4();
  v63 = type metadata accessor for SafeLocation();
  v64 = (*(*(v63 - 8) + 48))(v60, 1, v63);
  sub_10000B3A8(v60, &unk_1016AFA10, &qword_1013CB000);
  v65 = v211;
  if (v64 == 1)
  {
    v209(v211, v61, v26);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v68 = 136315394;
      v69 = Array.description.getter();
      v71 = v59;
      v72 = v26;
      v73 = sub_1000136BC(v69, v70, &aBlock);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v71(v65, v72);
      v77 = sub_1000136BC(v74, v76, &aBlock);

      *(v68 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v66, v67, "Unable to unassign beacons %s from non-existent safe location with UUID: %s", v68, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v59(v65, v26);
    }

    v113 = v192;
    v114 = v184;
    v115 = v183;
    v116 = v182;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v115 + 104))(v116, enum case for DispatchQoS.QoSClass.default(_:), v114);
    v117 = static OS_dispatch_queue.global(qos:)();
    (*(v115 + 8))(v116, v114);
    v118 = swift_allocObject();
    v119 = v193;
    *(v118 + 16) = v113;
    *(v118 + 24) = v119;
    v215 = sub_100A1B710;
    v216 = v118;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v214 = sub_100006684;
    *(&v214 + 1) = &unk_101641C18;
    v120 = _Block_copy(&aBlock);

    v121 = v185;
    static DispatchQoS.unspecified.getter();
    v212 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v122 = v186;
    v123 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v120);

    (*(v191 + 8))(v122, v123);
    (*(v187 + 8))(v121, v188);
  }

  v78 = *(v194 + 16);
  v202 = v59;
  v79 = v180;
  v80 = v207;
  v81 = v209;
  v206 = v26;
  if (v78)
  {
    v82 = v200;
    v200 += 8;
    v201 = (v82 + 104);
    v197 = v190 + 1;
    v83 = *(v179 + 80);
    v199 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v84 = v194 + ((v83 + 32) & ~v83);
    v196 = v179[9];
    v198 = xmmword_101385D80;
    v85 = v203;
    while (1)
    {
      v211 = v78;
      v81(v79, v84, v26);
      static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v86 = swift_allocObject();
      *(v86 + 16) = v198;
      v87 = UUID.uuidString.getter();
      v89 = v88;
      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = sub_100008C00();
      *(v86 + 32) = v87;
      *(v86 + 40) = v89;
      os_log(_:dso:log:_:_:)();

      static SystemInfo.lockState.getter();
      v91 = v204;
      v90 = v205;
      (*v201)(v204, v199, v205);
      sub_100003F64(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      LOBYTE(v87) = dispatch thunk of static Equatable.== infix(_:_:)();
      v92 = *v200;
      (*v200)(v91, v90);
      v92(v85, v90);
      if (v87)
      {
        break;
      }

      v62 = v208;
      v93 = sub_100007F54();
      __chkstk_darwin(v93);
      *(&v172 - 2) = v79;
      sub_1000314D0(sub_100030E14, v93, &aBlock);

      v26 = v206;
      v80 = v207;
      if (!*(&v214 + 1))
      {
        goto LABEL_23;
      }

      sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
      v202(v79, v26);
      v84 += v196;
      v78 = v211 - 1;
      v81 = v209;
      if (v211 == 1)
      {
        goto LABEL_16;
      }
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v215 = 0;
    aBlock = 0u;
    v214 = 0u;
    v26 = v206;
LABEL_23:
    sub_10000B3A8(&aBlock, &qword_101696920, &unk_10138B200);
    v138 = v173;
    v139 = v209;
    v209(v173, v79, v26);
    v140 = v174;
    v139(v174, v195, v26);
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();
    v143 = os_log_type_enabled(v141, v142);
    v144 = v191;
    if (v143)
    {
      v145 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      *&aBlock = v211;
      *v145 = 136315394;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v210) = v142;
      v146 = dispatch thunk of CustomStringConvertible.description.getter();
      v147 = v138;
      v149 = v148;
      v150 = v202;
      v202(v147, v26);
      v151 = sub_1000136BC(v146, v149, &aBlock);

      *(v145 + 4) = v151;
      *(v145 + 12) = 2080;
      v152 = dispatch thunk of CustomStringConvertible.description.getter();
      v154 = v153;
      v150(v140, v26);
      v144 = v191;
      v155 = sub_1000136BC(v152, v154, &aBlock);

      *(v145 + 14) = v155;
      _os_log_impl(&_mh_execute_header, v141, v210, "Unable to unassign non-existent beacon %s to safe location with UUID: %s", v145, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v156 = v202;
      v202(v140, v26);
      v156(v138, v26);
    }

    v157 = v193;
    v158 = v192;
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v159 = v183;
    v160 = v182;
    v161 = v184;
    (*(v183 + 104))(v182, enum case for DispatchQoS.QoSClass.default(_:), v184);
    v162 = static OS_dispatch_queue.global(qos:)();
    (*(v159 + 8))(v160, v161);
    v163 = swift_allocObject();
    *(v163 + 16) = v158;
    *(v163 + 24) = v157;
    v215 = sub_100A1B70C;
    v216 = v163;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v214 = sub_100006684;
    *(&v214 + 1) = &unk_101641C68;
    v164 = _Block_copy(&aBlock);

    v165 = v185;
    static DispatchQoS.unspecified.getter();
    v212 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v166 = v186;
    v167 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v164);

    (*(v144 + 8))(v166, v167);
    (*(v187 + 8))(v165, v188);
    v202(v180, v206);
  }

LABEL_16:
  v81(v80, v195, v26);
  v94 = v179;
  v95 = (*(v179 + 80) + 24) & ~*(v179 + 80);
  v205 = v95 + v175;
  v96 = swift_allocObject();
  *(v96 + 16) = v62;
  v211 = v94[4];
  (v211)(v96 + v95, v80, v26);
  v97 = swift_allocObject();
  v98 = v194;
  *(v97 + 16) = v194;

  v99 = v178;
  sub_1009D954C(sub_100A1B7A0, v96, sub_100A02DB8, v97, &unk_1016B1480, &qword_1013B6890, sub_100A074C4, v178);

  v100 = v176;
  sub_1000D2A70(v99, v176, &unk_1016B1480, &qword_1013B6890);
  LODWORD(v96) = swift_getEnumCaseMultiPayload();
  sub_10000B3A8(v100, &unk_1016B1480, &qword_1013B6890);
  if (v96 != 1)
  {
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v124 = v183;
    v125 = v182;
    v126 = v184;
    (*(v183 + 104))(v182, enum case for DispatchQoS.QoSClass.default(_:), v184);
    v127 = static OS_dispatch_queue.global(qos:)();
    (*(v124 + 8))(v125, v126);
    v128 = v206;
    v129 = v207;
    v209(v207, v195, v206);
    v130 = (v205 + 7) & 0xFFFFFFFFFFFFFFF8;
    v131 = swift_allocObject();
    *(v131 + 16) = v98;
    (v211)(v131 + v95, v129, v128);
    v132 = (v131 + v130);
    v133 = v193;
    *v132 = v192;
    v132[1] = v133;
    *(v131 + ((v130 + 23) & 0xFFFFFFFFFFFFFFF8)) = v208;
    v215 = sub_100A074B8;
    v216 = v131;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v214 = sub_100006684;
    *(&v214 + 1) = &unk_101641D08;
    v134 = _Block_copy(&aBlock);

    v135 = v185;
    static DispatchQoS.unspecified.getter();
    v212 = _swiftEmptyArrayStorage;
    sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v136 = v186;
    v137 = v189;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v134);

    (*(v191 + 8))(v136, v137);
    (*(v187 + 8))(v135, v188);
    sub_10000B3A8(v178, &unk_1016B1480, &qword_1013B6890);
  }

  v101 = v172;
  v102 = v206;
  v209(v172, v195, v206);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v105 = 136315394;
    v106 = Array.description.getter();
    v108 = sub_1000136BC(v106, v107, &aBlock);

    *(v105 + 4) = v108;
    *(v105 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v109 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v110;
    v202(v101, v102);
    v112 = sub_1000136BC(v109, v111, &aBlock);

    *(v105 + 14) = v112;
    _os_log_impl(&_mh_execute_header, v103, v104, "Failed to unassign %s from safe location with UUID: %s", v105, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v202(v101, v102);
  }

  v169 = v192;
  v170 = v178;
  type metadata accessor for SPSeparationMonitoringError(0);
  v212 = 17;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v171 = aBlock;
  v169(aBlock, 1);

  return sub_10000B3A8(v170, &unk_1016B1480, &qword_1013B6890);
}

void sub_1009E451C(void (*a1)(void *, uint64_t))
{
  type metadata accessor for SPSeparationMonitoringError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1(v2, 1);
}

unint64_t sub_1009E45DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafeLocation();
  v5 = *(v4 + 52);

  v6 = sub_100A18384((a1 + v5), a2);

  v8 = *(*(a1 + v5) + 16);
  if (v8 < v6)
  {
    __break(1u);
  }

  else
  {
    result = sub_100A07658(v6, v8);
    if (*(*(a1 + v5) + 16))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    *(a1 + *(v4 + 48)) = v9;
  }

  return result;
}

uint64_t sub_1009E4688(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, const char *a6)
{
  v27 = a6;
  v28 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B780);
  (*(v9 + 16))(v12, a2, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a3;
    v17 = v16;
    v29 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = Array.description.getter();
    v20 = sub_1000136BC(v18, v19, &v29);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_1000136BC(v21, v23, &v29);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, v27, v17, 0x16u);
    swift_arrayDestroy();

    a3 = v26;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  a3(0, 0);
  sub_100A8306C(14);
  sub_100A83364(0);
  return sub_100A8338C();
}

void *sub_1009E4988(void *a1)
{
  v132 = type metadata accessor for SafeLocation();
  v121 = *(v132 - 1);
  v2 = *(v121 + 64);
  __chkstk_darwin(v132);
  v122 = (&v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = type metadata accessor for Date();
  v115 = *(v131 - 8);
  v4 = *(v115 + 64);
  __chkstk_darwin(v131);
  v130 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000BC4D4(&qword_1016B1780, &unk_1013B36E0);
  v123 = *(v135 - 8);
  v6 = *(v123 + 64);
  v7 = __chkstk_darwin(v135);
  v129 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v128 = &v115 - v10;
  v11 = __chkstk_darwin(v9);
  v127 = &v115 - v12;
  v13 = __chkstk_darwin(v11);
  v126 = (&v115 - v14);
  __chkstk_darwin(v13);
  v133 = (&v115 - v15);
  v16 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v115 - v18);
  v118 = type metadata accessor for DirectorySequence();
  v117 = *(v118 - 8);
  v20 = *(v117 + 64);
  __chkstk_darwin(v118);
  v22 = (&v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 1);
  v25 = v24[8];
  v26 = __chkstk_darwin(v23);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v115 - v29;
  [a1 coordinate];
  v32 = v31;
  v34 = v33;
  [a1 horizontalAccuracy];
  v36 = v35;
  v37 = objc_allocWithZone(CLCircularRegion);
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 initWithCenter:v38 radius:v32 identifier:{v34, v36}];

  v40 = [a1 referenceFrame];
  v134 = v39;
  [v39 setGeoReferenceFrame:v40];
  v41 = *(v125 + 168);
  if (qword_101694F88 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v42 = sub_1000076D4(v23, qword_10177C268);
    (v24[2])(v30, v42, v23);
    v136 = _swiftEmptyArrayStorage;
    v137[0] = _swiftEmptyArrayStorage;
    v43 = [objc_opt_self() defaultManager];
    v119 = v30;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v44 = v23;
    v45 = v22;
    DirectorySequence.next()();
    v46 = v24[6];
    v22 = v19;
    v47 = v19;
    v48 = v44;
    v49 = v46(v47, 1, v44);
    v120 = v24;
    if (v49 != 1)
    {
      v125 = v41;
      v124 = v24[4];
      do
      {
        (v124)(v28, v22, v44);
        v50 = objc_autoreleasePoolPush();
        sub_1006005CC(v28, v125, v137, &v136);
        objc_autoreleasePoolPop(v50);
        (v24[1])(v28, v44);
        DirectorySequence.next()();
      }

      while (v46(v22, 1, v44) != 1);
    }

    v116 = 0;
    (*(v117 + 8))(v45, v118);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v51 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10138BBE0;
    v53 = v137[0];
    v54 = v137[0][2];
    *(v52 + 56) = &type metadata for Int;
    *(v52 + 64) = &protocol witness table for Int;
    *(v52 + 32) = v54;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);

    v55 = v119;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    *(v52 + 96) = &type metadata for String;
    *(v52 + 104) = sub_100008C00();
    *(v52 + 72) = v56;
    *(v52 + 80) = v58;
    os_log(_:dso:log:_:_:)();

    (v120[1])(v55, v48);

    v59 = v53[2];
    if (v59)
    {
      v137[0] = _swiftEmptyArrayStorage;
      sub_1011255C0(0, v59, 0);
      v23 = v137[0];
      v60 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v120 = v53;
      v61 = v53 + v60;
      v125 = *(v121 + 72);
      v124 = (v115 + 8);
      v41 = v123;
      v22 = v133;
      do
      {
        v62 = v22 + *(v135 + 48);
        sub_100A1B358(v61, v62, type metadata accessor for SafeLocation);
        v63 = v132;
        v64 = *(v62 + v132[8]);
        v65 = *(v62 + v132[9]);
        v66 = *(v62 + v132[10]);
        v67 = v130;
        Date.init()();
        v68 = objc_allocWithZone(CLLocation);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v70 = [v68 initWithCoordinate:isa altitude:v64 horizontalAccuracy:v65 verticalAccuracy:0.0 course:v66 courseAccuracy:v66 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

        v71 = v67;
        v22 = v133;
        (*v124)(v71, v131);
        [v70 setReferenceFrame:*(v62 + v63[11])];
        [v70 coordinate];
        v73 = v72;
        v75 = v74;

        v76 = v62 + v63[5];
        UUID.uuidString.getter();
        v77 = objc_allocWithZone(CLCircularRegion);
        v78 = String._bridgeToObjectiveC()();

        v79 = [v77 initWithCenter:v78 radius:v73 identifier:{v75, v66}];

        v80 = v134;
        v81 = sub_100EE8968(v79);
        [v80 radius];
        v83 = v82;
        [v80 radius];
        v85 = v83 * v84 * 3.14159265;
        [v79 radius];
        v87 = v86;
        [v79 radius];
        v89 = v88;

        v90 = v87 * v89 * 3.14159265;
        if (v90 >= v85)
        {
          v90 = v85;
        }

        if (v90 <= 0.0)
        {
          v91 = 0.0;
        }

        else
        {
          v91 = v81 / v90;
        }

        *v22 = v91;
        v137[0] = v23;
        v93 = v23[2];
        v92 = v23[3];
        if (v93 >= v92 >> 1)
        {
          sub_1011255C0(v92 > 1, v93 + 1, 1);
          v23 = v137[0];
        }

        v23[2] = v93 + 1;
        sub_1000D2AD8(v22, v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v93, &qword_1016B1780, &unk_1013B36E0);
        v61 += v125;
        --v59;
      }

      while (v59);
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
      v41 = v123;
    }

    v94 = _swiftEmptyArrayStorage;
    v19 = v122;
    v133 = v23[2];
    if (!v133)
    {
      break;
    }

    v28 = 0;
    v24 = &qword_1016B1780;
    v30 = &unk_1013B36E0;
    while (v28 < v23[2])
    {
      v22 = ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v95 = *(v41 + 72);
      v96 = v24;
      v97 = v126;
      sub_1000D2A70(v22 + v23 + v95 * v28, v126, v96, &unk_1013B36E0);
      if (*v97 <= 0.5)
      {
        sub_10000B3A8(v97, v96, &unk_1013B36E0);
        v24 = v96;
      }

      else
      {
        sub_1000D2AD8(v97, v127, v96, &unk_1013B36E0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137[0] = v94;
        v24 = v96;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1011255C0(0, v94[2] + 1, 1);
          v94 = v137[0];
        }

        v100 = v94[2];
        v99 = v94[3];
        if (v100 >= v99 >> 1)
        {
          sub_1011255C0(v99 > 1, v100 + 1, 1);
          v94 = v137[0];
        }

        v94[2] = v100 + 1;
        v30 = &unk_1013B36E0;
        sub_1000D2AD8(v127, v22 + v94 + v100 * v95, v96, &unk_1013B36E0);
        v19 = v122;
        v41 = v123;
      }

      if (v133 == ++v28)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_28:

  v137[0] = v94;

  v101 = v116;
  sub_1009C84E8(v137);
  if (v101)
  {

    __break(1u);
  }

  else
  {

    v102 = v137[0];
    v103 = v137[0][2];
    v104 = v121;
    if (v103)
    {
      v137[0] = _swiftEmptyArrayStorage;
      sub_10112483C(0, v103, 0);
      v105 = v137[0];
      v106 = *(v123 + 80);
      v133 = v102;
      v107 = v102 + ((v106 + 32) & ~v106);
      v108 = *(v123 + 72);
      do
      {
        v109 = v128;
        sub_1000D2A70(v107, v128, &qword_1016B1780, &unk_1013B36E0);
        v110 = v109;
        v111 = v129;
        sub_1000D2AD8(v110, v129, &qword_1016B1780, &unk_1013B36E0);
        sub_100A18C9C(v111 + *(v135 + 48), v19, type metadata accessor for SafeLocation);
        v137[0] = v105;
        v113 = v105[2];
        v112 = v105[3];
        if (v113 >= v112 >> 1)
        {
          sub_10112483C(v112 > 1, v113 + 1, 1);
          v105 = v137[0];
        }

        v105[2] = v113 + 1;
        sub_100A18C9C(v19, v105 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v113, type metadata accessor for SafeLocation);
        v107 += v108;
        --v103;
      }

      while (v103);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }

    return v105;
  }

  return result;
}

uint64_t sub_1009E57C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v92 = a5;
  v84 = a3;
  v85 = a4;
  v87 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v7 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v80 = &v73 - v8;
  v9 = type metadata accessor for DispatchTime();
  v90 = *(v9 - 8);
  v91 = v9;
  v10 = *(v90 + 64);
  v11 = __chkstk_darwin(v9);
  v88 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v89 = &v73 - v13;
  v82 = type metadata accessor for UUID();
  v86 = *(v82 - 8);
  v14 = *(v86 + 64);
  v15 = __chkstk_darwin(v82);
  v83 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v73 - v17;
  v19 = type metadata accessor for SafeLocation();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  v25 = sub_1009E4988(a2);
  if (v25[2])
  {
    v26 = v92;
    sub_100A1B358(v25 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v92, type metadata accessor for SafeLocation);

    return (*(v20 + 56))(v26, 0, 1, v19);
  }

  else
  {
    v74 = a2;
    v75 = v18;
    v28 = v82;
    v76 = v21;
    v77 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v24;
    v79 = a1;
    v81 = v20;

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = sub_1000076D4(v29, qword_10177B780);
    v31 = v74;
    v74 = v30;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v19;
    v36 = v78;
    if (v34)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v31;
      *v38 = v31;
      v39 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "No suggested safe location for: %@ creating new one.", v37, 0xCu);
      sub_10000B3A8(v38, &qword_10169BB30, &unk_10138B3C0);
    }

    v40 = v84;
    if (!v85)
    {
      v40 = 0;
    }

    v84 = v40;
    if (v85)
    {
      v41 = v85;
    }

    else
    {
      v41 = 0xE000000000000000;
    }

    v42 = v75;
    UUID.init()();
    v43 = v86;
    v44 = v83;
    (*(v86 + 16))(v83, v42, v28);
    [v31 coordinate];
    v46 = v45;
    [v31 coordinate];
    v48 = v47;
    [v31 horizontalAccuracy];
    v50 = v49;
    v51 = [v31 referenceFrame];
    if (v51 == 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2 * (v51 == 2);
    }

    (*(v43 + 8))(v42, v28);
    *v36 = xmmword_10138C660;
    (*(v43 + 32))(&v36[v35[5]], v44, v28);
    v36[v35[6]] = 1;
    v53 = &v36[v35[7]];
    *v53 = v84;
    *(v53 + 1) = v41;
    *&v36[v35[8]] = v46;
    *&v36[v35[9]] = v48;
    *&v36[v35[10]] = v50;
    v36[v35[11]] = v52;
    v36[v35[12]] = 2;
    *&v36[v35[13]] = _swiftEmptyArrayStorage;
    v54 = dispatch_group_create();
    v55 = swift_allocBox();
    v57 = v56;
    v58 = v81 + 56;
    v86 = *(v81 + 56);
    (v86)(v56, 1, 1, v35);
    dispatch_group_enter(v54);
    v59 = v77;
    sub_100A1B358(v36, v77, type metadata accessor for SafeLocation);
    v81 = v58;
    v60 = (*(v58 + 24) + 24) & ~*(v58 + 24);
    v61 = (v76 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    *(v62 + 16) = v55;
    sub_100A18C9C(v59, v62 + v60, type metadata accessor for SafeLocation);
    *(v62 + v61) = v54;
    v87 = v55;

    v63 = v54;
    sub_1009DB4DC(v36, 0, sub_100A1AFD4, v62);

    v64 = v88;
    static DispatchTime.now()();
    v65 = v89;
    + infix(_:_:)();
    v66 = v91;
    v67 = *(v90 + 8);
    v67(v64, v91);
    OS_dispatch_group.wait(timeout:)();
    v67(v65, v66);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Failed to create safe location suggestion due to timeout", v70, 2u);

        v71 = v63;
      }

      else
      {
        v71 = v68;
        v68 = v63;
      }

      sub_100A1B3C0(v36, type metadata accessor for SafeLocation);
      v72 = v80;
      (v86)(v80, 1, 1, v35);
      swift_beginAccess();
      sub_10002311C(v72, v57, &unk_1016AFA10, &qword_1013CB000);
    }

    else
    {
      sub_100A1B3C0(v36, type metadata accessor for SafeLocation);
    }

    swift_beginAccess();
    sub_1000D2A70(v57, v92, &unk_1016AFA10, &qword_1013CB000);
  }
}

void sub_1009E6080(void *a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v9 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v25 - v11;
  v13 = swift_projectBox();
  if (a2)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B780);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_100408170(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v15;
      v26 = v19;
      *v18 = 136315138;
      type metadata accessor for SPSeparationMonitoringError(0);
      sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError);
      v20 = Error.localizedDescription.getter();
      v22 = sub_1000136BC(v20, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to create new safe location suggestion due to: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v23 = type metadata accessor for SafeLocation();
    (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  }

  else
  {
    sub_100A1B358(a4, v12, type metadata accessor for SafeLocation);
    v24 = type metadata accessor for SafeLocation();
    (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  }

  swift_beginAccess();
  sub_10002311C(v12, v13, &unk_1016AFA10, &qword_1013CB000);
  dispatch_group_leave(a5);
}

void sub_1009E6368(uint64_t a1)
{
  v68 = type metadata accessor for LeashRecord();
  v65 = *(v68 - 8);
  v2 = *(v65 + 64);
  v3 = __chkstk_darwin(v68);
  v66 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v73 = &v64 - v5;
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v64 - v8;
  v10 = type metadata accessor for DirectorySequence();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v64 - v20;
  v67 = a1;
  v22 = *(a1 + 168);
  if (qword_1016954B8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v23 = sub_1000076D4(v14, qword_10177CDB8);
    (*(v15 + 16))(v21, v23, v14);
    v76 = _swiftEmptyArrayStorage;
    v77 = _swiftEmptyArrayStorage;
    v24 = [objc_opt_self() defaultManager];
    v71 = v21;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    DirectorySequence.next()();
    v72 = v15;
    v25 = *(v15 + 48);
    v26 = v25(v9, 1, v14);
    v74 = v22;
    v75 = v13;
    if (v26 != 1)
    {
      v27 = *(v72 + 32);
      v28 = (v72 + 8);
      do
      {
        v27(v19, v9, v14);
        v29 = objc_autoreleasePoolPush();
        sub_1006041CC(v19, v74, &v77, &v76);
        objc_autoreleasePoolPop(v29);
        (*v28)(v19, v14);
        DirectorySequence.next()();
      }

      while (v25(v9, 1, v14) != 1);
    }

    (*(v69 + 8))(v75, v70);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v30 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10138BBE0;
    v32 = v77;
    v33 = v77[2];
    *(v31 + 56) = &type metadata for Int;
    *(v31 + 64) = &protocol witness table for Int;
    *(v31 + 32) = v33;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);

    v34 = v71;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = sub_100008C00();
    *(v31 + 72) = v35;
    *(v31 + 80) = v37;
    os_log(_:dso:log:_:_:)();

    (*(v72 + 8))(v34, v14);

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10177B780);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Attempting to merge leash records if needed.", v41, 2u);
    }

    if (*(v32 + 16) < 2uLL)
    {
      break;
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = *(v32 + 16);

      _os_log_impl(&_mh_execute_header, v42, v43, "Found %ld leash records, cleaning up.", v44, 0xCu);

      v14 = *(v32 + 16);
      if (!v14)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v14 = *(v32 + 16);
      if (!v14)
      {
LABEL_32:
        type metadata accessor for UUID();
        sub_100003F64(&qword_1016967B0, &type metadata accessor for UUID);
        v59 = Array<A>.uniqued()();

        v60 = v68;
        v61 = v66;
        v62 = v66 + *(v68 + 20);
        UUID.init()();
        *v61 = xmmword_10138C660;
        *(v61 + *(v60 + 24)) = v59;

        v63 = v67;

        sub_100B1982C(v61, 0, v63, v32, v63);
        swift_bridgeObjectRelease_n();

        sub_100A1B3C0(v61, type metadata accessor for LeashRecord);
        return;
      }
    }

    v45 = *(v68 + 24);
    v19 = (v32 + ((*(v65 + 80) + 32) & ~*(v65 + 80)));
    v15 = *(v65 + 72);
    v46 = _swiftEmptyArrayStorage;
    while (1)
    {
      v47 = v73;
      sub_100A1B358(v19, v73, type metadata accessor for LeashRecord);
      v21 = *(v47 + v45);

      sub_100A1B3C0(v47, type metadata accessor for LeashRecord);
      v13 = *(v21 + 2);
      v22 = v46[2];
      v9 = &v13[v22];
      if (__OFADD__(v22, v13))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v9 <= v46[3] >> 1)
      {
        if (*(v21 + 2))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v22 <= v9)
        {
          v49 = &v13[v22];
        }

        else
        {
          v49 = v22;
        }

        v46 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v49, 1, v46);
        if (*(v21 + 2))
        {
LABEL_24:
          v22 = v46[2];
          v9 = ((v46[3] >> 1) - v22);
          v50 = *(type metadata accessor for UUID() - 8);
          if (v9 < v13)
          {
            goto LABEL_35;
          }

          v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
          v52 = *(v50 + 72);
          swift_arrayInitWithCopy();

          if (v13)
          {
            v53 = v46[2];
            v54 = __OFADD__(v53, v13);
            v55 = &v13[v53];
            if (v54)
            {
              goto LABEL_36;
            }

            v46[2] = v55;
          }

          goto LABEL_14;
        }
      }

      if (v13)
      {
        goto LABEL_34;
      }

LABEL_14:
      v19 += v15;
      if (!--v14)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "No duplicated leash records found, no need to merge.", v58, 2u);
  }
}

void sub_1009E6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v49 = type metadata accessor for LeashRecord();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v49);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v46 = &v41 - v10;
  v48 = v11;
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v41 - v16);
  sub_1000D2A70(a1, &v41 - v16, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B780);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1000136BC(v24, v25, &v51);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create a new merged leash record, bailing out - %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {
    }
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v42 = v17;
    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177B780);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully created a merged leash record, removing existing ones.", v30, 2u);
    }

    v31 = *(a2 + 16);
    if (v31)
    {
      v32 = *(v5 + 80);
      v33 = a2 + ((v32 + 32) & ~v32);
      v44 = *(v5 + 72);
      v45 = v32;
      v34 = (v32 + 16) & ~v32;
      v43 = xmmword_101385D80;
      do
      {
        sub_100A1B358(v33, v13, type metadata accessor for LeashRecord);
        v35 = v46;
        sub_100A1B358(v13, v46, type metadata accessor for LeashRecord);
        v36 = swift_allocObject();
        sub_100A18C9C(v35, v36 + v34, type metadata accessor for LeashRecord);
        static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v37 = swift_allocObject();
        *(v37 + 16) = v43;
        sub_100A1B358(v13, v47, type metadata accessor for LeashRecord);
        v38 = String.init<A>(describing:)();
        v40 = v39;
        *(v37 + 56) = &type metadata for String;
        *(v37 + 64) = sub_100008C00();
        *(v37 + 32) = v38;
        *(v37 + 40) = v40;
        os_log(_:dso:log:_:_:)();

        sub_100B18780(v13, v50, sub_100A1A8A8, v36);

        sub_100A1B3C0(v13, type metadata accessor for LeashRecord);
        v33 += v44;
        --v31;
      }

      while (v31);
    }

    sub_10000B3A8(v42, &qword_1016A78E0, &qword_1013B6888);
  }
}

void sub_1009E7290(char a1, uint64_t a2)
{
  v4 = type metadata accessor for LeashRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B780);
  sub_100A1B358(a2, v7, type metadata accessor for LeashRecord);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    v13 = *(v4 + 20);
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100A1B3C0(v7, type metadata accessor for LeashRecord);
    v17 = sub_1000136BC(v14, v16, &v19);

    *(v11 + 4) = v17;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Removed duplicated leash record: %s: %{BOOL}d.", v11, 0x12u);
    sub_100007BAC(v12);
  }

  else
  {

    sub_100A1B3C0(v7, type metadata accessor for LeashRecord);
  }
}

uint64_t sub_1009E74F8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v2 - 8);
  v3 = *(v85 + 64);
  __chkstk_darwin(v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v84 = *(v6 - 8);
  v7 = *(v84 + 64);
  __chkstk_darwin(v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v105 = *(v10 - 8);
  v11 = *(v105 + 64);
  __chkstk_darwin(v10);
  v83 = v12;
  v97 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SafeLocation();
  v92 = *(v81 - 8);
  v13 = *(v92 + 64);
  v14 = __chkstk_darwin(v81);
  v96 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v95 = &v81 - v17;
  v18 = __chkstk_darwin(v16);
  v103 = &v81 - v19;
  v82 = v20;
  __chkstk_darwin(v18);
  v93 = (&v81 - v21);
  v22 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v86 = &v81 - v24;
  v88 = type metadata accessor for DirectorySequence();
  v87 = *(v88 - 8);
  v25 = *(v87 + 64);
  __chkstk_darwin(v88);
  v89 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for URL();
  v91 = *(v106 - 1);
  v27 = *(v91 + 8);
  v28 = __chkstk_darwin(v106);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v90 = &v81 - v31;
  if (qword_101694B70 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v32 = type metadata accessor for Logger();
    sub_1000076D4(v32, qword_10177B780);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v98 = v10;
    if (v35)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Attempting to clean unused separation alert safe locations", v36, 2u);
    }

    v100 = v6;

    v104 = a1;
    v37 = *(a1 + 168);
    if (qword_101694F88 != -1)
    {
      swift_once();
    }

    v99 = v9;
    v101 = v5;
    v102 = v2;
    v38 = v106;
    v39 = sub_1000076D4(v106, qword_10177C268);
    v9 = v91;
    (*(v91 + 2))(v90, v39, v38);
    aBlock[0] = _swiftEmptyArrayStorage;
    v109 = _swiftEmptyArrayStorage;
    v40 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v41 = v86;
    DirectorySequence.next()();
    v42 = *(v9 + 48);
    if (v42(v41, 1, v38) == 1)
    {
      v10 = 0;
      v43 = v89;
    }

    else
    {
      v44 = v41;
      v10 = 0;
      v45 = *(v9 + 32);
      v9 += 32;
      v94 = v45;
      v43 = v89;
      do
      {
        v94(v30, v44, v38);
        v46 = objc_autoreleasePoolPush();
        sub_1006005CC(v30, v37, aBlock, &v109);
        v47 = v46;
        v38 = v106;
        objc_autoreleasePoolPop(v47);
        (*(v9 - 24))(v30, v38);
        DirectorySequence.next()();
      }

      while (v42(v44, 1, v38) != 1);
    }

    (*(v87 + 8))(v43, v88);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v48 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 1) = xmmword_10138BBE0;
    v49 = aBlock[0];
    v50 = *(aBlock[0] + 16);
    *(v30 + 7) = &type metadata for Int;
    *(v30 + 8) = &protocol witness table for Int;
    *(v30 + 4) = v50;
    sub_100003F64(&qword_1016B14E0, &type metadata accessor for URL);
    v51 = v38;

    v6 = v90;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    *(v30 + 12) = &type metadata for String;
    *(v30 + 13) = sub_100008C00();
    *(v30 + 9) = v52;
    *(v30 + 10) = v54;
    os_log(_:dso:log:_:_:)();

    (*(v91 + 1))(v6, v51);

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v55 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074994(aBlock[0]);

    a1 = *(v49 + 16);
    v2 = v105;
    if (!a1)
    {
      break;
    }

    v5 = 0;
    v106 = _swiftEmptyArrayStorage;
    v56 = v92;
    v57 = v93;
    while (v5 < *(v49 + 16))
    {
      v30 = ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v6 = *(v56 + 72);
      sub_100A1B358(&v30[v49 + v6 * v5], v57, type metadata accessor for SafeLocation);
      sub_1009E83A4(v57);
      if (v58)
      {
        sub_100A18C9C(v57, v95, type metadata accessor for SafeLocation);
        v59 = v106;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112483C(0, v59[2] + 1, 1);
          v56 = v92;
          v59 = aBlock[0];
        }

        v9 = v59[2];
        v61 = v59[3];
        v62 = v59;
        if (v9 >= v61 >> 1)
        {
          sub_10112483C(v61 > 1, v9 + 1, 1);
          v56 = v92;
          v62 = aBlock[0];
        }

        *(v62 + 16) = v9 + 1;
        v106 = v62;
        sub_100A18C9C(v95, &v30[v62 + v9 * v6], type metadata accessor for SafeLocation);
        v57 = v93;
      }

      else
      {
        sub_100A1B3C0(v57, type metadata accessor for SafeLocation);
      }

      if (a1 == ++v5)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v106 = _swiftEmptyArrayStorage;
  v56 = v92;
LABEL_24:

  v63 = v106[2];
  if (v63)
  {
    v64 = v103;
    v95 = &v103[*(v81 + 20)];
    v65 = *(v56 + 80);
    v66 = v106 + ((v65 + 32) & ~v65);
    v94 = v65;
    v92 = *(v104 + 96);
    v93 = ((v65 + 16) & ~v65);
    v91 = v93 + v82;
    v90 = (v2 + 16);
    v89 = *(v56 + 72);
    v88 = v83 + 7;
    v87 = v2 + 32;
    v86 = v108;
    v85 += 8;
    v84 += 8;
    v67 = v98;
    do
    {
      sub_100A1B358(v66, v64, type metadata accessor for SafeLocation);
      v68 = v96;
      sub_100A1B358(v64, v96, type metadata accessor for SafeLocation);
      v69 = swift_allocObject();
      sub_100A18C9C(v68, v93 + v69, type metadata accessor for SafeLocation);
      v70 = v105;
      v71 = v97;
      (*(v105 + 16))(v97, v95, v67);
      v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v73 = (v88 + v72) & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      (*(v70 + 32))(v74 + v72, v71, v67);
      *(v74 + v73) = v104;
      v75 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v75 = sub_100A1A6D4;
      v75[1] = v69;
      v108[2] = sub_100A1B6D4;
      v108[3] = v74;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v108[0] = sub_100006684;
      v108[1] = &unk_101642C08;
      v76 = _Block_copy(aBlock);

      v77 = v99;
      static DispatchQoS.unspecified.getter();
      v109 = _swiftEmptyArrayStorage;
      sub_100003F64(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v79 = v101;
      v78 = v102;
      v64 = v103;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v76);

      (*v85)(v79, v78);
      (*v84)(v77, v100);
      sub_100A1B3C0(v64, type metadata accessor for SafeLocation);

      v66 += v89;
      --v63;
    }

    while (v63);
  }
}

void sub_1009E83A4(uint64_t *a1)
{
  v50 = type metadata accessor for SafeLocation();
  v3 = *(*(v50 - 1) + 64);
  __chkstk_darwin(v50);
  v51 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v49 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v47[-v11];
  v13 = __chkstk_darwin(v10);
  v15 = &v47[-v14];
  v16 = __chkstk_darwin(v13);
  v18 = &v47[-v17];
  __chkstk_darwin(v16);
  v20 = &v47[-v19];
  v21 = objc_autoreleasePoolPush();
  sub_100E7AB5C(a1, v20);
  if (v1)
  {
    objc_autoreleasePoolPop(v21);
    __break(1u);
    goto LABEL_20;
  }

  objc_autoreleasePoolPop(v21);
  v22 = objc_autoreleasePoolPush();
  v52 = a1;
  sub_100D148E0(a1, v18);
  v53 = 0;
  objc_autoreleasePoolPop(v22);
  v23 = static Date.== infix(_:_:)();
  v24 = *(v6 + 8);
  v24(v18, v5);
  v24(v20, v5);
  v48 = v23;
  if ((v23 & 1) == 0)
  {
    v30 = 0;
    v31 = 0;
    v33 = 0;
LABEL_12:
    v35 = v51;
    v34 = v52;
    goto LABEL_13;
  }

  v25 = v52;
  v26 = *(v52 + v50[12]);
  v27 = *(*(v52 + v50[13]) + 16);
  v20 = objc_autoreleasePoolPush();
  v28 = v53;
  sub_100E7AB5C(v25, v12);
  v53 = v28;
  if (v28)
  {
LABEL_20:
    objc_autoreleasePoolPop(v20);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v20);
  Date.addingTimeInterval(_:)();
  v24(v12, v5);
  v29 = v49;
  static Date.trustedNow.getter(v49);
  v30 = static Date.< infix(_:_:)();
  v24(v29, v5);
  v24(v15, v5);
  if (v27)
  {
    v31 = 0;
  }

  else
  {
    v31 = v26 != 2;
  }

  v32 = v26 == 2;
  v33 = v26 == 2;
  if (!v32)
  {
    goto LABEL_12;
  }

  v35 = v51;
  v34 = v52;
  if (v27)
  {
LABEL_13:
    LODWORD(v49) = v30;
    LOBYTE(v30) = 0;
    goto LABEL_14;
  }

  v31 = 1;
  LODWORD(v49) = v30;
  v33 = 1;
LABEL_14:
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000076D4(v36, qword_10177B780);
  sub_100A1B358(v34, v35, type metadata accessor for SafeLocation);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    LODWORD(v52) = v31;
    v40 = v39;
    v41 = swift_slowAlloc();
    v54 = v41;
    *v40 = 136447490;
    v42 = v50[5];
    type metadata accessor for UUID();
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_100A1B3C0(v35, type metadata accessor for SafeLocation);
    v46 = sub_1000136BC(v43, v45, &v54);

    *(v40 + 4) = v46;
    *(v40 + 12) = 1024;
    *(v40 + 14) = v30 & 1;
    *(v40 + 18) = 1024;
    *(v40 + 20) = v48 & 1;
    *(v40 + 24) = 1024;
    *(v40 + 26) = v33;
    *(v40 + 30) = 1024;
    *(v40 + 32) = v52;
    *(v40 + 36) = 1024;
    *(v40 + 38) = v49 & 1;
    _os_log_impl(&_mh_execute_header, v37, v38, "Should cleanup safe location %{public}s: %{BOOL}d\nreasons: (hasNeverBeenModified: %{BOOL}d, hasAlwaysBeenASuggestion: %{BOOL}d, hasNoAssociatedBeacons: %{BOOL}d), hasBeenCreatedLongAgo: %{BOOL}d)", v40, 0x2Au);
    sub_100007BAC(v41);
  }

  else
  {

    sub_100A1B3C0(v35, type metadata accessor for SafeLocation);
  }
}

void sub_1009E890C(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for SafeLocation();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  if (a2)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177B780);
    sub_100A1B358(a3, v10, type metadata accessor for SafeLocation);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_100408170(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = *(v6 + 20);
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_100A1B3C0(v10, type metadata accessor for SafeLocation);
      v22 = sub_1000136BC(v19, v21, &v38);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v37 = v14;
      type metadata accessor for SPSeparationMonitoringError(0);
      sub_100003F64(&qword_1016B1740, type metadata accessor for SPSeparationMonitoringError);
      v23 = Error.localizedDescription.getter();
      v25 = sub_1000136BC(v23, v24, &v38);

      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to remove unused safe location: %s due to error: %s", v17, 0x16u);
      swift_arrayDestroy();

      return;
    }

    v36 = v10;
  }

  else
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B780);
    sub_100A1B358(a3, v12, type metadata accessor for SafeLocation);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      v31 = *(v6 + 20);
      type metadata accessor for UUID();
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_100A1B3C0(v12, type metadata accessor for SafeLocation);
      v35 = sub_1000136BC(v32, v34, &v38);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfuly removed unused safe location: %s", v29, 0xCu);
      sub_100007BAC(v30);

      return;
    }

    v36 = v12;
  }

  sub_100A1B3C0(v36, type metadata accessor for SafeLocation);
}

uint64_t sub_1009E8DEC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DispatchTime();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = type metadata accessor for LeashRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v44 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v39 - v20;
  sub_100ABD310(&v39 - v20);
  if ((*(v12 + 48))(v21, 1, v11) == 1)
  {
    v43 = a2;
    sub_10000B3A8(v21, &qword_1016B1500, &unk_1013C57F0);
    v22 = v15 + *(v11 + 20);
    UUID.init()();
    *v15 = xmmword_10138C660;
    *(v15 + *(v11 + 24)) = _swiftEmptyArrayStorage;
    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    v24 = swift_allocBox();
    v40 = *(v12 + 56);
    v41 = v25;
    v40(v25, 1, 1, v11);
    v26 = v23;
    v42 = v24;
    sub_100B19F38(v15, 0, a1, v24, v26);

    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = *(v45 + 8);
    v28 = v8;
    v29 = v46;
    v27(v28, v46);
    OS_dispatch_group.wait(timeout:)();
    v27(v10, v29);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000076D4(v30, qword_10177B780);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to create new leash record due to timeout", v33, 2u);

        v34 = v26;
      }

      else
      {
        v34 = v31;
        v31 = v26;
      }

      sub_100A1B3C0(v15, type metadata accessor for LeashRecord);
      v38 = v44;
      v40(v44, 1, 1, v11);
      v37 = v41;
      swift_beginAccess();
      sub_10002311C(v38, v37, &qword_1016B1500, &unk_1013C57F0);
      v36 = v43;
    }

    else
    {
      sub_100A1B3C0(v15, type metadata accessor for LeashRecord);

      v36 = v43;
      v37 = v41;
    }

    swift_beginAccess();
    sub_1000D2A70(v37, v36, &qword_1016B1500, &unk_1013C57F0);
  }

  else
  {
    sub_100A18C9C(v21, a2, type metadata accessor for LeashRecord);
    return (*(v12 + 56))(a2, 0, 1, v11);
  }
}

void sub_1009E9304(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v36 = type metadata accessor for LeashRecord();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v34 - v15);
  v17 = swift_projectBox();
  sub_1000D2A70(a1, v16, &qword_1016A78E0, &qword_1013B6888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B780);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v22 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = v12;
      v26 = v5;
      v27 = v17;
      v28 = a3;
      v29 = sub_1000136BC(v23, v24, &v37);

      *(v22 + 4) = v29;
      a3 = v28;
      v17 = v27;
      v5 = v26;
      v12 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create new leash record due to: %s", v22, 0xCu);
      sub_100007BAC(v35);
    }

    else
    {
    }

    (*(v5 + 56))(v12, 1, 1, v36);
  }

  else
  {
    sub_100A18C9C(v16, v8, type metadata accessor for LeashRecord);
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177B780);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Successfuly created new leash record.", v33, 2u);
    }

    sub_100A18C9C(v8, v12, type metadata accessor for LeashRecord);
    (*(v5 + 56))(v12, 0, 1, v36);
  }

  swift_beginAccess();
  sub_10002311C(v12, v17, &qword_1016B1500, &unk_1013C57F0);
  dispatch_group_leave(a3);
}

uint64_t sub_1009E979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100A1B7AC;
  *(v8 + 24) = v7;

  sub_1009C99E8(a4, sub_100A1B7B0, v8, &unk_101642178, sub_100A18D54, &unk_101642190);
}

uint64_t sub_1009E9880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  (*(v9 + 32))(v12 + v11, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v13 = sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  result = Future.init(_:)();
  *a4 = result;
  return result;
}

uint64_t sub_1009E9A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100A1B7AC;
  *(v10 + 24) = v9;

  sub_1009CAAD0(a4, a5, sub_100A1B7B0, v10, &unk_101642A10, sub_100A19E04, &unk_101642A28);
}

uint64_t sub_1009E9B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for SafeLocation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_100A1B358(a2, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SafeLocation);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  sub_100A18C9C(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SafeLocation);
  *(v12 + v11 + v10) = a3;
  v13 = sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  result = Future.init(_:)();
  *a4 = result;
  return result;
}

uint64_t sub_1009E9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100A1B7AC;
  *(v10 + 24) = v9;

  sub_1009C9D88(a4, a5, sub_100A190A0, v10);
}

uint64_t sub_1009E9D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(type metadata accessor for SafeLocation() + 20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100A1B7AC;
  *(v9 + 24) = v7;

  sub_1009CA164(a4 + v8, sub_100A1B7B0, v9);
}

uint64_t sub_1009E9E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for SafeLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_100A1B358(a2, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SafeLocation);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_100A18C9C(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SafeLocation);
  v11 = sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  result = Future.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_1009E9FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100A1B7AC;
  *(v8 + 24) = v7;

  sub_1009CA64C(a4, sub_100A1B7B0, v8);
}

uint64_t sub_1009EA094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  result = Future.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_1009EA130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100A1B7AC;
  *(v8 + 24) = v7;

  sub_1009C8978(a4, sub_100A1B7B0, v8);
}

void sub_1009EA1F0(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v134 = a6;
  v133 = a5;
  v146 = a4;
  v141 = a3;
  v142 = a2;
  v152 = a7;
  v130 = sub_1000BC4D4(&qword_1016B1508, &qword_1013D0A68);
  v10 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v128 = &v122 - v11;
  v12 = type metadata accessor for DispatchTime();
  v137 = *(v12 - 8);
  v138 = v12;
  v13 = *(v137 + 64);
  v14 = __chkstk_darwin(v12);
  v135 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v136 = &v122 - v16;
  v17 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v140 = &v122 - v19;
  v139 = type metadata accessor for LeashRecord();
  v20 = *(v139 - 8);
  v21 = *(v20 + 8);
  v22 = __chkstk_darwin(v139);
  v132 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v23;
  __chkstk_darwin(v22);
  v25 = (&v122 - v24);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v127 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v126 = &v122 - v32;
  v33 = __chkstk_darwin(v31);
  v129 = &v122 - v34;
  __chkstk_darwin(v33);
  v36 = &v122 - v35;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_10177B780);
  v39 = v27[2];
  v148 = a1;
  v143 = v39;
  v144 = v27 + 2;
  v39(v36, a1, v26);
  v145 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v150 = v26;
  v151 = v25;
  v149 = v27;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v125 = v20;
    v45 = v44;
    v154 = v44;
    *v43 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v147 = v27[1];
    v147(v36, v26);
    v49 = sub_1000136BC(v46, v48, &v154);
    v8 = v7;

    *(v43 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Executing synced modify operation with identifier: %s", v43, 0xCu);
    sub_100007BAC(v45);
    v20 = v125;

    v25 = v151;
  }

  else
  {

    v147 = v27[1];
    v147(v36, v26);
  }

  v50 = dispatch_group_create();
  v51 = v140;
  v142();
  if ((*(v20 + 6))(v51, 1, v139) == 1)
  {
    sub_10000B3A8(v51, &qword_1016B1500, &unk_1013C57F0);
    v52 = v129;
    v53 = v150;
    v143(v129, v148, v150);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v154 = v57;
      *v56 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v52;
      v61 = v60;
      v147(v59, v53);
      v62 = sub_1000136BC(v58, v61, &v154);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Synced modify operation with identifier: %s failed due to missing record.", v56, 0xCu);
      sub_100007BAC(v57);
    }

    else
    {

      v147(v52, v53);
    }

    sub_100139CA0();
    v103 = swift_allocError();
    *v104 = 11;

    *v152 = v103;
    sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_100A18C9C(v51, v25, type metadata accessor for LeashRecord);
    v63 = swift_allocBox();
    v65 = v64;
    v66 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
    v124 = *(v66 - 8);
    v67 = *(v124 + 56);
    v123 = v65;
    v67(v65, 1, 1, v66);
    dispatch_group_enter(v50);
    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    *(v68 + 24) = v50;
    v130 = v68;
    v141 = v63;

    v69 = v50;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v139 = v69;
    v140 = v66;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_101385D80;
    *(v70 + 56) = &type metadata for String;
    *(v70 + 64) = sub_100008C00();
    *(v70 + 32) = 0x65736C6166;
    *(v70 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v71 = objc_autoreleasePoolPush();
    sub_101121434(v25);
    if (v8)
    {
      objc_autoreleasePoolPop(v71);
      __break(1u);
    }

    else
    {
      v73 = v72;
      objc_autoreleasePoolPop(v71);
      v74 = *(v146 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v142 = 0;
      v125 = type metadata accessor for LeashRecord;
      v75 = v25;
      v76 = v25;
      v77 = v132;
      sub_100A1B358(v75, v132, type metadata accessor for LeashRecord);
      v78 = *(v20 + 80);
      v79 = v131;
      v80 = swift_allocObject();
      v81 = v134;
      *(v80 + 16) = v133;
      *(v80 + 24) = v81;
      v133 = type metadata accessor for LeashRecord;
      sub_100A18C9C(v77, v80 + ((v78 + 32) & ~v78), type metadata accessor for LeashRecord);

      v129 = v73;
      sub_100FDCA40(v73, sub_100A18848, v80);

      v82 = swift_allocObject();
      v83 = v130;
      *(v82 + 16) = sub_100A1880C;
      *(v82 + 24) = v83;

      Future.addFailure(block:)();

      sub_100A1B358(v76, v77, v125);
      v84 = (v78 + 16) & ~v78;
      v85 = (v79 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      sub_100A18C9C(v77, v86 + v84, v133);
      *(v86 + v85) = v146;
      v87 = (v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v87 = sub_100A1880C;
      v87[1] = v83;

      Future.addSuccess(block:)();

      v88 = v135;
      static DispatchTime.now()();
      v89 = v136;
      + infix(_:_:)();
      v90 = v138;
      v91 = *(v137 + 8);
      v91(v88, v138);
      v92 = v139;
      OS_dispatch_group.wait(timeout:)();
      v91(v89, v90);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v93 = v126;
        v94 = v150;
        v143(v126, v148, v150);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v154 = v98;
          *v97 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
          v99 = dispatch thunk of CustomStringConvertible.description.getter();
          v101 = v100;
          v147(v93, v94);
          v102 = sub_1000136BC(v99, v101, &v154);

          *(v97 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v95, v96, "Synced modify operation with identifier: %s failed due to timeout.", v97, 0xCu);
          sub_100007BAC(v98);
        }

        else
        {

          v147(v93, v94);
        }

        v115 = v151;
        type metadata accessor for SPSeparationMonitoringError(0);
        v155 = 19;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
        _BridgedStoredNSError.init(_:userInfo:)();

        sub_100A1B3C0(v115, type metadata accessor for LeashRecord);
        *v152 = v154;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v105 = v127;
        v106 = v150;
        v143(v127, v148, v150);
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v154 = v110;
          *v109 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v113 = v112;
          v147(v105, v106);
          v114 = sub_1000136BC(v111, v113, &v154);

          *(v109 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v107, v108, "Finished synced modify operation with identifier: %s.", v109, 0xCu);
          sub_100007BAC(v110);
        }

        else
        {

          v147(v105, v106);
        }

        v116 = v151;
        v117 = v128;
        v118 = v140;
        v119 = v124;
        v120 = v123;
        swift_beginAccess();
        sub_1000D2A70(v120, v117, &qword_1016B1508, &qword_1013D0A68);
        v121 = *(v119 + 48);
        if (v121(v117, 1, v118) == 1)
        {
          type metadata accessor for SPSeparationMonitoringError(0);
          v153 = 0;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
          _BridgedStoredNSError.init(_:userInfo:)();

          sub_100A1B3C0(v116, type metadata accessor for LeashRecord);
          *v152 = v155;
          swift_storeEnumTagMultiPayload();
          if (v121(v117, 1, v118) != 1)
          {
            sub_10000B3A8(v117, &qword_1016B1508, &qword_1013D0A68);
          }
        }

        else
        {
          sub_100A1B3C0(v116, type metadata accessor for LeashRecord);

          sub_1000D2AD8(v117, v152, &qword_1016A78E0, &qword_1013B6888);
        }
      }
    }
  }
}

void sub_1009EB388(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v134 = a6;
  v133 = a5;
  v146 = a4;
  v141 = a3;
  v142 = a2;
  v152 = a7;
  v130 = sub_1000BC4D4(&unk_1016B14A0, &unk_1013D68C0);
  v10 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v128 = &v122 - v11;
  v12 = type metadata accessor for DispatchTime();
  v137 = *(v12 - 8);
  v138 = v12;
  v13 = *(v137 + 64);
  v14 = __chkstk_darwin(v12);
  v135 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v136 = &v122 - v16;
  v17 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v140 = &v122 - v19;
  v139 = type metadata accessor for SafeLocation();
  v20 = *(v139 - 8);
  v21 = *(v20 + 8);
  v22 = __chkstk_darwin(v139);
  v132 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v23;
  __chkstk_darwin(v22);
  v25 = (&v122 - v24);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v127 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v126 = &v122 - v32;
  v33 = __chkstk_darwin(v31);
  v129 = &v122 - v34;
  __chkstk_darwin(v33);
  v36 = &v122 - v35;
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_1000076D4(v37, qword_10177B780);
  v39 = v27[2];
  v148 = a1;
  v143 = v39;
  v144 = v27 + 2;
  v39(v36, a1, v26);
  v145 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v150 = v26;
  v151 = v25;
  v149 = v27;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v125 = v20;
    v45 = v44;
    v154 = v44;
    *v43 = 136315138;
    sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v147 = v27[1];
    v147(v36, v26);
    v49 = sub_1000136BC(v46, v48, &v154);
    v8 = v7;

    *(v43 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Executing synced modify operation with identifier: %s", v43, 0xCu);
    sub_100007BAC(v45);
    v20 = v125;

    v25 = v151;
  }

  else
  {

    v147 = v27[1];
    v147(v36, v26);
  }

  v50 = dispatch_group_create();
  v51 = v140;
  v142();
  if ((*(v20 + 6))(v51, 1, v139) == 1)
  {
    sub_10000B3A8(v51, &unk_1016AFA10, &qword_1013CB000);
    v52 = v129;
    v53 = v150;
    v143(v129, v148, v150);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v154 = v57;
      *v56 = 136315138;
      sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v52;
      v61 = v60;
      v147(v59, v53);
      v62 = sub_1000136BC(v58, v61, &v154);

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Synced modify operation with identifier: %s failed due to missing record.", v56, 0xCu);
      sub_100007BAC(v57);
    }

    else
    {

      v147(v52, v53);
    }

    sub_100139CA0();
    v103 = swift_allocError();
    *v104 = 11;

    *v152 = v103;
    sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_100A18C9C(v51, v25, type metadata accessor for SafeLocation);
    v63 = swift_allocBox();
    v65 = v64;
    v66 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
    v124 = *(v66 - 8);
    v67 = *(v124 + 56);
    v123 = v65;
    v67(v65, 1, 1, v66);
    dispatch_group_enter(v50);
    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    *(v68 + 24) = v50;
    v130 = v68;
    v141 = v63;

    v69 = v50;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v139 = v69;
    v140 = v66;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_101385D80;
    *(v70 + 56) = &type metadata for String;
    *(v70 + 64) = sub_100008C00();
    *(v70 + 32) = 0x65736C6166;
    *(v70 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v71 = objc_autoreleasePoolPush();
    sub_101121764(v25);
    if (v8)
    {
      objc_autoreleasePoolPop(v71);
      __break(1u);
    }

    else
    {
      v73 = v72;
      objc_autoreleasePoolPop(v71);
      v74 = *(v146 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v142 = 0;
      v125 = type metadata accessor for SafeLocation;
      v75 = v25;
      v76 = v25;
      v77 = v132;
      sub_100A1B358(v75, v132, type metadata accessor for SafeLocation);
      v78 = *(v20 + 80);
      v79 = v131;
      v80 = swift_allocObject();
      v81 = v134;
      *(v80 + 16) = v133;
      *(v80 + 24) = v81;
      v133 = type metadata accessor for SafeLocation;
      sub_100A18C9C(v77, v80 + ((v78 + 32) & ~v78), type metadata accessor for SafeLocation);

      v129 = v73;
      sub_100FDCA40(v73, sub_100A0752C, v80);

      v82 = swift_allocObject();
      v83 = v130;
      *(v82 + 16) = sub_100A074F0;
      *(v82 + 24) = v83;

      Future.addFailure(block:)();

      sub_100A1B358(v76, v77, v125);
      v84 = (v78 + 16) & ~v78;
      v85 = (v79 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      sub_100A18C9C(v77, v86 + v84, v133);
      *(v86 + v85) = v146;
      v87 = (v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v87 = sub_100A074F0;
      v87[1] = v83;

      Future.addSuccess(block:)();

      v88 = v135;
      static DispatchTime.now()();
      v89 = v136;
      + infix(_:_:)();
      v90 = v138;
      v91 = *(v137 + 8);
      v91(v88, v138);
      v92 = v139;
      OS_dispatch_group.wait(timeout:)();
      v91(v89, v90);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v93 = v126;
        v94 = v150;
        v143(v126, v148, v150);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v154 = v98;
          *v97 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
          v99 = dispatch thunk of CustomStringConvertible.description.getter();
          v101 = v100;
          v147(v93, v94);
          v102 = sub_1000136BC(v99, v101, &v154);

          *(v97 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v95, v96, "Synced modify operation with identifier: %s failed due to timeout.", v97, 0xCu);
          sub_100007BAC(v98);
        }

        else
        {

          v147(v93, v94);
        }

        v115 = v151;
        type metadata accessor for SPSeparationMonitoringError(0);
        v155 = 19;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
        _BridgedStoredNSError.init(_:userInfo:)();

        sub_100A1B3C0(v115, type metadata accessor for SafeLocation);
        *v152 = v154;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v105 = v127;
        v106 = v150;
        v143(v127, v148, v150);
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v154 = v110;
          *v109 = 136315138;
          sub_100003F64(&qword_101696930, &type metadata accessor for UUID);
          v111 = dispatch thunk of CustomStringConvertible.description.getter();
          v113 = v112;
          v147(v105, v106);
          v114 = sub_1000136BC(v111, v113, &v154);

          *(v109 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v107, v108, "Finished synced modify operation with identifier: %s.", v109, 0xCu);
          sub_100007BAC(v110);
        }

        else
        {

          v147(v105, v106);
        }

        v116 = v151;
        v117 = v128;
        v118 = v140;
        v119 = v124;
        v120 = v123;
        swift_beginAccess();
        sub_1000D2A70(v120, v117, &unk_1016B14A0, &unk_1013D68C0);
        v121 = *(v119 + 48);
        if (v121(v117, 1, v118) == 1)
        {
          type metadata accessor for SPSeparationMonitoringError(0);
          v153 = 0;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003F64(&qword_101696490, type metadata accessor for SPSeparationMonitoringError);
          _BridgedStoredNSError.init(_:userInfo:)();

          sub_100A1B3C0(v116, type metadata accessor for SafeLocation);
          *v152 = v155;
          swift_storeEnumTagMultiPayload();
          if (v121(v117, 1, v118) != 1)
          {
            sub_10000B3A8(v117, &unk_1016B14A0, &unk_1013D68C0);
          }
        }

        else
        {
          sub_100A1B3C0(v116, type metadata accessor for SafeLocation);

          sub_1000D2AD8(v117, v152, &unk_1016B1480, &qword_1013B6890);
        }
      }
    }
  }
}

void sub_1009EC520(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = sub_1000BC4D4(a4, a5);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v19 - v15;
  v17 = swift_projectBox();
  sub_1000D2A70(a1, v16, a6, a7);
  v18 = sub_1000BC4D4(a6, a7);
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  swift_beginAccess();
  sub_10002311C(v16, v17, a4, a5);
  dispatch_group_leave(a3);
}

void *sub_1009EC650()
{
  v1 = v0;
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v29 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  result = sub_100025044();
  v33 = result[2];
  if (v33)
  {
    v10 = 0;
    v26[2] = 0x80000001013480F0;
    v26[3] = 0x8000000101348120;
    v26[1] = 0x8000000101348010;
    v26[0] = 0x8000000101347FF0;
    v30 = _swiftEmptyArrayStorage;
    v31 = v8;
    v27 = v3;
    v28 = v0;
    v32 = result;
    while (v10 < result[2])
    {
      v35 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v34 = *(v3 + 72);
      sub_100A1B358(result + v35 + v34 * v10, v8, type metadata accessor for OwnedBeaconRecord);
      v11 = sub_1006FD6D0(v8, v1);
      v12 = v11;
      if (!v11[2] || (v13 = v11[5], Hasher.init(_seed:)(), String.hash(into:)(), v14 = Hasher._finalize()(), v15 = -1 << *(v12 + 32), v16 = v14 & ~v15, ((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) == 0))
      {

        v8 = v31;
        sub_100A1B3C0(v31, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      v17 = ~v15;
      while (2)
      {
        switch(*(v12[6] + v16))
        {
          case 1:
            v18 = &v37;
            goto LABEL_12;
          case 2:
            v18 = &v38;
LABEL_12:
            v19 = *(v18 - 32);
            goto LABEL_13;
          case 8:

            goto LABEL_17;
          default:
LABEL_13:
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v20 & 1) == 0)
            {
              v16 = (v16 + 1) & v17;
              if (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v16) & 1) == 0)
              {

                v8 = v31;
                sub_100A1B3C0(v31, type metadata accessor for OwnedBeaconRecord);
                v3 = v27;
                v1 = v28;
                goto LABEL_4;
              }

              continue;
            }

LABEL_17:

            v8 = v31;
            sub_100A18C9C(v31, v29, type metadata accessor for OwnedBeaconRecord);
            v21 = v30;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = v21;
            v3 = v27;
            v1 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10112434C(0, v21[2] + 1, 1);
              v21 = v36;
            }

            v24 = v21[2];
            v23 = v21[3];
            if (v24 >= v23 >> 1)
            {
              sub_10112434C(v23 > 1, v24 + 1, 1);
              v21 = v36;
            }

            v21[2] = v24 + 1;
            v30 = v21;
            sub_100A18C9C(v29, v21 + v35 + v24 * v34, type metadata accessor for OwnedBeaconRecord);
LABEL_4:
            ++v10;
            result = v32;
            if (v10 == v33)
            {
              goto LABEL_23;
            }

            break;
        }

        break;
      }
    }

    __break(1u);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_23:

    v25 = sub_1000257D0(v30);

    return v25;
  }

  return result;
}

Swift::Int sub_1009ECCC4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009ECD38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009ECDB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009ECE14()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009ECF24(id *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(id), void (*a7)(id *, char *), uint64_t (*a8)(void))
{
  v13 = a5(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v18 - v15;
  a6(*a1);
  a2(v16);
  a7(a1, v16);
  return sub_100A1B3C0(v16, a8);
}

uint64_t sub_1009ED258(id *a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for KeyAlignmentRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100150FC8(*a1, v7);
  a2(v7);
  sub_100152D44(v7, a1);
  return sub_100A1B3C0(v7, type metadata accessor for KeyAlignmentRecord);
}

uint64_t sub_1009ED448(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v17[1] = a3;
  v18 = a2;
  v8 = sub_1000BC4D4(a4, a5);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v17 - v10);
  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v19 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v18(v11);
  return sub_10000B3A8(v11, a4, a5);
}

uint64_t sub_1009ED674(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100518A90(a1, v14);
  v15 = *(a3 + 168);
  sub_1009F10FC(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for OwnedBeaconGroup);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &qword_101699398, &qword_101391900);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1009ED964(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  v11 = type metadata accessor for SharedBeaconRecord(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1011D5D0C(a1, v14);
  v15 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v16 = *(a3 + 168);
  sub_1009F1368(v14);
  sub_100A8306C(8);
  sub_100A1B358(v14, v10, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  a4(v10);
  sub_10000B3A8(v10, &qword_101699BC8, &qword_1013926D8);
  sub_100A8375C();
  return sub_100A1B3C0(v14, type metadata accessor for SharedBeaconRecord);
}