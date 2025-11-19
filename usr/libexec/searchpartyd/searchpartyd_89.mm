uint64_t sub_100959384()
{
  if (*(v0 + 88) == 1)
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_100959454;

    return daemon.getter();
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100959454(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService);
  *v6 = v12;
  v6[1] = sub_100959630;

  return ActorServiceDaemon.getService<A>()(v7, MyServiceDeviceStoreService, v9, v10);
}

uint64_t sub_100959630(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  v8 = *(v4 + 48);
  if (v1)
  {

    v9 = sub_100959A10;
  }

  else
  {

    *(v5 + 64) = a1;
    v9 = sub_100959784;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100959784()
{
  v1 = v0[8];

  v2 = v0[3];
  if (*(v2 + 24))
  {
    v3 = v0[4];
    v4 = v0[2];
    type metadata accessor for Transaction();
    v5 = swift_task_alloc();
    v0[9] = v5;
    v5[2] = v2;
    v5[3] = v3;
    v5[4] = v4;
    v6 = async function pointer to static Transaction.named<A>(_:with:)[1];
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1009598D4;

    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1009598D4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 72);

    return _swift_task_switch(j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF, 0, 0);
  }
}

uint64_t sub_100959A10()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[4];
    v3 = v0[2];
    type metadata accessor for Transaction();
    v4 = swift_task_alloc();
    v0[9] = v4;
    v4[2] = v1;
    v4[3] = v2;
    v4[4] = v3;
    v5 = async function pointer to static Transaction.named<A>(_:with:)[1];
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1009598D4;

    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100959B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  return _swift_task_switch(sub_100959B7C, 0, 0);
}

uint64_t sub_100959B7C()
{
  v19 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
  sub_1009871D4(v2, (v0 + 2));

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_1007206EC(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315394;
    if (*(v6 + 16))
    {
      v8 = *(v0[11] + 8);
      v9 = *(v6 + 16);
    }

    else
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    v10 = v0[12];

    v11 = sub_1000136BC(v8, v9, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = XPCSession.debugDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v18);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Refreshing all beacons for connected client %s, %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
  }

  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_100959DB8;
  v16 = v0[13];

  return sub_10095D31C();
}

uint64_t sub_100959DB8()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100959EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v106 = a1;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v110 = &v90 - v7;
  v8 = sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0);
  v111 = *(v8 - 8);
  v112 = v8;
  v9 = *(v111 + 64);
  v10 = __chkstk_darwin(v8);
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v11;
  __chkstk_darwin(v10);
  v13 = &v90 - v12;
  v109 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v14 = *(v109 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v109);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v102 = &v90 - v25;
  __chkstk_darwin(v24);
  v27 = &v90 - v26;
  v28 = sub_1000BC4D4(&qword_1016AF978, &qword_1013CAE60);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v31 = __chkstk_darwin(v30);
  v34 = &v90 - v33;
  v105 = a2;
  v35 = *(a2 + 64);
  v108 = v13;
  v104 = v18;
  v103 = v19;
  v91 = v23;
  if (v35)
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_18:
    v67 = *(v3 + 232);
    sub_1000BC4D4(&qword_1016AF998, &qword_1013CAEB8);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_101385D80;
    *(v68 + 32) = v36;
    AsyncStreamProvider.stream(initialEvents:)();

    v69 = v106;
    XPCSession.proxy.getter();
    v115 = v117[0];
    v70 = type metadata accessor for TaskPriority();
    (*(*(v70 - 8) + 56))(v110, 1, 1, v70);
    v72 = v111;
    v71 = v112;
    v73 = v101;
    (*(v111 + 16))(v101, v13, v112);
    v114 = sub_100985CA0(&unk_1016AF830, type metadata accessor for SimpleBeaconUpdateService);
    v74 = (*(v72 + 80) + 112) & ~*(v72 + 80);
    v75 = v3;
    v76 = (v100 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v78 = v105;
    v79 = *v105;
    *(v77 + 56) = v105[1];
    v80 = *(v78 + 48);
    *(v77 + 72) = *(v78 + 32);
    *(v77 + 88) = v80;
    v81 = v114;
    *(v77 + 16) = v75;
    *(v77 + 24) = v81;
    *(v77 + 32) = v69;
    *(v77 + 104) = *(v78 + 64);
    *(v77 + 40) = v79;
    (*(v72 + 32))(v77 + v74, v73, v71);
    *(v77 + v76) = v75;
    *(v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v115;
    swift_retain_n();

    sub_1009871D4(v78, v117);
    swift_unknownObjectRetain();
    v82 = sub_100A838D4(0, 0, v110, &unk_1013CAEC8, v77);
    v83 = v102;
    XPCSession.identifier.getter();
    v84 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_sessionUpdateTasks;
    swift_beginAccess();

    v85 = *(v75 + v84);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = *(v75 + v84);
    *(v75 + v84) = 0x8000000000000000;
    sub_100FFF724(v82, v83, isUniquelyReferenced_nonNull_native);
    v87 = v103[1];
    v88 = v104;
    v87(v83, v104);
    *(v75 + v84) = v116;
    swift_endAccess();
    if ((*(v78 + 1) & 2) != 0)
    {
      v89 = v91;
      XPCSession.identifier.getter();
      swift_beginAccess();
      sub_100DE8BCC(v83, v89);
      v87(v83, v88);
      swift_endAccess();
      swift_unknownObjectRelease();

      return (*(v111 + 8))(v108, v112);
    }

    else
    {
      (*(v111 + 8))(v108, v112);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v97 = v32;
    v98 = v31;
    v114 = v27;
    v115 = v17;
    v37 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    swift_beginAccess();
    v90 = v3;
    v38 = *(v3 + v37);
    v39 = v38 + 64;
    v40 = 1 << *(v38 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v38 + 64);
    v43 = (v40 + 63) >> 6;
    v95 = v19 + 2;
    v93 = v19 + 4;
    v92 = (v19 + 1);
    v107 = v38;
    result = swift_bridgeObjectRetain_n();
    v45 = 0;
    v46 = v34;
    v36 = _swiftEmptyArrayStorage;
    v94 = v39;
    v99 = v14;
    for (i = v46; v42; result = sub_100986170(v115, v36 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v66, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange))
    {
      v113 = v36;
LABEL_11:
      v48 = __clz(__rbit64(v42)) | (v45 << 6);
      v49 = v107;
      v50 = v19[2];
      v50(v46, *(v107 + 48) + v19[9] * v48, v18);
      v51 = *(v49 + 56) + 16 * v48;
      v53 = *v51;
      v52 = *(v51 + 8);
      v54 = v98;
      v55 = (v46 + *(v98 + 48));
      *v55 = v53;
      v55[1] = v52;
      v56 = v46;
      v57 = v97;
      sub_1000D2A70(v56, v97, &qword_1016AF978, &qword_1013CAE60);
      v58 = *(v54 + 48);
      v59 = v19;
      v60 = v18;
      v61 = *(v57 + v58);
      v62 = v53;

      v18 = v60;
      v19 = v59;
      v63 = v59[4];
      v64 = v114;
      v63(v114, v57, v18);
      v50(v115, v64, v18);
      swift_storeEnumTagMultiPayload();
      v36 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100A5D9E8(0, v36[2] + 1, 1, v36);
      }

      v66 = v36[2];
      v65 = v36[3];
      v46 = i;
      v39 = v94;
      if (v66 >= v65 >> 1)
      {
        v36 = sub_100A5D9E8(v65 > 1, v66 + 1, 1, v36);
      }

      v42 &= v42 - 1;
      (*v92)(v114, v18);
      sub_10000B3A8(v46, &qword_1016AF978, &qword_1013CAE60);
      v36[2] = v66 + 1;
    }

    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v43)
      {

        v3 = v90;
        v13 = v108;
        goto LABEL_18;
      }

      v42 = *(v39 + 8 * v47);
      ++v45;
      if (v42)
      {
        v113 = v36;
        v45 = v47;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10095A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[32] = a4;
  v10 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v8[37] = v10;
  v11 = *(v10 - 8);
  v8[38] = v11;
  v12 = *(v11 + 64) + 15;
  v8[39] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v8[40] = v13;
  v14 = *(v13 - 8);
  v8[41] = v14;
  v15 = *(v14 + 64) + 15;
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_1016AF9A0, &qword_1013CAED0);
  v8[46] = v16;
  v17 = *(v16 - 8);
  v8[47] = v17;
  v18 = *(v17 + 64) + 15;
  v8[48] = swift_task_alloc();

  return _swift_task_switch(sub_10095AA08, a7, 0);
}

uint64_t sub_10095AA08()
{
  v25 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = type metadata accessor for Logger();
  *(v0 + 392) = sub_1000076D4(v3, qword_10177B740);

  sub_1009871D4(v1, v0 + 16);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  sub_1007206EC(v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = XPCSession.debugDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v24);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    if (*(v7 + 16))
    {
      v12 = *(*(v0 + 264) + 8);
      v13 = *(v7 + 16);
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = sub_1000136BC(v12, v13, &v24);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session %{public}s, %{public}s is subscribed.", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v0 + 384);
  v16 = *(v0 + 272);
  sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0);
  AsyncStream.makeAsyncIterator()();
  v17 = sub_100985CA0(&unk_1016AF830, type metadata accessor for SimpleBeaconUpdateService);
  *(v0 + 424) = 257;
  *(v0 + 400) = v17;
  *(v0 + 408) = 0;
  v18 = *(v0 + 280);
  v19 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v20 = swift_task_alloc();
  *(v0 + 416) = v20;
  *v20 = v0;
  v20[1] = sub_10095ACC8;
  v21 = *(v0 + 384);
  v22 = *(v0 + 368);

  return AsyncStream.Iterator.next(isolation:)(v0 + 208, v18, v17, v22);
}

uint64_t sub_10095ACC8()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return _swift_task_switch(sub_10095ADD8, v2, 0);
}

uint64_t sub_10095ADD8()
{
  v1 = v0 + 208;
  if (!*(v0 + 208))
  {
    v10 = *(v0 + 360);
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v13 = *(v0 + 336);
    v14 = *(v0 + 312);
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

    v9 = *(v0 + 8);
    goto LABEL_5;
  }

  v100 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 408);
  static Task<>.checkCancellation()();
  if (v3)
  {
    v4 = *(v0 + 360);
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v7 = *(v0 + 336);
    v8 = *(v0 + 312);
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

    v9 = *(v0 + 8);
LABEL_5:

    return v9();
  }

  v16 = (v0 + 424);
  *(v0 + 224) = _swiftEmptyArrayStorage;
  *(v0 + 232) = _swiftEmptyArrayStorage;
  v17 = *(v2 + 16);
  if (v17)
  {
    v18 = *(v0 + 304);
    v19 = v2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));

    swift_beginAccess();
    v106 = *(v18 + 72);
    v107 = _swiftEmptyArrayStorage;
    v103 = _swiftEmptyArrayStorage;
    do
    {
      v20 = *(v0 + 328);
      v21 = *(v0 + 296);
      sub_1009863FC(v19, *(v0 + 312), type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v23 = *(v20 + 32);
      if (EnumCaseMultiPayload > 1)
      {
        v52 = *(v0 + 336);
        v53 = *(v0 + 344);
        v54 = *(v0 + 320);
        v55 = *(v0 + 328);
        v23(v53, *(v0 + 312), v54);
        (*(v55 + 16))(v52, v53, v54);
        v56 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_100A5BFE0(0, v107[2] + 1, 1, v107);
        }

        v58 = v56[2];
        v57 = v56[3];
        if (v58 >= v57 >> 1)
        {
          v107 = sub_100A5BFE0(v57 > 1, v58 + 1, 1, v56);
        }

        else
        {
          v107 = v56;
        }

        v59 = *(v0 + 336);
        v60 = *(v0 + 344);
        v61 = *(v0 + 320);
        v62 = *(v0 + 328);
        v107[2] = v58 + 1;
        v23(v107 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v58, v59, v61);
        *(v0 + 232) = v107;
        (*(v62 + 8))(v60, v61);
        v1 = v0 + 208;
      }

      else
      {
        v24 = *(v0 + 360);
        v25 = *(v0 + 280);
        v26 = *(v0 + 264);
        v23(v24, *(v0 + 312), *(v0 + 320));
        v27 = sub_1009570CC(v26, v24);
        if (v27)
        {
          v28 = v27;
          v29 = *(v0 + 392);
          v30 = *(v0 + 360);
          v31 = *(v0 + 320);
          v32 = *(v0 + 328);
          (*(v32 + 16))(*(v0 + 352), v30, v31);
          v33 = v28;
          v34 = Logger.logObject.getter();
          LOBYTE(v28) = static os_log_type_t.debug.getter();
          v35 = v30;
          v36 = v34;
          v104 = *(v32 + 8);
          v104(v35, v31);
          v105 = v33;

          v102 = v28;
          v37 = os_log_type_enabled(v34, v28);
          v38 = *(v0 + 352);
          v39 = *(v0 + 320);
          if (v37)
          {
            log = v36;
            v40 = swift_slowAlloc();
            *(v1 + 40) = swift_slowAlloc();
            *v40 = 136315394;
            sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
            v41 = dispatch thunk of CustomStringConvertible.description.getter();
            v42 = v1;
            v44 = v43;
            v104(v38, v39);
            v45 = sub_1000136BC(v41, v44, (v42 + 40));

            *(v40 + 4) = v45;
            *(v40 + 12) = 2080;
            v46 = v105;
            v47 = [v105 name];
            if (v47)
            {
              v48 = v47;
              v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v50;
            }

            else
            {
              v51 = 0xE90000000000003ELL;
              v49 = 0x64656D616E6E753CLL;
            }

            v1 = v0 + 208;
            v63 = sub_1000136BC(v49, v51, (v0 + 248));

            *(v40 + 14) = v63;
            _os_log_impl(&_mh_execute_header, log, v102, "Session got beacon %s, name: %s", v40, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v104(v38, v39);
            v46 = v33;
          }

          swift_beginAccess();
          v64 = v46;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v65 = *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v103 = *(v1 + 16);
          swift_endAccess();
        }

        else
        {
          (*(*(v0 + 328) + 8))(*(v0 + 360), *(v0 + 320));
        }
      }

      v19 += v106;
      --v17;
    }

    while (v17);

    v16 = (v0 + 424);
    v66 = v103;
  }

  else
  {
    v107 = _swiftEmptyArrayStorage;
    v66 = _swiftEmptyArrayStorage;
  }

  v67 = *(v0 + 392);
  v69 = *(v0 + 256);
  v68 = *(v0 + 264);

  sub_1009871D4(v68, v0 + 88);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  sub_1007206EC(v68);
  v72 = v66 >> 62;
  if (os_log_type_enabled(v70, v71))
  {
    v73 = *(v0 + 256);
    v74 = *(v0 + 264);
    v75 = swift_slowAlloc();
    *(v0 + 240) = swift_slowAlloc();
    *v75 = 136447234;
    v76 = XPCSession.debugDescription.getter();
    v78 = sub_1000136BC(v76, v77, (v0 + 240));

    *(v75 + 4) = v78;
    *(v75 + 12) = 2082;
    if (*(v74 + 16))
    {
      v79 = *(*(v0 + 264) + 8);
      v80 = *(v74 + 16);
    }

    else
    {
      v79 = 0;
      v80 = 0xE000000000000000;
    }

    v83 = sub_1000136BC(v79, v80, (v0 + 240));

    *(v75 + 14) = v83;
    *(v75 + 22) = 2048;
    v16 = (v0 + 424);
    if (v72)
    {
      v84 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v84 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = v107;
    v81 = (v0 + 425);
    v85 = *(v0 + 425);
    *(v75 + 24) = v84;
    *(v75 + 32) = 2048;
    *(v75 + 34) = v107[2];
    *(v75 + 42) = 1024;
    *(v75 + 44) = v85;
    _os_log_impl(&_mh_execute_header, v70, v71, "Session %{public}s, %{public}s update: %ld, remove: %ld, initial: %{BOOL}d.", v75, 0x30u);
    swift_arrayDestroy();
  }

  else
  {

    v81 = v16;
    v82 = v107;
  }

  v86 = *v81;
  if (v72)
  {
    v87 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v87 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v88 = (v87 != 0) | v86;
  v89 = *(v0 + 288);
  if ((v88 & 1) == 0)
  {
    v91 = v16[1];
    if (v82[2] && v89)
    {
      goto LABEL_47;
    }

LABEL_49:

    goto LABEL_50;
  }

  if (!v89 || (sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr), , isa = Array._bridgeToObjectiveC()().super.isa, , [v89 receivedSimpleBeaconUpdates:isa], isa, !v107[2]))
  {
    v91 = 0;
    goto LABEL_49;
  }

  v91 = 0;
  v89 = *(v0 + 288);
LABEL_47:
  v92 = *(v0 + 320);

  v93 = Array._bridgeToObjectiveC()().super.isa;

  [v89 receivedSimpleBeaconRemovals:v93];

LABEL_50:

  v16[1] = v91;
  *v16 = 0;
  *(v0 + 408) = 0;
  v94 = *(v0 + 400);
  v95 = *(v0 + 280);
  v96 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v97 = swift_task_alloc();
  *(v0 + 416) = v97;
  *v97 = v0;
  v97[1] = sub_10095ACC8;
  v98 = *(v0 + 384);
  v99 = *(v0 + 368);

  return AsyncStream.Iterator.next(isolation:)(v0 + 208, v95, v94, v99);
}

uint64_t sub_10095B808(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_10095B828, v1, 0);
}

uint64_t sub_10095B828()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B740);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cache is not empty.", v6, 2u);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_10095B9D4;

    return daemon.getter();
  }
}

uint64_t sub_10095B9D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  v3[9] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[10] = v6;
  v7 = type metadata accessor for Daemon();
  v3[11] = v7;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[12] = v9;
  v10 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService);
  *v6 = v12;
  v6[1] = sub_10095BBB4;

  return ActorServiceDaemon.getService<A>()(v7, MyServiceDeviceStoreService, v9, v10);
}

uint64_t sub_10095BBB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 104) = a1;

  v7 = *(v3 + 72);
  if (v1)
  {
    v8 = *(v4 + 56);

    return _swift_task_switch(sub_10095C464, v8, 0);
  }

  else
  {

    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    *(v4 + 112) = v10;
    *v10 = v6;
    v10[1] = sub_10095BD64;

    return daemon.getter();
  }
}

uint64_t sub_10095BD64(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;
  v3[15] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[16] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v7 = v5;
  v7[1] = sub_10095BF18;
  v10 = v3[12];
  v11 = v3[11];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10095BF18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = a1;

  v7 = v4[15];
  if (v1)
  {
    a1 = v4[7];

    v8 = sub_10095C578;
  }

  else
  {

    v8 = sub_10095C070;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_10095C070()
{
  v1 = *(v0 + 136);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_10095C14C;
  v4 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000010, 0x800000010134A8C0, sub_100987078, v4, &type metadata for Bool);
}

uint64_t sub_10095C14C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return _swift_task_switch(sub_10095C264, v2, 0);
}

uint64_t sub_10095C264()
{
  v1 = *(v0 + 104);
  *(v0 + 153) = *(v0 + 152);
  return _swift_task_switch(sub_10095C288, v1, 0);
}

uint64_t sub_10095C288()
{
  v1 = *(v0 + 56);
  *(v0 + 154) = *(*(v0 + 104) + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched);
  return _swift_task_switch(sub_10095C2BC, v1, 0);
}

uint64_t sub_10095C2BC()
{
  v1 = *(v0 + 153) & *(v0 + 154);
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cache is empty, services are loaded: %{BOOL}d.", v5, 8u);
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 104);

  if (v1)
  {
    v8 = *(v0 + 48);
    XPCSession.proxy.getter();
    v9 = *(v0 + 40);
    if (v9)
    {
      sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v9 receivedSimpleBeaconUpdates:isa];
      swift_unknownObjectRelease();
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10095C464()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service, FindMyServiceDeviceStoreService / BeaconStoreActor.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10095C578()
{
  v1 = *(v0 + 104);

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Missing service, FindMyServiceDeviceStoreService / BeaconStoreActor.", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10095C694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - v6 + 16;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v13 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_sessionUpdateTasks;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_1000210EC(a1);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      Task.cancel()();
    }

    else
    {
    }
  }

  (*(v9 + 16))(v12, a1, v8);
  swift_beginAccess();
  sub_1001DFE38(0, v12);
  swift_endAccess();
  swift_beginAccess();
  sub_1010F6584(a1, v7);
  sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  v18 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  sub_1001E5408(a1, v23);
  sub_10000B3A8(v23, &qword_1016AF878, &qword_1013CAD68);
  result = swift_endAccess();
  if (!*(*(v2 + v18) + 16))
  {
    if (*(v2 + 224))
    {
      v20 = *(v2 + 224);

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      Task.cancel()();

      v21 = *(v2 + 224);
    }

    *(v2 + 224) = 0;
  }

  return result;
}

uint64_t sub_10095C98C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_10095C9B0, v2, 0);
}

uint64_t sub_10095C9B0()
{
  v19 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000136BC(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Pre-throttle updateAllBeacons reason %s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  v12 = *(v9 + 160);
  v0[2] = 0xD000000000000010;
  v0[3] = 0x8000000101366760;
  v13 = swift_allocObject();
  v0[7] = v13;
  v13[2] = v9;
  v13[3] = v11;
  v13[4] = v10;
  v14 = *(&async function pointer to dispatch thunk of AsyncKeyedThrottle.debounce(key:block:) + 1);
  v17 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.debounce(key:block:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.debounce(key:block:);

  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_10095CC00;

  return (v17)(v0 + 2, &unk_1013CAE80, v13);
}

uint64_t sub_10095CC00()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {
    v5 = v4[6];

    return _swift_task_switch(sub_10095CD5C, v5, 0);
  }

  else
  {
    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_10095CD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_10095CE08, 0, 0);
}

uint64_t sub_10095CE08()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v3 + 168);
  type metadata accessor for WorkItemQueue.WorkItem();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = v0[1];

  return v7(1);
}

uint64_t sub_10095CF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10095CF4C, 0, 0);
}

uint64_t sub_10095CF4C()
{
  v1 = *(v0 + 16);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = async function pointer to static Transaction.named<A>(_:with:)[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1008D5CB8;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_10095D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_10095D068, 0, 0);
}

uint64_t sub_10095D068()
{
  v13 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000136BC(v6, v5, &v12);
    _os_log_impl(&_mh_execute_header, v3, v4, "Post-throttle updateAllBeacons reason %s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_10095D224;
  v10 = v0[4];

  return sub_10095D31C();
}

uint64_t sub_10095D224()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10095D31C()
{
  v1[8] = v0;
  v2 = type metadata accessor for UUID();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016AF978, &qword_1013CAE60);
  v1[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10095D424, v0, 0);
}

uint64_t sub_10095D424()
{
  v1 = *(v0 + 64);
  sub_10097C58C(0xD000000000000013, 0x8000000101366740);
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_10095D4D4;

  return daemon.getter();
}

uint64_t sub_10095D4D4(uint64_t a1)
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
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10095D6B0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10095D6B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 144) = a1;

  v6 = *(v3 + 128);
  v7 = *(v3 + 64);
  if (v1)
  {

    v8 = sub_10095E464;
  }

  else
  {

    v8 = sub_10095D814;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10095D814()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  v0[19] = sub_1000076D4(v2, qword_10177B740);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v6 + 272) != 0;

    _os_log_impl(&_mh_execute_header, v3, v4, "Updating all beacons for session(s), intent context: %{BOOL}d.", v7, 8u);
  }

  else
  {
    v8 = v0[8];
  }

  v9 = v0[18];

  return _swift_task_switch(sub_10095D974, v9, 0);
}

uint64_t sub_10095D974()
{
  v1 = v0[18];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  v0[21] = v4;
  *v3 = v0;
  v3[1] = sub_10095DA64;
  v5 = v0[18];

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_10095DA64()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_10095DB7C, v2, 0);
}

uint64_t sub_10095DB7C()
{
  v1 = v0[8];
  v0[22] = v0[5];
  return _swift_task_switch(sub_10095DBA0, v1, 0);
}

uint64_t sub_10095DBA0()
{
  v0[6] = v0[22];
  v1 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[23] = v2;
  v3 = sub_1000041A4(&qword_1016AF980, &unk_1016AA410, &unk_101395200);
  *v2 = v0;
  v2[1] = sub_10095DC94;
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[9];

  return Sequence.asyncMap<A>(_:)(&unk_1013CAE70, v5, v4, v6, v3);
}

uint64_t sub_10095DC94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[22];
    v8 = v3[8];

    return _swift_task_switch(sub_10095DDD8, v8, 0);
  }
}

