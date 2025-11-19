uint64_t sub_1001D6684()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);
    v8 = sub_1001C8E78;
  }

  else
  {
    v9 = *(v3 + 32);

    v8 = sub_1001D6794;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001D6794()
{
  sub_100005528();

  v0 = sub_1001E3BC4();

  return v1(v0);
}

uint64_t sub_1001D67F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  sub_1001A6C04(&qword_1003B60F0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v4 = sub_1001A6C04(&qword_1003B62D0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_1001D6904, 0, 0);
}

uint64_t sub_1001D6904()
{
  sub_1001E4394();
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v24 = **(v0 + 88);
    do
    {
      v5 = *(v0 + 104);
      v4 = *(v0 + 112);
      sub_1001E404C();
      v6 = swift_allocObject();
      *(v6 + 16) = *v3;
      v7 = type metadata accessor for TaskPriority();
      sub_1001E4070();
      sub_1001A9674(v8, v9, v10, v7);
      sub_1001E43DC();
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = &unk_1002C4908;
      v11[5] = v6;
      sub_1001E43DC();
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = &unk_1002C4910;
      v12[5] = v11;
      sub_1001AF7C0(v4, v5);
      LODWORD(v5) = sub_1001A969C(v5, 1, v7);

      v13 = *(v0 + 104);
      if (v5 == 1)
      {
        sub_1001E30E0(*(v0 + 104), &qword_1003B60F0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        sub_100005534();
        (*(v14 + 8))(v13, v7);
      }

      if (v12[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = dispatch thunk of Actor.unownedExecutor.getter();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      sub_1001A6C04(&qword_1003B6168);
      v18 = v17 | v15;
      if (v17 | v15)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      v19 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_1001E30E0(v19, &qword_1003B60F0);
      ++v3;
      --v2;
    }

    while (v2);
  }

  sub_1001A6C04(&qword_1003B6168);
  sub_1001A6C04(&unk_1003B6170);
  sub_100005540();
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 144) = _swiftEmptyDictionarySingleton;
  *(v0 + 152) = _swiftEmptyDictionarySingleton;
  sub_1001E3EE4(&qword_1003B62D8, &qword_1003B62D0);
  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  *v20 = v0;
  sub_1001E3D98(v20);
  sub_1001E41B8();

  return dispatch thunk of AsyncIteratorProtocol.next()(v21);
}

uint64_t sub_1001D6C64()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;
  v3[21] = v0;

  if (v0)
  {
    (*(v3[16] + 8))(v3[17], v3[15]);
  }

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001D6D80()
{
  sub_100005838();
  v1 = v0[9];
  if (v1 == 1)
  {
    v2 = v0[19];
    v3 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);
    *v3 = v2;

    sub_1000046F8();

    return v4();
  }

  else
  {
    v6 = v0[18];
    if (v1)
    {

      swift_isUniquelyReferenced_nonNull_native();
      sub_1001E3E30();
      sub_1001E1BA0(v1, v7, 0, v8, v9);
      sub_1001E3770(v1);
      v10 = v6;
    }

    else
    {
      v10 = v0[19];
    }

    v0[18] = v6;
    v0[19] = v10;
    sub_1001E3EE4(&qword_1003B62D8, &qword_1003B62D0);
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    sub_1001E3D98();

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 9);
  }
}

uint64_t sub_1001D6F0C()
{
  sub_100005528();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001D6F7C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001D706C;

  return v4(v1 + 16);
}

uint64_t sub_1001D706C()
{
  sub_1000057FC();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v5 + 8);

    return v10(v9);
  }
}

uint64_t sub_1001D7194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1001CCFB4;

  return v6();
}

uint64_t sub_1001D727C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1001CF1F0;

  return v7();
}

uint64_t sub_1001D7368()
{
  sub_1000057FC();
  v3 = v2;
  *(v1 + 304) = v4;
  *(v1 + 312) = v0;
  *(v1 + 89) = v5;
  *(v1 + 288) = v6;
  *(v1 + 296) = v7;
  *(v1 + 272) = v2;
  *(v1 + 280) = v8;
  *(v1 + 256) = v9;
  *(v1 + 264) = v10;
  v11 = sub_1001A6C04(&qword_1003B60F0);
  sub_100006A0C(v11);
  *(v1 + 320) = sub_1001E41A0();
  v12 = type metadata accessor for Logger();
  *(v1 + 328) = v12;
  sub_1001B6A00(v12);
  *(v1 + 336) = v13;
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_getObjectType();
  *(v1 + 368) = *(v3 + 16);
  *(v1 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xFFAD000000000000;
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1001E4204();
  v14 = sub_1001E3D3C();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_1001D7498()
{
  sub_1000057FC();
  *(v0 + 384) = (*(v0 + 368))(*(v0 + 288), *(v0 + 360), *(v0 + 272));
  v1 = *(v0 + 312);

  return _swift_task_switch(sub_1001D756C, v1, 0);
}

void sub_1001D756C()
{
  v117 = v0;
  *(v0 + 248) = **(v0 + 288);
  v1 = v0 + 248;
  v2 = *(v0 + 384);
  v3 = swift_allocObject();
  *(v1 + 144) = v3;
  v115 = v3;
  *(v3 + 16) = &_swiftEmptySetSingleton;
  v4 = v3 + 16;
  v5 = *(v2 + 16);
  v112 = v2;
  if (v5)
  {

    v6 = (v2 + 56);
    v7 = v5;
    do
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *v6;
      v11 = *(v6 - 1);
      swift_bridgeObjectRetain_n();
      v12 = sub_1001E3F2C();
      sub_1001E1E40(v12, v13);

      if (v10 == 1)
      {
        sub_1001E8870(&v116, v9, v8);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v6 += 32;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  v14 = v114;
  if (*(v114 + 89) == 1)
  {
    v15 = *(v114 + 288);
    static GKLog.library.getter();
    sub_1001E3290(v15, v1 - 112);

    v16 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v16, v109);
    v18 = *(v114 + 352);
    v20 = *(v114 + 328);
    v19 = *(v114 + 336);
    v21 = *(v114 + 288);
    if (v17)
    {
      v106 = *(v114 + 352);
      v105 = *(v114 + 328);
      v22 = sub_100005808();
      v116 = swift_slowAlloc();
      *v22 = 134218498;
      *(v22 + 4) = *(v21 + 24);
      sub_1001E32EC(v21);
      *(v22 + 12) = 2080;
      sub_1001E42EC();

      v23 = Set.description.getter();
      v25 = v24;

      v26 = sub_100005C3C(v23, v25, &v116);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2080;
      v14 = v114;
      sub_1001E42EC();

      v27 = Set.description.getter();
      v29 = v28;

      v30 = sub_100005C3C(v27, v29, &v116);

      *(v22 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v16, v109, "Skipping refresh due to localDataOnly=true. Environment: %ld. Found expired IDs: %s, uncached IDs: %s.", v22, 0x20u);
      swift_arrayDestroy();
      sub_1000043D8();
      sub_1000043D8();

      (*(v19 + 8))(v106, v105);
    }

    else
    {

      sub_1001E32EC(v21);

      (*(v19 + 8))(v18, v20);
    }

    v46 = v112;
    v47 = 0;
    v48 = v14[48] + 48;
    v49 = _swiftEmptyDictionarySingleton;
    while (2)
    {
      v50 = (v48 + 32 * v47);
      do
      {
        if (v5 == v47)
        {

          sub_1001E3BC4();
          sub_1001E4448();

          __asm { BRAA            X2, X16 }
        }

        if (v47 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        ++v47;
        v51 = *v50;
        v50 += 4;
      }

      while (!v51);
      v108 = v48;
      v52 = v51;

      v53 = [v52 bundleID];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v111 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v49;
      sub_1001B247C(v54, v56);
      sub_1001E3D88();
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      v63 = v58;
      v64 = v59;
      sub_1001A6C04(&qword_1003B5D60);
      if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v62))
      {
        goto LABEL_25;
      }

      v65 = sub_1001B247C(v54, v56);
      if ((v64 & 1) == (v66 & 1))
      {
        v63 = v65;
LABEL_25:
        if (v64)
        {

          v49 = v116;
          v67 = v116[7];
          v68 = *(v67 + 8 * v63);
          *(v67 + 8 * v63) = v111;

LABEL_29:
          v46 = v112;
          v48 = v108;
          continue;
        }

        v49 = v116;
        sub_1001E41F8();
        sub_1001E3C34(v69);
        v71 = (v70 + 16 * v63);
        *v71 = v54;
        v71[1] = v56;
        *(v49[7] + 8 * v63) = v111;

        sub_1001E424C();
        if (!v73)
        {
          v49[2] = v72;
          goto LABEL_29;
        }

        goto LABEL_43;
      }

      break;
    }

LABEL_39:
    sub_1001E4448();

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

  else
  {
    if (*(*v4 + 16))
    {
      v107 = (v1 - 232);
      v110 = v1 - 152;
      static GKLog.library.getter();
      v31 = sub_1001E4240();
      sub_1001E3290(v31, v32);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();

      v35 = os_log_type_enabled(v33, v34);
      v36 = *(v114 + 336);
      v37 = *(v114 + 344);
      v38 = *(v114 + 328);
      v39 = *(v114 + 288);
      if (v35)
      {
        v40 = swift_slowAlloc();
        v41 = sub_100005808();
        v116 = v41;
        *v40 = 134218242;
        *(v40 + 4) = *(v39 + 24);
        sub_1001E32EC(v39);
        *(v40 + 12) = 2080;
        sub_1001E42EC();

        v42 = Set.description.getter();
        v44 = v43;

        v45 = sub_100005C3C(v42, v44, &v116);

        *(v40 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v33, v34, "Environent: %ld found expired IDs: %s", v40, 0x16u);
        sub_100005BE0(v41);
        sub_1001E3DC0();
        sub_1000043D8();
      }

      else
      {
        sub_1001E32EC(*(v114 + 288));
      }

      (*(v36 + 8))(v37, v38);
      v77 = *(v114 + 312);
      v76 = *(v114 + 320);
      v79 = *(v114 + 296);
      v78 = *(v114 + 304);
      v80 = *(v114 + 280);
      v81 = *(v114 + 288);
      v82 = *(v114 + 256);
      type metadata accessor for TaskPriority();
      v113 = *(v114 + 264);
      sub_1001E4070();
      sub_1001A9674(v83, v84, v85, v86);
      sub_1001E07C4(v80, v107);
      sub_1001E3C0C();
      v90 = sub_1001E3960(v87, v88, v89);
      v91 = swift_allocObject();
      *(v91 + 16) = v77;
      *(v91 + 24) = v90;
      *(v91 + 32) = v115;
      v92 = *(v81 + 32);
      v93 = *(v81 + 16);
      *(v91 + 40) = *v81;
      *(v91 + 56) = v93;
      *(v91 + 72) = v92;
      *(v91 + 80) = v77;
      *(v91 + 88) = v82;
      *(v91 + 96) = v113;
      sub_10005671C(v107, v91 + 112);
      *(v91 + 152) = v79;
      *(v91 + 160) = v78;
      v14 = v114;

      sub_1001E3290(v81, v110);

      swift_unknownObjectRetain();

      v94 = sub_1001E3D4C();
      sub_1001D58E0(v94, v95, v76, v96, v91);
    }

    v14[50] = v14[31];

    v97 = swift_task_alloc();
    v14[51] = v97;
    *v97 = v14;
    v97[1] = sub_1001D7E20;
    sub_1001E4040();
    sub_1001E4448();

    sub_1001D9A14(v98, v99, v100, v101, v102);
  }
}

uint64_t sub_1001D7E20()
{
  sub_1001D1970();
  sub_100005838();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 416) = v0;

  if (!v0)
  {
    *(v4 + 424) = v3;
  }

  sub_1001D185C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001D7F94()
{
  sub_1000057FC();

  v0 = sub_1001E3BC4();

  return v1(v0);
}

uint64_t sub_1001D801C()
{
  sub_1000057FC();

  sub_1000046F8();

  return v0();
}

uint64_t sub_1001D80A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v11;
  *(v8 + 144) = v12;
  *(v8 + 120) = v10;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  return _swift_task_switch(sub_1001D80E0, a6, 0);
}

uint64_t sub_1001D80E0()
{
  sub_1000057FC();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1001E42EC();
  v3 = *(v1 + 16);
  *(v0 + 152) = v3;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = 0;

  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1001D81C8;

  return sub_1001D8374();
}

uint64_t sub_1001D81C8()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001D14C0();
  v4 = v3;
  sub_1001D14B0();
  *v5 = v4;
  v6 = *v2;
  sub_100004410();
  *v7 = v6;

  if (v1)
  {
    sub_10000629C();
    sub_1001D18C4();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(v4 + 168) = v0;
    sub_100006BD4();
    sub_1001D18C4();

    return _swift_task_switch(v17, v18, v19);
  }
}

uint64_t sub_1001D8304()
{
  sub_100005528();
  (*(v0 + 136))(*(v0 + 168));

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001D8374()
{
  sub_100005528();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[25] = v5;
  v1[26] = v6;
  v7 = sub_1001A6C04(&qword_1003B60F0);
  sub_100006A0C(v7);
  v1[31] = sub_1001E41A0();
  v8 = type metadata accessor for Logger();
  v1[32] = v8;
  sub_1001B6A00(v8);
  v1[33] = v9;
  v1[34] = sub_1001E41A0();
  v10 = sub_100004750();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1001D844C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  v25 = *(v22 + 232);
  v26 = *(v22 + 240);
  v27 = *(v25 + 24);
  *(v22 + 280) = v27;
  v28 = *(v25 + 8);
  *(v22 + 129) = v28;
  sub_1001E42EC();
  v29 = sub_1001AFBB8(v27, v28, *(v26 + 120));
  *(v22 + 288) = v29;
  if (v29)
  {
    static GKLog.library.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v22 + 264);
    v34 = *(v22 + 272);
    v35 = *(v22 + 256);
    if (v32)
    {
      v61 = *(v22 + 272);
      v36 = sub_100005AE4();
      v37 = sub_100005808();
      a11 = v37;
      *v36 = 136315138;
      v38 = sub_1001D2C70();
      v40 = sub_100005C3C(v38, v39, &a11);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Waiting for previous metadata refresh to finish for: %s", v36, 0xCu);
      sub_100005BE0(v37);
      sub_1000043D8();
      sub_1000043D8();

      (*(v33 + 8))(v61, v35);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

    v54 = swift_task_alloc();
    *(v22 + 296) = v54;
    sub_1001A6C04(&qword_1003B6168);
    sub_1001A6C04(&unk_1003B6170);
    sub_1001E3D78();
    *v54 = v55;
    v54[1] = sub_1001D8758;
  }

  else
  {
    v41 = *(v22 + 248);
    v42 = *(v22 + 224);
    v43 = *(v22 + 200);
    type metadata accessor for TaskPriority();
    sub_1001E4070();
    sub_1001A9674(v44, v45, v46, v47);
    sub_1001E07C4(v42, v22 + 16);
    v48 = swift_allocObject();
    sub_1001E4228(v48);
    sub_10005671C((v22 + 16), v48 + 72);
    *(v48 + 112) = v43;

    v49 = sub_1001E3D4C();
    *(v22 + 304) = sub_1001D5650(v49, v50, v41, v51, v48);
    sub_1001E4008();
    swift_retain_n();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001E40C0();
    *(v27 + 120) = a11;
    swift_endAccess();
    v52 = swift_task_alloc();
    *(v22 + 312) = v52;
    sub_1001A6C04(&qword_1003B6168);
    sub_1001A6C04(&unk_1003B6170);
    sub_1001E3D78();
    *v52 = v53;
    sub_1001E3DDC();
  }

  sub_1001E4108();
  sub_100005B0C();

  return Task.value.getter(v56, v57, v58);
}

uint64_t sub_1001D8758()
{
  sub_1000057FC();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  v5 = *v1;
  sub_100004410();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 240);

    v8 = sub_1001E3FF0();
    v9 = v7;
  }

  else
  {
    v10 = *(v3 + 240);

    v8 = sub_1001E3FF0();
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1001D8878()
{
  sub_100005838();
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  type metadata accessor for TaskPriority();
  v21 = *(v0 + 208);
  sub_1001E4070();
  sub_1001A9674(v5, v6, v7, v8);
  sub_1001E07C4(v3, v0 + 56);
  v9 = swift_allocObject();
  sub_1001E4228(v9);
  *(v10 + 72) = v21;
  sub_10005671C((v0 + 56), v9 + 88);
  *(v9 + 128) = v4;
  sub_1001E3290(v2, v0 + 96);
  swift_unknownObjectRetain();
  v11 = sub_1001E3D4C();
  v14 = sub_1001D5650(v11, v12, v1, v13, v9);

  *(v0 + 304) = v14;
  sub_1001E4008();
  swift_retain_n();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1001E40C0();
  *(v4 + 120) = v22;
  swift_endAccess();
  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  sub_1001A6C04(&qword_1003B6168);
  sub_1001A6C04(&unk_1003B6170);
  sub_1001E3D78();
  *v15 = v16;
  sub_1001E3DDC();
  sub_1001E4108();

  return Task.value.getter(v17, v18, v19);
}

uint64_t sub_1001D8A18()
{
  sub_1000057FC();
  v2 = *v1;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 320) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_1001D8BD8;
  }

  else
  {
    v6 = sub_1001D8B54;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001D8B54()
{
  sub_1000057FC();
  v1 = sub_1001E43A0();
  v2 = *(v0 + 184);
  sub_1001D9908(v1, v3, v4);

  sub_1001D17DC();

  return v5(v2);
}

uint64_t sub_1001D8BD8()
{
  sub_1000057FC();
  v0 = sub_1001E43A0();
  sub_1001D9908(v0, v1, v2);

  sub_1000046F8();

  return v3();
}

uint64_t sub_1001D8C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v9 = type metadata accessor for Logger();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001D8D34, 0, 0);
}

