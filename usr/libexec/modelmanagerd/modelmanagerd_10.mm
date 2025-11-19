uint64_t sub_1000E6034()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  sub_100002B9C();
  *v5 = v4;

  v6 = *(v2 + 256);
  v7 = *(v2 + 248);
  if (v0)
  {

    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);
    v8 = sub_1000EE524;
  }

  else
  {
    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);
    v8 = sub_1000E61A4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000E61A4()
{
  sub_100001ED0();
  v3 = v1[41];
  v2 = v1[42];

  if (!v3)
  {
    v21 = v1[39];
    v20 = v1[40];

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (sub_10000320C(v23))
    {
      v24 = sub_100007648();
      sub_10000A240(v24);
      sub_10000EDF4(&_mh_execute_header, v25, v26, "Finished unloading assets for forced version change");
      sub_100002BD0();
    }

    v27 = v1[31];

    v28 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

    v29 = swift_task_alloc();
    v1[44] = v29;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v29 = v30;
    sub_10001250C();
    sub_10000A638();
    sub_100019AD8();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v7, v4, v5);
  }

  v6 = v1[41];
  v7 = v6 - 1;
  v1[41] = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = v1[40];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_100007900(v7, v4);
      if (!v8)
      {
        sub_100011174(v7, v4);
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v7, v4, v5);
  }

  v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v1[42] = v0;
  v9 = v1[32];
  type metadata accessor for AuditToken();
  v10 = sub_100007A04();
  sub_100009BFC(v10, v11, v12, v13);
  v14 = swift_task_alloc();
  v15 = sub_1000080CC(v14);
  *v15 = v16;
  v15[1] = sub_1000E6034;
  v18 = v1[31];
  v17 = v1[32];
  sub_100003A68();

  return sub_10002BA5C();
}

uint64_t sub_1000E63B4()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 248);

    v11 = sub_100002C10();

    return _swift_task_switch(v11, v12, v13);
  }

  return result;
}

void sub_1000E64B0()
{
  sub_100003884();
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[32];
  v4 = *(v0[31] + v0[38]);

  v5 = sub_1000071D0();
  sub_1000B5114(v5, v6);

  v7 = v0[1];
  sub_100003D20();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1000E6558()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBA68);
  sub_10000641C(v0, qword_1001BBA68);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E65C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C260;

  return sub_100025A00();
}

uint64_t sub_1000E6658(uint64_t a1, uint64_t a2)
{
  v2[23] = a2;
  v3 = type metadata accessor for InferenceProviderAssetDescriptor();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  State = type metadata accessor for LoadState();
  v2[27] = State;
  v7 = *(State - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v2[30] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = swift_task_alloc();
  v2[32] = v11;
  *v11 = v2;
  v11[1] = sub_1000E67D4;

  return sub_100025A00();
}

uint64_t sub_1000E67D4()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 256);
  v3 = *(v1 + 184);
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E68CC()
{
  v104 = v0;
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v3 = *&v2[v1];
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *&v2[v1];
    }

    __CocoaSet.makeIterator()();
    sub_10001C150();
    sub_100011434();
    sub_1000EE39C(v5, v6);
    result = sub_10000CE64();
    v3 = v0[2];
    v9 = v0[3];
    v1 = v0[4];
    v10 = v0[5];
    v11 = v0[6];
  }

  else
  {
    v12 = -1 << *(v3 + 32);
    v9 = v3 + 56;
    v13 = *(v3 + 56);
    sub_100018A20();
    v11 = v14 & v15;

    v10 = 0;
  }

  v89 = v1;
  v16 = (v1 + 64) >> 6;
  v95 = v0[30];
  v17 = v0[28];
  v18 = v0[25];
  v101 = enum case for LoadState.unloaded(_:);
  v100 = (v17 + 104);
  v96 = (v17 + 8);
  v92 = (v18 + 8);
  v93 = (v18 + 16);
  *&v8 = 136315138;
  v90 = v8;
  v97 = v16;
  v98 = v9;
  v99 = v3;
  while (v3 < 0)
  {
    v26 = __CocoaSet.Iterator.next()();
    if (!v26 || (v0[22] = v26, type metadata accessor for InferenceProviderAsset(0), sub_100009E64(), v25 = v0[21], v20 = v10, v23 = v11, !v25))
    {
LABEL_36:
      v84 = v0[31];
      v85 = v0[29];
      v86 = v0[26];
      sub_100019334(v3, v9, v89, v10, v11);

      sub_100002F54();

      return v87();
    }

LABEL_16:
    v27 = v0[31];
    v28 = v0[29];
    v29 = v0[27];
    v30 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100005A88();
    sub_10001938C(v30 + v25, v27);
    (*v100)(v28, v101, v29);
    sub_100005CC8();
    sub_1000EE39C(&dword_1001BA628, v31);
    sub_10000E884();
    sub_10000E884();
    if (v0[13] == v0[15] && v0[14] == v0[16])
    {
      v42 = v0[16];

      goto LABEL_23;
    }

    v33 = v0[14];
    v34 = v0[16];
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
LABEL_23:
      v102 = v23;
      v43 = v0[29];
      v44 = v0[27];
      v45 = v0[31] + *(v95 + 20);
      sub_10000E884();
      sub_10000E884();
      v52 = v0[17];
      v53 = v0[19];
      v54 = v0[31];
      v55 = v0[29];
      v56 = v0[27];
      if (v52 == v53 && v0[18] == v0[20])
      {
        v71 = sub_1000156C4(v52, v46, v53, v47, v48, v49, v50, v51, v88, v89, v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96);
        v72(v71);
        sub_1000193F0(v54);

LABEL_30:
        if (qword_1001B8950 != -1)
        {
          sub_1000051D8();
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        sub_100002FD0(v73, qword_1001BBA68);

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = v0[26];
          v77 = v0[24];
          v78 = sub_100007698();
          v94 = sub_1000031E0();
          v103 = v94;
          *v78 = v90;
          (*v93)(v76, v25 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor, v77);
          sub_1000EE39C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor);
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          (*v92)(v76, v77);
          v82 = sub_100004A3C(v79, v81, &v103);

          *(v78 + 4) = v82;
          sub_100005EB0(&_mh_execute_header, v74, v75, "Invalidating and removing asset for force version change: %s");
          sub_100003324(v94);
          sub_100002BD0();

          sub_100002BD0();
        }

        v9 = v98;
        v3 = v99;
        v16 = v97;
        v11 = v102;
        v83 = v0[23];
        sub_1000E46B0(v25);

        v10 = v20;
      }

      else
      {
        v58 = v0[18];
        v59 = v0[20];
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v61 = v60;
        v69 = sub_1000156C4(v60, v62, v63, v64, v65, v66, v67, v68, v88, v89, v90, *(&v90 + 1), v91, v92, v93, v94, v95, v96);
        v70(v69);
        sub_1000193F0(v54);

        if (v61)
        {
          goto LABEL_30;
        }

        v10 = v20;
        v11 = v102;
        v9 = v98;
        v3 = v99;
        v16 = v97;
      }
    }

    else
    {
      v36 = v0[31];
      v37 = v0[29];
      v11 = v23;
      v38 = v0[27];

      v39 = *v96;
      v40 = sub_1000071D0();
      v16 = v97;
      v41(v40);
      result = sub_1000193F0(v36);
      v10 = v20;
      v9 = v98;
      v3 = v99;
    }
  }

  v19 = v10;
  v20 = v10;
  if (v11)
  {
LABEL_12:
    sub_1000062A0();
    v23 = v22 & v21;
    v25 = *(*(v3 + 48) + ((v20 << 9) | (8 * v24)));

    if (!v25)
    {
      goto LABEL_36;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      v11 = 0;
      goto LABEL_36;
    }

    ++v19;
    if (*(v9 + 8 * v20))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E6EBC()
{
  sub_100002BAC();
  v1[19] = v0;
  State = type metadata accessor for LoadState();
  v1[20] = State;
  sub_100002F44(State);
  v1[21] = v3;
  v5 = *(v4 + 64);
  v1[22] = sub_100002C58();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E6F60()
{
  v107 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v3 = v0[19];
  v83 = &_swiftEmptySetSingleton;
  if ((*(v2 + v1) & 0xC000000000000001) != 0)
  {
    v87 = &_swiftEmptySetSingleton;
    sub_100012BCC();
    swift_retain_n();

    __CocoaSet.makeIterator()();
    v4 = &_swiftEmptySetSingleton;
    while (1)
    {
      v5 = __CocoaSet.Iterator.next()();
      if (!v5)
      {
        break;
      }

      v0[18] = v5;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v6 = v0[17];
      v7 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v6;
      sub_100004BA0();
      if (v7[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 56)])
      {
        v15 = *(v4 + 16);
        if (*(v4 + 24) <= v15)
        {
          sub_100080444(v15 + 1, v8, v9, v10, v11, v12, v13, v14, v81, v83, v84, v85, v87, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
          v4 = v87;
        }

        v16 = *(v4 + 40);
        Hasher.init(_seed:)();
        sub_10001214C();
        Hasher._finalize()();
        v17 = -1 << *(v4 + 32);
        v18 = _HashTable.nextHole(atOrAfter:)();
        *(v4 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v6;
        ++*(v4 + 16);
      }

      else
      {
      }
    }

    v19 = v0[19];

    sub_1000464C0();
  }

  else
  {

    v4 = sub_1000EC2C8(v20, v3);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v82 = 0;
    v21 = v0[21];
    v22 = v0[19];
    v88 = &_swiftEmptySetSingleton;
    swift_retain_n();
    v86 = __CocoaSet.makeIterator()();
    HIDWORD(v84) = enum case for LoadState.dynamicMode(_:);
    v23 = (v21 + 104);
    v24 = (v21 + 8);
    while (1)
    {
      v25 = __CocoaSet.Iterator.next()();
      if (!v25)
      {
        v54 = v0[19];

        sub_1000464C0();
        v55 = v83;
        goto LABEL_28;
      }

      v26 = v0[22];
      v27 = v0[20];
      v0[16] = v25;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v28 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v0[15];
      sub_100002D24();
      swift_beginAccess();
      (*v23)(v26, HIDWORD(v84), v27);
      sub_100005CC8();
      sub_1000EE39C(&dword_1001BA628, v29);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v30 = v0[22];
      v31 = v0[20];
      if (v0[11] == v0[13] && v0[12] == v0[14])
      {
        v36 = v0[14];

        (*v24)(v30, v31);
      }

      else
      {
        v33 = v0[12];
        v34 = v0[14];
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v24)(v30, v31);
        if ((v35 & 1) == 0)
        {
          swift_endAccess();
          goto LABEL_22;
        }
      }

      v37 = *&v28[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 28)];
      swift_endAccess();
      if (v37)
      {
LABEL_22:
        v45 = v0[15];
      }

      else
      {
        v46 = v0[15];
        v47 = v83;
        v48 = v83[2];
        if (v83[3] <= v48)
        {
          sub_100080444(v48 + 1, v38, v39, v40, v41, v42, v43, v44, v82, v83, v84, v86, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
          v47 = v88;
        }

        v49 = v47[5];
        Hasher.init(_seed:)();
        sub_10001214C();
        v50 = Hasher._finalize()();
        sub_100012804(v50, *(v47 + 32));
        v51 = _HashTable.nextHole(atOrAfter:)();
        v52 = sub_100004C00(v51);
        *(v53 + 8 * v52) = v46;
        v83 = v47;
        ++v47[2];
      }
    }
  }

  v56 = v0[19];

  sub_10000BF1C();
  v55 = sub_100011E30(v57, v58, v59, v60);
LABEL_28:
  v0[23] = v55;
  if (sub_1000453EC(v55))
  {

    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100002FD0(v61, qword_1001BBA68);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (sub_100002F80(v63))
    {
      v64 = sub_100007648();
      sub_10000A240(v64);
      sub_1000059D8(&_mh_execute_header, v65, v66, "Assets with pending verison change exist, but none are ready to unload");
      sub_100002BD0();
    }

    v67 = v0[22];

    sub_100001F00();

    return v68();
  }

  else
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100002FD0(v70, qword_1001BBA68);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (sub_100003A34(v72))
    {
      v73 = sub_100007648();
      sub_10000BF10(v73);
      sub_100008348();
      sub_100013624(v74, v75, v76, v77);
      sub_100002BD0();
    }

    v78 = v0[19];

    v79 = swift_task_alloc();
    v0[24] = v79;
    *v79 = v0;
    v79[1] = sub_1000E75DC;
    v80 = v0[19];

    return sub_1001291C0(v55, &unk_100172420, v80);
  }
}

uint64_t sub_1000E75DC()
{
  sub_100001ED0();
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 152);
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v1 + 176);

  v8 = *(v5 + 8);

  return v8();
}

BOOL sub_1000E7720(uint64_t a1)
{
  State = type metadata accessor for LoadState();
  v3 = *(State - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(State);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for LoadState.dynamicMode(_:), State);
  v7 = sub_100116D68(a1, v6);
  (*(v3 + 8))(v6, State);
  return (v7 & 1) != 0 && *(a1 + *(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 28)) == 0;
}

uint64_t sub_1000E7840(uint64_t *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(sub_100065020(&qword_1001BB3F8, &qword_100171D50) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[3] = v5;
  v2[4] = v6;

  return _swift_task_switch(sub_1000E78E4, 0, 0);
}

uint64_t sub_1000E78E4()
{
  sub_100002BAC();
  v1 = v0[3];
  type metadata accessor for AuditToken();
  sub_100003978();
  sub_100009BFC(v2, v3, v4, v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1000E799C;
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_10002BA5C();
}

uint64_t sub_1000E799C()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = *(v2 + 40);
  v6 = *v1;
  *v4 = *v1;

  v7 = *(v2 + 24);
  if (v0)
  {

    sub_10002C278(v7, &qword_1001BB3F8, &qword_100171D50);
    sub_1000059F8();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {
    sub_10002C278(v7, &qword_1001BB3F8, &qword_100171D50);
    v11 = *(v3 + 24);

    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1000E7B20()
{
  sub_100002BAC();
  v1 = *(v0 + 24);

  sub_100001F00();

  return v2();
}

BOOL sub_1000E7B78()
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100007CB0();
  static Date.now.getter();
  sub_100010338();
  v10 = v0;
  v11 = v1;
  v6 = sub_10003DADC(sub_1000EE474, v9, v5);
  v7 = sub_10000E8DC(v6);

  (*(v3 + 8))(v1, v2);
  return v7 != 0;
}

uint64_t sub_1000E7C80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v8;
  swift_beginAccess();
  v14 = sub_10001938C(v13, v7);
  __chkstk_darwin(v14);
  v16 = *(v4 + 32);
  v15 = *(v4 + 36);
  v25 = v4;
  v17 = &v7[v15];
  v18 = &v7[v16];
  sub_10002B0EC();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  (*(v10 + 16))(v12, v19, v9);
  sub_1000193F0(v7);
  static Date.+ infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v20(v12, v9);
  if (v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = v13[*(v25 + 24)] ^ 1;
  }

  return v22 & 1;
}

uint64_t sub_1000E7EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock.Instant();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000E800C, 0, 0);
}

uint64_t sub_1000E800C()
{
  sub_100003884();
  v1 = v0[19];
  type metadata accessor for _OSActivity();
  inited = swift_initStackObject();
  v0[27] = inited;
  v0[28] = sub_10001B160("Unload Assets For Version Change", 32, 2);
  sub_100004BA0();
  v3 = v0[19];
  v4 = type metadata accessor for Date();
  sub_10000F18C(v4);
  v0[30] = v5;
  v0[31] = *(v6 + 64);
  v0[32] = sub_100002C58();
  v7 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v0[33] = sub_100002C58();
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v11 = swift_task_alloc();
    v12 = sub_100009B6C(v11);
    *v12 = v13;
    sub_10000A29C(v12);
    sub_100004CC8();

    return sub_1000E8FF4();
  }

  else
  {
    v16 = sub_100007A04();
    sub_100009BFC(v16, v17, v18, inited);
    sub_10002C278(v0[33], &qword_1001BBA80, &qword_100172440);
    v19 = v0[33];

    v20 = v0[32];

    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002FD0(v21, qword_1001BBA68);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (sub_100002F80(v23))
    {
      v24 = sub_100007648();
      sub_10000A240(v24);
      sub_1000059D8(&_mh_execute_header, v25, v26, "Ending task to unload assets due to pending version change");
      sub_100002BD0();
    }

    v27 = v0[19];

    sub_100005A88();
    v28 = swift_weakLoadStrong();
    v0[42] = v28;
    if (!v28)
    {
      sub_100005CE0();
      os_activity_scope_leave((v22 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_100004CC8();

      __asm { BRAA            X1, X16 }
    }

    v29 = swift_task_alloc();
    v30 = sub_1000080CC(v29);
    *v30 = v31;
    sub_100003064(v30);
    sub_100004CC8();

    return sub_1000EBD88(v32);
  }
}

uint64_t sub_1000E833C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;
  *(v2 + 288) = v0;

  if (!v0)
  {
    v8 = *(v2 + 272);
  }

  sub_1000059F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000E8474()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = sub_10000205C();
  if (sub_10000C6C0(v3, v4, v2) == 1)
  {
    sub_10002C278(v1, &qword_1001BBA80, &qword_100172440);
    v5 = *(v0 + 264);

    v6 = *(v0 + 256);

    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100002FD0(v7, qword_1001BBA68);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (sub_100002F80(v9))
    {
      v10 = sub_100007648();
      sub_10000A240(v10);
      sub_1000059D8(&_mh_execute_header, v11, v12, "Ending task to unload assets due to pending version change");
      sub_100002BD0();
    }

    v13 = *(v0 + 152);

    sub_100005A88();
    Strong = swift_weakLoadStrong();
    *(v0 + 336) = Strong;
    if (!Strong)
    {
      sub_100005CE0();
      os_activity_scope_leave((v8 + 24));
      swift_endAccess();

      sub_100001F00();
      sub_10000A7FC();

      __asm { BRAA            X1, X16 }
    }

    v15 = swift_task_alloc();
    v16 = sub_1000080CC(v15);
    *v16 = v17;
    sub_100003064(v16);
    sub_10000A7FC();

    return sub_1000EBD88(v18);
  }

  else
  {
    v21 = *(v0 + 240);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    v40 = *(v0 + 176);
    v26 = *(v0 + 248) + 15;
    (*(v21 + 32))(*(v0 + 256), v1, v2);

    static ContinuousClock.Instant.now.getter();
    v27 = swift_task_alloc();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v28 = *(v21 + 8);
    *(v0 + 296) = v28;
    *(v0 + 304) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v28(v27, v2);

    static Duration.seconds(_:)();
    ContinuousClock.Instant.advanced(by:)();
    *(v0 + 312) = *(v25 + 8);
    *(v0 + 320) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v29 = sub_100003754();
    v30(v29);
    *(v0 + 128) = xmmword_1001723E0;
    *(v0 + 144) = 0;
    static Clock<>.continuous.getter();
    v31 = async function pointer to static Task<>.sleep<A>(until:tolerance:clock:)[1];
    v32 = swift_task_alloc();
    *(v0 + 328) = v32;
    sub_1000EE39C(&qword_1001BBA88, &type metadata accessor for ContinuousClock);
    sub_1000060CC();
    *v32 = v33;
    v32[1] = sub_1000E8838;
    v34 = *(v0 + 208);
    v35 = *(v0 + 176);
    v36 = *(v0 + 160);
    sub_10000A7FC();

    return static Task<>.sleep<A>(until:tolerance:clock:)();
  }
}