uint64_t sub_10095DDD8()
{
  v47 = v0[12];
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  v0[26] = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = v0;
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v45 = v1;
  v46 = v4;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = &_swiftEmptySetSingleton;
  v43 = v6;
  v44 = v5;
  v42 = v10;
  v5[27] = &_swiftEmptySetSingleton;
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v18 = v47;
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v17);
    ++v12;
    if (v9)
    {
      v48 = v13;
      while (1)
      {
        v20 = v5[13];
        v19 = v5[14];
        v21 = v5[9];
        v22 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v23 = v22 | (v17 << 6);
        (*(v45 + 16))(v19, *(v46 + 48) + *(v45 + 72) * v23, v21);
        v24 = *(v46 + 56) + 16 * v23;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = (v19 + *(v18 + 48));
        *v27 = v26;
        v27[1] = v25;
        sub_1000D2A70(v19, v20, &qword_1016AF978, &qword_1013CAE60);
        v28 = v20 + *(v18 + 48);
        v29 = *v28;
        v30 = v26;

        v31 = *(v28 + 8);
        v32 = *(v45 + 8);
        v5 = v44;
        v32(v20, v21);
        v33 = v44[14];
        if ((v31 & 0x2000) != 0)
        {
          result = sub_10000B3A8(v33, &qword_1016AF978, &qword_1013CAE60);
          v12 = v17;
          v6 = v43;
          v10 = v42;
          v13 = v48;
          v44[27] = v48;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v14 = v44[13];
          v15 = v44[11];
          v40 = v44[9];
          v41 = v44[14];
          sub_1000D2A70(v33, v14, &qword_1016AF978, &qword_1013CAE60);
          v16 = *&v14[*(v47 + 48)];

          sub_100DE8BCC(v15, v14);

          v32(v15, v40);
          result = sub_10000B3A8(v41, &qword_1016AF978, &qword_1013CAE60);
          v13 = v48;
          v12 = v17;
          v6 = v43;
          v10 = v42;
          v44[27] = v48;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v48 = v13;
        v17 = v12;
        v18 = v47;
      }
    }
  }

  v34 = v5[24];

  sub_100398278(_swiftEmptyArrayStorage);
  v35 = v5;
  v36 = sub_10000954C(v34);
  v35[28] = v36;

  v37 = swift_task_alloc();
  v35[29] = v37;
  *v37 = v35;
  v37[1] = sub_10095E140;
  v38 = v35[18];
  v39 = v35[8];

  return sub_1009614D8(v36, v38);
}

uint64_t sub_10095E140(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10095E274, v4, 0);
}

uint64_t sub_10095E274()
{
  v1 = v0[30];
  v2 = v0[27];
  if (*(v1 + 16) <= v2[2] >> 3)
  {
    v22 = v0[27];
    sub_10087D5B4(v1);

    v3 = v22;
  }

  else
  {
    v3 = sub_100610BC8(v0[30], v2);
  }

  v4 = v0[8];
  sub_100960CC0(v3);
  if (*(v4 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) == 1)
  {
    v5 = v0[19];
    v6 = v0[8];
    *(v4 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) = 0;

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[26];
      v10 = v0[8];
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(*(v10 + v9) + 16);

      _os_log_impl(&_mh_execute_header, v7, v8, "Unified beacons cached marked up to date, count %ld.", v11, 0xCu);
    }

    else
    {
      v12 = v0[8];
    }
  }

  v13 = v0[25];
  v14 = v0[18];
  v15 = *(v0[8] + 232);
  v16 = sub_100948F40(v3, 2);

  v0[7] = v16;
  AsyncStreamProvider.yield(value:transaction:)();

  v18 = v0[13];
  v17 = v0[14];
  v19 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10095E464()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get BeaconStore.", v4, 2u);
  }

  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10095E594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10095E6A8, 0, 0);
}

uint64_t sub_10095E6A8()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v2[3];
  v0[12] = v4;
  v5 = v2[4];
  v0[13] = sub_1000035D0(v2, v4);
  v6 = *(*(v5 + 8) + 8);
  v0[14] = v6;
  v7 = *(v6 + 32);
  v0[15] = v7;
  v0[16] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0xA71B000000000000;
  v7(v4);

  return _swift_task_switch(sub_10095E768, v3, 0);
}

uint64_t sub_10095E768()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[9], v3);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[17] = v6;
  *(v6 + 16) = v4;
  v7 = *(v2 + 32);
  v0[18] = v7;
  v0[19] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v1, v3);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_10095E8D0;
  v11 = v0[10];
  v10 = v0[11];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100986E5C, v6, v11);
}

uint64_t sub_10095E8D0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10095EA44, 0, 0);
}

uint64_t sub_10095EA44()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(*(v0 + 48) + 48);
  if (v3(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(v0 + 16);
    (*(v0 + 120))(*(v0 + 96), *(v0 + 112));
    if (v3(v1, 1, v2) != 1)
    {
      sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v7 = *(v0 + 152);
    (*(v0 + 144))(*(v0 + 16), v1, v2);
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10095EB5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10095EC28, v1, 0);
}

uint64_t sub_10095EC28()
{
  v24 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[8] = sub_1000076D4(v5, qword_10177B740);
  v6 = *(v3 + 16);
  v0[9] = v6;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v23);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "updateBeaconConnectedState. Beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[11] = v17;
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_10095EEBC;

  return daemon.getter();
}

uint64_t sub_10095EEBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10095F098;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10095F098(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 112);
  v7 = *v2;

  v8 = *(v4 + 104);
  v9 = *(v4 + 24);
  if (v1)
  {

    v10 = sub_10095F3D8;
  }

  else
  {

    *(v5 + 120) = a1;
    v10 = sub_10095F200;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10095F200()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[9];
  v4 = v0[5];
  v18 = v0[11];
  v19 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v8 = *(v4 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  v3(v10 + v9, v7, v6);
  v11 = sub_100B05044(v10);
  swift_setDeallocating();
  v18(v10 + v9, v6);
  swift_deallocClassInstance();
  v12 = *(v5 + 168);
  type metadata accessor for WorkItemQueue.WorkItem();
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = v11;
  v13[4] = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v15 = v0[6];
  v14 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10095F3D8()
{
  v1 = v0[8];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get BeaconStoreActor", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

void sub_10095F4B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v47 - v8;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v49 = &v47 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 272) || (v48 = v5, v18 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_connectedStateClients, swift_beginAccess(), v19 = *(v1 + v18), v7 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *(v19 + 16)))
  {
    static Date.trustedNow.getter(v17);
    Date.timeIntervalSince(_:)();
    v21 = v20;
    (*(v14 + 8))(v17, v13);
    if (v21 > 0.0)
    {
      v48 = v7;
      swift_beginAccess();
      v22 = *(v1 + 208);
      if (*(v22 + 16))
      {
        v23 = *(v2 + 208);

        v24 = sub_1000210EC(a1);
        if (v25)
        {
          v26 = *(*(v22 + 56) + 8 * v24);

          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          Task.cancel()();
        }

        else
        {
        }
      }

      v27 = type metadata accessor for TaskPriority();
      v28 = v49;
      (*(*(v27 - 8) + 56))(v49, 1, 1, v27);
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = v50;
      v47 = *(v50 + 16);
      v47(v9, a1, v4);
      v31 = (*(v30 + 80) + 48) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v21;
      *(v32 + 40) = v29;
      (*(v30 + 32))(v32 + v31, v9, v4);
      v33 = a1;
      v34 = sub_100A838D4(0, 0, v28, &unk_1013CAE38, v32);
      swift_beginAccess();
      v35 = *(v2 + 208);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v2 + 208);
      *(v2 + 208) = 0x8000000000000000;
      sub_100FFF724(v34, v33, isUniquelyReferenced_nonNull_native);
      *(v2 + 208) = v51;
      swift_endAccess();
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177B740);
      v38 = v48;
      v47(v48, v33, v4);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v52 = v42;
        *v41 = 141558275;
        *(v41 + 4) = 1752392040;
        *(v41 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        (*(v50 + 8))(v38, v4);
        v46 = sub_1000136BC(v43, v45, &v52);

        *(v41 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v39, v40, "Scheduled connection expiry for beacon %{private,mask.hash}s.", v41, 0x16u);
        sub_100007BAC(v42);
      }

      else
      {

        (*(v50 + 8))(v38, v4);
      }
    }
  }
}

uint64_t sub_10095FAC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a1;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10095FB84, 0, 0);
}

uint64_t sub_10095FB84()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = static Duration.seconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_10095FC60;
  v7 = v0[10];

  return sub_100D24214(v3, v5, 0, 0, 1);
}

uint64_t sub_10095FC60()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_10095FEC0;
  }

  else
  {
    v5 = sub_10095FDC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10095FDC8()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_10095FF24;
    v4 = v0[7];

    return sub_10095EB5C(v4);
  }

  else
  {
    v6 = v0[10];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10095FEC0()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_10095FF24()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 80);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10096005C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v3[10] = *(v7 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100960194, 0, 0);
}

uint64_t sub_100960194()
{
  v1 = *(v0 + 24);
  *(v0 + 16) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v1 + 32);
  *(v0 + 192) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -(-1 << v4));
  }

  v7 = v5 & *(v1 + 56);
  swift_bridgeObjectRetain_n();
  if (v7)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v7;
    *(v0 + 136) = v8;
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);
    v12 = *(v0 + 64);
    v13 = *(v1 + 48) + v2[9] * (__clz(__rbit64(v7)) | (v8 << 6));
    v14 = v2[2];
    *(v0 + 144) = v14;
    *(v0 + 152) = (v2 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v10, v13, v12);
    v15 = v2[4];
    *(v0 + 160) = v15;
    *(v0 + 168) = (v2 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v11, v10, v12);

    return _swift_task_switch(sub_100960440, v3, 0);
  }

  else
  {
    v9 = 0;
    while (((63 - v6) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 112);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    v25 = *(v0 + 96);
    v26 = *(v0 + 88);
    v27 = *(v0 + 56);
    v19 = *(v0 + 40);

    v20 = *(v0 + 16);
    v21 = *(v19 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v20;
    v22[4] = v1;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_100960440()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);
  (*(v0 + 144))(v4, *(v0 + 104), v7);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  *(v10 + 16) = v8;
  v2(v10 + v9, v4, v7);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_10096058C;
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100988F3C, v10, v14);
}

uint64_t sub_10096058C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_1009606A4, 0, 0);
}

uint64_t sub_1009606A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v2 + 8))(*(v0 + 104), v1);
    v4 = sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v7 = *(v0 + 168);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    (*(v0 + 160))(v12, v3, v1);
    v9(v13, v12, v1);
    sub_100DE8BCC(v10, v13);
    v14 = *(v2 + 8);
    v14(v10, v1);
    v14(v12, v1);
    v4 = (v14)(v11, v1);
  }

  v15 = *(v0 + 136);
  v16 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v16)
  {
    v17 = *(v0 + 24);
LABEL_10:
    *(v0 + 128) = v16;
    *(v0 + 136) = v15;
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);
    v23 = *(v0 + 32);
    v24 = *(v17 + 48) + v22[9] * (__clz(__rbit64(v16)) | (v15 << 6));
    v25 = v22[2];
    *(v0 + 144) = v25;
    *(v0 + 152) = (v22 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v25(v19, v24, v21);
    v26 = v22[4];
    *(v0 + 160) = v26;
    *(v0 + 168) = (v22 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26(v20, v19, v21);
    v4 = sub_100960440;
    v5 = v23;
    v6 = 0;

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return _swift_task_switch(v4, v5, v6);
      }

      if (v18 >= (((1 << *(v0 + 192)) + 63) >> 6))
      {
        break;
      }

      v17 = *(v0 + 24);
      v16 = *(v17 + 8 * v18 + 56);
      ++v15;
      if (v16)
      {
        v15 = v18;
        goto LABEL_10;
      }
    }

    v27 = *(v0 + 112);
    v28 = *(v0 + 120);
    v29 = *(v0 + 104);
    v37 = *(v0 + 96);
    v38 = *(v0 + 88);
    v39 = *(v0 + 56);
    v30 = *(v0 + 40);
    v31 = *(v0 + 24);

    v32 = *(v0 + 16);
    v33 = *(v30 + 168);
    type metadata accessor for WorkItemQueue.WorkItem();
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v32;
    v34[4] = v31;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_100960A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100960A34, a1, 0);
}

uint64_t sub_100960A34()
{
  v1 = *(v0 + 24);
  sub_100960CC0(*(v0 + 32));

  return _swift_task_switch(sub_100960A9C, 0, 0);
}

uint64_t sub_100960A9C()
{
  v15 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100985CA0(&qword_1016967B0, &type metadata accessor for UUID);
    v8 = Set.description.getter();
    v10 = sub_1000136BC(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating sessions for BeaconRecord removed. Beacons: %{private,mask.hash}s", v6, 0x16u);
    sub_100007BAC(v7);
  }

  v11 = *(v0[3] + 232);
  v0[2] = sub_100948F40(v0[4], 2);
  AsyncStreamProvider.yield(value:transaction:)();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100960CC0(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v42);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10097C58C(0xD00000000000002BLL, 0x80000001013666E0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  v12 = (v8 + 63) >> 6;
  v34[1] = v4 + 16;
  v36 = v4;
  v40 = v4 + 8;
  v38 = a1;

  v14 = 0;
  v37 = v2;
  v41 = v11;
  v15 = v42;
  while (v10)
  {
LABEL_11:
    v17 = *(v38 + 48);
    v19 = v35;
    v18 = v36;
    v39 = *(v36 + 72);
    (*(v36 + 16))(v35, v17 + v39 * (__clz(__rbit64(v10)) | (v14 << 6)), v15);
    v2 = v37;
    swift_beginAccess();
    v20 = *(v2 + v11);
    v21 = sub_1000210EC(v19);
    LOBYTE(v20) = v22;
    v23 = *(v18 + 8);
    v23(v19, v15);
    if (v20)
    {
      v24 = v41;
      v25 = *(v2 + v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v2 + v24);
      v44 = v27;
      *(v2 + v24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10100B804();
        v27 = v44;
      }

      v23(*(v27 + 48) + v21 * v39, v42);

      sub_100AF97C0(v21, v27);
      *(v2 + v24) = v27;
    }

    v10 &= v10 - 1;
    result = swift_endAccess();
    v11 = v41;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      swift_beginAccess();
      v28 = *(v2 + v11);
      v29 = *(v28 + 16);
      if (!v29)
      {
        goto LABEL_17;
      }

      v30 = sub_1003A88D8(*(v28 + 16), 0);
      v31 = sub_1003AA6E8(&v43, v30 + 4, v29, v28);

      sub_1000128F8();
      if (v31 != v29)
      {
        __break(1u);
LABEL_17:
        v30 = _swiftEmptyArrayStorage;
      }

      v32 = *(v2 + 176);
      v33 = swift_allocObject();
      *(v33 + 16) = v2;
      *(v33 + 24) = v30;

      dispatch thunk of WorkItemQueue.enqueue(_:)();
    }

    v10 = *(v7 + 8 * v16);
    ++v14;
    if (v10)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100961028(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100961048, 0, 0);
}

uint64_t sub_100961048()
{
  type metadata accessor for Transaction();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to static Transaction.named<A>(_:with:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1008D5658;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100961130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return _swift_task_switch(sub_10096114C, a2, 0);
}

uint64_t sub_10096114C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10097CAD8(0xD000000000000020, 0x8000000101366680);
  v0[6] = *(v2 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cacheWriteThrottle);
  v0[2] = 0xD00000000000002CLL;
  v0[3] = 0x80000001013666B0;
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_1000041A4(&qword_101698E00, &qword_1016B1270, &qword_101390A00);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100961298, v5, v4);
}

uint64_t sub_100961298()
{
  v2 = v0[6];
  v1 = v0[7];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100961328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1009613D4;

  return sub_1009614D8(a2, a3);
}

uint64_t sub_1009613D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1009614D8(uint64_t a1, uint64_t a2)
{
  v3[53] = a2;
  v3[54] = v2;
  v3[52] = a1;
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3[55] = v4;
  v5 = *(v4 - 8);
  v3[56] = v5;
  v6 = *(v5 + 64) + 15;
  v3[57] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v8 = type metadata accessor for BeaconIdentifier();
  v3[60] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016AF930, &unk_1013C35B0) - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v3[63] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0) - 8) + 64) + 15;
  v3[67] = swift_task_alloc();
  v15 = type metadata accessor for SharedBeaconRecord(0);
  v3[68] = v15;
  v16 = *(v15 - 8);
  v3[69] = v16;
  v17 = *(v16 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v3[73] = v18;
  v19 = *(v18 - 8);
  v3[74] = v19;
  v3[75] = *(v19 + 64);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v20 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3[82] = v20;
  v21 = *(v20 + 64) + 15;
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v22 = type metadata accessor for OwnedBeaconRecord();
  v3[86] = v22;
  v23 = *(v22 - 8);
  v3[87] = v23;
  v24 = *(v23 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v25 = type metadata accessor for ContinuousClock.Instant();
  v3[91] = v25;
  v26 = *(v25 - 8);
  v3[92] = v26;
  v27 = *(v26 + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v28 = type metadata accessor for ContinuousClock();
  v3[101] = v28;
  v29 = *(v28 - 8);
  v3[102] = v29;
  v30 = *(v29 + 64) + 15;
  v3[103] = swift_task_alloc();

  return _swift_task_switch(sub_100961A10, v2, 0);
}

uint64_t sub_100961A10()
{
  v1 = v0[103];
  v2 = v0[100];
  v3 = v0[54];
  sub_10097C58C(0xD000000000000030, 0x8000000101366600);
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v4 = qword_101698690;
  v0[104] = qword_101698690;
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= 0x3E8)
    {
      v6 = 1;
    }

    qword_101698690 = v6;
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v0[105] = v8;
    *v8 = v0;
    v8[1] = sub_100961B08;
  }

  return daemon.getter();
}

uint64_t sub_100961B08(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 840);
  v12 = *v1;
  v3[106] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[107] = v6;
  v7 = type metadata accessor for Daemon();
  v3[108] = v7;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[109] = v9;
  v10 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService);
  *v6 = v12;
  v6[1] = sub_100961CE8;

  return ActorServiceDaemon.getService<A>()(v7, MyServiceDeviceStoreService, v9, v10);
}

uint64_t sub_100961CE8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 856);
  v7 = *v2;

  v8 = *(v4 + 848);
  if (v1)
  {

    a1 = 0;
  }

  else
  {
  }

  *(v5 + 880) = a1;
  v9 = *(v5 + 424);

  return _swift_task_switch(sub_100961E34, v9, 0);
}

uint64_t sub_100961E34()
{
  v1 = v0[53];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[111] = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[112] = v4;
  *v3 = v0;
  v3[1] = sub_100961F24;
  v5 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 43, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v5, v4);
}

uint64_t sub_100961F24()
{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_10096203C, v2, 0);
}

uint64_t sub_10096203C()
{
  v1 = v0[54];
  v0[113] = v0[43];
  return _swift_task_switch(sub_100962060, v1, 0);
}

uint64_t sub_100962060()
{
  v1 = v0[113];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[87];
    v21 = v0[82];
    v22 = v0[86];
    v4 = v0[74];
    v5 = sub_1011254AC(0, v2, 0);
    v8 = 0;
    v23 = v3;
    v20 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = (v4 + 16);
    v10 = (v4 + 56);
    while (v8 < *(v1 + 16))
    {
      v11 = v0[89];
      v12 = v0[85];
      v13 = v0[73];
      sub_1009863FC(v20 + *(v23 + 72) * v8, v11, type metadata accessor for OwnedBeaconRecord);
      (*v9)(v12, v11 + *(v22 + 20), v13);
      (*v10)(v12, 0, 1, v13);
      sub_100988488(v11, type metadata accessor for OwnedBeaconRecord);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1011254AC(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[85];
      ++v8;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v5 = sub_1000D2AD8(v16, _swiftEmptyArrayStorage + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15, &qword_1016980D0, &unk_10138F3B0);
      if (v2 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v17 = v0[113];

    v18 = v0[53];
    v0[114] = sub_10112B3C0(_swiftEmptyArrayStorage);

    v5 = sub_1009622A0;
    v6 = v18;
    v7 = 0;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1009622A0()
{
  v1 = v0[53];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[115] = v3;
  *v3 = v0;
  v3[1] = sub_100962378;
  v4 = v0[112];
  v5 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 44, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4C0, v5, v4);
}

uint64_t sub_100962378()
{
  v1 = *(*v0 + 920);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_100962490, v2, 0);
}

uint64_t sub_100962490()
{
  v1 = v0[54];
  v0[116] = v0[44];
  return _swift_task_switch(sub_1009624B4, v1, 0);
}

uint64_t sub_1009624B4()
{
  v1 = v0[116];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[87];
    v4 = v0[74];
    v25 = *(v0[86] + 28);
    v26 = v0[90];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v22 = v4;
    v23 = (v4 + 32);
    v24 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[90];
      v9 = v0[84];
      v10 = v0[73];
      sub_1009863FC(v5, v8, type metadata accessor for OwnedBeaconRecord);
      sub_1000D2A70(v26 + v25, v9, &qword_1016980D0, &unk_10138F3B0);
      sub_100988488(v8, type metadata accessor for OwnedBeaconRecord);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_10000B3A8(v0[84], &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v11 = *v23;
        (*v23)(v0[81], v0[84], v0[73]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100A5BFE0(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_100A5BFE0(v12 > 1, v13 + 1, 1, v7);
        }

        v14 = v0[81];
        v15 = v0[73];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v13], v14, v15);
      }

      v5 += v24;
      --v2;
    }

    while (v2);
    v16 = v0[116];
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v17 = v0[114];
  v18 = v0[53];
  v19 = sub_10000954C(v7);

  v20 = sub_100D1B4BC(v19);

  v0[117] = sub_10039DE90(v20, v17);

  return _swift_task_switch(sub_10096274C, v18, 0);
}

uint64_t sub_10096274C()
{
  v1 = *(v0 + 424);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 944) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_100962838;
  v5 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 360, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_100962838()
{
  v1 = *(*v0 + 944);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_100962950, v2, 0);
}

uint64_t sub_100962950()
{
  v1 = v0[54];
  v0[119] = v0[45];
  return _swift_task_switch(sub_100962974, v1, 0);
}

uint64_t sub_100962974()
{
  v1 = v0[119];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[82];
    v4 = v0[74];
    v5 = v0[69];
    v30 = v0[68];
    sub_1011254AC(0, v2, 0);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = (v4 + 56);
    v29 = *(v5 + 72);
    do
    {
      v7 = v0[72];
      v8 = v0[67];
      sub_1009863FC(v6, v7, type metadata accessor for SharedBeaconRecord);
      sub_1000D2A70(v7 + *(v30 + 80), v8, &unk_1016AF890, &qword_1013926D0);
      sub_100988488(v7, type metadata accessor for SharedBeaconRecord);
      v9 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
      v11 = v0[83];
      if (v10 == 1)
      {
        v12 = v0[73];
        sub_10000B3A8(v0[67], &unk_1016AF890, &qword_1013926D0);
        (*v28)(v11, 1, 1, v12);
      }

      else
      {
        v13 = v0[67];
        sub_1000D2A70(v13 + *(v9 + 20), v0[83], &qword_1016980D0, &unk_10138F3B0);
        sub_100988488(v13, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1011254AC(v14 > 1, v15 + 1, 1);
      }

      v16 = v0[83];
      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_1000D2AD8(v16, _swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, &qword_1016980D0, &unk_10138F3B0);
      v6 += v29;
      --v2;
    }

    while (v2);
  }

  v17 = v0[119];

  v18 = v0[117];
  v19 = v0[52];
  v20 = sub_10112B3C0(_swiftEmptyArrayStorage);

  v0[120] = sub_10039DE90(v20, v18);
  v0[46] = v19;
  v21 = async function pointer to Sequence.asyncMap<A>(_:)[1];
  v22 = swift_task_alloc();
  v0[121] = v22;
  v23 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v24 = sub_1000041A4(&qword_1016AF940, &qword_1016AF8E0, &qword_101393130);
  *v22 = v0;
  v22[1] = sub_100962D00;
  v25 = v0[73];
  v26 = v0[53];

  return Sequence.asyncMap<A>(_:)(&unk_1013CADA8, v26, v23, v25, v24);
}

uint64_t sub_100962D00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 968);
  v5 = *v2;
  v3[122] = a1;
  v3[123] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[120];
    v8 = v3[54];

    return _swift_task_switch(sub_100962E48, v8, 0);
  }
}

uint64_t sub_100962E48()
{
  v15 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[122];
  v2 = type metadata accessor for Logger();
  v0[124] = sub_1000076D4(v2, qword_10177B740);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[122];
    v6 = v0[73];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "receivedSimpleBeaconUpdates - updating beacon identifiers: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = v0[53];

  return _swift_task_switch(sub_100962FF0, v12, 0);
}

uint64_t sub_100962FF0()
{
  v1 = v0[122];
  v2 = v0[53];
  v3 = swift_allocObject();
  v0[125] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v5 = swift_task_alloc();
  v0[126] = v5;
  v6 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v5 = v0;
  v5[1] = sub_10096310C;

  return unsafeBlocking<A>(context:_:)(v0 + 47, 0xD000000000000010, 0x800000010134A8C0, sub_1009867E0, v3, v6);
}

uint64_t sub_10096310C()
{
  v1 = *(*v0 + 1008);
  v2 = *(*v0 + 1000);
  v3 = *(*v0 + 424);
  v5 = *v0;

  return _swift_task_switch(sub_100963238, v3, 0);
}

uint64_t sub_100963238()
{
  v1 = v0[53];
  v0[127] = v0[47];
  return _swift_task_switch(sub_10096325C, v1, 0);
}

uint64_t sub_10096325C()
{
  v1 = *(v0 + 424);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1024) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_100963348;
  v5 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 384, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_100963348()
{
  v1 = *(*v0 + 1024);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_100963460, v2, 0);
}

uint64_t sub_100963460()
{
  v1 = v0[53];
  v0[129] = v0[48];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[130] = v3;
  v4 = sub_1000BC4D4(&qword_1016AF948, &unk_1013CADB0);
  *v3 = v0;
  v3[1] = sub_100963554;
  v5 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 49, 0xD000000000000010, 0x800000010134A8C0, sub_1009867E8, v5, v4);
}

uint64_t sub_100963554()
{
  v1 = *(*v0 + 1040);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_10096366C, v2, 0);
}