uint64_t sub_1001D8D34()
{
  v24 = v0;
  v1 = v0[3];
  static GKLog.library.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  sub_1001E32EC(v1);
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = sub_100005AE4();
    v7 = sub_100005808();
    v23 = v7;
    *v6 = 136315138;
    v8 = Set.description.getter();
    v10 = sub_100005C3C(v8, v9, &v23);

    *(v6 + 4) = v10;
    sub_1001E3E68();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_100005BE0(v7);
    sub_1000043D8();
    sub_1001E3DC0();
  }

  v16 = *(v5 + 8);
  v17 = sub_100005540();
  v16(v17);
  v0[13] = v16;
  v18 = v0[5];
  v0[14] = swift_getObjectType();
  v0[15] = *(v18 + 16);
  v0[16] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xFFAD000000000000;
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_1001E4204();
  v19 = sub_1001E3D3C();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_1001D8EC4()
{
  sub_1000057FC();
  *(v0 + 136) = (*(v0 + 120))(*(v0 + 24), *(v0 + 112), *(v0 + 40));
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

void sub_1001D8F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  v25 = 0;
  v26 = *(v22 + 136);
  v27 = *(v26 + 16);
  v28 = _swiftEmptyArrayStorage;
LABEL_2:
  *(v22 + 144) = v28;
  v29 = v26 + 32 * v25;
  while (v27 != v25)
  {
    if (v25 >= *(v26 + 16))
    {
      __break(1u);
      return;
    }

    v30 = (v29 + 32);
    ++v25;
    v31 = *(v29 + 56);
    v29 += 32;
    if (v31)
    {
      v33 = *v30;
      v32 = v30[1];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001DEFC0();
        v28 = v36;
      }

      v34 = v28[2];
      if (v34 >= v28[3] >> 1)
      {
        sub_1001DEFC0();
        v28 = v37;
      }

      v28[2] = v34 + 1;
      v35 = &v28[2 * v34];
      v35[4] = v33;
      v35[5] = v32;
      goto LABEL_2;
    }
  }

  if (v28[2])
  {
    static GKLog.library.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v22 + 104);
    v42 = *(v22 + 88);
    v43 = *(v22 + 64);
    if (v40)
    {
      sub_100005AE4();
      a9 = v42;
      v44 = sub_1001E3FB4();
      a11 = v44;
      *v41 = 136315138;
      v45 = Array.description.getter();
      v47 = sub_100005C3C(v45, v46, &a11);

      *(v41 + 4) = v47;
      sub_1001E3F94(&_mh_execute_header, v48, v49, "Will refresh expired IDs: %s");
      sub_100005BE0(v44);
      sub_1000043D8();
      sub_1001E3EA0();

      a10(a9, v43);
    }

    else
    {

      (v41)(v42, v43);
    }

    sub_100006454(*(v22 + 48), *(*(v22 + 48) + 24));
    sub_1001E3FD4();
    v78 = v68 + *v68;
    v69 = swift_task_alloc();
    *(v22 + 152) = v69;
    *v69 = v22;
    v69[1] = sub_1001D9344;
    sub_1001E4040();
    sub_1001E436C();
    sub_100005B0C();

    v75(v70, v71, v72, v73, v74, v75, v76, v77, a9, v78, a11, a12, a13, a14);
  }

  else
  {

    static GKLog.library.getter();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    v52 = sub_1000044B4(v51);
    v53 = *(v22 + 104);
    if (v52)
    {
      *swift_slowAlloc() = 0;
      sub_1001E3E68();
      _os_log_impl(v54, v55, v56, v57, v58, 2u);
      sub_1001E3DC0();
    }

    v59 = sub_100005540();
    v53(v59);
    **(v22 + 16) = 0;

    sub_1000046F8();
    sub_100005B0C();

    v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1001D9344()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  v3 = *v0;
  sub_100004410();
  *v4 = v3;
  *(v6 + 160) = v5;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001D944C()
{
  sub_100005528();
  **(v0 + 16) = *(v0 + 160);

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001D94C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001D958C, 0, 0);
}

uint64_t sub_1001D958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  v25 = *(v22 + 24);
  static GKLog.library.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  sub_1001E32EC(v25);
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v22 + 56);
  v30 = *(v22 + 64);
  v31 = *(v22 + 48);
  if (v28)
  {
    sub_100005AE4();
    v32 = sub_1001E3FB4();
    a11 = v32;
    *v30 = 136315138;
    v33 = Set.description.getter();
    v35 = sub_100005C3C(v33, v34, &a11);

    *(v30 + 4) = v35;
    sub_1001E3F94(&_mh_execute_header, v36, v37, "Will refresh expired IDs: %s");
    sub_100005BE0(v32);
    sub_1000043D8();
    sub_1001E3EA0();

    (*(v29 + 8))(a10, v31);
  }

  else
  {

    (*(v29 + 8))(v30, v31);
  }

  sub_100006454(*(v22 + 32), *(*(v22 + 32) + 24));
  sub_100005FBC();

  *(v22 + 72) = sub_100255E24(v38);
  sub_1001E3FD4();
  v50 = v39 + *v39;
  v40 = swift_task_alloc();
  *(v22 + 80) = v40;
  *v40 = v22;
  v40[1] = sub_1001D9798;
  sub_1001E4040();
  sub_1001E436C();
  sub_100005B0C();

  return v46(v41, v42, v43, v44, v45, v46, v47, v48, a9, v50, a11, a12, a13, a14);
}

uint64_t sub_1001D9798()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  v3 = *v0;
  sub_100004410();
  *v4 = v3;
  *(v6 + 88) = v5;

  sub_1001B6A34();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001D98A0()
{
  sub_100005528();
  **(v0 + 16) = *(v0 + 88);

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001D9908(uint64_t a1, Swift::UInt a2, char a3)
{
  swift_beginAccess();
  sub_1001B2590(a2, a3 & 1);
  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 120);
    *(a1 + 120) = 0x8000000000000000;
    v8 = *(v10 + 24);
    sub_1001A6C04(&qword_1003B62B0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    sub_1001A6C04(&qword_1003B62B8);
    sub_1001E3340();
    _NativeDictionary._delete(at:)();
    *(a1 + 120) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_1001D9A14(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 80) = a2;
  *(v6 + 16) = a1;
  return sub_1001E3E4C();
}

void sub_1001D9A34()
{
  sub_1001E4394();
  if (*(*(v0 + 16) + 16))
  {
    sub_100006454(*(v0 + 32), *(*(v0 + 32) + 24));

    *(v0 + 56) = sub_100255E24(v1);
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1001D9D90;
    sub_1001E41B8();

    __asm { BRAA            X5, X16 }
  }

  v5 = 0;
  v6 = *(v0 + 40);
  v7 = *(v6 + 16);
  v8 = v6 + 48;
  while (2)
  {
    v9 = (v8 + 32 * v5);
    do
    {
      if (v7 == v5)
      {
        sub_1001E3BC4();
        sub_1001E41B8();

        __asm { BRAA            X2, X16 }
      }

      if (v5 >= v7)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_24;
      }

      v12 = *v9;
      v9 += 4;
      v11 = v12;
      ++v5;
    }

    while (!v12);
    v42 = v8;
    v13 = v11;

    v14 = [v13 bundleID];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v43 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1001E3F2C();
    sub_1001B247C(v19, v20);
    sub_1001E3D88();
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v26 = v21;
    v27 = v22;
    sub_1001A6C04(&qword_1003B5D60);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      goto LABEL_15;
    }

    v28 = sub_1001E3F2C();
    v30 = sub_1001B247C(v28, v29);
    if ((v27 & 1) == (v31 & 1))
    {
      v26 = v30;
LABEL_15:
      v5 = v10;
      if (v27)
      {

        v32 = _swiftEmptyDictionarySingleton[7];
        v33 = *(v32 + 8 * v26);
        *(v32 + 8 * v26) = v43;

LABEL_19:
        v8 = v42;
        continue;
      }

      sub_1001E41F8();
      sub_1001E3C34(v34);
      v36 = (v35 + 16 * v26);
      *v36 = v15;
      v36[1] = v17;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v26) = v43;

      sub_1001E424C();
      if (!v38)
      {
        _swiftEmptyDictionarySingleton[2] = v37;
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    break;
  }

LABEL_25:
  sub_1001E41B8();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1001D9D90()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *v0;
  sub_100004410();
  *v6 = v5;
  *(v8 + 72) = v7;

  return _swift_task_switch(sub_1001D9EB0, v4, 0);
}

void sub_1001D9EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1001E3F50();
  sub_1001D1988();
  v15 = *(v14 + 40);
  v16 = *(v15 + 16);
  v56 = v14;
  if (!v16)
  {
LABEL_13:
    sub_1001E3BC4();
    sub_100005B0C();

    v49(v47, v48, v49, v50, v51, v52, v53, v54, v56, a10, a11, a12, a13, a14);
    return;
  }

  v17 = *(v14 + 72);
  v18 = (v15 + 48);
  while (1)
  {
    if (!*v18)
    {
      goto LABEL_12;
    }

    v19 = *(v18 - 1);
    v20 = *v18;
    a10 = v19;

    v21 = [v20 bundleID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a11 = v17;
    v27 = sub_1001E3F2C();
    sub_1001B247C(v27, v28);
    sub_1001E3D88();
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v34 = v29;
    v35 = v30;
    sub_1001A6C04(&qword_1003B5D60);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
    {
      break;
    }

LABEL_8:
    if (v35)
    {

      v40 = *(v17 + 56);
      v41 = *(v40 + 8 * v34);
      *(v40 + 8 * v34) = v25;
    }

    else
    {
      sub_1001E41F8();
      sub_1001E3C34(v42);
      v44 = (v43 + 16 * v34);
      *v44 = v22;
      v44[1] = v24;
      *(*(v17 + 56) + 8 * v34) = v25;

      sub_1001E424C();
      if (v46)
      {
        goto LABEL_20;
      }

      *(v17 + 16) = v45;
    }

LABEL_12:
    v18 += 4;
    if (!--v16)
    {
      goto LABEL_13;
    }
  }

  v36 = sub_1001E3F2C();
  v38 = sub_1001B247C(v36, v37);
  if ((v35 & 1) == (v39 & 1))
  {
    v34 = v38;
    goto LABEL_8;
  }

  sub_100005B0C();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

id AppMetadataFetcher.init()()
{
  swift_defaultActor_initialize();
  v0[14] = _swiftEmptyDictionarySingleton;
  v0[15] = _swiftEmptyDictionarySingleton;
  v1 = type metadata accessor for AppMetadataFetcher();
  v0[16] = 0;
  v0[17] = 0;
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t AppMetadataFetcher.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AppMetadataFetcher.__deallocating_deinit()
{
  AppMetadataFetcher.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001DA1E4(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 90) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a3;
  *(v8 + 32) = a5;
  *(v8 + 89) = a4;
  *(v8 + 88) = a2;
  *(v8 + 16) = a1;
  return _swift_task_switch(sub_1001DA218, 0, 0);
}

uint64_t sub_1001DA218()
{
  sub_1000057FC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  v4 = *(v0 + 89);
  sub_1001A7B44(0, &qword_1003B6398);
  v5 = sub_1001DA4E0(v1, v4, v2);
  *(v0 + 56) = v5;
  v6 = *(v0 + 16);
  if (v3)
  {
    sub_1001E2698(v6, v5);
  }

  else
  {
    sub_1001E2638(v6, v5);
  }

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1001DA318;
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);
  v11 = *(v0 + 89);
  v12 = *(v0 + 90);

  return sub_1001DA7C4(v9, v8, v12, v11, v10);
}

uint64_t sub_1001DA318()
{
  sub_1000057FC();
  v3 = v2;
  sub_1000057F0();
  v5 = v4;
  sub_1001D14B0();
  *v6 = v5;
  v7 = *v1;
  sub_100004410();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  sub_1001B6A34();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001DA424()
{
  sub_100005528();

  sub_1001D17DC();
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_1001DA484()
{
  sub_100005528();

  sub_1000046F8();

  return v1();
}

uint64_t sub_1001DA4E0(uint64_t a1, char a2, unint64_t a3)
{
  sub_1001A7B44(0, &qword_1003B6398);
  sub_1001DC3D0(a3);
  v5 = static AMSMediaTask.createGameCenterTask(type:environment:bag:)();
  if (a3 != 1)
  {
    if (a3)
    {
      _StringGuts.grow(_:)(28);
      v14._countAndFlagsBits = 0xD00000000000001ALL;
      v14._object = 0x800000010030A5E0;
      String.append(_:)(v14);
      type metadata accessor for GKAppMetadataEnvironment(0);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    sub_1001E7078(&off_10036A9E8);
  }

  sub_1001A6C04(&qword_1003B63B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C4280;
  v7 = 0xE400000000000000;
  *(inited + 32) = 1752459639;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x6F6C6E776F646572;
  *(inited + 56) = 0xEA00000000006461;
  *(inited + 64) = 0x73646C656966;
  *(inited + 72) = 0xE600000000000000;
  sub_1001A6C04(&unk_1003B6BD0);
  sub_1001B2D98(&qword_1003B5B00, &unk_1003B6BD0);
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  *(inited + 80) = v8;
  *(inited + 88) = v10;
  *(inited + 96) = 0xD000000000000013;
  *(inited + 104) = 0x800000010030A600;
  *(inited + 112) = 0xD00000000000002BLL;
  *(inited + 120) = 0x800000010030A620;
  *(inited + 128) = 0x6D726F6674616C70;
  *(inited + 136) = 0xE800000000000000;
  if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xE600000000000000;
      v11 = 0x656E6F687069;
    }

    else
    {
      v7 = 0xE300000000000000;
      v11 = 6513005;
    }
  }

  else
  {
    v11 = 1684107369;
  }

  *(inited + 144) = v11;
  *(inited + 152) = v7;
  v12 = Dictionary.init(dictionaryLiteral:)();
  sub_1001E24F8(v12, v5);
  return v5;
}

uint64_t sub_1001DA7C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 192) = a5;
  *(v6 + 200) = v5;
  *(v6 + 464) = a3;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;
  v7 = type metadata accessor for Logger();
  *(v6 + 208) = v7;
  *(v6 + 216) = *(v7 - 8);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = type metadata accessor for AppMetadataCache.InsertRequest(0);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = type metadata accessor for AppMetadataCache.InsertInvalidRequest(0);
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 288) = v8;
  *(v6 + 296) = *(v8 - 8);
  *(v6 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1001DA96C, 0, 0);
}

