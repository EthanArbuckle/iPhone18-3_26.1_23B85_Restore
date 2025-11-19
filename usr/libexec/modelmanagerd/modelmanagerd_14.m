uint64_t sub_10013D1C8()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[26];
  v3 = v1[13];
  v4 = v1[12];
  v5 = v1[11];
  v6 = v1[10];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = sub_100003308();
  v10(v9);
  v11 = sub_100026BB0();

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10013D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100001ED0();
  v18 = v17[8] + v17[21];
  sub_100025ADC(v17[22]);
  if (v16)
  {
    v19 = async function pointer to Task.value.getter[1];

    v20 = swift_task_alloc();
    v17[28] = v20;
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    sub_1000060CC();
    *v20 = v21;
    sub_100018A90();
    sub_100019260();

    return Task.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_10014B074();

    sub_100001F00();

    return v30();
  }
}

uint64_t sub_10013D424()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 80);
  if (v0)
  {

    v7 = sub_10014AF98;
  }

  else
  {
    v7 = sub_10013D550;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10013D550()
{
  sub_100001ED0();
  v1 = *(v0 + 216);

  sub_10014B074();

  sub_100001F00();

  return v2();
}

uint64_t sub_10013D5CC()
{
  sub_100008534();
  sub_10000D300();
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager));
  v1 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_neuralEngine);

  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_telemetryManager));
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider));
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_runningBoard));
  sub_10005D588((v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentTime));
  v3 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  v2 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  v4 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups + 8);

  v7 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  v6 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups + 8);

  v8 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager);

  v9 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_rateLimiter);

  v10 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  v11 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests + 8);
  v12 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests + 16);

  v13 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire);

  v14 = *(v0 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_extantRequests);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10013D72C()
{
  sub_10013D5CC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RequestManager()
{
  result = qword_1001BD790;
  if (!qword_1001BD790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013D7AC()
{
  result = _s6PolicyVMa();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_10013D8C8()
{
  sub_1000055B0();
  sub_1000135C4();
  v79 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v2 = sub_100002C00(v79);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v78 = v6 - v5;
  v7 = sub_10002B158();
  sub_10012C094(v7, v8, v1, v0);
  v10 = v9;
  v11 = 0;
  v12 = *(v9 + 16);
  v13 = &_swiftEmptySetSingleton;
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }

    v14 = v11 + 1;
    v15 = *(*(v10 + 8 * v11 + 32) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

    sub_100078D90();
    v13 = v16;
    v11 = v14;
  }

  if (v13[2])
  {
    sub_10002B158();
    sub_10002F720();
    sub_10012C094(v17, v18, v19, v20);
    v22 = v21;
    v23 = 0;
    v24 = *(v21 + 16);
    while (v24 != v23)
    {
      if (v23 >= *(v22 + 16))
      {
        goto LABEL_70;
      }

      v25 = v23 + 1;
      v26 = *(*(v22 + 8 * v23 + 32) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

      sub_100078D90();
      v23 = v25;
    }

    sub_100078D90();
    v74[-2] = __chkstk_darwin(v27);
    sub_10002F720();
    v32 = sub_10012C094(v28, v29, v30, v31);
    v74[0] = 0;
    v74[1] = v32;
    v34 = v33;

    v35 = 0;
    v82 = v34;
    v83 = _swiftEmptyArrayStorage;
    v36 = *(v34 + 16);
    v80 = v34 + 32;
    v81 = v36;
    while (1)
    {
      if (v35 == v81)
      {

        v84 = _swiftEmptyArrayStorage;
        v63 = v83;
        v64 = sub_10000E8DC(v83);
        v65 = 0;
        v66 = v63 & 0xC000000000000001;
        v67 = v63 & 0xFFFFFFFFFFFFFF8;
        while (v64 != v65)
        {
          if (v66)
          {
            v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v65 >= *(v67 + 16))
            {
              goto LABEL_75;
            }

            v68 = *(v83 + 8 * v65 + 32);
          }

          if (__OFADD__(v65, 1))
          {
            goto LABEL_74;
          }

          v69 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
          sub_100004CBC();
          swift_beginAccess();
          sub_100005DD8();
          v70 = v78;
          sub_10005CAA8(v68 + v69, v78);
          LOBYTE(v69) = *(v70 + *(v79 + 24));
          sub_1000115C8();
          sub_10000D300();
          if (v69)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v71 = v84[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v65;
        }

        sub_100077EE0(v84);
LABEL_68:
        sub_100002EEC();
        return;
      }

      if (v35 >= *(v82 + 16))
      {
        goto LABEL_71;
      }

      v37 = *(v80 + 8 * v35) + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
      sub_1000125C0();
      swift_beginAccess();
      v38 = *(*(v37 + 32) + 16);
      if (v38)
      {
        sub_100065020(&dword_1001BA4A8, &qword_100171010);
        v39 = sub_10014B308();
        j__malloc_size(v39);
        sub_1000316D4();
        *(v39 + 16) = v38;
        *(v39 + 24) = v40;
        sub_1001495F4();
        v42 = v41;

        sub_100007F18();
        if (v42 != v38)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v39 = _swiftEmptyArrayStorage;
      }

      v43 = v39 < 0 || (v39 & 0x4000000000000000) != 0;
      if (v43)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *(v39 + 16);
      }

      v45 = v83 >> 62;
      if (v83 >> 62)
      {
        v46 = sub_10014B4B8();
      }

      else
      {
        v46 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = v46 + v44;
      if (__OFADD__(v46, v44))
      {
        goto LABEL_72;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v45)
      {
        goto LABEL_32;
      }

      v48 = v83 & 0xFFFFFFFFFFFFFF8;
      if (v47 > *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_31;
      }

LABEL_34:
      ++v35;
      v50 = *(v48 + 16);
      v51 = (*(v48 + 24) >> 1) - v50;
      v52 = v48 + 8 * v50;
      if (v43)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_48;
        }

        sub_100019498();
        v53 = _CocoaArrayWrapper.endIndex.getter();
        if (v51 < v53)
        {
          goto LABEL_79;
        }

        if (v47 < 1)
        {
          goto LABEL_80;
        }

        v54 = v53;
        v75 = v48;
        v76 = v44;
        v77 = v35;
        v55 = v52 + 32;
        sub_100003508();
        sub_1000082D4(&qword_1001BC498, &qword_1001BC490, &qword_100174200);
        for (i = 0; i != v47; ++i)
        {
          sub_100065020(&qword_1001BC490, &qword_100174200);
          v57 = sub_1001494CC(v85, i, v39);
          v59 = *v58;

          v57(v85, 0);
          *(v55 + 8 * i) = v59;
        }

        v44 = v76;
        v35 = v77;
        v48 = v75;
LABEL_44:
        if (v54 < v44)
        {
          goto LABEL_73;
        }

        if (v54 > 0)
        {
          v60 = *(v48 + 16);
          v61 = __OFADD__(v60, v54);
          v62 = v60 + v54;
          if (v61)
          {
            goto LABEL_77;
          }

          *(v48 + 16) = v62;
        }
      }

      else
      {
        v54 = *(v39 + 16);
        if (v54)
        {
          if (v51 < v54)
          {
            goto LABEL_78;
          }

          type metadata accessor for DaemonRequest(0);
          swift_arrayInitWithCopy();

          goto LABEL_44;
        }

LABEL_48:

        if (v44 > 0)
        {
          goto LABEL_73;
        }
      }
    }

    if (v45)
    {
LABEL_32:
      sub_10014B4B8();
    }

    else
    {
      v48 = v83 & 0xFFFFFFFFFFFFFF8;
LABEL_31:
      v49 = *(v48 + 16);
    }

    v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v48 = v83 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_34;
  }

  if (!sub_10000E8DC(_swiftEmptyArrayStorage))
  {
    goto LABEL_68;
  }

  sub_100002EEC();

  sub_10006622C(v72);
}

void sub_10013DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  a19 = v22;
  a20 = v23;
  sub_10002A104();
  v24 = type metadata accessor for RequestPriority();
  v25 = sub_100002BDC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_100009C24();
  v59 = v30;
  sub_100002F1C();
  __chkstk_darwin(v31);
  v32 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v33 = sub_100002F04(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100002B8C();
  v56 = v37 - v36;
  v38 = *v20 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  sub_1000125C0();
  swift_beginAccess();
  v39 = *(v38 + 16);
  v67 = *v38;
  v68 = v39;
  v69 = *(v38 + 32);
  v70 = *(&v67 + 1);
  v71 = v39;
  a10 = v69;
  sub_10001E72C(&v70, v66, &qword_1001BC468, &qword_100172C40);
  sub_10001E72C(&v71, v66, &qword_1001BC468, &qword_100172C40);
  sub_10001E72C(&v71 + 8, v66, &qword_1001BC470, &unk_100172C48);
  sub_10001E72C(&a10, v66, &qword_1001B8F40, &unk_10016FB20);
  v40 = sub_10006CF3C();
  v61 = sub_10000E8DC(v40);
  v41 = 0;
  v58 = v40 & 0xC000000000000001;
  v60 = v40;
  v57 = v40 & 0xFFFFFFFFFFFFFF8;
  v55 = enum case for RequestPriority.foreground(_:);
  v54 = (v27 + 104);
  v42 = (v27 + 8);
  while (1)
  {
    v43 = v41;
    if (v61 == v41)
    {
      goto LABEL_15;
    }

    if (v58)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      sub_100016724();
    }

    else
    {
      v21 = v59;
      if (v41 >= *(v57 + 16))
      {
        goto LABEL_17;
      }

      v44 = *(v60 + 8 * v41 + 32);
    }

    if (__OFADD__(v43, 1))
    {
      break;
    }

    v45 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
    sub_100004CBC();
    swift_beginAccess();
    sub_100005DD8();
    sub_10005CAA8(v44 + v45, v56);
    InferenceProviderRequestConfiguration.requestPriority.getter();
    sub_1000115C8();
    sub_10000D300();
    (*v54)(v21, v55, v24);
    sub_10005FAF0(&qword_1001BCD38, &type metadata accessor for RequestPriority);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v21 = v65;
    if (v64 == v62 && v65 == v63)
    {

      v51 = *v42;
      v52 = sub_100005FEC();
      v51(v52);
      v53 = sub_1000DAE34();
      v51(v53);

LABEL_15:
      sub_10000ED84(&v70, &qword_1001BC468);
      sub_10000ED84(&v71, &qword_1001BC468);
      sub_10000ED84(&v71 + 8, &qword_1001BC470);
      sub_10000ED84(&a10, &qword_1001B8F40);

      sub_100005874();
      return;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v48 = *v42;
    v49 = sub_100005FEC();
    v48(v49);
    v50 = sub_1000DAE34();
    v48(v50);

    v41 = v43 + 1;
    if (v47)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_10013E450(uint64_t a1, uint64_t a2)
{
  v113 = type metadata accessor for ModelCatalogAsset(0);
  v4 = *(*(v113 - 1) + 64);
  v5 = __chkstk_darwin(v113);
  v7 = (&v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v10 = (&v106 - v9);
  __chkstk_darwin(v8);
  v13 = &v106 - v12;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v112 = v11;
  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a2 + 56);
  v18 = (v15 + 63) >> 6;
  v120 = a1 + 56;

  v20 = 0;
  if (v17)
  {
LABEL_6:
    v21 = v20;
LABEL_10:
    v22 = *(a2 + 48);
    v119 = *(v112 + 72);
    sub_10005CAA8(v22 + v119 * (__clz(__rbit64(v17)) | (v21 << 6)), v13);
    sub_10000D4B4(v13, v10);
    if (!*(a1 + 16))
    {
      goto LABEL_118;
    }

    v110 = v21;
    v23 = *(a1 + 40);
    Hasher.init(_seed:)();
    sub_10000C228(v124);
    v24 = Hasher._finalize()();
    v25 = -1 << *(a1 + 32);
    v26 = v24 & ~v25;
    if (((*(v120 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_112;
    }

    v107 = v18;
    v108 = v14;
    v109 = v13;
    v111 = a2;
    v106 = (v17 - 1) & v17;
    v117 = ~v25;
    v118 = a1;
    v27 = *v10;
    v122 = v10[1];
    v123 = v27;
    v121 = v10;
    while (1)
    {
      sub_10005CAA8(*(a1 + 48) + v26 * v119, v7);
      v28 = *v7 == v123 && v7[1] == v122;
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_111;
      }

      v29 = v7[2];
      v30 = v121[2];
      v31 = *(v29 + 16);
      if (v31 != *(v30 + 16))
      {
        goto LABEL_111;
      }

      if (v31)
      {
        v32 = v29 == v30;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
LABEL_31:
        v36 = v7[3];
        v37 = v121[3];
        v38 = *(v36 + 16);
        if (v38 == *(v37 + 16))
        {
          if (v38)
          {
            v39 = v36 == v37;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
LABEL_37:
            v40 = v7[4];
            v41 = v121[4];
            v42 = *(v40 + 16);
            if (v42 == *(v41 + 16))
            {
              if (v42)
              {
                v43 = v40 == v41;
              }

              else
              {
                v43 = 1;
              }

              if (v43)
              {
LABEL_43:
                v44 = v113[8];
                if ((static AssetCost.== infix(_:_:)() & 1) != 0 && *(v7 + v113[9]) == *(v121 + v113[9]) && *(v7 + v113[10]) == *(v121 + v113[10]) && *(v7 + v113[11]) == *(v121 + v113[11]) && *(v7 + v113[12]) == *(v121 + v113[12]) && *(v7 + v113[13]) == *(v121 + v113[13]))
                {
                  v45 = v113[14];
                  v46 = *(v7 + v45);
                  v47 = *(v121 + v45);
                  v48 = *(v46 + 16);
                  if (v48 == *(v47 + 16))
                  {
                    if (!v48 || v46 == v47)
                    {
LABEL_59:
                      if (*(v7 + v113[15]) == *(v121 + v113[15]))
                      {
                        sub_10000D300();
                        v10 = v121;
                        result = sub_10000D300();
                        v20 = v110;
                        a2 = v111;
                        a1 = v118;
                        v13 = v109;
                        v14 = v108;
                        v18 = v107;
                        v17 = v106;
                        if (!v106)
                        {
                          break;
                        }

                        goto LABEL_6;
                      }
                    }

                    else
                    {
                      v49 = (v46 + 40);
                      v50 = (v47 + 40);
                      while (1)
                      {
                        v51 = *(v49 - 1) == *(v50 - 1) && *v49 == *v50;
                        if (!v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          break;
                        }

                        v49 += 2;
                        v50 += 2;
                        if (!--v48)
                        {
                          goto LABEL_59;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                result = *(v40 + 32);
                v81 = *(v40 + 48);
                v82 = *(v40 + 56);
                v83 = *(v40 + 64);
                v84 = *(v41 + 48);
                v85 = *(v41 + 56);
                v86 = *(v41 + 64);
                v87 = result == *(v41 + 32) && *(v40 + 40) == *(v41 + 40);
                v114 = *(v40 + 16);
                if (!v87)
                {
                  v88 = v41;
                  v89 = v40;
                  v90 = v86;
                  v91 = v83;
                  v92 = v81;
                  v93 = v84;
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v84 = v93;
                  v81 = v92;
                  v83 = v91;
                  v86 = v90;
                  v40 = v89;
                  v41 = v88;
                  v42 = v114;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_111;
                  }
                }

                v94 = 0;
                v95 = 1;
                if (v82)
                {
LABEL_92:
                  if (v85)
                  {
                    if (v81 != v84 || v82 != v85)
                    {
                      v97 = v83;
                      result = _stringCompareWithSmolCheck(_:_:expecting:)();
                      if (result & 1) == 0 || ((v86 ^ v97))
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_102;
                    }

                    goto LABEL_101;
                  }
                }

                else
                {
                  while (!v85)
                  {
LABEL_101:
                    if ((v86 ^ v83))
                    {
                      break;
                    }

LABEL_102:
                    if (v42 == v95)
                    {
                      goto LABEL_43;
                    }

                    if (v95 >= v42)
                    {
                      goto LABEL_122;
                    }

                    result = *(v40 + v94 + 72);
                    v81 = *(v40 + v94 + 88);
                    v82 = *(v40 + v94 + 96);
                    v83 = *(v40 + v94 + 104);
                    v84 = *(v41 + v94 + 88);
                    v85 = *(v41 + v94 + 96);
                    v86 = *(v41 + v94 + 104);
                    if (result != *(v41 + v94 + 72) || *(v40 + v94 + 80) != *(v41 + v94 + 80))
                    {
                      v115 = v94;
                      v116 = v95;
                      v99 = v41;
                      v100 = v40;
                      v101 = v86;
                      v102 = v83;
                      v103 = v85;
                      v104 = v81;
                      v105 = v84;
                      result = _stringCompareWithSmolCheck(_:_:expecting:)();
                      v84 = v105;
                      v81 = v104;
                      v85 = v103;
                      v83 = v102;
                      v86 = v101;
                      v40 = v100;
                      v41 = v99;
                      v42 = v114;
                      v94 = v115;
                      v95 = v116;
                      if ((result & 1) == 0)
                      {
                        break;
                      }
                    }

                    v94 += 40;
                    ++v95;
                    if (v82)
                    {
                      goto LABEL_92;
                    }
                  }
                }
              }
            }
          }

          else
          {
            result = *(v36 + 32);
            v52 = *(v36 + 48);
            v53 = *(v36 + 56);
            v54 = *(v36 + 64);
            v55 = *(v37 + 48);
            v56 = *(v37 + 56);
            v57 = *(v37 + 64);
            v58 = result == *(v37 + 32) && *(v36 + 40) == *(v37 + 40);
            v115 = *(v36 + 16);
            if (!v58)
            {
              v59 = v37;
              v60 = v36;
              v61 = v57;
              v62 = v7;
              v63 = v54;
              v64 = v26;
              v65 = v52;
              v66 = v55;
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              v55 = v66;
              v52 = v65;
              v26 = v64;
              v54 = v63;
              v7 = v62;
              v57 = v61;
              v36 = v60;
              v37 = v59;
              v38 = v115;
              if ((result & 1) == 0)
              {
                goto LABEL_111;
              }
            }

            v67 = 0;
            v68 = 1;
            v114 = v37;
            if (v53)
            {
LABEL_67:
              if (v56)
              {
                if (v52 != v55 || v53 != v56)
                {
                  v70 = v54;
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  if (result & 1) == 0 || ((v57 ^ v70))
                  {
                    goto LABEL_111;
                  }

                  goto LABEL_77;
                }

                goto LABEL_76;
              }
            }

            else
            {
              while (!v56)
              {
LABEL_76:
                if ((v57 ^ v54))
                {
                  break;
                }

LABEL_77:
                if (v38 == v68)
                {
                  goto LABEL_37;
                }

                if (v68 >= v38)
                {
                  __break(1u);
                  goto LABEL_121;
                }

                result = *(v36 + v67 + 72);
                v52 = *(v36 + v67 + 88);
                v53 = *(v36 + v67 + 96);
                v54 = *(v36 + v67 + 104);
                v55 = *(v37 + v67 + 88);
                v56 = *(v37 + v67 + 96);
                v57 = *(v37 + v67 + 104);
                if (result != *(v37 + v67 + 72) || *(v36 + v67 + 80) != *(v37 + v67 + 80))
                {
                  v116 = v67;
                  v72 = v36;
                  v73 = v57;
                  v74 = v7;
                  v75 = v54;
                  v76 = v68;
                  v77 = v56;
                  v78 = v26;
                  v79 = v52;
                  v80 = v55;
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v55 = v80;
                  v52 = v79;
                  v26 = v78;
                  v56 = v77;
                  v68 = v76;
                  v54 = v75;
                  v7 = v74;
                  v57 = v73;
                  v36 = v72;
                  v37 = v114;
                  v38 = v115;
                  v67 = v116;
                  if ((result & 1) == 0)
                  {
                    break;
                  }
                }

                v67 += 40;
                ++v68;
                if (v53)
                {
                  goto LABEL_67;
                }
              }
            }
          }
        }
      }

      else
      {
        v33 = (v29 + 40);
        v34 = (v30 + 40);
        while (1)
        {
          if (!v31)
          {
            __break(1u);
LABEL_118:
            sub_10000D300();

            return 0;
          }

          v35 = *(v33 - 1) == *(v34 - 1) && *v33 == *v34;
          if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v33 += 2;
          v34 += 2;
          if (!--v31)
          {
            goto LABEL_31;
          }
        }
      }

LABEL_111:
      sub_10000D300();
      a1 = v118;
      v26 = (v26 + 1) & v117;
      if (((*(v120 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
LABEL_112:

        sub_10000D300();
        return 0;
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return 1;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      goto LABEL_10;
    }
  }

LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  __break(1u);
  return result;
}

void sub_10013ED10()
{
  sub_1000055B0();
  v1 = v0;
  v3 = v2;
  v4 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002FD0(v8, qword_1001BD750);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    sub_10000A05C();
    v11 = swift_slowAlloc();
    sub_1000033D0();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    sub_10012880C(v3);
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_100006194();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_100004A3C(v13, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Foreground requests are blocked from running; will preemptively cancel background requests %s", v11, 0xCu);
    sub_10005D588(v12);
    sub_100002BD0();

    sub_100007C2C();
  }

  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v17, v18, v19, v20);
  sub_100003CA4();
  v23 = sub_10005FAF0(v21, v22);
  v24 = swift_allocObject();
  v24[2] = v1;
  v24[3] = v23;
  v24[4] = v3;
  v24[5] = v1;
  swift_retain_n();

  sub_1000652FC();

  sub_100002EEC();
}

uint64_t sub_10013EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;

  return _swift_task_switch(sub_10013F000, a5, 0);
}

uint64_t sub_10013F000()
{
  sub_100003884();
  v1 = v0[11];
  type metadata accessor for _OSActivity();
  v0[12] = swift_initStackObject();
  v0[13] = sub_10001B160("Cancelling preempted background requests", 40, 2);

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10013F128;
  v3 = v0[11];
  v4 = sub_1000031B8(v0[10]);

  return v5(v4);
}

uint64_t sub_10013F128()
{
  sub_100002BAC();
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 88);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000071A8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10013F25C()
{
  sub_100002BAC();
  v1 = *(v0 + 104);
  sub_100002D24();
  swift_beginAccess();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  sub_100001F00();

  return v2();
}

uint64_t sub_10013F304(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = type metadata accessor for RequestCancellationReason();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v2[6] = v7;
  v8 = *(v7 - 8);
  v2[7] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a1;
  v2[8] = v10;
  v2[9] = v11;

  return _swift_task_switch(sub_10013F434, 0, 0);
}

uint64_t sub_10013F434()
{
  sub_100005F88();
  sub_1000033DC();
  if (qword_1001B8AB8 != -1)
  {
    sub_100005344();
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001BD750);
  sub_10000D0E8();

  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    sub_10000A05C();
    swift_slowAlloc();
    sub_100003890();
    sub_10001D338();
    *v1 = 136315138;
    sub_10004AC80();
    sub_100005070();
    sub_1000082D4(v8, v9, v10);
    sub_1000156D8();
    v11 = sub_10000592C();
    v12(v11);
    v13 = sub_100004CB0();
    sub_100004A3C(v13, v14, v15);
    sub_100005974();

    *(v1 + 4) = v4;
    sub_100035348(&_mh_execute_header, v16, v17, "Cancelling request %s due to pending foreground request(s)");
    sub_100002068();
    sub_100002BD0();
  }

  (*(v0[4] + 104))(v0[5], enum case for RequestCancellationReason.requestPreemption(_:), v0[3]);
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_10013F5F8;
  v19 = v0[5];
  v20 = v0[2];
  sub_1000031B8(v0[9]);
  sub_1000062BC();

  return sub_10013C4DC();
}

uint64_t sub_10013F5F8()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = v1[10];
  v3 = v1[8];
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];
  v7 = *v0;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = sub_1000060A4();
  v11(v10);

  sub_100001F00();

  return v12();
}

uint64_t sub_10013F754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10013F820, 0, 0);
}

uint64_t sub_10013F820()
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
  v9[1] = sub_10014AFDC;
  v11 = sub_10000A9C8(*(v0 + 40));

  return v13(v11);
}

uint64_t sub_10013F948(uint64_t a1, uint64_t (*a2)(void))
{
  result = sub_10014B338();
  *v2 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v6 = *(v3 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_10013F9E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_10014B338();
  *v1 = v2;
  if (!result)
  {
    result = a1(result, *(v2 + 16) + 1, 1, v2);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10013FA84(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_10013FB2C()
{
  sub_100004D68();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100012660();
  if (v7 == v8)
  {
LABEL_7:
    sub_100006184(v6);
    if (v3)
    {
      sub_100065020(&qword_1001BDBD0, &qword_100174140);
      v9 = sub_10014B308();
      j__malloc_size(v9);
      sub_100057A74();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_10001997C();
        sub_100026AFC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  sub_100005FE0();
  if (!v7)
  {
    sub_10000A210();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10013FC18(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_100012660();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_100065020(a5, a6);
      v16 = sub_10014B308();
      j__malloc_size(v16);
      sub_100057A74();
      v16[2] = v14;
      v16[3] = v17;
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_100005FE0();
  if (!v12)
  {
    sub_10000A210();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_10013FCF8(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_10000C348(v9, a2, &qword_1001B9108, &qword_10016FD80, &type metadata accessor for FilePath);
  v11 = *(type metadata accessor for FilePath() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_100070884(a4 + v12, v9, &v10[v12]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10013FE08(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100065020(&qword_1001BDC18, &unk_100174240);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100026AFC((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100065020(&unk_1001BBEC8, "py");
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10013FF18()
{
  sub_100004D68();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100012660();
  if (v6 == v7)
  {
LABEL_7:
    sub_100006184(v5);
    if (v2)
    {
      sub_100065020(&qword_1001BAA20, &unk_1001715C0);
      v8 = sub_100048628();
      v9 = j__malloc_size(v8);
      sub_10014B01C(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10001997C();
        sub_100071588(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100065020(&qword_1001BA8F8, "ޅ");
    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100005FE0();
  if (!v6)
  {
    sub_10000A210();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10013FFE4()
{
  sub_1000144A8();
  if (v3)
  {
    sub_100018970();
    if (v5 != v6)
    {
      sub_10014B39C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10000C348(*(v0 + 16), v4, &qword_1001B90B8, &qword_10016FD30, &type metadata accessor for ClientData);
  sub_1000494E8();
  v7 = type metadata accessor for ClientData();
  sub_1000191C8(v7);
  v9 = *(v8 + 80);
  sub_10000657C();
  if (v1)
  {
    v11 = sub_100005FBC(v10);
    sub_1000708E4(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

char *sub_1001400B4(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100065020(&qword_1001BDC10, &qword_100174220);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10007091C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100065020(&qword_1001BDC08, &qword_100174218);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1001401CC()
{
  sub_1000144A8();
  if (v3)
  {
    sub_100018970();
    if (v5 != v6)
    {
      sub_10014B39C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10000C348(*(v0 + 16), v4, &qword_1001BDC20, &qword_100174258, type metadata accessor for RemoteManager.InternalRemoteRequestState);
  v7 = sub_1000494E8();
  v8 = type metadata accessor for RemoteManager.InternalRemoteRequestState(v7);
  sub_1000191C8(v8);
  v10 = *(v9 + 80);
  sub_10000657C();
  if (v1)
  {
    v12 = sub_100005FBC(v11);
    sub_100070944(v12, v13, v14);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

void sub_10014029C()
{
  sub_1000144A8();
  if (v2)
  {
    sub_100018970();
    if (v3 != v4)
    {
      sub_10014B39C();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  v5 = *(v0 + 16);
  sub_10004D14C();
  sub_10000C348(v5, v6, v7, v8, v9);
  v10 = sub_1000494E8();
  v11 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(v10);
  sub_1000191C8(v11);
  v13 = *(v12 + 80);
  sub_10000657C();
  if (v1)
  {
    v15 = sub_100005FBC(v14);
    sub_10007095C(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

void *sub_10014035C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1001405B4(v8, v7);
  v10 = *(sub_100065020(&qword_1001B90F8, &qword_10016FD70) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100070974(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_100140454()
{
  sub_100004D68();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100012660();
  if (v6 == v7)
  {
LABEL_7:
    sub_100006184(v5);
    if (v2)
    {
      sub_100065020(&qword_1001BCB60, &qword_100173320);
      v8 = sub_100048628();
      v9 = j__malloc_size(v8);
      sub_10014B01C(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10001997C();
        sub_100071588(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100065020(&qword_1001BCB40, &qword_1001732E8);
    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100005FE0();
  if (!v6)
  {
    sub_10000A210();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1001405B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100065020(&qword_1001BDC40, &qword_1001742D0);
  v4 = *(sub_100065020(&qword_1001B90F8, &qword_10016FD70) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001406BC(uint64_t a1)
{
  v4 = sub_10000C680(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001409E4(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10014B464();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100140760(uint64_t a1)
{
  result = sub_10000C680(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100140B18(result, 1, sub_10013FCF8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for FilePath();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100140864(unint64_t a1)
{
  v2 = sub_10001297C(a1);
  v3 = sub_10001297C(*v1);
  v4 = __OFADD__(v3, v2);
  result = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_100140A78(result);
  v6 = *v1;
  v7 = *v1 & 0xFFFFFFFFFFFFFF8;
  v8 = *(v7 + 0x10);
  v9 = *(v7 + 0x18) >> 1;
  sub_1001491E0();
  v11 = v10;

  if (v11 < v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v11 < 1)
  {
LABEL_6:
    *v1 = v6;
    return result;
  }

  v12 = *(v7 + 16);
  v4 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v4)
  {
    *(v7 + 16) = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100140910(uint64_t a1)
{
  v4 = sub_10000C680(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100140B18(v4, 1, sub_10013FF18);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_10014B464();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100065020(&qword_1001BA8F8, "ޅ");
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001409E4(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10013FC18(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_1001B9090, &unk_100172C70, &type metadata for String, sub_100026AFC);
    *v2 = v8;
  }
}

uint64_t sub_100140A78(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100140B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = sub_10014B338();
  *v3 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v8 = *(v4 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_100140B88()
{
  type metadata accessor for CustomAssetConfiguration();
  sub_10005FAF0(&qword_1001BB458, &type metadata accessor for CustomAssetConfiguration);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100140C18(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    v2 = *(sub_100065020(&qword_1001B8F48, &qword_10016FB30) - 8);
    v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  }

  __break(1u);
  return result;
}

void sub_100140CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) < a1)
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    v3 = a3(0);
    sub_100002F04(v3);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

    sub_100036E68();
    return;
  }

  __break(1u);
}

void sub_100140D50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < a1)
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {

    sub_100036E68();
    return;
  }

  __break(1u);
}

void *sub_100140DC4(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      v7 = v6;
      v3 = sub_100011294(v6, 0);
      a2(v3 + 4, v7, a1);
      v9 = v8;

      if (v9 == v7)
      {
        return v3;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100140E60(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v11 = a1;
  v10[2] = v4;
  v10[3] = v3;
  v10[4] = &v11;
  sub_100060948(sub_100060AE8, v10, v3);
  v7 = v6;
  if (v6)
  {
    sub_100141540(a1, v5);
    v8 = *(v1[1] + 16) - 1;
  }

  return v7 & 1;
}

uint64_t sub_100140EF4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (a2)
  {
    return sub_100143248(a1, a3 + 32, v4, (a2 + 16));
  }

  else
  {
    return sub_100142974(a1, a3 + 32, v4);
  }
}

uint64_t sub_100140F44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  (*(v7 + 16))(&v21 - v9, a1, v6);
  v11 = v3 + 1;
  v12 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v12 + 16);
    sub_100070A50();
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_100070A50();
    v12 = *v11;
  }

  *(v12 + 16) = v15 + 1;
  result = (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v10, v6);
  v3[1] = v12;
  v17 = *v3;
  if (!*v3)
  {
    if (v15 <= 0xE)
    {
      return result;
    }

    v19 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  v18 = *(v17 + 16);
  if (static _HashTable.maximumCapacity(forScale:)() <= v15)
  {
    v19 = *(v17 + 24) & 0x3FLL;
    if (v15 <= 0xE && !v19)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    v20 = static _HashTable.scale(forCapacity:)();
    return sub_100141A44(v20, v19, sub_100141B90, sub_100141A98);
  }

  result = sub_100141958();
  if (*v3)
  {
    return sub_1001419B0((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void sub_100141198()
{
  sub_1000055B0();
  v1 = v0;
  sub_100005B00();
  v2 = type metadata accessor for UUID();
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v8 = *(v5 + 16);
  v9 = sub_100003D88();
  v10(v9);
  v11 = v0 + 1;
  v12 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v12 + 16);
    sub_1000080E4();
    sub_100070A90();
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_100070A90();
    v12 = *v11;
  }

  v16 = sub_100026868();
  v17(v16);
  v1[1] = v12;
  v18 = *v1;
  if (!*v1)
  {
    if (v15 <= 0xE)
    {
      goto LABEL_15;
    }

    v20 = 0;
LABEL_14:
    v21 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v21, v20, sub_100141D98, sub_100141A98);
    goto LABEL_15;
  }

  sub_100004CBC();
  swift_beginAccess();
  v19 = *(v18 + 16);
  if (static _HashTable.maximumCapacity(forScale:)() <= v15)
  {
    v20 = *(v18 + 24) & 0x3FLL;
    if (v15 <= 0xE && !v20)
    {

      *v1 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100141958();
  if (*v1)
  {
    sub_100009EB0(*v1);
LABEL_15:
    sub_100002EEC();
    return;
  }

  __break(1u);
}

void sub_100141374()
{
  sub_1000055B0();
  v1 = v0;
  sub_100005B00();
  v2 = type metadata accessor for InferenceProviderDescriptor();
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002B8C();
  v8 = *(v5 + 16);
  v9 = sub_100003D88();
  v10(v9);
  v11 = v0 + 1;
  v12 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v12 + 16);
    sub_1000080E4();
    sub_100021200();
    v12 = *v11;
  }

  v15 = *(v12 + 16);
  if (v15 >= *(v12 + 24) >> 1)
  {
    sub_100021200();
    v12 = *v11;
  }

  v16 = sub_100026868();
  v17(v16);
  v1[1] = v12;
  v18 = *v1;
  if (!*v1)
  {
    if (v15 <= 0xE)
    {
      goto LABEL_15;
    }

    v20 = 0;
LABEL_14:
    static _HashTable.scale(forCapacity:)();
    sub_100012E74();
    sub_100141A44(v21, v20, v22, sub_100141A98);
    goto LABEL_15;
  }

  sub_100004CBC();
  swift_beginAccess();
  v19 = *(v18 + 16);
  if (static _HashTable.maximumCapacity(forScale:)() <= v15)
  {
    v20 = *(v18 + 24) & 0x3FLL;
    if (v15 <= 0xE && !v20)
    {

      *v1 = 0;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  sub_100141958();
  if (*v1)
  {
    sub_100009EB0(*v1);
LABEL_15:
    sub_100002EEC();
    return;
  }

  __break(1u);
}

uint64_t sub_100141540(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v5 = *(v2[1] + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v7 = *v2;
  v8 = *(v2[1] + 16);
  if (*v3)
  {
    swift_beginAccess();
    v9 = *(v7 + 16);
    if (static _HashTable.maximumCapacity(forScale:)() < v8)
    {
      v10 = *(v7 + 24) & 0x3FLL;
      if (v8 <= 0xF && v10 == 0)
      {

        *v3 = 0;
        return result;
      }

      goto LABEL_11;
    }

    result = sub_100141958();
    if (*v3)
    {
      return sub_1001419B0((*v3 + 16), *v3 + 32, a2, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else if (v8 > 0xF)
  {
    v10 = 0;
LABEL_11:
    v12 = static _HashTable.scale(forCapacity:)();
    return sub_100141A44(v12, v10, sub_100142420, sub_100141B14);
  }

  return result;
}

void sub_100141688(int a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100070F50(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_100070F50(v10 > 1, v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  *(v7 + 4 * v11 + 32) = a1;
  v3[1] = v7;
  v12 = *v3;
  if (!*v3)
  {
    if (v11 <= 0xE)
    {
      return;
    }

    v14 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  v13 = *(v12 + 16);
  if (static _HashTable.maximumCapacity(forScale:)() <= v11)
  {
    v14 = *(v12 + 24) & 0x3FLL;
    if (v11 <= 0xE && v14 == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v16 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v16, v14, sub_100142184, sub_100141A98);
    return;
  }

  sub_100141958();
  if (*v3)
  {
    sub_1001419B0((*v3 + 16), *v3 + 32, a2, v3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_100141808(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(sub_100065020(&qword_1001B8F48, &qword_10016FB30) - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_1001418B8(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  sub_100002F04(v6);
  result = a1(&v9, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100141958()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = _HashTable.copy()();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1001419B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return _HashTable.UnsafeHandle.subscript.setter();
}

uint64_t sub_100141A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v6 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v7 = a4(v4[1], a2, 0, v6, a3);
  v8 = *v4;

  *v4 = v7;
  return result;
}

uint64_t sub_100141A98(uint64_t a1)
{
  v4 = sub_10014B0BC(a1);
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v5 <= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v6 >= 5)
  {
    _HashTable.init(scale:reservedScale:)();
    v7 = sub_10014B408();
    v1(v7);
  }

  return 0;
}

uint64_t sub_100141B14(uint64_t a1)
{
  v4 = sub_10014B0BC(a1);
  if (v4 <= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (v5 <= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v6 >= 5)
  {
    _HashTable.init(scale:reservedScale:)();
    v7 = sub_10014B408();
    sub_100142258(v7, v8, v9, v1);
  }

  return 0;
}

uint64_t sub_100141B90(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  v30 = *(a1 + 16);
  if (v30)
  {
    v12 = 0;
    v28 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v26 = *(v13 + 56);
    v27 = v14;
    v29 = v13;
    v15 = (v13 - 8);
    while (1)
    {
      v27(v11, v28 + v26 * v12, v6);
      v16 = *a2;
      sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = 1 << *a2;
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v18)
      {
        break;
      }

      v20 = v19 & result;
      v21 = _HashTable.UnsafeHandle._startIterator(bucket:)();
      v23 = v22;
      v25 = v24;
      (*v15)(v11, v6);
      v31 = a2;
      v32 = a3;
      v33 = v20;
      v34 = v21;
      v35 = v23;
      v36 = v25;
      v37 = 0;
      while (v34)
      {
        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v12 == v30)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100141D98(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  result = type metadata accessor for UUID();
  v6 = *(result - 8);
  v31 = *(a1 + 16);
  if (v31)
  {
    v7 = result;
    v8 = 0;
    v29 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v6 + 16);
    v10 = *(v6 + 72);
    v27 = *(v6 + 64);
    v28 = v9;
    v26 = v10;
    v30 = v6 + 16;
    v25 = (v6 + 8);
    while (1)
    {
      __chkstk_darwin(result);
      v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28(v12, v29 + v26 * v8, v7);
      v13 = *a2;
      sub_10005F2BC(&qword_1001B8C00);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = 1 << *a2;
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        break;
      }

      v17 = v16 & result;
      v18 = v32;
      v19 = _HashTable.UnsafeHandle._startIterator(bucket:)();
      v21 = v20;
      v23 = v22;
      (*v25)(v12, v7);
      v33 = a2;
      v34 = v18;
      v35 = v17;
      v36 = v19;
      v37 = v21;
      v38 = v23;
      v39 = 0;
      while (v36)
      {
        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v8 == v31)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100141F80(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v7 = *(*(v6 - 8) + 64);
  result = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  if (v31)
  {
    v12 = 0;
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = *(v9 + 16);
    v14 = v9 + 16;
    v28 = a1 + v13;
    v29 = v15;
    v27 = *(v14 + 56);
    v30 = v14;
    v16 = (v14 - 8);
    while (1)
    {
      v29(v11, v28 + v27 * v12, v6);
      v17 = *a2;
      sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = 1 << *a2;
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        break;
      }

      v21 = v20 & result;
      v22 = _HashTable.UnsafeHandle._startIterator(bucket:)();
      v24 = v23;
      v26 = v25;
      (*v16)(v11, v6);
      v32 = a2;
      v33 = a3;
      v34 = v21;
      v35 = v22;
      v36 = v24;
      v37 = v26;
      v38 = 0;
      while (v35)
      {
        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v12 == v31)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100142184(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    while (1)
    {
      v6 = *(v5 + 4 * v4);
      v7 = *a2;
      result = static Hasher._hash(seed:bytes:count:)();
      if (__OFSUB__(1 << v7, 1))
      {
        break;
      }

      if (_HashTable.UnsafeHandle._startIterator(bucket:)())
      {
        while (1)
        {
          _HashTable.BucketIterator.advance()();
        }
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (++v4 == v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_1001422A0(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v13 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v13 + 40 * v4;
        v6 = *v5;
        v7 = *(v5 + 8);
        v8 = *(v5 + 16);
        v9 = *(v5 + 24);
        v10 = *(v5 + 32);
        v11 = *a3;
        Hasher.init(_seed:)();

        String.hash(into:)();
        if (v9)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v10);
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v12)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v4 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100142420(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v9 + 8 * v5);
        v7 = *a3;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005F2BC(&qword_1001B8C00);

        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100142578(Swift::Int result, uint64_t a2, uint64_t *a3)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v9 + 8 * v5);
        v7 = *a3;
        Hasher.init(_seed:)();

        sub_10001214C();
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100142698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    (*(v6 + 16))(v9, a2 + *(v6 + 72) * i, v5);
    sub_1000082D4(&qword_1001B9588, &qword_1001B8F48, &qword_10016FB30);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v9, v5);
    if (v11)
    {
      break;
    }
  }

  return i;
}

void sub_100142818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000055B0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  for (i = 0; v23 != i; ++i)
  {
    v27 = type metadata accessor for UUID();
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    __chkstk_darwin(v27);
    (*(v28 + 16))(&a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + *(v31 + 72) * i, v27);
    sub_10005F2BC(&qword_1001B94A8);
    sub_100005FEC();
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = *(v28 + 8);
    v34 = sub_100003D88();
    v35(v34);
    if (v32)
    {
      break;
    }
  }

  sub_100002EEC();
}

uint64_t sub_100142974(int a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    if (*(a2 + 4 * i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1001429AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a2;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *a4;
  sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v12 = v20;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    if ((v21 & 1) == 0)
    {
      do
      {
        (*(v6 + 16))(v9, v15 + *(v6 + 72) * v12, v5);
        sub_1000082D4(&qword_1001B9588, &qword_1001B8F48, &qword_10016FB30);
        v13 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v6 + 8))(v9, v5);
        if (v13)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v12 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v12;
  }

  return result;
}

void sub_100142BF4()
{
  sub_1000055B0();
  v1 = v0;
  v16[0] = v2;
  v3 = *v0;
  v4 = type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = *v1;
  sub_10000D128();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v7 = v18;
    sub_10014B1A4(v17);
    if ((v19 & 1) == 0)
    {
      do
      {
        v9 = *(v4 - 8);
        v10 = *(v9 + 64);
        __chkstk_darwin(v8);
        v12 = v16 - v11;
        (*(v9 + 16))(v16 - v11, v16[0] + *(v13 + 72) * v7, v4);
        sub_10005F2BC(&qword_1001B94A8);
        v14 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v9 + 8))(v12, v4);
        if (v14)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        sub_1000192C0();
        v8 = _HashTable.BucketIterator.currentValue.getter();
        v7 = v8;
      }

      while ((v15 & 1) == 0);
    }

    sub_100002EEC();
  }
}

void sub_100142DCC()
{
  sub_1000055B0();
  v1 = v0;
  v25 = v2;
  v3 = type metadata accessor for InferenceProviderDescriptor();
  v4 = sub_100002BDC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100002B8C();
  v11 = v10 - v9;
  v12 = *v1;
  sub_1000079A4();
  sub_10005FAF0(v13, v14);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = *v1;
  sub_10000D128();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v17 = v27;
    v18 = sub_10014B1A4(v26);
    if ((v28 & 1) == 0)
    {
      do
      {
        (*(v6 + 16))(v11, v25 + *(v6 + 72) * v17, v3, v18);
        sub_1000079A4();
        sub_10005FAF0(&qword_1001BBE20, v19);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        v21 = *(v6 + 8);
        v22 = sub_100005FEC();
        v23(v22);
        if (v20)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        sub_1000192C0();
        v17 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v24 & 1) == 0);
    }

    sub_100002EEC();
  }
}

void sub_100142F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000135C4();
  v8 = *v7;
  Hasher.init(_seed:)();
  AssetInferenceProvider.hash(into:)();
  Hasher._finalize()();
  v9 = *a4;
  sub_10000D128();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_10014B498();
    v12 = v58;
    sub_10014B18C(v11, v13, v14, v15, v16, v17, v18, v19, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54, v55, v56, v57);
    if ((v59 & 1) == 0)
    {
      do
      {
        v20 = v4 + 40 * v12;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v23 = *(v20 + 32);
        v24 = *v20 == *v5 && *(v20 + 8) == *(v5 + 8);
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v25 = *(v5 + 24);
          if (v21)
          {
            if (v25)
            {
              v26 = v22 == *(v5 + 16) && v21 == v25;
              if (v26 || (sub_100053C38(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
LABEL_17:
                if (v23 == (*(v5 + 32) & 1))
                {
                  return;
                }
              }
            }
          }

          else if (!v25)
          {
            goto LABEL_17;
          }
        }

        _HashTable.BucketIterator.advance()();
        sub_10014B04C(v27, v28, v29, v30, v31, v32, v33, v34, v37, v39, v41, v43, v45, v47, v49);
        v12 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v35 & 1) == 0);
    }
  }
}

Swift::Int sub_1001430DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8C00);
  dispatch thunk of Hashable.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v8 = v12;
    if ((v13 & 1) == 0)
    {
      do
      {
        v9 = *(a2 + 8 * v8);

        v10 = static UUID.== infix(_:_:)();

        if (v10)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v8 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v11 & 1) == 0);
    }

    return v8;
  }

  return result;
}

uint64_t sub_100143248(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  result = static Hasher._hash(seed:bytes:count:)();
  if (__OFSUB__(1 << v6, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    result = v9;
    if ((v10 & 1) == 0)
    {
      do
      {
        if (*(a2 + 4 * result) == a1)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v8 & 1) == 0);
    }
  }

  return result;
}

void sub_100143334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000135C4();
  v8 = *v7;
  Hasher.init(_seed:)();
  sub_10001214C();
  Hasher._finalize()();
  v9 = *a4;
  sub_10000D128();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_10014B498();
    v12 = v54;
    sub_10014B18C(v11, v13, v14, v15, v16, v17, v18, v19, v32, v34, v36, v38, v40, v42, v44, v46, v47, v48, v49, v50, v51, v52, v53);
    if ((v55 & 1) == 0)
    {
      do
      {
        v20 = type metadata accessor for InferenceProviderAsset(0);
        v21 = *(v4 + 8 * v12);

        sub_100019CE4(v22, v5);
        sub_10014B320();
        if (v20)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        sub_10014B04C(v23, v24, v25, v26, v27, v28, v29, v30, v33, v35, v37, v39, v41, v43, v45);
        v12 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v31 & 1) == 0);
    }
  }
}

unint64_t sub_100143420(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

void sub_100143444()
{
  sub_1000055B0();
  v2 = v1;
  v29 = v3;
  v4 = type metadata accessor for UUID();
  v28 = v0;
  v5 = *v0;
  v6 = *(*v0 + 40);
  sub_10005F2BC(&qword_1001B8C00);
  sub_100012484();
  v31 = v2;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = v5 + 56;
  v30 = v5;
  v8 = *(v5 + 32);
  sub_100011E24();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    if (((*(v7 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v11)) & 1) == 0)
    {
      v20 = v29;
      v21 = 1;
      goto LABEL_9;
    }

    v13 = *(v4 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v9);
    v16 = &v27 - v15;
    v18 = *(v17 + 72) * v12;
    (*(v13 + 16))(&v27 - v15, *(v30 + 48) + v18, v4);
    sub_10005F2BC(&qword_1001B94A8);
    sub_100025DE0();
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v13 + 8))(v16, v4);
    if (v19)
    {
      break;
    }

    v9 = v12 + 1;
  }

  v22 = v28;
  v23 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v22;
  v32 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000869B0();
    v25 = v32;
  }

  v26 = v29;
  (*(v13 + 32))(v29, *(v25 + 48) + v18, v4);
  sub_100143BC8(v12);
  *v22 = v32;
  v20 = v26;
  v21 = 0;
LABEL_9:
  sub_100009BFC(v20, v21, 1, v4);
  sub_100002EEC();
}

void sub_10014366C(Swift::UInt a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = ~(-1 << *(v3 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((*(v3 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v5 & v6)) & 1) == 0)
    {
      break;
    }

    if (*(*(v3 + 48) + 24 * v7) == a1)
    {
      v8 = *v1;
      swift_isUniquelyReferenced_nonNull_native();
      sub_10014B3D4();
      if ((v10 & 1) == 0)
      {
        sub_1000865CC();
        v9 = v24;
      }

      v11 = *(v9 + 48) + 24 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = sub_100143E7C(v7);
      sub_1000279A4(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
      break;
    }

    v5 = v7 + 1;
  }

  sub_100006570();
}

uint64_t sub_100143778(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;

  v6 = __CocoaSet.count.getter();
  v7 = swift_unknownObjectRetain();
  v8 = sub_10007F5C8(v7, v6);
  v33 = v8;
  v9 = *(v8 + 40);
  Hasher.init(_seed:)();

  sub_10001214C();
  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v12 = v10 & v11;
    if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for InferenceProviderAsset(0);
    v13 = *(*(v8 + 48) + 8 * v12);

    v15 = sub_100019CE4(v14, a2);

    if (v15)
    {

      v16 = *(*(v8 + 48) + 8 * v12);
      sub_100036C5C(v12, sub_10001214C, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
      if (sub_100019CE4(a2, v16))
      {
        *v3 = v34;
        return v16;
      }

      __break(1u);
      break;
    }

    v10 = v12 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001438E8()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10007F838(v4, v3);
  v29 = v5;
  v6 = *(v5 + 40);
  Hasher.init(_seed:)();

  sub_100012C1C();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DaemonSession(0);
    v10 = *(*(v5 + 48) + 8 * v9);

    v11 = sub_1000372F8();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_100036C5C(v9, sub_100012C1C, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
      if (sub_1000372F8())
      {
        *v1 = v30;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100143A58()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10007F6F8(v4, v3);
  v29 = v5;
  v6 = *(v5 + 40);
  Hasher.init(_seed:)();

  sub_10005C330();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DaemonRequest(0);
    v10 = *(*(v5 + 48) + 8 * v9);

    v11 = sub_10005C434();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_100036C5C(v9, sub_10005C330, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, vars0, vars8);
      if (sub_10005C434())
      {
        *v1 = v30;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100143BC8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v11 = type metadata accessor for UUID();
      v12 = v11;
      v13 = *(v11 - 8);
      v14 = v13[2];
      v36[2] = v13 + 2;
      v37 = v14;
      v15 = v13[9];
      v36[1] = v13[8];
      v38 = v4;
      v39 = v15;
      v36[0] = v13 + 1;
      v16 = v7;
      do
      {
        __chkstk_darwin(v11);
        v18 = v2;
        v19 = v10;
        v20 = v16;
        v21 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v39 * v6;
        v37(v21, *(v3 + 48) + v39 * v6, v12);
        v23 = v3;
        v24 = *(v3 + 40);
        sub_10005F2BC(&qword_1001B8C00);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v26 = v21;
        v16 = v20;
        v10 = v19;
        v2 = v18;
        v11 = (*v36[0])(v26, v12);
        v27 = v25 & v16;
        if (v18 >= v10)
        {
          if (v27 < v10 || v18 < v27)
          {
LABEL_20:
            v3 = v23;
            v4 = v38;
            goto LABEL_24;
          }
        }

        else if (v27 < v10 && v18 < v27)
        {
          goto LABEL_20;
        }

        v3 = v23;
        v29 = *(v23 + 48);
        v4 = v38;
        v11 = v29 + v39 * v18;
        v30 = v29 + v22 + v39;
        if (v39 * v18 < v22 || v11 >= v30)
        {
          v11 = swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v2 = v6;
          goto LABEL_24;
        }

        v2 = v6;
        if (v39 * v18 != v22)
        {
          v11 = swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v6 = (v6 + 1) & v16;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v33 = *(v3 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v35;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100143E7C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 24 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = v16 + 24 * v2;
            v18 = (v16 + 24 * v6);
            if (v2 != v6 || v17 >= v18 + 24)
            {
              v20 = *v18;
              *(v17 + 16) = *(v18 + 2);
              *v17 = v20;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100144030(int64_t a1, uint64_t a2)
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

    return sub_100144970(a1, sub_1001472B4, &type metadata accessor for InferenceProviderDescriptor, sub_10007089C);
  }

  sub_100004CBC();
  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    result = sub_100141958();
    v10 = *v3;
    if (*v3)
    {
      v11 = *v3;

      result = sub_100144A4C(a2, (v10 + 16), v10 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v12 = v3[1];

        sub_10014581C(a1, a1 + 1, v12, (v10 + 16), v10 + 32);

        return sub_100144970(a1, sub_1001472B4, &type metadata accessor for InferenceProviderDescriptor, sub_10007089C);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (v6 > static _HashTable.minimumCapacity(forScale:)())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_100144970(a1, sub_1001472B4, &type metadata accessor for InferenceProviderDescriptor, sub_10007089C);
  if (v7)
  {
    sub_100004CBC();
    swift_beginAccess();
    v13 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v13 = 0;
  }

  if (v13 || *(*v5 + 16) >= 0x10uLL)
  {
    static _HashTable.scale(forCapacity:)();
    sub_100012E74();
    return sub_100141A44(v14, v13, v15, sub_100141A98);
  }

  else
  {

    *v3 = 0;
  }

  return result;
}

void sub_100144258(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_100144814(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_12:
    sub_100144814(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    if (v11 || *(*v5 + 16) >= 0x10uLL)
    {
      v12 = static _HashTable.scale(forCapacity:)();
      sub_100141A44(v12, v11, sub_100142184, sub_100141A98);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_100141958();
  v9 = *v3;
  if (*v3)
  {
    sub_100145100(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_100145E14(a1, a1 + 1, v10, (v9 + 16));

      sub_100144814(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100144424(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = v3 + 1;
  v8 = *(v3[1] + 16);
  v9 = *v4;
  if (!*v4)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_10014488C(a1, a3);
    return;
  }

  swift_beginAccess();
  if ((*(v9 + 16) & 0x3FLL) == (*(v9 + 24) & 0x3FLL))
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_100141958();
    v11 = *v4;
    if (*v4)
    {
      v12 = *v4;

      sub_100144DA4(a2, (v11 + 16), v11 + 32, v4);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v13 = v4[1];

        sub_100146214(a1, a1 + 1, v13, (v11 + 16), v11 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v8 > static _HashTable.minimumCapacity(forScale:)())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_10014488C(a1, a3);
  if (v9)
  {
    swift_beginAccess();
    v14 = *(v9 + 24) & 0x3FLL;
  }

  else
  {
    v14 = 0;
  }

  if (v14 || *(*v7 + 16) >= 0x10uLL)
  {
    v15 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v15, v14, sub_100141B90, sub_100141A98);
  }

  else
  {

    *v4 = 0;
  }
}

uint64_t sub_1001445EC(int64_t a1, uint64_t a2)
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

    return sub_100144970(a1, sub_100147304, &type metadata accessor for UUID, sub_100070878);
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    result = sub_100141958();
    v10 = *v3;
    if (*v3)
    {
      v11 = *v3;

      result = sub_1001452C4(a2, (v10 + 16), v10 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v12 = v3[1];

        sub_1001467FC(a1, a1 + 1, v12, (v10 + 16), v10 + 32);

        return sub_100144970(a1, sub_100147304, &type metadata accessor for UUID, sub_100070878);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (v6 > static _HashTable.minimumCapacity(forScale:)())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_100144970(a1, sub_100147304, &type metadata accessor for UUID, sub_100070878);
  if (v7)
  {
    swift_beginAccess();
    v13 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v13 = 0;
  }

  if (v13 || *(*v5 + 16) >= 0x10uLL)
  {
    v14 = static _HashTable.scale(forCapacity:)();
    return sub_100141A44(v14, v13, sub_100141D98, sub_100141A98);
  }

  else
  {

    *v3 = 0;
  }

  return result;
}

void sub_100144814(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001472C8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 4 * a1;
    v9 = *(v8 + 32);
    sub_1000708FC((v8 + 36), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_10014488C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001472F0(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    (*(v9 + 32))(a2, v11, v8);
    sub_100070864(v11 + v10, v7 - 1 - a1, v11);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }
}

uint64_t sub_100144970(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(unint64_t, unint64_t, unint64_t))
{
  result = sub_10014B338();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v11 = *(v5 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = a3(0);
    sub_100002C00(v12);
    v14 = *(v13 + 32);
    v13 += 32;
    v15 = *(v13 + 40);
    v16 = v5 + ((*(v13 + 48) + 32) & ~*(v13 + 48)) + v15 * a1;
    v17 = sub_1000071D0();
    v18(v17);
    result = a4(v16 + v15, v11 - 1 - a1, v16);
    *(v5 + 16) = v11 - 1;
    *v4 = v5;
  }

  return result;
}

unint64_t sub_100144A4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v7 = type metadata accessor for InferenceProviderDescriptor();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v31 = a2;
  *(&v31 + 1) = a3;
  *&v32 = a1;
  *(&v32 + 1) = v12;
  *&v33 = v13;
  *(&v33 + 1) = v14;
  v34 = 0;
  _HashTable.BucketIterator.advance()();
  if (*(&v32 + 1))
  {
    v29[0] = a3;
    v15 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v29[1] = v8 + 16;
    while (1)
    {
      v39 = v31;
      v40 = v32;
      v41 = v33;
      v42 = v34;
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v17)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v30 + 8);
      if (result >= *(v18 + 16))
      {
        goto LABEL_27;
      }

      v19 = *a2;
      (*(v8 + 16))(v11, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*(v8 + 8))(v11, v7);
      v21 = 1 << *a2;
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_28;
      }

      v23 = v22 & v20;
      if (a1 >= v15)
      {
        if (v23 < v15 || a1 < v23)
        {
          goto LABEL_21;
        }
      }

      else if (v23 < v15 && a1 < v23)
      {
        goto LABEL_21;
      }

      v35 = v31;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v26 = _HashTable.BucketIterator.currentValue.getter();
      if ((v27 & 1) == 0)
      {
        v28 = ((v22 & ((v26 - (a2[1] >> 6)) >> 63)) + v26 - (a2[1] >> 6)) ^ v22;
      }

      a1 = v36;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_21:
      _HashTable.BucketIterator.advance()();
      if (!*(&v32 + 1))
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

unint64_t sub_100144DA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v7 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v31 = a2;
  *(&v31 + 1) = a3;
  *&v32 = a1;
  *(&v32 + 1) = v12;
  *&v33 = v13;
  *(&v33 + 1) = v14;
  v34 = 0;
  _HashTable.BucketIterator.advance()();
  if (*(&v32 + 1))
  {
    v29[0] = a3;
    v15 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v29[1] = v8 + 16;
    while (1)
    {
      v39 = v31;
      v40 = v32;
      v41 = v33;
      v42 = v34;
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v17)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v18 = *(v30 + 8);
      if (result >= *(v18 + 16))
      {
        goto LABEL_27;
      }

      v19 = *a2;
      (*(v8 + 16))(v11, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);
      sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*(v8 + 8))(v11, v7);
      v21 = 1 << *a2;
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_28;
      }

      v23 = v22 & v20;
      if (a1 >= v15)
      {
        if (v23 < v15 || a1 < v23)
        {
          goto LABEL_21;
        }
      }

      else if (v23 < v15 && a1 < v23)
      {
        goto LABEL_21;
      }

      v35 = v31;
      v36 = v32;
      v37 = v33;
      v38 = v34;
      v26 = _HashTable.BucketIterator.currentValue.getter();
      if ((v27 & 1) == 0)
      {
        v28 = ((v22 & ((v26 - (a2[1] >> 6)) >> 63)) + v26 - (a2[1] >> 6)) ^ v22;
      }

      a1 = v36;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_21:
      _HashTable.BucketIterator.advance()();
      if (!*(&v32 + 1))
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

unint64_t sub_100145100(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v22 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v22)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v8 = a1;
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = *(v11 + 4 * result + 32);
      result = static Hasher._hash(seed:bytes:count:)();
      v14 = (1 << v12) - 1;
      if (__OFSUB__(1 << v12, 1))
      {
        goto LABEL_27;
      }

      v15 = result & v14;
      if (v8 >= v7)
      {
        if (v15 >= v7 && v8 >= v15)
        {
LABEL_18:
          v18 = _HashTable.BucketIterator.currentValue.getter();
          if ((v19 & 1) == 0)
          {
            v20 = ((v14 & ((v18 - (a2[1] >> 6)) >> 63)) + v18 - (a2[1] >> 6)) ^ v14;
          }

          v8 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v15 >= v7 || v8 >= v15)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

uint64_t sub_1001452C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v6 = a1;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  *&v33 = a1;
  *(&v33 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v34 = v7;
  *(&v34 + 1) = v8;
  v35 = 0;
  _HashTable.BucketIterator.advance()();
  if (*(&v33 + 1))
  {
    v29 = a3;
    v9 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v31 = v6;
    while (1)
    {
      v40 = v32;
      v41 = v33;
      v42 = v34;
      v43 = v35;
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v11)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v12 = result;
      v13 = *a2;
      v14 = *(v30 + 8);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64);
      result = __chkstk_darwin(v15);
      v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v12 >= *(v14 + 16))
      {
        goto LABEL_27;
      }

      (*(v16 + 16))(v19, v14 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, v15);
      sub_10005F2BC(&qword_1001B8C00);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*(v16 + 8))(v19, v15);
      v21 = 1 << *a2;
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_28;
      }

      v23 = v22 & v20;
      if (v6 >= v9)
      {
        if (v23 < v9 || v6 < v23)
        {
          goto LABEL_21;
        }
      }

      else if (v23 < v9 && v6 < v23)
      {
        goto LABEL_21;
      }

      v36 = v32;
      v37 = v33;
      v38 = v34;
      v39 = v35;
      v26 = _HashTable.BucketIterator.currentValue.getter();
      if ((v27 & 1) == 0)
      {
        v28 = ((v22 & ((v26 - (a2[1] >> 6)) >> 63)) + v26 - (a2[1] >> 6)) ^ v22;
      }

      v6 = v37;
      _HashTable.UnsafeHandle.subscript.setter();
      v31 = v6;
LABEL_21:
      _HashTable.BucketIterator.advance()();
      if (!*(&v33 + 1))
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

unint64_t sub_1001455F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v24)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v8 = a1;
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = *(v11 + 8 * result + 32);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10005F2BC(&qword_1001B8C00);

      dispatch thunk of Hashable.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = 1 << *a2;
      v16 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_27;
      }

      v17 = v16 & v14;
      if (v8 >= v7)
      {
        if (v17 >= v7 && v8 >= v17)
        {
LABEL_18:
          v20 = _HashTable.BucketIterator.currentValue.getter();
          if ((v21 & 1) == 0)
          {
            v22 = ((v16 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v16;
          }

          v8 = a1;
          _HashTable.UnsafeHandle.subscript.setter();
        }
      }

      else if (v17 >= v7 || v8 >= v17)
      {
        goto LABEL_18;
      }

      _HashTable.BucketIterator.advance()();
    }
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void sub_10014581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v18 >= 1)
  {
    v69 = a3;
    v19 = *(a3 + 16);
    if ((v19 - v18) / 2 <= a1)
    {
      v26 = __OFSUB__(v19, a2);
      v34 = v19 - a2;
      if (v26)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v35 = *a4;
      if (v34 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        v49 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v73 = a4;
        *(&v73 + 1) = a5;
        *&v74 = 0;
        *(&v74 + 1) = v49;
        *&v75 = v50;
        *(&v75 + 1) = v51;
        v76 = 0;
        do
        {
          v77 = v73;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          v52 = _HashTable.BucketIterator.currentValue.getter();
          if ((v53 & 1) == 0 && v52 >= a2)
          {
            if (__OFSUB__(v52, v18))
            {
              goto LABEL_56;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v74);
      }

      else
      {
        sub_100140CBC(a2, v69, &type metadata accessor for InferenceProviderDescriptor);
        v72 = v39;
        if (v37 != v38 >> 1)
        {
          v54 = v37;
          v68 = v36;
          v69 = v38 >> 1;
          if (v37 >= (v38 >> 1))
          {
LABEL_66:
            __break(1u);
            return;
          }

          v56 = *(v11 + 16);
          v55 = v11 + 16;
          v70 = *(v55 + 56);
          v71 = v56;
          v57 = (v55 - 8);
          while (1)
          {
            (v71)(v15, &v72[v70 * v54], v10);
            v58 = *a4;
            sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor);
            v59 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*v57)(v15, v10);
            v60 = 1 << *a4;
            v26 = __OFSUB__(v60, 1);
            v61 = v60 - 1;
            if (v26)
            {
              goto LABEL_57;
            }

            v62 = v61 & v59;
            v63 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v73 = a4;
            *(&v73 + 1) = a5;
            *&v74 = v62;
            *(&v74 + 1) = v63;
            *&v75 = v64;
            *(&v75 + 1) = v65;
            v76 = 0;
            while (*(&v74 + 1))
            {
              v77 = v73;
              v78 = v74;
              v79 = v75;
              v80 = v76;
              v66 = _HashTable.BucketIterator.currentValue.getter();
              if ((v67 & 1) == 0 && v66 == a2)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFSUB__(a2, v18))
            {
              goto LABEL_58;
            }

            _HashTable.BucketIterator.currentValue.setter();
            v26 = __OFADD__(a2++, 1);
            if (v26)
            {
              goto LABEL_59;
            }

            if (++v54 == v69)
            {
              swift_unknownObjectRelease();
              return;
            }
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v20 = *a4;
      if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
      {
        v40 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v73 = a4;
        *(&v73 + 1) = a5;
        *&v74 = 0;
        *(&v74 + 1) = v40;
        *&v75 = v41;
        *(&v75 + 1) = v42;
        v76 = 0;
        do
        {
          v77 = v73;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          v43 = _HashTable.BucketIterator.currentValue.getter();
          if ((v44 & 1) == 0 && v43 < a1)
          {
            if (__OFADD__(v43, v18))
            {
              goto LABEL_55;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v74);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v19 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v21 = *(v11 + 16);
          v71 = (v69 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
          v72 = v21;
          v70 = *(v11 + 72);

          v22 = 0;
          while (1)
          {
            (v72)(v17, &v71[v70 * v22], v10);
            v23 = *a4;
            sub_10005FAF0(&qword_1001BB6C0, &type metadata accessor for InferenceProviderDescriptor);
            v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*(v11 + 8))(v17, v10);
            v25 = 1 << *a4;
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v26)
            {
              break;
            }

            v28 = v27 & v24;
            v29 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v73 = a4;
            *(&v73 + 1) = a5;
            *&v74 = v28;
            *(&v74 + 1) = v29;
            *&v75 = v30;
            *(&v75 + 1) = v31;
            v76 = 0;
            while (*(&v74 + 1))
            {
              v77 = v73;
              v78 = v74;
              v79 = v75;
              v80 = v76;
              v32 = _HashTable.BucketIterator.currentValue.getter();
              if ((v33 & 1) == 0 && v32 == v22)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFADD__(v22, v18))
            {
              goto LABEL_54;
            }

            ++v22;
            _HashTable.BucketIterator.currentValue.setter();
            if (v22 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v45 = a4[1];
      if (__OFSUB__(v45 >> 6, v18))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v46 = 1 << *a4;
      v26 = __OFSUB__(v46, 1);
      v47 = v46 - 1;
      if (v26)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v48 = (v47 & (((v45 >> 6) - v18) >> 63)) + (v45 >> 6) - v18;
      if (v48 < v47)
      {
        v47 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v48 - v47) << 6);
    }
  }
}

void sub_100145E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v4 >= 1)
  {
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= a1)
    {
      v16 = a2;
      if (__OFSUB__(v8, a2))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v17 = *a4;
      if ((v8 - a2) >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v35 = _HashTable.BucketIterator.currentValue.getter();
        if ((v36 & 1) == 0 && v35 >= v16)
        {
          if (__OFSUB__(v35, v4))
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        sub_100140D50(v16, a3);
        if (v19 != v20 >> 1)
        {
          v21 = v19;
          v22 = v20 >> 1;
          if (v19 >= (v20 >> 1))
          {
LABEL_64:
            __break(1u);
            return;
          }

          v23 = v18;
          do
          {
            v24 = *(v23 + 4 * v21);
            v25 = *a4;
            static Hasher._hash(seed:bytes:count:)();
            if (__OFSUB__(1 << v25, 1))
            {
              goto LABEL_55;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v26 = _HashTable.BucketIterator.currentValue.getter();
                if ((v27 & 1) == 0 && v26 == v16)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFSUB__(v16, v4))
            {
              goto LABEL_56;
            }

            _HashTable.BucketIterator.currentValue.setter();
            v28 = __OFADD__(v16++, 1);
            if (v28)
            {
              goto LABEL_57;
            }
          }

          while (++v21 != v22);
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = *a4;
      if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v29 = _HashTable.BucketIterator.currentValue.getter();
        if ((v30 & 1) == 0 && v29 < a1)
        {
          if (__OFADD__(v29, v4))
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
      }

      else
      {
        if (a1 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v8 < a1)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (a1)
        {
          v10 = 0;
          v11 = a3 + 32;
          while (1)
          {
            v12 = *(v11 + 4 * v10);
            v13 = *a4;
            static Hasher._hash(seed:bytes:count:)();
            if (__OFSUB__(1 << v13, 1))
            {
              break;
            }

            if (_HashTable.UnsafeHandle._startIterator(bucket:)())
            {
              while (1)
              {
                v14 = _HashTable.BucketIterator.currentValue.getter();
                if ((v15 & 1) == 0 && v14 == v10)
                {
                  break;
                }

                _HashTable.BucketIterator.advance()();
              }
            }

            if (__OFADD__(v10, v4))
            {
              goto LABEL_52;
            }

            ++v10;
            _HashTable.BucketIterator.currentValue.setter();
            if (v10 == a1)
            {
              goto LABEL_39;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

LABEL_39:
      v31 = a4[1];
      if (__OFSUB__(v31 >> 6, v4))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v32 = 1 << *a4;
      v28 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v28)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v34 = (v33 & (((v31 >> 6) - v4) >> 63)) + (v31 >> 6) - v4;
      if (v34 < v33)
      {
        v33 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v34 - v33) << 6);
    }
  }
}

void sub_100146214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v18 >= 1)
  {
    v69 = a3;
    v19 = *(a3 + 16);
    if ((v19 - v18) / 2 <= a1)
    {
      v26 = __OFSUB__(v19, a2);
      v34 = v19 - a2;
      if (v26)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v35 = *a4;
      if (v34 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        v49 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v73 = a4;
        *(&v73 + 1) = a5;
        *&v74 = 0;
        *(&v74 + 1) = v49;
        *&v75 = v50;
        *(&v75 + 1) = v51;
        v76 = 0;
        do
        {
          v77 = v73;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          v52 = _HashTable.BucketIterator.currentValue.getter();
          if ((v53 & 1) == 0 && v52 >= a2)
          {
            if (__OFSUB__(v52, v18))
            {
              goto LABEL_56;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v74);
      }

      else
      {
        v36 = sub_100140C18(a2, v69);
        v72 = v39;
        if (v37 != v38 >> 1)
        {
          v54 = v37;
          v68 = v36;
          v69 = v38 >> 1;
          if (v37 >= (v38 >> 1))
          {
LABEL_66:
            __break(1u);
            return;
          }

          v56 = *(v11 + 16);
          v55 = v11 + 16;
          v70 = *(v55 + 56);
          v71 = v56;
          v57 = (v55 - 8);
          while (1)
          {
            (v71)(v15, &v72[v70 * v54], v10);
            v58 = *a4;
            sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30);
            v59 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*v57)(v15, v10);
            v60 = 1 << *a4;
            v26 = __OFSUB__(v60, 1);
            v61 = v60 - 1;
            if (v26)
            {
              goto LABEL_57;
            }

            v62 = v61 & v59;
            v63 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v73 = a4;
            *(&v73 + 1) = a5;
            *&v74 = v62;
            *(&v74 + 1) = v63;
            *&v75 = v64;
            *(&v75 + 1) = v65;
            v76 = 0;
            while (*(&v74 + 1))
            {
              v77 = v73;
              v78 = v74;
              v79 = v75;
              v80 = v76;
              v66 = _HashTable.BucketIterator.currentValue.getter();
              if ((v67 & 1) == 0 && v66 == a2)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFSUB__(a2, v18))
            {
              goto LABEL_58;
            }

            _HashTable.BucketIterator.currentValue.setter();
            v26 = __OFADD__(a2++, 1);
            if (v26)
            {
              goto LABEL_59;
            }

            if (++v54 == v69)
            {
              swift_unknownObjectRelease();
              return;
            }
          }
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v20 = *a4;
      if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
      {
        v40 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        *&v73 = a4;
        *(&v73 + 1) = a5;
        *&v74 = 0;
        *(&v74 + 1) = v40;
        *&v75 = v41;
        *(&v75 + 1) = v42;
        v76 = 0;
        do
        {
          v77 = v73;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          v43 = _HashTable.BucketIterator.currentValue.getter();
          if ((v44 & 1) == 0 && v43 < a1)
          {
            if (__OFADD__(v43, v18))
            {
              goto LABEL_55;
            }

            _HashTable.BucketIterator.currentValue.setter();
          }

          _HashTable.BucketIterator.advance()();
        }

        while (v74);
      }

      else
      {
        if (a1 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v19 < a1)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (a1)
        {
          v21 = *(v11 + 16);
          v71 = (v69 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
          v72 = v21;
          v70 = *(v11 + 72);

          v22 = 0;
          while (1)
          {
            (v72)(v17, &v71[v70 * v22], v10);
            v23 = *a4;
            sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30);
            v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
            (*(v11 + 8))(v17, v10);
            v25 = 1 << *a4;
            v26 = __OFSUB__(v25, 1);
            v27 = v25 - 1;
            if (v26)
            {
              break;
            }

            v28 = v27 & v24;
            v29 = _HashTable.UnsafeHandle._startIterator(bucket:)();
            *&v73 = a4;
            *(&v73 + 1) = a5;
            *&v74 = v28;
            *(&v74 + 1) = v29;
            *&v75 = v30;
            *(&v75 + 1) = v31;
            v76 = 0;
            while (*(&v74 + 1))
            {
              v77 = v73;
              v78 = v74;
              v79 = v75;
              v80 = v76;
              v32 = _HashTable.BucketIterator.currentValue.getter();
              if ((v33 & 1) == 0 && v32 == v22)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }

            if (__OFADD__(v22, v18))
            {
              goto LABEL_54;
            }

            ++v22;
            _HashTable.BucketIterator.currentValue.setter();
            if (v22 == a1)
            {

              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

LABEL_29:
      v45 = a4[1];
      if (__OFSUB__(v45 >> 6, v18))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v46 = 1 << *a4;
      v26 = __OFSUB__(v46, 1);
      v47 = v46 - 1;
      if (v26)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v48 = (v47 & (((v45 >> 6) - v18) >> 63)) + (v45 >> 6) - v18;
      if (v48 < v47)
      {
        v47 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v48 - v47) << 6);
    }
  }
}

void sub_1001467FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v10 = *(a3 + 16);
    if ((v10 - v5) / 2 <= a1)
    {
      v34 = a2;
      v26 = __OFSUB__(v10, a2);
      v35 = v10 - a2;
      if (v26)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v36 = *a4;
      if (v35 < static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        sub_100140CBC(v34, a3, &type metadata accessor for UUID);
        v38 = v37;
        v79 = v39;
        v41 = v40;
        v43 = v42;
        v44 = type metadata accessor for UUID();
        v45 = *(*(v44 - 8) + 64);
        __chkstk_darwin(v44);
        v48 = v74 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v41 == v43 >> 1)
        {
          swift_unknownObjectRelease();
          return;
        }

        v74[1] = v74;
        v75 = v38;
        v76 = v43 >> 1;
        if (v41 >= (v43 >> 1))
        {
          goto LABEL_62;
        }

        v62 = *(v46 + 16);
        v61 = v46 + 16;
        v77 = *(v61 + 56);
        v78 = v62;
        v63 = (v61 - 8);
        while (1)
        {
          (v78)(v48, &v79[v77 * v41], v44);
          v64 = *a4;
          sub_10005F2BC(&qword_1001B8C00);
          v65 = dispatch thunk of Hashable._rawHashValue(seed:)();
          (*v63)(v48, v44);
          v66 = 1 << *a4;
          v26 = __OFSUB__(v66, 1);
          v67 = v66 - 1;
          if (v26)
          {
            goto LABEL_53;
          }

          v68 = v67 & v65;
          v69 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          *&v80 = a4;
          *(&v80 + 1) = a5;
          *&v81 = v68;
          *(&v81 + 1) = v69;
          *&v82 = v70;
          *(&v82 + 1) = v71;
          v83 = 0;
          while (*(&v81 + 1))
          {
            v84 = v80;
            v85 = v81;
            v86 = v82;
            v87 = v83;
            v72 = _HashTable.BucketIterator.currentValue.getter();
            if ((v73 & 1) == 0 && v72 == v34)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }

          if (__OFSUB__(v34, v5))
          {
            goto LABEL_54;
          }

          _HashTable.BucketIterator.currentValue.setter();
          v26 = __OFADD__(v34++, 1);
          if (v26)
          {
            goto LABEL_55;
          }

          if (++v41 == v76)
          {
            swift_unknownObjectRelease();
            return;
          }
        }
      }

      *&v80 = a4;
      *(&v80 + 1) = a5;
      *&v81 = 0;
      *(&v81 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
      *&v82 = v57;
      *(&v82 + 1) = v58;
      v83 = 0;
      v84 = v80;
      v85 = v81;
      v86 = v82;
      v87 = 0;
      v59 = _HashTable.BucketIterator.currentValue.getter();
      if ((v60 & 1) == 0 && v59 >= v34)
      {
        if (__OFSUB__(v59, v5))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
      return;
    }

    v11 = *a4;
    if (static _HashTable.maximumCapacity(forScale:)() / 3 <= a1)
    {
      *&v80 = a4;
      *(&v80 + 1) = a5;
      *&v81 = 0;
      *(&v81 + 1) = _HashTable.UnsafeHandle._startIterator(bucket:)();
      *&v82 = v49;
      *(&v82 + 1) = v50;
      v83 = 0;
      v84 = v80;
      v85 = v81;
      v86 = v82;
      v87 = 0;
      v51 = _HashTable.BucketIterator.currentValue.getter();
      if ((v52 & 1) == 0 && v51 < a1)
      {
        if (__OFADD__(v51, v5))
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
    }

    else
    {
      if (a1 < 0)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (v10 < a1)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      v12 = type metadata accessor for UUID();
      v13 = *(v12 - 8);
      v14 = *(v13 + 64);
      __chkstk_darwin(v12);
      v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (a1)
      {
        v75 = v15;
        v76 = a3;
        v19 = *(v13 + 16);
        v18 = v13 + 16;
        v78 = (a3 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
        v79 = v19;
        v77 = *(v18 + 56);
        v20 = (v18 - 8);

        v21 = 0;
        while (1)
        {
          v22 = v18;
          (v79)(v17, &v78[v77 * v21], v12);
          v23 = *a4;
          sub_10005F2BC(&qword_1001B8C00);
          v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
          (*v20)(v17, v12);
          v25 = 1 << *a4;
          v26 = __OFSUB__(v25, 1);
          v27 = v25 - 1;
          if (v26)
          {
            break;
          }

          v28 = v27 & v24;
          v29 = _HashTable.UnsafeHandle._startIterator(bucket:)();
          *&v80 = a4;
          *(&v80 + 1) = a5;
          *&v81 = v28;
          *(&v81 + 1) = v29;
          *&v82 = v30;
          *(&v82 + 1) = v31;
          v83 = 0;
          while (*(&v81 + 1))
          {
            v84 = v80;
            v85 = v81;
            v86 = v82;
            v87 = v83;
            v32 = _HashTable.BucketIterator.currentValue.getter();
            if ((v33 & 1) == 0 && v32 == v21)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }

          if (__OFADD__(v21, v5))
          {
            goto LABEL_50;
          }

          ++v21;
          _HashTable.BucketIterator.currentValue.setter();
          v18 = v22;
          if (v21 == a1)
          {

            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

LABEL_27:
    v53 = a4[1];
    if (__OFSUB__(v53 >> 6, v5))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v54 = 1 << *a4;
    v26 = __OFSUB__(v54, 1);
    v55 = v54 - 1;
    if (v26)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v56 = (v55 & (((v53 >> 6) - v5) >> 63)) + (v53 >> 6) - v5;
    if (v56 < v55)
    {
      v55 = 0;
    }

    a4[1] = a4[1] & 0x3F | ((v56 - v55) << 6);
  }
}

void sub_100146E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= a1)
    {
      v16 = a2;
      v17 = __OFSUB__(v8, a2);
      v18 = v8 - a2;
      if (v17)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v19 = *a4;
      if (v18 >= static _HashTable.maximumCapacity(forScale:)() / 3)
      {
        _HashTable.UnsafeHandle._startIterator(bucket:)();
        v31 = _HashTable.BucketIterator.currentValue.getter();
        if ((v32 & 1) == 0 && v31 >= v16)
        {
          if (__OFSUB__(v31, v4))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        _HashTable.BucketIterator.advance()();
        return;
      }

      sub_100140D50(v16, a3);
      v37 = v20;
      v22 = v21;
      v24 = v23 >> 1;
      while (v22 != v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_51;
        }

        v25 = *(v37 + 8 * v22);
        v26 = *a4;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005F2BC(&qword_1001B8C00);

        dispatch thunk of Hashable.hash(into:)();
        Hasher._finalize()();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            v27 = _HashTable.BucketIterator.currentValue.getter();
            if ((v28 & 1) == 0 && v27 == v16)
            {
              break;
            }

            _HashTable.BucketIterator.advance()();
          }
        }

        if (__OFSUB__(v16, v4))
        {
          goto LABEL_53;
        }

        _HashTable.BucketIterator.currentValue.setter();

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_54;
        }

        ++v22;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v9 = *a4;
      if (static _HashTable.maximumCapacity(forScale:)() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        v10 = a3 + 32;

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          v12 = *(v10 + 8 * i);
          v13 = *a4;
          Hasher.init(_seed:)();
          type metadata accessor for UUID();
          sub_10005F2BC(&qword_1001B8C00);

          dispatch thunk of Hashable.hash(into:)();
          Hasher._finalize()();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (_HashTable.UnsafeHandle._startIterator(bucket:)())
          {
            while (1)
            {
              v14 = _HashTable.BucketIterator.currentValue.getter();
              if ((v15 & 1) == 0 && v14 == i)
              {
                break;
              }

              _HashTable.BucketIterator.advance()();
            }
          }

          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          _HashTable.BucketIterator.currentValue.setter();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      v29 = _HashTable.BucketIterator.currentValue.getter();
      if ((v30 & 1) == 0 && v29 < a1)
      {
        if (__OFADD__(v29, v4))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      _HashTable.BucketIterator.advance()();
LABEL_40:
      v33 = a4[1];
      if (__OFSUB__(v33 >> 6, v4))
      {
        goto LABEL_59;
      }

      v34 = 1 << *a4;
      v17 = __OFSUB__(v34, 1);
      v35 = v34 - 1;
      if (v17)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v36 = (v35 & (((v33 >> 6) - v4) >> 63)) + (v33 >> 6) - v4;
      if (v36 < v35)
      {
        v35 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v36 - v35) << 6);
    }
  }
}

Swift::Int sub_100147318(uint64_t (*a1)(int *, int *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001472C8(v5);
    v5 = v6;
  }

  v8 = *(v5 + 16);
  result = sub_10014739C(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_10014739C(uint64_t (*a1)(int *, int *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10[0] = (v9 + 4);
      v10[1] = v8;
      sub_100147568(v10, v11, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1001474A0(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1001474A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(int *, int *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = *v4 + 4 * a3 - 4;
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + 4 * v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v18 = v12;
      v17 = *v14;
      result = a4(&v18, &v17);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v15 = *v14;
        v12 = v14[1];
        *v14 = v12;
        v14[1] = v15;
        --v14;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      v10 += 4;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_100147568(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(int *, int *), uint64_t a5, uint64_t a6)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_91:
    v96 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_93;
    }

    goto LABEL_132;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_22;
    }

    v12 = v9;
    v13 = *a3;
    v14 = v8 + 1;
    v100 = *(*a3 + 4 * v11);
    v99 = *(v13 + 4 * v8);
    v15 = a4(&v100, &v99);
    if (v6)
    {
      goto LABEL_101;
    }

    v16 = v15;
    v17 = v10;
    v18 = (v13 + 4 * v10 + 8);
    v96 = v17;
    v19 = v17 + 2;
    v9 = v12;
    v11 = v14;
    do
    {
      v20 = v11;
      v21 = v19;
      if (v11 + 1 >= v7)
      {
        v11 = v7;
        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v10 = v96;
        if (v11 >= v96)
        {
          if (v96 <= v20)
          {
            if (v7 >= v21)
            {
              v24 = v21;
            }

            else
            {
              v24 = v7;
            }

            v25 = v24 - 1;
            v26 = v96;
            do
            {
              if (v26 != v25)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v28 = *(v27 + 4 * v26);
                *(v27 + 4 * v26) = *(v27 + 4 * v25);
                *(v27 + 4 * v25) = v28;
              }

              v29 = ++v26 < v25--;
            }

            while (v29);
          }

          goto LABEL_22;
        }

        goto LABEL_126;
      }

      v22 = *(v18 - 1);
      v100 = *v18;
      v99 = v22;
      v23 = a4(&v100, &v99);
      ++v18;
      ++v11;
      v19 = (v21 + 1);
    }

    while (((v16 ^ v23) & 1) == 0);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_21:
    v10 = v96;
LABEL_22:
    v30 = a3[1];
    if (v11 < v30)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_122;
      }

      if (v11 - v10 < a6)
      {
        v31 = (v10 + a6);
        if (__OFADD__(v10, a6))
        {
          __break(1u);
        }

        else
        {
          if (v31 >= v30)
          {
            v31 = a3[1];
          }

          if (v31 >= v10)
          {
            if (v11 != v31)
            {
              v73 = *a3;
              v74 = *a3 + 4 * v11 - 4;
              v95 = v31;
              v96 = v10;
              v75 = (v10 - v11);
              do
              {
                v76 = *(v73 + 4 * v11);
                v77 = v75;
                v78 = v74;
                do
                {
                  v100 = v76;
                  v99 = *v78;
                  v79 = a4(&v100, &v99);
                  if (v6)
                  {
                    goto LABEL_101;
                  }

                  if ((v79 & 1) == 0)
                  {
                    break;
                  }

                  if (!v73)
                  {
                    goto LABEL_129;
                  }

                  v80 = *v78;
                  v76 = v78[1];
                  *v78 = v76;
                  v78[1] = v80;
                  --v78;
                }

                while (!__CFADD__(v77++, 1));
                ++v11;
                v74 += 4;
                --v75;
              }

              while (v11 != v95);
              v11 = v95;
              v10 = v96;
            }

            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }
    }

LABEL_30:
    if (v11 < v10)
    {
      goto LABEL_121;
    }

    v94 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = *(v9 + 16);
      sub_10013FB2C();
      v9 = v83;
    }

    v32 = *(v9 + 16);
    v33 = v32 + 1;
    if (v32 >= *(v9 + 24) >> 1)
    {
      sub_10013FB2C();
      v9 = v84;
    }

    *(v9 + 16) = v33;
    v34 = v9 + 32;
    v35 = (v9 + 32 + 16 * v32);
    *v35 = v10;
    v35[1] = v94;
    v96 = *a1;
    if (!*a1)
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      return;
    }

    if (v32)
    {
      break;
    }

LABEL_79:
    v7 = a3[1];
    v8 = v94;
    if (v94 >= v7)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    v37 = (v34 + 16 * (v33 - 1));
    v38 = (v9 + 16 * v33);
    if (v33 >= 4)
    {
      v43 = v34 + 16 * v33;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_109;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_110;
      }

      v50 = v38[1];
      v51 = v50 - *v38;
      if (__OFSUB__(v50, *v38))
      {
        goto LABEL_112;
      }

      v49 = __OFADD__(v41, v51);
      v52 = v41 + v51;
      if (v49)
      {
        goto LABEL_115;
      }

      if (v52 >= v46)
      {
        v66 = *v37;
        v65 = v37[1];
        v49 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v49)
        {
          goto LABEL_120;
        }

        if (v41 < v67)
        {
          v36 = v33 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_50;
    }

    if (v33 == 3)
    {
      v39 = *(v9 + 32);
      v40 = *(v9 + 40);
      v49 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      v42 = v49;
LABEL_50:
      if (v42)
      {
        goto LABEL_111;
      }

      v54 = *v38;
      v53 = v38[1];
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_114;
      }

      v58 = v37[1];
      v59 = v58 - *v37;
      if (__OFSUB__(v58, *v37))
      {
        goto LABEL_117;
      }

      if (__OFADD__(v56, v59))
      {
        goto LABEL_119;
      }

      if (v56 + v59 >= v41)
      {
        if (v41 < v59)
        {
          v36 = v33 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    if (v33 < 2)
    {
      goto LABEL_113;
    }

    v61 = *v38;
    v60 = v38[1];
    v49 = __OFSUB__(v60, v61);
    v56 = v60 - v61;
    v57 = v49;
LABEL_65:
    if (v57)
    {
      goto LABEL_116;
    }

    v63 = *v37;
    v62 = v37[1];
    v49 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v49)
    {
      goto LABEL_118;
    }

    if (v64 < v56)
    {
      goto LABEL_79;
    }

LABEL_72:
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_127;
    }

    v68 = (v34 + 16 * (v36 - 1));
    v69 = *v68;
    v70 = (v34 + 16 * v36);
    v71 = v70[1];
    sub_100147B6C((*a3 + 4 * *v68), (*a3 + 4 * *v70), (*a3 + 4 * v71), v96, a4);
    if (v6)
    {
      goto LABEL_101;
    }

    if (v71 < v69)
    {
      goto LABEL_103;
    }

    v72 = v9;
    v9 = *(v9 + 16);
    if (v36 > v9)
    {
      goto LABEL_104;
    }

    *v68 = v69;
    v68[1] = v71;
    if (v36 >= v9)
    {
      goto LABEL_105;
    }

    v33 = v9 - 1;
    memmove((v34 + 16 * v36), v70 + 2, 16 * (v9 - 1 - v36));
    *(v72 + 16) = v9 - 1;
    v29 = v9 > 2;
    v9 = v72;
    if (!v29)
    {
      goto LABEL_79;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
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
  v9 = sub_100147DF0(v9);
LABEL_93:
  v85 = (v9 + 16);
  v86 = *(v9 + 16);
  while (v86 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_128;
    }

    v87 = v9;
    v88 = (v9 + 16 * v86);
    v89 = *v88;
    v90 = &v85[2 * v86];
    v9 = v90[1];
    sub_100147B6C((*a3 + 4 * *v88), (*a3 + 4 * *v90), (*a3 + 4 * v9), v96, a4);
    if (v6)
    {
      break;
    }

    if (v9 < v89)
    {
      goto LABEL_106;
    }

    if (v86 - 2 >= *v85)
    {
      goto LABEL_107;
    }

    *v88 = v89;
    v88[1] = v9;
    v91 = *v85 - v86;
    if (*v85 < v86)
    {
      goto LABEL_108;
    }

    v86 = *v85 - 1;
    memmove(v90, v90 + 2, 16 * v91);
    *v85 = v86;
    v9 = v87;
  }

LABEL_101:
}

uint64_t sub_100147B6C(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(int *, int *))
{
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 4;
  v12 = (a3 - a2) / 4;
  if (v10 >= v12)
  {
    sub_1000708FC(a2, (a3 - a2) / 4, a4);
    v13 = &v7[4 * v12];
    v19 = -v7;
    v20 = a3;
    v43 = -v7;
LABEL_15:
    v21 = v8 - 4;
    v22 = v20 - 4;
    for (i = &v13[v19]; ; i -= 4)
    {
      if (v13 <= v7 || v8 <= v9)
      {
LABEL_29:
        v34 = (v13 - v7) / 4;
        v35 = v8 < v7 || v8 >= &v7[4 * v34];
        if (v35 || v8 != v7)
        {
          v36 = 4 * v34;
          v37 = v8;
          goto LABEL_41;
        }

        return 1;
      }

      v25 = v8;
      v26 = v22;
      v27 = v7;
      v28 = v13;
      v29 = *(v13 - 1);
      v13 -= 4;
      v30 = v21;
      v45 = *v21;
      v46 = v29;
      v31 = a5(&v46, &v45);
      if (v5)
      {
        break;
      }

      v20 = v26;
      v32 = v26 + 4;
      if (v31)
      {
        v33 = v30;
        v8 = v30;
        v19 = v43;
        v7 = v27;
        v13 = v28;
        if (v32 != v25)
        {
          *v20 = *v33;
          v8 = v33;
        }

        goto LABEL_15;
      }

      v21 = v30;
      if (v28 != v32)
      {
        *v26 = *v13;
      }

      v22 = v26 - 4;
      v7 = v27;
      v8 = v25;
    }

    v41 = v25 < v27 || v25 >= &v27[4 * (i / 4)];
    if (v41 || v25 != v27)
    {
      v36 = 4 * (i / 4);
      v37 = v25;
      v40 = v27;
      goto LABEL_48;
    }
  }

  else
  {
    sub_1000708FC(a1, (a2 - a1) / 4, a4);
    v13 = &v7[4 * v10];
    v14 = a3;
    while (1)
    {
      if (v7 >= v13 || v8 >= v14)
      {
        v8 = v9;
        goto LABEL_29;
      }

      v46 = *v8;
      v45 = *v7;
      v16 = a5(&v46, &v45);
      if (v5)
      {
        break;
      }

      if (v16)
      {
        v17 = v8;
        v18 = v9 == v8;
        v8 += 4;
      }

      else
      {
        v17 = v7;
        v18 = v9 == v7;
        v7 += 4;
      }

      v14 = a3;
      if (!v18)
      {
        *v9 = *v17;
      }

      v9 += 4;
    }

    v38 = (v13 - v7) / 4;
    v39 = v9 < v7 || v9 >= &v7[4 * v38];
    if (v39 || v9 != v7)
    {
      v36 = 4 * v38;
      v37 = v9;
LABEL_41:
      v40 = v7;
LABEL_48:
      memmove(v37, v40, v36);
    }
  }

  return 1;
}

char *sub_100147E04(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100147E30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100065020(&qword_1001BDBD0, &qword_100174140);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_100148380(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    goto LABEL_23;
  }

  sub_100053BF8();
  sub_10013F948(v7, v8);
  v9 = *v4;
  if (*v4)
  {
    sub_100004CBC();
    swift_beginAccess();
    v10 = *(v9 + 16) & 0x3FLL;
  }

  else
  {
    v10 = 0;
  }

  v11 = static _HashTable.scale(forCapacity:)();
  v12 = v11;
  if (v5)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v9 && (v5 & 1) == 0)
  {
    sub_100004CBC();
    swift_beginAccess();
    v13 = *(v9 + 24) & 0x3FLL;
  }

  if (v10 < v12)
  {
    v14 = v12;
    return sub_100141A44(v14, v13, a4, sub_100141A98);
  }

  v14 = sub_100028228();
  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v14 < v10)
  {
    return sub_100141A44(v14, v13, a4, sub_100141A98);
  }

  result = sub_100141958();
  v15 = *v4;
  if (!v15)
  {
    if (!v13)
    {
      return result;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  result = sub_10014B4D8();
  if ((*(v15 + 24) & 0x3FLL) != v13)
  {
    *(v15 + 24) = *(v15 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1001484C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    goto LABEL_23;
  }

  sub_100053BF8();
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = *v3;
  if (*v3)
  {
    sub_100004CBC();
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
  }

  else
  {
    v7 = 0;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  v9 = v8;
  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v6 && (v4 & 1) == 0)
  {
    sub_100004CBC();
    swift_beginAccess();
    v10 = *(v6 + 24) & 0x3FLL;
  }

  if (v7 < v9)
  {
    v11 = v9;
    return sub_100141A44(v11, v10, a3, sub_100141B14);
  }

  v11 = sub_100028228();
  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 < v7)
  {
    return sub_100141A44(v11, v10, a3, sub_100141B14);
  }

  result = sub_100141958();
  v12 = *v3;
  if (!v12)
  {
    if (!v10)
    {
      return result;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  result = sub_10014B4D8();
  if ((*(v12 + 24) & 0x3FLL) != v10)
  {
    *(v12 + 24) = *(v12 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }

  return result;
}

void sub_100148604()
{
  sub_1000055B0();
  v1 = v0;
  v2 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = sub_100065020(&qword_1001BDC50, &qword_1001742E8);
  v11 = sub_100002BDC(v10);
  v42 = v12;
  v43 = v11;
  v14 = *(v13 + 64);
  sub_100004B1C();
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = sub_100140DC4(_swiftEmptyArrayStorage, sub_100148ED4);
  v47 = 0;
  v48 = _swiftEmptyArrayStorage;
  v46 = v18;
  sub_100148380(*(v1 + 16), 0, sub_100070A50, sub_100141B90);
  specialized ContiguousArray.reserveCapacity(_:)();
  v19 = 0;
  v20 = *(v1 + 16);
  v44 = v4;
  v45 = v20;
  v40 = (v4 + 8);
  v41 = v4 + 32;
  while (1)
  {
    if (v45 == v19)
    {

      sub_100002EEC();
      return;
    }

    if (v19 >= *(v1 + 16))
    {
      break;
    }

    v21 = *(v42 + 80);
    sub_10000657C();
    v22 = v1;
    sub_10001E72C(v1 + v23 + *(v24 + 72) * v19, v17, &qword_1001BDC50, &qword_1001742E8);
    v25 = v44;
    v26 = *(v43 + 48);
    v27 = v2;
    (*(v44 + 32))(v9, v17, v2);
    v28 = *&v17[v26];
    v29 = v47;
    v30 = v48;
    v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v32 = v48[2];
    if (v47)
    {

      sub_1001429AC(v9, v30 + v31, v32, (v29 + 16));
      v34 = v33;
      v36 = v35;

      if ((v34 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_100142698(v9, v48 + v31, v48[2]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_12;
      }

      v36 = 0;
    }

    v1 = v22;
    sub_100140F44(v9, v36);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v38 = v46[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    sub_100053C38();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    v2 = v27;
    (*v40)(v9, v27);
    ++v19;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100148910(uint64_t a1)
{
  v2 = type metadata accessor for ClientData();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v53 = sub_100065020(&qword_1001BDBE0, &unk_100174150);
  v52 = *(v53 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v53);
  v51 = (&v45 - v11);
  v60 = 0;
  v61 = _swiftEmptyArrayStorage;
  sub_100148380(*(a1 + 16), 0, sub_100070F50, sub_100142184);
  v59 = _swiftEmptyArrayStorage;
  sub_100070F08();
  v12 = 0;
  v13 = v59;
  v54 = *(a1 + 16);
  v14 = (v3 + 32);
  v46 = (v3 + 16);
  v49 = v3;
  v45 = v3 + 8;
  v47 = (v3 + 32);
  v50 = a1;
  v48 = v7;
  while (1)
  {
    if (v12 == v54)
    {

      return;
    }

    if (v12 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v15 = v51;
    sub_10001E72C(a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v12, v51, &qword_1001BDBE0, &unk_100174150);
    v16 = *(v53 + 48);
    v17 = v9;
    v18 = *v15;
    v19 = *v14;
    v20 = v2;
    v21 = v17;
    v22 = v20;
    (*v14)(v17);
    v23 = v60;
    v24 = (v61 + 4);
    if (!v60)
    {
      v38 = v61[2];
      while (v38)
      {
        v39 = *v24++;
        --v38;
        if (v39 == v18)
        {
          goto LABEL_21;
        }
      }

      v35 = 0;
      goto LABEL_15;
    }

    v25 = v60 + 16;
    v26 = *(v60 + 16);
    v27 = static Hasher._hash(seed:bytes:count:)();
    v28 = (1 << v26) - 1;
    if (__OFSUB__(1 << v26, 1))
    {
      goto LABEL_20;
    }

    v29 = v23 + 32;
    v30 = v28 & v27;
    v31 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v66 = v25;
    *(&v66 + 1) = v29;
    *&v67 = v30;
    *(&v67 + 1) = v31;
    *&v68 = v32;
    *(&v68 + 1) = v33;
    v69 = 0;
    v34 = _HashTable.BucketIterator.currentValue.getter();
    v35 = v67;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v58 = v69;
    if ((v36 & 1) == 0)
    {
      break;
    }

LABEL_15:
    sub_100141688(v18, v35);
    v40 = v48;
    v9 = v21;
    v41 = v21;
    v2 = v22;
    (*v46)(v48, v41, v22);
    v59 = v13;
    v42 = v13[2];
    if (v42 >= v13[3] >> 1)
    {
      sub_100070F08();
    }

    ++v12;
    v43 = v49;
    (*(v49 + 8))(v9, v22);
    v13 = v59;
    v59[2] = v42 + 1;
    v44 = v13 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
    v14 = v47;
    (v19)(v44, v40, v22);
    a1 = v50;
  }

  while (v24[v34] != v18)
  {
    _HashTable.BucketIterator.advance()();
    v62 = v55;
    v63 = v56;
    v64 = v57;
    v65 = v58;
    v35 = v56;
    v34 = _HashTable.BucketIterator.currentValue.getter();
    if (v37)
    {
      goto LABEL_15;
    }
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_100148DC4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v8 = 0;
  v9 = *(a3 + 16);
  while (v9 != v8)
  {
    v16 = *(a3 + 8 * v8 + 32);

    v10 = a4(&v16);

    if (v4)
    {
      return result;
    }

    if (v10)
    {
      *(*a1 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    }

    ++v8;
  }

  v12 = *a1;
  v13 = a1[1];
  v14 = variable initialization expression of InferenceProviderManager.updatesReceived();

  return sub_100147F30(v12, v13, 0, 1, v14, a2, a3);
}

uint64_t sub_100148ED4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001297C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for RequestManager.InputStreamRequestInfo();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000082D4(&qword_1001BDC60, &qword_1001BDC58, &qword_1001742F0);
        for (i = 0; i != v7; ++i)
        {
          sub_100065020(&qword_1001BDC58, &qword_1001742F0);
          v9 = sub_100149440(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100149058(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_10001297C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        _s14ExecutionGroupCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1000082D4(&qword_1001BDC00, &qword_1001BDBF8, &qword_1001741D0);
        for (i = 0; i != v7; ++i)
        {
          sub_100065020(&qword_1001BDBF8, &qword_1001741D0);
          v9 = sub_100149440(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1001491E0()
{
  sub_10002B358();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000062B0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_10001297C(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for DaemonRequest(0);
        sub_100027848();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v28 = v6;
        sub_100003508();
        sub_100006570();
        sub_1000082D4(v7, v8, v9);
        do
        {
          v10 = sub_1000071D0();
          v12 = sub_100065020(v10, v11);
          v20 = sub_10014B1C8(v12, v13, v14, v15, v16, v17, v18, v19, v27, v28, v29[0]);
          v23 = sub_1001494CC(v20, v21, v22);
          v25 = *v24;

          v23(v29, 0);
          sub_10014B3E0();
        }

        while (!v26);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100149310()
{
  sub_10002B358();
  if (v2)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      sub_1000062B0();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_10001297C(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        type metadata accessor for InferenceProviderAsset(0);
        sub_100027848();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v28 = v6;
        sub_100003508();
        sub_100006570();
        sub_1000082D4(v7, v8, v9);
        do
        {
          v10 = sub_1000071D0();
          v12 = sub_100065020(v10, v11);
          v20 = sub_10014B1C8(v12, v13, v14, v15, v16, v17, v18, v19, v27, v28, v29[0]);
          v23 = sub_100149594(v20, v21, v22);
          v25 = *v24;

          v23(v29, 0);
          sub_10014B3E0();
        }

        while (!v26);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_100149440(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *)
{
  v6 = sub_100064024(a3);
  sub_100022F0C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v8;
  return sub_10014AFD8;
}

uint64_t sub_1001494CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10014B1EC(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_10000D01C();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return sub_100005F04();
}

uint64_t sub_100149530(uint64_t a1, uint64_t a2)
{
  v4 = _s6PolicyVMa();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100149594(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10014B1EC(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_10000D01C();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return sub_100005F04();
}

void sub_1001495F4()
{
  sub_1000055B0();
  sub_10000A0C4(v5, v6, v7, v8);
  if (!v9)
  {
    v13 = 0;
LABEL_17:
    *v0 = v1;
    v0[1] = v2;
    v0[2] = ~v3;
    v0[3] = v13;
    v0[4] = v4;
    sub_100002EEC();
    return;
  }

  v11 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v9;
    sub_10001E714();
    v16 = (v15 - v3) >> 6;
    while (v14 < v11)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }

      if (!v4)
      {
        while (1)
        {
          v18 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            v4 = 0;
            goto LABEL_17;
          }

          v4 = *(v2 + 8 * v18);
          ++v13;
          if (v4)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v18 = v13;
LABEL_12:
      sub_1000DB34C();
      *v12 = *(*(v1 + 48) + ((v18 << 9) | (8 * v19)));
      if (v17 == v11)
      {

        v13 = v18;
        goto LABEL_17;
      }

      ++v12;

      v14 = v17;
      v13 = v18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001496FC()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  v3 = sub_1000062B0();

  return sub_10013BF2C(v3, v4);
}

void sub_100149788()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_10002A104();
  v7 = type metadata accessor for Assertion.DaemonRep();
  v38 = sub_100002BDC(v7);
  v39 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v38);
  sub_100009C24();
  v37 = v11;
  sub_100002F1C();
  __chkstk_darwin(v12);
  sub_1000DB284();
  v36 = v13;
  v14 = *(v2 + 56);
  v35 = -1 << *(v2 + 32);
  sub_10000D160();
  if (v19 != v20)
  {
    v21 = ~v17;
  }

  else
  {
    v21 = v16;
  }

  v22 = v21 & v15;
  if (!v6)
  {
    v24 = 0;
LABEL_22:
    *v0 = v2;
    v0[1] = v18;
    v0[2] = ~v35;
    v0[3] = v24;
    v0[4] = v22;
    sub_100002EEC();
    return;
  }

  if (!v4)
  {
    v24 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v33 = v18;
    sub_10001E714();
    v27 = (v26 - v35) >> 6;
    v34 = v23;
    while (v25 < v23)
    {
      if (__OFADD__(v25, 1))
      {
        goto LABEL_26;
      }

      if (!v22)
      {
        v18 = v33;
        while (1)
        {
          v28 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v28 >= v27)
          {
            v22 = 0;
            goto LABEL_22;
          }

          v22 = *(v33 + 8 * v28);
          ++v24;
          if (v22)
          {
            v40 = v25 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v40 = v25 + 1;
      v28 = v24;
LABEL_17:
      sub_100011268();
      v30 = v2;
      v31 = *(v39 + 72);
      (*(v39 + 16))(v37, *(v2 + 48) + v31 * (v29 | (v28 << 6)), v38);
      v32 = *(v39 + 32);
      v32(v36, v37, v38);
      v32(v6, v36, v38);
      v23 = v34;
      v25 = v40;
      if (v40 == v34)
      {
        v24 = v28;
        v18 = v33;
        v2 = v30;
        goto LABEL_22;
      }

      v6 += v31;
      v24 = v28;
      v2 = v30;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void sub_1001499D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_10000355C();
  a27 = v33;
  a28 = v34;
  sub_10000A0C4(v35, v36, v37, v38);
  if (!v39)
  {
    v44 = 0;
LABEL_16:
    *v28 = v29;
    v28[1] = v30;
    v28[2] = ~v31;
    v28[3] = v44;
    v28[4] = v32;
    sub_100005F10();
    return;
  }

  v41 = v40;
  if (!v40)
  {
    v44 = 0;
    goto LABEL_16;
  }

  if ((v40 & 0x8000000000000000) == 0)
  {
    v42 = v39;
    v43 = 0;
    v44 = 0;
    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (!v32)
      {
        while (1)
        {
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v46 >= ((63 - v31) >> 6))
          {
            v32 = 0;
            goto LABEL_16;
          }

          v32 = *(v30 + 8 * v46);
          ++v44;
          if (v32)
          {
            v44 = v46;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      sub_1000DB34C();
      sub_100007130(*(v29 + 56) + 40 * (v47 | (v44 << 6)), &a9);
      sub_100004A04(&a9, &a13);
      sub_100004A04(&a13, v42);
      v42 += 40;
      v43 = v45;
      if (v45 == v41)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100149ADC()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_10002A104();
  v8 = type metadata accessor for InferenceProviderManager.InferenceProviderExtensionInformation(v7);
  v9 = sub_100002F44(v8);
  v43 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100009C24();
  v42 = v13;
  sub_100002F1C();
  __chkstk_darwin(v14);
  sub_1000DB284();
  v41 = v15;
  v17 = v2 + 56;
  v16 = *(v2 + 56);
  v18 = -1 << *(v2 + 32);
  sub_10000D160();
  if (v23 != v24)
  {
    v25 = ~v21;
  }

  else
  {
    v25 = v20;
  }

  v26 = v25 & v19;
  if (!v6)
  {
    v27 = 0;
LABEL_20:
    *v0 = v2;
    v0[1] = v17;
    v0[2] = ~v22;
    v0[3] = v27;
    v0[4] = v26;
    sub_100002EEC();
    return;
  }

  if (!v4)
  {
    v27 = 0;
    goto LABEL_20;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v38 = v22;
    v39 = v0;
    sub_10001E714();
    v31 = (v29 - v30) >> 6;
    v40 = v4;
    while (v28 < v4)
    {
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_24;
      }

      if (!v26)
      {
        while (1)
        {
          v33 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v33 >= v31)
          {
            v26 = 0;
            v22 = v38;
            v0 = v39;
            goto LABEL_20;
          }

          v26 = *(v17 + 8 * v33);
          ++v27;
          if (v26)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v33 = v27;
LABEL_15:
      v34 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v35 = v2;
      v36 = *(v2 + 48);
      v37 = *(v43 + 72);
      sub_10005CAA8(v36 + v37 * (v34 | (v33 << 6)), v42);
      sub_10000D4B4(v42, v41);
      sub_10000D4B4(v41, v6);
      v4 = v40;
      if (v32 == v40)
      {
        v27 = v33;
        v22 = v38;
        v0 = v39;
        v2 = v35;
        goto LABEL_20;
      }

      v6 += v37;
      v28 = v32;
      v27 = v33;
      v2 = v35;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100149D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_1001429AC(a4, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_100142698(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_100149E34(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100011E24();
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_100149E70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10006FA64;

  return sub_1001297D4(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_100149F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_1000089AC();
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = swift_task_alloc();
  v14 = sub_100004B00(v13);
  *v14 = v15;
  v14[1] = sub_10006FA64;
  sub_100007B24();
  sub_10014B068();
  sub_100006378();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_100149FE8()
{
  sub_10000636C();
  v1 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F44(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 80) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(v0 + v4);
  v9 = v0[9];
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v12 = swift_task_alloc();
  v13 = sub_100004B00(v12);
  *v13 = v14;
  v13[1] = sub_10006F558;
  sub_10000C750();

  return sub_10013AB08(v15, v16, v17, v9, v18, v8, v10, v11);
}

uint64_t sub_10014A120()
{
  sub_100001ED0();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100003120(v3);

  return sub_10005DAE4(v5, v6, v7, v1);
}

uint64_t sub_10014A1B4()
{
  sub_100001ED0();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100003120(v3);

  return sub_10005DAE4(v5, v6, v7, v1);
}

uint64_t sub_10014A264()
{
  sub_10000636C();
  sub_1000089AC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  sub_100003120(v7);
  sub_10014B068();

  return sub_100135E28(v9, v10, v11, v12, v13, v3, v4, v5);
}

uint64_t sub_10014A31C()
{
  sub_10001881C();
  sub_100003884();
  sub_1000089AC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  sub_100003120(v5);
  sub_10014B068();
  sub_100007BB8();

  return sub_100135FF8(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10014A3C0()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  sub_100003120(v4);
  sub_100003D20();

  return sub_100138518(v6, v7, v8, v9, v10);
}

uint64_t sub_10014A458()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  v2 = sub_100004B00(v1);
  *v2 = v3;
  v2[1] = sub_10006FA64;
  v4 = sub_100003808();

  return sub_100137D70(v4, v0);
}

uint64_t sub_10014A4E4()
{
  sub_100001ED0();
  sub_1000089AC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100003120(v3);

  return sub_10013F754(v5, v6, v7, v1);
}

uint64_t sub_10014A5A0(uint64_t *a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v5 = *a1;
  sub_10012E8F4();
  return v6 & 1;
}

uint64_t sub_10014A5FC()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_10001644C();

  return sub_10012E4E8(v3, v4, v5);
}

uint64_t sub_10014A694()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_100002EE0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10014A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100002BAC();
  v17 = swift_task_alloc();
  v18 = sub_100004B00(v17);
  *v18 = v19;
  v18[1] = sub_10006FA64;
  v20 = sub_100003808();

  return sub_10012E7BC(v20, v16, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10014A764(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100140B18(result, 1, sub_1001400B4);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  sub_100065020(&qword_1001BDC08, &qword_100174218);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_10007091C((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10014A86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10006FA64;

  return sub_10012939C(a1, a2, v10, a4, a5);
}

uint64_t sub_10014A934(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10006FA64;

  return sub_1001297D4(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_10014AA04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *)@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100148DC4(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_10014AA70(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  a1(v1[4]);
  v4 = v1[5];

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10014AAC8()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  sub_100003120(v4);
  sub_100003D20();

  return sub_10013EF70(v6, v7, v8, v9, v10);
}

uint64_t sub_10014AB60()
{
  sub_100002BAC();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  v3 = sub_1000062B0();

  return sub_10013F304(v3, v4);
}

uint64_t sub_10014AC2C()
{
  sub_10000639C();
  sub_100003884();
  sub_1000135C4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000D0A0(v3);
  *v4 = v5;
  v4[1] = sub_10006FA64;
  sub_100002CBC();
  sub_10002F720();
  sub_100003D20();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10014ACD4()
{
  sub_10001881C();
  sub_100003884();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  sub_10014B0AC(v4);
  sub_100007BB8();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10014AD88()
{
  sub_10001881C();
  sub_100003884();
  sub_1000135C4();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  sub_10014B0AC(v5);
  sub_10000CD38();
  sub_100007BB8();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10014AE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_1000089AC();
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = swift_task_alloc();
  v14 = sub_100004B00(v13);
  *v14 = v15;
  v14[1] = sub_10006FA64;
  sub_100007B24();
  sub_10014B068();
  sub_100006378();

  return v22(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_10014AEDC()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100003808();
  sub_10001644C();

  return v3();
}

uint64_t sub_10014B01C(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_10014B030@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v5 = *(a1 + 48) + v2;
  return *(v3 - 112);
}

uint64_t sub_10014B074()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v5 = v0[13];
}

uint64_t sub_10014B0AC(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2 + *v2;
  return result;
}

uint64_t sub_10014B0BC(uint64_t a1)
{
  v2 = *(a1 + 16);

  return static _HashTable.scale(forCapacity:)();
}

uint64_t sub_10014B0E4()
{
  v1[17] = v0;
  v3 = v1[29];
  v4 = v1[27];

  return swift_errorRetain();
}

uint64_t sub_10014B10C()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
}

uint64_t sub_10014B134()
{
}

__n128 sub_10014B1A4@<Q0>(char a1@<W8>)
{
  v3 = *(v1 - 208);
  result = *(v1 - 192);
  *(v1 - 144) = *(v1 - 224);
  *(v1 - 128) = v3;
  *(v1 - 112) = result;
  *(v1 - 96) = a1;
  return result;
}

uint64_t sub_10014B1BC(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_10014B1EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_100064024(a3);

  return sub_100022F0C(a2, v5, a3);
}

uint64_t sub_10014B230()
{
}

uint64_t sub_10014B248()
{
  v3 = *(*(v0 + 32) + 16);

  return sub_10013FA84(v3, v1);
}

uint64_t sub_10014B26C()
{
  v2 = v0[24];
  v3 = v0[26];
  v4 = v0[17];
}

void sub_10014B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  sub_100036C5C(v31, v30, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_10014B2AC()
{
  v3 = *(v0 + 8 * v1 + 32);
}

uint64_t sub_10014B2C8()
{
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
}

void sub_10014B2E4()
{

  _StringGuts.grow(_:)(32);
}

uint64_t sub_10014B308()
{

  return swift_allocObject();
}

uint64_t sub_10014B320()
{
}

uint64_t sub_10014B338()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10014B350()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return sub_10012AC70(v2);
}

uint64_t sub_10014B388()
{
  v3 = *v2;
  result = *(v0 + 208);
  v5 = *(*v1 + 8);
  return result;
}

uint64_t sub_10014B450()
{
  result = v0[26];
  v2 = v0[24];
  v3 = *(v0[25] + 88);
  return result;
}

void sub_10014B478(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10014B498()
{

  return _HashTable.UnsafeHandle.startFind(_:)();
}

uint64_t sub_10014B4B8()
{
  if (*(v0 - 176) < 0)
  {
    v2 = *(v0 - 176);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10014B4D8()
{

  return swift_beginAccess();
}

uint64_t sub_10014B4F8()
{
  v3 = v0[26];
  v4 = v0[25];
  v5 = v0[22];
}

uint64_t sub_10014B534()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BDC68);
  sub_10000641C(v0, qword_1001BDC68);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10014B5A4()
{
  if (v0[32])
  {
    v1 = v0[32];

    Task.cancel()();
  }

  sub_100003324(v0 + 14);
  sub_100003324(v0 + 19);
  sub_100003324(v0 + 24);
  v2 = v0[31];

  v3 = v0[32];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10014B62C()
{
  sub_10014B5A4();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10014B67C(uint64_t a1, double a2)
{
  if (*(v2 + 232) != a1 || *(v2 + 240) != a2)
  {
    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000641C(v5, qword_1001BDC68);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = a1;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v6, v7, "Setting rate limiting to %ld events / %f seconds", v8, 0x16u);
      sub_100002BD0();
    }

    *(v2 + 232) = a1;
    *(v2 + 240) = a2;
    if (*(v2 + 256))
    {
      v9 = *(v2 + 256);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Restarting expiration task", v12, 2u);
        sub_100002BD0();
      }

      Task.cancel()();
      sub_10014C568();
    }
  }
}

uint64_t sub_10014B868(int a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = sub_100002BDC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  if (!v1[32])
  {
    sub_10014C568();
  }

  swift_beginAccess();
  v13 = v1[31];
  if (*(v13 + 16) && (v14 = sub_10011739C(a1), (v15 & 1) != 0))
  {
    v16 = (*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = _emptyDequeStorage.unsafeMutableAddressor();
  }

  v17 = *v16;

  sub_10014BD7C(&v43);
  v18 = v43;
  v19 = *(v43 + 24);
  if (v19 < v3[29])
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v18 + 16) <= v19 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10014D564(isUniquelyReferenced_nonNull_native, v19 + 1, 0);
      v18 = v43;
    }

    sub_10014D790((v18 + 16), v18 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), v12);
    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000641C(v21, qword_1001BDC68);
    v22 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v23 = sub_1000065C8();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_21;
    }

    v25 = swift_slowAlloc();
    v41 = v12;
    v26 = v8;
    *v25 = 67109376;
    *(v25 + 4) = a1;
    *(v25 + 8) = 2048;
    *(v25 + 10) = *(v18 + 24);
    _os_log_impl(&_mh_execute_header, v22, v2, "PID %d: now %ld events within window", v25, 0x12u);
LABEL_20:
    v8 = v26;
    v12 = v41;
    sub_100002BD0();

LABEL_21:

    goto LABEL_27;
  }

  v27 = *sub_100003370(v3 + 24, v3[27]);
  if (sub_10006AF68())
  {
    if (qword_1001B8AC0 != -1)
    {
      sub_10000538C();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000641C(v28, qword_1001BDC68);
    v22 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v29 = sub_1000065C8();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_21;
    }

    sub_100005944();
    v31 = swift_slowAlloc();
    v41 = v12;
    v26 = v8;
    *v31 = 67109120;
    *(v31 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v22, v2, "PID %d: Rate limit exceeded. Allowing request because device is connected to power.", v31, 8u);
    goto LABEL_20;
  }

  sub_100002D24();
  swift_beginAccess();

  v32 = v3[31];
  swift_isUniquelyReferenced_nonNull_native();
  sub_100003138();
  v3[31] = v42;
  swift_endAccess();
  if (qword_1001B8AC0 != -1)
  {
    sub_10000538C();
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000641C(v33, qword_1001BDC68);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    sub_100005944();
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v34, v35, "PID %d: Rate limit exceeded", v36, 8u);
    sub_100002BD0();
  }

  v37 = type metadata accessor for ModelManagerError();
  sub_10014DE08(&qword_1001B8F50, 255, &type metadata accessor for ModelManagerError);
  swift_allocError();
  (*(*(v37 - 8) + 104))(v38, enum case for ModelManagerError.rateLimited(_:), v37);
  swift_willThrow();
LABEL_27:
  sub_100002D24();
  swift_beginAccess();

  v39 = v3[31];
  swift_isUniquelyReferenced_nonNull_native();
  sub_100003138();
  v3[31] = v42;
  swift_endAccess();
  (*(v8 + 8))(v12, v5);
}

uint64_t sub_10014BD7C(uint64_t *a1)
{
  v3 = type metadata accessor for Date();
  v4 = sub_100002BDC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v33 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = v9;
  v10 = *(v1 + 240);
  v35 = &v32 - v33;
  v11 = static Date.- infix(_:_:)();
  v36 = v6 + 32;
  v32 = (v6 + 8);
  while (1)
  {
    __chkstk_darwin(v11);
    v12 = &v32 - v33;
    v13 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v13 - 8);
    v16 = &v32 - v15;
    if (*(*a1 + 24) < 1)
    {
      sub_100009BFC(v16, 1, 1, v3);
      (*v32)(v35, v3);
      return sub_10000ECD8(v16, &qword_1001BBA80, &qword_100172440);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10014DC54();
    }

    v17 = a1;
    v18 = *a1;
    v19 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v20 = *(v6 + 32);
    result = v20(v16, &v18[v19 + *(v6 + 72) * *(v18 + 4)], v3);
    v22 = *(v18 + 4);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v25 = *(v18 + 3);
    if (v24 >= *(v18 + 2))
    {
      v24 = 0;
    }

    *(v18 + 4) = v24;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_19;
    }

    *(v18 + 3) = v25 - 1;
    sub_100009BFC(v16, 0, 1, v3);
    v20(v12, v16, v3);
    sub_10014DE50(&qword_1001BB418, &type metadata accessor for Date);
    result = dispatch thunk of static Comparable.>= infix(_:_:)();
    if (result)
    {
      break;
    }

    v11 = (*v32)(v12, v3);
    a1 = v17;
  }

  v26 = *(v18 + 3);
  v27 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    goto LABEL_20;
  }

  v28 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v17;
  if (*(*v17 + 16) < v27 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10014D564(isUniquelyReferenced_nonNull_native, v27, 0);
    v30 = *v17;
  }

  sub_10014DD4C((v30 + 16), v30 + v19, v12);
  v31 = *v32;
  (*v32)(v35, v3);
  return v31(v12, v3);
}

uint64_t sub_10014C0CC()
{
  v3 = v0;
  v4 = type metadata accessor for Date();
  v5 = sub_100002BDC(v4);
  v46 = v6;
  v47 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  swift_beginAccess();
  v10 = v0[31];
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = 1 << *(v0[31] + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  *&v20 = 67109120;
  v48 = v20;
  v50 = result;
  if (v16)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v17)
    {
      (*(v46 + 8))(v49, v47);
    }

    v16 = *(v12 + 8 * v21);
    ++v19;
    if (v16)
    {
      v19 = v21;
      do
      {
LABEL_8:
        v22 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v23 = v22 | (v19 << 6);
        v24 = *(*(v50 + 48) + 4 * v23);
        v25 = *(*(v50 + 56) + 8 * v23);
        v26 = *sub_100003370(v3 + 19, v3[22]);

        sub_100021CF4(v24, v53);
        if (v54 == 1)
        {
          if (qword_1001B8AC0 != -1)
          {
            sub_10000538C();
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          sub_10000641C(v27, qword_1001BDC68);
          v28 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();
          v29 = sub_1000065C8();
          if (os_log_type_enabled(v29, v30))
          {
            sub_100005944();
            v31 = swift_slowAlloc();
            sub_100004C68(v31);
            _os_log_impl(&_mh_execute_header, v28, v2, "PID %d: Process no longer exists, removing", isUniquelyReferenced_nonNull_native, 8u);
            sub_100002BD0();
          }

          sub_100002D24();
          swift_beginAccess();
          v32 = v3[31];
          v33 = sub_10011739C(v24);
          if (v34)
          {
            v35 = v33;
            v36 = v3[31];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = v3[31];
            v37 = v52;
            v3[31] = 0x8000000000000000;
            v2 = *(v37 + 24);
            sub_100065020(&qword_1001BCD48, &qword_1001734F8);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2);
            v38 = v52;
            v39 = *(*(v52 + 56) + 8 * v35);

            sub_100065020(&qword_1001B8C08, &qword_10016F808);
            _NativeDictionary._delete(at:)();
            v3[31] = v38;
          }

          swift_endAccess();
        }

        else
        {
          sub_10000ECD8(v53, &qword_1001B9CF8, &qword_100172AC0);
          v52 = v25;

          sub_10014BD7C(&v52);
          v2 = v52;
          if (*(v52 + 24))
          {
            sub_100002D24();
            swift_beginAccess();

            v40 = v3[31];
            swift_isUniquelyReferenced_nonNull_native();
            v51 = v3[31];
            sub_100117EB0(v2, v24);
            v3[31] = v51;
            swift_endAccess();
          }

          else
          {
            if (qword_1001B8AC0 != -1)
            {
              sub_10000538C();
              swift_once();
            }

            v41 = type metadata accessor for Logger();
            sub_10000641C(v41, qword_1001BDC68);
            isUniquelyReferenced_nonNull_native = Logger.logObject.getter();
            v42 = static os_log_type_t.debug.getter();
            v45 = isUniquelyReferenced_nonNull_native;
            if (os_log_type_enabled(isUniquelyReferenced_nonNull_native, v42))
            {
              sub_100005944();
              v43 = swift_slowAlloc();
              sub_100004C68(v43);
              _os_log_impl(&_mh_execute_header, v45, v42, "PID %d: All events expired, removing", isUniquelyReferenced_nonNull_native, 8u);
              sub_100002BD0();
            }

            sub_100002D24();
            swift_beginAccess();
            sub_10014D378(v24);
            swift_endAccess();
          }
        }
      }

      while (v16);
    }
  }

  __break(1u);
  return result;
}