uint64_t sub_10096366C()
{
  v1 = v0[53];
  v0[131] = v0[49];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[132] = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100963760;
  v5 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 50, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_100963760()
{
  v1 = *(*v0 + 1056);
  v2 = *(*v0 + 424);
  v4 = *v0;

  return _swift_task_switch(sub_100963878, v2, 0);
}

uint64_t sub_100963878()
{
  v1 = v0[54];
  v0[133] = v0[50];
  return _swift_task_switch(sub_10096389C, v1, 0);
}

uint64_t sub_10096389C()
{
  v147 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v1 + 16);
  *(v0 + 1072) = v2;
  v3 = *(v0 + 1032);
  if (!v2)
  {
    v128 = *(v0 + 984);

LABEL_18:
    v33 = *(v0 + 1064);
    v34 = *(v0 + 1048);
    v35 = *(v0 + 824);
    v36 = *(v0 + 800);
    v37 = *(v0 + 760);
    v38 = *(v0 + 752);
    v134 = *(v0 + 744);
    v39 = *(v0 + 736);
    v40 = *(v0 + 728);
    v138 = *(v0 + 416);
    v142 = *(v0 + 992);
    swift_bridgeObjectRelease_n();

    ContinuousClock.now.getter();
    v41 = *(v39 + 16);
    v41(v38, v36, v40);
    v41(v134, v37, v40);
    swift_bridgeObjectRetain_n();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 752);
    v46 = *(v0 + 744);
    v47 = *(v0 + 736);
    v48 = *(v0 + 728);
    v126 = v0;
    if (v44)
    {
      v143 = v42;
      v49 = *(v0 + 448);
      v50 = *(v0 + 456);
      v135 = *(v0 + 440);
      v51 = *(v0 + 416);
      v52 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v146[0] = v139;
      *v52 = 136446466;
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
      v53 = static Duration.description<A>(_:_:units:)();
      v131 = v43;
      v55 = v54;
      (*(v49 + 8))(v50, v135);
      v56 = *(v47 + 8);
      v56(v46, v48);
      v125 = v56;
      v56(v45, v48);
      v57 = sub_1000136BC(v53, v55, v146);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2048;
      v58 = *(v51 + 16);

      *(v52 + 14) = v58;

      _os_log_impl(&_mh_execute_header, v143, v131, "session processing time: %{public}s, count: %ld.", v52, 0x16u);
      sub_100007BAC(v139);
    }

    else
    {
      v59 = *(v0 + 416);
      swift_bridgeObjectRelease_n();

      v60 = *(v47 + 8);
      v60(v46, v48);
      v125 = v60;
      v60(v45, v48);
    }

    v61 = _swiftEmptyArrayStorage[2];
    if (v61)
    {
      v62 = v126[74];
      v136 = (v62 + 16);
      v63 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
      v64 = &_swiftEmptyArrayStorage[5];
      v129 = v126[54];
      v132 = (v62 + 8);
      do
      {
        v65 = v126[80];
        v66 = v126[76];
        v67 = v126[73];
        v140 = *v64;
        v144 = v126[79];
        v68 = *(v64 - 1);
        v69 = [v68 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();
        v70 = v68;
        v71 = *(v129 + v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146[0] = *(v129 + v63);
        *(v129 + v63) = 0x8000000000000000;
        sub_1010004D4(v70, v140, v65, isUniquelyReferenced_nonNull_native);
        *(v129 + v63) = v146[0];
        swift_endAccess();
        (*v136)(v66, v65, v67);
        sub_100DE8BCC(v144, v66);

        v73 = *v132;
        (*v132)(v144, v67);
        v73(v65, v67);
        v64 += 2;
        --v61;
      }

      while (v61);
    }

    v74 = v126[54];
    v75 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    swift_beginAccess();
    v76 = *(v74 + v75);
    v77 = *(v76 + 16);
    if (v77)
    {
      v78 = sub_1003A88D8(*(v76 + 16), 0);
      v79 = sub_1003AA6E8(v146, v78 + 4, v77, v76);

      v6 = sub_1000128F8();
      if (v79 != v77)
      {
LABEL_35:
        __break(1u);
        return _swift_task_switch(v6, v7, v8);
      }

      v80 = v78;
    }

    else
    {
      v80 = _swiftEmptyArrayStorage;
    }

    v85 = v126[103];
    v86 = v126[102];
    v98 = v126[110];
    v99 = v126[101];
    v87 = v126[100];
    v100 = v126[99];
    v101 = v126[98];
    v102 = v126[97];
    v103 = v126[96];
    v88 = v126[95];
    v104 = v126[94];
    v105 = v126[93];
    v97 = v126[92];
    v89 = v126[91];
    v106 = v126[90];
    v107 = v126[89];
    v108 = v126[88];
    v109 = v126[85];
    v110 = v126[84];
    v111 = v126[83];
    v112 = v126[81];
    v113 = v126[80];
    v114 = v126[79];
    v115 = v126[78];
    v116 = v126[77];
    v117 = v126[76];
    v118 = v126[72];
    v119 = v126[71];
    v120 = v126[70];
    v121 = v126[67];
    v122 = v126[66];
    v123 = v126[65];
    v124 = v126[64];
    v130 = v126[62];
    v133 = v126[61];
    v137 = v126[59];
    v141 = v126[58];
    v145 = v126[57];
    v90 = v126[54];
    v91 = *(v90 + 176);
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v80;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v93 = *(v90 + 232);
    v94 = sub_100948F40(&_swiftEmptySetSingleton, 1);
    swift_bridgeObjectRelease_n();
    v126[51] = v94;
    AsyncStreamProvider.yield(value:transaction:)();

    v125(v88, v89);
    v125(v87, v89);
    (*(v86 + 8))(v85, v99);

    v95 = v126[1];

    return v95(&_swiftEmptySetSingleton);
  }

  *(v0 + 1296) = enum case for Feature.FindMy.itemSharing(_:);
  v4 = *(v0 + 984);
  *(v0 + 1104) = _swiftEmptyArrayStorage;
  *(v0 + 1096) = _swiftEmptyArrayStorage;
  *(v0 + 1088) = 0;
  v127 = v4;
  *(v0 + 1080) = v4;
  v5 = *(v1 + 16);

  if (!v5)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = 0;
  while (1)
  {
    v10 = *(v0 + 824);
    v11 = *(v0 + 792);
    sub_10001F280(v1 + 40 * v9 + 32, v0 + 16);
    ContinuousClock.now.getter();
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v12);
    if (((*(v13 + 112))(v12, v13) & 1) == 0)
    {
      break;
    }

    v14 = *(v0 + 552);
    v15 = *(v0 + 544);
    v16 = *(v0 + 528);
    sub_10001F280(v0 + 16, v0 + 216);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v17 = swift_dynamicCast();
    v18 = *(v14 + 56);
    if (!v17)
    {
      v26 = *(v0 + 528);
      v18(v26, 1, 1, *(v0 + 544));
      sub_10000B3A8(v26, &unk_101698C30, &unk_101392630);
      break;
    }

    v19 = *(v0 + 1296);
    v20 = *(v0 + 568);
    v21 = *(v0 + 528);
    v18(v21, 0, 1, *(v0 + 544));
    sub_100986170(v21, v20, type metadata accessor for SharedBeaconRecord);
    My = type metadata accessor for Feature.FindMy();
    *(v0 + 280) = My;
    *(v0 + 288) = sub_100985CA0(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v23 = sub_1000280DC((v0 + 256));
    (*(*(My - 8) + 104))(v23, v19, My);
    LOBYTE(v19) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 256));
    v24 = *(v0 + 568);
    if (v19)
    {
      v25 = *(v24 + *(*(v0 + 544) + 64));
      sub_100988488(v24, type metadata accessor for SharedBeaconRecord);
      if (v25 != 1 && v25 != 4)
      {
        break;
      }
    }

    else
    {
      sub_100988488(v24, type metadata accessor for SharedBeaconRecord);
    }

LABEL_12:
    (*(*(v0 + 736) + 8))(*(v0 + 792), *(v0 + 728));
    v29 = *(v0 + 1072);
    v30 = *(v0 + 1088) + 1;
    v6 = sub_100007BAC((v0 + 16));
    if (v30 == v29)
    {
      v31 = *(v0 + 1032);
      v32 = *(v0 + 1016);
      goto LABEL_18;
    }

    v9 = *(v0 + 1088) + 1;
    *(v0 + 1104) = _swiftEmptyArrayStorage;
    *(v0 + 1096) = _swiftEmptyArrayStorage;
    *(v0 + 1088) = v9;
    *(v0 + 1080) = v127;
    v1 = *(v0 + 1016);
    if (v9 >= *(v1 + 16))
    {
      goto LABEL_34;
    }
  }

  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v27);
  if ((*(v28 + 168))(v27, v28))
  {
    goto LABEL_12;
  }

  v81 = *(v0 + 640);
  v82 = *(v0 + 424);
  v83 = *(v0 + 40);
  v84 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v83);
  (*(*(*(v84 + 8) + 8) + 32))(v83);
  v6 = sub_100964448;
  v7 = v82;
  v8 = 0;

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100964448()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 584);
  v6 = *(v0 + 424);
  v7 = *(v4 + 16);
  *(v0 + 1112) = v7;
  *(v0 + 1120) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v5);
  v8 = *(v4 + 80);
  *(v0 + 1300) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 1128) = v10;
  *(v10 + 16) = v6;
  v11 = *(v4 + 32);
  *(v0 + 1136) = v11;
  *(v0 + 1144) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v5);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 1152) = v13;
  *v13 = v0;
  v13[1] = sub_1009645D4;
  v14 = *(v0 + 520);
  v15 = *(v0 + 504);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_100988F38, v10, v15);
}

uint64_t sub_1009645D4()
{
  v1 = *v0;
  v2 = *(*v0 + 1152);
  v3 = *(*v0 + 1128);
  v4 = *(*v0 + 640);
  v5 = *(*v0 + 592);
  v6 = *(*v0 + 584);
  v7 = *(*v0 + 432);
  v10 = *v0;

  v8 = *(v5 + 8);
  *(v1 + 1160) = v8;
  *(v1 + 1168) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);

  return _swift_task_switch(sub_100964774, v7, 0);
}

uint64_t sub_100964774()
{
  v1 = *(v0 + 512);
  sub_1000D2A70(*(v0 + 520), v1, &unk_1016AF8C0, &unk_1013A07A0);
  v2 = type metadata accessor for BeaconProductInfoRecord();
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 512);
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &unk_1016AF8C0, &unk_1013A07A0);
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + *(v2 + 36));
    sub_100988488(v5, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 1304) = v6;
  if (v3(*(v0 + 520), 1, v2) == 1)
  {
    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    *(v0 + 1176) = v8;
    *v8 = v0;
    v8[1] = sub_100964D8C;

    return daemon.getter();
  }

  v9 = v0 + 16;
  v10 = *(v0 + 1080);
  *(v0 + 1248) = v10;
  if (*(v0 + 880))
  {
    v11 = *(v0 + 624);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v12);

    sub_10083138C(v12, v13, v11);
    v14 = *(v0 + 880);

    return _swift_task_switch(sub_100965EA0, v14, 0);
  }

  v15 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  (*(*(MyServiceDevice - 8) + 56))(v15, 1, 1, MyServiceDevice);
  v17 = *(v0 + 1032);
  v18 = *(v0 + 560);
  v19 = *(v0 + 544);
  v20 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v9;
  sub_1012BBB68(sub_1009867F0, v17, v20);
  *(v0 + 1264) = v10;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = *(v0 + 464);
  v21 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v21, v22, &unk_101698BC0, &qword_10138C440);
  v23 = type metadata accessor for MemberSharingCircle();
  v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
  v25 = *(v0 + 464);
  if (v24 == 1)
  {
    sub_10000B3A8(v25, &unk_101698BC0, &qword_10138C440);
LABEL_15:
    v26 = 0;
    goto LABEL_17;
  }

  v27 = *(v25 + *(v23 + 40));
  sub_100988488(v25, type metadata accessor for MemberSharingCircle);
  v26 = v27 == 1;
LABEL_17:
  v28 = *(v0 + 704);
  v29 = *(v0 + 688);
  v30 = *(v0 + 40);
  v31 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v30);
  v32 = (*(v31 + 144))(v30, v31);
  sub_10001F280(v0 + 16, v0 + 96);
  v33 = swift_dynamicCast();
  v34 = v33;
  if (v33)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v35 = *(v0 + 40);
  v36 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v35);
  v37 = (*(v36 + 112))(v35, v36);
  v38 = *(v0 + 1304);
  if (v37)
  {
    if (*(v0 + 1304))
    {
      v39 = 0;
    }

    else
    {
      v39 = 512;
    }

    if ((v38 | v32))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v40 = *(v0 + 40);
    v41 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v40);
    v42 = (*(v41 + 96))(v40, v41);
    if ((v42 ^ 1 | v38))
    {
      v39 = 0;
    }

    else
    {
      v39 = 512;
    }

    if ((v42 ^ 1 | v38 | v32))
    {
      goto LABEL_32;
    }
  }

  if ((v34 | v26))
  {
    v39 = 7167;
  }

  else
  {
    v39 = 512;
  }

LABEL_32:
  v43 = *(v0 + 40);
  v44 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v43);
  if ((*(v44 + 88))(v43, v44) & 1) != 0 || (v45 = *(v0 + 40), v46 = *(v0 + 48), sub_1000035D0((v0 + 16), v45), ((*(v46 + 128))(v45, v46)) || (v47 = *(v0 + 40), v48 = *(v0 + 48), sub_1000035D0((v0 + 16), v47), (((*(v48 + 120))(v47, v48) | v32)))
  {
    v39 |= 0x200uLL;
  }

  *(v0 + 1272) = v39;
  v49 = swift_task_alloc();
  *(v0 + 1280) = v49;
  *v49 = v0;
  v49[1] = sub_1009668E4;
  v50 = *(v0 + 1064);
  v51 = *(v0 + 1048);
  v52 = *(v0 + 1032);
  v53 = *(v0 + 424);
  v54 = *(v0 + 432);

  return sub_100968F34(v9, v53, v51, v50, v52);
}

uint64_t sub_100964D8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1176);
  v5 = *v1;
  v3[148] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[149] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v7 = v5;
  v7[1] = sub_100964F40;
  v10 = v3[109];
  v11 = v3[108];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100964F40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1192);
  v6 = *v2;
  v4[150] = a1;
  v4[151] = v1;

  if (v1)
  {
    v7 = v4[148];

    v8 = v4[54];
    v9 = sub_1009659D0;
  }

  else
  {
    v9 = sub_100965088;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100965088()
{
  v1 = v0[151];
  v2 = v0[150];
  sub_10001B108();
  v0[152] = v3;
  v0[153] = v1;
  v4 = v0[148];
  v5 = v0[108];
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_10096595C;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_1009651B8;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1009651B8()
{
  v1 = v0[150];
  v2 = v0[148];
  v3 = v0[54];

  return _swift_task_switch(sub_100965230, v3, 0);
}

uint64_t sub_100965230()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 832);
  sub_10001F280(v0 + 16, v0 + 176);
  v3 = swift_allocObject();
  *(v0 + 1232) = v3;
  *(v3 + 16) = v1;
  sub_10000A748((v0 + 176), v3 + 24);
  *(v3 + 64) = v2;
  *(v3 + 72) = 0;
  v4 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v5 = swift_task_alloc();
  *(v0 + 1240) = v5;
  *v5 = v0;
  v5[1] = sub_100965358;

  return unsafeBlocking<A>(context:_:)(v5, 0xD000000000000019, 0x80000001013CA9B0, sub_1009868A8, v3, &type metadata for () + 8);
}

uint64_t sub_100965358()
{
  v1 = *(*v0 + 1240);
  v2 = *(*v0 + 1232);
  v3 = *(*v0 + 432);
  v5 = *v0;

  return _swift_task_switch(sub_100965484, v3, 0);
}

uint64_t sub_100965484()
{
  v1 = v0 + 16;
  v2 = *(v0 + 1216);

  v3 = *(v0 + 1224);
  *(v0 + 1248) = v3;
  if (*(v0 + 880))
  {
    v4 = *(v0 + 624);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v5);

    sub_10083138C(v5, v6, v4);
    v7 = *(v0 + 880);

    return _swift_task_switch(sub_100965EA0, v7, 0);
  }

  v8 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  (*(*(MyServiceDevice - 8) + 56))(v8, 1, 1, MyServiceDevice);
  v10 = *(v0 + 1032);
  v11 = *(v0 + 560);
  v12 = *(v0 + 544);
  v13 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v1;
  sub_1012BBB68(sub_1009867F0, v10, v13);
  *(v0 + 1264) = v3;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = *(v0 + 464);
  v14 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v14, v15, &unk_101698BC0, &qword_10138C440);
  v16 = type metadata accessor for MemberSharingCircle();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  v18 = *(v0 + 464);
  if (v17 == 1)
  {
    sub_10000B3A8(v18, &unk_101698BC0, &qword_10138C440);
LABEL_8:
    v19 = 0;
    goto LABEL_10;
  }

  v20 = *(v18 + *(v16 + 40));
  sub_100988488(v18, type metadata accessor for MemberSharingCircle);
  v19 = v20 == 1;
LABEL_10:
  v21 = *(v0 + 704);
  v22 = *(v0 + 688);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v23);
  v25 = (*(v24 + 144))(v23, v24);
  sub_10001F280(v0 + 16, v0 + 96);
  v26 = swift_dynamicCast();
  v27 = v26;
  if (v26)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v28);
  v30 = (*(v29 + 112))(v28, v29);
  v31 = *(v0 + 1304);
  if (v30)
  {
    if (*(v0 + 1304))
    {
      v32 = 0;
    }

    else
    {
      v32 = 512;
    }

    if ((v31 | v25))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v33);
    v35 = (*(v34 + 96))(v33, v34);
    if ((v35 ^ 1 | v31))
    {
      v32 = 0;
    }

    else
    {
      v32 = 512;
    }

    if ((v35 ^ 1 | v31 | v25))
    {
      goto LABEL_25;
    }
  }

  if ((v27 | v19))
  {
    v32 = 7167;
  }

  else
  {
    v32 = 512;
  }

LABEL_25:
  v36 = *(v0 + 40);
  v37 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v36);
  if ((*(v37 + 88))(v36, v37) & 1) != 0 || (v38 = *(v0 + 40), v39 = *(v0 + 48), sub_1000035D0((v0 + 16), v38), ((*(v39 + 128))(v38, v39)) || (v40 = *(v0 + 40), v41 = *(v0 + 48), sub_1000035D0((v0 + 16), v40), (((*(v41 + 120))(v40, v41) | v25)))
  {
    v32 |= 0x200uLL;
  }

  *(v0 + 1272) = v32;
  v42 = swift_task_alloc();
  *(v0 + 1280) = v42;
  *v42 = v0;
  v42[1] = sub_1009668E4;
  v43 = *(v0 + 1064);
  v44 = *(v0 + 1048);
  v45 = *(v0 + 1032);
  v46 = *(v0 + 424);
  v47 = *(v0 + 432);

  return sub_100968F34(v1, v46, v44, v43, v45);
}

uint64_t sub_10096595C()
{
  v1 = v0[150];
  v2 = v0[148];

  v3 = v0[54];

  return _swift_task_switch(sub_1009659D0, v3, 0);
}

uint64_t sub_1009659D0()
{
  v1 = v0 + 16;
  *(v0 + 1248) = 0;
  if (*(v0 + 880))
  {
    v2 = *(v0 + 624);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v3);

    sub_10083138C(v3, v4, v2);
    v5 = *(v0 + 880);

    return _swift_task_switch(sub_100965EA0, v5, 0);
  }

  v6 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  (*(*(MyServiceDevice - 8) + 56))(v6, 1, 1, MyServiceDevice);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 560);
  v10 = *(v0 + 544);
  v11 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v1;
  sub_1012BBB68(sub_1009867F0, v8, v11);
  *(v0 + 1264) = 0;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = *(v0 + 464);
  v12 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v12, v13, &unk_101698BC0, &qword_10138C440);
  v14 = type metadata accessor for MemberSharingCircle();
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  v16 = *(v0 + 464);
  if (v15 == 1)
  {
    sub_10000B3A8(v16, &unk_101698BC0, &qword_10138C440);
LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  v18 = *(v16 + *(v14 + 40));
  sub_100988488(v16, type metadata accessor for MemberSharingCircle);
  v17 = v18 == 1;
LABEL_10:
  v19 = *(v0 + 704);
  v20 = *(v0 + 688);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v21);
  v23 = (*(v22 + 144))(v21, v22);
  sub_10001F280(v0 + 16, v0 + 96);
  v24 = swift_dynamicCast();
  v25 = v24;
  if (v24)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v26);
  v28 = (*(v27 + 112))(v26, v27);
  v29 = *(v0 + 1304);
  if (v28)
  {
    if (*(v0 + 1304))
    {
      v30 = 0;
    }

    else
    {
      v30 = 512;
    }

    if ((v29 | v23))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v31);
    v33 = (*(v32 + 96))(v31, v32);
    if ((v33 ^ 1 | v29))
    {
      v30 = 0;
    }

    else
    {
      v30 = 512;
    }

    if ((v33 ^ 1 | v29 | v23))
    {
      goto LABEL_25;
    }
  }

  if ((v25 | v17))
  {
    v30 = 7167;
  }

  else
  {
    v30 = 512;
  }

LABEL_25:
  v34 = *(v0 + 40);
  v35 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v34);
  if ((*(v35 + 88))(v34, v35) & 1) != 0 || (v36 = *(v0 + 40), v37 = *(v0 + 48), sub_1000035D0((v0 + 16), v36), ((*(v37 + 128))(v36, v37)) || (v38 = *(v0 + 40), v39 = *(v0 + 48), sub_1000035D0((v0 + 16), v38), (((*(v39 + 120))(v38, v39) | v23)))
  {
    v30 |= 0x200uLL;
  }

  *(v0 + 1272) = v30;
  v40 = swift_task_alloc();
  *(v0 + 1280) = v40;
  *v40 = v0;
  v40[1] = sub_1009668E4;
  v41 = *(v0 + 1064);
  v42 = *(v0 + 1048);
  v43 = *(v0 + 1032);
  v44 = *(v0 + 424);
  v45 = *(v0 + 432);

  return sub_100968F34(v1, v44, v42, v41, v43);
}

uint64_t sub_100965EA0()
{
  v1 = v0[110];
  if (*(v1 + 128))
  {
    v25 = v0[156];
    v2 = v0[140];
    v3 = v0[139];
    v4 = v0[78];
    v5 = v0[73];
    v7 = v0[61];
    v6 = v0[62];
    v8 = v0[60];
    v9 = *(v1 + 136);
    v10 = getuid();
    sub_1000294F0(v10);
    v3(v7 + *(v8 + 20), v4, v5);
    sub_100730604(v7, v6);
    v11 = v0[146];
    v12 = v0[145];
    v13 = v0[110];
    v14 = v0[78];
    v15 = v0[73];
    v16 = v0[61];
    if (v25)
    {
      v17 = v0[54];

      sub_100988488(v16, type metadata accessor for BeaconIdentifier);
      v12(v14, v15);

      v18 = sub_100966098;
      v19 = v17;
      goto LABEL_7;
    }

    sub_100988488(v0[61], type metadata accessor for BeaconIdentifier);
    v12(v14, v15);

    v23 = 0;
  }

  else
  {
    v20 = v0[146];
    v21 = v0[62];
    (v0[145])(v0[78], v0[73]);

    MyServiceDevice = type metadata accessor for FindMyServiceDevice();
    (*(*(MyServiceDevice - 8) + 56))(v21, 1, 1, MyServiceDevice);
    v23 = v0[156];
  }

  v0[157] = v23;
  v19 = v0[54];
  v18 = sub_1009664E0;
LABEL_7:

  return _swift_task_switch(v18, v19, 0);
}

uint64_t sub_100966098()
{
  v1 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  (*(*(MyServiceDevice - 8) + 56))(v1, 1, 1, MyServiceDevice);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 560);
  v5 = *(v0 + 544);
  v6 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_1012BBB68(sub_1009867F0, v3, v6);
  *(v0 + 1264) = 0;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v7, v8, &unk_101698BC0, &qword_10138C440);
  v9 = type metadata accessor for MemberSharingCircle();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  v11 = *(v0 + 464);
  if (v10 == 1)
  {
    sub_10000B3A8(v11, &unk_101698BC0, &qword_10138C440);
LABEL_4:
    v12 = 0;
    goto LABEL_6;
  }

  v13 = *(v11 + *(v9 + 40));
  sub_100988488(v11, type metadata accessor for MemberSharingCircle);
  v12 = v13 == 1;
LABEL_6:
  v14 = *(v0 + 704);
  v15 = *(v0 + 688);
  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v16);
  v18 = (*(v17 + 144))(v16, v17);
  sub_10001F280(v0 + 16, v0 + 96);
  v19 = swift_dynamicCast();
  v20 = v19;
  if (v19)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v21);
  v23 = (*(v22 + 112))(v21, v22);
  v24 = *(v0 + 1304);
  if (v23)
  {
    if (*(v0 + 1304))
    {
      v25 = 0;
    }

    else
    {
      v25 = 512;
    }

    if ((v24 | v18))
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v20 | v12))
    {
      v25 = 7167;
    }

    else
    {
      v25 = 512;
    }

    goto LABEL_21;
  }

  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v26);
  v28 = (*(v27 + 96))(v26, v27);
  if ((v28 ^ 1 | v24))
  {
    v25 = 0;
  }

  else
  {
    v25 = 512;
  }

  if (((v28 ^ 1 | v24 | v18) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v29);
  if ((*(v30 + 88))(v29, v30) & 1) != 0 || (v31 = *(v0 + 40), v32 = *(v0 + 48), sub_1000035D0((v0 + 16), v31), ((*(v32 + 128))(v31, v32)) || (v33 = *(v0 + 40), v34 = *(v0 + 48), sub_1000035D0((v0 + 16), v33), (((*(v34 + 120))(v33, v34) | v18)))
  {
    v25 |= 0x200uLL;
  }

  *(v0 + 1272) = v25;
  v35 = swift_task_alloc();
  *(v0 + 1280) = v35;
  *v35 = v0;
  v35[1] = sub_1009668E4;
  v36 = *(v0 + 1064);
  v37 = *(v0 + 1048);
  v38 = *(v0 + 1032);
  v39 = *(v0 + 424);
  v40 = *(v0 + 432);

  return sub_100968F34(v0 + 16, v39, v37, v36, v38);
}

uint64_t sub_1009664E0()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 560);
  v4 = *(v0 + 544);
  v5 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_1012BBB68(sub_1009867F0, v2, v5);
  *(v0 + 1264) = v1;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v6, v7, &unk_101698BC0, &qword_10138C440);
  v8 = type metadata accessor for MemberSharingCircle();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  v10 = *(v0 + 464);
  if (v9 == 1)
  {
    sub_10000B3A8(v10, &unk_101698BC0, &qword_10138C440);
LABEL_4:
    v11 = 0;
    goto LABEL_6;
  }

  v12 = *(v10 + *(v8 + 40));
  sub_100988488(v10, type metadata accessor for MemberSharingCircle);
  v11 = v12 == 1;