uint64_t sub_1001DA96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v11 = sub_1001E2570(*(v10 + 200), &selRef_itemIdentifiers);
  if (v11)
  {
    if (*(v11 + 16))
    {
      v12 = 1;
LABEL_8:
      *(v10 + 312) = v11;
      *(v10 + 465) = v12;
      v13 = *(v10 + 200);
      Date.init()();
      v14 = [v13 perform];
      *(v10 + 320) = v14;
      *(v10 + 16) = v10;
      *(v10 + 56) = v10 + 144;
      *(v10 + 24) = sub_1001DAB90;
      v15 = swift_continuation_init();
      *(v10 + 136) = sub_1001A6C04(&unk_1003B63A0);
      *(v10 + 80) = _NSConcreteStackBlock;
      *(v10 + 88) = 1107296256;
      *(v10 + 96) = sub_1001DC494;
      *(v10 + 104) = &unk_10036BCC0;
      *(v10 + 112) = v15;
      [v14 resultWithCompletion:v10 + 80];
      sub_1001D185C();

      return _swift_continuation_await(v16);
    }
  }

  v11 = sub_1001E2570(*(v10 + 200), &selRef_bundleIdentifiers);
  if (v11)
  {
    if (*(v11 + 16))
    {
      v12 = 0;
      goto LABEL_8;
    }
  }

  sub_1001D29A4();
  swift_allocError();
  *v18 = 1;
  swift_willThrow();
  sub_1001E3CA8();

  sub_1000046F8();
  sub_1001D185C();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1001DAB90()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001DAF30()
{
  sub_1000057FC();
  (*(v0 + 368))(*(v0 + 280), *(v0 + 360), *(v0 + 184));
  *(v0 + 400) = 0;
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001DAFC0()
{
  v1 = v0[43];
  v2 = v0[38];
  v3 = v0[36];
  v5 = v0[31];
  v4 = v0[32];
  v7 = v0[23];
  v6 = v0[24];

  v9 = sub_100255EA4(v8);
  v1(&v4[*(v5 + 20)], v2, v3);
  *v4 = v9;
  *&v4[*(v5 + 24)] = v6;
  v0[51] = *(v7 + 24);
  v0[52] = (v7 + 24) & 0xFFFFFFFFFFFFLL | 0x7EC9000000000000;
  v10 = v0[48];
  v11 = v0[49];

  return _swift_task_switch(sub_1001DB08C, v10, v11);
}

uint64_t sub_1001DB08C()
{
  sub_1000057FC();
  v1 = *(v0 + 400);
  (*(v0 + 408))(*(v0 + 256), *(v0 + 360), *(v0 + 184));
  *(v0 + 424) = v1;
  sub_1001B6A34();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1001DB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_1001E3DFC();
  sub_1001E3B5C();
  sub_1001E39D0(v10, v11);
  v12 = sub_100005540();
  v13(v12);
  sub_1001E3CA8();

  sub_1001E3BC4();
  sub_1001D185C();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1001DB1CC()
{
  sub_1000057FC();
  (*(v0 + 440))(*(v0 + 272), *(v0 + 432), *(v0 + 184));
  *(v0 + 456) = 0;
  sub_1001B6A34();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001DB25C()
{
  sub_1001AFA50();
  sub_1001E3B5C();
  sub_1001E39D0(v0, v1);
  v2 = sub_1001E4240();
  v3(v2);

  sub_1001D17DC();

  return v4(0);
}

uint64_t sub_1001DB334()
{
  v3 = v0[40];
  v2 = v0[41];
  swift_willThrow();

  v0[19] = v2;
  swift_errorRetain();
  sub_1001A6C04(&unk_1003B6170);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {

    v4 = v0[20];
    if (related decl 'e' for AMSErrorCode.gkIs404Status()())
    {
      static GKLog.library.getter();
      v5 = v4;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = sub_100005AE4();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v5;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&_mh_execute_header, v6, v7, "Media task returned a 404: %@", v8, 0xCu);
        sub_1001E30E0(v9, &unk_1003B6180);
        sub_1001E3EA0();
        sub_1001E3DC0();
      }

      else
      {
        v10 = v6;
        v6 = v5;
      }

      v38 = v0[30];
      v39 = v0[26];
      v40 = v0[27];

      (*(v40 + 8))(v38, v39);

      v41 = sub_100006398();
      v42(v41);
      v43 = sub_1001E427C();
      sub_1001E4178(v43);
      sub_1001E4204();
      v44 = sub_1001E3D3C();

      return _swift_task_switch(v44, v45, v46);
    }

    static GKLog.library.getter();
    v23 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      sub_100005AE4();
      v26 = sub_1001E42D0();
      *v1 = 138412290;
      v27 = v23;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v28;
      *v26 = v28;
      sub_1001E407C(&_mh_execute_header, v29, v25, "Media task returned an unexpected error: %@");
      sub_1001E30E0(v26, &unk_1003B6180);
      sub_1001E3DC0();
      sub_1000043D8();
    }

    v31 = v0[37];
    v30 = v0[38];
    v32 = v0[36];
    v33 = v0[29];
    v34 = v0[26];
    v35 = v0[27];

    (*(v35 + 8))(v33, v34);
    swift_willThrow();
    (*(v31 + 8))(v30, v32);
  }

  else
  {

    static GKLog.library.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      sub_100005AE4();
      v14 = sub_1001E42D0();
      *v1 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v1 + 4) = v15;
      *v14 = v15;
      sub_1001E407C(&_mh_execute_header, v16, v13, "Media task returned an unexpected error type: %@");
      sub_1001E30E0(v14, &unk_1003B6180);
      sub_1001E3DC0();
      sub_1000043D8();
    }

    v18 = v0[37];
    v17 = v0[38];
    v19 = v0[36];
    v21 = v0[27];
    v20 = v0[28];
    v22 = v0[26];

    (*(v21 + 8))(v20, v22);
    swift_willThrow();
    (*(v18 + 8))(v17, v19);
  }

  sub_1000046F8();

  return v36();
}

uint64_t sub_1001DB7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_1001E3B5C();
  sub_1001E39D0(v10, v11);
  v12 = sub_1001E4240();
  v13(v12);
  sub_1001E3CA8();

  sub_1000046F8();
  sub_1001D185C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1001DB880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_1001E3B5C();
  sub_1001E39D0(v10, v11);
  v12 = sub_100005540();
  v13(v12);

  sub_1001E3CA8();

  sub_1000046F8();
  sub_1001D185C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1001DB940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  sub_1001E3DFC();
  sub_1001E3B5C();
  sub_1001E39D0(v10, v11);
  v12 = sub_100005540();
  v13(v12);

  sub_1001E3CA8();

  sub_1000046F8();
  sub_1001D185C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t AppMetadataNetworkFetcher.fetch(ids:type:batchSize:)()
{
  sub_100005528();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 128) = v3;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  v6 = type metadata accessor for Logger();
  *(v0 + 48) = v6;
  sub_1001B6A00(v6);
  *(v0 + 56) = v7;
  *(v0 + 64) = sub_1001E41A0();
  sub_1001B6A34();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1001DBAAC()
{
  sub_1000057FC();
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v0[9] = v2;
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v0[10] = _swiftEmptyDictionarySingleton;
  if (v1 >= 1 && v2 != 0)
  {
    v0[11] = v1;
    if (v2 <= v1)
    {

      goto LABEL_12;
    }

LABEL_16:
    sub_1001A6C04(&qword_1003B5B98);
    v9 = sub_1001E4058();
    j__malloc_size(v9);
    sub_1001E3BF8();
    v9[2] = v1;
    v9[3] = v10;
    sub_1001E4304();
LABEL_12:
    sub_1001E3B74();
    v11 = v7;
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v5 = sub_100005844(v8);
    v4 = v11;

    return v4(v5);
  }

  sub_1001D17DC();
  v5 = v0[10];

  return v4(v5);
}

uint64_t sub_1001DBC08()
{
  sub_100006B50();
  sub_1001AFA50();
  v3 = v2;
  v4 = *v1;
  sub_100004410();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v3;
  }

  sub_1001B6A34();
  sub_1001D18C4();

  return _swift_task_switch(v6, v7, v8);
}