uint64_t sub_1000E8838()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;

  if (v0)
  {
    v9 = v2[39];
    v8 = v2[40];
    v10 = v2[26];
    v12 = v2[22];
    v11 = v2[23];
    v15 = v2 + 20;
    v13 = v2[20];
    v14 = v15[1];

    (*(v14 + 8))(v12, v13);
    v16 = sub_100003754();
    v9(v16);
  }

  else
  {
    v18 = v2[39];
    v17 = v2[40];
    v19 = v2[26];
    v20 = v2[23];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v21 = sub_100007660();
    v18(v21);
  }

  sub_1000059F8();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_1000E89E0()
{
  sub_100003884();
  v3 = sub_10003DD74();
  v4 = sub_100007660();
  v2(v4);
  if ((v3 & 1) == 0)
  {
    v5 = v1[32];

    v6 = v1[19];
    v7 = type metadata accessor for Date();
    sub_10000F18C(v7);
    v1[30] = v8;
    v1[31] = *(v9 + 64);
    v1[32] = sub_100002C58();
    v10 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    sub_100002F04(v10);
    v12 = *(v11 + 64);
    v1[33] = sub_100002C58();
    Strong = swift_weakLoadStrong();
    v1[34] = Strong;
    if (Strong)
    {
      v14 = swift_task_alloc();
      v15 = sub_100009B6C(v14);
      *v15 = v16;
      sub_10000A29C();
      sub_100003E20();
      sub_100003D20();

      return sub_1000E8FF4();
    }

    sub_100003978();
    sub_100009BFC(v19, v20, v21, v0);
    sub_10002C278(v1[33], &qword_1001BBA80, &qword_100172440);
    v22 = v1[33];
  }

  v23 = v1[32];

  if (qword_1001B8950 != -1)
  {
    sub_1000051D8();
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100002FD0(v24, qword_1001BBA68);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (sub_100003A34(v26))
  {
    v27 = sub_100007648();
    sub_10000BF10(v27);
    sub_100008348();
    sub_100013624(v28, v29, v30, v31);
    sub_100002BD0();
  }

  v32 = v1[19];

  sub_100005A88();
  v33 = swift_weakLoadStrong();
  v1[42] = v33;
  if (!v33)
  {
    sub_100005CE0();
    os_activity_scope_leave((v25 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  v34 = swift_task_alloc();
  v35 = sub_1000080CC(v34);
  *v35 = v36;
  sub_100013EA4(v35);
  sub_100007F4C();
  sub_100003D20();

  return sub_1000EBD88(v37);
}

uint64_t sub_1000E8CE4()
{
  sub_100002BAC();
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  sub_1000059F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000E8E18()
{
  sub_100003884();
  v1 = v0[36];
  v2 = v0[34];

  v3 = v0[33];

  v4 = v0[32];

  if (qword_1001B8950 != -1)
  {
    sub_1000051D8();
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002FD0(v5, qword_1001BBA68);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (sub_100002F80(v7))
  {
    v8 = sub_100007648();
    sub_10000A240(v8);
    sub_1000059D8(&_mh_execute_header, v9, v10, "Ending task to unload assets due to pending version change");
    sub_100002BD0();
  }

  v11 = v0[19];

  sub_100005A88();
  Strong = swift_weakLoadStrong();
  v0[42] = Strong;
  if (!Strong)
  {
    sub_100005CE0();
    os_activity_scope_leave((v6 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100004CC8();

    __asm { BRAA            X1, X16 }
  }

  v13 = swift_task_alloc();
  v14 = sub_1000080CC(v13);
  *v14 = v15;
  sub_100003064(v14);
  sub_100004CC8();

  return sub_1000EBD88(v16);
}

uint64_t sub_1000E8FF4()
{
  sub_100002BAC();
  v1[35] = v2;
  v1[36] = v0;
  v3 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[37] = v3;
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[38] = sub_100002C58();
  v6 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  v1[39] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[40] = State;
  sub_100002F44(State);
  v1[41] = v10;
  v12 = *(v11 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v13 = sub_100002C10();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000E9108()
{
  v233 = v0;
  v2 = *(v0 + 288);
  if ((sub_100019684() & 1) == 0)
  {
    if (qword_1001B8950 != -1)
    {
      sub_1000051D8();
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100002FD0(v56, qword_1001BBA68);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (sub_100002F80(v58))
    {
      v59 = sub_100007648();
      sub_10000A240(v59);
      sub_1000059D8(&_mh_execute_header, v60, v61, "While unloading assets for pending version change: no assets have a pending version change");
      sub_100002BD0();
    }

    v62 = *(v0 + 280);

    type metadata accessor for Date();
    v63 = sub_100007A04();
    sub_100009BFC(v63, v64, v65, v66);
LABEL_34:
    sub_100010BF0();

    sub_100002F54();
    goto LABEL_35;
  }

  if (qword_1001B8950 != -1)
  {
    sub_1000051D8();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 360) = sub_10000641C(v3, qword_1001BBA68);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (sub_100002F80(v5))
  {
    v6 = sub_100007648();
    sub_10000A240(v6);
    sub_1000059D8(&_mh_execute_header, v7, v8, "Unloading assets for pending version change");
    sub_100002BD0();
  }

  v9 = *(v0 + 288);

  *(v0 + 256) = &_swiftEmptySetSingleton;
  v10 = type metadata accessor for Date();
  *(v0 + 368) = v10;
  sub_100002F44(v10);
  *(v0 + 376) = v11;
  *(v0 + 384) = *(v12 + 64);
  *(v0 + 392) = swift_task_alloc();
  static Date.now.getter();
  v13 = swift_task_alloc();
  *(v0 + 400) = v13;
  static Date.- infix(_:_:)();
  v14 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  *(v0 + 408) = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004BA0();
  v15 = &enum case for LoadState.loaded(_:);
  if ((*(v14 + v9) & 0xC000000000000001) != 0)
  {
    v225 = v13;
    v227 = &_swiftEmptySetSingleton;
    v16 = *(v0 + 328);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    v231 = &_swiftEmptySetSingleton;
    sub_100012BCC();
    swift_retain_n();

    v230 = __CocoaSet.makeIterator()();
    LODWORD(v229) = enum case for LoadState.loaded(_:);
    v19 = (v16 + 104);
    v20 = (v16 + 8);
    while (1)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        v70 = *(v0 + 288);

        sub_1000464C0();
        v15 = &enum case for LoadState.loaded(_:);
        v13 = v225;
        v71 = v227;
        goto LABEL_40;
      }

      v22 = *(v0 + 352);
      v23 = *(v0 + 320);
      *(v0 + 272) = v21;
      type metadata accessor for InferenceProviderAsset(0);
      sub_100009E64();
      v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(v0 + 264);
      sub_100002D24();
      swift_beginAccess();
      (*v19)(v22, v229, v23);
      sub_100005CC8();
      sub_1000EE39C(&dword_1001BA628, v25);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (*(v0 + 192) == *(v0 + 208) && *(v0 + 200) == *(v0 + 216))
      {
        break;
      }

      v27 = *(v0 + 200);
      v28 = *(v0 + 216);
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_21;
      }

      v30 = *(v0 + 352);
      v31 = *(v0 + 320);
      v32 = &v24[v18[5]];
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (*(v0 + 224) == *(v0 + 240) && *(v0 + 232) == *(v0 + 248))
      {
        break;
      }

      v34 = *(v0 + 352);
      v35 = *(v0 + 320);
      v36 = *(v0 + 232);
      v37 = *(v0 + 248);
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v20)(v34, v35);
      if ((v38 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      if (*(*&v24[v18[12]] + 16))
      {
LABEL_23:
        swift_endAccess();
        goto LABEL_25;
      }

      v39 = *(*&v24[v18[11]] + 16);
      swift_endAccess();
      if (v39)
      {
LABEL_25:
        v47 = *(v0 + 264);
      }

      else
      {
        v48 = *(v0 + 264);
        v49 = v227;
        v50 = v227[2];
        if (v227[3] <= v50)
        {
          sub_100080444(v50 + 1, v40, v41, v42, v43, v44, v45, v46, v214, v215, v217, v219, v222, v223, v225, v227, v229, v230, v231, v232[0], v232[1], v232[2], v232[3], v232[4], v232[5], v232[6], v232[7], v232[8], v232[9], v232[10], v232[11], v232[12]);
          v49 = v231;
        }

        v51 = v49[5];
        Hasher.init(_seed:)();
        sub_10001214C();
        v52 = Hasher._finalize()();
        sub_100012804(v52, *(v49 + 32));
        v53 = _HashTable.nextHole(atOrAfter:)();
        v54 = sub_100004C00(v53);
        *(v55 + 8 * v54) = v48;
        v227 = v49;
        ++v49[2];
      }
    }

LABEL_21:
    (*v20)(*(v0 + 352), *(v0 + 320));
    goto LABEL_22;
  }

  v72 = *(v0 + 288);

  sub_100008468();
  v71 = sub_100011E30(v73, v72, v74, 0);
LABEL_40:
  v232[0] = sub_100011CBC(v71);
  sub_100002D60();
  sub_1000ECFAC(v232, v75);
  v76 = *(v0 + 288);

  v77 = v232[0];
  v78 = swift_task_alloc();
  *(v78 + 16) = v13;
  v79 = sub_10002B370(v76, sub_1000EE394, v78, v77);

  sub_10002B918(v79);
  *(v0 + 416) = v80;
  sub_10002B524();
  *(v0 + 424) = v81;
  if (v81 >> 62)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
    if (v82)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
LABEL_42:
      *(v0 + 472) = enum case for LoadState.loaded(_:);
      v83 = __OFSUB__(v82, 1);
      v84 = v82 - 1;
      *(v0 + 432) = v84;
      if (!v83)
      {
        v85 = *(v0 + 424);
        if ((v85 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:
          sub_1000032C8();
          v89 = sub_100007A04();
          sub_100009BFC(v89, v90, v91, v92);
          v93 = swift_task_alloc();
          *(v0 + 448) = v93;
          *v93 = v0;
          sub_100003BD0(v93);
          sub_10001E688();

          return sub_10002BA5C();
        }

        if (v84 < 0)
        {
          __break(1u);
        }

        else
        {
          sub_100007900(v84, v85);
          if (!v88)
          {
            sub_100011174(v86, v87);
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_70:
        v131 = *(v0 + 360);

        v132 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();
        sub_1000089B8();

        if (sub_10000A098())
        {
          sub_100007698();
          v133 = sub_10000359C();
          v232[0] = v133;
          *v15 = 136315138;
          v134 = sub_1001196B4(v222, v229);
          v136 = sub_100004A3C(v134, v135, v232);

          *(v15 + 4) = v136;
          sub_100008348();
          sub_10001344C(v137, v138, v139, v140);
          sub_100003324(v133);
          sub_100002BD0();

          sub_100002BD0();
        }

        v141 = *(v0 + 392);
        v143 = *(v0 + 368);
        v142 = *(v0 + 376);
        v144 = type metadata accessor for ModelManagerError();
        sub_1000086D4();
        sub_1000EE39C(v145, v146);
        v147 = sub_100008194();
        sub_10002AB60(v147, v148);
        sub_100006098(v144);
        (*(v149 + 104))();
        swift_willThrow();

        v130 = *(v142 + 8);
        v150 = sub_10000A9EC();
        v130(v150);
        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  v95 = *(v0 + 360);
  v76 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  v97 = sub_100002F80(v96);
  v99 = *(v0 + 416);
  v98 = *(v0 + 424);
  if (!v97)
  {
LABEL_55:

    goto LABEL_56;
  }

  v15 = sub_100007648();
  *v15 = 0;

  sub_1000265D4(&_mh_execute_header, v100, v101, "Finished unloading assets for version change");
  sub_100002BD0();

LABEL_56:

  sub_10002AB6C();

  sub_100008468();
  sub_10000BF1C();
  v106 = sub_100038E28(v102, v103, v104, v105);
  v232[0] = sub_100011CBC(v106);
  sub_100002D60();
  sub_1000ECFAC(v232, v107);

  v108 = v232[0];
  if (v232[0] < 0 || (v232[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_85;
  }

  if (!*(v232[0] + 16))
  {
LABEL_86:
    v204 = *(v0 + 360);

    v205 = Logger.logObject.getter();
    v206 = static os_log_type_t.default.getter();
    if (sub_10000320C(v206))
    {
      v207 = sub_100007648();
      sub_10000A240(v207);
      sub_10000EDF4(&_mh_execute_header, v208, v209, "While unloading assets for pending version change: no more assets can be unloaded, attempting version switch");
      sub_100002BD0();
    }

    v210 = *(v0 + 288);

    v211 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

    v212 = swift_task_alloc();
    *(v0 + 464) = v212;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v212 = v213;
    sub_1000058A0();
    v235 = &protocol witness table for Never;
    v234 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();
    sub_10001E688();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v193, v194, v195);
  }

LABEL_59:
  v109 = sub_10002CC90(v108);
  v222 = sub_100013B74(v109, v110);
  v112 = v111;

  v229 = v112;
  v113 = *(v112 + 16);
  if (!v113)
  {
    goto LABEL_70;
  }

  v114 = *(v0 + 368);
  v108 = *(v0 + 376);
  v224 = *(v0 + 296);
  v115 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v115);
  v216 = *(v116 + 64) + 15;
  v220 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v117, v118, v119, v114);
  v226 = (v108 + 16);
  v15 = (v108 + 8);
  v120 = v229;

  v121 = 0;
  v218 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v228 = (v108 + 8);
  while (1)
  {
    if (v121 >= v113)
    {
      __break(1u);
LABEL_85:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_86;
      }

      goto LABEL_59;
    }

    sub_1000063C4();
    v122 = *(v0 + 304);
    v123 = *(v120 + 8 * v121 + 32);
    v113 = swift_task_alloc();
    v124 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v124 + v123, v122);
    v125 = swift_task_alloc();
    v126 = v122 + *(v224 + 36);
    v127 = v122 + *(v224 + 32);
    sub_10002B0EC();

    sub_100004CA4();
    v128 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v108 = *v226;
    v129 = (v128 & 1) != 0 ? v127 : v126;
    (v108)(v125, v129, v114);
    sub_1000193F0(v122);
    static Date.+ infix(_:_:)();
    v15 = v228;
    v130 = *v228;
    (*v228)(v125, v114);

    v114 = static Date.> infix(_:_:)();

    if (v114)
    {
      break;
    }

    ++v121;
    (v130)(v113, *(v0 + 368));

    v120 = v229;
    v113 = *(v229 + 16);
    if (v121 == v113)
    {

      goto LABEL_74;
    }
  }

  v151 = *(v0 + 368);
  v152 = *(v0 + 376);

  sub_10002C278(v220, &qword_1001BBA80, &qword_100172440);
  (*(v152 + 32))(v220, v113, v151);
  sub_1000070D0(v220);

LABEL_74:
  v153 = *(v0 + 368);
  v154 = sub_100005FA4();
  sub_1000316A0(v154, v155, v156, v157, v158, v159, v160, v161, v214, v216, v218, v220);
  sub_100007204();
  sub_10002C278(v113, &qword_1001BBA80, &qword_100172440);

  if (v153 != 1)
  {
    v182 = *(v0 + 384);
    v183 = *(v0 + 392);
    v184 = *(v0 + 360);
    v185 = *(v0 + 368);
    sub_100002C58();
    sub_100003904();
    (v108)();
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v186, v187))
    {
      v198 = *(v0 + 392);
      v199 = *(v0 + 368);

      v200 = sub_100009524();
      v130(v200);
      (v130)(v198, v199);

      goto LABEL_83;
    }

    v188 = *(v0 + 368);
    v189 = sub_100007698();
    *v189 = 134217984;
    sub_100003474();
    v190 = sub_100005FA4();
    sub_10002CC20(v185, v190);
    v191 = sub_10000205C();
    v193 = sub_10000C6C0(v191, v192, v188);
    if (v193 != 1)
    {
      v185 = *(v0 + 392);
      v196 = *(v0 + 368);
      Date.timeIntervalSince(_:)();
      v197 = sub_100003228();
      v130(v197);
      (v130)(v190, v196);

      *(v189 + 4) = v1;
      sub_100005EB0(&_mh_execute_header, v186, v187, "While unloading assets for pending version change: additional assets need unloading, next task wake in %f seconds");
      sub_100002BD0();

      (v130)(v185, v196);
LABEL_83:
      sub_10000892C();
      v201 = sub_100004CA4();
      sub_10002CC20(v201, v202);
      sub_10002C278(v185, &qword_1001BBA80, &qword_100172440);

      v203 = sub_100007660();
      v130(v203);

      goto LABEL_34;
    }

    __break(1u);
    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v193, v194, v195);
  }

  v162 = *(v0 + 360);

  v163 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();
  sub_1000089B8();

  if (sub_10000A098())
  {
    v164 = sub_100007698();
    v165 = sub_1000031E0();
    v232[0] = v165;
    *v164 = 136315138;
    v166 = sub_1001196B4(v222, v229);
    v168 = sub_100004A3C(v166, v167, v232);

    *(v164 + 4) = v168;
    sub_100008348();
    _os_log_impl(v169, v170, v171, v172, v164, 0xCu);
    sub_100003324(v165);
    sub_100002BD0();

    sub_100002BD0();
  }

  v173 = *(v0 + 392);
  v174 = *(v0 + 368);
  v175 = type metadata accessor for ModelManagerError();
  sub_1000086D4();
  sub_1000EE39C(v176, v177);
  v178 = sub_10000A418();
  sub_10002AB60(v178, v179);
  sub_100006098(v175);
  (*(v180 + 104))();
  swift_willThrow();

  (v130)(v173, v174);
  sub_10002C278(v221, &qword_1001BBA80, &qword_100172440);

LABEL_78:
  v181 = sub_10002B0A4();
  v130(v181);

  sub_100001F00();
LABEL_35:
  sub_10001E688();

  return v67();
}

uint64_t sub_1000EA188()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = v2[56];
  *v4 = *v1;
  *(v3 + 456) = v0;

  v6 = v2[39];
  v7 = v2[36];
  if (v0)
  {

    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);
    v8 = sub_1000EB144;
  }

  else
  {
    sub_10002C278(v6, &qword_1001BB3F8, &qword_100171D50);
    v8 = sub_1000EA2F8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000EA2F8()
{
  v179 = v0;
  v3 = *(v0 + 456);
  v4 = *(v0 + 440);
  v5 = *(v0 + 472);
  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  v10 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0();
  (*(v9 + 16))(v6, &v10[v4], v8);
  (*(v9 + 104))(v7, v5, v8);
  sub_100005CC8();
  sub_1000EE39C(v11, v12);
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10000A9EC();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v0 + 168);
  v14 = *(v0 + 184);
  v16 = *(v0 + 336);
  v15 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = (*(v0 + 328) + 8);
  if (*(v0 + 160) == *(v0 + 176) && v13 == v14)
  {
    v25 = *v18;
    (*v18)(*(v0 + 336), *(v0 + 320));
    v26 = sub_1000071D0();
    v25(v26);
  }

  else
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 184);
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v1 = *v18;
    (*v18)(v16, v17);
    v23 = sub_1000071D0();
    (v1)(v23);

    if ((v22 & 1) == 0)
    {
      v24 = *(v0 + 440);
      goto LABEL_9;
    }
  }

  v13 = (v0 + 256);
  sub_10001A264(v178, *(v0 + 440));
LABEL_9:

  v27 = *(v0 + 432);
  if (v27)
  {
    v28 = v27 - 1;
    *(v0 + 432) = v27 - 1;
    if (!__OFSUB__(v27, 1))
    {
      v29 = *(v0 + 424);
      if ((v29 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
        sub_1000032C8();
        v33 = sub_100007A04();
        sub_100009BFC(v33, v34, v35, v36);
        v37 = swift_task_alloc();
        *(v0 + 448) = v37;
        *v37 = v0;
        sub_100003BD0();
        sub_100007A90();

        return sub_10002BA5C();
      }

      if (v28 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_100007900(v28, v29);
        if (!v32)
        {
          sub_100011174(v30, v31);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_38:
      v74 = *(v0 + 360);

      v75 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();

      if (sub_10000A098())
      {
        sub_100007698();
        v76 = sub_10000359C();
        v178[0] = v76;
        *v17 = 136315138;
        v77 = sub_1001196B4(v174, v1);
        v79 = sub_100004A3C(v77, v78, v178);

        *(v17 + 4) = v79;
        sub_100008348();
        sub_10001344C(v80, v81, v82, v83);
        sub_100003324(v76);
        sub_100002BD0();

        sub_100002BD0();
      }

      v84 = *(v0 + 392);
      v85 = *(v0 + 368);
      v86 = *(v0 + 376);
      v87 = type metadata accessor for ModelManagerError();
      sub_1000086D4();
      sub_1000EE39C(v88, v89);
      v90 = sub_100008194();
      sub_10002AB60(v90, v91);
      sub_100006098(v87);
      (*(v92 + 104))(v93, v94, v87);
      swift_willThrow();

      v73 = *(v86 + 8);
      v73(v84, v85);
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_22;
  }

  v40 = *(v0 + 360);
  v13 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = sub_100002F80(v41);
  v44 = *(v0 + 416);
  v43 = *(v0 + 424);
  if (!v42)
  {
LABEL_22:

    goto LABEL_23;
  }

  v45 = sub_100007648();
  *v45 = 0;

  _os_log_impl(&_mh_execute_header, v13, v14, "Finished unloading assets for version change", v45, 2u);
  sub_100002BD0();

LABEL_23:

  sub_10002AB6C();

  sub_100008468();
  sub_10000BF1C();
  v50 = sub_100038E28(v46, v47, v48, v49);
  v178[0] = sub_100011CBC(v50);
  sub_100002D60();
  sub_1000ECFAC(v178, v51);
  if (v3)
  {

    sub_100007A90();
  }

  v53 = v178[0];
  if (v178[0] < 0 || (v178[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  if (!*(v178[0] + 16))
  {
LABEL_57:
    v159 = *(v0 + 360);

    v160 = Logger.logObject.getter();
    v161 = static os_log_type_t.default.getter();
    if (sub_10000320C(v161))
    {
      v162 = sub_100007648();
      sub_10000A240(v162);
      sub_10000EDF4(&_mh_execute_header, v163, v164, "While unloading assets for pending version change: no more assets can be unloaded, attempting version switch");
      sub_100002BD0();
    }

    v165 = *(v0 + 288);

    v166 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

    v167 = swift_task_alloc();
    *(v0 + 464) = v167;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v167 = v168;
    sub_1000058A0();
    v181 = &protocol witness table for Never;
    v180 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();
    sub_100010C94();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v145, v146, v147);
  }

LABEL_30:
  v54 = sub_10002CC90(v53);
  v17 = sub_100013B74(v54, v55);
  v1 = v56;

  v57 = *(v1 + 16);
  v174 = v17;
  if (!v57)
  {
    goto LABEL_38;
  }

  v58 = *(v0 + 368);
  v53 = *(v0 + 376);
  v175 = *(v0 + 296);
  v59 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v59);
  v170 = *(v60 + 64) + 15;
  v172 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v61, v62, v63, v58);
  v176 = (v53 + 16);

  v64 = 0;
  v177 = (v53 + 8);
  v65 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v171 = v65;
  while (1)
  {
    if (v64 >= v57)
    {
      __break(1u);
LABEL_56:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_57;
      }

      goto LABEL_30;
    }

    sub_1000063C4();
    v66 = *(v0 + 304);
    v67 = *(v1 + 8 * v64 + 32);
    swift_task_alloc();
    v68 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v68 + v67, v66);
    v69 = swift_task_alloc();
    v70 = v66 + *(v175 + 36);
    v71 = v66 + *(v175 + 32);
    v53 = sub_10002B0EC();

    sub_100004CA4();
    dispatch thunk of static Comparable.>= infix(_:_:)();
    v72 = sub_100018C68(v176);
    v53(v72);
    sub_1000193F0(v66);
    static Date.+ infix(_:_:)();
    v73 = *v177;
    (*v177)(v69, v65);

    v65 = static Date.> infix(_:_:)();

    if (v65)
    {
      break;
    }

    ++v64;
    v73(v71, *(v0 + 368));

    v57 = *(v1 + 16);
    if (v64 == v57)
    {

      goto LABEL_42;
    }
  }

  v95 = *(v0 + 368);
  v96 = *(v0 + 376);

  sub_10002C278(v172, &qword_1001BBA80, &qword_100172440);
  v97 = *(v96 + 32);
  v64 = v96 + 32;
  v98 = sub_1000071D0();
  v99(v98);
  sub_1000070D0(v172);

LABEL_42:
  v100 = *(v0 + 368);
  v101 = sub_100005FA4();
  sub_1000316A0(v101, v102, v103, v104, v105, v106, v107, v108, v1, v170, v171, v172);
  sub_100007204();
  sub_10002C278(v64, &qword_1001BBA80, &qword_100172440);

  if (v100 == 1)
  {
    v109 = *(v0 + 360);

    v110 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      v111 = sub_100007698();
      v112 = sub_1000031E0();
      v178[0] = v112;
      *v111 = 136315138;
      v113 = sub_1001196B4(v174, v169);
      v115 = sub_100004A3C(v113, v114, v178);

      *(v111 + 4) = v115;
      sub_100008348();
      _os_log_impl(v116, v117, v118, v119, v111, 0xCu);
      sub_100003324(v112);
      sub_100002BD0();

      sub_100002BD0();
    }

    v120 = *(v0 + 392);
    v121 = *(v0 + 368);
    v122 = type metadata accessor for ModelManagerError();
    sub_1000086D4();
    sub_1000EE39C(v123, v124);
    v125 = sub_10000A418();
    sub_10002AB60(v125, v126);
    sub_100006098(v122);
    (*(v127 + 104))();
    swift_willThrow();

    v73(v120, v121);
    sub_10002C278(v173, &qword_1001BBA80, &qword_100172440);

LABEL_46:
    v128 = *(v0 + 392);
    v130 = *(v0 + 344);
    v129 = *(v0 + 352);
    v131 = *(v0 + 336);
    v133 = *(v0 + 304);
    v132 = *(v0 + 312);
    v73(*(v0 + 400), *(v0 + 368));

    sub_100001F00();
LABEL_52:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v134 = *(v0 + 384);
  v135 = *(v0 + 392);
  v136 = *(v0 + 360);
  v137 = *(v0 + 368);
  sub_100002C58();
  sub_100003904();
  (v53)();
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v138, v139))
  {
    v151 = *(v0 + 392);
    v152 = *(v0 + 368);

    v153 = sub_100009524();
    (v73)(v153);
    v73(v151, v152);

    goto LABEL_51;
  }

  v140 = *(v0 + 368);
  v141 = sub_100007698();
  *v141 = 134217984;
  sub_100004BA0();
  v142 = sub_100005FA4();
  sub_10002CC20(v173, v142);
  v143 = sub_10000205C();
  v145 = sub_10000C6C0(v143, v144, v140);
  if (v145 != 1)
  {
    v148 = *(v0 + 392);
    v149 = *(v0 + 368);
    Date.timeIntervalSince(_:)();
    v150 = sub_100003228();
    (v73)(v150);
    v73(v142, v149);

    *(v141 + 4) = v2;
    sub_100005EB0(&_mh_execute_header, v138, v139, "While unloading assets for pending version change: additional assets need unloading, next task wake in %f seconds");
    sub_100002BD0();

    v73(v148, v149);
LABEL_51:
    sub_10000892C();
    v154 = sub_100004CA4();
    sub_10002CC20(v154, v155);
    sub_10002C278(v138, &qword_1001BBA80, &qword_100172440);

    v156 = sub_100007660();
    (v73)(v156);

    sub_100010BF0();

    sub_100002F54();
    goto LABEL_52;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v145, v146, v147);
}

uint64_t sub_1000EAF68()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 288);
    v11 = *(v3 + 256);

    v12 = sub_100002C10();

    return _swift_task_switch(v12, v13, v14);
  }

  return result;
}

uint64_t sub_1000EB06C()
{
  sub_100003884();
  v1 = v0[50];
  v2 = v0[46];
  v3 = v0[35];
  v4 = *(v0[47] + 8);
  (v4)(v0[49], v2);
  sub_100003978();
  sub_100009BFC(v5, v6, v7, v2);
  v8 = sub_100007660();
  v4(v8);

  sub_100010BF0();

  sub_100002F54();

  return v9();
}

uint64_t sub_1000EB144()
{
  v173 = v0;
  v2 = *(v0 + 440);
  v3 = *(v0 + 472);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v8 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  sub_100004BA0();
  (*(v7 + 16))(v4, &v8[v2], v6);
  (*(v7 + 104))(v5, v3, v6);
  sub_100005CC8();
  sub_1000EE39C(v9, v10);
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_1000071D0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v0 + 168);
  v13 = *(v0 + 336);
  v12 = *(v0 + 344);
  v14 = *(v0 + 320);
  v15 = (*(v0 + 328) + 8);
  if (*(v0 + 160) == *(v0 + 176) && v11 == *(v0 + 184))
  {
    v19 = *v15;
    v24 = sub_100004CA4();
    (v19)(v24);
    v25 = sub_100003754();
    (v19)(v25);
  }

  else
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 184);
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v20 = *v15;
    v21 = sub_100004CA4();
    v20(v21);
    v22 = sub_100003754();
    v20(v22);

    if ((v19 & 1) == 0)
    {
      v23 = *(v0 + 440);
      goto LABEL_9;
    }
  }

  v11 = (v0 + 256);
  sub_10001A264(v172, *(v0 + 440));