LABEL_6:
  v13 = *(v0 + 704);
  v14 = *(v0 + 688);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v15);
  v17 = (*(v16 + 144))(v15, v16);
  sub_10001F280(v0 + 16, v0 + 96);
  v18 = swift_dynamicCast();
  v19 = v18;
  if (v18)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v20);
  v22 = (*(v21 + 112))(v20, v21);
  v23 = *(v0 + 1304);
  if (v22)
  {
    if (*(v0 + 1304))
    {
      v24 = 0;
    }

    else
    {
      v24 = 512;
    }

    if ((v23 | v17))
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v19 | v11))
    {
      v24 = 7167;
    }

    else
    {
      v24 = 512;
    }

    goto LABEL_21;
  }

  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v25);
  v27 = (*(v26 + 96))(v25, v26);
  if ((v27 ^ 1 | v23))
  {
    v24 = 0;
  }

  else
  {
    v24 = 512;
  }

  if (((v27 ^ 1 | v23 | v17) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v28);
  if ((*(v29 + 88))(v28, v29) & 1) != 0 || (v30 = *(v0 + 40), v31 = *(v0 + 48), sub_1000035D0((v0 + 16), v30), ((*(v31 + 128))(v30, v31)) || (v32 = *(v0 + 40), v33 = *(v0 + 48), sub_1000035D0((v0 + 16), v32), (((*(v33 + 120))(v32, v33) | v17)))
  {
    v24 |= 0x200uLL;
  }

  *(v0 + 1272) = v24;
  v34 = swift_task_alloc();
  *(v0 + 1280) = v34;
  *v34 = v0;
  v34[1] = sub_1009668E4;
  v35 = *(v0 + 1064);
  v36 = *(v0 + 1048);
  v37 = *(v0 + 1032);
  v38 = *(v0 + 424);
  v39 = *(v0 + 432);

  return sub_100968F34(v0 + 16, v38, v36, v35, v37);
}

uint64_t sub_1009668E4(uint64_t a1)
{
  v2 = *(*v1 + 1280);
  v3 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 1288) = a1;

  return _swift_task_switch(sub_1009669FC, v3, 0);
}

uint64_t sub_1009669FC()
{
  v236 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 640);
  v5 = *(v0 + 584);
  p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
  v7 = [*(v0 + 1288) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v3) = sub_1005C8A30(v4, v3);
  v2(v4, v5);
  v212 = v0;
  if (v3)
  {
    v210 = *(v0 + 1096);
    v211 = *(v0 + 1104);
  }

  else
  {
    v8 = *(v0 + 1104);
    v9 = *(v0 + 1288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v211 = *(v0 + 1104);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_47:
      v211 = sub_100A5E50C(0, *(v211 + 2) + 1, 1, v211);
    }

    v12 = *(v211 + 2);
    v11 = *(v211 + 3);
    if (v12 >= v11 >> 1)
    {
      v211 = sub_100A5E50C((v11 > 1), v12 + 1, 1, v211);
    }

    v13 = *(v212 + 1288);
    v14 = *(v212 + 1272);
    v15 = *(v212 + 1096);
    v16 = *(v212 + 616);
    *(v211 + 2) = v12 + 1;
    v17 = &v211[16 * v12];
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
    v18 = [v13 p_weak_ivar_lyt[388]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v210 = *(v212 + 1096);
    if ((v19 & 1) == 0)
    {
      v210 = sub_100A5BFE0(0, v210[2] + 1, 1, v210);
    }

    v21 = v210[2];
    v20 = v210[3];
    if (v21 >= v20 >> 1)
    {
      v210 = sub_100A5BFE0(v20 > 1, v21 + 1, 1, v210);
    }

    v22 = *(v212 + 1144);
    v23 = *(v212 + 1136);
    v24 = *(v212 + 1300);
    v25 = *(v212 + 616);
    v26 = *(v212 + 592);
    v27 = *(v212 + 584);

    v210[2] = v21 + 1;
    v28 = v210 + ((v24 + 32) & ~v24) + *(v26 + 72) * v21;
    v0 = v212;
    v23(v28, v25, v27);
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 792);
  v31 = *(v0 + 784);
  ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  if (Duration.milliseconds.getter() < 101)
  {
    v62 = *(v0 + 1288);
    v63 = *(v0 + 792);
    v64 = *(v0 + 784);
    v65 = *(v212 + 736);
    v66 = *(v212 + 728);
    v67 = *(v212 + 496);
    v68 = *(v212 + 472);

    v69 = *(v65 + 8);
    v69(v64, v66);
    sub_10000B3A8(v68, &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v67, &unk_1016AF930, &unk_1013C35B0);
    v69(v63, v66);
    goto LABEL_15;
  }

  v32 = *(v0 + 992);
  v33 = *(v0 + 792);
  v34 = *(v0 + 784);
  v35 = *(v0 + 776);
  v36 = *(v0 + 768);
  v37 = *(v212 + 736);
  v38 = *(v212 + 728);
  sub_10001F280(v212 + 16, v212 + 136);
  v39 = *(v37 + 16);
  v39(v35, v33, v38);
  v39(v36, v34, v38);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v212 + 1288);
  if (v42)
  {
    v197 = *(v212 + 1168);
    v44 = *(v212 + 1160);
    v230 = *(v212 + 792);
    v220 = *(v212 + 784);
    v201 = *(v212 + 776);
    v199 = *(v212 + 768);
    v45 = *(v212 + 736);
    v203 = *(v212 + 728);
    v46 = *(v212 + 640);
    v47 = *(v212 + 584);
    v225 = *(v212 + 496);
    v213 = *(v212 + 1288);
    v216 = *(v212 + 472);
    v48 = *(v212 + 456);
    v49 = *(v212 + 448);
    v205 = *(v212 + 440);
    v50 = swift_slowAlloc();
    v235[0] = swift_slowAlloc();
    *v50 = 141558531;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    v51 = *(v212 + 160);
    v207 = v41;
    v52 = *(v212 + 168);
    sub_1000035D0((v212 + 136), v51);
    (*(*(*(v52 + 8) + 8) + 32))(v51);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v44(v46, v47);
    sub_100007BAC((v212 + 136));
    v56 = sub_1000136BC(v53, v55, v235);

    *(v50 + 14) = v56;
    *(v50 + 22) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
    v57 = static Duration.description<A>(_:_:units:)();
    v59 = v58;
    (*(v49 + 8))(v48, v205);
    v60 = *(v45 + 8);
    v60(v199, v203);
    v60(v201, v203);
    v61 = sub_1000136BC(v57, v59, v235);

    *(v50 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v40, v207, "Slow beacon processing time for %{private,mask.hash}s: %{public}s", v50, 0x20u);
    swift_arrayDestroy();

    v60(v220, v203);
    sub_10000B3A8(v216, &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v225, &unk_1016AF930, &unk_1013C35B0);
    v60(v230, v203);
LABEL_15:
    v70 = v212;
    goto LABEL_17;
  }

  v71 = *(v212 + 792);
  v72 = *(v212 + 784);
  v73 = *(v212 + 776);
  v74 = *(v212 + 768);
  v75 = *(v212 + 736);
  v76 = *(v212 + 728);
  v77 = *(v212 + 496);
  v78 = *(v212 + 472);

  v79 = *(v75 + 8);
  v79(v74, v76);
  v79(v73, v76);
  v79(v72, v76);
  sub_10000B3A8(v78, &unk_101698BC0, &qword_10138C440);
  sub_10000B3A8(v77, &unk_1016AF930, &unk_1013C35B0);
  v79(v71, v76);
  v70 = v212;
  sub_100007BAC((v212 + 136));
LABEL_17:
  sub_10000B3A8(*(v70 + 520), &unk_1016AF8C0, &unk_1013A07A0);
  v209 = *(v70 + 1264);
  v80 = *(v70 + 1072);
  v81 = *(v70 + 1088) + 1;
  sub_100007BAC((v70 + 16));
  if (v81 != v80)
  {
    p_weak_ivar_lyt = &unk_1016AA470;
    do
    {
      v114 = *(v70 + 1088) + 1;
      *(v70 + 1104) = v211;
      *(v70 + 1096) = v210;
      *(v70 + 1088) = v114;
      *(v70 + 1080) = v209;
      v115 = *(v70 + 1016);
      if (v114 >= *(v115 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      v116 = *(v70 + 824);
      v117 = *(v70 + 792);
      sub_10001F280(v115 + 40 * v114 + 32, v70 + 16);
      ContinuousClock.now.getter();
      v118 = *(v70 + 40);
      v119 = *(v70 + 48);
      sub_1000035D0((v70 + 16), v118);
      if ((*(v119 + 112))(v118, v119))
      {
        v120 = *(v70 + 552);
        v121 = *(v70 + 544);
        v122 = *(v70 + 528);
        sub_10001F280(v70 + 16, v70 + 216);
        sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
        v123 = swift_dynamicCast();
        v124 = *(v120 + 56);
        if (v123)
        {
          v125 = *(v70 + 1296);
          v126 = *(v70 + 568);
          v127 = *(v70 + 528);
          v124(v127, 0, 1, *(v70 + 544));
          sub_100986170(v127, v126, type metadata accessor for SharedBeaconRecord);
          My = type metadata accessor for Feature.FindMy();
          *(v70 + 280) = My;
          *(v70 + 288) = sub_100985CA0(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
          v129 = sub_1000280DC((v70 + 256));
          (*(*(My - 8) + 104))(v129, v125, My);
          LOBYTE(v125) = isFeatureEnabled(_:)();
          sub_100007BAC((v70 + 256));
          v130 = *(v70 + 568);
          if ((v125 & 1) == 0)
          {
            sub_100988488(v130, type metadata accessor for SharedBeaconRecord);
            goto LABEL_23;
          }

          v131 = *(v130 + *(*(v70 + 544) + 64));
          sub_100988488(v130, type metadata accessor for SharedBeaconRecord);
          if (v131 == 1 || v131 == 4)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v109 = *(v70 + 528);
          v124(v109, 1, 1, *(v70 + 544));
          sub_10000B3A8(v109, &unk_101698C30, &unk_101392630);
        }
      }

      v110 = *(v70 + 40);
      v111 = *(v70 + 48);
      sub_1000035D0((v70 + 16), v110);
      if (((*(v111 + 168))(v110, v111) & 1) == 0)
      {
        v170 = *(v70 + 640);
        v171 = *(v70 + 424);
        v172 = *(v70 + 40);
        v173 = *(v70 + 48);
        sub_1000035D0((v70 + 16), v172);
        (*(*(*(v173 + 8) + 8) + 32))(v172);
        v154 = sub_100964448;
        v155 = v171;
        v156 = 0;

        return _swift_task_switch(v154, v155, v156);
      }

LABEL_23:
      (*(*(v70 + 736) + 8))(*(v70 + 792), *(v70 + 728));
      v112 = *(v70 + 1072);
      v113 = *(v70 + 1088) + 1;
      sub_100007BAC((v70 + 16));
    }

    while (v113 != v112);
  }

  v82 = *(v70 + 1064);
  v83 = *(v70 + 1048);
  v84 = *(v70 + 1032);
  v85 = *(v70 + 1016);
  v86 = *(v70 + 824);
  v87 = *(v70 + 800);
  v88 = *(v70 + 760);
  v89 = *(v70 + 752);
  v221 = *(v70 + 744);
  v90 = *(v70 + 736);
  v91 = *(v70 + 728);
  v226 = *(v70 + 416);
  v231 = *(v70 + 992);
  swift_bridgeObjectRelease_n();

  ContinuousClock.now.getter();
  v92 = *(v90 + 16);
  v92(v89, v87, v91);
  v92(v221, v88, v91);
  swift_bridgeObjectRetain_n();
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  v95 = os_log_type_enabled(v93, v94);
  v96 = *(v70 + 752);
  v97 = *(v70 + 744);
  v98 = *(v70 + 736);
  v99 = *(v70 + 728);
  if (v95)
  {
    v232 = v94;
    v101 = *(v70 + 448);
    v100 = *(v70 + 456);
    v217 = *(v70 + 440);
    v222 = *(v70 + 416);
    v102 = swift_slowAlloc();
    v227 = swift_slowAlloc();
    v235[0] = v227;
    *v102 = 136446466;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
    v103 = static Duration.description<A>(_:_:units:)();
    v105 = v104;
    (*(v101 + 8))(v100, v217);
    v106 = *(v98 + 8);
    v106(v97, v99);
    v208 = v106;
    v106(v96, v99);
    v107 = sub_1000136BC(v103, v105, v235);

    *(v102 + 4) = v107;
    *(v102 + 12) = 2048;
    v108 = *(v222 + 16);

    *(v102 + 14) = v108;

    _os_log_impl(&_mh_execute_header, v93, v232, "session processing time: %{public}s, count: %ld.", v102, 0x16u);
    sub_100007BAC(v227);
  }

  else
  {
    v132 = *(v70 + 416);
    swift_bridgeObjectRelease_n();

    v133 = *(v98 + 8);
    v133(v97, v99);
    v208 = v133;
    v133(v96, v99);
  }

  v134 = *(v211 + 2);
  v135 = &ShareStopUseCase.weak_ivar_lyt;
  if (v134)
  {
    v136 = *(v212 + 592);
    v137 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    v223 = (v136 + 16);
    v214 = *(v212 + 432);
    v218 = (v136 + 8);
    v138 = (v211 + 40);
    do
    {
      v139 = *(v212 + 640);
      v140 = *(v212 + 608);
      v141 = *(v212 + 584);
      v228 = *v138;
      v233 = *(v212 + 632);
      v142 = *(v138 - 1);
      v143 = [v142 v135[388]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v144 = v142;
      v145 = *(v214 + v137);
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v235[0] = *(v214 + v137);
      *(v214 + v137) = 0x8000000000000000;
      sub_1010004D4(v144, v228, v139, v146);
      *(v214 + v137) = v235[0];
      swift_endAccess();
      (*v223)(v140, v139, v141);
      sub_100DE8BCC(v233, v140);

      v135 = (&ShareStopUseCase + 56);
      v147 = *v218;
      (*v218)(v233, v141);
      v147(v139, v141);
      v138 += 2;
      --v134;
    }

    while (v134);
  }

  v148 = *(v212 + 432);
  v149 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  v150 = *(v148 + v149);
  v151 = *(v150 + 16);
  if (v151)
  {
    v152 = sub_1003A88D8(*(v150 + 16), 0);
    v153 = sub_1003AA6E8(v235, v152 + 4, v151, v150);

    v154 = sub_1000128F8();
    if (v153 != v151)
    {
      __break(1u);
      return _swift_task_switch(v154, v155, v156);
    }

    v157 = v152;
  }

  else
  {
    v157 = _swiftEmptyArrayStorage;
  }

  v158 = *(v212 + 824);
  v159 = *(v212 + 816);
  v175 = *(v212 + 880);
  v176 = *(v212 + 808);
  v160 = *(v212 + 800);
  v177 = *(v212 + 792);
  v178 = *(v212 + 784);
  v179 = *(v212 + 776);
  v180 = *(v212 + 768);
  v161 = *(v212 + 760);
  v181 = *(v212 + 752);
  v182 = *(v212 + 744);
  v174 = *(v212 + 736);
  v162 = *(v212 + 728);
  v183 = *(v212 + 720);
  v184 = *(v212 + 712);
  v185 = *(v212 + 704);
  v186 = *(v212 + 680);
  v187 = *(v212 + 672);
  v188 = *(v212 + 664);
  v189 = *(v212 + 648);
  v190 = *(v212 + 640);
  v191 = *(v212 + 632);
  v192 = *(v212 + 624);
  v193 = *(v212 + 616);
  v194 = *(v212 + 608);
  v195 = *(v212 + 576);
  v196 = *(v212 + 568);
  v198 = *(v212 + 560);
  v200 = *(v212 + 536);
  v202 = *(v212 + 528);
  v204 = *(v212 + 520);
  v206 = *(v212 + 512);
  v215 = *(v212 + 496);
  v219 = *(v212 + 488);
  v224 = *(v212 + 472);
  v229 = *(v212 + 464);
  v234 = *(v212 + 456);
  v163 = *(v212 + 432);
  v164 = *(v163 + 176);
  v165 = swift_allocObject();
  *(v165 + 16) = v163;
  *(v165 + 24) = v157;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v166 = *(v163 + 232);
  v167 = sub_100948F40(&_swiftEmptySetSingleton, 1);

  *(v212 + 408) = v167;
  AsyncStreamProvider.yield(value:transaction:)();

  v208(v161, v162);
  v208(v160, v162);
  (*(v159 + 8))(v158, v176);

  v168 = *(v212 + 8);

  return v168(&_swiftEmptySetSingleton);
}

uint64_t sub_100967CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100967DD4, a3, 0);
}

uint64_t sub_100967DD4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v4 + 16);
  v0[11] = v7;
  v0[12] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[13] = v9;
  *(v9 + 16) = v6;
  v10 = *(v4 + 32);
  v0[14] = v10;
  v0[15] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v1, v3);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_100967F48;
  v14 = v0[9];
  v13 = v0[10];

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100986AB4, v9, v14);
}

uint64_t sub_100967F48()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100968060, 0, 0);
}

uint64_t sub_100968060()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(*(v0 + 48) + 48);
  if (v3(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 96);
    (*(v0 + 88))(*(v0 + 16), *(v0 + 24), v2);
    if (v3(v1, 1, v2) != 1)
    {
      sub_10000B3A8(*(v0 + 80), &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    v5 = *(v0 + 120);
    (*(v0 + 112))(*(v0 + 16), v1, v2);
  }

  v6 = *(v0 + 80);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100968164(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for MemberSharingCircle() + 24);
  v9 = a2[3];
  v10 = a2[4];
  sub_1000035D0(a2, v9);
  (*(*(*(v10 + 8) + 8) + 32))(v9);
  LOBYTE(a2) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return a2 & 1;
}

uint64_t sub_10096829C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1009682BC, 0, 0);
}

uint64_t sub_1009682BC()
{
  type metadata accessor for Transaction();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = async function pointer to static Transaction.named<A>(_:with:)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1009683A4;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1009683A4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 32);

    return _swift_task_switch(Database.await(state:), 0, 0);
  }
}

uint64_t sub_1009684E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return _swift_task_switch(sub_1009684FC, a2, 0);
}

uint64_t sub_1009684FC()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10097CAD8(0xD000000000000020, 0x8000000101366680);
  v0[6] = *(v2 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cacheWriteThrottle);
  v0[2] = 0xD00000000000002CLL;
  v0[3] = 0x80000001013666B0;
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_1000041A4(&qword_101698E00, &qword_1016B1270, &qword_101390A00);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100968648, v5, v4);
}

uint64_t sub_100968648()
{
  v2 = v0[6];
  v1 = v0[7];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1009686D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  v3[11] = v11;
  *v11 = v3;
  v11[1] = sub_100968828;

  return daemon.getter();
}

uint64_t sub_100968828(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100968A04;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100968A04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_100968EB8;
  }

  else
  {
    v9 = v4[12];
    v10 = v4[4];

    v4[15] = a1;
    v8 = sub_100968B44;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100968B44()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(v7 + 192))(v6, v7);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_100968C6C;
  v9 = v0[15];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[2];

  return sub_1010CD424(v12, v10, v11);
}

uint64_t sub_100968C6C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 40);
  v8 = *(*v0 + 32);
  v10 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100968E3C, v8, 0);
}

uint64_t sub_100968E3C()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100968EB8()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_100968F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[92] = v5;
  v6[91] = a5;
  v6[90] = a4;
  v6[89] = a3;
  v6[88] = a2;
  v6[87] = a1;
  v7 = sub_1000BC4D4(&qword_1016AF888, &unk_1013CAD70);
  v6[93] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v9 = type metadata accessor for BeaconStatus(0);
  v6[98] = v9;
  v10 = *(v9 - 8);
  v6[99] = v10;
  v11 = *(v10 + 64) + 15;
  v6[100] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v6[101] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[102] = swift_task_alloc();
  v14 = type metadata accessor for OwnedBeaconGroup(0);
  v6[103] = v14;
  v15 = *(v14 - 8);
  v6[104] = v15;
  v6[105] = *(v15 + 64);
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0) - 8) + 64) + 15;
  v6[108] = swift_task_alloc();
  v17 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v6[109] = swift_task_alloc();
  v18 = type metadata accessor for LocalFindableAccessoryRecord();
  v6[110] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  v20 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v6[113] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v6[114] = swift_task_alloc();
  v6[115] = swift_task_alloc();
  v22 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v6[116] = swift_task_alloc();
  v23 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v6[117] = v23;
  v24 = *(v23 - 8);
  v6[118] = v24;
  v25 = *(v24 + 64) + 15;
  v6[119] = swift_task_alloc();
  v26 = *(type metadata accessor for SafeLocation() - 8);
  v6[120] = v26;
  v27 = *(v26 + 64) + 15;
  v6[121] = swift_task_alloc();
  v6[122] = swift_task_alloc();
  v28 = type metadata accessor for KeyDropLostItemDates(0);
  v6[123] = v28;
  v29 = *(v28 - 8);
  v6[124] = v29;
  v30 = *(v29 + 64) + 15;
  v6[125] = swift_task_alloc();
  v31 = *(*(sub_1000BC4D4(&unk_101698C20, &qword_101390748) - 8) + 64) + 15;
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  v32 = *(*(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8) + 64) + 15;
  v6[128] = swift_task_alloc();
  v6[129] = swift_task_alloc();
  v33 = type metadata accessor for SharedBeaconRecord(0);
  v6[130] = v33;
  v34 = *(v33 - 8);
  v6[131] = v34;
  v35 = *(v34 + 64) + 15;
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = swift_task_alloc();
  v6[135] = swift_task_alloc();
  v6[136] = swift_task_alloc();
  v6[137] = swift_task_alloc();
  v6[138] = swift_task_alloc();
  v36 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v6[139] = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  v38 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v6[142] = swift_task_alloc();
  v39 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v6[143] = swift_task_alloc();
  v6[144] = swift_task_alloc();
  v6[145] = swift_task_alloc();
  v6[146] = swift_task_alloc();
  v6[147] = swift_task_alloc();
  v6[148] = swift_task_alloc();
  v6[149] = swift_task_alloc();
  v40 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v6[150] = v40;
  v41 = *(*(v40 - 8) + 64) + 15;
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  v42 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v6[153] = swift_task_alloc();
  v43 = type metadata accessor for OwnedBeaconRecord();
  v6[154] = v43;
  v44 = *(v43 - 8);
  v6[155] = v44;
  v6[156] = *(v44 + 64);
  v6[157] = swift_task_alloc();
  v6[158] = swift_task_alloc();
  v6[159] = swift_task_alloc();
  v6[160] = swift_task_alloc();
  v6[161] = swift_task_alloc();
  v45 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v6[162] = swift_task_alloc();
  v6[163] = swift_task_alloc();
  v6[164] = swift_task_alloc();
  v6[165] = swift_task_alloc();
  v6[166] = swift_task_alloc();
  v46 = type metadata accessor for Date();
  v6[167] = v46;
  v47 = *(v46 - 8);
  v6[168] = v47;
  v48 = *(v47 + 64) + 15;
  v6[169] = swift_task_alloc();
  v6[170] = swift_task_alloc();
  v6[171] = swift_task_alloc();
  v49 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v6[172] = v49;
  v50 = *(*(v49 - 8) + 64) + 15;
  v6[173] = swift_task_alloc();
  v6[174] = swift_task_alloc();
  v6[175] = swift_task_alloc();
  v51 = *(*(sub_1000BC4D4(&qword_1016A62E8, &qword_1013B3CB0) - 8) + 64) + 15;
  v6[176] = swift_task_alloc();
  v6[177] = swift_task_alloc();
  v52 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v6[178] = v52;
  v53 = *(*(v52 - 8) + 64) + 15;
  v6[179] = swift_task_alloc();
  v6[180] = swift_task_alloc();
  v6[181] = swift_task_alloc();
  v6[182] = swift_task_alloc();
  v6[183] = swift_task_alloc();
  v6[184] = swift_task_alloc();
  v54 = type metadata accessor for BeaconProductInfoRecord();
  v6[185] = v54;
  v55 = *(v54 - 8);
  v6[186] = v55;
  v56 = *(v55 + 64) + 15;
  v6[187] = swift_task_alloc();
  v57 = type metadata accessor for UUID();
  v6[188] = v57;
  v58 = *(v57 - 8);
  v6[189] = v58;
  v6[190] = *(v58 + 64);
  v6[191] = swift_task_alloc();
  v6[192] = swift_task_alloc();
  v6[193] = swift_task_alloc();
  v6[194] = swift_task_alloc();
  v6[195] = swift_task_alloc();
  v6[196] = swift_task_alloc();
  v6[197] = swift_task_alloc();
  v6[198] = swift_task_alloc();
  v6[199] = swift_task_alloc();
  v6[200] = swift_task_alloc();
  v6[201] = swift_task_alloc();
  v6[202] = swift_task_alloc();
  v6[203] = swift_task_alloc();
  v6[204] = swift_task_alloc();
  v6[205] = swift_task_alloc();
  v59 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v6[206] = v59;
  v60 = *(*(v59 - 8) + 64) + 15;
  v6[207] = swift_task_alloc();
  v61 = type metadata accessor for BeaconNamingRecord();
  v6[208] = v61;
  v62 = *(v61 - 8);
  v6[209] = v62;
  v63 = *(v62 + 64) + 15;
  v6[210] = swift_task_alloc();
  v64 = async function pointer to daemon.getter[1];
  v65 = swift_task_alloc();
  v6[211] = v65;
  *v65 = v6;
  v65[1] = sub_100969AB8;

  return daemon.getter();
}