void sub_1001DBD34()
{
  sub_1001AFA50();
  v2 = v1[15];
  if (v2)
  {
    v0 = v1[10];
    swift_isUniquelyReferenced_nonNull_native();
    sub_1001E3E30();
    sub_1001E1BA0(v2, v3, 0, v4, v5);
    v6 = v1[11];
    v1[10] = v0;
  }

  else
  {
    v6 = v1[11];
  }

  sub_1001E43B4();
  if (v9 > 0)
  {
    v8 = v6 >= v7;
  }

  if (v8)
  {

    sub_1001D17DC();
    v11 = v1[10];

LABEL_9:
    v10(v11);
    return;
  }

  v12 = v7;
  v13 = v7 - v6;
  v14 = __OFSUB__(v7, v6);
  v15 = __OFADD__(v6, v9);
  if (__OFADD__(v6, v9))
  {
    if (v9 < 0)
    {
      if (!v14)
      {
        if (v13 > 0)
        {
          goto LABEL_58;
        }

        v16 = 0x8000000000000000;
        goto LABEL_35;
      }
    }

    else
    {
      if (!v14)
      {
        if (v9 >= 1)
        {
          if (v13 < 0)
          {
            goto LABEL_58;
          }

          v16 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_26;
        }

        if (v13 > 0)
        {
          goto LABEL_58;
        }

        v16 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_35;
      }

      __break(1u);
    }

    __break(1u);
LABEL_57:
    sub_1001E4304();
    goto LABEL_43;
  }

  if (v14)
  {
    __break(1u);
LABEL_53:
    if (v0 >= 1)
    {
      sub_1001A6C04(&qword_1003B5B98);
      v19 = sub_1001E4058();
      j__malloc_size(v19);
      sub_1001E3BF8();
      v19[2] = v0;
      v19[3] = v20;
    }

    goto LABEL_57;
  }

  v16 = v6 + v9;
  if (v9 >= 1)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_26:
      if (v13 < v9)
      {
LABEL_37:
        v1[11] = v16;
        v0 = v12 - v6;
        if (v12 < v6)
        {
          __break(1u);
        }

        else if (v7 >= v6)
        {
          if ((v6 & 0x8000000000000000) == 0)
          {
            if (v7 >= v12)
            {
              if (v7 == v0)
              {

                goto LABEL_43;
              }

LABEL_50:
              if (v12 == v6)
              {
LABEL_43:
                sub_1001E3B74();
                v21 = v17;
                v18 = swift_task_alloc();
                v1[13] = v18;
                *v18 = v1;
                v11 = sub_100005844();
                v10 = v21;

                goto LABEL_9;
              }

              goto LABEL_53;
            }

LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_48;
      }

      goto LABEL_36;
    }

LABEL_32:
    v12 = v6 + v9;
    v16 = v6 + v9;
    goto LABEL_37;
  }

  if (v13 > 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if (v13 > v9)
  {
    goto LABEL_37;
  }

LABEL_36:
  v12 = v6 + v9;
  if (!v15)
  {
    goto LABEL_37;
  }

LABEL_58:
  __break(1u);
}

void sub_1001DBFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_1001E3F50();
  a21 = v23;
  a22 = v24;
  sub_1001D1988();
  a20 = v22;
  static GKLog.library.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v22[7];
  v29 = v22[8];
  v30 = v22[6];
  if (v27)
  {
    sub_100005AE4();
    v31 = sub_1001E3FB4();
    a11 = v31;
    *v29 = 136315138;
    v32 = Array.description.getter();
    v34 = sub_100005C3C(v32, v33, &a11);

    *(v29 + 4) = v34;
    sub_1001E3F94(&_mh_execute_header, v35, v36, "Failed to fetch batch of app IDs %s.");
    sub_100005BE0(v31);
    sub_1000043D8();
    sub_1001E3EA0();

    v38 = *(v28 + 8);
    v37 = v28 + 8;
    v38(a10, v30);
  }

  else
  {

    v39 = *(v28 + 8);
    v37 = v28 + 8;
    v39(v29, v30);
  }

  v40 = v22[11];
  sub_1001E43B4();
  if (v43 > 0)
  {
    v42 = v40 >= v41;
  }

  if (v42)
  {

    sub_1001D17DC();
    sub_100005B0C();

LABEL_9:
    v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
    return;
  }

  v52 = v41;
  v53 = v41 - v40;
  v54 = __OFSUB__(v41, v40);
  v55 = __OFADD__(v40, v43);
  if (__OFADD__(v40, v43))
  {
    if (v43 < 0)
    {
      if (!v54)
      {
        if (v53 > 0)
        {
          goto LABEL_58;
        }

        v56 = 0x8000000000000000;
        goto LABEL_35;
      }
    }

    else
    {
      if (!v54)
      {
        if (v43 >= 1)
        {
          if (v53 < 0)
          {
            goto LABEL_58;
          }

          v56 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_26;
        }

        if (v53 > 0)
        {
          goto LABEL_58;
        }

        v56 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_35;
      }

      __break(1u);
    }

    __break(1u);
LABEL_57:
    sub_1001E4304();
    goto LABEL_43;
  }

  if (v54)
  {
    __break(1u);
LABEL_53:
    if (v37 >= 1)
    {
      sub_1001A6C04(&qword_1003B5B98);
      v59 = sub_1001E4058();
      j__malloc_size(v59);
      sub_1001E3BF8();
      v59[2] = v37;
      v59[3] = v60;
    }

    goto LABEL_57;
  }

  v56 = v40 + v43;
  if (v43 >= 1)
  {
    if ((v53 & 0x8000000000000000) == 0)
    {
LABEL_26:
      if (v53 < v43)
      {
LABEL_37:
        v22[11] = v56;
        v37 = v52 - v40;
        if (v52 < v40)
        {
          __break(1u);
        }

        else if (v41 >= v40)
        {
          if ((v40 & 0x8000000000000000) == 0)
          {
            if (v41 >= v52)
            {
              if (v41 == v37)
              {

                goto LABEL_43;
              }

LABEL_50:
              if (v52 == v40)
              {
LABEL_43:
                sub_1001E3B74();
                a10 = v57;
                v58 = swift_task_alloc();
                v22[13] = v58;
                *v58 = v22;
                sub_100005844();
                sub_100005B0C();

                goto LABEL_9;
              }

              goto LABEL_53;
            }

LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_48;
      }

      goto LABEL_36;
    }

LABEL_32:
    v52 = v40 + v43;
    v56 = v40 + v43;
    goto LABEL_37;
  }

  if (v53 > 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if (v53 > v43)
  {
    goto LABEL_37;
  }

LABEL_36:
  v52 = v40 + v43;
  if (!v55)
  {
    goto LABEL_37;
  }

LABEL_58:
  __break(1u);
}

uint64_t sub_1001DC310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001CC2F0;

  return AppMetadataNetworkFetcher.fetch(ids:type:batchSize:)();
}

unint64_t sub_1001DC3D0(unint64_t result)
{
  if (result >= 2)
  {
    _StringGuts.grow(_:)(39);
    v1._object = 0x800000010030A3F0;
    v1._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v1);
    type metadata accessor for GKAppMetadataEnvironment(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t *sub_1001DC494(uint64_t a1, void *a2, void *a3)
{
  result = sub_100006454((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1001D1394(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1001D1354(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void GKAppMetadata.init(responseDataItem:platform:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000469C();
  a19 = v21;
  a20 = v22;
  v225 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  type metadata accessor for Logger();
  sub_1000043C4();
  v226 = v30;
  v227 = v29;
  v31 = __chkstk_darwin(v29);
  v33 = &v200 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v200 - v34;
  v36 = type metadata accessor for String.Encoding();
  v37 = sub_100006A0C(v36);
  __chkstk_darwin(v37);
  v38 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v229 = 0;
  v40 = [v38 dataWithJSONObject:isa options:0 error:&v229];

  v41 = v229;
  if (!v40)
  {
    v60 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static GKLog.cache.getter();

    swift_errorRetain();
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = sub_100005808();
      v229 = v65;
      *v63 = 136315394;
      v66 = Dictionary.description.getter();
      v68 = v67;

      v69 = sub_100005C3C(v66, v68, &v229);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2112;
      swift_errorRetain();
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v70;
      *v64 = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to create JSON data for response item: %s, error: %@", v63, 0x16u);
      sub_1001E30E0(v64, &unk_1003B6180);
      sub_1000043D8();
      sub_100005BE0(v65);
      sub_1001E3EA0();
      sub_1000043D8();
    }

    else
    {
    }

    v226[1](v33, v227);
    goto LABEL_33;
  }

  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v228[0] = 25705;
  v228[1] = 0xE200000000000000;
  sub_1001E3D30();
  AnyHashable.init<A>(_:)();
  sub_10000554C();
  sub_1001AFA68(v28, v42);
  sub_1001B2E34(&v229);
  if (!v234[0])
  {
    v71 = sub_1001D1B80();
    sub_1000072CC(v71, v72);
LABEL_29:

    sub_1001E30E0(&v231, &qword_1003B5808);
LABEL_33:
    sub_1000057D8();
    return;
  }

  sub_1001E3BB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = sub_1001D1B80();
    sub_1000072CC(v73, v74);
LABEL_32:

    goto LABEL_33;
  }

  v43 = v228[0];
  v44 = v228[1];
  strcpy(v228, "attributes");
  BYTE3(v228[1]) = 0;
  HIDWORD(v228[1]) = -369098752;
  sub_1001E3D30();
  AnyHashable.init<A>(_:)();
  sub_10000554C();
  sub_1001AFA68(v28, v45);
  sub_1001B2E34(&v229);
  if (!v234[0])
  {
    v75 = sub_1001D1B80();
    sub_1000072CC(v75, v76);
LABEL_28:

    goto LABEL_29;
  }

  v223 = v43;
  sub_1001A6C04(&unk_1003B6190);
  sub_1001E3BB4();
  if ((sub_1001E42A0() & 1) == 0)
  {
    v77 = sub_1001D1B80();
    sub_1000072CC(v77, v78);

    goto LABEL_32;
  }

  v224 = v44;
  v46 = v228[0];
  v228[0] = 0xD000000000000015;
  v228[1] = 0x8000000100309150;
  sub_1001E3D30();
  AnyHashable.init<A>(_:)();
  sub_10000554C();
  sub_1001AFA68(v46, v47);
  sub_1001B2E34(&v229);
  if (!v234[0])
  {
    goto LABEL_27;
  }

  v222 = v46;
  sub_1001E3BB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v81 = sub_1001D1B80();
    sub_1000072CC(v81, v82);

LABEL_31:

    goto LABEL_32;
  }

  v221 = LOBYTE(v228[0]);
  v228[0] = 1701667182;
  v228[1] = 0xE400000000000000;
  sub_1001E3D30();
  AnyHashable.init<A>(_:)();
  sub_10000554C();
  sub_1001AFA68(v222, v48);
  sub_1001B2E34(&v229);
  if (!v234[0])
  {
LABEL_27:
    v79 = sub_1001D1B80();
    sub_1000072CC(v79, v80);

    goto LABEL_28;
  }

  sub_1001E3BB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v219 = v228[0];
  v220 = v228[1];
  strcpy(v228, "supportsArcade");
  HIBYTE(v228[1]) = -18;
  sub_1001E3D30();
  AnyHashable.init<A>(_:)();
  sub_10000554C();
  sub_1001AFA68(v222, v49);
  sub_1001B2E34(&v229);
  if (!v234[0])
  {
    goto LABEL_34;
  }

  sub_1001E3BB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v85 = sub_1001D1B80();
    sub_1000072CC(v85, v86);

    goto LABEL_31;
  }

  v218 = LOBYTE(v228[0]);
  strcpy(v228, "deviceFamilies");
  HIBYTE(v228[1]) = -18;
  sub_1001E3D30();
  AnyHashable.init<A>(_:)();
  sub_10000554C();
  sub_1001AFA68(v222, v50);
  sub_1001B2E34(&v229);
  if (!v234[0])
  {
LABEL_34:
    v83 = sub_1001D1B80();
    sub_1000072CC(v83, v84);

    goto LABEL_28;
  }

  v51 = sub_1001A6C04(&unk_1003B6BD0);
  sub_1001E3BB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v214 = v51;
  v217 = v228[0];
  static String.Encoding.utf8.getter();
  sub_1001D1B80();
  v52 = String.init(data:encoding:)();
  if (!v53)
  {
    goto LABEL_52;
  }

  v212 = v52;
  v216 = v53;
  sub_1000060A0();
  v231 = v55 + 10;
  v232 = v54;
  sub_1001E42B8();
  sub_10000554C();
  v56 = v222;
  sub_1001AFA68(v222, v57);
  sub_1001B2E34(&v229);
  if (v234[0])
  {
    sub_1001E3BB4();
    swift_dynamicCast();
    sub_1001E4118();
    if (v173)
    {
      v58 = v59;
    }
  }

  else
  {
    sub_1001E30E0(&v231, &qword_1003B5808);
    v58 = 2;
  }

  LODWORD(v213) = v58;
  sub_1000060A0();
  v231 = v88 + 2;
  v232 = v87;
  sub_1001E42B8();
  sub_10000554C();
  sub_1001AFA68(v56, v89);
  sub_1001B2E34(&v229);
  if (v234[0])
  {
    sub_1001E3BB4();
    if (sub_1001E42A0())
    {
      v90 = v228[0];
    }

    else
    {
      v90 = 0;
    }
  }

  else
  {
    sub_1001E30E0(&v231, &qword_1003B5808);
    v90 = 0;
  }

  sub_1001DDEE0(v90, v26);
  v215 = v91;
  v93 = v92;
  v95 = v94;

  if (!v95)
  {

    sub_1001E41D4();
LABEL_52:

    sub_1001E4098();

    v104 = sub_1001D1B80();
    sub_1000072CC(v104, v105);
    goto LABEL_33;
  }

  strcpy(v228, "bundleId");
  BYTE1(v228[1]) = 0;
  WORD1(v228[1]) = 0;
  HIDWORD(v228[1]) = -402653184;
  sub_1001E3D30();
  AnyHashable.init<A>(_:)();
  sub_10000554C();
  sub_1001AFA68(v93, v96);
  sub_1001B2E34(&v229);
  if (!v234[0])
  {
    v106 = sub_1001D1B80();
    sub_1000072CC(v106, v107);

    sub_1001E41D4();

    sub_1001E4098();

    sub_1001E448C();
    goto LABEL_29;
  }

  sub_1001E3BB4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v108 = sub_1001D1B80();
    sub_1000072CC(v108, v109);

    sub_1001E41D4();

    sub_1001E4098();

    sub_1001E448C();
    goto LABEL_32;
  }

  v211 = v95;
  v97 = v93;
  v203 = v228[0];
  v207 = v228[1];
  if (v24 == 1)
  {
    v98 = sub_1001E4168(&a14);
    sub_1001E2928(v98, v99);

    v208 = 0;
    sub_1001E43C8();
    v201 = 0;
    LODWORD(v204) = 2;
    v200 = 1;
    v206 = _swiftEmptyArrayStorage;
    v205 = 2;
    LODWORD(v209) = 2;
    goto LABEL_48;
  }

  if (!v24)
  {
    v110 = sub_1001E4168(&a14);
    sub_1001E2928(v110, v111);
    v231 = 0x6D614E74726F6873;
    v232 = 0xE900000000000065;
    sub_1001E42B8();
    sub_10000554C();
    sub_1001AFA68(v93, v112);
    sub_1001B2E34(&v229);
    if (v234[0])
    {
      sub_1001E3BB4();
      v113 = swift_dynamicCast();
      v114 = v228[0];
      if (!v113)
      {
        v114 = 0;
      }

      v202 = v114;
      if (v113)
      {
        v115 = v228[1];
      }

      else
      {
        v115 = 0;
      }

      v210 = v115;
    }

    else
    {
      sub_1001E30E0(&v231, &qword_1003B5808);
      sub_1001E43C8();
    }

    sub_1000060A0();
    v231 = v148 + 6;
    v232 = v147;
    sub_1001E42B8();
    sub_10000554C();
    sub_1001AFA68(v93, v149);
    sub_1001B2E34(&v229);
    if (v234[0])
    {
      sub_1001E3BB4();
      swift_dynamicCast();
      sub_1001E4118();
      if (v173)
      {
        v150 = v151;
      }
    }

    else
    {
      sub_1001E30E0(&v231, &qword_1003B5808);
      v150 = 2;
    }

    LODWORD(v209) = v150;
    sub_1000060A0();
    v231 = v153 + 3;
    v232 = v152;
    sub_1001E42B8();
    sub_10000554C();
    sub_1001AFA68(v93, v154);
    sub_1001B2E34(&v229);
    if (v234[0])
    {
      sub_1001E3BB4();
      swift_dynamicCast();
      sub_1001E4118();
      if (v173)
      {
        v155 = v156;
      }
    }

    else
    {
      sub_1001E30E0(&v231, &qword_1003B5808);
      v155 = 2;
    }

    v205 = v155;
    strcpy(v228, "artwork");
    v228[1] = 0xE700000000000000;
    sub_1001E3D30();
    AnyHashable.init<A>(_:)();
    sub_10000554C();
    sub_1001AFA68(v93, v157);
    sub_1001B2E34(&v229);
    if (v234[0])
    {
      sub_1001E3BB4();
      if (sub_1001E42A0())
      {
        sub_1001A7B44(0, &qword_1003B61A0);
        v158 = sub_1001B2FE0();
        v208 = sub_1001DE0F4(v158);
        goto LABEL_117;
      }
    }

    else
    {
      sub_1001E30E0(&v231, &qword_1003B5808);
    }

    v208 = 0;
LABEL_117:
    strcpy(v228, "relationships");
    HIWORD(v228[1]) = -4864;
    sub_1001E3D30();
    AnyHashable.init<A>(_:)();
    sub_10000554C();
    sub_1001AFA68(v28, v159);

    sub_1001B2E34(&v229);
    if (v234[0])
    {
      sub_1001E3BB4();
      if ((sub_1001E42A0() & 1) == 0)
      {
        goto LABEL_141;
      }

      v160 = v228[0];
      v228[0] = 0x7365726E6567;
      v228[1] = 0xE600000000000000;
      sub_1001E3D30();
      AnyHashable.init<A>(_:)();
      sub_10000554C();
      sub_1001AFA68(v160, v161);

      sub_1001B2E34(&v229);
      if (v234[0])
      {
        sub_1001E3BB4();
        if ((sub_1001E42A0() & 1) == 0)
        {
          goto LABEL_141;
        }

        v162 = v228[0];
        v228[0] = 1635017060;
        v228[1] = 0xE400000000000000;
        sub_1001E3D30();
        AnyHashable.init<A>(_:)();
        sub_10000554C();
        sub_1001AFA68(v162, v163);

        sub_1001B2E34(&v229);
        if (v234[0])
        {
          sub_1001A6C04(&qword_1003B61B0);
          sub_1001E3BB4();
          if (swift_dynamicCast())
          {
            v206 = 0;
            v201 = v228[0];
            v204 = *(v228[0] + 16);
            v164 = GKGameGenreID;
            for (i = &v230; ; i = &v233)
            {
              *(i - 32) = v164;
              sub_1001E4210();
              if (v173)
              {
                break;
              }

              if (v206 >= *(v201 + 16))
              {
                __break(1u);
                goto LABEL_169;
              }

              v166 = *(v201 + 8 * v206 + 32);
              v167 = *(v166 + 16);

              if (v167 && (v168 = sub_1001B247C(25705, 0xE200000000000000), (v169 & 1) != 0) && (sub_1001A7AE8(*(v166 + 56) + 32 * v168, &v229), swift_dynamicCast()))
              {
                v24 = v231;
                v170 = v232;
              }

              else
              {
                v24 = 0;
                v170 = 0;
              }

              v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              if (v170)
              {
                v173 = v24 == v171 && v170 == v172;
                if (v173)
                {

                  break;
                }

                v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v24)
                {
                  break;
                }
              }

              else
              {
              }

              v164 = (v206 + 1);
            }

            sub_1001E4210();
            v190 = !v173;
            LODWORD(v204) = v190;
            v206 = sub_1001DE6DC(v201);

LABEL_142:
            strcpy(v228, "ageRating");
            WORD1(v228[1]) = 0;
            HIDWORD(v228[1]) = -385875968;
            sub_1001E3D30();
            AnyHashable.init<A>(_:)();
            sub_10000554C();
            sub_1001AFA68(v222, v174);
            sub_1001B2E34(&v229);
            if (v234[0])
            {
              sub_1001E3BB4();
              if ((sub_1001E42A0() & 1) == 0)
              {
LABEL_149:
                v201 = 0;
                v179 = 1;
                goto LABEL_150;
              }

              v175 = v228[0];
              v231 = 0x65756C6176;
              v232 = 0xE500000000000000;
              sub_1001E42B8();
              sub_10000554C();
              sub_1001AFA68(v175, v176);

              sub_1001B2E34(&v229);
              if (v234[0])
              {
                sub_1001E3BB4();
                v177 = swift_dynamicCast();
                v178 = v228[0];
                if (!v177)
                {
                  v178 = 0;
                }

                v201 = v178;
                v179 = v177 ^ 1;
LABEL_150:
                if (v210)
                {
                  if (v209 != 2 && v205 != 2 && v208 && v204 != 2 && !v179)
                  {
                    v200 = 0;
LABEL_48:
                    sub_1000060A0();
                    v228[0] = v101 + 11;
                    v228[1] = v100;
                    sub_1001E3D30();
                    AnyHashable.init<A>(_:)();
                    sub_10000554C();
                    sub_1001AFA68(v222, v102);
                    sub_1001B2E34(&v229);
                    if (v234[0])
                    {
                      sub_1001E3BB4();
                      if (swift_dynamicCast())
                      {
                        v103 = sub_1001D4A04(v228[0]);
                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      sub_1001E30E0(&v231, &qword_1003B5808);
                    }

                    v103 = 0;
LABEL_65:
                    v116 = sub_1001E4098();
                    sub_1001D4A04(v116);
                    v117 = sub_1001E44C4();
                    sub_1001E4264(v117, &a16);
                    v118 = String._bridgeToObjectiveC()();
                    sub_1001E4264(v118, &a13);
                    v119 = sub_1001E44C4();
                    sub_1001E4264(v119, &a14);
                    v120 = String._bridgeToObjectiveC()();
                    sub_1001E4264(v120, &a10);
                    if (v210)
                    {
                      v121 = sub_1001E44C4();
                      sub_1001E4264(v121, v234);
                    }

                    else
                    {
                      v207 = 0;
                    }

                    sub_1001A7B44(0, &qword_1003B61A0);
                    v210 = sub_1001DE7A8(v97);

                    v227 = 0;
                    sub_1001E43E8();
                    if (!v173)
                    {
                      v227 = sub_1001E44AC();
                    }

                    sub_1001E43E8();
                    if (v173)
                    {
                      v226 = 0;
                    }

                    else
                    {
                      v226 = sub_1001E44AC();
                    }

                    if (v103)
                    {
                      v224 = Set._bridgeToObjectiveC()().super.isa;
                    }

                    else
                    {
                      v224 = 0;
                    }

                    v223 = Set._bridgeToObjectiveC()().super.isa;

                    sub_1000060A0();
                    v228[0] = v123;
                    v228[1] = v122;
                    sub_1001E3D30();
                    AnyHashable.init<A>(_:)();
                    sub_10000554C();
                    sub_1001AFA68(v222, v124);
                    sub_1001B2E34(&v229);
                    if (v234[0])
                    {
                      sub_1001E3BB4();
                      if (swift_dynamicCast())
                      {
                        v220 = String._bridgeToObjectiveC()();

                        goto LABEL_81;
                      }
                    }

                    else
                    {
                      sub_1001E30E0(&v231, &qword_1003B5808);
                    }

                    v220 = 0;
LABEL_81:
                    v125 = sub_1001E44C4();
                    sub_1001E4264(v125, &a18);
                    sub_1001E43E8();
                    if (v173)
                    {
                      v126 = 0;
                    }

                    else
                    {
                      v126 = sub_1001E44AC();
                    }

                    v228[0] = 0x70736944656D6167;
                    v228[1] = 0xEF656D614E79616CLL;
                    sub_1001E3D30();
                    AnyHashable.init<A>(_:)();
                    sub_10000554C();
                    sub_1001AFA68(v222, v127);
                    sub_1001B2E34(&v229);
                    if (v234[0])
                    {
                      sub_1001E3BB4();
                      if (swift_dynamicCast())
                      {
                        v128 = String._bridgeToObjectiveC()();

                        goto LABEL_89;
                      }
                    }

                    else
                    {
                      sub_1001E30E0(&v231, &qword_1003B5808);
                    }

                    v128 = 0;
LABEL_89:
                    sub_1000060A0();
                    v228[0] = v130 + 1;
                    v228[1] = v129;
                    sub_1001E3D30();
                    AnyHashable.init<A>(_:)();
                    sub_10000554C();
                    sub_1001AFA68(v222, v131);

                    sub_1001B2E34(&v229);
                    if (v234[0])
                    {
                      sub_1001E3BB4();
                      if (swift_dynamicCast())
                      {
                        v132 = String._bridgeToObjectiveC()();

LABEL_94:
                        sub_1001E43E8();
                        if (v173)
                        {
                          v133 = 0;
                        }

                        else
                        {
                          v133 = sub_1001E44AC();
                        }

                        if (v200)
                        {
                          v134 = 0;
                        }

                        else
                        {
                          v134 = Int.asNSNumber.getter();
                        }

                        v135 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                        sub_1001A7B44(0, &qword_1003B61A8);
                        v136 = Array._bridgeToObjectiveC()().super.isa;
                        v225 = v136;

                        v199 = v136;
                        v222 = v134;
                        v198 = v134;
                        v216 = v133;
                        v197 = v133;
                        v213 = v132;
                        v196 = v132;
                        v212 = v128;
                        v195 = v128;
                        v209 = v126;
                        v194 = v126;
                        LOBYTE(v193) = v221;
                        LOBYTE(v192) = v218;
                        v137 = v210;
                        v138 = v135;
                        v139 = v217;
                        v140 = v214;
                        v141 = v215;
                        v142 = v211;
                        v143 = v207;
                        v144 = v208;
                        [v138 initWithBundleID:v217 adamID:v214 platform:v215 name:v211 shortName:v207 artwork:v208 customIconArtwork:v210 supportsGameCenter:v227 supportsArcade:v192 supportsGameController:v226 isEligibleForGamesApp:v193 supportedGameCenterFeatures:v224 deviceFamilies:v223 genreDisplayName:v220 rawResponse:v219 isIOSBinaryMacOSCompatible:v194 gameDisplayName:v195 miniGamesDeepLink:v196 isGameGenre:v197 ageRating:v198 gkGameGenres:v199];

                        sub_1001E4354();
                        v145 = sub_1001D1B80();
                        sub_1000072CC(v145, v146);
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      sub_1001E30E0(&v231, &qword_1003B5808);
                    }

                    v132 = 0;
                    goto LABEL_94;
                  }

                  sub_1001E4098();

                  sub_1001E41D4();
                }

                else
                {

                  sub_1001E4098();

                  sub_1001E41D4();
                }

                static GKLog.library.getter();

                v180 = Logger.logObject.getter();
                v181 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v180, v181))
                {
                  v182 = sub_100005AE4();
                  v183 = sub_100005808();
                  v229 = v183;
                  *v182 = 136315138;
                  v184 = sub_100005C3C(v223, v224, &v229);

                  *(v182 + 4) = v184;
                  sub_1001E407C(&_mh_execute_header, v185, v181, "Missing required attributes for adamID: %s");
                  sub_100005BE0(v183);
                  sub_1001E3EA0();
                  sub_1000043D8();
                  v186 = sub_1001D1B80();
                  sub_1000072CC(v186, v187);
                }

                else
                {
                  v188 = sub_1001D1B80();
                  sub_1000072CC(v188, v189);
                }

                v226[1](v35, v227);
                goto LABEL_33;
              }
            }

            sub_1001E30E0(&v231, &qword_1003B5808);
            goto LABEL_149;
          }

LABEL_141:
          LODWORD(v204) = 2;
          v206 = _swiftEmptyArrayStorage;
          goto LABEL_142;
        }
      }
    }

    sub_1001E30E0(&v231, &qword_1003B5808);
    goto LABEL_141;
  }

LABEL_169:
  v229 = 0;
  v230 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v191._countAndFlagsBits = 0xD000000000000025;
  v191._object = 0x800000010030A3F0;
  String.append(_:)(v191);
  v231 = v24;
  type metadata accessor for GKAppMetadataEnvironment(0);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001DDEE0(uint64_t a1, char a2)
{
  if (a1)
  {
    sub_1001A6C04(&qword_1003B6368);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C33A0;
    *(inited + 32) = a2;
    v13 = inited;
    sub_1001E712C(&off_10036AAA8);
    v5 = v13;
    v6 = *(v13 + 16);
    if (v6)
    {
      v7 = 0;
      while (v7 < *(v5 + 16))
      {
        v8 = *(v5 + v7++ + 32);
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v9 = sub_1001B24EC(), (v10 & 1) != 0))
        {
          sub_1001A7AE8(*(a1 + 56) + 32 * v9, v12);
          sub_1001B2E34(v11);
          sub_1001A6C04(&unk_1003B6190);
          if (swift_dynamicCast())
          {

            AppMetadataPlatform.rawValue.getter(v8);
            return;
          }
        }

        else
        {
          sub_1001B2E34(v11);
        }

        if (v6 == v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
    }
  }
}

id sub_1001DE0F4(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v11);
  sub_1001B2E34(v10);
  if (!v12)
  {
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    return 0;
  }

  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v11);
  sub_1001B2E34(v10);
  if (!v12)
  {

    goto LABEL_15;
  }

  sub_1001A7B44(0, &qword_1003B6360);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v11);
  sub_1001B2E34(v10);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      v2 = String._bridgeToObjectiveC()();

      AnyHashable.init<A>(_:)();
      sub_1001AFA68(a1, &v11);
      sub_1001B2E34(v10);
      if (v12)
      {
        if (swift_dynamicCast())
        {
          v3 = String._bridgeToObjectiveC()();

          goto LABEL_22;
        }
      }

      else
      {
        sub_1001E30E0(&v11, &qword_1003B5808);
      }

      v3 = 0;
LABEL_22:
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(a1, &v11);
      sub_1001B2E34(v10);
      if (v12)
      {
        if (swift_dynamicCast())
        {
          v6 = String._bridgeToObjectiveC()();

          goto LABEL_27;
        }
      }

      else
      {
        sub_1001E30E0(&v11, &qword_1003B5808);
      }

      v6 = 0;
LABEL_27:
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(a1, &v11);
      sub_1001B2E34(v10);
      if (v12)
      {
        if (swift_dynamicCast())
        {
          v7 = String._bridgeToObjectiveC()();

          goto LABEL_32;
        }
      }

      else
      {
        sub_1001E30E0(&v11, &qword_1003B5808);
      }

      v7 = 0;
LABEL_32:
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(a1, &v11);
      sub_1001B2E34(v10);
      if (v12)
      {
        if (swift_dynamicCast())
        {
          v8 = String._bridgeToObjectiveC()();

          goto LABEL_37;
        }
      }

      else
      {
        sub_1001E30E0(&v11, &qword_1003B5808);
      }

      v8 = 0;
LABEL_37:
      AnyHashable.init<A>(_:)();
      sub_1001AFA68(a1, &v11);

      sub_1001B2E34(v10);
      if (v12)
      {
        if (swift_dynamicCast())
        {
          v9 = String._bridgeToObjectiveC()();

LABEL_42:
          v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTemplateURL:v2 width:0x6874646977 height:0x746867696568 textColor1:v3 textColor2:v6 textColor3:v7 textColor4:v8 backgroundColor:v9];

          return v4;
        }
      }

      else
      {
        sub_1001E30E0(&v11, &qword_1003B5808);
      }

      v9 = 0;
      goto LABEL_42;
    }

    goto LABEL_17;
  }