LABEL_9:

  v26 = *(v0 + 432);
  if (v26)
  {
    v27 = v26 - 1;
    *(v0 + 432) = v26 - 1;
    if (!__OFSUB__(v26, 1))
    {
      v28 = *(v0 + 424);
      if ((v28 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
        sub_1000032C8();
        v32 = sub_100007A04();
        sub_100009BFC(v32, v33, v34, v35);
        v36 = swift_task_alloc();
        *(v0 + 448) = v36;
        *v36 = v0;
        sub_100003BD0();
        sub_100007A90();

        return sub_10002BA5C();
      }

      if (v27 < 0)
      {
        __break(1u);
      }

      else
      {
        sub_100007900(v27, v28);
        if (!v31)
        {
          sub_100011174(v29, v30);
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_34:
      v73 = *(v0 + 360);

      v74 = Logger.logObject.getter();
      static os_log_type_t.fault.getter();
      v75 = v19;

      if (sub_10000A098())
      {
        sub_100007698();
        v76 = sub_10000359C();
        v172[0] = v76;
        *v13 = 136315138;
        v77 = sub_1001196B4(v75, v13);
        v79 = sub_100004A3C(v77, v78, v172);

        *(v13 + 4) = v79;
        sub_100008348();
        sub_10001344C(v80, v81, v82, v83);
        sub_100003324(v76);
        sub_100002BD0();

        sub_100002BD0();
      }

      v84 = *(v0 + 392);
      v86 = *(v0 + 368);
      v85 = *(v0 + 376);
      v87 = type metadata accessor for ModelManagerError();
      sub_1000086D4();
      sub_1000EE39C(v88, v89);
      v90 = sub_100008194();
      sub_10002AB60(v90, v91);
      sub_100006098(v87);
      (*(v92 + 104))();
      swift_willThrow();

      v72 = *(v85 + 8);
      v93 = sub_10000A9EC();
      (v72)(v93);
      goto LABEL_42;
    }

    __break(1u);
  }

  else
  {
    v39 = *(v0 + 360);
    v11 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = sub_100002F80(v40);
    v43 = *(v0 + 416);
    v42 = *(v0 + 424);
    if (v41)
    {
      *sub_100007648() = 0;

      sub_1000265D4(&_mh_execute_header, v44, v45, "Finished unloading assets for version change");
      sub_100002BD0();

      goto LABEL_23;
    }
  }

LABEL_23:

  sub_10002AB6C();

  sub_100008468();
  sub_10000BF1C();
  v50 = sub_100038E28(v46, v47, v48, v49);
  v172[0] = sub_100011CBC(v50);
  sub_100002D60();
  sub_1000ECFAC(v172, v51);

  v52 = v172[0];
  if (v172[0] < 0 || (v172[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_52;
  }

  if (!*(v172[0] + 16))
  {
LABEL_53:
    v152 = *(v0 + 360);

    v153 = Logger.logObject.getter();
    v154 = static os_log_type_t.default.getter();
    if (sub_10000320C(v154))
    {
      v155 = sub_100007648();
      sub_10000A240(v155);
      sub_10000EDF4(&_mh_execute_header, v156, v157, "While unloading assets for pending version change: no more assets can be unloaded, attempting version switch");
      sub_100002BD0();
    }

    v158 = *(v0 + 288);

    v159 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

    v160 = swift_task_alloc();
    *(v0 + 464) = v160;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    sub_1000060CC();
    *v160 = v161;
    sub_1000058A0();
    v175 = &protocol witness table for Never;
    v174 = &type metadata for Never;
    sub_10000A638();
    sub_100019AD8();
    sub_100010C94();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v139, v140, v141);
  }

LABEL_26:
  v53 = sub_10002CC90(v52);
  v19 = sub_100013B74(v53, v54);
  v13 = v55;

  v56 = *(v13 + 16);
  if (!v56)
  {
    goto LABEL_34;
  }

  v57 = *(v0 + 368);
  v52 = *(v0 + 376);
  v168 = *(v0 + 296);
  v58 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v58);
  v162 = *(v59 + 64) + 15;
  v166 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v60, v61, v62, v57);
  v169 = (v52 + 16);

  v164 = v19;

  v63 = 0;
  v170 = v13;
  v171 = (v52 + 8);
  v64 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v163 = v64;
  while (1)
  {
    if (v63 >= v56)
    {
      __break(1u);
LABEL_52:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_53;
      }

      goto LABEL_26;
    }

    sub_1000063C4();
    v65 = *(v0 + 304);
    v66 = *(v13 + 8 * v63 + 32);
    swift_task_alloc();
    v67 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v67 + v66, v65);
    v68 = swift_task_alloc();
    v69 = v65 + *(v168 + 36);
    v70 = v65 + *(v168 + 32);
    v52 = sub_10002B0EC();

    sub_100004CA4();
    dispatch thunk of static Comparable.>= infix(_:_:)();
    v71 = sub_100018C68(v169);
    v52(v71);
    sub_1000193F0(v65);
    static Date.+ infix(_:_:)();
    v72 = *v171;
    (*v171)(v68, v64);

    v64 = static Date.> infix(_:_:)();

    if (v64)
    {
      break;
    }

    ++v63;
    v72(v70, *(v0 + 368));

    v13 = v170;
    v56 = *(v170 + 16);
    if (v63 == v56)
    {

      goto LABEL_38;
    }
  }

  v94 = *(v0 + 368);
  v95 = *(v0 + 376);

  sub_10002C278(v166, &qword_1001BBA80, &qword_100172440);
  v96 = *(v95 + 32);
  v63 = v95 + 32;
  v97 = sub_1000071D0();
  v98(v97);
  sub_1000070D0(v166);

LABEL_38:
  v99 = *(v0 + 368);
  v100 = swift_task_alloc();
  sub_1000316A0(v100, v101, v102, v103, v104, v105, v106, v107, v162, v163, v164, v166);
  sub_100007204();
  sub_10002C278(v63, &qword_1001BBA80, &qword_100172440);

  if (v99 == 1)
  {
    v108 = *(v0 + 360);

    v109 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000089B8();

    if (sub_10000A098())
    {
      v110 = sub_100007698();
      v111 = sub_1000031E0();
      v172[0] = v111;
      *v110 = 136315138;
      v112 = sub_1001196B4(v165, v170);
      v114 = sub_100004A3C(v112, v113, v172);

      *(v110 + 4) = v114;
      sub_100008348();
      _os_log_impl(v115, v116, v117, v118, v110, 0xCu);
      sub_100003324(v111);
      sub_100002BD0();

      sub_100002BD0();
    }

    v119 = *(v0 + 392);
    v120 = *(v0 + 368);
    v121 = type metadata accessor for ModelManagerError();
    sub_1000086D4();
    sub_1000EE39C(v122, v123);
    v124 = sub_10000A418();
    sub_10002AB60(v124, v125);
    sub_100006098(v121);
    (*(v126 + 104))();
    swift_willThrow();

    v72(v119, v120);
    sub_10002C278(v167, &qword_1001BBA80, &qword_100172440);

LABEL_42:
    v127 = sub_10002B0A4();
    (v72)(v127);

    sub_100001F00();
LABEL_48:
    sub_100007A90();

    __asm { BRAA            X1, X16 }
  }

  v128 = *(v0 + 384);
  v129 = *(v0 + 392);
  v130 = *(v0 + 360);
  v131 = *(v0 + 368);
  sub_100002C58();
  sub_100003904();
  (v52)();
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v132, v133))
  {
    v144 = *(v0 + 392);
    v145 = *(v0 + 368);

    v146 = sub_100009524();
    (v72)(v146);
    v72(v144, v145);

    goto LABEL_47;
  }

  v134 = *(v0 + 368);
  v135 = sub_100007698();
  *v135 = 134217984;
  sub_100003474();
  v136 = swift_task_alloc();
  sub_10002CC20(v131, v136);
  v137 = sub_10000205C();
  v139 = sub_10000C6C0(v137, v138, v134);
  if (v139 != 1)
  {
    v131 = *(v0 + 392);
    v142 = *(v0 + 368);
    Date.timeIntervalSince(_:)();
    v143 = sub_100003228();
    (v72)(v143);
    v72(v136, v142);

    *(v135 + 4) = v1;
    sub_100005EB0(&_mh_execute_header, v132, v133, "While unloading assets for pending version change: additional assets need unloading, next task wake in %f seconds");
    sub_100002BD0();

    v72(v131, v142);
LABEL_47:
    sub_10000892C();
    v147 = sub_100004CA4();
    sub_10002CC20(v147, v148);
    sub_10002C278(v131, &qword_1001BBA80, &qword_100172440);

    v149 = sub_100007660();
    (v72)(v149);

    sub_100010BF0();

    sub_100002F54();
    goto LABEL_48;
  }

  __break(1u);
  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v139, v140, v141);
}

uint64_t sub_1000EBD88(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return _swift_task_switch(sub_1000EBDAC, v1, 0);
}

uint64_t sub_1000EBDAC()
{
  sub_100002BAC();
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask);
  *(v1 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask) = 0;

  if (v2 == 1 && (v4 = *(v0 + 16), sub_1000E7B78()))
  {
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_1000486E8;
    v6 = *(v0 + 16);

    return sub_1000440E8();
  }

  else
  {
    sub_100001F00();

    return v8();
  }
}

uint64_t sub_1000EBE98(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v8 = a1 + *(v7 + 36);
  v9 = a1 + *(v7 + 32);
  sub_10002B0EC();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  (*(v3 + 16))(v6, v10, v2);
  v11 = dispatch thunk of static Comparable.<= infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v11 & 1;
}

uint64_t sub_1000EBFD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE528;

  return sub_100025A00();
}