uint64_t sub_100969AB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1688);
  v12 = *v1;
  v3[212] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[213] = v6;
  v7 = type metadata accessor for Daemon();
  v3[214] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[215] = v9;
  v10 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100969C98;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100969C98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1704);
  v6 = *v2;
  v4[216] = a1;
  v4[217] = v1;

  if (v1)
  {
    v7 = v4[212];

    v8 = v4[92];
    v9 = sub_10096A0BC;
  }

  else
  {
    v9 = sub_100969DE0;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100969DE0()
{
  v1 = v0[217];
  v2 = v0[216];
  sub_10001B108();
  v0[218] = v3;
  v0[219] = v1;
  v4 = v0[214];
  v5 = v0[212];
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_10096A048;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_100969F10;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100969F10()
{
  v1 = v0[216];
  v2 = v0[212];
  v3 = v0[92];

  return _swift_task_switch(sub_100969F88, v3, 0);
}

uint64_t sub_100969F88()
{
  v1 = v0[219];
  v2 = v0[92];
  v0[222] = v0[218];
  v0[221] = v2;
  v0[220] = v1;
  v3 = v0[205];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v5[3];
  v7 = v5[4];
  sub_1000035D0(v5, v6);
  (*(*(*(v7 + 8) + 8) + 32))(v6);

  return _swift_task_switch(sub_10096A174, v4, 0);
}

uint64_t sub_10096A048()
{
  v1 = v0[216];
  v2 = v0[212];

  v3 = v0[92];

  return _swift_task_switch(sub_10096A0BC, v3, 0);
}

uint64_t sub_10096A0BC()
{
  v1 = v0[92];
  v0[222] = 0;
  v0[221] = v1;
  v0[220] = 0;
  v2 = v0[205];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v4[3];
  v6 = v4[4];
  sub_1000035D0(v4, v5);
  (*(*(*(v6 + 8) + 8) + 32))(v5);

  return _swift_task_switch(sub_10096A174, v3, 0);
}

uint64_t sub_10096A174()
{
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1512);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 704);
  v7 = *(v4 + 16);
  *(v0 + 1784) = v7;
  *(v0 + 1792) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v5);
  v8 = *(v4 + 80);
  *(v0 + 2832) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 1800) = v10;
  *(v10 + 16) = v6;
  v11 = *(v4 + 32);
  *(v0 + 1808) = v11;
  *(v0 + 1816) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v5);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 1824) = v13;
  *v13 = v0;
  v13[1] = sub_10096A308;
  v14 = *(v0 + 1656);
  v15 = *(v0 + 1648);

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_100986390, v10, v15);
}

uint64_t sub_10096A308()
{
  v1 = *v0;
  v2 = *(*v0 + 1824);
  v3 = *(*v0 + 1800);
  v4 = *(*v0 + 1640);
  v5 = *(*v0 + 1512);
  v6 = *(*v0 + 1504);
  v10 = *v0;

  v7 = *(v5 + 8);
  v1[229] = v7;
  v1[230] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v8 = v1[221];

  return _swift_task_switch(sub_10096A4AC, v8, 0);
}

uint64_t sub_10096A4AC()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1656);
  if ((*(*(v0 + 1672) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 704);
    sub_10000B3A8(v2, &unk_1016B29E0, &unk_1013B70E0);
    v4 = sub_10096A744;
    v5 = v3;
  }

  else
  {
    v6 = *(v0 + 1680);
    v7 = *(v0 + 696);
    sub_100986170(v2, v6, type metadata accessor for BeaconNamingRecord);
    v8 = v7[3];
    v9 = v7[4];
    sub_1000035D0(v7, v8);
    v10 = *(v6 + *(v1 + 28));
    v11 = (*(v9 + 208))(v10, v8, v9);
    v12 = v11;
    v13 = *(v0 + 1680);
    v14 = *(v0 + 1664);
    if (v10 == SPBeaconRoleIdOther)
    {
      v15 = (v13 + *(v14 + 36));
      if (v15[1])
      {
        if (v11)
        {
          v16 = *v15;
          v17 = [v11 role];
          if (!v17)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = String._bridgeToObjectiveC()();
          }

          v18 = objc_allocWithZone(SPBeaconRole);
          v19 = String._bridgeToObjectiveC()();
          v20 = [v18 initWithRoleId:v10 role:v17 roleEmoji:v19];

          v13 = *(v0 + 1680);
          v14 = *(v0 + 1664);
          v12 = v20;
        }
      }
    }

    v21 = (v13 + *(v14 + 32));
    v23 = *v21;
    v22 = v21[1];
    v24 = v12;

    sub_100988488(v13, type metadata accessor for BeaconNamingRecord);
    v25 = *(v0 + 1760);
    *(v0 + 1928) = v22;
    *(v0 + 1920) = v23;
    *(v0 + 1912) = v12;
    *(v0 + 1904) = v25;
    v26 = *(v0 + 1640);
    v27 = *(v0 + 704);
    v28 = *(v0 + 696);
    *(v0 + 2836) = *(*(v0 + 1376) + 48);
    v29 = v28[3];
    v30 = v28[4];
    sub_1000035D0(v28, v29);
    (*(*(*(v30 + 8) + 8) + 32))(v29);
    v4 = sub_10096B704;
    v5 = v27;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10096A744()
{
  v1 = *(v0 + 704);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1848) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_10096A824;
  v5 = *(v0 + 704);

  return unsafeBlocking<A>(context:_:)(v0 + 680, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_10096A824()
{
  v1 = *(*v0 + 1848);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return _swift_task_switch(sub_10096A93C, v2, 0);
}

uint64_t sub_10096A960()
{
  v1 = v0[203];
  v2 = v0[202];
  v3 = v0[87];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = getuid();
  sub_1000294F0(v6);

  return _swift_task_switch(sub_10096AA14, 0, 0);
}

uint64_t sub_10096AA14()
{
  v1 = *(v0[232] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[233] = v2;
  *v2 = v0;
  v2[1] = sub_10096AAC4;
  v3 = v0[203];
  v4 = v0[202];

  return sub_100687A6C((v0 + 11), v3, v4);
}

uint64_t sub_10096AAC4()
{
  v2 = *v1;
  v3 = *(*v1 + 1864);
  v12 = *v1;
  *(*v1 + 1872) = v0;

  if (v0)
  {

    v4 = sub_10096AED0;
    v5 = 0;
  }

  else
  {
    v6 = v2[232];
    v7 = v2[230];
    v8 = v2[229];
    v9 = v2[203];
    v10 = v2[188];
    v8(v2[202], v10);
    v8(v9, v10);

    v5 = v2[221];
    v4 = sub_10096AC2C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10096AC2C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  if (v1)
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 696);
    v6 = *(v0 + 104);
    v7 = v5[3];
    v8 = v5[4];
    sub_1000035D0(v5, v7);
    v9 = (*(v8 + 208))(v6, v7, v8);
    v10 = v9;
    if (v6 != SPBeaconRoleIdOther || v3 == 0 || v9 == 0)
    {
      v13 = v9;
    }

    else
    {

      v24 = [v10 role];
      v25 = v24;
      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = String._bridgeToObjectiveC()();
      }

      v26 = objc_allocWithZone(SPBeaconRole);
      v27 = String._bridgeToObjectiveC()();

      v13 = [v26 initWithRoleId:v6 role:v25 roleEmoji:v27];

      v10 = v13;
    }

    v28 = v13;

    sub_10000B3A8(v0 + 88, &unk_1016AF910, &unk_10138C4C0);
    v14 = *(v0 + 1872);
  }

  else
  {
    v14 = *(v0 + 1872);
    *(v0 + 1880) = v14;
    v15 = *(v0 + 696);
    v16 = v15[3];
    v17 = v15[4];
    sub_1000035D0(v15, v16);
    if ((*(v17 + 144))(v16, v17))
    {
      v18 = *(v0 + 1640);
      v19 = *(v0 + 704);
      v20 = *(v0 + 696);
      v21 = v20[3];
      v22 = v20[4];
      sub_1000035D0(v20, v21);
      (*(*(*(v22 + 8) + 8) + 32))(v21);
      v23 = sub_10096B0BC;
      goto LABEL_19;
    }

    v10 = 0;
    v2 = 0;
  }

  *(v0 + 1928) = v1;
  *(v0 + 1920) = v2;
  *(v0 + 1912) = v10;
  *(v0 + 1904) = v14;
  v29 = *(v0 + 1640);
  v19 = *(v0 + 704);
  v30 = *(v0 + 696);
  *(v0 + 2836) = *(*(v0 + 1376) + 48);
  v31 = v30[3];
  v32 = v30[4];
  sub_1000035D0(v30, v31);
  (*(*(*(v32 + 8) + 8) + 32))(v31);
  v23 = sub_10096B704;
LABEL_19:

  return _swift_task_switch(v23, v19, 0);
}

uint64_t sub_10096AED0()
{
  v1 = v0[232];
  v2 = v0[230];
  v3 = v0[229];
  v4 = v0[203];
  v5 = v0[188];
  v3(v0[202], v5);
  v3(v4, v5);

  v6 = v0[221];

  return _swift_task_switch(sub_10096AF74, v6, 0);
}

uint64_t sub_10096AF74()
{
  *(v0 + 1880) = 0;
  v1 = *(v0 + 696);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  if ((*(v3 + 144))(v2, v3))
  {
    v4 = *(v0 + 1640);
    v5 = *(v0 + 704);
    v6 = *(v0 + 696);
    v7 = v6[3];
    v8 = v6[4];
    sub_1000035D0(v6, v7);
    (*(*(*(v8 + 8) + 8) + 32))(v7);
    v9 = sub_10096B0BC;
  }

  else
  {
    *(v0 + 1920) = 0u;
    *(v0 + 1904) = 0u;
    v10 = *(v0 + 1640);
    v5 = *(v0 + 704);
    v11 = *(v0 + 696);
    *(v0 + 2836) = *(*(v0 + 1376) + 48);
    v12 = v11[3];
    v13 = v11[4];
    sub_1000035D0(v11, v12);
    (*(*(*(v13 + 8) + 8) + 32))(v12);
    v9 = sub_10096B704;
  }

  return _swift_task_switch(v9, v5, 0);
}

uint64_t sub_10096B0BC()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1640), v6);
  v9 = swift_allocObject();
  *(v0 + 1888) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1896) = v11;
  *v11 = v0;
  v11[1] = sub_10096B218;
  v12 = *(v0 + 1472);
  v13 = *(v0 + 1424);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100988F38, v9, v13);
}

uint64_t sub_10096B218()
{
  v1 = *v0;
  v2 = *(*v0 + 1896);
  v3 = *(*v0 + 1888);
  v4 = *(*v0 + 1840);
  v5 = *(*v0 + 1832);
  v6 = *(*v0 + 1640);
  v7 = *(*v0 + 1504);
  v10 = *v0;

  v5(v6, v7);
  v8 = *(v1 + 1768);

  return _swift_task_switch(sub_10096B3B8, v8, 0);
}

uint64_t sub_10096B3B8()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1472);
  if ((*(*(v0 + 1488) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AF8C0, &unk_1013A07A0);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v6 = *(v0 + 1496);
  v7 = *(v0 + 696);
  sub_100986170(v2, v6, type metadata accessor for BeaconProductInfoRecord);
  v8 = v7[3];
  v9 = v7[4];
  sub_1000035D0(v7, v8);
  v10 = (*(v9 + 96))(v8, v9);
  v11 = *(v1 + 76);
  if (v10)
  {
    v12 = *(v0 + 1416);
    sub_1000D2A70(v6 + v11, v12, &qword_1016A62E8, &qword_1013B3CB0);
    v13 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
    v15 = *(v0 + 1416);
    if (v14 != 1)
    {
      v4 = v15[4];
      v5 = v15[5];
LABEL_9:

      sub_100988488(v15, type metadata accessor for AccessoryInfoResponseContent.Configuration);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = *(v0 + 1408);
    sub_1000D2A70(v6 + v11, v16, &qword_1016A62E8, &qword_1013B3CB0);
    v17 = type metadata accessor for AccessoryInfoResponseContent.Configuration(0);
    v18 = (*(*(v17 - 8) + 48))(v16, 1, v17);
    v15 = *(v0 + 1408);
    if (v18 != 1)
    {
      v4 = v15[8];
      v5 = v15[9];
      goto LABEL_9;
    }
  }

  sub_10000B3A8(v15, &qword_1016A62E8, &qword_1013B3CB0);
  v4 = 0;
  v5 = 0;
LABEL_10:
  v19 = *(v0 + 1496);
  v20 = SPBeaconRoleIdOther;
  v21 = objc_allocWithZone(SPBeaconRole);
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v3 = [v21 initWithRoleId:v20 role:v22 roleEmoji:v23];

  sub_100988488(v19, type metadata accessor for BeaconProductInfoRecord);
  v24 = v3;
LABEL_11:
  v25 = *(v0 + 1880);
  *(v0 + 1928) = v5;
  *(v0 + 1920) = v4;
  *(v0 + 1912) = v3;
  *(v0 + 1904) = v25;
  v26 = *(v0 + 1640);
  v27 = *(v0 + 704);
  v28 = *(v0 + 696);
  *(v0 + 2836) = *(*(v0 + 1376) + 48);
  v29 = v28[3];
  v30 = v28[4];
  sub_1000035D0(v28, v29);
  (*(*(*(v30 + 8) + 8) + 32))(v29);

  return _swift_task_switch(sub_10096B704, v27, 0);
}

uint64_t sub_10096B704()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 704);
  v7 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  v8 = *(v0 + 1520) + v7;
  (*(v0 + 1784))(v4, *(v0 + 1640), v5);
  v9 = swift_allocObject();
  *(v0 + 1936) = v9;
  *(v9 + 16) = v6;
  v2(v9 + v7, v4, v5);
  *(v9 + v8) = 1;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1944) = v11;
  *v11 = v0;
  v11[1] = sub_10096B86C;
  v12 = *(v0 + 1392);
  v13 = *(v0 + 1376);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1009863A8, v9, v13);
}

uint64_t sub_10096B86C()
{
  v1 = *(*v0 + 1944);
  v2 = *(*v0 + 1936);
  v3 = *(*v0 + 704);
  v5 = *v0;

  return _swift_task_switch(sub_10096B998, v3, 0);
}

uint64_t sub_10096B998()
{
  v1 = *(v0 + 2836);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1400);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1376);
  (*(v0 + 1832))(*(v0 + 1640), *(v0 + 1504));
  *(v0 + 2848) = *v4;
  sub_1000D2AD8(&v4[*(v5 + 48)], v3 + v1, &unk_101696900, &unk_10138B1E0);
  v6 = *(v0 + 1768);

  return _swift_task_switch(sub_10096BA4C, v6, 0);
}

uint64_t sub_10096BA4C()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1384);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1344);
  v6 = *(v0 + 1336);
  *v1 = *(v0 + 2848);
  sub_1000D2A70(v1, v2, &unk_1016AA420, &unk_1013BCFE0);
  *(v0 + 2849) = *v2;
  sub_10000B3A8(&v2[*(v4 + 48)], &unk_101696900, &unk_10138B1E0);
  sub_1000D2A70(v1, v3, &unk_1016AA420, &unk_1013BCFE0);
  v7 = *(v4 + 48);
  v8 = *(v5 + 48);
  *(v0 + 1952) = v8;
  *(v0 + 1960) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v3 + v7, 1, v6) == 1)
  {
    sub_10000B3A8(v3 + v7, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v48 = *(v0 + 1832);
    v49 = *(v0 + 1840);
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1504);
    v11 = *(v0 + 1368);
    v12 = *(v0 + 1344);
    v13 = *(v0 + 1336);
    v14 = *(v0 + 736);
    v15 = *(v0 + 696);
    (*(v12 + 32))(v11, v3 + v7, v13);
    v17 = v15[3];
    v16 = v15[4];
    sub_1000035D0(v15, v17);
    (*(*(*(v16 + 8) + 8) + 32))(v17);
    sub_10095F4B8(v9);
    v48(v9, v10);
    (*(v12 + 8))(v11, v13);
  }

  v18 = *(v0 + 1240);
  v19 = *(v0 + 1232);
  v20 = *(v0 + 1224);
  sub_10001F280(*(v0 + 696), v0 + 304);
  *(v0 + 1968) = sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  v23 = *(v0 + 696);
  if (v21)
  {
    v24 = *(v0 + 1640);
    v25 = *(v0 + 1288);
    v26 = *(v0 + 1224);
    v27 = *(v0 + 704);
    v22(v26, 0, 1, *(v0 + 1232));
    sub_100986170(v26, v25, type metadata accessor for OwnedBeaconRecord);
    v28 = v23[3];
    v29 = v23[4];
    sub_1000035D0(v23, v28);
    (*(*(*(v29 + 8) + 8) + 32))(v28);
    v30 = sub_10096BE80;
    v31 = v27;
  }

  else
  {
    v32 = *(v0 + 1224);
    v33 = *(v0 + 1048);
    v34 = *(v0 + 1040);
    v35 = *(v0 + 1032);
    v22(v32, 1, 1, *(v0 + 1232));
    sub_10000B3A8(v32, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v23, v0 + 344);
    v36 = swift_dynamicCast();
    v37 = *(v33 + 56);
    v38 = *(v0 + 1040);
    v39 = *(v0 + 1032);
    v40 = *(v0 + 704);
    if (v36)
    {
      v41 = *(v0 + 1104);
      v37(*(v0 + 1032), 0, 1, v38);
      sub_100986170(v39, v41, type metadata accessor for SharedBeaconRecord);
      v42 = sub_10096C9FC;
    }

    else
    {
      v43 = *(v0 + 1640);
      v44 = *(v0 + 696);
      v37(*(v0 + 1032), 1, 1, v38);
      sub_10000B3A8(v39, &unk_101698C30, &unk_101392630);
      v46 = v44[3];
      v45 = v44[4];
      sub_1000035D0(v44, v46);
      (*(*(*(v45 + 8) + 8) + 32))(v46);
      v42 = sub_10096E4E4;
    }

    v30 = v42;
    v31 = v40;
  }

  return _swift_task_switch(v30, v31, 0);
}

uint64_t sub_10096BE80()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1640), v6);
  v9 = swift_allocObject();
  *(v0 + 1976) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1984) = v11;
  *v11 = v0;
  v11[1] = sub_10096BFDC;
  v12 = *(v0 + 1216);
  v13 = *(v0 + 1200);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100988F30, v9, v13);
}

uint64_t sub_10096BFDC()
{
  v1 = *v0;
  v2 = *(*v0 + 1984);
  v3 = *(*v0 + 1976);
  v4 = *(*v0 + 1840);
  v5 = *(*v0 + 1832);
  v6 = *(*v0 + 1640);
  v7 = *(*v0 + 1504);
  v10 = *v0;

  v5(v6, v7);
  v8 = *(v1 + 1768);

  return _swift_task_switch(sub_10096C17C, v8, 0);
}

uint64_t sub_10096C17C()
{
  v1 = *(v0 + 1216);
  v2 = type metadata accessor for LostModeRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A99E0, &qword_1013A07B0);
    v3 = 0;
  }

  else
  {
    v3 = sub_100E78AA8();
    sub_100988488(v1, type metadata accessor for LostModeRecord);
  }

  *(v0 + 1992) = v3;
  v4 = qword_101694E80;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 1512);
  v7 = *(v0 + 1504);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1232);
  v10 = *(v0 + 1192);
  v11 = qword_10177C088;
  *(v0 + 2000) = qword_10177C088;
  v12 = *(v8 + v9[20]);
  *(v0 + 2850) = v12;
  v13 = *(v8 + v9[16]);
  v14 = *(v8 + v9[17]);
  v31 = v11;
  v15 = sub_100E0EA64(v13, v14);
  *(v0 + 2851) = v15;
  sub_1000D2A70(v8 + v9[7], v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v6 + 48))(v10, 1, v7) == 1)
  {
    v16 = *(v0 + 1192);
    sub_100988488(*(v0 + 1288), type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
LABEL_10:
    v22 = *(v0 + 1904);
    *(v0 + 2200) = 0u;
    *(v0 + 2192) = v31;
    *(v0 + 2854) = v12;
    *(v0 + 2853) = v15;
    *(v0 + 2184) = v3;
    *(v0 + 2176) = v22;
    v23 = *(v0 + 1640);
    v24 = *(v0 + 704);
    v25 = *(v0 + 696);
    v26 = v25[3];
    v27 = v25[4];
    sub_1000035D0(v25, v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);
    v28 = sub_10096E98C;
    v29 = v24;
    goto LABEL_12;
  }

  v17 = *(v0 + 1816);
  v18 = *(v0 + 1288);
  (*(v0 + 1808))(*(v0 + 1608), *(v0 + 1192), *(v0 + 1504));
  *(v0 + 2008) = sub_100D605C4();
  *(v0 + 2016) = v19;
  if (v19 >> 60 == 15)
  {
    v20 = *(v0 + 1840);
    v21 = *(v0 + 1288);
    (*(v0 + 1832))(*(v0 + 1608), *(v0 + 1504));
    sub_100988488(v21, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_10;
  }

  v29 = *(v0 + 704);
  v28 = sub_10096C488;
LABEL_12:

  return _swift_task_switch(v28, v29, 0);
}

uint64_t sub_10096C488()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1608), v6);
  v9 = swift_allocObject();
  *(v0 + 2024) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2032) = v11;
  *v11 = v0;
  v11[1] = sub_10096C5E4;
  v12 = *(v0 + 1128);
  v13 = *(v0 + 1112);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100988F34, v9, v13);
}

uint64_t sub_10096C5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 2032);
  v3 = *(*v0 + 2024);
  v6 = *v0;

  v4 = *(v1 + 1768);

  return _swift_task_switch(sub_10096C718, v4, 0);
}

uint64_t sub_10096C718()
{
  v1 = *(v0 + 1128);
  v2 = (*(*(v0 + 832) + 48))(v1, 1, *(v0 + 824));
  v3 = *(v0 + 2016);
  v4 = *(v0 + 2008);
  if (v2 == 1)
  {
    v5 = *(v0 + 1840);
    v6 = *(v0 + 1832);
    v7 = *(v0 + 1608);
    v8 = *(v0 + 1504);
    v9 = *(v0 + 1288);
    sub_100006654(v4, v3);
    v6(v7, v8);
    sub_100988488(v9, type metadata accessor for OwnedBeaconRecord);
    v10 = &unk_1016AF8B0;
    v11 = &unk_1013A0700;
LABEL_5:
    sub_10000B3A8(v1, v10, v11);
    v21 = 0;
    v22 = 0;
    goto LABEL_7;
  }

  v12 = *(v0 + 1136);
  sub_10051A590(v4, v3, v12);
  sub_100988488(v1, type metadata accessor for OwnedBeaconGroup);
  v13 = type metadata accessor for MACAddress();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = *(v0 + 2016);
  v17 = *(v0 + 2008);
  v37 = *(v0 + 1832);
  v18 = *(v0 + 1608);
  v19 = *(v0 + 1504);
  v20 = *(v0 + 1288);
  v1 = *(v0 + 1136);
  if (v15 == 1)
  {
    sub_100006654(v17, v16);
    v37(v18, v19);
    sub_100988488(v20, type metadata accessor for OwnedBeaconRecord);
    v10 = &qword_1016A40D0;
    v11 = &unk_10138BE70;
    goto LABEL_5;
  }

  v35 = *(v0 + 1840);
  v36 = *(v0 + 1288);
  v21 = MACAddress.bluetoothAddress.getter();
  v22 = v23;
  sub_100006654(v17, v16);
  v37(v18, v19);
  sub_100988488(v36, type metadata accessor for OwnedBeaconRecord);
  (*(v14 + 8))(v1, v13);
LABEL_7:
  v24 = *(v0 + 2000);
  v25 = *(v0 + 2850);
  v26 = *(v0 + 2851);
  v27 = *(v0 + 1992);
  v28 = *(v0 + 1904);
  *(v0 + 2208) = v22;
  *(v0 + 2200) = v21;
  *(v0 + 2192) = v24;
  *(v0 + 2854) = v25;
  *(v0 + 2853) = v26;
  *(v0 + 2184) = v27;
  *(v0 + 2176) = v28;
  v29 = *(v0 + 1640);
  v30 = *(v0 + 704);
  v31 = *(v0 + 696);
  v32 = v31[3];
  v33 = v31[4];
  sub_1000035D0(v31, v32);
  (*(*(*(v33 + 8) + 8) + 32))(v32);

  return _swift_task_switch(sub_10096E98C, v30, 0);
}