LABEL_15:

  sub_1001E30E0(&v11, &qword_1003B5808);
  return 0;
}

void *sub_1001DE6DC(uint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  for (i = (a1 + 32); v2; --v2)
  {
    v6 = *i;
    sub_1001DEA20(&v6, &v5);
    if (v5)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v7;
    }

    ++i;
  }

  return v1;
}

id sub_1001DE7A8(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v4);
  sub_1001B2E34(v3);
  if (!v5)
  {
    goto LABEL_10;
  }

  sub_1001A6C04(&unk_1003B6190);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  AnyHashable.init<A>(_:)();
  sub_1001AFA68(0xD000000000000010, &v4);

  sub_1001B2E34(v3);
  if (!v5)
  {
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  AnyHashable.init<A>(_:)();
  sub_1001AFA68(0x746C7561666564, &v4);

  sub_1001B2E34(v3);
  if (!v5)
  {
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  AnyHashable.init<A>(_:)();
  sub_1001AFA68(0x746C7561666564, &v4);

  sub_1001B2E34(v3);
  if (!v5)
  {
LABEL_10:
    sub_1001E30E0(&v4, &qword_1003B5808);
    return 0;
  }

  if (swift_dynamicCast())
  {
    sub_1001A7B44(0, &qword_1003B61A0);
    return sub_1001DE0F4(0xD000000000000011);
  }

  return 0;
}

id sub_1001DEA20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_22;
  }

  v4 = sub_1001B247C(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1001A7AE8(*(v3 + 56) + 32 * v4, &v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1001AFB10(0x7475626972747461, 0xEA00000000007365, v3, &v12);
  if (v13)
  {
    sub_1001A6C04(&qword_1003B6320);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_21:

      goto LABEL_22;
    }

    sub_1001AFB10(1701667182, 0xE400000000000000, v10, &v12);
    if (v13)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1001AFB10(0x6449746E65726170, 0xE800000000000000, v10, &v12);

      if (v13)
      {
        if (swift_dynamicCast())
        {
          if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v6)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {

              goto LABEL_21;
            }
          }

          v9 = objc_allocWithZone(GKGameGenre);
          result = sub_100274558();
          goto LABEL_23;
        }

LABEL_20:

        goto LABEL_21;
      }
    }
  }

  sub_1001E30E0(&v12, &qword_1003B5808);
LABEL_22:
  result = 0;
LABEL_23:
  *a2 = result;
  return result;
}

uint64_t sub_1001DECB0()
{
  sub_1000057FC();
  sub_1001E4258();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF328;
  sub_1001AF9FC();

  return sub_1001D3624();
}

uint64_t sub_1001DED4C()
{
  sub_100005838();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 24);
  v11 = swift_task_alloc();
  v12 = sub_1001E3D24(v11);
  *v12 = v13;
  v12[1] = sub_1001DEE24;

  return sub_1001DA1E4(v4, v2 & 1, v5, v10, v6, v7, v8, v9);
}

uint64_t sub_1001DEE24()
{
  sub_100005528();
  sub_1001D14C0();
  v2 = *v1;
  sub_100004410();
  *v3 = v2;

  sub_1001D17DC();

  return v4(v0);
}