void *sub_1000EC068(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v33 = v2;
    v5 = &_swiftEmptySetSingleton;
    v45 = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
LABEL_3:
    while (1)
    {
      v6 = __CocoaSet.Iterator.next()();
      if (!v6)
      {
        break;
      }

      v34 = v6;
      type metadata accessor for InferenceProviderAsset(0);
      swift_dynamicCast();
      v7 = InferenceProviderAssetDescriptor.identifier.getter();
      v9 = v8;
      if (*(a2 + 16))
      {
        v10 = v7;
        v11 = *(a2 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v12 = Hasher._finalize()();
        v13 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v14 = v12 & v13;
          if (((*(a2 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
          {
            break;
          }

          v15 = (*(a2 + 48) + 16 * v14);
          if (*v15 != v10 || v15[1] != v9)
          {
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v12 = v14 + 1;
            if ((v17 & 1) == 0)
            {
              continue;
            }
          }

          v25 = v43;
          v26 = v5[2];
          if (v5[3] <= v26)
          {
            sub_100080444(v26 + 1, v18, v19, v20, v21, v22, v23, v24, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, vars0, vars8);
          }

          v5 = v45;
          v27 = *(v45 + 5);
          Hasher.init(_seed:)();
          sub_10001214C();
          Hasher._finalize()();
          v28 = -1 << v45[32];
          v29 = _HashTable.nextHole(atOrAfter:)();
          *&v45[((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56] |= 1 << v29;
          *(*(v45 + 6) + 8 * v29) = v25;
          ++*(v45 + 2);
          goto LABEL_3;
        }
      }
    }

    swift_bridgeObjectRelease_n();

    return v5;
  }

  else
  {

    v31 = sub_1000EC570(a1, a2);

    return v31;
  }
}

uint64_t sub_1000EC2C8(uint64_t a1, _UNKNOWN **a2)
{
  v3 = v2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v31 = a2;
    v32 = v3;
    v29 = &v28;
    __chkstk_darwin(v10);
    v9 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    v30 = v8;
    sub_100011624(0, v8, v9);
    v33 = 0;
    v3 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v8 = v16 & *(a1 + 56);
    v17 = (v15 + 63) >> 6;
    a2 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    while (v8)
    {
      v18 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v21 = v18 | (v3 << 6);
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(*(a1 + 48) + 8 * v21);
      swift_beginAccess();
      if (v22[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 56)] == 1)
      {
        *&v9[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1000120FC(v9, v30, v33, a1, v11, v12, v13, v14, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, vars0, vars8);
          v25 = v24;

          return v25;
        }
      }
    }

    v19 = v3;
    while (1)
    {
      v3 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v3 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(a1 + 56 + 8 * v3);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v8 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_1000ECD64(v27);

  return v25;
}

void *sub_1000EC570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v43 = v3;
    v41 = &v40;
    __chkstk_darwin(v10);
    v42 = v8;
    v44 = &v40 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v8, v44);
    v45 = v5;
    v46 = 0;
    v15 = 0;
    v8 = v5 + 56;
    v16 = 1 << *(v5 + 32);
    v17 = v16 < 64 ? ~(-1 << v16) : -1;
    v18 = v17 & *(v5 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = a2;
    v49 = a2 + 56;
LABEL_6:
    while (v18)
    {
      v21 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
LABEL_13:
      v24 = v21 | (v15 << 6);
      v25 = *(v5 + 48);
      v47 = v24;
      a2 = *(v25 + 8 * v24);

      v26 = InferenceProviderAssetDescriptor.identifier.getter();
      v28 = v27;
      if (*(v20 + 16))
      {
        v9 = v26;
        v29 = *(v20 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v30 = Hasher._finalize()();
        v31 = ~(-1 << *(v20 + 32));
        while (1)
        {
          v3 = v30 & v31;
          if (((*(v49 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
          {
            break;
          }

          v32 = (*(v20 + 48) + 16 * v3);
          if (*v32 != v9 || v32[1] != v28)
          {
            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v30 = v3 + 1;
            if ((v34 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v45;
          *(v44 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
          v35 = __OFADD__(v46++, 1);
          v18 = v48;
          if (v35)
          {
            goto LABEL_28;
          }

          goto LABEL_6;
        }
      }

      v5 = v45;
      v18 = v48;
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        sub_1000120FC(v44, v42, v46, v5, v11, v12, v13, v14, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
        v37 = v36;
        goto LABEL_26;
      }

      v23 = *(v8 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();

  v37 = sub_1000ECF0C(v39, v8, v5, a2);

LABEL_26:
  swift_bridgeObjectRelease_n();
  return v37;
}

uint64_t sub_1000ECA6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = result;
  v36 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v50 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v39 = (v9 - 1) & v9;
LABEL_12:
    v37 = v11 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v37);

    v15 = InferenceProviderAssetDescriptor.identifier.getter();
    v17 = v16;
    if (*(a4 + 16))
    {
      v18 = v15;
      v19 = *(a4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v22 = v20 & v21;
        if (((*(v50 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          break;
        }

        v23 = (*(a4 + 48) + 16 * v22);
        if (*v23 != v18 || v23[1] != v17)
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v20 = v22 + 1;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        *(v35 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        v26 = __OFADD__(v36++, 1);
        v9 = v39;
        if (v26)
        {
          goto LABEL_26;
        }

        goto LABEL_5;
      }
    }

    v9 = v39;
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      sub_1000120FC(v35, a2, v36, a3, v27, v28, v29, v30, a2, v34, v35, v36, v37, a3, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
      v32 = v31;

      return v32;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1000ECCAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v12 = sub_1000EC8D8(v11, a2, a3, a4, a5, a6);

    return v12;
  }

  return result;
}

void *sub_1000ECF0C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1000ECA6C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1000ECFAC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v38 = a2;
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v29 - v9;
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_10014AFE0(v11);
    *a1 = v11;
  }

  v13 = *(v11 + 16);
  v31 = v11 + 32;
  v37[0] = (v11 + 32);
  v37[1] = v13;
  v14 = _minimumMergeRunLength(_:)(v13);
  if (v14 >= v13)
  {
    if (v13 >= 2)
    {
      v29[1] = a1;
      v29[2] = v2;
      v18 = -1;
      v19 = 1;
      v20 = v31;
      v30 = v13;
      do
      {
        v33 = v19;
        v34 = v18;
        v21 = *(v31 + 8 * v19);
        v32 = v20;
        v22 = v20;
        do
        {
          v23 = *v22;
          v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v24 + v21, v10);
          v25 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          sub_10001938C(v25 + v23, v8);

          LOBYTE(v25) = v38(v10, v8);
          sub_1000193F0(v8);
          sub_1000193F0(v10);

          if ((v25 & 1) == 0)
          {
            break;
          }

          v26 = *v22;
          v21 = v22[1];
          *v22 = v21;
          v22[1] = v26;
          --v22;
        }

        while (!__CFADD__(v18++, 1));
        v19 = v33 + 1;
        v20 = v32 + 1;
        v18 = v34 - 1;
      }

      while (v33 + 1 != v30);
    }
  }

  else
  {
    v15 = v14;
    v16 = sub_100065B18(v13 >> 1);
    v36[0] = v17;
    v36[1] = (v13 >> 1);
    sub_1000ED208(v36, v35, v37, v15, v38);
    *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_1000ED208(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v163 = a5;
  v146 = a1;
  v7 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v162 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v161 = &v144 - v11;
  v151 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v145 = a4;
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = v13;
      v16 = v13 + 1;
      if (v13 + 1 < v12)
      {
        v150 = v14;
        v17 = *&(*v151)[8 * v16];
        v18 = &(*v151)[8 * v13];
        i = (8 * v13);
        v20 = *v18;
        v19 = (v18 + 16);
        v21 = (v13 + 1);
        v14 = &OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        v160 = v12;
        swift_beginAccess();
        v23 = v161;
        sub_10001938C(v22 + v17, v161);
        v24 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v25 = v24 + v20;
        v16 = v21;
        v26 = v162;
        sub_10001938C(v25, v162);

        LODWORD(v159) = v163(v23, v26);
        sub_1000193F0(v26);
        sub_1000193F0(v23);

        v27 = v160;
        v157 = v15;
        v28 = v15 + 2;
        while (1)
        {
          v29 = v28;
          v30 = (v16 + 1);
          if (v30 >= v27)
          {
            break;
          }

          v32 = *(v19 - 1);
          v31 = *v19;
          v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v14 = v30;
          v34 = v161;
          sub_10001938C(v33 + v31, v161);
          v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v36 = v162;
          sub_10001938C(v35 + v32, v162);

          LODWORD(v35) = v163(v34, v36) & 1;
          sub_1000193F0(v36);
          v37 = v34;
          v16 = v14;
          sub_1000193F0(v37);

          ++v19;
          v28 = v29 + 1;
          v27 = v160;
          if ((v159 & 1) != v35)
          {
            goto LABEL_9;
          }
        }

        v16 = v27;
LABEL_9:
        if (v159)
        {
          v15 = v157;
          if (v16 < v157)
          {
            goto LABEL_153;
          }

          if (v157 >= v16)
          {
            v14 = v150;
          }

          else
          {
            if (v27 >= v29)
            {
              v38 = v29;
            }

            else
            {
              v38 = v27;
            }

            v39 = 8 * v38 - 8;
            v40 = v16;
            v41 = v157;
            v14 = v150;
            v42 = i;
            do
            {
              if (v41 != --v40)
              {
                v43 = *v151;
                if (!*v151)
                {
                  goto LABEL_159;
                }

                v44 = *&v42[v43];
                *&v42[v43] = *&v43[v39];
                *&v43[v39] = v44;
              }

              ++v41;
              v39 -= 8;
              v42 += 8;
            }

            while (v41 < v40);
          }
        }

        else
        {
          v14 = v150;
          v15 = v157;
        }
      }

      v45 = v151[1];
      if (v16 < v45)
      {
        if (__OFSUB__(v16, v15))
        {
          goto LABEL_152;
        }

        if (v16 - v15 < v145)
        {
          v46 = (v15 + v145);
          if (__OFADD__(v15, v145))
          {
            goto LABEL_154;
          }

          if (v46 >= v45)
          {
            v46 = v151[1];
          }

          if (v46 < v15)
          {
            goto LABEL_155;
          }

          if (v16 != v46)
          {
            v150 = v14;
            v14 = *v151;
            v47 = &(*v151)[8 * v16 - 8];
            v157 = v15;
            v48 = (v15 - v16);
            i = v46;
            do
            {
              v148 = v16;
              v49 = *&v14[8 * v16];
              v159 = v48;
              v160 = v47;
              do
              {
                v50 = *v47;
                v51 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v52 = v161;
                sub_10001938C(v51 + v49, v161);
                v53 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
                swift_beginAccess();
                v54 = v162;
                sub_10001938C(v53 + v50, v162);

                LOBYTE(v53) = v163(v52, v54);
                sub_1000193F0(v54);
                sub_1000193F0(v52);

                if ((v53 & 1) == 0)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_156;
                }

                v55 = *v47;
                v49 = *(v47 + 1);
                *v47 = v49;
                *(v47 + 1) = v55;
                v47 -= 8;
                v104 = __CFADD__(v48++, 1);
              }

              while (!v104);
              v16 = v148 + 1;
              v47 = v160 + 8;
              v48 = v159 - 1;
            }

            while ((v148 + 1) != i);
            v16 = i;
            v14 = v150;
            v15 = v157;
          }
        }
      }

      if (v16 < v15)
      {
        goto LABEL_151;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v133 = *(v14 + 2);
        sub_10013FB2C();
        v14 = v134;
      }

      v57 = *(v14 + 2);
      v58 = v57 + 1;
      if (v57 >= *(v14 + 3) >> 1)
      {
        sub_10013FB2C();
        v14 = v135;
      }

      *(v14 + 2) = v58;
      v59 = v14 + 32;
      v60 = &v14[16 * v57 + 32];
      v61 = v148;
      *v60 = v15;
      *(v60 + 1) = v61;
      v160 = *v146;
      if (!v160)
      {
        goto LABEL_161;
      }

      if (v57)
      {
        break;
      }

LABEL_119:
      v12 = v151[1];
      v13 = v148;
      if (v148 >= v12)
      {
        goto LABEL_122;
      }
    }

    v150 = v14;
    v149 = v14 + 32;
    while (1)
    {
      v62 = v58 - 1;
      v63 = &v59[16 * v58 - 16];
      v64 = &v14[16 * v58];
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v65 = *(v14 + 4);
        v66 = *(v14 + 5);
        v75 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        v68 = v75;
LABEL_60:
        if (v68)
        {
          goto LABEL_139;
        }

        v80 = *v64;
        v79 = *(v64 + 1);
        v81 = __OFSUB__(v79, v80);
        v82 = v79 - v80;
        v83 = v81;
        if (v81)
        {
          goto LABEL_142;
        }

        v84 = *(v63 + 1);
        v85 = v84 - *v63;
        if (__OFSUB__(v84, *v63))
        {
          goto LABEL_145;
        }

        if (__OFADD__(v82, v85))
        {
          goto LABEL_146;
        }

        if (v82 + v85 >= v67)
        {
          if (v67 < v85)
          {
            v62 = v58 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_74;
      }

      v86 = *v64;
      v87 = *(v64 + 1);
      v75 = __OFSUB__(v87, v86);
      v82 = v87 - v86;
      v83 = v75;
LABEL_74:
      if (v83)
      {
        goto LABEL_141;
      }

      v89 = *v63;
      v88 = *(v63 + 1);
      v75 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v75)
      {
        goto LABEL_144;
      }

      if (v90 < v82)
      {
        goto LABEL_119;
      }

LABEL_81:
      if (v62 - 1 >= v58)
      {
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v94 = *v151;
      if (!*v151)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        return;
      }

      v153 = &v59[16 * v62 - 16];
      v95 = *v153;
      v156 = v62;
      v152 = &v59[16 * v62];
      v96 = &v94[8 * v95];
      v97 = 8 * *v152;
      v98 = &v94[v97];
      v99 = 8 * *(v152 + 1);
      v154 = *(v152 + 1);
      v100 = &v94[v99];
      v155 = v95;
      v101 = v97 - 8 * v95;
      v102 = v99 - v97;
      if (v101 >> 3 < (v99 - v97) >> 3)
      {
        v14 = v160;
        sub_100060E68(v96);
        v103 = &v14[v101];
        v159 = v100;
        for (i = &v14[v101]; ; v103 = i)
        {
          v104 = v14 >= v103 || v98 >= v100;
          if (v104)
          {
            v98 = v96;
            goto LABEL_109;
          }

          v105 = v96;
          v106 = v98;
          v107 = *v98;
          v108 = *v14;
          v109 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v110 = v161;
          sub_10001938C(v109 + v107, v161);
          v111 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          swift_beginAccess();
          v112 = v162;
          sub_10001938C(v111 + v108, v162);

          LOBYTE(v111) = v163(v110, v112);
          sub_1000193F0(v112);
          sub_1000193F0(v110);

          if ((v111 & 1) == 0)
          {
            break;
          }

          v113 = v106;
          v98 = v106 + 8;
          v114 = v105;
          if (v105 != v106)
          {
            goto LABEL_93;
          }

LABEL_94:
          v96 = v114 + 8;
          v100 = v159;
        }

        v113 = v14;
        v114 = v105;
        v115 = v105 == v14;
        v14 += 8;
        v98 = v106;
        if (v115)
        {
          goto LABEL_94;
        }

LABEL_93:
        *v114 = *v113;
        goto LABEL_94;
      }

      v116 = v160;
      sub_100060E68(v98);
      v103 = v116 + v102;
      v157 = v96;
LABEL_96:
      v117 = v98 - 8;
      v100 -= 8;
      v159 = v98;
      for (i = v98 - 8; v103 > v160 && v96 < v98; v117 = i)
      {
        v119 = *(v103 - 1);
        v120 = *v117;
        v121 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v122 = v161;
        sub_10001938C(v121 + v119, v161);
        v123 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v124 = v162;
        sub_10001938C(v123 + v120, v162);

        LOBYTE(v123) = v163(v122, v124);
        sub_1000193F0(v124);
        sub_1000193F0(v122);

        v125 = v100 + 8;
        if (v123)
        {
          v126 = i;
          v98 = i;
          v96 = v157;
          if (v125 != v159)
          {
            *v100 = *i;
            v98 = v126;
          }

          goto LABEL_96;
        }

        if (v103 != v125)
        {
          *v100 = *(v103 - 1);
        }

        v100 -= 8;
        v103 -= 8;
        v96 = v157;
        v98 = v159;
      }

      v14 = v160;
LABEL_109:
      v127 = (v103 - v14) / 8;
      if (v98 != v14 || v98 >= &v14[8 * v127])
      {
        memmove(v98, v14, 8 * v127);
      }

      v129 = v154;
      v130 = v156;
      if (v154 < v155)
      {
        goto LABEL_134;
      }

      v14 = v150;
      v131 = *(v150 + 2);
      if (v156 > v131)
      {
        goto LABEL_135;
      }

      v132 = v153;
      *v153 = v155;
      *(v132 + 1) = v129;
      if (v130 >= v131)
      {
        goto LABEL_136;
      }

      v58 = v131 - 1;
      sub_100147E04(v152 + 16, v131 - 1 - v130, v152);
      *(v14 + 2) = v131 - 1;
      v59 = v149;
      if (v131 <= 2)
      {
        goto LABEL_119;
      }
    }

    v69 = &v59[16 * v58];
    v70 = *(v69 - 8);
    v71 = *(v69 - 7);
    v75 = __OFSUB__(v71, v70);
    v72 = v71 - v70;
    if (v75)
    {
      goto LABEL_137;
    }

    v74 = *(v69 - 6);
    v73 = *(v69 - 5);
    v75 = __OFSUB__(v73, v74);
    v67 = v73 - v74;
    v68 = v75;
    if (v75)
    {
      goto LABEL_138;
    }

    v76 = *(v64 + 1);
    v77 = v76 - *v64;
    if (__OFSUB__(v76, *v64))
    {
      goto LABEL_140;
    }

    v75 = __OFADD__(v67, v77);
    v78 = v67 + v77;
    if (v75)
    {
      goto LABEL_143;
    }

    if (v78 >= v72)
    {
      v92 = *v63;
      v91 = *(v63 + 1);
      v75 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v75)
      {
        goto LABEL_147;
      }

      if (v67 < v93)
      {
        v62 = v58 - 2;
      }

      goto LABEL_81;
    }

    goto LABEL_60;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_122:
  v162 = *v146;
  if (!v162)
  {
    goto LABEL_162;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_157:
    v14 = sub_100147DF0(v14);
  }

  v136 = v14 + 16;
  v137 = *(v14 + 2);
  while (v137 >= 2)
  {
    if (!*v151)
    {
      goto LABEL_160;
    }

    v138 = v14;
    v14 += 16 * v137;
    v139 = *v14;
    v140 = &v136[2 * v137];
    v141 = *(v140 + 1);
    v142 = v147;
    sub_1000EDE60(&(*v151)[8 * *v14], &(*v151)[8 * *v140], &(*v151)[8 * v141], v162, v163);
    v147 = v142;
    if (v142)
    {
      break;
    }

    if (v141 < v139)
    {
      goto LABEL_148;
    }

    if (v137 - 2 >= *v136)
    {
      goto LABEL_149;
    }

    *v14 = v139;
    *(v14 + 1) = v141;
    v143 = *v136 - v137;
    if (*v136 < v137)
    {
      goto LABEL_150;
    }

    v137 = *v136 - 1;
    sub_100147E04(v140 + 16, v143, v140);
    *v136 = v137;
    v14 = v138;
  }
}

uint64_t sub_1000EDE60(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v49 = a5;
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v42 - v13;
  v14 = a2 - a1;
  v15 = a3 - a2;
  if (v14 < v15)
  {
    sub_100060E68(a1);
    v16 = &a4[v14];
    v45 = v16;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v16 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v18 = *a2;
      v19 = *a4;
      v20 = a4;
      v21 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v22 = v47;
      sub_10001938C(v21 + v18, v47);
      v23 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      v24 = v48;
      sub_10001938C(v23 + v19, v48);

      LOBYTE(v23) = v49(v22, v24);
      sub_1000193F0(v24);
      sub_1000193F0(v22);

      if ((v23 & 1) == 0)
      {
        break;
      }

      v25 = a2;
      v26 = a1 == a2++;
      a4 = v20;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++a1;
      v16 = v45;
    }

    v25 = v20;
    a4 = v20 + 1;
    if (a1 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *a1 = *v25;
    goto LABEL_13;
  }

  sub_100060E68(a2);
  v16 = &a4[v15];
  v43 = a4;
  v44 = a1;
LABEL_15:
  v27 = a2 - 1;
  v28 = a3 - 1;
  v45 = a2 - 1;
  for (i = a2; v16 > a4 && a2 > a1; a2 = i)
  {
    v30 = v28;
    v31 = *(v16 - 1);
    v32 = *v27;
    v33 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v34 = v47;
    sub_10001938C(v33 + v31, v47);
    v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v36 = v48;
    sub_10001938C(v35 + v32, v48);

    LOBYTE(v35) = v49(v34, v36);
    sub_1000193F0(v36);
    sub_1000193F0(v34);

    a3 = v30;
    v37 = v30 + 1;
    if (v35)
    {
      v38 = v45;
      a2 = v45;
      a4 = v43;
      a1 = v44;
      if (v37 != i)
      {
        *v30 = *v45;
        a2 = v38;
      }

      goto LABEL_15;
    }

    if (v16 != v37)
    {
      *v30 = *(v16 - 1);
    }

    v28 = v30 - 1;
    --v16;
    a4 = v43;
    a1 = v44;
    v27 = v45;
  }

LABEL_28:
  v39 = v16 - a4;
  if (a2 != a4 || a2 >= &a4[v39])
  {
    memmove(a2, a4, 8 * v39);
  }

  return 1;
}

uint64_t sub_1000EE1C8()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100013838(v1);

  return sub_1000E6658(v3, v4);
}

uint64_t sub_1000EE258()
{
  sub_100002BAC();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10006F558;

  return sub_1000E7840(v3, v0);
}

uint64_t sub_1000EE2EC()
{
  sub_100001ED0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_100004B00(v6);
  *v7 = v8;
  v7[1] = sub_10006FA64;

  return sub_1000E7EB8(v2, v3, v4, v5);
}

uint64_t sub_1000EE39C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EE3E4()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100013838(v1);

  return sub_1000EBFD8();
}

uint64_t sub_1000EE494()
{
  sub_100001ED0();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100013838(v1);

  return sub_1000E65C8();
}

uint64_t sub_1000EE52C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBA90);
  sub_10000641C(v0, qword_1001BBA90);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void (*sub_1000EE598(uint64_t a1))(char *, uint64_t, uint64_t)
{
  v2 = type metadata accessor for FilePath();
  v3 = sub_100002BDC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v61 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v59 - v10;
  v12 = type metadata accessor for URL();
  v13 = sub_100002BDC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100002B8C();
  v20 = v19 - v18;
  v21 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v59 - v23;
  v62 = v5;
  v25 = *(v5 + 16);
  v60 = a1;
  v25(v11, a1, v2);
  v26 = type metadata accessor for URL.DirectoryHint();
  v27 = sub_100002BDC(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100002B8C();
  v32 = v31 - v30;
  (*(v33 + 104))(v31 - v30, enum case for URL.DirectoryHint.notDirectory(_:));
  sub_1000A2E44(v11, v32, v24);
  if (sub_10000C6C0(v24, 1, v12) == 1)
  {
    sub_1000EEADC(v24);
    if (qword_1001B8958 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000641C(v34, qword_1001BBA90);
    v25(v61, v60, v2);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v63 = v38;
      *v37 = 136315138;
      sub_1000EECC8();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = sub_100005D0C();
      v43(v42);
      v44 = sub_100004A3C(v39, v41, &v63);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to open %s: path contains illegal UTF-8 sequences", v37, 0xCu);
      sub_100003324(v38);
    }

    else
    {

      v47 = sub_100005D0C();
      v48(v47);
    }

    v49 = type metadata accessor for POSIXError();
    v50 = sub_100002BDC(v49);
    v52 = v51;
    v54 = *(v53 + 64);
    __chkstk_darwin(v50);
    sub_100002B8C();
    v57 = (v56 - v55);
    v64 = 22;
    sub_1000EEB44(_swiftEmptyArrayStorage);
    sub_1000EEC7C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = v57;
    POSIXError._nsError.getter();
    (*(v52 + 8))(v57, v49);
    swift_willThrow();
  }

  else
  {
    (*(v15 + 32))(v20, v24, v12);
    v45 = v59[1];
    v46 = Data.init(contentsOf:options:)();
    if (!v45)
    {
      v25 = v46;
    }

    (*(v15 + 8))(v20, v12);
  }

  return v25;
}

uint64_t sub_1000EEADC(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EEB44(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100065020(&qword_1001BBB48, &qword_1001724B0);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1000EED20(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1000236F4(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_10006B8DC(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1000EEC7C()
{
  result = qword_1001BBB40;
  if (!qword_1001BBB40)
  {
    type metadata accessor for POSIXError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBB40);
  }

  return result;
}

unint64_t sub_1000EECC8()
{
  result = qword_1001B9528;
  if (!qword_1001B9528)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9528);
  }

  return result;
}

uint64_t sub_1000EED20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BBB50, &qword_1001724B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EED90(uint64_t a1)
{
  v3 = type metadata accessor for ModelCatalogAsset(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v3 - 8);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v31[1] = v1;
  v40 = _swiftEmptyArrayStorage;
  sub_10002045C(0, v6, 0);
  v7 = v40;
  result = sub_10001E724(a1);
  v11 = result;
  v12 = 0;
  v39 = a1 + 56;
  v32 = a1 + 64;
  v33 = v6;
  v34 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(a1 + 32))
    {
      v13 = v11 >> 6;
      if ((*(v39 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_25;
      }

      v38 = v10;
      v37 = v9;
      v14 = *(a1 + 48);
      v15 = v35;
      v16 = *(v36 + 72);
      sub_1000FA888();
      v18 = *v15;
      v17 = v15[1];

      result = sub_1000FA980(v15, type metadata accessor for ModelCatalogAsset);
      v40 = v7;
      v20 = v7[2];
      v19 = v7[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10002045C((v19 > 1), v20 + 1, 1);
        v7 = v40;
      }

      v7[2] = v20 + 1;
      v21 = &v7[2 * v20];
      v21[4] = v18;
      v21[5] = v17;
      if (v38)
      {
        goto LABEL_29;
      }

      a1 = v34;
      v22 = 1 << *(v34 + 32);
      if (v11 >= v22)
      {
        goto LABEL_26;
      }

      v23 = *(v39 + 8 * v13);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v34 + 36) != v37)
      {
        goto LABEL_28;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v25 = v33;
      }

      else
      {
        v26 = v13 << 6;
        v27 = v13 + 1;
        v25 = v33;
        v28 = (v32 + 8 * v13);
        while (v27 < (v22 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_100016E94(v11, v37, 0);
            v22 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_100016E94(v11, v37, 0);
      }

LABEL_19:
      if (++v12 == v25)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000EF084()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBB58);
  sub_10000641C(v0, qword_1001BBB58);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000EF0F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6361667265746E69 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1000EF21C(char a1)
{
  if (!a1)
  {
    return 0x496E6F6973736573;
  }

  if (a1 == 1)
  {
    return 0x4974736575716572;
  }

  return 0x6361667265746E69;
}

uint64_t sub_1000EF274()
{
  sub_10000C1C0();
  type metadata accessor for Session();
  sub_100001F70();
  if ((static UUIDIdentifier.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v1 = *(v0 + 20);
  type metadata accessor for RequestMetadata();
  if ((static UUIDIdentifier.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + 24);

  return static RemoteInterfaceInformation.== infix(_:_:)();
}

uint64_t sub_1000EF320(uint64_t a1)
{
  v3 = sub_100065020(&qword_1001BBDC0, &qword_100172668);
  sub_100002BDC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100004B1C();
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_100005E8C();
  sub_100003370(v13, v14);
  sub_1000FA514();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = 0;
  v15 = sub_100005E8C();
  sub_100065020(v15, v16);
  sub_100003914();
  sub_1000082D4(v17, v18, v19);
  sub_10005784C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v28 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
    v20 = *(v28 + 20);
    v30 = 1;
    v21 = sub_100008004();
    sub_100065020(v21, v22);
    sub_1000082D4(&qword_1001BBDD0, &qword_1001B8F48, &qword_10016FB30);
    sub_10005784C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v28 + 24);
    v29 = 2;
    type metadata accessor for RemoteInterfaceInformation();
    sub_10000A650();
    sub_1000FA4CC(v24, 255, v25);
    sub_10005784C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_1000EF580()
{
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_1000082D4(&qword_1001B9500, &qword_1001B94F0, &unk_100172060);
  dispatch thunk of Hashable.hash(into:)();
  v0 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v1 = *(v0 + 20);
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_10002B0C0();
  sub_1000082D4(v2, v3, v4);
  dispatch thunk of Hashable.hash(into:)();
  v5 = *(v0 + 24);
  type metadata accessor for RemoteInterfaceInformation();
  sub_10000A650();
  sub_1000FA4CC(v6, 255, v7);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000EF6C0()
{
  Hasher.init(_seed:)();
  v0 = sub_100007660();
  sub_100065020(v0, v1);
  sub_1000082D4(&qword_1001B9500, &qword_1001B94F0, &unk_100172060);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v3 = *(v2 + 20);
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(v2 + 24);
  type metadata accessor for RemoteInterfaceInformation();
  sub_10000A650();
  sub_1000FA4CC(v5, 255, v6);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EF818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = type metadata accessor for RemoteInterfaceInformation();
  v4 = sub_100002BDC(v53);
  v51 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100008624();
  v54 = v8;
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v10 = sub_100002BDC(v9);
  v57 = v11;
  v58 = v10;
  v13 = *(v12 + 64);
  sub_100004B1C();
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v17);
  v55 = v18;
  v20 = *(v19 + 64);
  sub_100004B1C();
  __chkstk_darwin(v21);
  v59 = &v48 - v22;
  v60 = sub_100065020(&qword_1001BBD98, &qword_100172660);
  sub_100002BDC(v60);
  v56 = v23;
  v25 = *(v24 + 64);
  sub_100004B1C();
  __chkstk_darwin(v26);
  v27 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v28 = sub_100002C00(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v33 = a1[4];
  v61 = a1;
  v35 = sub_100004CB0();
  sub_100003370(v35, v36);
  sub_1000FA514();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003324(v61);
  }

  v37 = v57;
  v49 = v27;
  v50 = v32;
  v38 = v58;
  v64 = 0;
  sub_100006114(&qword_1001BBDA8, &qword_1001B94F0, &unk_100172060);
  v39 = v59;
  sub_10005784C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v55 + 32))(v50, v39, v17);
  v63 = 1;
  sub_100006114(&qword_1001BBDB0, &qword_1001B8F48, &qword_10016FB30);
  sub_10005784C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v37 + 32))(&v50[*(v49 + 20)], v16, v38);
  v62 = 2;
  sub_10000A650();
  sub_1000FA4CC(v40, 255, v41);
  v42 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = sub_10000A81C();
  v44(v43);
  (*(v51 + 32))(&v50[*(v49 + 24)], v54, v42);
  sub_1000FA888();
  sub_100003324(v61);
  v45 = sub_1000062B0();
  return sub_1000FA980(v45, v46);
}

uint64_t sub_1000EFCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EF0F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EFD40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EF214();
  *a1 = result;
  return result;
}

uint64_t sub_1000EFD68(uint64_t a1)
{
  v2 = sub_1000FA514();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EFDA4(uint64_t a1)
{
  v2 = sub_1000FA514();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000EFDE8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_1000082D4(&qword_1001B9500, &qword_1001B94F0, &unk_100172060);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 20);
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_1000082D4(&qword_1001B9580, &qword_1001B8F48, &qword_10016FB30);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(a2 + 24);
  type metadata accessor for RemoteInterfaceInformation();
  sub_1000FA4CC(&qword_1001BBD90, 255, &type metadata accessor for RemoteInterfaceInformation);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EFF7C()
{
  sub_100002BAC();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v1[21] = v5;
  sub_100002F44(v5);
  v1[22] = v6;
  v8 = *(v7 + 64);
  v1[23] = sub_10000F0C0();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v9 = sub_100002C10();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000F003C()
{
  sub_10000636C();
  v1 = v0[20];
  sub_1000F4054(v0[18], v0[19], 0);
  v0[26] = v2;
  v0[27] = v3;
  v9 = v3;

  if (*(v9 + 16))
  {
    v10 = v0[25];
    v11 = v0[21];
    v12 = v0[22];
    v13 = v0[20];
    sub_100020444(0, v9, v0[24]);
    v14 = *(v12 + 32);
    v15 = sub_100007660();
    v16(v15);
    v17 = *sub_100003370((v13 + 152), *(v13 + 176));
    swift_task_alloc();
    sub_100004B34();
    v0[28] = v18;
    *v18 = v19;
    v18[1] = sub_1000F02C8;
    v20 = v0[25];

    return sub_1000253E8((v0 + 2), v20);
  }

  else
  {
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC();
    }

    v21 = type metadata accessor for Logger();
    sub_100002FD0(v21, qword_1001BBB58);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (sub_100006468(v23))
    {
      v24 = sub_100007648();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to have any inference providers associated with bundle id", v24, 2u);
      sub_100004B78();
    }

    v25 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v26, 255, v27);
    v28 = sub_100008194();
    sub_10002AB60(v28, v29);
    *v30 = 0;
    v30[1] = 0xE000000000000000;
    sub_100006098(v25);
    (*(v31 + 104))();
    swift_willThrow();

    v5 = v0[24];
    v4 = v0[25];
    v6 = v0[23];

    sub_100001F7C();

    return v7(0);
  }
}

uint64_t sub_1000F02C8()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 224);
  *v4 = *v1;
  *(v3 + 232) = v0;

  v6 = *(v2 + 160);
  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F03E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v25;
  a24 = v26;
  sub_100005EA4();
  a22 = v24;
  sub_1000FAD20();
  if (v24[15])
  {
    v88 = sub_100018428();
    v89 = v27 + *v27;
    v28 = v27[1];
    v29 = swift_task_alloc();
    v24[30] = v29;
    *v29 = v24;
    v29[1] = sub_1000F0854;
    sub_1000031B8(v24[17]);
    sub_10000C750();
    sub_100003D04();

    return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, v88, v89, a12, a13, a14, a15, a16);
  }

  else
  {
    sub_10000ECD8((v24 + 12), &qword_1001B9CB0, &qword_100171E70);
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC();
    }

    v39 = v24[25];
    v41 = v24[22];
    v40 = v24[23];
    v42 = v24[21];
    v43 = type metadata accessor for Logger();
    sub_10000641C(v43, qword_1001BBB58);
    v44 = *(v41 + 16);
    v45 = sub_1000062B0();
    v46(v45);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = sub_100026838(v48);
    v51 = v24[22];
    v50 = v24[23];
    v52 = v24[21];
    if (v49)
    {
      v53 = sub_100007698();
      a11 = sub_1000031E0();
      a12 = a11;
      *v53 = 136315138;
      sub_100005D20();
      sub_1000FA4CC(v54, 255, v55);
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = v57;
      LODWORD(a10) = v48;
      v59 = *(v51 + 8);
      v60 = sub_100005E8C();
      v59(v60);
      v61 = v59;
      v62 = sub_100004A3C(v56, v58, &a12);

      *(v53 + 4) = v62;
      sub_10000EEC0(&_mh_execute_header, "Failed to acquire %s", a10);
      sub_100003A7C();
      sub_10000706C();
    }

    else
    {

      v63 = *(v51 + 8);
      v64 = sub_100005E8C();
      v63(v64);
      v61 = v63;
    }

    v66 = v24[26];
    v65 = v24[27];
    v67 = v24[25];
    v68 = v24[21];
    v69 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v70, 255, v71);
    sub_100008194();
    v73 = v72;
    *v72 = InferenceProviderDescriptor.id.getter();
    v73[1] = v74;
    sub_100006098(v69);
    (*(v75 + 104))(v73);
    swift_willThrow();

    sub_10000ECD8((v24 + 2), &qword_1001B9CB0, &qword_100171E70);
    v76 = sub_100001F70();
    v61(v76);
    v78 = v24[24];
    v77 = v24[25];
    v79 = v24[23];

    sub_100001F7C();
    sub_100003D04();

    return v82(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1000F07AC()
{
  sub_100001ED0();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[22];

  v6 = *(v5 + 8);
  v7 = sub_1000060A4();
  v8(v7);
  v9 = v0[29];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];

  sub_100001F7C();

  return v13(0);
}

uint64_t sub_1000F0854()
{
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v7 = *(v4 + 240);
  *v6 = *v1;
  *(v5 + 248) = v0;

  v8 = *(v4 + 160);
  if (!v0)
  {
    *(v5 + 256) = v3 & 1;
  }

  sub_10000E700();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000F0984()
{
  sub_10001881C();
  sub_100003884();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 168);

  sub_10000ECD8(v0 + 16, &qword_1001B9CB0, &qword_100171E70);
  (*(v6 + 8))(v3, v7);
  sub_100003324((v0 + 56));

  sub_100001F7C();
  v8 = *(v0 + 256);
  sub_100007BB8();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000F0A50()
{
  sub_100001ED0();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[22];

  sub_10000ECD8((v0 + 2), &qword_1001B9CB0, &qword_100171E70);
  v6 = *(v5 + 8);
  v7 = sub_1000060A4();
  v8(v7);
  sub_100003324(v0 + 7);
  v9 = v0[31];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];

  sub_100001F7C();

  return v13(0);
}

uint64_t sub_1000F0B18()
{
  sub_100002BAC();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v8);
  v10 = *(v9 + 64);
  v1[9] = sub_100002C58();
  v11 = type metadata accessor for InferenceProviderRequestResult();
  v1[10] = v11;
  sub_100002F44(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = sub_100002C58();
  v15 = sub_100002C10();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000F0BF4()
{
  sub_10000636C();
  v24 = v0;
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[13] = sub_100002FD0(v2, qword_1001BBB58);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = sub_100007698();
    v8 = sub_1000031E0();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004A3C(v6, v5, &v23);
    sub_10000A4A4();
    _os_log_impl(v9, v10, v11, v12, v7, 0xCu);
    sub_100003324(v8);
    sub_100012684();
    sub_100004B78();
  }

  swift_task_alloc();
  sub_100004B34();
  v0[14] = v13;
  *v13 = v14;
  v13[1] = sub_1000F0D80;
  v15 = v0[12];
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[5];
  v19 = v0[6];
  v21 = v0[3];
  v20 = v0[4];

  return sub_1000F55C0();
}

uint64_t sub_1000F0D80()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = *(v0 + 112);
  *v4 = *v2;
  *(v3 + 120) = v1;

  sub_10000CC7C();
  v7 = *(v6 + 64);
  if (!v1)
  {
  }

  sub_10000CC50();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000F0EA4()
{
  sub_100003884();
  v1 = v0[12];
  v2 = v0[9];
  InferenceProviderRequestResult.firstResponse.getter();
  v3 = type metadata accessor for ClientData();
  sub_100003494(v2);
  if (v4)
  {
    v5 = v0[13];
    sub_10000ECD8(v0[9], &qword_1001BA5F0, &qword_100171290);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_100007648();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "OneShot acquired response but got no data", v8, 2u);
      sub_100002BB8();
    }

    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];

    v12 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v13, 255, v14);
    sub_100008194();
    sub_100006098(v12);
    (*(v15 + 104))();
    swift_willThrow();
    v16 = *(v10 + 8);
    v17 = sub_100001F70();
    v18(v17);
    v19 = v0[12];
    v20 = v0[9];

    sub_100001F00();
  }

  else
  {
    v21 = v0[9];
    v22 = v0[2];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_100006098(v3);
    (*(v23 + 32))(v22, v21, v3);

    sub_100001F00();
  }

  return v24();
}

uint64_t sub_1000F10C0()
{
  sub_100002BAC();
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  sub_100001F00();

  return v4();
}

uint64_t sub_1000F1128()
{
  sub_100002BAC();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[22] = v5;
  v1[23] = v6;
  v1[21] = v7;
  v8 = type metadata accessor for Version();
  v1[28] = v8;
  sub_100002F44(v8);
  v1[29] = v9;
  v11 = *(v10 + 64);
  v1[30] = sub_100002C58();
  v12 = type metadata accessor for RemoteInterfaceInformation();
  v1[31] = v12;
  sub_100002F44(v12);
  v1[32] = v13;
  v15 = *(v14 + 64);
  v1[33] = sub_100002C58();
  v16 = sub_100065020(&qword_1001BA600, &unk_100172720);
  sub_100002F04(v16);
  v18 = *(v17 + 64);
  v1[34] = sub_100002C58();
  v19 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v19);
  v21 = *(v20 + 64);
  v1[35] = sub_100002C58();
  v22 = type metadata accessor for ClientData();
  v1[36] = v22;
  sub_100002F44(v22);
  v1[37] = v23;
  v25 = *(v24 + 64);
  v1[38] = sub_100002C58();
  v26 = type metadata accessor for InferenceProviderRequestResult();
  v1[39] = v26;
  sub_100002F44(v26);
  v1[40] = v27;
  v29 = *(v28 + 64);
  v1[41] = sub_100002C58();
  v30 = sub_100002C10();

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_1000F1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_100007B84();
  a23 = v25;
  a24 = v26;
  sub_100005EA4();
  a22 = v24;
  v27 = v24[22];
  if (RemoteInterfaceInformation.supportsTrueStreaming()())
  {
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC();
    }

    v28 = v24[25];
    v29 = type metadata accessor for Logger();
    v24[42] = sub_100002FD0(v29, qword_1001BBB58);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = v24[24];
      v32 = v24[25];
      v34 = sub_100007698();
      v35 = sub_1000031E0();
      a13 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100004A3C(v33, v32, &a13);
      sub_10000A4A4();
      _os_log_impl(v36, v37, v38, v39, v34, 0xCu);
      sub_100003324(v35);
      sub_100012684();
      sub_100004B78();
    }

    swift_task_alloc();
    sub_100004B34();
    v24[43] = v40;
    *v40 = v41;
    v40[1] = sub_1000F16A0;
    v42 = v24[41];
    v43 = v24[26];
    v44 = v24[27];
    v45 = v24[24];
    v46 = v24[25];
    v48 = v24[22];
    v47 = v24[23];
    sub_100003D04();

    return sub_1000F55C0();
  }

  else
  {
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC();
    }

    v52 = v24[32];
    v51 = v24[33];
    v53 = v24[31];
    v54 = v24[22];
    v55 = type metadata accessor for Logger();
    sub_10000641C(v55, qword_1001BBB58);
    v56 = *(v52 + 16);
    v57 = sub_100007660();
    v58(v57);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = sub_100026838(v60);
    v62 = v24[32];
    v63 = v24[33];
    v64 = v24[31];
    if (v61)
    {
      v65 = v24[29];
      v66 = v24[30];
      v88 = v60;
      v67 = v24[28];
      v68 = sub_100007698();
      a13 = sub_1000031E0();
      *v68 = 136315138;
      v87 = v64;
      RemoteInterfaceInformation.version.getter();
      sub_1000FA4CC(&qword_1001BA480, 255, &type metadata accessor for Version);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v65 + 8))(v66, v67);
      (*(v62 + 8))(v63, v87);
      v70 = sub_1000037BC();
      sub_100004A3C(v70, v71, v72);
      sub_10000A08C();

      *(v68 + 4) = v69;
      sub_10000EEC0(&_mh_execute_header, "RemoteManager received a executeStreamingRequest from a modelmanager version: %s that does not support true streaming. Falling back to v0 of streaming", v88);
      sub_100003A7C();
      sub_10000706C();
    }

    else
    {

      (*(v62 + 8))(v63, v64);
    }

    swift_task_alloc();
    sub_100004B34();
    v24[49] = v73;
    *v73 = v74;
    v73[1] = sub_1000F2154;
    v75 = v24[26];
    v76 = v24[27];
    v77 = v24[24];
    v78 = v24[25];
    v79 = v24[23];
    v80 = v24[21];
    sub_100003D04();

    return sub_1000E193C(v81, v82, v83, v84, v85);
  }
}