uint64_t sub_10096C9FC()
{
  v1 = *(v0 + 704);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 2040) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_10096CADC;
  v5 = *(v0 + 704);

  return unsafeBlocking<A>(context:_:)(v0 + 688, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_10096CADC()
{
  v1 = *(*v0 + 2040);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return _swift_task_switch(sub_10096CBF4, v2, 0);
}

uint64_t sub_10096CC18()
{
  v1 = *(v0 + 1600);
  *(v0 + 2840) = *(*(v0 + 1040) + 20);
  v2 = getuid();
  sub_1000294F0(v2);

  return _swift_task_switch(sub_10096CC94, 0, 0);
}

uint64_t sub_10096CC94()
{
  v1 = *(v0 + 2840);
  v2 = *(v0 + 1104);
  v3 = *(*(v0 + 2048) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v4 = swift_task_alloc();
  *(v0 + 2056) = v4;
  *v4 = v0;
  v4[1] = sub_10096CD54;
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1016);

  return sub_10068A150(v6, v2 + v1);
}

uint64_t sub_10096CD54()
{
  v2 = *v1;
  v3 = *(*v1 + 2056);
  v9 = *v1;

  if (v0)
  {

    v4 = sub_10096D608;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 2048);
    v7 = *(v2 + 1840);
    (*(v2 + 1832))(*(v2 + 1600), *(v2 + 1504));

    v5 = *(v2 + 1768);
    v4 = sub_10096CE94;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10096CE94()
{
  v77 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  sub_1000D2A70(*(v0 + 1016), v1, &unk_101698C20, &qword_101390748);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 1008);
    v5 = &unk_101698C20;
    v6 = &qword_101390748;
LABEL_5:
    sub_10000B3A8(v4, v5, v6);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 1104);
    v15 = *(v0 + 1088);
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177A560);
    sub_1009863FC(v14, v15, type metadata accessor for SharedBeaconRecord);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1504);
      v20 = *(v0 + 1088);
      v21 = *(v0 + 1040);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v76 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = *(v21 + 20);
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_100988488(v20, type metadata accessor for SharedBeaconRecord);
      v28 = sub_1000136BC(v25, v27, &v76);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v22, 0x16u);
      sub_100007BAC(v23);
    }

    else
    {
      v29 = *(v0 + 1088);

      sub_100988488(v29, type metadata accessor for SharedBeaconRecord);
    }

    v30 = 0;
    goto LABEL_17;
  }

  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1336);
  v10 = *(v0 + 1312);
  v11 = *(v0 + 1000);
  v12 = *(v0 + 984);
  sub_100986170(*(v0 + 1008), v11, type metadata accessor for KeyDropLostItemDates);
  sub_1000D2A70(v11 + *(v12 + 20), v10, &unk_101696900, &unk_10138B1E0);
  if (v8(v10, 1, v9) == 1)
  {
    v13 = *(v0 + 1312);
    sub_100988488(*(v0 + 1000), type metadata accessor for KeyDropLostItemDates);
    v5 = &unk_101696900;
    v6 = &unk_10138B1E0;
    v4 = v13;
    goto LABEL_5;
  }

  (*(*(v0 + 1344) + 32))(*(v0 + 1360), *(v0 + 1312), *(v0 + 1336));
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 1360);
  v32 = *(v0 + 1352);
  v33 = *(v0 + 1344);
  v34 = *(v0 + 1336);
  v35 = *(v0 + 1104);
  v36 = *(v0 + 1096);
  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177A560);
  sub_1009863FC(v35, v36, type metadata accessor for SharedBeaconRecord);
  (*(v33 + 16))(v32, v31, v34);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 1504);
    v41 = *(v0 + 1352);
    v42 = *(v0 + 1344);
    v43 = *(v0 + 1336);
    v44 = *(v0 + 1096);
    v75 = v39;
    v45 = *(v0 + 1040);
    v46 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v46 = 141558531;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    v47 = *(v45 + 20);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    sub_100988488(v44, type metadata accessor for SharedBeaconRecord);
    v51 = sub_1000136BC(v48, v50, &v76);

    *(v46 + 14) = v51;
    *(v46 + 22) = 2080;
    sub_100985CA0(&qword_1016969A0, &type metadata accessor for Date);
    v52 = v41;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = *(v42 + 8);
    v56(v52, v43);
    v57 = sub_1000136BC(v53, v55, &v76);

    *(v46 + 24) = v57;
    _os_log_impl(&_mh_execute_header, v38, v75, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v46, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v58 = *(v0 + 1352);
    v59 = *(v0 + 1344);
    v60 = *(v0 + 1336);
    v61 = *(v0 + 1096);

    v56 = *(v59 + 8);
    v56(v58, v60);
    sub_100988488(v61, type metadata accessor for SharedBeaconRecord);
  }

  v62 = *(v0 + 1360);
  v63 = *(v0 + 1336);
  v64 = *(v0 + 1000);
  v65 = objc_allocWithZone(SPLostModeInfo);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v30 = [v65 initWithMessage:0 email:0 phoneNumber:0 timestamp:isa];

  v56(v62, v63);
  sub_100988488(v64, type metadata accessor for KeyDropLostItemDates);
  v67 = v30;
LABEL_17:
  *(v0 + 2064) = v30;
  v68 = *(v0 + 1104) + *(*(v0 + 1040) + 28);
  v69 = *v68;
  *(v0 + 2852) = *v68;
  v70 = *(v68 + 8);
  *(v0 + 2072) = v70;
  v71 = *(v68 + 16);
  *(v0 + 2080) = v71;
  *(v0 + 2088) = sub_100EB3708(v69, v70, v71);
  v72 = async function pointer to daemon.getter[1];
  v73 = swift_task_alloc();
  *(v0 + 2096) = v73;
  *v73 = v0;
  v73[1] = sub_10096DE20;

  return daemon.getter();
}

uint64_t sub_10096D608()
{
  v1 = *(v0 + 2048);
  v2 = *(v0 + 1840);
  (*(v0 + 1832))(*(v0 + 1600), *(v0 + 1504));

  v3 = *(v0 + 1768);

  return _swift_task_switch(sub_10096D688, v3, 0);
}

uint64_t sub_10096D688()
{
  v77 = v0;
  (*(*(v0 + 992) + 56))(*(v0 + 1016), 1, 1, *(v0 + 984));
  v1 = *(v0 + 1008);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  sub_1000D2A70(*(v0 + 1016), v1, &unk_101698C20, &qword_101390748);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 1008);
    v5 = &unk_101698C20;
    v6 = &qword_101390748;
LABEL_5:
    sub_10000B3A8(v4, v5, v6);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 1104);
    v15 = *(v0 + 1088);
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177A560);
    sub_1009863FC(v14, v15, type metadata accessor for SharedBeaconRecord);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 1504);
      v20 = *(v0 + 1088);
      v21 = *(v0 + 1040);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v76 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = *(v21 + 20);
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_100988488(v20, type metadata accessor for SharedBeaconRecord);
      v28 = sub_1000136BC(v25, v27, &v76);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v22, 0x16u);
      sub_100007BAC(v23);
    }

    else
    {
      v29 = *(v0 + 1088);

      sub_100988488(v29, type metadata accessor for SharedBeaconRecord);
    }

    v30 = 0;
    goto LABEL_17;
  }

  v7 = *(v0 + 1960);
  v8 = *(v0 + 1952);
  v9 = *(v0 + 1336);
  v10 = *(v0 + 1312);
  v11 = *(v0 + 1000);
  v12 = *(v0 + 984);
  sub_100986170(*(v0 + 1008), v11, type metadata accessor for KeyDropLostItemDates);
  sub_1000D2A70(v11 + *(v12 + 20), v10, &unk_101696900, &unk_10138B1E0);
  if (v8(v10, 1, v9) == 1)
  {
    v13 = *(v0 + 1312);
    sub_100988488(*(v0 + 1000), type metadata accessor for KeyDropLostItemDates);
    v5 = &unk_101696900;
    v6 = &unk_10138B1E0;
    v4 = v13;
    goto LABEL_5;
  }

  (*(*(v0 + 1344) + 32))(*(v0 + 1360), *(v0 + 1312), *(v0 + 1336));
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 1360);
  v32 = *(v0 + 1352);
  v33 = *(v0 + 1344);
  v34 = *(v0 + 1336);
  v35 = *(v0 + 1104);
  v36 = *(v0 + 1096);
  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177A560);
  sub_1009863FC(v35, v36, type metadata accessor for SharedBeaconRecord);
  (*(v33 + 16))(v32, v31, v34);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 1504);
    v41 = *(v0 + 1352);
    v42 = *(v0 + 1344);
    v43 = *(v0 + 1336);
    v44 = *(v0 + 1096);
    v75 = v39;
    v45 = *(v0 + 1040);
    v46 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v46 = 141558531;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    v47 = *(v45 + 20);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    sub_100988488(v44, type metadata accessor for SharedBeaconRecord);
    v51 = sub_1000136BC(v48, v50, &v76);

    *(v46 + 14) = v51;
    *(v46 + 22) = 2080;
    sub_100985CA0(&qword_1016969A0, &type metadata accessor for Date);
    v52 = v41;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = *(v42 + 8);
    v56(v52, v43);
    v57 = sub_1000136BC(v53, v55, &v76);

    *(v46 + 24) = v57;
    _os_log_impl(&_mh_execute_header, v38, v75, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v46, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v58 = *(v0 + 1352);
    v59 = *(v0 + 1344);
    v60 = *(v0 + 1336);
    v61 = *(v0 + 1096);

    v56 = *(v59 + 8);
    v56(v58, v60);
    sub_100988488(v61, type metadata accessor for SharedBeaconRecord);
  }

  v62 = *(v0 + 1360);
  v63 = *(v0 + 1336);
  v64 = *(v0 + 1000);
  v65 = objc_allocWithZone(SPLostModeInfo);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v30 = [v65 initWithMessage:0 email:0 phoneNumber:0 timestamp:isa];

  v56(v62, v63);
  sub_100988488(v64, type metadata accessor for KeyDropLostItemDates);
  v67 = v30;
LABEL_17:
  *(v0 + 2064) = v30;
  v68 = *(v0 + 1104) + *(*(v0 + 1040) + 28);
  v69 = *v68;
  *(v0 + 2852) = *v68;
  v70 = *(v68 + 8);
  *(v0 + 2072) = v70;
  v71 = *(v68 + 16);
  *(v0 + 2080) = v71;
  *(v0 + 2088) = sub_100EB3708(v69, v70, v71);
  v72 = async function pointer to daemon.getter[1];
  v73 = swift_task_alloc();
  *(v0 + 2096) = v73;
  *v73 = v0;
  v73[1] = sub_10096DE20;

  return daemon.getter();
}

uint64_t sub_10096DE20(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2096);
  v5 = *v1;
  v3[263] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[264] = v7;
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_100985CA0(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v7 = v5;
  v7[1] = sub_10096DFD4;
  v10 = v3[215];
  v11 = v3[214];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10096DFD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2112);
  v6 = *v2;
  *(v4 + 2120) = a1;

  v7 = *(v4 + 2104);
  if (v1)
  {

    v8 = *(v4 + 1768);

    return _swift_task_switch(sub_10097BB58, v8, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    *(v4 + 2128) = v9;
    *v9 = v6;
    v9[1] = sub_10096E198;
    v10 = *(v4 + 2080);
    v11 = *(v4 + 2072);
    v12 = *(v4 + 2852);

    return sub_100D4C7CC(v12, v11, v10);
  }
}

uint64_t sub_10096E198(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 2128);
  v8 = *v3;
  *(*v3 + 2136) = v2;

  if (v2)
  {

    v9 = v6[221];
    v10 = sub_10097BD18;
  }

  else
  {
    v6[268] = a2;
    v6[269] = a1;
    v9 = v6[221];
    v10 = sub_10096E2DC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10096E2DC()
{
  v1 = *(v0 + 2144);
  v2 = *(v0 + 2120);

  v3 = *(v0 + 2152);
  v4 = *(v0 + 2136);
  v5 = *(v0 + 2088);
  v6 = [v5 type];
  v7 = [v5 destination];
  if (v7)
  {
    if (v1)
    {
LABEL_3:
      v8 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    if (v1)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = *(v0 + 2088);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1016);
  v13 = [objc_allocWithZone(SPHandle) initWithType:v6 destination:v7 formattedName:v8];

  v14 = *(v10 + *(v11 + 44));
  v15 = *(v10 + *(v11 + 48));
  v16 = v13;
  LOBYTE(v14) = sub_100E0EA64(v14, v15);

  sub_10000B3A8(v12, &unk_101698C20, &qword_101390748);
  sub_100988488(v10, type metadata accessor for SharedBeaconRecord);
  v17 = *(v0 + 2064);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v16;
  *(v0 + 2854) = 0;
  *(v0 + 2853) = v14 & 1;
  *(v0 + 2184) = v17;
  *(v0 + 2176) = v4;
  v18 = *(v0 + 1640);
  v19 = *(v0 + 704);
  v20 = *(v0 + 696);
  v21 = v20[3];
  v22 = v20[4];
  sub_1000035D0(v20, v21);
  (*(*(*(v22 + 8) + 8) + 32))(v21);

  return _swift_task_switch(sub_10096E98C, v19, 0);
}

uint64_t sub_10096E4E4()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1640), v6);
  v9 = swift_allocObject();
  *(v0 + 2160) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2168) = v11;
  *v11 = v0;
  v11[1] = sub_10096E640;
  v12 = *(v0 + 1208);
  v13 = *(v0 + 1200);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1009863AC, v9, v13);
}

uint64_t sub_10096E640()
{
  v1 = *v0;
  v2 = *(*v0 + 2168);
  v3 = *(*v0 + 2160);
  v4 = *(*v0 + 1840);
  v5 = *(*v0 + 1832);
  v6 = *(*v0 + 1640);
  v7 = *(*v0 + 1504);
  v10 = *v0;

  v5(v6, v7);
  v8 = *(v1 + 1768);

  return _swift_task_switch(sub_10096E7E0, v8, 0);
}

uint64_t sub_10096E7E0()
{
  v1 = *(v0 + 1208);
  v2 = type metadata accessor for LostModeRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A99E0, &qword_1013A07B0);
    v3 = 0;
  }

  else
  {
    v3 = sub_100E78AA8();
    sub_100988488(v1, type metadata accessor for LostModeRecord);
  }

  v4 = qword_101694E80;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C088;
  v7 = *(v0 + 1904);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v6;
  *(v0 + 2853) = 0;
  *(v0 + 2184) = v3;
  *(v0 + 2176) = v7;
  v8 = *(v0 + 1640);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = v10[3];
  v12 = v10[4];
  v13 = v6;
  sub_1000035D0(v10, v11);
  (*(*(*(v12 + 8) + 8) + 32))(v11);

  return _swift_task_switch(sub_10096E98C, v9, 0);
}

uint64_t sub_10096E98C()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1640), v6);
  v9 = swift_allocObject();
  *(v0 + 2216) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2224) = v11;
  *v11 = v0;
  v11[1] = sub_10096EAE8;
  v12 = *(v0 + 1464);
  v13 = *(v0 + 1424);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1009863C4, v9, v13);
}

uint64_t sub_10096EAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 2224);
  v3 = *(*v0 + 2216);
  v4 = *(*v0 + 1840);
  v5 = *(*v0 + 1832);
  v6 = *(*v0 + 1640);
  v7 = *(*v0 + 1504);
  v10 = *v0;

  v5(v6, v7);
  v8 = *(v1 + 1768);

  return _swift_task_switch(sub_10096EC88, v8, 0);
}

uint64_t sub_10096EC88()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1456);
  sub_1000D2A70(*(v0 + 1464), v3, &unk_1016AF8C0, &unk_1013A07A0);
  v4 = *(v1 + 48);
  *(v0 + 2232) = v4;
  *(v0 + 2240) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 1456), &unk_1016AF8C0, &unk_1013A07A0);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v0 + 1456);
    v8 = (v7 + *(*(v0 + 1480) + 48));
    v5 = *v8;
    v6 = v8[1];

    sub_100988488(v7, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2256) = v6;
  *(v0 + 2248) = v5;
  v9 = *(v0 + 1480);
  v10 = *(v0 + 1448);
  sub_1000D2A70(*(v0 + 1464), v10, &unk_1016AF8C0, &unk_1013A07A0);
  if (v4(v10, 1, v9) == 1)
  {
    sub_10000B3A8(*(v0 + 1448), &unk_1016AF8C0, &unk_1013A07A0);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 1448);
    v14 = (v13 + *(*(v0 + 1480) + 44));
    v11 = *v14;
    v12 = v14[1];

    sub_100988488(v13, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2272) = v12;
  *(v0 + 2264) = v11;
  v15 = *(v0 + 2176);
  v16 = *(v0 + 712);
  v17 = *(v0 + 696);
  v18 = v17[3];
  v19 = v17[4];
  sub_1000035D0(v17, v18);
  *(v0 + 2280) = (*(v19 + 48))(v18, v19);
  v20 = v17[3];
  v21 = v17[4];
  sub_1000035D0(v17, v20);
  *(v0 + 2288) = (*(v21 + 56))(v20, v21);
  v22 = swift_task_alloc();
  *(v22 + 16) = v17;

  v23 = sub_10013D504(sub_1009863DC, v22, v16);

  v30 = *(v23 + 16);
  if (v30)
  {
    v31 = 0;
    v32 = *(v0 + 960);
    while (v31 < *(v23 + 16))
    {
      v33 = *(v0 + 976);
      v34 = *(v0 + 968);
      sub_1009863FC(v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31, v33, type metadata accessor for SafeLocation);
      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_1009863FC(v33, v34, type metadata accessor for SafeLocation);
      sub_1009C859C(v34);
      sub_100988488(v33, type metadata accessor for SafeLocation);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v31;
      v24 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v30 == v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    return unsafeBlocking<A>(context:_:)(v24, v25, v26, v27, v28, v29);
  }

LABEL_13:
  v36 = *(v0 + 1776);

  *(v0 + 2296) = sub_10112A684(_swiftEmptyArrayStorage);

  if (v36)
  {
    v37 = *(v0 + 1776);
    sub_10001F280(*(v0 + 696), v0 + 264);
    v38 = swift_allocObject();
    *(v0 + 2304) = v38;
    *(v38 + 16) = v37;
    sub_10000A748((v0 + 264), v38 + 24);
    v39 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    swift_retain_n();
    v40 = swift_task_alloc();
    *(v0 + 2312) = v40;
    *v40 = v0;
    v40[1] = sub_10096F1C0;
    v29 = &type metadata for Bool;
    v27 = sub_1009866D8;
    v24 = v0 + 2847;
    v26 = 0x80000001013CA9B0;
    v25 = 0xD000000000000019;
    v28 = v38;

    return unsafeBlocking<A>(context:_:)(v24, v25, v26, v27, v28, v29);
  }

  *(v0 + 2855) = 0;
  v41 = *(v0 + 1640);
  v42 = *(v0 + 704);
  v43 = *(v0 + 696);
  v44 = v43[3];
  v45 = v43[4];
  sub_1000035D0(v43, v44);
  (*(*(*(v45 + 8) + 8) + 32))(v44);

  return _swift_task_switch(sub_10096F3AC, v42, 0);
}

uint64_t sub_10096F1C0()
{
  v1 = *v0;
  v2 = *(*v0 + 2312);
  v3 = *(*v0 + 2304);
  v6 = *v0;

  v4 = *(v1 + 1768);

  return _swift_task_switch(sub_10096F2F4, v4, 0);
}

uint64_t sub_10096F2F4()
{
  v1 = *(v0 + 1776);

  *(v0 + 2855) = *(v0 + 2847);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = v4[3];
  v6 = v4[4];
  sub_1000035D0(v4, v5);
  (*(*(*(v6 + 8) + 8) + 32))(v5);

  return _swift_task_switch(sub_10096F3AC, v3, 0);
}

uint64_t sub_10096F3AC()
{
  v14 = *(v0 + 1808);
  v15 = *(v0 + 1816);
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1504);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v2, *(v0 + 1640), v4);
  v9 = (v8 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 2320) = v10;
  *(v10 + 16) = v7;
  v14(v10 + v8, v2, v4);
  *(v10 + v9) = v6;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 2328) = v12;
  *v12 = v0;
  v12[1] = sub_10096F550;

  return unsafeBlocking<A>(context:_:)(v0 + 672, 0xD000000000000010, 0x800000010134A8C0, sub_100986464, v10, &type metadata for Int);
}

uint64_t sub_10096F550()
{
  v1 = *(*v0 + 2328);
  v2 = *(*v0 + 2320);
  v3 = *(*v0 + 704);
  v5 = *v0;

  return _swift_task_switch(sub_10096F67C, v3, 0);
}

uint64_t sub_10096F67C()
{
  v1 = *(v0 + 1840);
  (*(v0 + 1832))(*(v0 + 1640), *(v0 + 1504));
  *(v0 + 2336) = *(v0 + 672);
  v2 = *(v0 + 1768);

  return _swift_task_switch(sub_10096F6F8, v2, 0);
}

uint64_t sub_10096F6F8()
{
  if (v0[292] <= 0)
  {
    v2 = 1;
    if (*(v0[92] + 200))
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 2;
  }

  v0[293] = v2;
  v3 = swift_task_alloc();
  v0[294] = v3;
  *v3 = v0;
  v3[1] = sub_10096F7C0;
  v4 = v0[116];
  v5 = v0[92];
  v6 = v0[87];

  return sub_1009686D8(v4, v6);
}