void sub_1001DEF08()
{
  sub_1001E3F6C();
  if ((v3 & 1) == 0 || (sub_1001B2FC0(), v4 == v5))
  {
LABEL_6:
    sub_1001E3C78();
    if (v2)
    {
      sub_1001A6C04(&qword_1003B6310);
      v6 = sub_1001E4058();
      sub_1001E3F78(v6);
      sub_1001E3CCC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_100006A18();
        sub_1001B1394(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1001E3CDC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000601C();
  if (!v4)
  {
    sub_1001B2FB0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DEFC0()
{
  sub_1001E3F6C();
  if ((v4 & 1) == 0 || (sub_1001B2FC0(), v5 == v6))
  {
LABEL_6:
    sub_1001E3C78();
    if (v3)
    {
      sub_1001A6C04(&qword_1003B5B98);
      v7 = sub_1001E4058();
      j__malloc_size(v7);
      sub_1001E3BF8();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_100006A18();
        sub_1000566DC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1001E3CDC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000601C();
  if (!v5)
  {
    sub_1001B2FB0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DF07C()
{
  sub_1001E3F6C();
  if ((v4 & 1) == 0 || (sub_1001B2FC0(), v5 == v6))
  {
LABEL_6:
    sub_1001E3C78();
    if (v3)
    {
      sub_1001A6C04(&qword_1003B6368);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = sub_100006A18();
        sub_1001B13B4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_1001E3CDC();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  sub_10000601C();
  if (!v5)
  {
    sub_1001B2FB0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DF138()
{
  sub_1001E3C24();
  if (v4)
  {
    sub_1001E3C68();
    if (v6 != v7)
    {
      sub_1001E3F44();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001E433C(v2, v5, &qword_1003B6358, &unk_1002C49B0);
  sub_1001E4034();
  type metadata accessor for URLQueryItem();
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v9 = sub_1001E3C48(v8);
    sub_1001B13DC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DF200()
{
  sub_1001E3F6C();
  if ((v3 & 1) == 0 || (sub_1001B2FC0(), v4 == v5))
  {
LABEL_6:
    sub_1001E3C78();
    if (v2)
    {
      sub_1001A6C04(&qword_1003B6328);
      v6 = swift_allocObject();
      sub_1001E3F78(v6);
      sub_1001E3CCC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_100006A18();
        sub_1001B13F4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1001E3CDC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000601C();
  if (!v4)
  {
    sub_1001B2FB0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DF2C0()
{
  sub_1001E3F6C();
  if ((v3 & 1) == 0 || (sub_1001B2FC0(), v4 == v5))
  {
LABEL_6:
    sub_1001E3C78();
    if (v2)
    {
      sub_1001A6C04(&qword_1003B6318);
      v6 = sub_1001E4058();
      sub_1001E3F78(v6);
      sub_1001E3CCC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_100006A18();
        sub_1001B2F94(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1001A6C04(&qword_1003B6320);
    sub_1001E3CDC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000601C();
  if (!v4)
  {
    sub_1001B2FB0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DF388()
{
  sub_1001E3C24();
  if (v4)
  {
    sub_1001E3C68();
    if (v6 != v7)
    {
      sub_1001E3F44();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001E433C(v2, v5, &qword_1003B6BA0, &unk_1002C4950);
  sub_1001E4034();
  type metadata accessor for Schema.PropertyMetadata();
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v9 = sub_1001E3C48(v8);
    sub_1001B1414(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DF478()
{
  sub_1001E3F6C();
  if ((v4 & 1) == 0 || (sub_1001B2FC0(), v5 == v6))
  {
LABEL_6:
    sub_1001E3C78();
    if (v3)
    {
      sub_1001A6C04(&qword_1003B6298);
      v7 = sub_1001E4058();
      j__malloc_size(v7);
      sub_1001E3BF8();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_100006A18();
        sub_1000566DC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_10000601C();
  if (!v5)
  {
    sub_1001B2FB0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DF534()
{
  sub_1001E3C24();
  if (v4)
  {
    sub_1001E3C68();
    if (v6 != v7)
    {
      sub_1001E3F44();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001E433C(v2, v5, &qword_1003B6338, &unk_1002C4980);
  sub_1001E4034();
  type metadata accessor for GameDescription.CompatiblePlatforms();
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v9 = sub_1001E3C48(v8);
    sub_1001B142C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DF624(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_1001B2FC0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_1001A6C04(a5);
      v15 = sub_1001E4058();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  sub_10000601C();
  if (!v11)
  {
    sub_1001B2FB0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1001DF708()
{
  sub_1001E3C24();
  if (v3)
  {
    sub_1001E3C68();
    if (v5 != v6)
    {
      sub_1001E3F44();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1001DFE0C(*(v0 + 16), v4, &qword_1003B6278, &unk_1002C4860, &qword_1003B6270);
  sub_1001A6C04(&qword_1003B6270);
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v8 = sub_1001E3C48(v7);
    sub_1001B146C(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DF7EC()
{
  sub_1001E3F6C();
  if ((v3 & 1) == 0 || (sub_1001B2FC0(), v4 == v5))
  {
LABEL_6:
    sub_1001E3C78();
    if (v2)
    {
      sub_1001A6C04(&qword_1003B6280);
      v6 = sub_1001E4058();
      sub_1001E3F78(v6);
      sub_1001E3CCC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_100006A18();
        sub_1001B2F94(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1001A6C04(&qword_1003B6288);
    sub_1001E3CDC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000601C();
  if (!v4)
  {
    sub_1001B2FB0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1001DF8B4()
{
  sub_1001E3C24();
  if (v3)
  {
    sub_1001E3C68();
    if (v5 != v6)
    {
      sub_1001E3F44();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1001DFE0C(*(v0 + 16), v4, &qword_1003B5B38, &unk_1002C3688, &qword_1003B6260);
  sub_1001A6C04(&qword_1003B6260);
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v8 = sub_1001E3C48(v7);
    sub_1001B1380(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DF998()
{
  sub_1001E3C24();
  if (v4)
  {
    sub_1001E3C68();
    if (v6 != v7)
    {
      sub_1001E3F44();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001E433C(v2, v5, &unk_1003B6250, &unk_1002C4850);
  sub_1001E4034();
  type metadata accessor for LeaderboardDescription();
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v9 = sub_1001E3C48(v8);
    sub_1001B1548(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DFA60()
{
  sub_1001E3C24();
  if (v4)
  {
    sub_1001E3C68();
    if (v6 != v7)
    {
      sub_1001E3F44();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001E433C(v2, v5, &qword_1003B6248, &unk_1002C4848);
  sub_1001E4034();
  type metadata accessor for URL();
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v9 = sub_1001E3C48(v8);
    sub_1001B1560(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DFB28()
{
  sub_1001E3C24();
  if (v4)
  {
    sub_1001E3C68();
    if (v6 != v7)
    {
      sub_1001E3F44();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1001E3C58();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_1001E433C(v2, v5, &unk_1003B6300, &unk_1002C4948);
  v8 = sub_1001E4034();
  type metadata accessor for MultiplayerActivityEventFilter.TrackedSession(v8);
  sub_1001E3F38();
  sub_1001E3E5C();
  if (v1)
  {
    v10 = sub_1001E3C48(v9);
    sub_1001B1578(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1001E3C88();
  }
}

void sub_1001DFC18(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_1001B2FC0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_1001A6C04(a5);
      v15 = sub_1001E4058();
      j__malloc_size(v15);
      sub_1001E3BF8();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_1001A6C04(&qword_1003B62F8);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10000601C();
  if (!v11)
  {
    sub_1001B2FB0();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_1001DFD08(uint64_t a1, uint64_t a2)
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

  sub_1001A6C04(&qword_1003B5B98);
  v4 = sub_1001E4058();
  j__malloc_size(v4);
  sub_1001E3BF8();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1001DFD70(uint64_t a1, uint64_t a2)
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

  sub_1001A6C04(&qword_1003B6BB0);
  v4 = sub_1001E4058();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1001DFE0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001A6C04(a3);
  v8 = sub_1001A6C04(a5);
  sub_1001B6A00(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001DFF04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001A6C04(a3);
  v8 = a5(0);
  sub_1001B6A00(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001DFFF8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001E001C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001E004C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001A6C04(&unk_1003B62E0);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_1001E880C(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

char *sub_1001E02EC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << v5[32]);
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (*(v5 + 6) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = v5[32];
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 56, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 2);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << v5[32]);
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 6) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1001E16B8(v48, v44, v46, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1001E15A8(v41, v44, v5 + 56, v44, v5, v7, v52);

            v47 = v53;
            v5 = v42;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_10000838C();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_1001E07C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1001E0828()
{
  sub_1001E44DC();
  sub_1001E4394();
  sub_100006B64();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1001AF9FC();
  sub_1001E3F08();
  sub_1001E4464();

  return sub_1001D5050(v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001E08CC()
{

  swift_unknownObjectRelease();
  sub_100005BE0(v0 + 88);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1001E092C()
{
  sub_1001E44DC();
  sub_1001E4394();
  sub_100006B64();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1001AF9FC();
  sub_1001E3F08();
  sub_1001E4464();

  return sub_1001D5264(v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001E09F4()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001E4258();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1001AF9FC();
  sub_1001E3FFC();
  sub_1001D18C4();

  return sub_1001D5484(v3, v4, v5, v6);
}

void sub_1001E0A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000469C();
  a19 = v25;
  a20 = v28;
  v29 = v27;
  if (!*(v27 + 16))
  {

LABEL_55:
    sub_1000057D8();
    return;
  }

  v81 = 0;
  v31 = v26 + 56;
  v30 = *(v26 + 56);
  v32 = -1 << *(v26 + 32);
  v86 = ~v32;
  if (-v32 < 64)
  {
    v33 = ~(-1 << -v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v30;
  v35 = (63 - v32) >> 6;
  v95 = (v27 + 56);
  v89 = v26 + 56;
  v88 = v35;
  v91 = v27;

  if (!v34)
  {
    v36 = 0;
    do
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_57;
      }

      if (v37 >= v35)
      {
        goto LABEL_54;
      }

      v34 = *(v31 + 8 * v37);
      ++v36;
    }

    while (!v34);
  }

  while (1)
  {
    sub_1001E4380();
    v92 = v38;
    v41 = (*(v40 + 48) + 40 * (v39 | (v38 << 6)));
    v42 = *v41;
    v43 = v41[1];
    v45 = v41[2];
    v44 = v41[3];
    v46 = v41[4];
    Hasher.init(_seed:)();
    v87 = v46;

    v47 = v42;
    v48 = v43;
    String.hash(into:)();
    v49 = v45;
    String.hash(into:)();
    v50 = Hasher._finalize()();
    v51 = -1 << *(v29 + 32);
    v35 = v50 & ~v51;
    v23 = v35 >> 6;
    v31 = 1 << v35;
    if (((1 << v35) & v95[v35 >> 6]) != 0)
    {
      break;
    }

LABEL_23:
    sub_1001E4354();

    v29 = v91;
  }

  v93 = ~v51;
  v94 = *(v91 + 48);
  while (1)
  {
    v52 = (v94 + 40 * v35);
    v54 = v52[2];
    v53 = v52[3];
    v55 = *v52 == v47 && v52[1] == v48;
    if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v56 = v54 == v49 && v53 == v44;
      if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    v35 = (v35 + 1) & v93;
    v23 = v35 >> 6;
    v31 = 1 << v35;
    if ((v95[v35 >> 6] & (1 << v35)) == 0)
    {
      goto LABEL_23;
    }
  }

  v24 = v92;
  v98 = v86;
  v99 = v92;
  v100 = v34;
  v22 = v89;
  v20 = v90;
  v97[0] = v90;
  v97[1] = v89;

  sub_1001E4354();
  v29 = v91;
  v58 = *(v91 + 32);
  v82 = ((1 << v58) + 63) >> 6;
  v21 = 8 * v82;
  if ((v58 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v83 = &v81;
    __chkstk_darwin(v57);
    v35 = &v81 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v95, v21);
    v59 = *(v35 + 8 * v23) & ~v31;
    v85 = v35;
    *(v35 + 8 * v23) = v59;
    v60 = *(v29 + 16) - 1;
    v61 = v88;
LABEL_26:
    v84 = v60;
    while (v34)
    {
      v29 = v91;
LABEL_34:
      sub_1001E4380();
      v92 = v24;
      v64 = (*(v20 + 48) + 40 * (v63 | (v24 << 6)));
      v21 = *v64;
      v65 = v64[1];
      v31 = v64[2];
      v66 = v64[3];
      v67 = v64[4];
      Hasher.init(_seed:)();
      v87 = v67;

      String.hash(into:)();
      String.hash(into:)();
      v35 = &v96;
      v68 = Hasher._finalize()();
      v69 = -1 << *(v29 + 32);
      v70 = v68 & ~v69;
      v23 = v70 >> 6;
      v71 = 1 << v70;
      if (((1 << v70) & v95[v70 >> 6]) != 0)
      {
        v93 = ~v69;
        v94 = *(v29 + 48);
        while (1)
        {
          v72 = (v94 + 40 * v70);
          v35 = v72[2];
          v73 = v72[3];
          v74 = *v72 == v21 && v72[1] == v65;
          if (v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v75 = v35 == v31 && v73 == v66;
            if (v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v70 = (v70 + 1) & v93;
          v23 = v70 >> 6;
          v71 = 1 << v70;
          if ((v95[v70 >> 6] & (1 << v70)) == 0)
          {
            goto LABEL_47;
          }
        }

        sub_1001E4354();
        v76 = *(v85 + 8 * v23);
        *(v85 + 8 * v23) = v76 & ~v71;
        v55 = (v76 & v71) == 0;
        v20 = v90;
        v22 = v89;
        v24 = v92;
        v61 = v88;
        if (!v55)
        {
          v60 = v84 - 1;
          if (__OFSUB__(v84, 1))
          {
            __break(1u);
          }

          if (v84 == 1)
          {

            goto LABEL_54;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_47:
        sub_1001E4354();

        v20 = v90;
        v22 = v89;
        v24 = v92;
        v61 = v88;
      }
    }

    v29 = v91;
    while (1)
    {
      v62 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v62 >= v61)
      {
        v77 = sub_1001E4168(&a13);
        sub_1001E18D4(v77, v78, v84, v29);
        goto LABEL_54;
      }

      v34 = *(v22 + 8 * v62);
      ++v24;
      if (v34)
      {
        v24 = v62;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v79 = swift_slowAlloc();
  v80 = v81;
  sub_1001E1630(v79, v82, v95, v82, v29, v35, v97);
  if (!v80)
  {

    sub_1000043D8();
    v86 = v98;
LABEL_54:
    sub_10000838C();
    goto LABEL_55;
  }

  sub_1000043D8();
  __break(1u);
}

unint64_t *sub_1001E1120(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1001E16B8(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1001E130C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v36 = a3 + 56;
  v31 = a5;
  while (2)
  {
    v29 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = a3;
          while (1)
          {
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              break;
            }

            if (v9 >= ((a5[2] + 64) >> 6))
            {
              a5[3] = v7;
              a5[4] = 0;

              sub_1001E18D4(a1, a2, v29, a3);
              return;
            }

            v8 = *(a5[1] + 8 * v9);
            ++v7;
            if (v8)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v9 = a5[3];
        v10 = a3;
LABEL_9:
        v11 = (*(*a5 + 48) + 40 * (__clz(__rbit64(v8)) | (v9 << 6)));
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[3];
        v16 = v11[4];
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        Hasher.init(_seed:)();
        v33 = v16;

        String.hash(into:)();
        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(v10 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v36 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_22:

        a5 = v31;
      }

      v34 = ~v18;
      v35 = *(v10 + 48);
      while (1)
      {
        v22 = (v35 + 40 * v19);
        v23 = v22[2];
        v24 = v22[3];
        v25 = *v22 == v12 && v22[1] == v13;
        if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v26 = v23 == v14 && v24 == v15;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        v19 = (v19 + 1) & v34;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v36 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_22;
        }
      }

      a5 = v31;
      v27 = a1[v20];
      a1[v20] = v27 & ~v21;
    }

    while ((v27 & v21) == 0);
    v6 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_1001E15A8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1001E1120(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1001E1630(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1001E130C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_1001E16B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001A6C04(&qword_1003B6388);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001E18D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = &_swiftEmptySetSingleton;
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001A6C04(&qword_1003B6348);
  result = static _SetStorage.allocate(capacity:)();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v35 = v4;
  while (v9)
  {
    v12 = v8;
    v13 = __clz(__rbit64(v9));
    v36 = (v9 - 1) & v9;
LABEL_17:
    v16 = (*(v4 + 48) + 40 * (v13 | (v10 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    v21 = v16[4];
    v22 = v12;
    Hasher.init(_seed:)();
    v23 = v21;

    v37 = v17;
    String.hash(into:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v8 = v22;
    v24 = -1 << *(v22 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v11 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v22 + 6) + 40 * v27);
    *v32 = v37;
    v32[1] = v18;
    v32[2] = v19;
    v32[3] = v20;
    v32[4] = v21;
    ++*(v22 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    v9 = v36;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  while (1)
  {
    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v10];
    ++v14;
    if (v15)
    {
      v12 = v8;
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1001E1B58(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_1001E1BA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v48 = a5;
  sub_1001E3780(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v40 = v47[5];
  v41 = v47[0];
  v9 = (v47[2] + 64) >> 6;

  v39 = v6;
  if (v8)
  {
    while (1)
    {
      v42 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v41 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v41 + 56) + 8 * v12);
      v46[0] = *v13;
      v46[1] = v14;
      v46[2] = v15;

      v16 = v15;
      v40(&v43, v46);

      v17 = v43;
      v18 = v44;
      v19 = v45;
      v20 = *v48;
      v21 = sub_1001B247C(v43, v44);
      sub_1001E3D88();
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v22;
      if (*(v20 + 24) >= v25)
      {
        if ((v42 & 1) == 0)
        {
          sub_1001A6C04(&qword_1003B5D60);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_1001E004C(v25, v42 & 1);
        v27 = sub_1001B247C(v17, v18);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v48;
      if (v26)
      {
        v30 = *(*(v29 + 56) + 8 * v21);

        v31 = *(v29 + 56);
        v32 = *(v31 + 8 * v21);
        *(v31 + 8 * v21) = v30;
      }

      else
      {
        sub_1001E41F8();
        sub_1001E3C34(v33);
        v35 = (v34 + 16 * v21);
        *v35 = v17;
        v35[1] = v18;
        *(*(v29 + 56) + 8 * v21) = v19;
        sub_1001E424C();
        if (v37)
        {
          goto LABEL_23;
        }

        *(v29 + 16) = v36;
      }

      a4 = 1;
      v7 = v10;
      v6 = v39;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_10000838C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v42 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001E1E40(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001EA2A8();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1001E2114(v8);
  *v2 = v15;
  return v13;
}

void sub_1001E1F68(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = *a1;
  v7 = *(a1 + 8);
  String.hash(into:)();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = v5 + 56;
  v12 = -1 << *(v5 + 32);
  v13 = v10 & ~v12;
  if ((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v22 = a2;
    a1 = ~v12;
    v5 = *(v5 + 48);
    while (1)
    {
      v14 = (v5 + 40 * v13);
      v15 = v14[2];
      v16 = v14[3];
      v17 = *v14 == v6 && v14[1] == v7;
      if (v17 || (sub_1001E3FFC(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v18 = v15 == v8 && v16 == v9;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & a1;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        sub_1001E41E0();
        a2 = v22;
        goto LABEL_19;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v23;
    v24 = *v23;
    a2 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001EA3BC();
      v20 = v24;
    }

    v21 = (*(v20 + 48) + 40 * v13);
    v5 = *v21;
    a1 = v21[1];
    v6 = v21[2];
    v7 = v21[3];
    v8 = v21[4];
    sub_1001E22CC(v13);
    *v23 = v24;
  }

  else
  {
    sub_1001E41E0();
  }

LABEL_19:
  *a2 = v5;
  a2[1] = a1;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
}

unint64_t sub_1001E2114(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1001E22CC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v27 = v4;
      do
      {
        v10 = v3;
        v11 = *(*(v3 + 48) + 40 * v6 + 32);
        v12 = v9;
        Hasher.init(_seed:)();
        v13 = v11;

        String.hash(into:)();
        String.hash(into:)();
        v14 = Hasher._finalize()();

        v9 = v12;
        v15 = v14 & v7;
        if (v2 >= v12)
        {
          if (v15 >= v12 && v2 >= v15)
          {
LABEL_9:
            v3 = v10;
            v17 = *(v10 + 48);
            v18 = v17 + 40 * v2;
            v19 = (v17 + 40 * v6);
            v20 = v2 != v6 || v18 >= v19 + 40;
            v4 = v27;
            if (v20)
            {
              v21 = *v19;
              v22 = v19[1];
              *(v18 + 32) = *(v19 + 4);
              *v18 = v21;
              *(v18 + 16) = v22;
              v2 = v6;
            }

            goto LABEL_21;
          }
        }

        else if (v15 >= v12 || v2 >= v15)
        {
          goto LABEL_9;
        }

        v4 = v27;
        v3 = v10;
LABEL_21:
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

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1001E24F8(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setAdditionalQueryParams:isa];
}

uint64_t sub_1001E2570(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_1001E25C4(void *a1)
{
  v2 = [a1 responseDataItems];

  if (!v2)
  {
    return 0;
  }

  sub_1001A6C04(&unk_1003B6190);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1001E2638(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setBundleIdentifiers:isa];
}

void sub_1001E2698(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setItemIdentifiers:isa];
}

uint64_t sub_1001E26F8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001E27EC;

  return v5(v2 + 32);
}

uint64_t sub_1001E27EC()
{
  sub_100005528();
  sub_1000057F0();
  v2 = v1;
  sub_1001D14B0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_100004410();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_1000046F8();

  return v8();
}

uint64_t sub_1001E28E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001E1B58(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1001E2928(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1001E2970()
{
  result = qword_1003B61B8;
  if (!qword_1003B61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B61B8);
  }

  return result;
}

unint64_t sub_1001E29C8()
{
  result = qword_1003B61C0;
  if (!qword_1003B61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B61C0);
  }

  return result;
}

unint64_t sub_1001E2A64()
{
  result = qword_1003B61D8;
  if (!qword_1003B61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B61D8);
  }

  return result;
}

unint64_t sub_1001E2ABC()
{
  result = qword_1003B61E0;
  if (!qword_1003B61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B61E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppMetadataPlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppMetadataPlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppMedatataDeviceFamily(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppMedatataDeviceFamily(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s11HealthCheckV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1001E2E7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001E2F58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001E2F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AppMetadataFetcher.RefreshKey(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppMetadataFetcher.RefreshKey(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppMetadataFetcher.RefreshKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001E308C()
{
  result = qword_1003B6238;
  if (!qword_1003B6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6238);
  }

  return result;
}

uint64_t sub_1001E30E0(uint64_t a1, uint64_t *a2)
{
  sub_1001A6C04(a2);
  sub_100005534();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001E313C()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_1001E4258();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1001AF9FC();
  sub_1001D18C4();

  return sub_1001D94C8(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1001E31E0()
{
  sub_1001D1970();
  sub_100005838();
  sub_1001E4258();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1001AF9FC();
  sub_1001D185C();

  return sub_1001D8C54(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1001E3340()
{
  result = qword_1003B62C0;
  if (!qword_1003B62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B62C0);
  }

  return result;
}

uint64_t sub_1001E3394()
{
  sub_1001D1988();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF328;
  sub_100005B0C();

  return sub_1001D80A4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001E3478()
{
  sub_1000057FC();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = sub_100004400(v6);
  *v7 = v8;
  v7[1] = sub_1001AF9F8;

  return sub_1001D67F0(v4, v2, v5);
}

uint64_t sub_1001E351C()
{
  sub_1000057FC();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1001E3D24(v2);
  *v3 = v4;
  v3[1] = sub_1001E3B2C;
  v5 = sub_1001E4040();

  return v6(v5, v1);
}

uint64_t sub_1001E35BC()
{
  sub_100006B50();
  sub_1001AFA50();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001E3B2C;
  sub_100005540();
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001E3668(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));
  v3 = sub_1001E4240();

  return _swift_deallocObject(v3, v4, 7);
}

uint64_t sub_1001E36C0()
{
  sub_1001AFA50();
  sub_1001E4258();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1001AF9FC();
  sub_1001E3FFC();

  return v3();
}

uint64_t sub_1001E3770(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1001E3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1001E37BC()
{
  sub_1001AFA50();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_100005540();
  sub_1001E3FFC();

  return v3();
}

uint64_t sub_1001E387C()
{
  sub_1000057FC();
  sub_1001E443C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v3 = sub_1001E3BD8(v1);

  return v4(v3);
}

unint64_t sub_1001E390C()
{
  result = qword_1003B6350;
  if (!qword_1003B6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B6350);
  }

  return result;
}

uint64_t sub_1001E3960(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E39D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005534();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001E3A2C()
{
  sub_1000057FC();
  sub_1001E443C();
  v0 = swift_task_alloc();
  v1 = sub_100004400(v0);
  *v1 = v2;
  v3 = sub_1001E3BD8(v1);

  return v4(v3);
}

uint64_t sub_1001E3ABC(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 144) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 152) = 0;
  *(a2 + 176) = 1;
  *(a2 + 128) = a1;
  *(a2 + 136) = &protocol witness table for AMSBag;
  return a2;
}

uint64_t sub_1001E3C88()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1001E3CA8()
{
}

uint64_t sub_1001E3DC0()
{
}

uint64_t sub_1001E3DFC()
{
  v2 = *(v0 + 256);

  return sub_1001E39D0(v2, type metadata accessor for AppMetadataCache.InsertRequest);
}

uint64_t sub_1001E3EA0()
{
}

uint64_t sub_1001E3EE4(unint64_t *a1, uint64_t *a2)
{

  return sub_1001B2D98(a1, a2);
}

void sub_1001E3F94(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1001E3FB4()
{

  return swift_slowAlloc();
}

uint64_t sub_1001E4008()
{

  return swift_beginAccess();
}

uint64_t sub_1001E4058()
{

  return swift_allocObject();
}

void sub_1001E407C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

__n128 sub_1001E40A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(a1 + 24) = v12;
  *(a1 + 32) = v10;
  *(a1 + 40) = v9;
  *(a1 + 48) = v11;
  *(a1 + 56) = v14;
  *(a1 + 64) = v13;
  result = a9;
  *(a1 + 72) = a9;
  return result;
}

void sub_1001E40C0()
{

  sub_1001B9D70();
}

void sub_1001E4128(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

void sub_1001E4138()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void sub_1001E4148()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t sub_1001E4178(uint64_t a1)
{
  v1[54] = a1;
  v1[55] = *(v2 + 32);
  v1[56] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x1143000000000000;

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_1001E41A0()
{

  return swift_task_alloc();
}

__n128 sub_1001E4228(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *v1;
  result = v1[1];
  *(a1 + 64) = *(v1 + 32);
  *(a1 + 32) = v3;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001E4264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
}

uint64_t sub_1001E427C()
{
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + *(v3 + 28)) = v4;

  return swift_getObjectType();
}

uint64_t sub_1001E42A0()
{

  return swift_dynamicCast();
}

uint64_t sub_1001E42B8()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_1001E42D0()
{

  return swift_slowAlloc();
}

uint64_t sub_1001E42EC()
{

  return swift_beginAccess();
}

uint64_t sub_1001E4304()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1001E4320()
{

  return swift_unknownObjectRelease();
}

void *sub_1001E433C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{

  return sub_1001DFF04(v5, a2, a3, a4, v4);
}

void sub_1001E4354()
{
  v2 = *(v0 - 288);
}

uint64_t sub_1001E4400(uint64_t a1)
{
  sub_1001A969C(v1, 1, a1);
}

uint64_t sub_1001E448C()
{
  v3 = *(v1 - 296);

  return sub_1001E2928(v3, v0);
}

uint64_t sub_1001E44AC()
{

  return Bool.asNSNumber.getter();
}

NSString sub_1001E44C4()
{

  return String._bridgeToObjectiveC()();
}

unint64_t sub_1001E4500(char a1)
{
  result = 0x64656D6167;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x746E6543656D6147;
      break;
    case 3:
      result = 0x7265764F656D6167;
      break;
    case 4:
      result = 0x616C7069746C754DLL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_1001E45D0(unsigned __int8 a1)
{
  v2 = a1;
  _StringGuts.grow(_:)(22);

  v3._countAndFlagsBits = sub_1001E4500(a1);
  String.append(_:)(v3);

  v4._countAndFlagsBits = 2570;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  if (v2 == 4)
  {
    v5 = 0xD0000000000000C5;
  }

  else
  {
    v5 = 0xD000000000000065;
  }

  if (v2 == 4)
  {
    v6 = "h a screenshot/video.";
  }

  else
  {
    v6 = "Issue category: ";
  }

  v7 = v6 | 0x8000000000000000;
  String.append(_:)(*&v5);

  return 0xD000000000000010;
}

id GameDaemonTTR.init(clientProxyBundleIdentifier:localPlayer:)(uint64_t a1, void *a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC14GameDaemonCore13GameDaemonTTR_clientProxyBundleIdentifier];
  *v7 = a1;
  v7[1] = a2;
  *&v3[OBJC_IVAR____TtC14GameDaemonCore13GameDaemonTTR_localPlayer] = a3;
  v38.receiver = v3;
  v38.super_class = type metadata accessor for GameDaemonTTR();
  super_class = v38.super_class;

  v8 = a3;
  v9 = objc_msgSendSuper2(&v38, "init");
  v10 = static os_log_type_t.default.getter();
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v11._countAndFlagsBits = 0xD000000000000029;
  v11._object = 0x800000010030A650;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  String.append(_:)(v12);

  v13._object = 0x800000010030A680;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14 = [v8 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19 = type metadata accessor for Logger();
  sub_1000043C4();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GKLog.daemon.getter();
  v25 = Logger.logObject.getter();
  if (os_log_type_enabled(v25, v10))
  {
    v26 = sub_100005AE4();
    v27 = sub_100005808();
    v35 = v8;
    v28 = v9;
    v29 = v27;
    v37[0] = v27;
    *v26 = 136315138;
    v30 = sub_100005C3C(0, 0xE000000000000000, v37);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v25, v10, "TTR - %s", v26, 0xCu);
    sub_100005BE0(v29);
    v9 = v28;
    v8 = v35;
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  (*(v21 + 8))(v24, v19);
  if (sub_1001E4A04())
  {
    type metadata accessor for TapToRadarService();
    v31 = static TapToRadarService.shared.getter();
    v37[3] = super_class;
    v37[4] = sub_1001E4A3C();
    v37[0] = v9;
    v32 = v9;
    TapToRadarService.draftObserver.setter();
  }

  else
  {
  }

  return v9;
}

BOOL sub_1001E4A04()
{
  if (&nominal type descriptor for TapToRadarService)
  {
    v0 = &type metadata for TapToRadarService == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && &type metadata accessor for TapToRadarService != 0 && &class metadata base offset for TapToRadarService != 0;
}

unint64_t sub_1001E4A3C()
{
  result = qword_1003B63C8;
  if (!qword_1003B63C8)
  {
    type metadata accessor for GameDaemonTTR();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B63C8);
  }

  return result;
}

Swift::String_optional __swiftcall GameDaemonTTR.getURLForNewMultiplayerRadar(callbackIdentifier:descriptionAddition:)(Swift::String_optional callbackIdentifier, Swift::String_optional descriptionAddition)
{
  object = descriptionAddition.value._object;
  countAndFlagsBits = descriptionAddition.value._countAndFlagsBits;
  v4 = callbackIdentifier.value._object;
  v5 = callbackIdentifier.value._countAndFlagsBits;
  v6 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_1001E4C18(4, v5, v4, countAndFlagsBits, object, &v16 - v7);
  v9 = type metadata accessor for URL();
  if (sub_1001A969C(v8, 1, v9) == 1)
  {
    sub_1001A974C(v8, &qword_1003B5800);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = URL.absoluteString.getter();
    v11 = v12;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  v13 = v10;
  v14 = v11;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_1001E4C18@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a4;
  v88 = a5;
  v90 = a3;
  v84 = a2;
  v103 = a1;
  v96 = a6;
  v6 = type metadata accessor for URLComponents();
  v97 = *(v6 - 8);
  v98 = v6;
  __chkstk_darwin(v6);
  v95 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v92 = *(v8 - 8);
  v93 = v8;
  __chkstk_darwin(v8);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for URLQueryItem();
  v10 = *(v102 - 8);
  v11 = __chkstk_darwin(v102);
  v94 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v85 = &v83 - v14;
  v15 = __chkstk_darwin(v13);
  v89 = &v83 - v16;
  v17 = __chkstk_darwin(v15);
  v100 = &v83 - v18;
  v19 = __chkstk_darwin(v17);
  v99 = &v83 - v20;
  v21 = __chkstk_darwin(v19);
  v86 = &v83 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v83 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v83 - v30;
  __chkstk_darwin(v29);
  v33 = &v83 - v32;
  URLQueryItem.init(name:value:)();
  sub_1001DF138();
  v35 = v34;
  v36 = *(v34 + 16);
  if (v36 >= *(v34 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v73;
  }

  *(v35 + 16) = v36 + 1;
  v38 = *(v10 + 32);
  v37 = v10 + 32;
  v39 = (*(v37 + 48) + 32) & ~*(v37 + 48);
  v40 = *(v37 + 40);
  v101 = v38;
  v38(v35 + v39 + v40 * v36, v33, v102);
  URLQueryItem.init(name:value:)();

  v41 = *(v35 + 16);
  if (v41 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v74;
  }

  *(v35 + 16) = v41 + 1;
  v42 = v35 + v39 + v41 * v40;
  v43 = v102;
  v101(v42, v31, v102);
  URLQueryItem.init(name:value:)();
  v44 = *(v35 + 16);
  if (v44 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v75;
  }

  *(v35 + 16) = v44 + 1;
  v45 = v101;
  v101(v35 + v39 + v44 * v40, v28, v43);
  URLQueryItem.init(name:value:)();

  v46 = *(v35 + 16);
  if (v46 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v76;
  }

  *(v35 + 16) = v46 + 1;
  v45(v35 + v39 + v46 * v40, v25, v43);
  v47 = sub_1001E45D0(v103);
  v49 = v48;
  v104 = 0;
  v105 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v104 = 0xD000000000000019;
  v105 = 0x800000010030A7B0;
  v50._countAndFlagsBits = sub_100219928(v87, v88);
  String.append(_:)(v50);

  v51 = v104;
  v52 = v105;
  v104 = v47;
  v105 = v49;

  v53._countAndFlagsBits = v51;
  v53._object = v52;
  String.append(_:)(v53);

  v54 = v86;
  URLQueryItem.init(name:value:)();

  v55 = *(v35 + 16);
  if (v55 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v77;
  }

  v56 = v94;
  v57 = v89;
  *(v35 + 16) = v55 + 1;
  v58 = v54;
  v59 = v101;
  v101(v35 + v39 + v55 * v40, v58, v43);
  URLQueryItem.init(name:value:)();
  v60 = *(v35 + 16);
  if (v60 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v78;
  }

  *(v35 + 16) = v60 + 1;
  v59(v35 + v39 + v60 * v40, v99, v43);
  sub_1001E45B8(v103);
  URLQueryItem.init(name:value:)();

  v61 = *(v35 + 16);
  if (v61 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v79;
  }

  *(v35 + 16) = v61 + 1;
  v59(v35 + v39 + v61 * v40, v100, v43);
  URLQueryItem.init(name:value:)();
  v62 = *(v35 + 16);
  if (v62 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v80;
  }

  *(v35 + 16) = v62 + 1;
  v59(v35 + v39 + v62 * v40, v57, v43);
  if (v90)
  {
    v63 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v63 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      URLQueryItem.init(name:value:)();
      v64 = *(v35 + 16);
      if (v64 >= *(v35 + 24) >> 1)
      {
        sub_1001DF138();
        v35 = v82;
      }

      *(v35 + 16) = v64 + 1;
      v59(v35 + v39 + v64 * v40, v85, v43);
    }
  }

  v65 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1001AD978(0xD000000000000013, 0x800000010030A7F0, v65);
  v66 = v91;
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v92 + 8))(v66, v93);
  v68 = [v65 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URLQueryItem.init(name:value:)();

  v69 = *(v35 + 16);
  if (v69 >= *(v35 + 24) >> 1)
  {
    sub_1001DF138();
    v35 = v81;
  }

  v70 = v102;
  *(v35 + 16) = v69 + 1;
  v59(v35 + v39 + v69 * v40, v56, v70);
  v71 = v95;
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();

  return (*(v97 + 8))(v71, v98);
}

Swift::String_optional __swiftcall GameDaemonTTR.getURLForExistingMultiplayerRadar(radarID:)(Swift::String radarID)
{
  v1 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for URLComponents();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  URLComponents.scheme.setter();

  URLComponents.host.setter();
  URLComponents.url.getter();
  v10 = type metadata accessor for URL();
  if (sub_1001A969C(v3, 1, v10) == 1)
  {
    (*(v6 + 8))(v9, v4);
    sub_1001A974C(v3, &qword_1003B5800);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = URL.absoluteString.getter();
    v12 = v13;
    (*(v6 + 8))(v9, v4);
    (*(*(v10 - 8) + 8))(v3, v10);
  }

  v14 = v11;
  v15 = v12;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

id GameDaemonTTR.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameDaemonTTR();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall GameDaemonTTR.tapToRadarDidFileRadar(_:callbackIdentifier:)(Swift::Int64 _, Swift::String callbackIdentifier)
{
  object = callbackIdentifier._object;
  countAndFlagsBits = callbackIdentifier._countAndFlagsBits;
  v5 = type metadata accessor for Logger();
  sub_1000043C4();
  v134 = v6;
  __chkstk_darwin(v7);
  v132 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005874();
  v10 = __chkstk_darwin(v9);
  v12 = &v123 - v11;
  __chkstk_darwin(v10);
  v131 = &v123 - v13;
  sub_100005874();
  v15 = __chkstk_darwin(v14);
  v17 = &v123 - v16;
  __chkstk_darwin(v15);
  v130 = (&v123 - v18);
  sub_100005874();
  __chkstk_darwin(v19);
  v129 = &v123 - v20;
  sub_100005874();
  __chkstk_darwin(v21);
  v23 = &v123 - v22;
  v24 = static os_log_type_t.default.getter();
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x800000010030A6C0;
  v133 = _;
  *&v143 = _;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x61626C6C6163202CLL;
  v26._object = 0xEE00203A44496B63;
  String.append(_:)(v26);
  v135 = countAndFlagsBits;
  v136 = object;
  v27._countAndFlagsBits = countAndFlagsBits;
  v27._object = object;
  String.append(_:)(v27);
  v28 = aBlock;
  static GKLog.daemon.getter();
  v29 = Logger.logObject.getter();
  v30 = os_log_type_enabled(v29, v24);
  v126 = v17;
  if (v30)
  {
    v31 = sub_100005AE4();
    v128 = v12;
    v32 = v5;
    v33 = v31;
    v34 = sub_100005808();
    *&aBlock = v34;
    *v33 = 136315138;
    v35 = sub_100005C3C(v28, *(&v28 + 1), &aBlock);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v24, "TTR - %s", v33, 0xCu);
    sub_100005BE0(v34);
    v36 = v134;
    sub_1000043D8();
    v5 = v32;
    v12 = v128;
    sub_1000043D8();
  }

  else
  {

    v36 = v134;
  }

  v37 = *(v36 + 8);
  v37(v23, v5);
  v38 = Data.init(base64Encoded:options:)();
  if (v39 >> 60 == 15)
  {
    static GKLog.general.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (sub_100004760(v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      sub_1001E6E30();
      _os_log_impl(v43, v44, v45, v46, v42, 2u);
      sub_1000043D8();
    }

    v47 = v12;
LABEL_17:
    v37(v47, v5);
    return;
  }

  v48 = v38;
  v49 = v39;
  v128 = v37;
  *&aBlock = v133;
  v50 = dispatch thunk of CustomStringConvertible.description.getter();
  v52 = v51;
  sub_1001A7B44(0, &qword_1003B6D70);
  sub_1001A6C04(&unk_1003B62A0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1002C4280;
  *(v53 + 32) = sub_1001A7B44(0, &qword_1003B63D0);
  *(v53 + 40) = sub_1001A7B44(0, &qword_1003B63D8);
  *(v53 + 48) = sub_1001A7B44(0, &qword_1003B7DB0);
  *(v53 + 56) = sub_1001A7B44(0, &qword_1003B63E0);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v136 = v50;
  v125 = v52;

  if (!*(&v140 + 1))
  {

    sub_1001A974C(&aBlock, &qword_1003B5808);
    v37 = v128;
LABEL_14:
    v66 = v131;
    static GKLog.general.getter();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (sub_100004760(v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      sub_1001E6E30();
      _os_log_impl(v70, v71, v72, v73, v69, 2u);
      sub_1000043D8();
    }

    sub_1001B9874(v48, v49);

    v47 = v66;
    goto LABEL_17;
  }

  sub_1001A6C04(&qword_1003B63E8);
  v54 = swift_dynamicCast();
  v37 = v128;
  if ((v54 & 1) == 0)
  {

    goto LABEL_14;
  }

  v132 = v48;
  v55 = v143;
  v56 = static os_log_type_t.default.getter();
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  *&aBlock = 0xD00000000000002ELL;
  *(&aBlock + 1) = 0x800000010030A6E0;
  v133 = v55;
  v57._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v57);

  v58 = aBlock;
  v59 = v129;
  static GKLog.daemon.getter();
  v60 = Logger.logObject.getter();
  v61 = os_log_type_enabled(v60, v56);
  v124 = v49;
  if (v61)
  {
    v62 = sub_100005AE4();
    v63 = v36;
    v64 = sub_100005808();
    *&aBlock = v64;
    *v62 = 136315138;
    v65 = sub_100005C3C(v58, *(&v58 + 1), &aBlock);

    *(v62 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v60, v56, "TTR - %s", v62, 0xCu);
    sub_100005BE0(v64);
    v36 = v63;
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {
  }

  v37(v59, v5);
  v75 = v132;
  v74 = v133;
  v76 = v130;
  v135 = sub_1001E6DF0(v133);
  if (!v135)
  {

    v111 = static os_log_type_t.default.getter();
    static GKLog.daemon.getter();
    v112 = Logger.logObject.getter();
    if (os_log_type_enabled(v112, v111))
    {
      v113 = sub_100005AE4();
      v114 = sub_100005808();
      *&aBlock = v114;
      *v113 = 136315138;
      *(v113 + 4) = sub_100005C3C(0xD000000000000023, 0x800000010030A710, &aBlock);
      _os_log_impl(&_mh_execute_header, v112, v111, "TTR - %s", v113, 0xCu);
      sub_100005BE0(v114);
      sub_1000043D8();
      sub_1000043D8();
    }

    sub_1001B9874(v75, v124);

    v47 = v76;
    goto LABEL_17;
  }

  v129 = v5;
  v77 = 0;
  v130 = _swiftEmptyArrayStorage;
  v145 = _swiftEmptyArrayStorage;
  v134 = v74 & 0xC000000000000001;
  v131 = (v74 & 0xFFFFFFFFFFFFFF8);
  v78 = &type metadata for String;
  v79 = v75;
  do
  {
    if (v134)
    {
      v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v77 >= *(v131 + 2))
      {
        goto LABEL_57;
      }

      v80 = *(v74 + 8 * v77 + 32);
    }

    v81 = v80;
    v82 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      return;
    }

    *&v143 = 0x4449726579616C70;
    *(&v143 + 1) = 0xE800000000000000;
    v83 = v78;
    v84 = [v80 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v84)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v143 = 0u;
      v144 = 0u;
    }

    aBlock = v143;
    v140 = v144;
    v78 = v83;
    if (!*(&v144 + 1))
    {

      sub_1001A974C(&aBlock, &qword_1003B5808);
      goto LABEL_46;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_46;
    }

    v85 = v36;
    v87 = v137;
    v86 = v138;
    *&v143 = 0x656B6F5468737570;
    *(&v143 + 1) = 0xE90000000000006ELL;
    v88 = [v81 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v88)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v143 = 0u;
      v144 = 0u;
    }

    aBlock = v143;
    v140 = v144;
    v74 = v133;
    if (*(&v144 + 1))
    {
      if (swift_dynamicCast())
      {
        v89 = v137;
        v90 = v138;
        objc_allocWithZone(GKTTRMultiplayerParticipant);

        sub_1001D09EC(v89, v90);
        if (!sub_1001E6C48(v87, v86, v89, v90))
        {
          goto LABEL_58;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_1000072CC(v89, v90);
        v130 = v145;
        v36 = v85;
        v79 = v132;
        v74 = v133;
        goto LABEL_45;
      }
    }

    else
    {

      sub_1001A974C(&aBlock, &qword_1003B5808);
    }

    v79 = v132;
LABEL_45:
    v78 = v83;
LABEL_46:
    ++v77;
    v91 = v82 == v135;
    v92 = v136;
  }

  while (!v91);
  v93 = v79;

  sub_1001A7B44(0, &qword_1003B63F0);
  v94 = v127;
  v95 = *(v127 + OBJC_IVAR____TtC14GameDaemonCore13GameDaemonTTR_clientProxyBundleIdentifier);
  v96 = *(v127 + OBJC_IVAR____TtC14GameDaemonCore13GameDaemonTTR_clientProxyBundleIdentifier + 8);
  v97 = OBJC_IVAR____TtC14GameDaemonCore13GameDaemonTTR_localPlayer;
  v98 = *(v127 + OBJC_IVAR____TtC14GameDaemonCore13GameDaemonTTR_localPlayer);

  v99 = v98;
  v100 = sub_1001B47C0(v95, v96, v98);
  v101 = v128;
  v102 = v129;
  if (v100)
  {
    v103 = v100;
    v104 = [*(v94 + v97) playerID];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    v108 = objc_allocWithZone(GKTTRLogRequestInfo);
    v109 = sub_1001E6CF4(v130, v92, v125, v105, v107);
    v141 = sub_1001E6A04;
    v142 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v140 = sub_1001E6BB8;
    *(&v140 + 1) = &unk_10036BD38;
    v110 = _Block_copy(&aBlock);
    [v103 requestTTRLogsWith:v109 handler:v110];
    sub_1001B9874(v93, v124);
    _Block_release(v110);
  }

  else
  {

    v115 = v126;
    static GKLog.general.getter();
    v116 = Logger.logObject.getter();
    v117 = static os_log_type_t.error.getter();
    if (sub_100004760(v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      sub_1001E6E30();
      _os_log_impl(v119, v120, v121, v122, v118, 2u);
      sub_1000043D8();
    }

    sub_1001B9874(v93, v124);

    v101(v115, v102);
  }
}

uint64_t sub_1001E6A04(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GKLog.general.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = sub_100219A18(a1);
    v12 = sub_100005C3C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to requestTTRLogs due to error: %s", v8, 0xCu);
    sub_100005BE0(v9);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1001E6BB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1001E6C48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1001B9874(a3, a4);
  }

  v9 = [v4 initWithPlayerID:v7 pushToken:isa];

  return v9;
}

id sub_1001E6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_1001A7B44(0, &qword_1003B6420);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8.super.isa = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = String._bridgeToObjectiveC()();

LABEL_8:
  v11 = [v5 initWithPlayersAndPushTokens:v8.super.isa radarID:v9 requesterPlayerID:v10];

  return v11;
}

uint64_t sub_1001E6DF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1001E6E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001E6E3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_1001B16C8(0, v1, 0);
    v5 = sub_100268950(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 40 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];

        if (v13 >= v12 >> 1)
        {
          sub_1001B16C8(v12 > 1, v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1001EB7FC(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1001EB7FC(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
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
  }
}

void sub_1001E7078(uint64_t a1)
{
  v4 = sub_1001EBA78(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001EB370(v4, 1, sub_1001DEFC0);
  sub_1001EBAC0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001EBA98();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1000060B4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001E712C(uint64_t a1)
{
  v5 = sub_1001EBA78(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001EB370(v5, 1, sub_1001DF07C);
  sub_1001EBAC0();
  if (!v7)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001EBA98();
  if (v9 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v4 + v8 + 32), (v3 + 32), v1);

  if (!v1)
  {
LABEL_8:
    *v2 = v4;
    return;
  }

  sub_1000060B4();
  if (!v6)
  {
    *(v4 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1001E71D8(unint64_t a1)
{
  v3 = sub_1001E6DF0(a1);
  v4 = sub_1001E6DF0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1001EB2A0(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001EB674(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1001E7284(uint64_t a1)
{
  v4 = sub_1001EBA78(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001EB370(v4, 1, sub_1001DF388);
  sub_1001EBAC0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  type metadata accessor for Schema.PropertyMetadata();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1000060B4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001E7380(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001EB370(v4 + v3, 1, sub_1001DF450);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1001EBA98();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1001E7444(uint64_t a1)
{
  v4 = sub_1001EBA78(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001EB370(v4, 1, sub_1001DF8B4);
  sub_1001EBAC0();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  sub_1001A6C04(&qword_1003B6260);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1000060B4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1001E754C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_1001E75D4()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1001E7614()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001E766C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Class sub_1001E7710(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_1001E7774(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___GKScopedIDsBatchRequest_playerIDs] = a1;
  *&v2[OBJC_IVAR___GKScopedIDsBatchRequest_gameBundleIDs] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void static ScopedIDsUtils.filterUnsupportedGameBundleIDs(_:)(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v14 = a1 + 40;
LABEL_2:
  v4 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_19;
    }

    v6 = *(v4 - 1);
    v5 = *v4;
    if (v6 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v5 != v7)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001B16C8(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v3 = v14;
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          v13 = sub_1001EBAD8(v10);
          sub_1001B16C8(v13, v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[2 * v11];
        v12[4] = v6;
        v12[5] = v5;
        ++v1;
        goto LABEL_2;
      }
    }

    ++v1;
    v4 += 2;
  }
}

void *static ScopedIDsUtils.batchRequest(playerIDs:gameBundleIDs:desiredSize:)(void *a1, void *a2, unint64_t a3)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = a2[2];
    if (v5 && a3 >= 1)
    {
      if (v5 >= v3)
      {
        v14 = a3 / v3;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        v16 = sub_1001E7C34(v15, a2);
        v17 = v16[2];
        if (v17)
        {
          specialized ContiguousArray.reserveCapacity(_:)();
          v18 = type metadata accessor for ScopedIDsBatchRequest();
          v19 = 4;
          do
          {
            v20 = v16[v19];
            objc_allocWithZone(v18);

            sub_1001E7774(v21, v20);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_100005880();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_100005880();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v19;
            --v17;
          }

          while (v17);
        }
      }

      else
      {
        if (a3 / v5 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = a3 / v5;
        }

        v9 = sub_1001E7C34(v8, a1);
        v10 = v9[2];
        if (v10)
        {
          specialized ContiguousArray.reserveCapacity(_:)();
          v11 = type metadata accessor for ScopedIDsBatchRequest();
          v12 = 4;
          do
          {
            v13 = v9[v12];
            objc_allocWithZone(v11);

            sub_1001E7774(v13, a2);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_100005880();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_100005880();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v12;
            --v10;
          }

          while (v10);
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1001E7C34(void *result, void *a2)
{
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v3 = result;
  v4 = a2[2];
  v5 = sub_1001EB928(0, v4, result);
  result = sub_1001B1840(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_27;
    }

    v6 = 0;
    while (1)
    {
      v7 = v4 >= v6;
      if (v3 > 0)
      {
        v7 = v6 >= v4;
      }

      if (v7)
      {
        break;
      }

      v8 = v6 + v3;
      if (__OFADD__(v6, v3))
      {
        v9 = ((v6 + v3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v9 = v6 + v3;
      }

      if (__OFADD__(v6, v3))
      {
        goto LABEL_52;
      }

      if (v4 < v8)
      {
        v8 = v4;
      }

      v10 = v8 - v6;
      if (v8 < v6)
      {
        goto LABEL_53;
      }

      if (v6 < 0)
      {
        goto LABEL_54;
      }

      if (v4 == v10)
      {

        v11 = a2;
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
        if (v8 != v6)
        {
          if (v10 >= 1)
          {
            sub_1001A6C04(&qword_1003B5B98);
            v11 = swift_allocObject();
            v14 = j__malloc_size(v11);
            v11[2] = v10;
            v11[3] = 2 * ((v14 - 32) / 16);
          }

          result = swift_arrayInitWithCopy();
        }
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1001B1840((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      _swiftEmptyArrayStorage[v13 + 4] = v11;
      v6 = v9;
      if (!--v5)
      {
        while (1)
        {
LABEL_27:
          v15 = v4 >= v9;
          if (v3 > 0)
          {
            v15 = v9 >= v4;
          }

          if (v15)
          {
            return _swiftEmptyArrayStorage;
          }

          v16 = v9 + v3;
          v17 = __OFADD__(v9, v3) ? ((v9 + v3) >> 63) ^ 0x8000000000000000 : v9 + v3;
          if (__OFADD__(v9, v3))
          {
            break;
          }

          if (v4 < v16)
          {
            v16 = v4;
          }

          v18 = v16 - v9;
          if (v16 < v9)
          {
            goto LABEL_49;
          }

          if (v9 < 0)
          {
            goto LABEL_50;
          }

          if (v4 == v18)
          {

            v19 = a2;
          }

          else
          {
            v19 = _swiftEmptyArrayStorage;
            if (v16 != v9)
            {
              if (v18 >= 1)
              {
                sub_1001A6C04(&qword_1003B5B98);
                v19 = swift_allocObject();
                v22 = j__malloc_size(v19);
                v19[2] = v18;
                v19[3] = 2 * ((v22 - 32) / 16);
              }

              result = swift_arrayInitWithCopy();
            }
          }

          v21 = _swiftEmptyArrayStorage[2];
          v20 = _swiftEmptyArrayStorage[3];
          if (v21 >= v20 >> 1)
          {
            result = sub_1001B1840((v20 > 1), v21 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v21 + 1;
          _swiftEmptyArrayStorage[v21 + 4] = v19;
          v9 = v17;
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_56:
  __break(1u);
  return result;
}