uint64_t sub_1000F16A0()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = *(v7 + 344);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  v5[44] = v3;
  v5[45] = v0;

  if (v0)
  {
    v11 = v5[27];
    sub_10000E700();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v15 = swift_task_alloc();
    v5[46] = v15;
    *v15 = v9;
    v15[1] = sub_1000F1810;
    v16 = v5[41];
    v17 = v5[27];

    return sub_1000F8D48();
  }
}

uint64_t sub_1000F1810()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100004B40();
  *v4 = v3;
  v5 = *(v2 + 368);
  *v4 = *v1;
  *(v3 + 376) = v0;

  v6 = *(v2 + 216);
  sub_10000E700();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F192C()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[27];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_100003370(v0 + 2, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = sub_100002C58();
  (*(v5 + 16))(v7, v4, v3);
  v8 = *(v2 + 8);
  v0[10] = swift_getAssociatedTypeWitness();
  sub_100007660();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000366C(v0 + 7);
  sub_100003754();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  sub_100007E70();
  sub_1000FA4CC(v9, v10, v11);
  v12 = v0[11];
  sub_100016494((v0 + 7), v0[10]);
  v13 = *(v12 + 8);
  v14 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  swift_task_alloc();
  sub_100004B34();
  v0[48] = v15;
  *v15 = v16;
  v15[1] = sub_1000F1B00;
  v17 = v0[35];
  sub_100007BB8();

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1000F1B00()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v3 + 216);
  if (v0)
  {
    v10 = sub_1000F2420;
  }

  else
  {
    v10 = sub_1000F1BFC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000F1BFC()
{
  v3 = v0[35];
  v2 = v0[36];
  sub_10000323C(v3, 1, v2);
  if (v4)
  {
    v5 = v0[42];
    sub_10000ECD8(v3, &qword_1001BA5F0, &qword_100171290);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (sub_100026838(v7))
    {
      v8 = sub_100007648();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "executeStreamingRequest got an empty stream. Returning empty array", v8, 2u);
      sub_100002F64();
    }

    v9 = v0[44];
    v11 = v0[40];
    v10 = v0[41];
    v12 = v0[39];
    v13 = v0[34];
    v14 = v0[31];
    v15 = v0[21];

    static RemoteInterfaceInformation.currentInterface.getter();
    sub_1000039A8();
    sub_100009BFC(v16, v17, v18, v14);
    v19 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    sub_100002F04(v19);
    v21 = *(v20 + 64);
    sub_100002C58();
    type metadata accessor for UUID();
    sub_100003978();
    sub_100009BFC(v22, v23, v24, v25);
    RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.init(interface:result:requestId:)();

    v26 = *(v11 + 8);
    v27 = sub_100007660();
    v28(v27);
  }

  else
  {
    v29 = v0[44];
    v30 = v0[42];
    (*(v0[37] + 32))(v0[38], v3, v2);
    v31 = type metadata accessor for UUID();
    sub_100002BDC(v31);
    v33 = v32;
    v35 = *(v34 + 64) + 15;
    v36 = swift_task_alloc();
    RequestMetadata.uuid.getter();
    swift_task_alloc();
    v37 = *(v33 + 16);
    sub_10000C750();
    v83 = v38;
    v38();
    v39 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_10000D58C();
    if (os_log_type_enabled(v39, v40))
    {
      sub_100007698();
      sub_100003E34();
      *v35 = 136315138;
      sub_10005A8F4();
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = sub_1000063D4();
      v44(v43);
      v45 = sub_1000037BC();
      sub_100004A3C(v45, v46, v47);
      sub_10000A08C();

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v39, v1, "executeStreaming request created to request id: %s", v35, 0xCu);
      sub_100003A7C();
      sub_100002BB8();
    }

    else
    {

      v48 = sub_1000063D4();
      v49(v48);
    }

    v78 = v0[44];
    v79 = v0[40];
    v80 = v0[39];
    v81 = v0[41];
    v50 = v0[37];
    v75 = v0[36];
    v76 = v0[38];
    v51 = v0[34];
    v52 = v0[31];
    v53 = v0[27];
    v77 = v0[21];

    v54 = swift_task_alloc();
    sub_10000C750();
    v83();
    sub_100007130((v0 + 7), (v0 + 12));
    sub_100004B50();
    sub_1000FF528((v0 + 12), v54);
    swift_endAccess();

    static RemoteInterfaceInformation.currentInterface.getter();
    sub_1000039A8();
    sub_100009BFC(v55, v56, v57, v52);
    sub_100065020(&qword_1001B90B8, &qword_10016FD30);
    v58 = *(v50 + 72);
    v59 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10016FF40;
    (*(v50 + 16))(v60 + v59, v76, v75);
    v61 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
    sub_100002F04(v61);
    v63 = *(v62 + 64);
    sub_100002C58();
    v83();
    sub_1000039A8();
    sub_100009BFC(v64, v65, v66, v31);
    sub_10002B0C0();
    RemoteIPCRequest.ExecuteRemoteStreamingRequest.Response.init(interface:result:requestId:)();

    v82(v36, v31);
    (*(v50 + 8))(v76, v75);
    (*(v79 + 8))(v81, v80);
  }

  sub_100003324(v0 + 7);
  sub_100003324(v0 + 2);
  v67 = v0[41];
  v68 = v0[38];
  v70 = v0[34];
  v69 = v0[35];
  v71 = v0[33];
  v72 = v0[30];

  sub_100001F00();

  return v73();
}

uint64_t sub_1000F2154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = *v10;
  v12 = *(*v10 + 392);
  v13 = *v10;
  sub_100002B9C();
  *v14 = v13;

  v15 = v11[41];
  v16 = v11[38];
  v17 = v11[35];
  v18 = v11[34];
  v19 = v11[33];
  v20 = v11[30];

  v21 = *(v13 + 8);
  sub_100006378();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_1000F22EC()
{
  sub_10001881C();
  sub_100003884();
  v1 = *(v0 + 360);
  sub_10001195C();

  sub_100001F00();
  sub_100007BB8();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000F2374()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];

  v5 = *(v3 + 8);
  v6 = sub_100001F70();
  v7(v6);
  v8 = v0[47];
  sub_10001195C();

  sub_100001F00();
  sub_100007BB8();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000F2420()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];

  v5 = *(v3 + 8);
  v6 = sub_100001F70();
  v7(v6);
  v8 = v0[20];
  sub_100003324(v0 + 7);
  sub_100003324(v0 + 2);
  sub_10001195C();

  sub_100001F00();
  sub_100007BB8();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000F24DC()
{
  sub_100002BAC();
  v1[56] = v2;
  v1[57] = v0;
  v1[55] = v3;
  v4 = sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  v1[58] = sub_100002C58();
  v7 = sub_100002C10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F2564()
{
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC();
  }

  v1 = v0[56];
  v2 = type metadata accessor for Logger();
  v0[59] = sub_10000641C(v2, qword_1001BBB58);
  v3 = type metadata accessor for UUID();
  v0[60] = v3;
  sub_100002BDC(v3);
  v5 = v4;
  v0[61] = *(v6 + 64);
  swift_task_alloc();
  v0[62] = *(v5 + 16);
  v0[63] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  sub_100019274();
  v124 = v7;
  v7();
  v8 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_10000D58C();
  v123 = v5;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100007698();
    v125 = sub_1000031E0();
    *v10 = 136315138;
    sub_10005A8F4();
    sub_100009B78();
    v11 = *(v5 + 8);
    v12 = sub_1000080D8();
    v11(v12);
    v13 = sub_100007660();
    v16 = sub_100004A3C(v13, v14, v15);

    *(v10 + 4) = v16;
    sub_1000166A4(&_mh_execute_header, v17, v18, "Entering RemoteManager.fetchNextStreamingResult for requestId: %s");
    sub_100003324(v125);
    sub_100002BB8();
    sub_100002BB8();

    v19 = v11;
  }

  else
  {

    v19 = *(v5 + 8);
    v20 = sub_1000080D8();
    v19(v20);
  }

  v0[64] = v19;
  v21 = v0[56];
  v22 = v0[57];

  swift_beginAccess();
  v23 = *(v22 + 248);

  sub_100007660();
  sub_100072C94(v24, v25);

  if (!v0[5])
  {
    v40 = v0[56];
    swift_task_alloc();
    sub_100019274();
    v124();
    v41 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10000D58C();
    if (os_log_type_enabled(v41, v42))
    {
      sub_100007698();
      v127 = sub_100003E34();
      *v19 = 136315138;
      sub_10005A8F4();
      sub_100009B78();
      v43 = sub_100013D98();
      v19(v43);
      v44 = sub_100004CB0();
      v47 = sub_100004A3C(v44, v45, v46);

      *(v19 + 4) = v47;
      sub_1000111AC(&_mh_execute_header, v48, v22, "fetchNextStreamingRequest called for unknown requestId: %s");
      sub_100003324(v127);
      sub_100002F64();
      sub_100012684();
    }

    else
    {

      v65 = sub_100013D98();
      v19(v65);
    }

    v66 = v0[56];

    v67 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v68, 255, v69);
    sub_100007894();
    swift_allocError();
    v71 = v70;
    (v124)(v70, v66, v3);
    sub_100006098(v67);
    (*(v72 + 104))(v71);
    goto LABEL_20;
  }

  v122 = v19;
  v26 = v0[56];
  v27 = v0[57];
  sub_100003324(v0 + 2);
  swift_beginAccess();
  v28 = *(v27 + 256);

  sub_100007660();
  sub_1000753F8();
  LOBYTE(v26) = v29;

  v30 = swift_task_alloc();
  v31 = v0[56];
  if (v26)
  {
    (v124)(v30, v0[56], v3);
    v32 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_10000D58C();
    if (os_log_type_enabled(v32, v33))
    {
      sub_100007698();
      v126 = sub_100003E34();
      *v31 = 136315138;
      sub_10005A8F4();
      sub_100009B78();
      v34 = sub_100013D98();
      v122(v34);
      v35 = sub_100004CB0();
      v38 = sub_100004A3C(v35, v36, v37);

      *(v31 + 4) = v38;
      sub_1000111AC(&_mh_execute_header, v39, v22, "fetchNextStreamingRequest for request: %s cannot be called concurrently");
      sub_100003324(v126);
      sub_100002F64();
      sub_100012684();
    }

    else
    {

      v73 = sub_100013D98();
      v122(v73);
    }

    v74 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v75, 255, v76);
    sub_100007894();
    v77 = swift_allocError();
    sub_10002AB60(v77, v78);
    sub_100006098(v74);
    (*(v79 + 104))(v80);
LABEL_20:
    swift_willThrow();
    v81 = v0[58];

    sub_100001F00();
LABEL_21:

    return v82();
  }

  swift_task_alloc();
  v124();
  sub_100004B50();
  sub_10007EE00();
  v0[65] = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49 = sub_1000080D8();
  v122(v49);
  swift_endAccess();

  v50 = *(v22 + 248);

  sub_100072C94(v50, (v0 + 7));

  v51 = v0[10];
  if (!v51)
  {
    v83 = v0[58];
    v84 = type metadata accessor for ClientData();
    v85 = sub_10000205C();
    sub_100009BFC(v85, v86, 1, v84);
    v88 = v0[62];
    v87 = v0[63];
    v89 = v0[60];
    v90 = v0[59];
    v91 = v0[56];
    v92 = v0[61] + 15;
    sub_10000ECD8(v0[58], &qword_1001BA5F0, &qword_100171290);
    v93 = swift_task_alloc();
    (v88)(v93, v91, v89);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v0[65];
    v98 = v0[64];
    v99 = v0[60];
    if (v96)
    {
      sub_100007698();
      sub_100003E34();
      *v88 = 136315138;
      sub_10005A8F4();
      v100 = dispatch thunk of CustomStringConvertible.description.getter();
      v98(v93, v99);
      v101 = sub_1000037BC();
      sub_100004A3C(v101, v102, v103);
      sub_10000A08C();

      *(v88 + 4) = v100;
      sub_1000111AC(&_mh_execute_header, v104, v95, "iterator is exhausted for requestId: %s, removing from ongoingStreams and returning nil");
      sub_100003A7C();
      sub_100012684();
    }

    else
    {

      v98(v93, v99);
    }

    v106 = v0[56];
    v105 = v0[57];

    sub_100004B50();
    sub_10014D450((v0 + 12));
    if (v0[15])
    {
      sub_100003324(v0 + 12);
    }

    v107 = v0[55];
    swift_endAccess();
    v108 = sub_10000205C();
    sub_100009BFC(v108, v109, 1, v84);
    if (v0[10])
    {
      sub_100003324(v0 + 7);
    }

    v110 = v0[56];
    v111 = v0[57];
    v112 = sub_100003754();
    v114 = sub_100065020(v112, v113);
    sub_100002F04(v114);
    v116 = *(v115 + 64);
    sub_100002C58();
    sub_100004B50();
    sub_100143444();
    sub_1000135D0();
    sub_10000ECD8(v117, v118, v119);
    swift_endAccess();
    v120 = v0[58];

    sub_100001F00();
    goto LABEL_21;
  }

  v52 = v0[57];
  sub_100007E70();
  v56 = sub_1000FA4CC(v53, v54, v55);
  v57 = v0[11];
  sub_100016494((v0 + 7), v51);
  v58 = *(v57 + 8);
  v59 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  swift_task_alloc();
  sub_100004B34();
  v0[66] = v62;
  *v62 = v63;
  v62[1] = sub_1000F2ECC;
  v64 = v0[58];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v64, v52, v56, v0 + 54, v51, v58, v60, v61);
}

uint64_t sub_1000F2ECC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 528);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;

  v9 = *(v3 + 456);
  if (v0)
  {
    v10 = sub_1000F331C;
  }

  else
  {
    v10 = sub_1000F2FC8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000F2FC8()
{
  v1 = *(v0 + 464);
  v2 = type metadata accessor for ClientData();
  v3 = sub_10000C6C0(v1, 1, v2);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  if (v3 == 1)
  {
    v8 = *(v0 + 472);
    v9 = *(v0 + 448);
    sub_10000ECD8(v1, &qword_1001BA5F0, &qword_100171290);
    v10 = swift_task_alloc();
    v5(v10, v9, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 520);
    v15 = *(v0 + 512);
    v16 = *(v0 + 480);
    if (v13)
    {
      sub_100007698();
      sub_100003E34();
      *v7 = 136315138;
      sub_10005A8F4();
      v46 = v12;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v15(v10, v16);
      v18 = sub_1000037BC();
      sub_100004A3C(v18, v19, v20);
      sub_10000A08C();

      *(v7 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v46, "iterator is exhausted for requestId: %s, removing from ongoingStreams and returning nil", v7, 0xCu);
      sub_100003A7C();
      sub_100012684();
    }

    else
    {

      v15(v10, v16);
    }

    v26 = *(v0 + 448);
    v25 = *(v0 + 456);

    sub_100004B50();
    sub_10014D450(v0 + 96);
    if (*(v0 + 120))
    {
      sub_100003324((v0 + 96));
    }

    v27 = *(v0 + 440);
    swift_endAccess();
    v28 = sub_10000205C();
  }

  else
  {
    v21 = *(v0 + 440);
    v22 = *(v0 + 448);
    sub_100006098(v2);
    (*(v23 + 32))();
    v24 = swift_task_alloc();
    v5(v24, v22, v7);
    if (*(v0 + 80))
    {
      sub_100007130(v0 + 56, v0 + 176);
    }

    else
    {
      v30 = *(v0 + 72);
      *(v0 + 176) = *(v0 + 56);
      *(v0 + 192) = v30;
      *(v0 + 208) = *(v0 + 88);
    }

    v31 = *(v0 + 456);
    v32 = *(v0 + 440);
    sub_100004B50();
    sub_1000FF528(v0 + 176, v24);
    swift_endAccess();

    v28 = v32;
    v29 = 0;
  }

  sub_100009BFC(v28, v29, 1, v2);
  if (*(v0 + 80))
  {
    sub_100003324((v0 + 56));
  }

  v33 = *(v0 + 448);
  v34 = *(v0 + 456);
  v35 = sub_1000071D0();
  v37 = sub_100065020(v35, v36);
  sub_100002F04(v37);
  v39 = *(v38 + 64);
  sub_100002C58();
  sub_100004B50();
  sub_100143444();
  sub_100006570();
  sub_10000ECD8(v40, v41, v42);
  swift_endAccess();
  v43 = *(v0 + 464);

  sub_100001F00();

  return v44();
}

uint64_t sub_1000F331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v17 = v16[54];
  if (v16[10])
  {
    sub_100003324(v16 + 7);
  }

  v19 = v16[62];
  v18 = v16[63];
  v21 = v16[60];
  v20 = v16[61];
  v22 = v16[59];
  v23 = v16[56];
  v24 = sub_100002C58();
  v19(v24, v23, v21);
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v16[65];
  v29 = v16[64];
  v30 = v16[60];
  if (v27)
  {
    v31 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a10 = sub_1000031E0();
    a12 = a10;
    *v31 = 138412546;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v32;
    *a9 = v32;
    *(v31 + 12) = 2080;
    sub_10005A8F4();
    dispatch thunk of CustomStringConvertible.description.getter();
    v29(v24, v30);
    v33 = sub_100008004();
    v36 = sub_100004A3C(v33, v34, v35);

    *(v31 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "fetchNextStreamingResult ran into %@. Invalidating the requestId: %s from ongoingStreams", v31, 0x16u);
    sub_10000ECD8(a9, &qword_1001B8F68, &qword_10016FB80);
    sub_100002BB8();
    sub_100003A7C();
    sub_100004B78();
  }

  else
  {

    v29(v24, v30);
  }

  v38 = v16[56];
  v37 = v16[57];

  sub_100004B50();
  sub_10014D450((v16 + 17));
  if (v16[20])
  {
    sub_100003324(v16 + 17);
  }

  v40 = v16[56];
  v39 = v16[57];
  swift_endAccess();
  swift_willThrow();
  v41 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  sub_100002F04(v41);
  v43 = *(v42 + 64);
  v44 = sub_100002C58();
  sub_100004B50();
  sub_100143444();
  sub_10000ECD8(v44, &qword_1001B9060, &unk_10016FCD0);
  swift_endAccess();

  v45 = v16[58];

  sub_100001F00();
  sub_100003D04();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, v17, a12, a13, a14, a15, a16);
}