uint64_t sub_10096F7C0()
{
  v2 = *v1;
  v3 = *(*v1 + 2352);
  v4 = *v1;
  *(*v1 + 2360) = v0;

  if (v0)
  {

    v5 = *(v2 + 1768);
    v6 = sub_100970844;
  }

  else
  {
    v5 = *(v2 + 1768);
    v6 = sub_10096F8EC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10096F8EC()
{
  v163 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 928);
  (*(*(v0 + 944) + 56))(v2, 0, 1, *(v0 + 936));
  sub_1000D2AD8(v2, v1, &unk_1016C8FC0, &unk_10139D7D0);
  v3 = [objc_allocWithZone(SPKeySyncRecord) init];
  if (v3)
  {
    v4 = *(v0 + 1840);
    v5 = *(v0 + 1832);
    v6 = *(v0 + 1640);
    v7 = *(v0 + 1504);
    v8 = *(v0 + 952);
    v9 = *(v0 + 936);
    v10 = *(v0 + 696);
    v12 = v10[3];
    v11 = v10[4];
    sub_1000035D0(v10, v12);
    (*(*(*(v11 + 8) + 8) + 32))(v12);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v5(v6, v7);
    [v3 setIdentifier:isa];

    [v3 setLastIndexObserved:*v8];
    v14 = v8 + *(v9 + 36);
    v15 = Date._bridgeToObjectiveC()().super.isa;
    [v3 setLastIndexObservationDate:v15];
  }

  sub_10000B3A8(*(v0 + 952), &unk_1016C8FC0, &unk_10139D7D0);
  v16 = *(v0 + 2360);
  *(v0 + 2376) = v3;
  *(v0 + 2368) = v16;
  v17 = sub_1012BDEE0(*(v0 + 696));
  if (v17 <= 1)
  {
    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }
  }

  else if (v17 == 2)
  {
    v18 = 4;
  }

  else
  {
    if (v17 != 3)
    {
      v19 = *(v0 + 1640);
      v20 = *(v0 + 704);
      v21 = *(v0 + 696);
      v22 = v21[3];
      v23 = v21[4];
      sub_1000035D0(v21, v22);
      (*(*(*(v23 + 8) + 8) + 32))(v22);
      v24 = sub_100971698;
LABEL_28:
      v34 = v24;
      v35 = v20;
      goto LABEL_29;
    }

    v18 = 5;
  }

  v25 = *(v0 + 696);
  v26 = v25[3];
  v27 = v25[4];
  sub_1000035D0(v25, v26);
  if ((*(v27 + 56))(v26, v27) == 22034)
  {
    if (v18 == 4)
    {
      v18 = 5;
    }

    else if (v18 == 5)
    {
      v18 = 6;
    }
  }

  *(v0 + 2400) = v18;
  v28 = *(v0 + 2240);
  v29 = *(v0 + 2232);
  v30 = *(v0 + 1480);
  v31 = *(v0 + 1440);
  sub_1000D2A70(*(v0 + 1464), v31, &unk_1016AF8C0, &unk_1013A07A0);
  if (v29(v31, 1, v30) == 1)
  {
    sub_10000B3A8(*(v0 + 1440), &unk_1016AF8C0, &unk_1013A07A0);
    v32 = 0;
  }

  else
  {
    v33 = *(v0 + 1440);
    v32 = *(v33 + *(*(v0 + 1480) + 72));
    sub_100988488(v33, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2408) = v32;
  v34 = MobileGestalt_get_current_device();
  if (!v34)
  {
    __break(1u);
    return _swift_task_switch(v34, v35, v36);
  }

  v37 = v34;
  v38 = MobileGestalt_copy_productType_obj();

  if (v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v39 = *(v0 + 1968);
  v40 = *(v0 + 1280);
  v41 = *(v0 + 1232);
  v42 = *(v0 + 696);
  v43 = String.lowercased()();

  *(v0 + 616) = v43;
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  *(v0 + 2856) = *(v0 + 2846);
  sub_10001F280(v42, v0 + 384);
  if (swift_dynamicCast())
  {
    v44 = *(v0 + 1640);
    v45 = *(v0 + 704);
    v46 = *(v0 + 696);
    sub_100986170(*(v0 + 1280), *(v0 + 1272), type metadata accessor for OwnedBeaconRecord);
    *(v0 + 2844) = sub_100D608FC();
    v48 = v46[3];
    v47 = v46[4];
    sub_1000035D0(v46, v48);
    (*(*(*(v47 + 8) + 8) + 32))(v48);
    v49 = sub_10097279C;
LABEL_25:
    v34 = v49;
    v35 = v45;
    goto LABEL_29;
  }

  v50 = *(v0 + 1968);
  v51 = *(v0 + 896);
  v52 = *(v0 + 880);
  if (swift_dynamicCast())
  {
    v53 = *(v0 + 1640);
    v20 = *(v0 + 704);
    v54 = *(v0 + 696);
    sub_100986170(*(v0 + 896), *(v0 + 888), type metadata accessor for LocalFindableAccessoryRecord);
    v55 = v54[3];
    v56 = v54[4];
    sub_1000035D0(v54, v55);
    (*(*(*(v56 + 8) + 8) + 32))(v55);
    v24 = sub_100973278;
    goto LABEL_28;
  }

  v57 = *(v0 + 1968);
  v58 = *(v0 + 1080);
  v59 = *(v0 + 1040);
  if (swift_dynamicCast())
  {
    v60 = *(v0 + 1072);
    v61 = *(v0 + 1040);
    sub_100986170(*(v0 + 1080), v60, type metadata accessor for SharedBeaconRecord);
    v62 = sub_100314604(*(v60 + *(v61 + 44)), *(v60 + *(v61 + 48)));
    if (v63 >> 60 == 15)
    {
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 696);
      v65 = type metadata accessor for Logger();
      sub_1000076D4(v65, qword_10177B740);
      sub_10001F280(v64, v0 + 544);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v160 = *(v0 + 1840);
        v68 = *(v0 + 1832);
        v69 = *(v0 + 1640);
        v70 = *(v0 + 1504);
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v162 = v72;
        *v71 = 141558275;
        *(v71 + 4) = 1752392040;
        *(v71 + 12) = 2081;
        v73 = *(v0 + 568);
        v74 = *(v0 + 576);
        sub_1000035D0((v0 + 544), v73);
        (*(*(*(v74 + 8) + 8) + 32))(v73);
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        v68(v69, v70);
        sub_100007BAC((v0 + 544));
        v78 = sub_1000136BC(v75, v77, &v162);

        *(v71 + 14) = v78;
        _os_log_impl(&_mh_execute_header, v66, v67, "Could not compute productUUID from shared beacon %{private,mask.hash}s.", v71, 0x16u);
        sub_100007BAC(v72);
      }

      else
      {

        sub_100007BAC((v0 + 544));
      }

      v142 = *(v0 + 1592);
      UUID.init(uuid:)();
    }

    else
    {
      v94 = v63;
      v95 = v62;
      if (qword_101694570 != -1)
      {
        swift_once();
      }

      v96 = *(v0 + 1592);
      v162 = xmmword_10169DAA8;
      sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
      Data.append(_:)();
      v97 = v162;
      *(v0 + 600) = v162;
      sub_100017D5C(v97, *(&v97 + 1));
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100006654(v95, v94);
      sub_100016590(v97, *(&v97 + 1));
      sub_100016590(v97, *(&v97 + 1));
    }

    v35 = *(v0 + 704);
    v34 = sub_100973ACC;
    goto LABEL_29;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v79 = *(v0 + 696);
  v80 = type metadata accessor for Logger();
  sub_1000076D4(v80, qword_10177B740);
  sub_10001F280(v79, v0 + 424);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v161 = *(v0 + 1840);
    v83 = *(v0 + 1832);
    v84 = *(v0 + 1640);
    v85 = *(v0 + 1504);
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&v162 = v87;
    *v86 = 141558275;
    *(v86 + 4) = 1752392040;
    *(v86 + 12) = 2081;
    v89 = *(v0 + 448);
    v88 = *(v0 + 456);
    sub_1000035D0((v0 + 424), v89);
    (*(*(*(v88 + 8) + 8) + 32))(v89);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    v83(v84, v85);
    sub_100007BAC((v0 + 424));
    v93 = sub_1000136BC(v90, v92, &v162);

    *(v86 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v81, v82, "Beacon record type is not handled for beacon %{private,mask.hash}s.", v86, 0x16u);
    sub_100007BAC(v87);
  }

  else
  {

    sub_100007BAC((v0 + 424));
  }

  v98 = *(v0 + 1592);
  v99 = *(v0 + 696);
  UUID.init(uuid:)();
  v100 = v99[3];
  v101 = v99[4];
  sub_1000035D0(v99, v100);
  v102 = (*(v101 + 24))(v100, v101);
  v103 = *(v0 + 2368);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v104;
  *(v0 + 2568) = v102;
  *(v0 + 2560) = v103;
  v105 = *(v0 + 1968);
  v106 = *(v0 + 1048);
  v107 = *(v0 + 1040);
  v108 = *(v0 + 1024);
  v109 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v109, v0 + 464);
  v110 = swift_dynamicCast();
  v111 = *(v106 + 56);
  if ((v110 & 1) == 0)
  {
    v117 = *(v0 + 1024);
    v111(v117, 1, 1, *(v0 + 1040));
    v118 = &unk_101698C30;
    v119 = &unk_101392630;
    v120 = v117;
LABEL_51:
    sub_10000B3A8(v120, v118, v119);
    goto LABEL_52;
  }

  v112 = *(v0 + 1064);
  v113 = *(v0 + 1040);
  v114 = *(v0 + 1024);
  v111(v114, 0, 1, v113);
  sub_100986170(v114, v112, type metadata accessor for SharedBeaconRecord);
  v115 = *(v0 + 1064);
  if (*(v112 + *(v113 + 44)) == -1)
  {
    v116 = *(v0 + 1040);
    if (*(v115 + v116[12]) == -1)
    {
      v143 = *(v115 + v116[16]);
      if (v143 == 4 || v143 == 1)
      {
        v144 = *(v0 + 864);
        v145 = *(v0 + 1064);
        sub_1000D2A70(v115 + v116[20], v144, &unk_1016AF890, &qword_1013926D0);
        sub_100988488(v145, type metadata accessor for SharedBeaconRecord);
        v146 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        v147 = (*(*(v146 - 8) + 48))(v144, 1, v146);
        v148 = *(v0 + 1512);
        v149 = *(v0 + 1504);
        v150 = *(v0 + 1184);
        v151 = *(v0 + 864);
        if (v147 == 1)
        {
          sub_10000B3A8(v151, &unk_1016AF890, &qword_1013926D0);
          (*(v148 + 56))(v150, 1, 1, v149);
        }

        else
        {
          v152 = *(v146 + 20);
          v153 = *(v0 + 864);
          sub_1000D2A70(v151 + v152, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
          sub_100988488(v153, type metadata accessor for SharedBeaconRecord.PropertyListContent);
          if ((*(v148 + 48))(v150, 1, v149) != 1)
          {
            v154 = *(v0 + 1816);
            v155 = *(v0 + 1808);
            v156 = *(v0 + 1560);
            v157 = *(v0 + 1552);
            v158 = *(v0 + 1504);
            v155(v157, *(v0 + 1184), v158);
            v155(v156, v157, v158);
            goto LABEL_53;
          }
        }

        v120 = *(v0 + 1184);
        v118 = &qword_1016980D0;
        v119 = &unk_10138F3B0;
        goto LABEL_51;
      }
    }
  }

  sub_100988488(v115, type metadata accessor for SharedBeaconRecord);
LABEL_52:
  v121 = *(v0 + 1560);
  v122 = *(v0 + 696);
  v123 = v122[3];
  v124 = v122[4];
  sub_1000035D0(v122, v123);
  (*(*(*(v124 + 8) + 8) + 32))(v123);
LABEL_53:
  v125 = *(v0 + 1544);
  v126 = *(v0 + 1512);
  v127 = *(v0 + 1504);
  v128 = *(v0 + 1176);
  v129 = *(v0 + 696);
  v130 = v129[3];
  v131 = v129[4];
  sub_1000035D0(v129, v130);
  sub_10083138C(v130, v131, v125);
  v132 = v129[3];
  v133 = v129[4];
  sub_1000035D0(v129, v132);
  (*(v133 + 200))(v132, v133);
  v134 = *(v126 + 48);
  *(v0 + 2608) = v134;
  *(v0 + 2616) = (v126 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v134(v128, 1, v127) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v135 = *(v0 + 1792);
    v136 = *(v0 + 1512);
    v137 = *(v0 + 1504);
    v138 = *(v0 + 1168);
    v45 = *(v0 + 704);
    (*(v0 + 1784))(v138, *(v0 + 1560), v137);
    v139 = *(v136 + 56);
    *(v0 + 2688) = v139;
    *(v0 + 2696) = (v136 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v139(v138, 0, 1, v137);
    v49 = sub_1009757DC;
    goto LABEL_25;
  }

  v140 = *(v0 + 1816);
  v141 = *(v0 + 704);
  (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
  v34 = sub_100975010;
  v35 = v141;
LABEL_29:
  v36 = 0;

  return _swift_task_switch(v34, v35, v36);
}

uint64_t sub_100970844()
{
  v148 = v0;
  v1 = *(v0 + 928);
  v2 = 1;
  (*(*(v0 + 944) + 56))(v1, 1, 1, *(v0 + 936));
  sub_10000B3A8(v1, &unk_1016AF8A0, &unk_10139D7C0);
  *(v0 + 2368) = 0u;
  v3 = sub_1012BDEE0(*(v0 + 696));
  if (v3 <= 1)
  {
    if (v3)
    {
      v2 = 2;
    }
  }

  else if (v3 == 2)
  {
    v2 = 4;
  }

  else
  {
    if (v3 != 3)
    {
      v7 = *(v0 + 1640);
      v8 = *(v0 + 704);
      v9 = *(v0 + 696);
      v10 = v9[3];
      v11 = v9[4];
      sub_1000035D0(v9, v10);
      (*(*(*(v11 + 8) + 8) + 32))(v10);
      v12 = sub_100971698;
LABEL_25:
      v19 = v12;
      v20 = v8;
      goto LABEL_26;
    }

    v2 = 5;
  }

  v4 = *(v0 + 696);
  v5 = v4[3];
  v6 = v4[4];
  sub_1000035D0(v4, v5);
  if ((*(v6 + 56))(v5, v6) == 22034)
  {
    if (v2 == 4)
    {
      v2 = 5;
    }

    else if (v2 == 5)
    {
      v2 = 6;
    }
  }

  *(v0 + 2400) = v2;
  v13 = *(v0 + 2240);
  v14 = *(v0 + 2232);
  v15 = *(v0 + 1480);
  v16 = *(v0 + 1440);
  sub_1000D2A70(*(v0 + 1464), v16, &unk_1016AF8C0, &unk_1013A07A0);
  if (v14(v16, 1, v15) == 1)
  {
    sub_10000B3A8(*(v0 + 1440), &unk_1016AF8C0, &unk_1013A07A0);
    v17 = 0;
  }

  else
  {
    v18 = *(v0 + 1440);
    v17 = *(v18 + *(*(v0 + 1480) + 72));
    sub_100988488(v18, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2408) = v17;
  v19 = MobileGestalt_get_current_device();
  if (!v19)
  {
    __break(1u);
    return _swift_task_switch(v19, v20, v21);
  }

  v22 = v19;
  v23 = MobileGestalt_copy_productType_obj();

  if (v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = *(v0 + 1968);
  v25 = *(v0 + 1280);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 696);
  v28 = String.lowercased()();

  *(v0 + 616) = v28;
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  *(v0 + 2856) = *(v0 + 2846);
  sub_10001F280(v27, v0 + 384);
  if (swift_dynamicCast())
  {
    v29 = *(v0 + 1640);
    v30 = *(v0 + 704);
    v31 = *(v0 + 696);
    sub_100986170(*(v0 + 1280), *(v0 + 1272), type metadata accessor for OwnedBeaconRecord);
    *(v0 + 2844) = sub_100D608FC();
    v33 = v31[3];
    v32 = v31[4];
    sub_1000035D0(v31, v33);
    (*(*(*(v32 + 8) + 8) + 32))(v33);
    v34 = sub_10097279C;
LABEL_22:
    v19 = v34;
    v20 = v30;
    goto LABEL_26;
  }

  v35 = *(v0 + 1968);
  v36 = *(v0 + 896);
  v37 = *(v0 + 880);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 1640);
    v8 = *(v0 + 704);
    v39 = *(v0 + 696);
    sub_100986170(*(v0 + 896), *(v0 + 888), type metadata accessor for LocalFindableAccessoryRecord);
    v40 = v39[3];
    v41 = v39[4];
    sub_1000035D0(v39, v40);
    (*(*(*(v41 + 8) + 8) + 32))(v40);
    v12 = sub_100973278;
    goto LABEL_25;
  }

  v42 = *(v0 + 1968);
  v43 = *(v0 + 1080);
  v44 = *(v0 + 1040);
  if (swift_dynamicCast())
  {
    v45 = *(v0 + 1072);
    v46 = *(v0 + 1040);
    sub_100986170(*(v0 + 1080), v45, type metadata accessor for SharedBeaconRecord);
    v47 = sub_100314604(*(v45 + *(v46 + 44)), *(v45 + *(v46 + 48)));
    if (v48 >> 60 == 15)
    {
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 696);
      v50 = type metadata accessor for Logger();
      sub_1000076D4(v50, qword_10177B740);
      sub_10001F280(v49, v0 + 544);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v145 = *(v0 + 1840);
        v53 = *(v0 + 1832);
        v54 = *(v0 + 1640);
        v55 = *(v0 + 1504);
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v147 = v57;
        *v56 = 141558275;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        v58 = *(v0 + 568);
        v59 = *(v0 + 576);
        sub_1000035D0((v0 + 544), v58);
        (*(*(*(v59 + 8) + 8) + 32))(v58);
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        v53(v54, v55);
        sub_100007BAC((v0 + 544));
        v63 = sub_1000136BC(v60, v62, &v147);

        *(v56 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v51, v52, "Could not compute productUUID from shared beacon %{private,mask.hash}s.", v56, 0x16u);
        sub_100007BAC(v57);
      }

      else
      {

        sub_100007BAC((v0 + 544));
      }

      v127 = *(v0 + 1592);
      UUID.init(uuid:)();
    }

    else
    {
      v79 = v48;
      v80 = v47;
      if (qword_101694570 != -1)
      {
        swift_once();
      }

      v81 = *(v0 + 1592);
      v147 = xmmword_10169DAA8;
      sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
      Data.append(_:)();
      v82 = v147;
      *(v0 + 600) = v147;
      sub_100017D5C(v82, *(&v82 + 1));
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100006654(v80, v79);
      sub_100016590(v82, *(&v82 + 1));
      sub_100016590(v82, *(&v82 + 1));
    }

    v20 = *(v0 + 704);
    v19 = sub_100973ACC;
    goto LABEL_26;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 696);
  v65 = type metadata accessor for Logger();
  sub_1000076D4(v65, qword_10177B740);
  sub_10001F280(v64, v0 + 424);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v146 = *(v0 + 1840);
    v68 = *(v0 + 1832);
    v69 = *(v0 + 1640);
    v70 = *(v0 + 1504);
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v147 = v72;
    *v71 = 141558275;
    *(v71 + 4) = 1752392040;
    *(v71 + 12) = 2081;
    v74 = *(v0 + 448);
    v73 = *(v0 + 456);
    sub_1000035D0((v0 + 424), v74);
    (*(*(*(v73 + 8) + 8) + 32))(v74);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v76;
    v68(v69, v70);
    sub_100007BAC((v0 + 424));
    v78 = sub_1000136BC(v75, v77, &v147);

    *(v71 + 14) = v78;
    _os_log_impl(&_mh_execute_header, v66, v67, "Beacon record type is not handled for beacon %{private,mask.hash}s.", v71, 0x16u);
    sub_100007BAC(v72);
  }

  else
  {

    sub_100007BAC((v0 + 424));
  }

  v83 = *(v0 + 1592);
  v84 = *(v0 + 696);
  UUID.init(uuid:)();
  v85 = v84[3];
  v86 = v84[4];
  sub_1000035D0(v84, v85);
  v87 = (*(v86 + 24))(v85, v86);
  v88 = *(v0 + 2368);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v89;
  *(v0 + 2568) = v87;
  *(v0 + 2560) = v88;
  v90 = *(v0 + 1968);
  v91 = *(v0 + 1048);
  v92 = *(v0 + 1040);
  v93 = *(v0 + 1024);
  v94 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v94, v0 + 464);
  v95 = swift_dynamicCast();
  v96 = *(v91 + 56);
  if ((v95 & 1) == 0)
  {
    v102 = *(v0 + 1024);
    v96(v102, 1, 1, *(v0 + 1040));
    v103 = &unk_101698C30;
    v104 = &unk_101392630;
    v105 = v102;
LABEL_48:
    sub_10000B3A8(v105, v103, v104);
    goto LABEL_49;
  }

  v97 = *(v0 + 1064);
  v98 = *(v0 + 1040);
  v99 = *(v0 + 1024);
  v96(v99, 0, 1, v98);
  sub_100986170(v99, v97, type metadata accessor for SharedBeaconRecord);
  v100 = *(v0 + 1064);
  if (*(v97 + *(v98 + 44)) == -1)
  {
    v101 = *(v0 + 1040);
    if (*(v100 + v101[12]) == -1)
    {
      v128 = *(v100 + v101[16]);
      if (v128 == 4 || v128 == 1)
      {
        v129 = *(v0 + 864);
        v130 = *(v0 + 1064);
        sub_1000D2A70(v100 + v101[20], v129, &unk_1016AF890, &qword_1013926D0);
        sub_100988488(v130, type metadata accessor for SharedBeaconRecord);
        v131 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        v132 = (*(*(v131 - 8) + 48))(v129, 1, v131);
        v133 = *(v0 + 1512);
        v134 = *(v0 + 1504);
        v135 = *(v0 + 1184);
        v136 = *(v0 + 864);
        if (v132 == 1)
        {
          sub_10000B3A8(v136, &unk_1016AF890, &qword_1013926D0);
          (*(v133 + 56))(v135, 1, 1, v134);
        }

        else
        {
          v137 = *(v131 + 20);
          v138 = *(v0 + 864);
          sub_1000D2A70(v136 + v137, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
          sub_100988488(v138, type metadata accessor for SharedBeaconRecord.PropertyListContent);
          if ((*(v133 + 48))(v135, 1, v134) != 1)
          {
            v139 = *(v0 + 1816);
            v140 = *(v0 + 1808);
            v141 = *(v0 + 1560);
            v142 = *(v0 + 1552);
            v143 = *(v0 + 1504);
            v140(v142, *(v0 + 1184), v143);
            v140(v141, v142, v143);
            goto LABEL_50;
          }
        }

        v105 = *(v0 + 1184);
        v103 = &qword_1016980D0;
        v104 = &unk_10138F3B0;
        goto LABEL_48;
      }
    }
  }

  sub_100988488(v100, type metadata accessor for SharedBeaconRecord);
LABEL_49:
  v106 = *(v0 + 1560);
  v107 = *(v0 + 696);
  v108 = v107[3];
  v109 = v107[4];
  sub_1000035D0(v107, v108);
  (*(*(*(v109 + 8) + 8) + 32))(v108);
LABEL_50:
  v110 = *(v0 + 1544);
  v111 = *(v0 + 1512);
  v112 = *(v0 + 1504);
  v113 = *(v0 + 1176);
  v114 = *(v0 + 696);
  v115 = v114[3];
  v116 = v114[4];
  sub_1000035D0(v114, v115);
  sub_10083138C(v115, v116, v110);
  v117 = v114[3];
  v118 = v114[4];
  sub_1000035D0(v114, v117);
  (*(v118 + 200))(v117, v118);
  v119 = *(v111 + 48);
  *(v0 + 2608) = v119;
  *(v0 + 2616) = (v111 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v119(v113, 1, v112) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v120 = *(v0 + 1792);
    v121 = *(v0 + 1512);
    v122 = *(v0 + 1504);
    v123 = *(v0 + 1168);
    v30 = *(v0 + 704);
    (*(v0 + 1784))(v123, *(v0 + 1560), v122);
    v124 = *(v121 + 56);
    *(v0 + 2688) = v124;
    *(v0 + 2696) = (v121 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v124(v123, 0, 1, v122);
    v34 = sub_1009757DC;
    goto LABEL_22;
  }

  v125 = *(v0 + 1816);
  v126 = *(v0 + 704);
  (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
  v19 = sub_100975010;
  v20 = v126;
LABEL_26:
  v21 = 0;

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_100971698()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1640), v6);
  v9 = swift_allocObject();
  *(v0 + 2384) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2392) = v11;
  *v11 = v0;
  v11[1] = sub_1009717F4;
  v12 = *(v0 + 920);
  v13 = *(v0 + 904);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100986510, v9, v13);
}

uint64_t sub_1009717F4()
{
  v1 = *v0;
  v2 = *(*v0 + 2392);
  v3 = *(*v0 + 2384);
  v4 = *(*v0 + 1840);
  v5 = *(*v0 + 1832);
  v6 = *(*v0 + 1640);
  v7 = *(*v0 + 1504);
  v10 = *v0;

  v5(v6, v7);
  v8 = *(v1 + 1768);

  return _swift_task_switch(sub_100971994, v8, 0);
}