uint64_t sub_1000F35C4()
{
  sub_100002BAC();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for Version();
  v1[15] = v3;
  sub_100002F44(v3);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = sub_100002C58();
  v7 = type metadata accessor for InferenceProviderDescriptor.Instance();
  sub_100002F04(v7);
  v9 = *(v8 + 64);
  v1[18] = sub_100002C58();
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v1[19] = v10;
  sub_100002F44(v10);
  v1[20] = v11;
  v13 = *(v12 + 64);
  v1[21] = sub_100002C58();
  v14 = sub_100002C10();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1000F36D4()
{
  sub_100001ED0();
  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_100003370((v0[14] + 152), *(v0[14] + 176));
  default argument 1 of InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
  default argument 2 of InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
  InferenceProviderDescriptor.init(id:instance:hostedOnServer:)();
  v4 = *v3;
  swift_task_alloc();
  sub_100004B34();
  v0[22] = v5;
  *v5 = v6;
  v5[1] = sub_1000F37CC;
  v7 = v0[21];

  return sub_1000253E8((v0 + 7), v7);
}

uint64_t sub_1000F37CC()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = v0[22];
  *v4 = *v2;
  *(v3 + 184) = v1;

  sub_10000CC7C();
  v7 = v0[20];
  v8 = v0[19];
  v9 = v0[14];
  (*(v7 + 8))(*(v6 + 168), v8);
  sub_10000CC50();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000F3930()
{
  sub_10000636C();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 136);
    sub_100004A04((v0 + 56), v0 + 16);
    v2 = *(v0 + 48);
    sub_100003370((v0 + 16), *(v0 + 40));
    Version.init(major:minor:patch:)();
    v3 = *(v2 + 16);
    v23 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_1000F3C7C;
    sub_1000031B8(*(v0 + 136));
    sub_10000C750();

    return v23();
  }

  else
  {
    sub_10000ECD8(v0 + 56, &qword_1001B9CB0, &qword_100171E70);
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC();
    }

    v7 = type metadata accessor for Logger();
    sub_100002FD0(v7, qword_1001BBB58);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_100007648();
      *v10 = 0;
      sub_10000A4A4();
      _os_log_impl(v11, v12, v13, v14, v10, 2u);
      sub_100002F64();
    }

    v15 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v16, 255, v17);
    sub_100007894();
    swift_allocError();
    sub_100006098(v15);
    (*(v18 + 104))();
    swift_willThrow();
    v19 = *(v0 + 168);
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);

    sub_100001F00();

    return v22();
  }
}

uint64_t sub_1000F3C04()
{
  sub_100001ED0();
  v1 = v0[23];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];

  sub_100001F00();

  return v5();
}

uint64_t sub_1000F3C7C()
{
  sub_10001881C();
  sub_100003884();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v7 = v4[24];
  v8 = v4[16];
  *v6 = *v1;
  v5[25] = v0;

  v9 = v4[17];
  v10 = v4[15];
  v11 = v4[14];
  if (!v0)
  {
    *(v5 + 208) = v3 & 1;
  }

  (*(v8 + 8))(v9, v10);
  sub_100007BB8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000F3E0C()
{
  sub_10001881C();
  sub_100003884();
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = v2[29];
  sub_100003370(v2 + 25, v2[28]);
  v4 = *(v3 + 8);
  v5 = sub_1000060A4();
  if ((v6(v5) & 1) != 0 && v1)
  {
    v7 = *(v0 + 104);
    static RemoteDeviceSet.virtualHost.getter();
  }

  else
  {
    v8 = *(v0 + 208);
    v9 = v2[29];
    sub_100003370(v2 + 25, v2[28]);
    v10 = *(v9 + 16);
    v11 = sub_1000060A4();
    v13 = v12(v11);
    v14 = *(v0 + 104);
    if ((v13 & 1) != 0 && v8)
    {
      v15 = *(v0 + 104);
      static RemoteDeviceSet.simulatorHost.getter();
    }

    else
    {
      type metadata accessor for RemoteDeviceSet();
      *(v0 + 96) = _swiftEmptyArrayStorage;
      sub_1000FA4CC(&qword_1001BBE38, 255, &type metadata accessor for RemoteDeviceSet);
      v16 = sub_1000071D0();
      sub_100065020(v16, v17);
      sub_100006570();
      sub_1000082D4(v18, v19, v20);
      dispatch thunk of SetAlgebra.init<A>(_:)();
    }
  }

  v21 = *(v0 + 168);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  sub_100003324((v0 + 16));

  sub_100001F00();
  sub_100007BB8();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31);
}

uint64_t sub_1000F3FD4()
{
  sub_100001ED0();
  sub_100003324(v0 + 2);
  v1 = v0[25];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];

  sub_100001F00();

  return v5();
}

void sub_1000F4054(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v42) = a3;
  v5 = sub_100065020(&qword_1001B9C50, &qword_1001706A8);
  v6 = sub_100002F04(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v41 - v9;
  v44 = a1;
  URL.init(string:)();
  v11 = type metadata accessor for URL();
  v12 = sub_100002BDC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  sub_1000FAD20();
  if (sub_10000C6C0(&v41 - v9, 1, v11) == 1)
  {
    sub_100006570();
    sub_10000ECD8(v20, v21, v22);
    v23 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v24, 255, v25);
    sub_100007894();
    swift_allocError();
    *v26 = v44;
    v26[1] = a2;
    sub_100006098(v23);
    (*(v27 + 104))();
    swift_willThrow();

    sub_100006570();
LABEL_6:
    sub_10000ECD8(v28, v29, v30);
    goto LABEL_7;
  }

  (*(v14 + 32))(v19, &v41 - v9, v11);
  v31 = v46;
  v32 = *sub_100003370((v46 + 112), *(v46 + 136));
  v33 = v43;
  sub_100003E80(v19);
  if (v33)
  {
    (*(v14 + 8))(v19, v11);
    v29 = &qword_1001B9C50;
    v30 = &qword_1001706A8;
    v28 = &v41 - v9;
    goto LABEL_6;
  }

  v35 = v34;

  type metadata accessor for DaemonSession(0);
  sub_10001F04C(v35, BYTE4(v42) & 1, v31 + 200, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  (*(v14 + 8))(v19, v11);
  sub_10000ECD8(v10, &qword_1001B9C50, &qword_1001706A8);
LABEL_7:
  sub_10002B0C0();
}

uint64_t sub_1000F4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned int a7, unsigned int a8)
{
  v114 = __PAIR64__(a8, a7);
  v111 = a6;
  v109 = a5;
  v106 = a4;
  v116 = a2;
  v117 = a3;
  v115 = a1;
  v110 = type metadata accessor for ClientData();
  v8 = sub_100002BDC(v110);
  v108 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100008624();
  v113 = v12;
  sub_100003B1C();
  v13 = type metadata accessor for RequestMetadata();
  v14 = sub_100002F04(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100008624();
  v112 = v17;
  sub_100003B1C();
  v18 = type metadata accessor for TaskPriority();
  v19 = sub_100002F04(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_100008624();
  v120 = v22;
  sub_100003B1C();
  v103 = type metadata accessor for Version();
  v23 = sub_100002BDC(v103);
  v102 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_100008624();
  v119 = v27;
  v28 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v29 = sub_100002BDC(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v29);
  v104 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v90 - v37;
  __chkstk_darwin(v36);
  v40 = &v90 - v39;
  v41 = type metadata accessor for UUID();
  v42 = sub_100002BDC(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  UUID.init()();
  type metadata accessor for Session();
  UUIDIdentifier.init()();
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC();
  }

  v48 = type metadata accessor for Logger();
  v49 = sub_100002FD0(v48, qword_1001BBB58);
  v93 = &v90;
  v101 = v46;
  __chkstk_darwin(v49);
  v50 = &v90 - v47;
  v51 = *(v44 + 16);
  v105 = &v90 - v47;
  v98 = (v44 + 16);
  v97 = v51;
  v51(&v90 - v47, &v90 - v47, v41);
  v52 = v41;
  v53 = *(v31 + 16);
  v107 = v40;
  v96 = v53;
  v53(v38, v40, v28);
  v54 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_10000D58C();
  v56 = os_log_type_enabled(v54, v55);
  v118 = v41;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v95 = v38;
    v58 = v28;
    v59 = v57;
    v92 = swift_slowAlloc();
    v121 = v92;
    *v59 = 136315394;
    sub_10005A8F4();
    sub_100009B78();
    v60 = *(v44 + 8);
    v99 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61 = v50;
    v62 = v58;
    v100 = v60;
    v60(v61, v118);
    v63 = sub_100001F70();
    v66 = sub_100004A3C(v63, v64, v65);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2080;
    sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
    v67 = v95;
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000265F4();
    v95 = v68;
    v68(v67, v58);
    v69 = sub_1000062B0();
    v72 = sub_100004A3C(v69, v70, v71);

    *(v59 + 14) = v72;
    v52 = v118;
    _os_log_impl(&_mh_execute_header, v54, v40, "Creating remote request with uuid: %s and session UUID: %s", v59, 0x16u);
    swift_arrayDestroy();
    sub_100002BB8();
    sub_10000706C();
  }

  else
  {

    sub_1000265F4();
    v95 = v73;
    v73(v38, v28);
    v74 = *(v44 + 8);
    v99 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v75 = sub_1000080D8();
    v100 = v76;
    (v76)(v75);
    v62 = v28;
  }

  v91 = v62;
  v77 = sub_100003B1C();
  v93 = type metadata accessor for DaemonRequest(v77);
  type metadata accessor for CustomAssetConfiguration();
  v92 = Dictionary.init(dictionaryLiteral:)();
  sub_100007130(v106, &v121);
  (*(v102 + 16))(v119, v109, v103);
  static TaskPriority.userInitiated.getter();
  v78 = (*(v108 + 16))(v113, v111, v110);
  v111 = &v90;
  __chkstk_darwin(v78);
  v80 = v105;
  v97(&v90 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0), v105, v52);
  v81 = v107;
  v96(v104, v107, v62);
  v82 = v117;
  v83 = sub_1000EED90(v117);
  sub_100077254(v83);
  default argument 7 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  default argument 8 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  default argument 9 of RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();
  v84 = v112;
  sub_1000FB130();
  RequestMetadata.init(loggingIdentifier:clientData:UUID:sessionID:requiredAssetIDs:isInference:isStream:isInputStream:subrequestID:allInputStreamed:useCaseID:)();

  v85 = v116;

  LOWORD(v89) = *(&v114 + 3) & 0x100;
  sub_10014F010(v115, v85, v82, v92, &v121, v119, v120, 0x614D65746F6D6552, 0xED0000726567616ELL, v89, v84, 0xE000000000000000, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, BYTE1(v99), v100);
  v87 = v86;
  v95(v81, v91);
  v100(v80, v118);
  return v87;
}

uint64_t sub_1000F4BD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100002C10();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F4C04()
{
  sub_100003884();
  v2 = v0[3];
  v1 = v0[4];
  sub_100007E70();
  sub_1000FA4CC(v3, v4, v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  type metadata accessor for InferenceProviderRequestResult();
  *v8 = v0;
  v8[1] = sub_1000F4D28;
  v9 = v0[2];
  sub_100019274();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_1000F4D28()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    v9 = v3[4];

    return _swift_task_switch(sub_1000F4E48, v9, 0);
  }

  else
  {
    v10 = v3[5];

    sub_100001F00();

    return v11();
  }
}

uint64_t sub_1000F4E48()
{
  sub_100002BAC();
  v1 = *(v0 + 40);

  sub_100001F00();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1000F4EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  sub_100009BFC(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v17 = sub_1000FA4CC(&qword_1001BBE28, v16, type metadata accessor for RemoteManager);
  v18 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  *(v19 + 3) = v17;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v7 + 32))(&v19[v18], v10, v6);
  swift_retain_n();

  sub_1000652FC();
}

uint64_t sub_1000F50BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v8 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v6[8] = *(v9 + 64);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000F5198, a4, 0);
}

uint64_t sub_1000F5198()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[8];
  v2 = v0[7];
  v3 = *(v0[3] + 192);
  (*(v2 + 16))(v0[9], v0[5], v0[6]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v0[10] = swift_allocObject();
  v5 = *(v2 + 32);
  sub_10000C750();
  v6();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1000F52B4;
  sub_1000031B8(v0[4]);
  sub_100007BB8();

  return sub_100139284();
}

uint64_t sub_1000F52B4()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  v8 = *v1;
  sub_100002B9C();
  *v9 = v8;
  v3[12] = v0;

  if (v0)
  {
    v10 = v3[3];

    return _swift_task_switch(sub_1000F53FC, v10, 0);
  }

  else
  {
    v11 = v3[9];

    sub_100001F00();

    return v12();
  }
}

uint64_t sub_1000F53FC()
{
  sub_100002BAC();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v0[12];
  CheckedContinuation.resume(throwing:)();
  v3 = v0[9];

  sub_100001F00();

  return v4();
}

uint64_t sub_1000F5468(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for InferenceProviderRequestResult();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F5528, 0, 0);
}

uint64_t sub_1000F5528()
{
  sub_100002BAC();
  v1 = v0[3];
  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  CheckedContinuation.resume(returning:)();

  sub_100001F00();

  return v2();
}

uint64_t sub_1000F55C0()
{
  sub_100002BAC();
  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  *(v1 + 580) = v3;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = v7;
  *(v1 + 160) = v8;
  v9 = type metadata accessor for ModelManagerError();
  *(v1 + 216) = v9;
  sub_100002F44(v9);
  *(v1 + 224) = v10;
  v12 = *(v11 + 64);
  *(v1 + 232) = sub_100002C58();
  v13 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  *(v1 + 240) = v13;
  sub_100002F44(v13);
  *(v1 + 248) = v14;
  v16 = *(v15 + 64);
  *(v1 + 256) = sub_100002C58();
  v17 = sub_100065020(&qword_1001BBE18, &unk_1001726C0);
  *(v1 + 264) = v17;
  sub_100002F04(v17);
  v19 = *(v18 + 64);
  *(v1 + 272) = sub_100002C58();
  v20 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  sub_100002F04(v20);
  v22 = *(v21 + 64);
  *(v1 + 280) = sub_10000F0C0();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  v23 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 304) = v23;
  sub_100002F44(v23);
  *(v1 + 312) = v24;
  v26 = *(v25 + 64);
  *(v1 + 320) = sub_10000F0C0();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  v27 = sub_100065020(&qword_1001B9C80, &unk_1001726D0);
  sub_100002F04(v27);
  v29 = *(v28 + 64);
  *(v1 + 368) = sub_10000F0C0();
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  *(v1 + 392) = swift_task_alloc();
  v30 = sub_100065020(&qword_1001B9C88, &qword_1001706E0);
  sub_100002F04(v30);
  v32 = *(v31 + 64);
  *(v1 + 400) = sub_10000F0C0();
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  v33 = sub_100002C10();

  return _swift_task_switch(v33, v34, v35);
}

uint64_t sub_1000F5850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011AD8();
  sub_100012BA8();
  v27 = *(v26 + 416);
  v28 = *(v26 + 392);
  v29 = *(v26 + 208);
  v30 = *(v26 + 216);
  v32 = *(v26 + 176);
  v31 = *(v26 + 184);
  *(v26 + 424) = type metadata accessor for InferenceProviderRequestResult();
  sub_100003978();
  sub_100009BFC(v33, v34, v35, v36);
  sub_100003978();
  sub_100009BFC(v37, v38, v39, v30);
  sub_1000F4054(v32, v31, 0);
  *(v26 + 432) = v40;
  *(v26 + 440) = v41;
  v61 = v40;
  v63 = v62;
  v64 = v41;
  v65 = *(v26 + 312);
  *(v26 + 448) = v62;
  v66 = *(v41 + 16);
  *(v26 + 568) = enum case for InferenceError.versionNotSupported(_:);
  *(v26 + 572) = enum case for ModelManagerError.inferenceError(_:);
  v67 = *(v26 + 208);
  *(v26 + 576) = enum case for ModelManagerError.unrecognizedInferenceProvider(_:);
  *(v26 + 456) = v66;
  *(v26 + 464) = 0;
  *(v26 + 472) = 0;

  if (v66)
  {
    if (*(v64 + 16))
    {
      v68 = *(v26 + 360);
      v69 = *(v26 + 304);
      v71 = *(v65 + 16);
      v70 = v65 + 16;
      v72 = (*(v70 + 64) + 32) & ~*(v70 + 64);
      *(v26 + 480) = v71;
      *(v26 + 488) = v70 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v71(v68, v64 + v72, v69);
      v73 = *sub_100003370((v67 + 152), *(v67 + 176));
      swift_task_alloc();
      sub_100004B34();
      *(v26 + 496) = v74;
      *v74 = v75;
      sub_100002D78(v74);
      sub_100008228();

      return sub_1000253E8(v76, v77);
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_10001363C();
  sub_1000FAD20();
  sub_100003494(v67);
  if (v79)
  {
    v80 = *(v26 + 400);
    v81 = &qword_1001B9C88;
    v82 = &qword_1001706E0;
LABEL_20:
    sub_10000ECD8(v80, v81, v82);
LABEL_21:
    sub_100003614();
    sub_1000FAD20();
    sub_10000A2BC();
    if (!v79)
    {
      v115 = sub_100006544();
      v116(v115);
      sub_1000051EC();
      sub_1000FA4CC(v117, 255, v118);
      sub_10003DD94();
      sub_100007894();
      v119 = swift_allocError();
      v121 = sub_10000A904(v119, v120);
      v122(v121);
      v125 = v67;
      swift_willThrow();

      v123 = sub_100007228();
      v124(v123);
LABEL_2:
      sub_10000ECD8(v61, &qword_1001B9C80, &unk_1001726D0);
      sub_10000ECD8(v63, &qword_1001B9C88, &qword_1001706E0);
      v43 = *(v26 + 408);
      v42 = *(v26 + 416);
      v44 = *(v26 + 392);
      v45 = *(v26 + 400);
      v47 = *(v26 + 376);
      v46 = *(v26 + 384);
      v49 = *(v26 + 360);
      v48 = *(v26 + 368);
      v51 = *(v26 + 344);
      v50 = *(v26 + 352);
      sub_10001144C();

      sub_100001F00();
      sub_100008228();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v125, a23, a24, a25, a26);
    }

    sub_10000ECD8(*(v26 + 368), &qword_1001B9C80, &unk_1001726D0);
    if (qword_1001B8960 == -1)
    {
LABEL_24:
      v104 = type metadata accessor for Logger();
      sub_100002FD0(v104, qword_1001BBB58);
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.fault.getter();
      if (sub_100006468(v106))
      {
        v107 = sub_100007648();
        sub_10000BF10(v107);
        sub_100009DDC(&_mh_execute_header, v108, v109, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v110, 255, v111);
      v112 = sub_100008194();
      sub_10002AB60(v112, v113);
      sub_100007F60();
      v114();
      v125 = v105;
      swift_willThrow();

      goto LABEL_2;
    }

LABEL_28:
    sub_1000086EC();
    goto LABEL_24;
  }

  v83 = sub_100005710();
  v63 = v84;
  (*(v85 + 32))(v83);
  if (!v64)
  {
    v100 = sub_10001995C();
    v101(v100);
    goto LABEL_21;
  }

  sub_10000AA54();
  sub_1000FAD20();
  sub_10000A2BC();
  if (!v79)
  {
    v102 = sub_100009DC8();
    v103(v102);
    v81 = &qword_1001B9C80;
    v82 = &unk_1001726D0;
    v80 = v65;
    goto LABEL_20;
  }

  sub_100007AB0();
  sub_100019BD8();

  sub_100003914();
  sub_10000ECD8(v86, v87, v88);
  sub_10000ECD8(v67, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v89, v90, v91);

  sub_10000EEAC();
  sub_100008228();

  return v94(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000F5EB0()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 496);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[63] = v0;

  if (v0)
  {
    v9 = v3[55];
    v10 = v3[56];
    v11 = v3[54];
    v12 = v3[26];

    v13 = sub_1000F68A4;
    v14 = v12;
  }

  else
  {
    v14 = v3[26];
    v13 = sub_1000F5FDC;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_1000F5FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  a33 = v35;
  a34 = v36;
  sub_100012BA8();
  a32 = v34;
  sub_1000FAD20();
  if (*(v34 + 120))
  {
    v178 = sub_100018428();
    v179 = v37 + *v37;
    v38 = v37[1];
    v39 = swift_task_alloc();
    *(v34 + 512) = v39;
    *v39 = v34;
    v39[1] = sub_1000F6A08;
    sub_1000031B8(*(v34 + 168));
    sub_10000C750();
    sub_100008228();

    return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v178, v179, a22, a23, a24, a25, a26);
  }

  sub_10000ECD8(v34 + 96, &qword_1001B9CB0, &qword_100171E70);
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC();
  }

  v50 = *(v34 + 480);
  v49 = *(v34 + 488);
  v51 = *(v34 + 360);
  v52 = *(v34 + 320);
  v53 = *(v34 + 304);
  v177 = type metadata accessor for Logger();
  sub_10000641C(v177, qword_1001BBB58);
  v54 = sub_1000062B0();
  v50(v54);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  v57 = sub_100026838(v56);
  v59 = *(v34 + 312);
  v58 = *(v34 + 320);
  v60 = *(v34 + 304);
  if (v57)
  {
    v61 = sub_100007698();
    v62 = sub_1000031E0();
    a22 = v62;
    *v61 = 136315138;
    sub_100005D20();
    sub_1000FA4CC(v63, 255, v64);
    sub_10003DD94();
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v68 = *(v59 + 8);
    v69 = sub_100008004();
    v180 = v70;
    v70(v69);
    sub_100004A3C(v65, v67, &a22);
    sub_10000A08C();

    *(v61 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed to acquire %s, falling back to next IP", v61, 0xCu);
    sub_100003324(v62);
    sub_100002F64();
    sub_100004B78();
  }

  else
  {

    v71 = *(v59 + 8);
    v72 = sub_100008004();
    v180 = v73;
    v73(v72);
  }

  LODWORD(a20) = *(v34 + 576);
  v75 = *(v34 + 384);
  v74 = *(v34 + 392);
  v76 = *(v34 + 360);
  v77 = *(v34 + 304);
  v79 = *(v34 + 216);
  v78 = *(v34 + 224);
  v80 = *(v34 + 312) + 8;
  v81 = InferenceProviderDescriptor.description.getter();
  v83 = v82;
  sub_10000ECD8(v34 + 16, &qword_1001B9CB0, &qword_100171E70);
  v84 = sub_100005E8C();
  v180(v84);
  sub_100003914();
  sub_10000ECD8(v85, v86, v87);
  *v75 = v81;
  v75[1] = v83;
  v89 = *(v78 + 104);
  v88 = v78 + 104;
  v89(v75, a20, v79);
  sub_1000039A8();
  sub_100009BFC(v90, v91, v92, v79);
  sub_1000FAA80();
  sub_100018D20();
  if (!v93)
  {
    sub_100011A04();
    if (!v104)
    {
      v106 = sub_10001281C(v105);
      v107(v106);
      sub_1000402F4();
      swift_task_alloc();
      sub_100004B34();
      *(v34 + 496) = v108;
      *v108 = v109;
      sub_100002D78();
      sub_100008228();

      return sub_1000253E8(v110, v111);
    }

    __break(1u);
    goto LABEL_37;
  }

  v94 = *(v34 + 440);
  v95 = *(v34 + 448);
  v96 = *(v34 + 432);

  v97 = *(v34 + 464);
  v98 = *(v34 + 416);
  v99 = *(v34 + 424);
  v100 = *(v34 + 400);
  sub_1000FAD20();
  sub_100003494(v100);
  if (v93)
  {
    v101 = *(v34 + 400);
    v102 = &qword_1001B9C88;
    v103 = &qword_1001706E0;
LABEL_26:
    sub_10000ECD8(v101, v102, v103);
LABEL_27:
    v141 = *(v34 + 392);
    v142 = *(v34 + 368);
    v74 = *(v34 + 216);
    sub_1000FAD20();
    v143 = sub_10000205C();
    sub_10000323C(v143, v144, v74);
    if (!v93)
    {
      v155 = sub_100006544();
      v156(v155);
      sub_1000051EC();
      sub_1000FA4CC(v157, 255, v158);
      sub_10003DD94();
      sub_100007894();
      v159 = swift_allocError();
      v161 = sub_10000A904(v159, v160);
      v162(v161);
      v181 = v88;
      swift_willThrow();

      v163 = sub_100007228();
      v164(v163);
LABEL_33:
      sub_10000ECD8(v75, &qword_1001B9C80, &unk_1001726D0);
      sub_10000ECD8(v74, &qword_1001B9C88, &qword_1001706E0);
      sub_100003088();
      sub_10000F1A8();

      sub_100001F00();
      sub_100008228();

      return v166(v165, v166, v167, v168, v169, v170, v171, v172, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v177, a20, v181, a22, a23, a24, a25, a26);
    }

    sub_10000ECD8(*(v34 + 368), &qword_1001B9C80, &unk_1001726D0);
    if (qword_1001B8960 == -1)
    {
LABEL_30:
      sub_100002FD0(v177, qword_1001BBB58);
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.fault.getter();
      if (sub_100006468(v146))
      {
        v147 = sub_100007648();
        sub_10000BF10(v147);
        sub_100009DDC(&_mh_execute_header, v148, v149, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v150, 255, v151);
      v152 = sub_100008194();
      sub_10002AB60(v152, v153);
      sub_100007F60();
      v154();
      v181 = v145;
      swift_willThrow();

      goto LABEL_33;
    }

LABEL_37:
    sub_1000086EC();
    goto LABEL_30;
  }

  v113 = sub_100005710();
  v115 = v114;
  (*(v116 + 32))(v113);
  if (!v97)
  {
    v138 = *(v115 + 8);
    v88 = v115 + 8;
    v138(*(v34 + 160), *(v34 + 424));
    goto LABEL_27;
  }

  v117 = *(v34 + 392);
  v118 = *(v34 + 376);
  v119 = *(v34 + 216);
  sub_1000FAD20();
  v120 = sub_10000205C();
  sub_10000323C(v120, v121, v119);
  if (!v93)
  {
    v139 = *(v34 + 376);
    v140 = *(v115 + 8);
    v88 = v115 + 8;
    v140(*(v34 + 160), *(v34 + 424));
    v102 = &qword_1001B9C80;
    v103 = &unk_1001726D0;
    v101 = v139;
    goto LABEL_26;
  }

  sub_100007AB0();
  v173 = v123;
  v174 = v122;
  v175 = *(v34 + 352);
  v176 = *(v34 + 344);
  sub_10001144C();

  sub_100003914();
  sub_10000ECD8(v124, v125, v126);
  sub_10000ECD8(v115, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v127, v128, v129);

  sub_10000EEAC();
  sub_100008228();

  return v132(v130, v131, v132, v133, v134, v135, v136, v137, v173, v174, v175, v176, a13, a14, a15, a16, a17, a18, v177, a20, v180, a22, a23, a24, a25, a26);
}

uint64_t sub_1000F68A4()
{
  sub_100013464();

  v3 = sub_100005EE8();
  v4(v3);
  sub_10000ECD8(v2, &qword_1001B9C80, &unk_1001726D0);
  sub_10000ECD8(v0, &qword_1001B9C88, &qword_1001706E0);
  v5 = *(v1 + 504);
  sub_1000194D4();

  sub_100001F00();

  return v6();
}

uint64_t sub_1000F6A08()
{
  sub_100001ED0();
  v3 = v2;
  sub_100001EF4();
  v5 = v4;
  sub_100004B40();
  *v6 = v5;
  v8 = *(v7 + 512);
  v9 = *v1;
  sub_100002B9C();
  *v10 = v9;
  *(v5 + 520) = v0;

  if (v0)
  {
    v11 = *(v5 + 440);
    v12 = *(v5 + 448);
    v13 = *(v5 + 432);
    v14 = *(v5 + 208);

    v15 = sub_1000F87D0;
    v16 = v14;
  }

  else
  {
    v16 = *(v5 + 208);
    *(v5 + 581) = v3 & 1;
    v15 = sub_1000F6B40;
  }

  return _swift_task_switch(v15, v16, 0);
}

uint64_t sub_1000F6B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t, uint64_t), uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  a33 = v35;
  a34 = v36;
  sub_100012BA8();
  a32 = v34;
  if (*(v34 + 581))
  {
    v37 = *(v34 + 488);
    v38 = *(v34 + 440);
    v39 = *(v34 + 304);
    (*(v34 + 480))(*(v34 + 296), *(v34 + 360), v39);
    v40 = 1;
    sub_1000039A8();
    sub_100009BFC(v41, v42, v43, v39);
    if (*(v38 + 16))
    {
      sub_100020444(0, *(v34 + 440), *(v34 + 288));
      v40 = 0;
    }

    v44 = *(v34 + 304);
    v46 = *(v34 + 264);
    v45 = *(v34 + 272);
    sub_100009BFC(*(v34 + 288), v40, 1, v44);
    v47 = *(v46 + 48);
    sub_100019274();
    sub_1000FAD20();
    sub_1000FAD20();
    v48 = sub_10000205C();
    v50 = sub_10000C6C0(v48, v49, v44);
    v51 = *(v34 + 304);
    if (v50 == 1)
    {
      v52 = *(v34 + 288);
      v53 = *(v34 + 296);
      sub_100006570();
      sub_10000ECD8(v54, v55, v56);
      sub_100006570();
      sub_10000ECD8(v57, v58, v59);
      sub_10000323C(v45 + v47, 1, v51);
      if (!v60)
      {
        goto LABEL_15;
      }

      sub_10000ECD8(*(v34 + 272), &qword_1001B9CD0, &qword_100170778);
      v61 = 0;
    }

    else
    {
      v87 = *(v34 + 272);
      v88 = *(v34 + 280);
      sub_1000FAD20();
      sub_10000323C(v45 + v47, 1, v51);
      if (v60)
      {
        v89 = *(v34 + 304);
        v90 = *(v34 + 312);
        v91 = *(v34 + 288);
        v92 = *(v34 + 296);
        v93 = *(v34 + 280);
        sub_100006570();
        sub_10000ECD8(v94, v95, v96);
        sub_100006570();
        sub_10000ECD8(v97, v98, v99);
        (*(v90 + 8))(v93, v89);
LABEL_15:
        sub_10000ECD8(*(v34 + 272), &qword_1001BBE18, &unk_1001726C0);
        v61 = 1;
        goto LABEL_26;
      }

      v129 = *(v34 + 304);
      v130 = *(v34 + 312);
      v132 = *(v34 + 288);
      v131 = *(v34 + 296);
      v133 = *(v34 + 280);
      v258 = *(v34 + 272);
      (*(v130 + 32))(*(v34 + 352), v45 + v47, v129);
      sub_100005D20();
      sub_1000FA4CC(v134, 255, v135);
      sub_1000071D0();
      v136 = dispatch thunk of static Equatable.== infix(_:_:)();
      v137 = *(v130 + 8);
      v138 = sub_1000080D8();
      v137(v138);
      sub_1000FB130();
      sub_10000ECD8(v139, v140, v141);
      sub_1000FB130();
      sub_10000ECD8(v142, v143, v144);
      (v137)(v133, v129);
      sub_1000FB130();
      sub_10000ECD8(v145, v146, v147);
      v61 = v136 ^ 1;
    }

LABEL_26:
    v148 = *(v34 + 464);
    *(v34 + 528) = sub_1000F4398(*(v34 + 176), *(v34 + 184), *(v34 + 432), v34 + 56, *(v34 + 168), *(v34 + 192), *(v34 + 580), v61 & 1);

    v149 = qword_1001B8960;

    if (v149 != -1)
    {
      sub_1000086EC();
    }

    v151 = *(v34 + 480);
    v150 = *(v34 + 488);
    v152 = *(v34 + 360);
    v153 = *(v34 + 344);
    v154 = *(v34 + 304);
    v155 = type metadata accessor for Logger();
    *(v34 + 536) = sub_10000641C(v155, qword_1001BBB58);
    sub_10002B0C0();
    (v151)();
    v156 = Logger.logObject.getter();
    v157 = static os_log_type_t.info.getter();
    v158 = os_log_type_enabled(v156, v157);
    v159 = *(v34 + 392);
    v160 = *(v34 + 344);
    v162 = *(v34 + 304);
    v161 = *(v34 + 312);
    if (v158)
    {
      sub_100007698();
      a22 = sub_100003E34();
      *v151 = 136315138;
      sub_100005D20();
      sub_1000FA4CC(v163, 255, v164);
      v165 = dispatch thunk of CustomStringConvertible.description.getter();
      v256 = v159;
      v167 = v166;
      v255 = v157;
      v168 = *(v161 + 8);
      v169 = sub_100004CB0();
      v168(v169);
      v170 = sub_100004A3C(v165, v167, &a22);

      *(v151 + 4) = v170;
      sub_1000111AC(&_mh_execute_header, v171, v255, "Attemping to execute a request with inference provider %s");
      sub_100003A7C();
      sub_100012684();

      v172 = v256;
    }

    else
    {

      v168 = *(v161 + 8);
      v173 = sub_100004CB0();
      v168(v173);
      v172 = v159;
    }

    sub_10000ECD8(v172, &qword_1001B9C80, &unk_1001726D0);
    *(v34 + 544) = v168;
    v174 = *(v34 + 392);
    v176 = *(v34 + 248);
    v175 = *(v34 + 256);
    v177 = *(v34 + 240);
    v179 = *(v34 + 208);
    v178 = *(v34 + 216);
    v180 = *(v34 + 200);
    sub_100003978();
    sub_100009BFC(v181, v182, v183, v184);
    RequestMetadata.sessionID.getter();
    v185 = v175 + *(v177 + 20);
    RequestMetadata.id.getter();
    v186 = *(v177 + 24);
    v187 = type metadata accessor for RemoteInterfaceInformation();
    sub_100005680(v187);
    (*(v188 + 16))(v175 + v186, v180);
    sub_100004B50();
    sub_10013FA3C();
    v189 = *(*(v179 + 240) + 16);
    sub_10013FACC(v189);
    v190 = *(v179 + 240);
    *(v190 + 16) = v189 + 1;
    v191 = v190 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
    v192 = *(v176 + 72);
    sub_1000FA888();
    *(v179 + 240) = v190;
    swift_endAccess();
    swift_task_alloc();
    sub_100004B34();
    *(v34 + 552) = v193;
    *v193 = v194;
    v193[1] = sub_1000F78E0;
    v195 = *(v34 + 408);
    v196 = *(v34 + 208);
    sub_100008228();

    return sub_1000F4BD8(v197, v198);
  }

  v62 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
  if (qword_1001B8960 != -1)
  {
    sub_1000086EC();
  }

  v64 = *(v34 + 480);
  v63 = *(v34 + 488);
  v65 = *(v34 + 360);
  v66 = *(v34 + 328);
  v67 = *(v34 + 304);
  v68 = type metadata accessor for Logger();
  sub_10000641C(v68, qword_1001BBB58);
  v69 = sub_1000062B0();
  v64(v69);
  v70 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10000D58C();
  v72 = os_log_type_enabled(v70, v71);
  v73 = *(v34 + 392);
  v257 = *(v34 + 360);
  v74 = *(v34 + 328);
  v76 = *(v34 + 304);
  v75 = *(v34 + 312);
  if (v72)
  {
    v77 = sub_100007698();
    a20 = v68;
    a18 = sub_1000031E0();
    a22 = a18;
    *v77 = 136315138;
    sub_100005D20();
    sub_1000FA4CC(v78, 255, v79);
    a19 = v73;
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    a17 = *(v75 + 8);
    a17(v74, v76);
    v83 = sub_100004A3C(v80, v82, &a22);

    *(v77 + 4) = v83;
    sub_1000166A4(&_mh_execute_header, v84, v85, "Current IP %s does not support this version, falling back");
    sub_100003324(a18);
    sub_100002BB8();
    v62 = &selRef_addUpdateHandlerForNamespaceName_usingBlock_;
    sub_100002BB8();

    sub_10000ECD8(v34 + 16, &qword_1001B9CB0, &qword_100171E70);
    a17(v257, v76);
    v86 = a19;
  }

  else
  {

    v100 = *(v75 + 8);
    v100(v74, v76);
    sub_10000ECD8(v34 + 16, &qword_1001B9CB0, &qword_100171E70);
    v100(v257, v76);
    v86 = v73;
  }

  sub_10000ECD8(v86, &qword_1001B9C80, &unk_1001726D0);
  v101 = *(v34 + 572);
  v102 = *(v34 + 568);
  v103 = *(v34 + 392);
  v104 = *(v34 + 216);
  v105 = *(v34 + 224);
  v106 = type metadata accessor for InferenceError();
  sub_100005680(v106);
  (*(v107 + 104))(v103, v102);
  v109 = *(v105 + 104);
  v108 = v105 + 104;
  v109(v103, v101, v104);
  sub_1000039A8();
  sub_100009BFC(v110, v111, v112, v104);
  sub_100003324((v34 + 56));
  sub_100018D20();
  if (!v60)
  {
    sub_100011A04();
    if (!v119)
    {
      v121 = sub_10001281C(v120);
      v122(v121);
      sub_1000402F4();
      swift_task_alloc();
      sub_100004B34();
      *(v34 + 496) = v123;
      *v123 = v124;
      sub_100002D78();
      sub_100008228();

      return sub_1000253E8(v125, v126);
    }

    __break(1u);
    goto LABEL_52;
  }

  v113 = *(v34 + 440);
  v114 = *(v34 + 448);
  v115 = *(v34 + 432);

  sub_10001363C();
  sub_1000FAD20();
  sub_100003494(v103);
  if (v60)
  {
    v116 = *(v34 + 400);
    v117 = &qword_1001B9C88;
    v118 = &qword_1001706E0;
LABEL_41:
    sub_10000ECD8(v116, v117, v118);
LABEL_42:
    sub_100003614();
    sub_1000FAD20();
    sub_10000A2BC();
    if (!v60)
    {
      v233 = sub_100006544();
      v234(v233);
      sub_1000051EC();
      sub_1000FA4CC(v235, 255, v236);
      sub_10003DD94();
      sub_100007894();
      v237 = swift_allocError();
      v239 = sub_10000A904(v237, v238);
      v240(v239);
      v259 = v103;
      swift_willThrow();

      v241 = sub_100007228();
      v242(v241);
LABEL_48:
      sub_10000ECD8(v108, &qword_1001B9C80, &unk_1001726D0);
      sub_10000ECD8(v104, &qword_1001B9C88, &qword_1001706E0);
      sub_100003088();
      sub_10000F1A8();

      sub_100001F00();
      sub_100008228();

      return v244(v243, v244, v245, v246, v247, v248, v249, v250, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v259, a22, a23, a24, a25, a26);
    }

    sub_10000ECD8(*(v34 + 368), &qword_1001B9C80, &unk_1001726D0);
    if (v62[300] == -1)
    {
LABEL_45:
      sub_100002FD0(v68, qword_1001BBB58);
      v223 = Logger.logObject.getter();
      v224 = static os_log_type_t.fault.getter();
      if (sub_100006468(v224))
      {
        v225 = sub_100007648();
        sub_10000BF10(v225);
        sub_100009DDC(&_mh_execute_header, v226, v227, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v228, 255, v229);
      v230 = sub_100008194();
      sub_10002AB60(v230, v231);
      sub_100007F60();
      v232();
      v259 = v223;
      swift_willThrow();

      goto LABEL_48;
    }

LABEL_52:
    sub_1000086EC();
    goto LABEL_45;
  }

  v200 = sub_100005710();
  v104 = v201;
  (*(v202 + 32))(v200);
  if (!v113)
  {
    v219 = sub_10001995C();
    v220(v219);
    goto LABEL_42;
  }

  sub_10000AA54();
  sub_1000FAD20();
  sub_10000A2BC();
  if (!v60)
  {
    v221 = sub_100009DC8();
    v222(v221);
    v117 = &qword_1001B9C80;
    v118 = &unk_1001726D0;
    v116 = v114;
    goto LABEL_41;
  }

  sub_100007AB0();
  v251 = v204;
  v252 = v203;
  v253 = *(v34 + 352);
  v254 = *(v34 + 344);
  sub_10001144C();

  sub_100003914();
  sub_10000ECD8(v205, v206, v207);
  sub_10000ECD8(v103, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v208, v209, v210);

  sub_10000EEAC();
  sub_100008228();

  return v213(v211, v212, v213, v214, v215, v216, v217, v218, v251, v252, v253, v254, a13, a14, a15, a16, a17, a18, a19, a20, v257, a22, a23, a24, a25, a26);
}

uint64_t sub_1000F78E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v6 = *(v5 + 552);
  v7 = *v1;
  sub_100002B9C();
  *v8 = v7;
  v3[70] = v0;

  if (v0)
  {
    v9 = v3[26];
    v10 = sub_1000F7FE4;
  }

  else
  {
    v11 = v3[54];
    v12 = v3[26];

    v10 = sub_1000F79F0;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000F79F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100011AD8();
  sub_100012BA8();
  v112 = v26[68];
  v27 = v26[66];
  v28 = v26[56];
  v29 = v26[53];
  v30 = v26[51];
  v110 = v26[38];
  v111 = v26[45];
  v31 = v26[32];
  v32 = v26[26];
  v108 = v26[55];
  v109 = v26[39] + 8;
  v33 = &qword_1001B9C88;
  sub_10000ECD8(v26[52], &qword_1001B9C88, &qword_1001706E0);
  sub_1000039A8();
  sub_100009BFC(v34, v35, v36, v29);
  sub_1000037BC();
  sub_1000FAA80();
  v37 = sub_1000060A4();
  sub_1000F8954(v37, v38);

  sub_100006330();
  sub_1000FA980(v31, v39);
  sub_10000ECD8((v26 + 2), &qword_1001B9CB0, &qword_100171E70);
  v112(v111, v110);
  sub_100003324(v26 + 7);
  v40 = v26[66];
  v41 = v26[52];
  v42 = v26[53];
  v43 = v26[50];
  sub_1000135D0();
  sub_1000FAD20();
  sub_100003494(v43);
  if (v44)
  {
    v45 = v26[50];
    v46 = &qword_1001B9C88;
    v47 = &qword_1001706E0;
LABEL_11:
    sub_10000ECD8(v45, v46, v47);
    goto LABEL_12;
  }

  v48 = sub_100005710();
  v33 = v49;
  (*(v50 + 32))(v48);
  if (!v40)
  {
    v66 = sub_10001995C();
    v67(v66);
LABEL_12:
    sub_100003614();
    sub_1000FAD20();
    sub_10000A2BC();
    if (v44)
    {
      sub_10000ECD8(v26[46], &qword_1001B9C80, &unk_1001726D0);
      if (qword_1001B8960 != -1)
      {
        sub_1000086EC();
      }

      v70 = type metadata accessor for Logger();
      sub_100002FD0(v70, qword_1001BBB58);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.fault.getter();
      if (sub_100006468(v72))
      {
        v73 = sub_100007648();
        sub_10000BF10(v73);
        sub_100009DDC(&_mh_execute_header, v74, v75, "For some reason, IP did not error but executeRequestWrapper returned nil");
        sub_10000706C();
      }

      sub_100012530();
      sub_1000051EC();
      sub_1000FA4CC(v76, 255, v77);
      v78 = sub_100008194();
      sub_10002AB60(v78, v79);
      sub_100007F60();
      v80();
      v113 = v71;
      swift_willThrow();
    }

    else
    {
      v81 = v26[55];
      v82 = v26[56];
      v33 = v26[52];
      v27 = v26[49];
      v83 = v26[28];
      v84 = v26[29];
      v85 = v26[27];
      (*(v83 + 32))(v84, v26[46], v85);
      sub_1000051EC();
      sub_1000FA4CC(v86, 255, v87);
      sub_100007894();
      v88 = swift_allocError();
      (*(v83 + 16))(v89, v84, v85);
      v113 = v88;
      swift_willThrow();

      (*(v83 + 8))(v84, v85);
    }

    sub_10000ECD8(v27, &qword_1001B9C80, &unk_1001726D0);
    sub_10000ECD8(v33, &qword_1001B9C88, &qword_1001706E0);
    v91 = v26[51];
    v90 = v26[52];
    v92 = v26[49];
    v93 = v26[50];
    v95 = v26[47];
    v94 = v26[48];
    v97 = v26[45];
    v96 = v26[46];
    v99 = v26[43];
    v98 = v26[44];
    sub_10001144C();

    sub_100001F00();
    sub_100008228();

    return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12, a13, a14, a15, a16, a17, v108, v109, v110, v111, v113, a23, a24, a25, a26);
  }

  sub_10000AA54();
  sub_1000FAD20();
  sub_10000A2BC();
  if (!v44)
  {
    v68 = sub_100009DC8();
    v69(v68);
    v46 = &qword_1001B9C80;
    v47 = &unk_1001726D0;
    v45 = v42;
    goto LABEL_11;
  }

  sub_100007AB0();
  sub_100019BD8();

  sub_100003914();
  sub_10000ECD8(v51, v52, v53);
  sub_10000ECD8(v43, &qword_1001B9C88, &qword_1001706E0);
  sub_100003914();
  sub_10000ECD8(v54, v55, v56);

  sub_10000EEAC();
  sub_100008228();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, v108, v109, v110, v111, v112, a23, a24, a25, a26);
}