uint64_t sub_100971994()
{
  v144 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 784);
  if ((*(*(v0 + 792) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169DBD8, &qword_1013BF910);
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + *(v2 + 20));
    sub_100988488(v1, type metadata accessor for BeaconStatus);
    v3 = qword_1013CB120[sub_100165934(v4)];
    v5 = *(v0 + 696);
    v6 = v5[3];
    v7 = v5[4];
    sub_1000035D0(v5, v6);
    if ((*(v7 + 56))(v6, v7) == 22034)
    {
      if (v3 == 4)
      {
        v3 = 5;
      }

      else if (v3 == 5)
      {
        v3 = 6;
      }
    }
  }

  *(v0 + 2400) = v3;
  v8 = *(v0 + 2240);
  v9 = *(v0 + 2232);
  v10 = *(v0 + 1480);
  v11 = *(v0 + 1440);
  sub_1000D2A70(*(v0 + 1464), v11, &unk_1016AF8C0, &unk_1013A07A0);
  if (v9(v11, 1, v10) == 1)
  {
    sub_10000B3A8(*(v0 + 1440), &unk_1016AF8C0, &unk_1013A07A0);
    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 1440);
    v12 = *(v13 + *(*(v0 + 1480) + 72));
    sub_100988488(v13, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 2408) = v12;
  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
    __break(1u);
    return _swift_task_switch(v14, v15, v16);
  }

  v17 = v14;
  v18 = MobileGestalt_copy_productType_obj();

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = *(v0 + 1968);
  v20 = *(v0 + 1280);
  v21 = *(v0 + 1232);
  v22 = *(v0 + 696);
  v23 = String.lowercased()();

  *(v0 + 616) = v23;
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  *(v0 + 2856) = *(v0 + 2846);
  sub_10001F280(v22, v0 + 384);
  if (swift_dynamicCast())
  {
    v24 = *(v0 + 1640);
    v25 = *(v0 + 704);
    v26 = *(v0 + 696);
    sub_100986170(*(v0 + 1280), *(v0 + 1272), type metadata accessor for OwnedBeaconRecord);
    *(v0 + 2844) = sub_100D608FC();
    v28 = v26[3];
    v27 = v26[4];
    sub_1000035D0(v26, v28);
    (*(*(*(v27 + 8) + 8) + 32))(v28);
    v29 = sub_10097279C;
LABEL_16:
    v14 = v29;
    v15 = v25;
    goto LABEL_46;
  }

  v30 = *(v0 + 1968);
  v31 = *(v0 + 896);
  v32 = *(v0 + 880);
  if (swift_dynamicCast())
  {
    v33 = *(v0 + 1640);
    v34 = *(v0 + 704);
    v35 = *(v0 + 696);
    sub_100986170(*(v0 + 896), *(v0 + 888), type metadata accessor for LocalFindableAccessoryRecord);
    v36 = v35[3];
    v37 = v35[4];
    sub_1000035D0(v35, v36);
    (*(*(*(v37 + 8) + 8) + 32))(v36);
    v14 = sub_100973278;
    v15 = v34;
    goto LABEL_46;
  }

  v38 = *(v0 + 1968);
  v39 = *(v0 + 1080);
  v40 = *(v0 + 1040);
  if (swift_dynamicCast())
  {
    v41 = *(v0 + 1072);
    v42 = *(v0 + 1040);
    sub_100986170(*(v0 + 1080), v41, type metadata accessor for SharedBeaconRecord);
    v43 = sub_100314604(*(v41 + *(v42 + 44)), *(v41 + *(v42 + 48)));
    if (v44 >> 60 == 15)
    {
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v45 = *(v0 + 696);
      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177B740);
      sub_10001F280(v45, v0 + 544);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v141 = *(v0 + 1840);
        v49 = *(v0 + 1832);
        v50 = *(v0 + 1640);
        v51 = *(v0 + 1504);
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v143 = v53;
        *v52 = 141558275;
        *(v52 + 4) = 1752392040;
        *(v52 + 12) = 2081;
        v54 = *(v0 + 568);
        v55 = *(v0 + 576);
        sub_1000035D0((v0 + 544), v54);
        (*(*(*(v55 + 8) + 8) + 32))(v54);
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v49(v50, v51);
        sub_100007BAC((v0 + 544));
        v59 = sub_1000136BC(v56, v58, &v143);

        *(v52 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v47, v48, "Could not compute productUUID from shared beacon %{private,mask.hash}s.", v52, 0x16u);
        sub_100007BAC(v53);
      }

      else
      {

        sub_100007BAC((v0 + 544));
      }

      v123 = *(v0 + 1592);
      UUID.init(uuid:)();
    }

    else
    {
      v75 = v44;
      v76 = v43;
      if (qword_101694570 != -1)
      {
        swift_once();
      }

      v77 = *(v0 + 1592);
      v143 = xmmword_10169DAA8;
      sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
      Data.append(_:)();
      v78 = v143;
      *(v0 + 600) = v143;
      sub_100017D5C(v78, *(&v78 + 1));
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();
      sub_100006654(v76, v75);
      sub_100016590(v78, *(&v78 + 1));
      sub_100016590(v78, *(&v78 + 1));
    }

    v15 = *(v0 + 704);
    v14 = sub_100973ACC;
    goto LABEL_46;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 696);
  v61 = type metadata accessor for Logger();
  sub_1000076D4(v61, qword_10177B740);
  sub_10001F280(v60, v0 + 424);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v142 = *(v0 + 1840);
    v64 = *(v0 + 1832);
    v65 = *(v0 + 1640);
    v66 = *(v0 + 1504);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v143 = v68;
    *v67 = 141558275;
    *(v67 + 4) = 1752392040;
    *(v67 + 12) = 2081;
    v70 = *(v0 + 448);
    v69 = *(v0 + 456);
    sub_1000035D0((v0 + 424), v70);
    (*(*(*(v69 + 8) + 8) + 32))(v70);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v64(v65, v66);
    sub_100007BAC((v0 + 424));
    v74 = sub_1000136BC(v71, v73, &v143);

    *(v67 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v62, v63, "Beacon record type is not handled for beacon %{private,mask.hash}s.", v67, 0x16u);
    sub_100007BAC(v68);
  }

  else
  {

    sub_100007BAC((v0 + 424));
  }

  v79 = *(v0 + 1592);
  v80 = *(v0 + 696);
  UUID.init(uuid:)();
  v81 = v80[3];
  v82 = v80[4];
  sub_1000035D0(v80, v81);
  v83 = (*(v82 + 24))(v81, v82);
  v84 = *(v0 + 2368);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v85;
  *(v0 + 2568) = v83;
  *(v0 + 2560) = v84;
  v86 = *(v0 + 1968);
  v87 = *(v0 + 1048);
  v88 = *(v0 + 1040);
  v89 = *(v0 + 1024);
  v90 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v90, v0 + 464);
  v91 = swift_dynamicCast();
  v92 = *(v87 + 56);
  if ((v91 & 1) == 0)
  {
    v98 = *(v0 + 1024);
    v92(v98, 1, 1, *(v0 + 1040));
    v99 = &unk_101698C30;
    v100 = &unk_101392630;
    v101 = v98;
LABEL_38:
    sub_10000B3A8(v101, v99, v100);
    goto LABEL_39;
  }

  v93 = *(v0 + 1064);
  v94 = *(v0 + 1040);
  v95 = *(v0 + 1024);
  v92(v95, 0, 1, v94);
  sub_100986170(v95, v93, type metadata accessor for SharedBeaconRecord);
  v96 = *(v0 + 1064);
  if (*(v93 + *(v94 + 44)) == -1)
  {
    v97 = *(v0 + 1040);
    if (*(v96 + v97[12]) == -1)
    {
      v124 = *(v96 + v97[16]);
      if (v124 == 4 || v124 == 1)
      {
        v125 = *(v0 + 864);
        v126 = *(v0 + 1064);
        sub_1000D2A70(v96 + v97[20], v125, &unk_1016AF890, &qword_1013926D0);
        sub_100988488(v126, type metadata accessor for SharedBeaconRecord);
        v127 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        v128 = (*(*(v127 - 8) + 48))(v125, 1, v127);
        v129 = *(v0 + 1512);
        v130 = *(v0 + 1504);
        v131 = *(v0 + 1184);
        v132 = *(v0 + 864);
        if (v128 == 1)
        {
          sub_10000B3A8(v132, &unk_1016AF890, &qword_1013926D0);
          (*(v129 + 56))(v131, 1, 1, v130);
        }

        else
        {
          v133 = *(v127 + 20);
          v134 = *(v0 + 864);
          sub_1000D2A70(v132 + v133, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
          sub_100988488(v134, type metadata accessor for SharedBeaconRecord.PropertyListContent);
          if ((*(v129 + 48))(v131, 1, v130) != 1)
          {
            v135 = *(v0 + 1816);
            v136 = *(v0 + 1808);
            v137 = *(v0 + 1560);
            v138 = *(v0 + 1552);
            v139 = *(v0 + 1504);
            v136(v138, *(v0 + 1184), v139);
            v136(v137, v138, v139);
            goto LABEL_40;
          }
        }

        v101 = *(v0 + 1184);
        v99 = &qword_1016980D0;
        v100 = &unk_10138F3B0;
        goto LABEL_38;
      }
    }
  }

  sub_100988488(v96, type metadata accessor for SharedBeaconRecord);
LABEL_39:
  v102 = *(v0 + 1560);
  v103 = *(v0 + 696);
  v104 = v103[3];
  v105 = v103[4];
  sub_1000035D0(v103, v104);
  (*(*(*(v105 + 8) + 8) + 32))(v104);
LABEL_40:
  v106 = *(v0 + 1544);
  v107 = *(v0 + 1512);
  v108 = *(v0 + 1504);
  v109 = *(v0 + 1176);
  v110 = *(v0 + 696);
  v111 = v110[3];
  v112 = v110[4];
  sub_1000035D0(v110, v111);
  sub_10083138C(v111, v112, v106);
  v113 = v110[3];
  v114 = v110[4];
  sub_1000035D0(v110, v113);
  (*(v114 + 200))(v113, v114);
  v115 = *(v107 + 48);
  *(v0 + 2608) = v115;
  *(v0 + 2616) = (v107 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v115(v109, 1, v108) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v116 = *(v0 + 1792);
    v117 = *(v0 + 1512);
    v118 = *(v0 + 1504);
    v119 = *(v0 + 1168);
    v25 = *(v0 + 704);
    (*(v0 + 1784))(v119, *(v0 + 1560), v118);
    v120 = *(v117 + 56);
    *(v0 + 2688) = v120;
    *(v0 + 2696) = (v117 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v120(v119, 0, 1, v118);
    v29 = sub_1009757DC;
    goto LABEL_16;
  }

  v121 = *(v0 + 1816);
  v122 = *(v0 + 704);
  (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
  v14 = sub_100975010;
  v15 = v122;
LABEL_46:
  v16 = 0;

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10097279C()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1640), v6);
  v9 = swift_allocObject();
  *(v0 + 2416) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2424) = v11;
  *v11 = v0;
  v11[1] = sub_1009728F8;
  v12 = *(v0 + 1592);
  v13 = *(v0 + 1504);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100988F2C, v9, v13);
}

uint64_t sub_1009728F8()
{
  v1 = *(*v0 + 2424);
  v2 = *(*v0 + 2416);
  v3 = *(*v0 + 1840);
  v4 = *(*v0 + 1832);
  v5 = *(*v0 + 1640);
  v6 = *(*v0 + 1504);
  v7 = *(*v0 + 704);
  v9 = *v0;

  v4(v5, v6);

  return _swift_task_switch(sub_100972A90, v7, 0);
}

uint64_t sub_100972A90()
{
  v1 = v0[158];
  v2 = v0[156];
  v3 = v0[155];
  v4 = v0[88];
  sub_1009863FC(v0[159], v1, type metadata accessor for OwnedBeaconRecord);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[304] = v6;
  *(v6 + 16) = v4;
  sub_100986170(v1, v6 + v5, type metadata accessor for OwnedBeaconRecord);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[305] = v8;
  v9 = sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
  *v8 = v0;
  v8[1] = sub_100972C00;

  return unsafeBlocking<A>(context:_:)(v0 + 73, 0xD000000000000010, 0x800000010134A8C0, sub_100986664, v6, v9);
}

uint64_t sub_100972C00()
{
  v1 = *(*v0 + 2440);
  v2 = *(*v0 + 2432);
  v3 = *(*v0 + 704);
  v5 = *v0;

  return _swift_task_switch(sub_100972D2C, v3, 0);
}

uint64_t sub_100972D54()
{
  v1 = *(v0 + 2844);
  v2 = *(v0 + 1272);
  v3 = (v2 + *(*(v0 + 1232) + 60));
  v5 = *v3;
  v4 = v3[1];

  sub_100988488(v2, type metadata accessor for OwnedBeaconRecord);
  v6 = *(v0 + 2368);
  if ((v1 & 0x100) != 0)
  {
    v7 = 255;
  }

  else
  {
    v7 = v1;
  }

  *(v0 + 2600) = v7;
  *(v0 + 2584) = *(v0 + 2448);
  *(v0 + 2576) = v4;
  *(v0 + 2568) = v5;
  *(v0 + 2560) = v6;
  v8 = *(v0 + 1968);
  v9 = *(v0 + 1048);
  v10 = *(v0 + 1040);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v12, v0 + 464);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if ((v13 & 1) == 0)
  {
    v20 = *(v0 + 1024);
    v14(v20, 1, 1, *(v0 + 1040));
    v21 = &unk_101698C30;
    v22 = &unk_101392630;
    v23 = v20;
LABEL_9:
    sub_10000B3A8(v23, v21, v22);
    goto LABEL_10;
  }

  v15 = *(v0 + 1064);
  v16 = *(v0 + 1040);
  v17 = *(v0 + 1024);
  v14(v17, 0, 1, v16);
  sub_100986170(v17, v15, type metadata accessor for SharedBeaconRecord);
  v18 = *(v0 + 1064);
  if (*(v15 + *(v16 + 44)) != -1 || (v19 = *(v0 + 1040), *(v18 + v19[12]) != -1) || (v48 = *(v18 + v19[16]), v48 != 4) && v48 != 1)
  {
    sub_100988488(v18, type metadata accessor for SharedBeaconRecord);
LABEL_10:
    v24 = *(v0 + 1560);
    v25 = *(v0 + 696);
    v26 = v25[3];
    v27 = v25[4];
    sub_1000035D0(v25, v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);
    goto LABEL_11;
  }

  v49 = *(v0 + 864);
  v50 = *(v0 + 1064);
  sub_1000D2A70(v18 + v19[20], v49, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v50, type metadata accessor for SharedBeaconRecord);
  v51 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v52 = (*(*(v51 - 8) + 48))(v49, 1, v51);
  v53 = *(v0 + 1512);
  v54 = *(v0 + 1504);
  v55 = *(v0 + 1184);
  v56 = *(v0 + 864);
  if (v52 == 1)
  {
    sub_10000B3A8(v56, &unk_1016AF890, &qword_1013926D0);
    (*(v53 + 56))(v55, 1, 1, v54);
LABEL_22:
    v23 = *(v0 + 1184);
    v21 = &qword_1016980D0;
    v22 = &unk_10138F3B0;
    goto LABEL_9;
  }

  v57 = *(v51 + 20);
  v58 = *(v0 + 864);
  sub_1000D2A70(v56 + v57, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v58, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v53 + 48))(v55, 1, v54) == 1)
  {
    goto LABEL_22;
  }

  v59 = *(v0 + 1816);
  v60 = *(v0 + 1808);
  v61 = *(v0 + 1560);
  v62 = *(v0 + 1552);
  v63 = *(v0 + 1504);
  v60(v62, *(v0 + 1184), v63);
  v60(v61, v62, v63);
LABEL_11:
  v28 = *(v0 + 1544);
  v29 = *(v0 + 1512);
  v30 = *(v0 + 1504);
  v31 = *(v0 + 1176);
  v32 = *(v0 + 696);
  v33 = v32[3];
  v34 = v32[4];
  sub_1000035D0(v32, v33);
  sub_10083138C(v33, v34, v28);
  v35 = v32[3];
  v36 = v32[4];
  sub_1000035D0(v32, v35);
  (*(v36 + 200))(v35, v36);
  v37 = *(v29 + 48);
  *(v0 + 2608) = v37;
  *(v0 + 2616) = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v37(v31, 1, v30) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v38 = *(v0 + 1792);
    v39 = *(v0 + 1512);
    v40 = *(v0 + 1504);
    v41 = *(v0 + 1168);
    v42 = *(v0 + 704);
    (*(v0 + 1784))(v41, *(v0 + 1560), v40);
    v43 = *(v39 + 56);
    *(v0 + 2688) = v43;
    *(v0 + 2696) = (v39 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(v41, 0, 1, v40);
    v44 = sub_1009757DC;
    v45 = v42;
  }

  else
  {
    v46 = *(v0 + 1816);
    v47 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v44 = sub_100975010;
    v45 = v47;
  }

  return _swift_task_switch(v44, v45, 0);
}

uint64_t sub_100973278()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1632);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1640), v6);
  v9 = swift_allocObject();
  *(v0 + 2464) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2472) = v11;
  *v11 = v0;
  v11[1] = sub_1009733D4;
  v12 = *(v0 + 1592);
  v13 = *(v0 + 1504);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10098664C, v9, v13);
}

uint64_t sub_1009733D4()
{
  v1 = *v0;
  v2 = *(*v0 + 2472);
  v3 = *(*v0 + 2464);
  v4 = *(*v0 + 1840);
  v5 = *(*v0 + 1832);
  v6 = *(*v0 + 1640);
  v7 = *(*v0 + 1504);
  v10 = *v0;

  v5(v6, v7);
  v8 = *(v1 + 1768);

  return _swift_task_switch(sub_100973574, v8, 0);
}

uint64_t sub_100973574()
{
  v1 = *(v0 + 872);
  v2 = (*(v0 + 888) + *(*(v0 + 880) + 28));
  v3 = *v2;
  v4 = v2[1];
  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  if (!v6)
  {
    v5 = Data.hexString.getter();
  }

  v7 = v5;
  v8 = v6;
  v9 = *(v0 + 888);
  v10 = (v9 + *(*(v0 + 880) + 24));
  v12 = *v10;
  v11 = v10[1];

  sub_100988488(v9, type metadata accessor for LocalFindableAccessoryRecord);
  v13 = *(v0 + 2368);
  *(v0 + 2600) = 255;
  *(v0 + 2592) = v8;
  *(v0 + 2584) = v7;
  *(v0 + 2576) = v11;
  *(v0 + 2568) = v12;
  *(v0 + 2560) = v13;
  v14 = *(v0 + 1968);
  v15 = *(v0 + 1048);
  v16 = *(v0 + 1040);
  v17 = *(v0 + 1024);
  v18 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v18, v0 + 464);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if ((v19 & 1) == 0)
  {
    v26 = *(v0 + 1024);
    v20(v26, 1, 1, *(v0 + 1040));
    v27 = &unk_101698C30;
    v28 = &unk_101392630;
    v29 = v26;
LABEL_8:
    sub_10000B3A8(v29, v27, v28);
    goto LABEL_9;
  }

  v21 = *(v0 + 1064);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1024);
  v20(v23, 0, 1, v22);
  sub_100986170(v23, v21, type metadata accessor for SharedBeaconRecord);
  v24 = *(v0 + 1064);
  if (*(v21 + *(v22 + 44)) != -1 || (v25 = *(v0 + 1040), *(v24 + v25[12]) != -1) || (v54 = *(v24 + v25[16]), v54 != 4) && v54 != 1)
  {
    sub_100988488(v24, type metadata accessor for SharedBeaconRecord);
LABEL_9:
    v30 = *(v0 + 1560);
    v31 = *(v0 + 696);
    v32 = v31[3];
    v33 = v31[4];
    sub_1000035D0(v31, v32);
    (*(*(*(v33 + 8) + 8) + 32))(v32);
    goto LABEL_10;
  }

  v55 = *(v0 + 864);
  v56 = *(v0 + 1064);
  sub_1000D2A70(v24 + v25[20], v55, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v56, type metadata accessor for SharedBeaconRecord);
  v57 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v58 = (*(*(v57 - 8) + 48))(v55, 1, v57);
  v59 = *(v0 + 1512);
  v60 = *(v0 + 1504);
  v61 = *(v0 + 1184);
  v62 = *(v0 + 864);
  if (v58 == 1)
  {
    sub_10000B3A8(v62, &unk_1016AF890, &qword_1013926D0);
    (*(v59 + 56))(v61, 1, 1, v60);
LABEL_21:
    v29 = *(v0 + 1184);
    v27 = &qword_1016980D0;
    v28 = &unk_10138F3B0;
    goto LABEL_8;
  }

  v63 = *(v57 + 20);
  v64 = *(v0 + 864);
  sub_1000D2A70(v62 + v63, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v64, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v59 + 48))(v61, 1, v60) == 1)
  {
    goto LABEL_21;
  }

  v65 = *(v0 + 1816);
  v66 = *(v0 + 1808);
  v67 = *(v0 + 1560);
  v68 = *(v0 + 1552);
  v69 = *(v0 + 1504);
  v66(v68, *(v0 + 1184), v69);
  v66(v67, v68, v69);
LABEL_10:
  v34 = *(v0 + 1544);
  v35 = *(v0 + 1512);
  v36 = *(v0 + 1504);
  v37 = *(v0 + 1176);
  v38 = *(v0 + 696);
  v39 = v38[3];
  v40 = v38[4];
  sub_1000035D0(v38, v39);
  sub_10083138C(v39, v40, v34);
  v41 = v38[3];
  v42 = v38[4];
  sub_1000035D0(v38, v41);
  (*(v42 + 200))(v41, v42);
  v43 = *(v35 + 48);
  *(v0 + 2608) = v43;
  *(v0 + 2616) = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v43(v37, 1, v36) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v44 = *(v0 + 1792);
    v45 = *(v0 + 1512);
    v46 = *(v0 + 1504);
    v47 = *(v0 + 1168);
    v48 = *(v0 + 704);
    (*(v0 + 1784))(v47, *(v0 + 1560), v46);
    v49 = *(v45 + 56);
    *(v0 + 2688) = v49;
    *(v0 + 2696) = (v45 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v49(v47, 0, 1, v46);
    v50 = sub_1009757DC;
    v51 = v48;
  }

  else
  {
    v52 = *(v0 + 1816);
    v53 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v50 = sub_100975010;
    v51 = v53;
  }

  return _swift_task_switch(v50, v51, 0);
}

uint64_t sub_100973ACC()
{
  v1 = v0[88];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[310] = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  v0[311] = v4;
  *v3 = v0;
  v3[1] = sub_100973BB0;
  v5 = v0[88];

  return unsafeBlocking<A>(context:_:)(v0 + 82, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100973BB0()
{
  v1 = *(*v0 + 2480);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return _swift_task_switch(sub_100973CC8, v2, 0);
}

uint64_t sub_100973CEC()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[87];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = getuid();
  sub_1000294F0(v6);

  return _swift_task_switch(sub_100973DA0, 0, 0);
}

uint64_t sub_100973DA0()
{
  v1 = *(v0[312] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[313] = v2;
  *v2 = v0;
  v2[1] = sub_100973E50;
  v3 = v0[198];
  v4 = v0[197];

  return sub_100687A6C((v0 + 2), v3, v4);
}

uint64_t sub_100973E50()
{
  v2 = *v1;
  v3 = *(*v1 + 2504);
  v12 = *v1;
  *(*v1 + 2512) = v0;

  if (v0)
  {

    v4 = sub_1009744FC;
    v5 = 0;
  }

  else
  {
    v6 = v2[312];
    v7 = v2[230];
    v8 = v2[229];
    v9 = v2[198];
    v10 = v2[188];
    v8(v2[197], v10);
    v8(v9, v10);

    v5 = v2[221];
    v4 = sub_100973FB8;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100973FB8()
{
  if (!*(v0 + 24))
  {
    v18 = *(v0 + 704);
    v19 = sub_1009745BC;
    goto LABEL_13;
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_100988488(*(v0 + 1072), type metadata accessor for SharedBeaconRecord);

  sub_10000B3A8(v0 + 16, &unk_1016AF910, &unk_10138C4C0);
  v5 = *(v0 + 2512);
  *(v0 + 2600) = 255;
  *(v0 + 2592) = v1;
  *(v0 + 2584) = v2;
  *(v0 + 2576) = v3;
  *(v0 + 2568) = v4;
  *(v0 + 2560) = v5;
  v6 = *(v0 + 1968);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1040);
  v9 = *(v0 + 1024);
  v10 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v10, v0 + 464);
  v11 = swift_dynamicCast();
  v12 = *(v7 + 56);
  if ((v11 & 1) == 0)
  {
    v20 = *(v0 + 1024);
    v12(v20, 1, 1, *(v0 + 1040));
    v21 = &unk_101698C30;
    v22 = &unk_101392630;
    v23 = v20;
LABEL_8:
    sub_10000B3A8(v23, v21, v22);
    goto LABEL_9;
  }

  v13 = *(v0 + 1064);
  v14 = *(v0 + 1040);
  v15 = *(v0 + 1024);
  v12(v15, 0, 1, v14);
  sub_100986170(v15, v13, type metadata accessor for SharedBeaconRecord);
  v16 = *(v0 + 1064);
  if (*(v13 + *(v14 + 44)) != -1 || (v17 = *(v0 + 1040), *(v16 + v17[12]) != -1) || (v46 = *(v16 + v17[16]), v46 != 4) && v46 != 1)
  {
    sub_100988488(v16, type metadata accessor for SharedBeaconRecord);
LABEL_9:
    v24 = *(v0 + 1560);
    v25 = *(v0 + 696);
    v26 = v25[3];
    v27 = v25[4];
    sub_1000035D0(v25, v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);
    goto LABEL_10;
  }

  v47 = *(v0 + 864);
  v48 = *(v0 + 1064);
  sub_1000D2A70(v16 + v17[20], v47, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v48, type metadata accessor for SharedBeaconRecord);
  v49 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v50 = (*(*(v49 - 8) + 48))(v47, 1, v49);
  v51 = *(v0 + 1512);
  v52 = *(v0 + 1504);
  v53 = *(v0 + 1184);
  v54 = *(v0 + 864);
  if (v50 == 1)
  {
    sub_10000B3A8(v54, &unk_1016AF890, &qword_1013926D0);
    (*(v51 + 56))(v53, 1, 1, v52);
LABEL_21:
    v23 = *(v0 + 1184);
    v21 = &qword_1016980D0;
    v22 = &unk_10138F3B0;
    goto LABEL_8;
  }

  v55 = *(v49 + 20);
  v56 = *(v0 + 864);
  sub_1000D2A70(v54 + v55, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v56, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v51 + 48))(v53, 1, v52) == 1)
  {
    goto LABEL_21;
  }

  v57 = *(v0 + 1816);
  v58 = *(v0 + 1808);
  v59 = *(v0 + 1560);
  v60 = *(v0 + 1552);
  v61 = *(v0 + 1504);
  v58(v60, *(v0 + 1184), v61);
  v58(v59, v60, v61);
LABEL_10:
  v28 = *(v0 + 1544);
  v29 = *(v0 + 1512);
  v30 = *(v0 + 1504);
  v31 = *(v0 + 1176);
  v32 = *(v0 + 696);
  v33 = v32[3];
  v34 = v32[4];
  sub_1000035D0(v32, v33);
  sub_10083138C(v33, v34, v28);
  v35 = v32[3];
  v36 = v32[4];
  sub_1000035D0(v32, v35);
  (*(v36 + 200))(v35, v36);
  v37 = *(v29 + 48);
  *(v0 + 2608) = v37;
  *(v0 + 2616) = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v37(v31, 1, v30) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v38 = *(v0 + 1792);
    v39 = *(v0 + 1512);
    v40 = *(v0 + 1504);
    v41 = *(v0 + 1168);
    v42 = *(v0 + 704);
    (*(v0 + 1784))(v41, *(v0 + 1560), v40);
    v43 = *(v39 + 56);
    *(v0 + 2688) = v43;
    *(v0 + 2696) = (v39 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(v41, 0, 1, v40);
    v19 = sub_1009757DC;
    v18 = v42;
  }

  else
  {
    v44 = *(v0 + 1816);
    v45 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v19 = sub_100975010;
    v18 = v45;
  }

LABEL_13:

  return _swift_task_switch(v19, v18, 0);
}

uint64_t sub_1009744FC()
{
  v1 = v0[312];
  v2 = v0[230];
  v3 = v0[229];
  v4 = v0[198];
  v5 = v0[188];
  v3(v0[197], v5);
  v3(v4, v5);

  v6 = v0[221];

  return _swift_task_switch(sub_1009745A0, v6, 0);
}

uint64_t sub_1009745BC()
{
  v1 = v0[88];
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  v0[315] = v3;
  *v3 = v0;
  v3[1] = sub_100974694;
  v4 = v0[311];
  v5 = v0[88];

  return unsafeBlocking<A>(context:_:)(v0 + 83, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100974694()
{
  v1 = *(*v0 + 2520);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return _swift_task_switch(sub_1009747AC, v2, 0);
}

uint64_t sub_1009747D0()
{
  v1 = v0[196];
  v2 = v0[134];
  v3 = v0[130];
  v0[317] = *(v0[316] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v6 = v3 + 20;
  v5 = *(v3 + 20);
  v4 = *(v6 + 4);
  v7 = getuid();
  sub_1000294F0(v7);
  v8 = swift_task_alloc();
  v0[318] = v8;
  *v8 = v0;
  v8[1] = sub_1009748C8;
  v9 = v0[196];

  return sub_10068E930((v0 + 20), v2 + v4, v2 + v5, v9);
}

uint64_t sub_1009748C8()
{
  v2 = *v1;
  v3 = *(*v1 + 2544);
  v4 = *v1;
  v2[319] = v0;

  v5 = v2[317];
  v6 = v2[230];
  v7 = v2[229];
  v8 = v2[196];
  v9 = v2[188];
  if (v0)
  {

    v7(v8, v9);
    v10 = v2[221];
    v11 = sub_10097BEE0;
  }

  else
  {
    v7(v2[196], v2[188]);

    v10 = v2[221];
    v11 = sub_100974A8C;
  }

  return _swift_task_switch(v11, v10, 0);
}