uint64_t sub_1000F7FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t), uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t *a32, uint64_t a33, uint64_t a34)
{
  sub_100011AD8();
  a33 = v35;
  a34 = v36;
  sub_100012BA8();
  a32 = v34;
  v37 = v34[70];
  v38 = v34[67];
  v39 = v34[66];
  v41 = v34[60];
  v40 = v34[61];
  v42 = v34[45];
  v43 = v34[42];
  v44 = v34[38];
  v45 = v34[32];
  sub_1000F8954(v34[26], v45);

  sub_100006330();
  sub_1000FA980(v45, v46);
  v41(v43, v42, v44);
  swift_errorRetain();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    a20 = v34[68];
    a21 = v34[70];
    v49 = v34[42];
    v50 = v34[38];
    a19 = v34[39] + 8;
    v51 = swift_slowAlloc();
    swift_slowAlloc();
    v52 = sub_100003E34();
    a22 = v52;
    *v51 = 136315394;
    sub_100005D20();
    sub_1000FA4CC(v53, 255, v54);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v58 = sub_100004CB0();
    a20(v58);
    v59 = sub_100004A3C(v55, v57, &a22);

    *(v51 + 4) = v59;
    *(v51 + 12) = 2112;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 14) = v60;
    *v44 = v60;
    _os_log_impl(&_mh_execute_header, v47, v48, "Request failed on %s with error: %@, falling back", v51, 0x16u);
    sub_10000ECD8(v44, &qword_1001B8F68, &qword_10016FB80);
    sub_100012684();
    sub_100003324(v52);
    sub_100004B78();
    sub_100002F64();
  }

  else
  {
    v61 = v34[68];
    v62 = v34[42];
    v63 = v34[38];
    v64 = v34[39];

    v65 = sub_100007660();
    v61(v65);
  }

  v66 = v34[70];
  v67 = v34[68];
  v68 = v34[48];
  v69 = v34[49];
  v70 = v34[45];
  v71 = v34[38];
  v72 = v34[27];
  v73 = v34[39] + 8;
  ModelManagerError.init(wrapping:)();
  sub_10000ECD8((v34 + 2), &qword_1001B9CB0, &qword_100171E70);
  v74 = sub_100003754();
  v67(v74);
  v75 = &unk_1001726D0;
  v76 = sub_100007660();
  sub_10000ECD8(v76, v77, &unk_1001726D0);
  sub_1000039A8();
  sub_100009BFC(v78, v79, v80, v72);
  sub_1000062B0();
  sub_1000FAA80();
  sub_100003324(v34 + 7);
  v81 = v34[59] + 1;
  v34[58] = v34[66];
  v34[59] = v81;
  if (v81 == v34[57])
  {
    v82 = v34[55];
    v83 = v34[56];
    v84 = v34[54];

    sub_10001363C();
    sub_1000FAD20();
    sub_100003494(&qword_1001B9C80);
    if (v85)
    {
      v86 = v34[50];
      v87 = &qword_1001B9C88;
      v88 = &qword_1001706E0;
LABEL_19:
      sub_10000ECD8(v86, v87, v88);
LABEL_20:
      sub_100003614();
      sub_1000FAD20();
      sub_10000A2BC();
      if (!v85)
      {
        v133 = sub_100006544();
        v134(v133);
        sub_1000051EC();
        sub_1000FA4CC(v135, 255, v136);
        sub_10003DD94();
        sub_100007894();
        v137 = swift_allocError();
        v139 = sub_10000A904(v137, v138);
        v140(v139);
        v155 = &qword_1001B9C80;
        swift_willThrow();

        v141 = sub_100007228();
        v142(v141);
LABEL_26:
        sub_10000ECD8(v72, &qword_1001B9C80, &unk_1001726D0);
        sub_10000ECD8(v75, &qword_1001B9C88, &qword_1001706E0);
        sub_100003088();
        sub_10000F1A8();

        sub_100001F00();
        sub_100008228();

        return v144(v143, v144, v145, v146, v147, v148, v149, v150, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v155, a22, a23, a24, a25, a26);
      }

      sub_10000ECD8(v34[46], &qword_1001B9C80, &unk_1001726D0);
      if (qword_1001B8960 == -1)
      {
LABEL_23:
        v122 = type metadata accessor for Logger();
        sub_100002FD0(v122, qword_1001BBB58);
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.fault.getter();
        if (sub_100006468(v124))
        {
          v125 = sub_100007648();
          sub_10000BF10(v125);
          sub_100009DDC(&_mh_execute_header, v126, v127, "For some reason, IP did not error but executeRequestWrapper returned nil");
          sub_10000706C();
        }

        sub_100012530();
        sub_1000051EC();
        sub_1000FA4CC(v128, 255, v129);
        v130 = sub_100008194();
        sub_10002AB60(v130, v131);
        sub_100007F60();
        v132();
        v155 = v123;
        swift_willThrow();

        goto LABEL_26;
      }

LABEL_30:
      sub_1000086EC();
      goto LABEL_23;
    }

    v99 = sub_100005710();
    v75 = v100;
    (*(v101 + 32))(v99);
    if (!v82)
    {
      v118 = sub_10001995C();
      v119(v118);
      goto LABEL_20;
    }

    sub_10000AA54();
    sub_1000FAD20();
    sub_10000A2BC();
    if (!v85)
    {
      v120 = sub_100009DC8();
      v121(v120);
      v87 = &qword_1001B9C80;
      v88 = &unk_1001726D0;
      v86 = v83;
      goto LABEL_19;
    }

    sub_100007AB0();
    v151 = v103;
    v152 = v102;
    v153 = v34[44];
    v154 = v34[43];
    sub_10001144C();

    sub_100003914();
    sub_10000ECD8(v104, v105, v106);
    sub_10000ECD8(&qword_1001B9C80, &qword_1001B9C88, &qword_1001706E0);
    sub_100003914();
    sub_10000ECD8(v107, v108, v109);

    sub_10000EEAC();
    sub_100008228();

    return v112(v110, v111, v112, v113, v114, v115, v116, v117, v151, v152, v153, v154, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    sub_100011A04();
    if (v90)
    {
      __break(1u);
      goto LABEL_30;
    }

    v91 = sub_10001281C(v89);
    v92(v91);
    sub_1000402F4();
    swift_task_alloc();
    sub_100004B34();
    v34[62] = v93;
    *v93 = v94;
    sub_100002D78();
    sub_100008228();

    return sub_1000253E8(v95, v96);
  }
}

uint64_t sub_1000F87D0()
{
  sub_100013464();

  sub_10000ECD8(v1 + 16, &qword_1001B9CB0, &qword_100171E70);
  v3 = sub_100005EE8();
  v4(v3);
  sub_10000ECD8(v2, &qword_1001B9C80, &unk_1001726D0);
  sub_10000ECD8(v0, &qword_1001B9C88, &qword_1001706E0);
  sub_100003324((v1 + 56));
  v5 = *(v1 + 520);
  sub_1000194D4();

  sub_100001F00();

  return v6();
}

void sub_1000F8954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  swift_beginAccess();
  v14 = *(a1 + 240);

  v15 = sub_1000FA5C4(a2, v14);
  v17 = v16;

  if (v17)
  {
    if (qword_1001B8960 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000641C(v18, qword_1001BBB58);
    sub_1000FA888();
    sub_1000FA888();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v21 = 136315394;
      sub_100065020(&qword_1001B94F0, &unk_100172060);
      sub_1000082D4(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_1000FA980(v11, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      v25 = sub_100004A3C(v22, v24, v33);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = *(v4 + 20);
      sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      sub_1000082D4(&qword_1001B8F58, &qword_1001B8F48, &qword_10016FB30);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1000FA980(v8, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      v30 = sub_100004A3C(v27, v29, v33);

      *(v21 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Lost track of active request %s %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000FA980(v8, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      sub_1000FA980(v11, type metadata accessor for RemoteManager.InternalRemoteRequestState);
    }
  }

  else
  {
    swift_beginAccess();
    sub_1000FA790(v15, v13);
    sub_1000FA980(v13, type metadata accessor for RemoteManager.InternalRemoteRequestState);
    swift_endAccess();
  }
}

uint64_t sub_1000F8D48()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for RemoteManager.StreamBacking(0);
  v1[6] = v5;
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  v1[7] = sub_10000F0C0();
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for RequestKey();
  v1[9] = v8;
  sub_100002F44(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_100002C58();
  v12 = type metadata accessor for XPCSession.InitializationOptions();
  sub_100002F04(v12);
  v14 = *(v13 + 64);
  v1[12] = sub_100002C58();
  v15 = sub_100065020(&qword_1001BBDE0, &qword_100172670);
  sub_100002F04(v15);
  v17 = *(v16 + 64);
  v1[13] = sub_100002C58();
  v18 = type metadata accessor for XPCEndpoint();
  v1[14] = v18;
  sub_100002F44(v18);
  v1[15] = v19;
  v21 = *(v20 + 64);
  v1[16] = sub_10000F0C0();
  v1[17] = swift_task_alloc();
  v22 = sub_100002C10();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_1000F8EC4()
{
  sub_100005EA4();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[4];
  InferenceProviderRequestResult.directInferenceProviderEndpoint.getter();
  sub_10000323C(v2, 1, v1);
  if (v4)
  {
    sub_10000ECD8(v0[13], &qword_1001BBDE0, &qword_100172670);
    if (qword_1001B8960 != -1)
    {
      sub_1000086EC();
    }

    v5 = type metadata accessor for Logger();
    sub_100002FD0(v5, qword_1001BBB58);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_100007648();
      *v8 = 0;
      sub_10000A4A4();
      _os_log_impl(v9, v10, v11, v12, v8, 2u);
      sub_100002F64();
    }

    v13 = type metadata accessor for ModelManagerError();
    sub_1000051EC();
    sub_1000FA4CC(v14, 255, v15);
    sub_100007894();
    v16 = swift_allocError();
    sub_10002AB60(v16, v17);
    sub_100006098(v13);
    (*(v18 + 104))();
    swift_willThrow();
    v25 = v0[16];
    v24 = v0[17];
    v27 = v0[12];
    v26 = v0[13];
    v28 = v0[11];
    v30 = v0[7];
    v29 = v0[8];

    sub_100001F00();

    return v31();
  }

  else
  {
    v19 = v0[16];
    v20 = v0[15];
    v21 = v0[12];
    (*(v20 + 32))(v0[17], v0[13], v0[14]);
    type metadata accessor for XPCSession();
    v22 = *(v20 + 16);
    sub_10002B0C0();
    v23();
    static XPCSession.InitializationOptions.none.getter();
    v0[18] = XPCSession.__allocating_init(endpoint:targetQueue:options:cancellationHandler:)();
    v33 = v0[11];
    v34 = v0[3];
    type metadata accessor for InferenceProviderXPCSender();

    v35 = InferenceProviderXPCSender.__allocating_init(session:)();
    v36 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
    v0[19] = v35;
    v0[20] = v36;
    RequestMetadata.requestKey.getter();
    v37 = sub_100005204(&async function pointer to dispatch thunk of InferenceProviderXPCSender.directStreamHandshake(requestIdentifier:));
    v0[21] = v37;
    *v37 = v0;
    v37[1] = sub_1000F9228;
    v38 = sub_1000031B8(v0[11]);

    return v39(v38);
  }
}

uint64_t sub_1000F9228()
{
  sub_10001881C();
  sub_100003884();
  sub_100018E0C();
  v3 = v0[21];
  v4 = *v2;
  sub_100002B9C();
  *v5 = v4;

  sub_10000CC7C();
  v7 = *(v6 + 88);
  v8 = v0[10];
  v9 = v0[9];
  v10 = v0[5];
  if (v1)
  {

    v11 = *(v8 + 8);
  }

  else
  {
    v14 = *(v8 + 8);
  }

  v12 = sub_100003754();
  v13(v12);
  sub_10000CC50();
  sub_100007BB8();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000F93AC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 24) + *(v0 + 160);
  RequestMetadata.id.getter();
  v7 = v3 + v4[5];
  InferenceProviderRequestResult.firstResponse.getter();
  *(v3 + v4[6]) = v1;
  *(v3 + v4[7]) = 0;
  v8 = (v3 + v4[8]);
  *v8 = sub_1000FA880;
  v8[1] = v1;
  v9 = sub_1000071D0();
  *(v0 + 176) = sub_100065020(v9, v10);
  sub_1000FA888();

  *(v0 + 184) = GreedyBufferingAsyncSequence.__allocating_init(backing:fillBuffer:onTermination:)();
  type metadata accessor for ClientData();
  sub_1000FA4CC(&qword_1001BBDF0, 255, type metadata accessor for RemoteManager.StreamBacking);
  *(v0 + 192) = default argument 0 of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)() & 1;
  sub_100006570();
  sub_1000082D4(v11, v12, v13);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F959C, v15, v14);
}

uint64_t sub_1000F959C()
{
  sub_100002BAC();
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 40);
  dispatch thunk of GreedyBufferingAsyncSequence.startBuffering(fromBufferingTask:)();
  sub_10000CC50();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F9604()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v13 = v0[12];
  v14 = v0[11];
  v8 = v0[8];
  v15 = v0[7];
  v9 = v0[2];
  v9[3] = v0[22];
  v9[4] = sub_1000082D4(&qword_1001BBE00, &qword_1001BBDE8, &qword_100172678);

  *v9 = v1;
  sub_100003C08();
  sub_1000FA980(v8, v10);
  (*(v5 + 8))(v3, v6);

  sub_100001F00();

  return v11();
}

uint64_t sub_1000F9740(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  if (qword_1001B8960 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000641C(v6, qword_1001BBB58);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating direct InferenceProvider connection.", v9, 2u);
  }

  v10 = type metadata accessor for TaskPriority();
  sub_100009BFC(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;

  sub_1000652FC();
}

uint64_t sub_1000F98E4()
{
  v1 = *(&async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate() + 1);
  v4 = (&async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate() + async function pointer to dispatch thunk of InferenceProviderXPCSender.invalidate());
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10006F558;

  return v4();
}

uint64_t sub_1000F9988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for RequestKey();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_100065020(&qword_1001BBE08, &unk_100172690);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = *(*(sub_100065020(&qword_1001BA5F0, &qword_100171290) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = type metadata accessor for ClientData();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v14 = type metadata accessor for RemoteManager.StreamBacking(0);
  v3[19] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_100065020(&qword_1001BBDE8, &qword_100172678);
  sub_1000082D4(&qword_1001BBDF8, &qword_1001BBDE8, &qword_100172678);
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[23] = v17;
  v3[24] = v16;

  return _swift_task_switch(sub_1000F9BF8, v17, v16);
}

uint64_t sub_1000F9BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  v11 = v10[22];
  v12 = v10[19];
  v13 = v10[7];
  dispatch thunk of GreedyBufferingAsyncSequence.backing.getter();
  LOBYTE(v13) = *(v11 + *(v12 + 28));
  sub_100003C08();
  sub_1000FA980(v11, v14);
  if (v13)
  {
    v16 = v10[19];
    v15 = v10[20];
    v17 = v10[11];
    v18 = v10[7];
    v19 = v10[8];
    dispatch thunk of GreedyBufferingAsyncSequence.backing.getter();
    v10[25] = *(v15 + *(v16 + 24));

    sub_100003C08();
    sub_1000FA980(v15, v20);
    RequestMetadata.requestKey.getter();
    sub_100005204(&async function pointer to dispatch thunk of InferenceProviderXPCSender.fetchNextStreamResults(requestKey:));
    sub_100004B34();
    v10[26] = v21;
    *v21 = v22;
    v21[1] = sub_1000F9EDC;
    v23 = v10[14];
    v24 = v10[11];
    sub_100006378();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v34 = v10[21];
    v35 = v10[19];
    v37 = v10[15];
    v36 = v10[16];
    v38 = v10[7];
    v39 = dispatch thunk of GreedyBufferingAsyncSequence.backing.modify();
    *(v40 + *(v12 + 28)) = 1;
    v39(v10 + 2, 0);
    dispatch thunk of GreedyBufferingAsyncSequence.backing.getter();
    v41 = *(v35 + 20);
    sub_1000FAD20();
    sub_100003C08();
    sub_1000FA980(v34, v42);
    sub_10000323C(v37, 1, v36);
    if (v43)
    {
      v44 = v10[6];
      sub_10000ECD8(v10[15], &qword_1001BA5F0, &qword_100171290);
      *v44 = 0;
      v45 = enum case for GreedyBufferResult.termination<A, B>(_:);
      v46 = sub_100065020(&qword_1001BBE10, &unk_1001726A0);
      sub_100005680(v46);
      (*(v47 + 104))(v44, v45);
    }

    else
    {
      v48 = v10[6];
      v49 = *(v10[17] + 32);
      (v49)(v10[18], v10[15], v10[16]);
      sub_100019274();
      v49();
      v50 = enum case for GreedyBufferResult.single<A, B>(_:);
      v51 = sub_100065020(&qword_1001BBE10, &unk_1001726A0);
      sub_100005680(v51);
      (*(v52 + 104))(v48, v50);
    }

    sub_1000188CC();

    sub_100001F00();
    sub_100006378();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10);
  }
}

uint64_t sub_1000F9EDC()
{
  sub_1000094B0();
  sub_10000636C();
  sub_100018E0C();
  sub_100004B40();
  *v4 = v3;
  v5 = v0[26];
  v6 = v0[25];
  v7 = v0[11];
  v8 = v0[10];
  v9 = v0[9];
  *v4 = *v2;
  *(v3 + 216) = v1;

  v10 = sub_100005EE8();
  v11(v10);

  sub_10000CC7C();
  v13 = *(v12 + 192);
  v14 = v0[23];
  sub_100006378();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000FA06C()
{
  sub_10001881C();
  sub_100003884();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  GreedyBufferResult.erasingErrorType()();
  v5 = *(v2 + 8);
  v6 = sub_100001F70();
  v7(v6);
  sub_1000188CC();

  sub_100001F00();
  sub_100007BB8();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000FA120()
{
  sub_10001881C();
  sub_100003884();
  v1 = *(v0 + 216);
  v2 = *(v0 + 48);
  type metadata accessor for ModelManagerError();
  sub_1000051EC();
  sub_1000FA4CC(v3, 255, v4);
  v5 = sub_100008194();
  ModelManagerError.init(wrapping:)();
  *v2 = v5;
  v6 = enum case for GreedyBufferResult.termination<A, B>(_:);
  v7 = sub_100065020(&qword_1001BBE10, &unk_1001726A0);
  sub_100005680(v7);
  (*(v8 + 104))(v2, v6);
  sub_1000188CC();

  sub_100001F00();
  sub_100007BB8();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t *sub_1000FA248()
{
  sub_100003324(v0 + 14);
  sub_100003324(v0 + 19);
  v1 = v0[24];

  sub_100003324(v0 + 25);
  v2 = v0[30];

  v3 = v0[31];

  v4 = v0[32];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FA2A0()
{
  sub_1000FA248();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1000FA338()
{
  sub_1000FA41C(319, &qword_1001BBD48, &type metadata accessor for Session);
  if (v0 <= 0x3F)
  {
    sub_1000FA41C(319, &unk_1001BBD50, &type metadata accessor for RequestMetadata);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RemoteInterfaceInformation();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000FA41C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for UUIDIdentifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000FA4CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1000FA514()
{
  result = qword_1001BBDA0;
  if (!qword_1001BBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBDA0);
  }

  return result;
}

uint64_t sub_1000FA588(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];
  sub_1000FB11C(*v2);
  return v3;
}

uint64_t sub_1000FA5C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1000FA888();
      type metadata accessor for Session();
      if (static UUIDIdentifier.== infix(_:_:)() & 1) != 0 && (v12 = *(v3 + 20), type metadata accessor for RequestMetadata(), (static UUIDIdentifier.== infix(_:_:)()))
      {
        v13 = *(v3 + 24);
        v14 = static RemoteInterfaceInformation.== infix(_:_:)();
        sub_1000FA980(v7, type metadata accessor for RemoteManager.InternalRemoteRequestState);
        if (v14)
        {
          return v9;
        }
      }

      else
      {
        sub_1000FA980(v7, type metadata accessor for RemoteManager.InternalRemoteRequestState);
      }

      ++v9;
      v10 += v11;
    }

    while (v8 != v9);
  }

  return 0;
}

void sub_1000FA790(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000FAAD4(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(type metadata accessor for RemoteManager.InternalRemoteRequestState(0) - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_1000FAAE8(v9, a2);
    sub_100070944(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_1000FA888()
{
  sub_10000C1C0();
  v2 = v1(0);
  sub_100005680(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000062B0();
  v6(v5);
  return v0;
}

uint64_t sub_1000FA8DC()
{
  sub_100001ED0();
  v3 = v2;
  v5 = v4;
  swift_task_alloc();
  sub_100004B34();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_10006F558;

  return sub_1000F9988(v5, v3, v0);
}

uint64_t sub_1000FA980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002C00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000FA9D8()
{
  sub_100001ED0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_100004B34();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_10006FA64;
  sub_1000135D0();

  return sub_1000F98E4();
}

uint64_t sub_1000FAA80()
{
  sub_10000C1C0();
  v3 = sub_100065020(v1, v2);
  sub_100005680(v3);
  v5 = *(v4 + 32);
  v6 = sub_1000062B0();
  v7(v6);
  return v0;
}

uint64_t sub_1000FAAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteManager.InternalRemoteRequestState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FAB54()
{
  sub_1000094B0();
  sub_10000636C();
  v2 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002F04(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  swift_task_alloc();
  sub_100004B34();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_10006FA64;
  sub_1000135D0();
  sub_100006378();

  return sub_1000F50BC(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1000FAC44()
{
  sub_100001ED0();
  v3 = v2;
  v4 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002F04(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10006FA64;

  return sub_1000F5468(v3, v0 + v6);
}

uint64_t sub_1000FAD20()
{
  sub_10000C1C0();
  v3 = sub_100065020(v1, v2);
  sub_100005680(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000062B0();
  v7(v6);
  return v0;
}

void sub_1000FAD9C()
{
  sub_1000FA41C(319, &unk_1001BBD50, &type metadata accessor for RequestMetadata);
  if (v0 <= 0x3F)
  {
    sub_1000FAE7C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InferenceProviderXPCSender();
      if (v2 <= 0x3F)
      {
        sub_1000FAED4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000FAE7C()
{
  if (!qword_1001BBEB8)
  {
    type metadata accessor for ClientData();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BBEB8);
    }
  }
}

void sub_1000FAED4()
{
  if (!qword_1001BBEC0)
  {
    sub_10006A614(&unk_1001BBEC8, "py");
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001BBEC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RemoteManager.InternalRemoteRequestState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000FB018()
{
  result = qword_1001BBF08;
  if (!qword_1001BBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBF08);
  }

  return result;
}

unint64_t sub_1000FB070()
{
  result = qword_1001BBF10;
  if (!qword_1001BBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBF10);
  }

  return result;
}

unint64_t sub_1000FB0C8()
{
  result = qword_1001BBF18;
  if (!qword_1001BBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBF18);
  }

  return result;
}

uint64_t sub_1000FB11C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000FB13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100065020(&qword_1001BC098, &qword_100172948);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  (*(v14 + 16))(&v23 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v23;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_100022A38;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E6BC;
  aBlock[3] = &unk_1001B1868;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000E784(&qword_1001B9CE8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_1000082D4(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v8, v5);
  (*(v9 + 8))(v12, v25);
}

uint64_t sub_1000FB4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v27 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v25);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  (*(v14 + 16))(&v23 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v23;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_10000D9DC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E6BC;
  aBlock[3] = &unk_1001B18E0;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = &_swiftEmptyArrayStorage;
  sub_10000E784(&qword_1001B9CE8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100065020(&unk_1001BD3B0, &qword_100172950);
  sub_1000082D4(&qword_1001B9CF0, &unk_1001BD3B0, &qword_100172950);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v8, v5);
  (*(v9 + 8))(v12, v25);
}

uint64_t sub_1000FB88C()
{
  v0 = type metadata accessor for Logger();
  sub_100065A60(v0, qword_1001BBF20);
  sub_10000641C(v0, qword_1001BBF20);
  subsystemName.getter();
  return Logger.init(subsystem:category:)();
}

void sub_1000FB8FC()
{
  v0 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [v0 setValues:1];
  sub_1000FC998(&off_1001AFF70, v0);
  qword_1001BE8C0 = v0;
}

uint64_t sub_1000FB95C()
{
  v1 = v0;
  v24 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = sub_100002BDC(v24);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue_concurrent.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  sub_100002B8C();
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100002F04(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100002B8C();
  swift_defaultActor_initialize();
  CountedSet.init(arrayLiteral:)();
  v23 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider_queue;
  sub_10000E2C0(0, &qword_1001BC148, OS_dispatch_queue_concurrent_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E784(&qword_1001BC150, &type metadata accessor for OS_dispatch_queue_concurrent.Attributes);
  sub_100065020(&qword_1001BC158, &qword_1001729D0);
  sub_1000082D4(&qword_1001BC160, &qword_1001BC158, &qword_1001729D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  *(v0 + v23) = OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for RunningBoardProvider();
  sub_10000870C();
  sub_10000E784(v16, v17);
  WorkQueue.init()();
  v18 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider____lazy_storage___processEventStream;
  v19 = sub_100065020(&qword_1001B9CB8, &qword_1001728F0);
  sub_100009BFC(v1 + v18, 1, 1, v19);
  v20 = [objc_allocWithZone(RBSProcessMonitor) init];
  *(v1 + 112) = v20;
  aBlock[4] = sub_1000FBDB8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D7E4;
  aBlock[3] = &unk_1001B1A98;
  v21 = _Block_copy(aBlock);

  [v20 updateConfiguration:v21];
  _Block_release(v21);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}