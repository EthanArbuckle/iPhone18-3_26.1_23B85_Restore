uint64_t sub_100577748(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 232);
  v12 = *v1;
  *(v3 + 240) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 248) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003DFC(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100577924;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100577924(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {
    v7 = sub_100579AF8;
    v8 = 0;
  }

  else
  {
    v9 = v4[30];

    v7 = sub_100577A5C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100577A84()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 280) = v2;
  *v2 = v0;
  v2[1] = sub_100577B60;
  v3 = *(v0 + 272);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_10058D6FC, v3, &type metadata for () + 8);
}

uint64_t sub_100577B60()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return _swift_task_switch(sub_100577C5C, 0, 0);
}

uint64_t sub_100577C5C()
{
  v1 = *(v0 + 256);
  *(v0 + 392) = *(*(v0 + 72) + 20);
  return _swift_task_switch(sub_100577C84, v1, 0);
}

uint64_t sub_100577C84()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  (*(v5 + 16))(v3, *(v0 + 56) + *(v0 + 392), v4);
  v6 = *(v5 + 80);
  *(v0 + 396) = v6;
  v7 = (v6 + 24) & ~v6;
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v7, v3, v4);
  *(v9 + v8) = 0;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 296) = v11;
  v12 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v11 = v0;
  v11[1] = sub_100577E1C;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v12);
}

uint64_t sub_100577E1C()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return _swift_task_switch(sub_100577F48, v3, 0);
}

uint64_t sub_100577F6C()
{
  v38 = v0;
  v1 = *(v0 + 304);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 184);
    v34 = *(v0 + 192);
    v33 = *(*(v0 + 176) + 32);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v32 = *(v4 + 72);
    v6 = _swiftEmptyArrayStorage;
    v36 = (*(v0 + 396) + 32) & ~*(v0 + 396);
    while (1)
    {
      sub_10058B200(v5, *(v0 + 192), type metadata accessor for OwnerSharingCircle);
      v12 = *(v34 + v33);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = *(v0 + 396) & 0xF8;
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v15 = *(v3 + 72);
        v16 = swift_allocObject();
        isUniquelyReferenced_nonNull_native = j__malloc_size(v16);
        if (!v15)
        {
          goto LABEL_32;
        }

        if ((isUniquelyReferenced_nonNull_native - v36) == 0x8000000000000000 && v15 == -1)
        {
          goto LABEL_36;
        }

        v16[2] = v13;
        v16[3] = 2 * ((isUniquelyReferenced_nonNull_native - v36) / v15);
        v35 = sub_1003CC2CC(&v37, v16 + v36, v13, v12);

        isUniquelyReferenced_nonNull_native = sub_1000128F8();
        if (v35 != v13)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v16 = _swiftEmptyArrayStorage;
      }

      isUniquelyReferenced_nonNull_native = sub_10058B268(*(v0 + 192), type metadata accessor for OwnerSharingCircle);
      v18 = v16[2];
      v19 = v6[2];
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v20 > v6[3] >> 1)
      {
        if (v19 <= v20)
        {
          v21 = v19 + v18;
        }

        else
        {
          v21 = v19;
        }

        isUniquelyReferenced_nonNull_native = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v21, 1, v6);
        v6 = isUniquelyReferenced_nonNull_native;
      }

      if (v16[2])
      {
        if ((v6[3] >> 1) - v6[2] < v18)
        {
          goto LABEL_34;
        }

        v22 = *(v0 + 200);
        v23 = *(v3 + 72);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v24 = v6[2];
          v25 = __OFADD__(v24, v18);
          v26 = v24 + v18;
          if (v25)
          {
            goto LABEL_35;
          }

          v6[2] = v26;
        }
      }

      else
      {

        if (v18)
        {
          goto LABEL_31;
        }
      }

      v5 += v32;
      if (!--v2)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_27:
    v27 = sub_10000954C(v6);
    *(v0 + 312) = v27;

    *(v0 + 40) = v27;
    v28 = async function pointer to Sequence.asyncCompactMap<A>(_:)[1];
    v29 = swift_task_alloc();
    *(v0 + 320) = v29;
    v30 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    v11 = sub_1000041A4(&qword_1016AF940, &qword_1016AF8E0, &qword_101393130);
    *v29 = v0;
    v29[1] = sub_1005782E4;
    v8 = *(v0 + 256);
    v10 = *(v0 + 152);
    isUniquelyReferenced_nonNull_native = &unk_1013B10C0;
    v9 = v30;
  }

  return Sequence.asyncCompactMap<A>(_:)(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
}

uint64_t sub_1005782E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 320);
  v5 = *v2;
  *(*v2 + 328) = a1;

  if (v1)
  {
  }

  else
  {
    v8 = *(v3 + 304);
    v7 = *(v3 + 312);

    return _swift_task_switch(sub_10057842C, 0, 0);
  }
}

uint64_t sub_10057842C()
{
  v1 = v0[41];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[18];
    v6 = *(v0[19] + 28);
    v7 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v31 = *(v3 + 72);
    v8 = _swiftEmptyArrayStorage;
    v29 = v6;
    v30 = v4;
    while (1)
    {
      v9 = v0[21];
      v11 = v0[17];
      v10 = v0[18];
      sub_10058B200(v7, v9, type metadata accessor for OwnerPeerTrust);
      sub_10058B200(v4 + v6, v10, type metadata accessor for PeerCommunicationIdentifier);
      sub_10058B268(v9, type metadata accessor for OwnerPeerTrust);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 6) >= 2)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v13 = *v0[18];
            v14 = v5[1];
            v15 = v5[2];
            v16 = v5[4];
          }

          else
          {
            v17 = v5[1];
            v13 = *(v5 + 16);
            v14 = v5[3];
            v15 = v5[4];
            v18 = v5[6];
          }

          goto LABEL_13;
        }
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
          v13 = *v0[18];
          v14 = v5[1];
          v15 = v5[2];
LABEL_13:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100A5C1F8(0, *(v8 + 2) + 1, 1, v8);
          }

          v20 = *(v8 + 2);
          v19 = *(v8 + 3);
          if (v20 >= v19 >> 1)
          {
            v8 = sub_100A5C1F8((v19 > 1), v20 + 1, 1, v8);
          }

          *(v8 + 2) = v20 + 1;
          v21 = &v8[24 * v20];
          v21[32] = v13;
          *(v21 + 5) = v14;
          *(v21 + 6) = v15;
          v6 = v29;
          v4 = v30;
          goto LABEL_4;
        }

        sub_10058B268(v0[18], type metadata accessor for PeerCommunicationIdentifier);
      }

LABEL_4:
      v7 += v31;
      if (!--v2)
      {
        v22 = v0[41];

        goto LABEL_20;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_20:
  v23 = v0[8];
  v0[42] = sub_101129FC8(v8);

  v24 = async function pointer to unsafeBlocking<A>(_:)[1];

  v25 = swift_task_alloc();
  v0[43] = v25;
  v26 = sub_1000BC4D4(&qword_1016A4740, &unk_1013B10D0);
  *v25 = v0;
  v25[1] = sub_100578710;
  v27 = v0[8];

  return unsafeBlocking<A>(_:)(v0 + 6, sub_100589038, v27, v26);
}

uint64_t sub_100578710()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = *(v2 + 64);

    v6 = sub_100579BDC;
  }

  else
  {
    v7 = *(v2 + 64);

    v6 = sub_100578840;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100578840()
{
  v25 = v0;
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = _swiftEmptyArrayStorage;
    sub_101124900(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 64);
    do
    {
      v5 = *(v4 - 32);
      v7 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;

      sub_10002E98C(v8, v9);
      sub_100006654(v8, v9);
      v24 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_101124900((v10 > 1), v11 + 1, 1);
        v3 = v24;
      }

      v3[2] = v11 + 1;
      v12 = &v3[3 * v11];
      *(v12 + 32) = v5;
      v4 += 5;
      v12[5] = v7;
      v12[6] = v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v13 = v0[6];

    v3 = _swiftEmptyArrayStorage;
  }

  v14 = v0[42];
  v0[45] = sub_101129FC8(v3);

  v16 = sub_10039DC8C(v15, v14);
  v0[46] = v16;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16;
    v19 = sub_1003A86D8(*(v16 + 16), 0);
    v20 = sub_1003AA0FC(&v24, (v19 + 4), v17, v18);

    sub_1000128F8();
    if (v20 == v17)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_12:
  v0[47] = v19;
  type metadata accessor for PeerTrustService();
  v21 = swift_task_alloc();
  v0[48] = v21;
  *v21 = v0;
  v21[1] = sub_100578A90;
  v22 = v0[12];

  return sub_100E80604(v22, v19);
}

uint64_t sub_100578A90()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return _swift_task_switch(sub_100578BA8, 0, 0);
}

uint64_t sub_100578BA8()
{
  v143 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_1016A4738, &qword_1013B10B0);
LABEL_15:
    if (qword_101694E40 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 368);
    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177BFE0);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 368);
    if (v43)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v142[0] = v46;
      *v45 = 136315138;
      sub_100589064();
      v47 = Set.description.getter();
      v49 = v48;

      v50 = sub_1000136BC(v47, v49, v142);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "Using fallback logic to match %s.", v45, 0xCu);
      sub_100007BAC(v46);
    }

    else
    {
    }

    v51 = *(v0 + 360);
    v52 = *(v0 + 336);
    if (*(v52 + 16) <= v51[2] >> 3)
    {
      v142[0] = *(v0 + 360);

      sub_10087D930(v52);
      v54 = v142[0];
    }

    else
    {
      v53 = *(v0 + 360);

      v54 = sub_100614D54(v52, v51);
    }

    v55 = *(v52 + 16);
    v56 = *(v0 + 360);
    if (v51[2] <= v55 >> 3)
    {
      v142[0] = *(v0 + 336);
      sub_10087D930(v56);

      v57 = v142[0];
    }

    else
    {
      v57 = sub_100614D54(*(v0 + 360), *(v0 + 336));
    }

    sub_10058B200(*(v0 + 56), *(v0 + 80), type metadata accessor for OwnedBeaconRecord);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    v141 = v54;
    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 200);
      v62 = *(v0 + 72);
      v61 = *(v0 + 80);
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v142[0] = v64;
      *v63 = 141558275;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      v65 = *(v62 + 20);
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      sub_10058B268(v61, type metadata accessor for OwnedBeaconRecord);
      v69 = sub_1000136BC(v66, v68, v142);

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v58, v59, "Processing beacon %{private,mask.hash}s.", v63, 0x16u);
      sub_100007BAC(v64);
    }

    else
    {
      v70 = *(v0 + 80);

      sub_10058B268(v70, type metadata accessor for OwnedBeaconRecord);
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v142[0] = v74;
      *v73 = 136315138;
      sub_100589064();
      v75 = Set.description.getter();
      v77 = sub_1000136BC(v75, v76, v142);

      *(v73 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v71, v72, "Possible KeyDrop shares %s.", v73, 0xCu);
      sub_100007BAC(v74);
    }

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    v80 = os_log_type_enabled(v78, v79);
    v81 = *(v0 + 256);
    if (v80)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v142[0] = v83;
      *v82 = 136315138;
      sub_100589064();
      v84 = Set.description.getter();
      v86 = sub_1000136BC(v84, v85, v142);

      *(v82 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v78, v79, "KeyDrop Shares to remove %s.", v82, 0xCu);
      sub_100007BAC(v83);
    }

    goto LABEL_34;
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 336);
  (*(v2 + 32))(*(v0 + 128), v3, v1);
  v6 = sub_1004F019C(v5);
  if (v4)
  {
    if (qword_101694E40 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 368);
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BFE0);

    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 368);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v142[0] = v20;
      *v18 = 138543618;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      *(v18 + 12) = 2080;
      sub_100589064();
      v22 = Set.description.getter();
      v24 = sub_1000136BC(v22, v23, v142);

      *(v18 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Map lookup error: %{public}@ for %s.", v18, 0x16u);
      sub_10000B3A8(v19, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v20);
    }

    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 128), *(v0 + 104));
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    if (v27)
    {
      v140 = *(v0 + 128);
      v32 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v142[0] = v138;
      *v32 = 136315138;
      sub_100003DFC(&qword_1016A4750, &type metadata accessor for CorrelationIdentifierMap);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v36 = *(v30 + 8);
      v36(v28, v31);
      v37 = sub_1000136BC(v33, v35, v142);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v25, v26, "map: %s", v32, 0xCu);
      sub_100007BAC(v138);

      v36(v140, v31);
    }

    else
    {

      v38 = *(v30 + 8);
      v38(v28, v31);
      v38(v29, v31);
    }

    goto LABEL_15;
  }

  v7 = v6;
  v8 = *(v0 + 128);
  v9 = sub_1004F019C(*(v0 + 360));
  v10 = v9;
  if (v7[2] <= *(v9 + 16) >> 3)
  {
    v142[0] = v9;

    sub_10087DA70(v7);
  }

  else
  {

    sub_100615308(v7, v10);
  }

  v11 = *(v0 + 128);
  v12 = sub_1004F04AC();

  if (v10[2] <= v7[2] >> 3)
  {
    v142[0] = v7;
    sub_10087DA70(v10);
  }

  else
  {
    sub_100615308(v10, v7);
  }

  v98 = *(v0 + 128);
  v57 = sub_1004F04AC();
  v100 = *(v0 + 360);
  v99 = *(v0 + 368);
  v101 = *(v0 + 336);

  if (qword_101694E40 != -1)
  {
    swift_once();
  }

  v102 = *(v0 + 88);
  v103 = *(v0 + 56);
  v104 = type metadata accessor for Logger();
  sub_1000076D4(v104, qword_10177BFE0);
  sub_10058B200(v103, v102, type metadata accessor for OwnedBeaconRecord);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.default.getter();
  v141 = v12;
  if (os_log_type_enabled(v105, v106))
  {
    v107 = *(v0 + 200);
    v108 = *(v0 + 88);
    v109 = *(v0 + 72);
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v142[0] = v111;
    *v110 = 141558275;
    *(v110 + 4) = 1752392040;
    *(v110 + 12) = 2081;
    v112 = *(v109 + 20);
    sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v115 = v114;
    sub_10058B268(v108, type metadata accessor for OwnedBeaconRecord);
    v116 = sub_1000136BC(v113, v115, v142);

    *(v110 + 14) = v116;
    _os_log_impl(&_mh_execute_header, v105, v106, "Processing beacon %{private,mask.hash}s.", v110, 0x16u);
    sub_100007BAC(v111);
  }

  else
  {
    v117 = *(v0 + 88);

    sub_10058B268(v117, type metadata accessor for OwnedBeaconRecord);
  }

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v142[0] = v121;
    *v120 = 136315138;
    sub_100589064();
    v122 = Set.description.getter();
    v124 = sub_1000136BC(v122, v123, v142);

    *(v120 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v118, v119, "Possible KeyDrop shares %s.", v120, 0xCu);
    sub_100007BAC(v121);
  }

  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();

  v127 = os_log_type_enabled(v125, v126);
  v128 = *(v0 + 256);
  v129 = *(v0 + 128);
  v131 = *(v0 + 104);
  v130 = *(v0 + 112);
  if (v127)
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v142[0] = v133;
    *v132 = 136315138;
    sub_100589064();
    v134 = Set.description.getter();
    v139 = v131;
    v136 = sub_1000136BC(v134, v135, v142);

    *(v132 + 4) = v136;
    _os_log_impl(&_mh_execute_header, v125, v126, "KeyDrop Shares to remove %s.", v132, 0xCu);
    sub_100007BAC(v133);

    (*(v130 + 8))(v129, v139);
  }

  else
  {
    v137 = *(v0 + 256);

    (*(v130 + 8))(v129, v131);
  }

LABEL_34:
  v87 = *(v0 + 224);
  v88 = *(v0 + 192);
  v89 = *(v0 + 168);
  v90 = *(v0 + 144);
  v92 = *(v0 + 120);
  v91 = *(v0 + 128);
  v94 = *(v0 + 88);
  v93 = *(v0 + 96);
  v95 = *(v0 + 80);

  v96 = *(v0 + 8);

  return v96(v141, v57);
}

uint64_t sub_100579AF8()
{
  v1 = v0[30];

  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100579BDC()
{
  v1 = v0[32];

  v2 = v0[44];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100579CC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_100579D90, a3, 0);
}

uint64_t sub_100579D90()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v8 = v0;
  v8[1] = sub_1002E9E50;
  v10 = v0[2];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_10058D700, v6, v9);
}

Swift::Int sub_100579F04(void **a1)
{
  v2 = *(type metadata accessor for ShareRecord() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3214C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10057A31C(v6);
  *a1 = v3;
  return result;
}

void sub_100579FAC()
{
  v1 = type metadata accessor for MessagingServiceDelegateTrampoline();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC12searchpartyd34MessagingServiceDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_10166A1B8;
  swift_unknownObjectWeakAssign();
  v9.receiver = v2;
  v9.super_class = v1;
  v3 = objc_msgSendSuper2(&v9, "init");
  v4 = v0[5];
  v0[5] = v3;

  v5 = v0[7];
  v6 = objc_allocWithZone(IDSServiceDelegateProperties);
  v7 = v3;
  v8 = [v6 init];
  [v5 addDelegate:v7 withDelegateProperties:v8 queue:v0[6]];
}

void *sub_10057A094()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = [*(v0 + 56) devices];
  if (result)
  {
    v2 = result;
    sub_100008BB8(0, &qword_10169EF70, IDSDevice_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10057A1A4()
{
  v0 = sub_10057A094();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_101124390(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      sub_100E77148(v5, v17);

      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_101124390((v7 > 1), v8 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[20 * v8];
      v10 = v17[1];
      v9[2] = v17[0];
      v9[3] = v10;
      v11 = v17[2];
      v12 = v17[3];
      v13 = v17[5];
      v9[6] = v17[4];
      v9[7] = v13;
      v9[4] = v11;
      v9[5] = v12;
      v14 = v17[6];
      v15 = v17[7];
      v16 = v17[9];
      v9[10] = v17[8];
      v9[11] = v16;
      v9[8] = v14;
      v9[9] = v15;
    }

    while (v2 != v4);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10057A31C(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        type metadata accessor for ShareRecord();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ShareRecord() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10057A9A0(v8, v9, a1, v4);
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
    return sub_10057A448(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10057A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v66 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v52 - v12;
  v75 = type metadata accessor for Date();
  v13 = *(v75 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v75);
  v63 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v72 = &v52 - v17;
  v68 = type metadata accessor for ShareRecord();
  v18 = *(*(v68 - 8) + 64);
  v19 = __chkstk_darwin(v68);
  v62 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v52 - v22;
  result = __chkstk_darwin(v21);
  v73 = &v52 - v26;
  v55 = a2;
  if (a3 != a2)
  {
    v27 = *a4;
    v28 = *(v25 + 72);
    v67 = (v13 + 48);
    v64 = (v13 + 8);
    v65 = (v13 + 32);
    v29 = v27 + v28 * (a3 - 1);
    v60 = -v28;
    v61 = v27;
    v30 = a1 - a3;
    v54 = v28;
    v31 = v27 + v28 * a3;
    v53 = v23;
    while (2)
    {
      v58 = v29;
      v59 = a3;
      v56 = v31;
      v57 = v30;
      v33 = v68;
      while (1)
      {
        v71 = v30;
        v34 = v73;
        sub_10058B200(v31, v73, type metadata accessor for ShareRecord);
        v70 = v29;
        sub_10058B200(v29, v23, type metadata accessor for ShareRecord);
        v35 = v74;
        sub_1000D2A70(v34 + *(v33 + 32), v74, &unk_101696900, &unk_10138B1E0);
        v36 = v23;
        v37 = *v67;
        if ((*v67)(v35, 1, v75) == 1)
        {
          break;
        }

        v69 = v31;
        v38 = *v65;
        v39 = v75;
        (*v65)(v72, v74, v75);
        v40 = v36 + *(v33 + 32);
        v41 = v66;
        sub_1000D2A70(v40, v66, &unk_101696900, &unk_10138B1E0);
        if (v37(v41, 1, v39) == 1)
        {
          (*v64)(v72, v75);
          v32 = v41;
          goto LABEL_5;
        }

        v42 = v75;
        v43 = v72;
        v44 = v63;
        v38(v63, v41, v75);
        v45 = static Date.< infix(_:_:)();
        v46 = *v64;
        v33 = v68;
        (*v64)(v44, v42);
        v46(v43, v42);
        sub_10058B268(v36, type metadata accessor for ShareRecord);
        result = sub_10058B268(v73, type metadata accessor for ShareRecord);
        v23 = v36;
        v47 = v69;
        v48 = v70;
        v49 = v71;
        if ((v45 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (!v61)
        {
          __break(1u);
          return result;
        }

        v50 = v62;
        sub_100589B28(v69, v62, type metadata accessor for ShareRecord);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100589B28(v50, v48, type metadata accessor for ShareRecord);
        v29 = v48 + v60;
        v31 = v47 + v60;
        v51 = __CFADD__(v49, 1);
        v30 = v49 + 1;
        if (v51)
        {
          goto LABEL_6;
        }
      }

      v32 = v74;
LABEL_5:
      sub_10000B3A8(v32, &unk_101696900, &unk_10138B1E0);
      v23 = v53;
      sub_10058B268(v53, type metadata accessor for ShareRecord);
      result = sub_10058B268(v73, type metadata accessor for ShareRecord);
LABEL_6:
      a3 = v59 + 1;
      v29 = v58 + v54;
      v30 = v57 - 1;
      v31 = v56 + v54;
      if (v59 + 1 == v55)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_10057A9A0(unint64_t *a1, uint64_t a2, void (**a3)(char *, uint64_t, uint64_t), int64_t a4)
{
  v155 = a1;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v179 = &v152 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v152 - v15;
  __chkstk_darwin(v14);
  v18 = &v152 - v17;
  v183 = type metadata accessor for Date();
  v19 = *(v183 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v183);
  v177 = &v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v190 = &v152 - v24;
  v25 = __chkstk_darwin(v23);
  v156 = &v152 - v26;
  __chkstk_darwin(v25);
  v167 = &v152 - v27;
  v28 = type metadata accessor for ShareRecord();
  v170 = *(v28 - 8);
  v29 = *(v170 + 64);
  v30 = __chkstk_darwin(v28);
  v159 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v176 = &v152 - v33;
  v34 = __chkstk_darwin(v32);
  v188 = &v152 - v35;
  v36 = __chkstk_darwin(v34);
  v189 = &v152 - v37;
  v38 = __chkstk_darwin(v36);
  v171 = &v152 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v152 - v41;
  v43 = __chkstk_darwin(v40);
  v153 = &v152 - v44;
  result = __chkstk_darwin(v43);
  v172 = a3;
  v47 = a3[1];
  if (v47 < 1)
  {
    v48 = _swiftEmptyArrayStorage;
    v50 = v169;
LABEL_111:
    v4 = v50;
    v50 = *v155;
    if (!*v155)
    {
      goto LABEL_151;
    }

    v49 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_145;
    }

    result = v49;
LABEL_114:
    v191 = result;
    v49 = *(result + 16);
    if (v49 >= 2)
    {
      while (*v172)
      {
        v148 = *(result + 16 * v49);
        v149 = result;
        v150 = *(result + 16 * (v49 - 1) + 40);
        sub_10057BA40(*v172 + *(v170 + 72) * v148, *v172 + *(v170 + 72) * *(result + 16 * (v49 - 1) + 32), *v172 + *(v170 + 72) * v150, v50);
        if (v4)
        {
        }

        if (v150 < v148)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_100B31E68(v149);
        }

        if (v49 - 2 >= *(v149 + 2))
        {
          goto LABEL_139;
        }

        v151 = &v149[16 * v49];
        *v151 = v148;
        *(v151 + 1) = v150;
        v191 = v149;
        sub_100B31DDC(v49 - 1);
        result = v191;
        v49 = *(v191 + 16);
        if (v49 <= 1)
        {
        }
      }

      goto LABEL_149;
    }
  }

  v152 = &v152 - v46;
  v181 = (v19 + 32);
  v182 = (v19 + 48);
  v180 = (v19 + 8);
  v48 = _swiftEmptyArrayStorage;
  v154 = a4;
  v178 = v11;
  v165 = v16;
  v49 = 0;
  v168 = v18;
  v184 = v28;
  v50 = v169;
  v166 = v42;
  while (1)
  {
    v160 = v48;
    v157 = v49;
    if ((v49 + 1) >= v47)
    {
      v71 = v49 + 1;
      goto LABEL_31;
    }

    v173 = v47;
    v51 = *v172;
    v52 = *(v170 + 72);
    v187 = *v172 + v52 * (v49 + 1);
    v53 = v152;
    sub_10058B200(v187, v152, type metadata accessor for ShareRecord);
    v54 = v51 + v52 * v49;
    v55 = v153;
    sub_10058B200(v54, v153, type metadata accessor for ShareRecord);
    LODWORD(v186) = sub_10053DC50(v53, v55);
    if (v50)
    {
      sub_10058B268(v55, type metadata accessor for ShareRecord);
      sub_10058B268(v53, type metadata accessor for ShareRecord);
    }

    sub_10058B268(v55, type metadata accessor for ShareRecord);
    result = sub_10058B268(v53, type metadata accessor for ShareRecord);
    v56 = v157 + 2;
    v185 = v52;
    v57 = v51 + v52 * (v157 + 2);
    v169 = 0;
    v58 = v171;
    v4 = &unk_10138B1E0;
    v59 = v187;
    while (1)
    {
      v71 = v173;
      if (v173 == v56)
      {
        break;
      }

      sub_10058B200(v57, v42, type metadata accessor for ShareRecord);
      v187 = v59;
      sub_10058B200(v59, v58, type metadata accessor for ShareRecord);
      sub_1000D2A70(&v42[*(v28 + 32)], v18, &unk_101696900, &unk_10138B1E0);
      v63 = v183;
      v64 = *v182;
      v65 = (*v182)(v18, 1, v183);
      v66 = v18;
      v67 = v165;
      if (v65 == 1)
      {
        sub_10000B3A8(v66, &unk_101696900, &unk_10138B1E0);
        v60 = 0;
        v42 = v166;
        v50 = v169;
      }

      else
      {
        v175 = *v181;
        v175(v167, v66, v63);
        sub_1000D2A70(v171 + *(v28 + 32), v67, &unk_101696900, &unk_10138B1E0);
        if (v64(v67, 1, v63) == 1)
        {
          (*v180)(v167, v63);
          sub_10000B3A8(v67, &unk_101696900, &unk_10138B1E0);
          v60 = 0;
        }

        else
        {
          v68 = v156;
          v175(v156, v67, v63);
          v69 = v167;
          v60 = static Date.< infix(_:_:)();
          v70 = *v180;
          (*v180)(v68, v63);
          v70(v69, v63);
        }

        v50 = v169;
        v42 = v166;
      }

      v61 = v187;
      v58 = v171;
      sub_10058B268(v171, type metadata accessor for ShareRecord);
      result = sub_10058B268(v42, type metadata accessor for ShareRecord);
      v62 = v60 & 1;
      ++v56;
      v28 = v184;
      v57 += v185;
      v59 = v61 + v185;
      v18 = v168;
      if ((v186 & 1) != v62)
      {
        v71 = v56 - 1;
        break;
      }
    }

    a4 = v154;
    v49 = v157;
    if (v186)
    {
      if (v71 < v157)
      {
        goto LABEL_144;
      }

      if (v157 < v71)
      {
        v4 = v71;
        v72 = v185;
        v73 = v185 * (v71 - 1);
        v74 = v71 * v185;
        v173 = v71;
        v75 = v157;
        v76 = v157 * v185;
        do
        {
          if (v75 != --v4)
          {
            v77 = *v172;
            if (!*v172)
            {
              goto LABEL_148;
            }

            sub_100589B28(v77 + v76, v159, type metadata accessor for ShareRecord);
            if (v76 < v73 || v77 + v76 >= v77 + v74)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_100589B28(v159, v77 + v73, type metadata accessor for ShareRecord);
            v28 = v184;
          }

          ++v75;
          v73 -= v72;
          v74 -= v72;
          v76 += v72;
        }

        while (v75 < v4);
        v50 = v169;
        a4 = v154;
        v18 = v168;
        v49 = v157;
        v71 = v173;
      }
    }

LABEL_31:
    v78 = v172[1];
    if (v71 >= v78)
    {
      goto LABEL_39;
    }

    v79 = v71;
    v116 = __OFSUB__(v71, v49);
    v80 = v71 - v49;
    if (v116)
    {
      goto LABEL_141;
    }

    if (v80 < a4)
    {
      break;
    }

    v81 = v79;
    if (v79 < v49)
    {
      goto LABEL_140;
    }

LABEL_58:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v48 = v160;
    }

    else
    {
      result = sub_100A5B430(0, *(v160 + 2) + 1, 1, v160);
      v48 = result;
    }

    v49 = *(v48 + 2);
    v102 = *(v48 + 3);
    v103 = v49 + 1;
    if (v49 >= v102 >> 1)
    {
      result = sub_100A5B430((v102 > 1), v49 + 1, 1, v48);
      v48 = result;
    }

    *(v48 + 2) = v103;
    v104 = &v48[16 * v49];
    *(v104 + 4) = v157;
    *(v104 + 5) = v81;
    v187 = *v155;
    if (!v187)
    {
      goto LABEL_150;
    }

    v161 = v81;
    if (v49)
    {
      while (1)
      {
        v105 = v103 - 1;
        if (v103 >= 4)
        {
          break;
        }

        if (v103 == 3)
        {
          v106 = *(v48 + 4);
          v107 = *(v48 + 5);
          v116 = __OFSUB__(v107, v106);
          v108 = v107 - v106;
          v109 = v116;
LABEL_77:
          if (v109)
          {
            goto LABEL_129;
          }

          v122 = &v48[16 * v103];
          v124 = *v122;
          v123 = *(v122 + 1);
          v125 = __OFSUB__(v123, v124);
          v126 = v123 - v124;
          v127 = v125;
          if (v125)
          {
            goto LABEL_132;
          }

          v128 = &v48[16 * v105 + 32];
          v130 = *v128;
          v129 = *(v128 + 1);
          v116 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v116)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v126, v131))
          {
            goto LABEL_136;
          }

          if (v126 + v131 >= v108)
          {
            if (v108 < v131)
            {
              v105 = v103 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v132 = &v48[16 * v103];
        v134 = *v132;
        v133 = *(v132 + 1);
        v116 = __OFSUB__(v133, v134);
        v126 = v133 - v134;
        v127 = v116;
LABEL_91:
        if (v127)
        {
          goto LABEL_131;
        }

        v135 = &v48[16 * v105];
        v137 = *(v135 + 4);
        v136 = *(v135 + 5);
        v116 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v116)
        {
          goto LABEL_134;
        }

        if (v138 < v126)
        {
          goto LABEL_3;
        }

LABEL_98:
        v49 = v105 - 1;
        if (v105 - 1 >= v103)
        {
          __break(1u);
LABEL_125:
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
          goto LABEL_143;
        }

        if (!*v172)
        {
          goto LABEL_147;
        }

        v143 = v48;
        v144 = *&v48[16 * v49 + 32];
        v145 = *&v48[16 * v105 + 40];
        sub_10057BA40(*v172 + *(v170 + 72) * v144, *v172 + *(v170 + 72) * *&v48[16 * v105 + 32], *v172 + *(v170 + 72) * v145, v187);
        if (v50)
        {
        }

        if (v145 < v144)
        {
          goto LABEL_125;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v146 = v143;
        }

        else
        {
          v146 = sub_100B31E68(v143);
        }

        v28 = v184;
        if (v49 >= *(v146 + 2))
        {
          goto LABEL_126;
        }

        v147 = &v146[16 * v49];
        *(v147 + 4) = v144;
        *(v147 + 5) = v145;
        v191 = v146;
        v49 = &v191;
        result = sub_100B31DDC(v105);
        v48 = v191;
        v103 = *(v191 + 16);
        if (v103 <= 1)
        {
          goto LABEL_3;
        }
      }

      v110 = &v48[16 * v103 + 32];
      v111 = *(v110 - 64);
      v112 = *(v110 - 56);
      v116 = __OFSUB__(v112, v111);
      v113 = v112 - v111;
      if (v116)
      {
        goto LABEL_127;
      }

      v115 = *(v110 - 48);
      v114 = *(v110 - 40);
      v116 = __OFSUB__(v114, v115);
      v108 = v114 - v115;
      v109 = v116;
      if (v116)
      {
        goto LABEL_128;
      }

      v117 = &v48[16 * v103];
      v119 = *v117;
      v118 = *(v117 + 1);
      v116 = __OFSUB__(v118, v119);
      v120 = v118 - v119;
      if (v116)
      {
        goto LABEL_130;
      }

      v116 = __OFADD__(v108, v120);
      v121 = v108 + v120;
      if (v116)
      {
        goto LABEL_133;
      }

      if (v121 >= v113)
      {
        v139 = &v48[16 * v105 + 32];
        v141 = *v139;
        v140 = *(v139 + 1);
        v116 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v116)
        {
          goto LABEL_137;
        }

        if (v108 < v142)
        {
          v105 = v103 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v47 = v172[1];
    v49 = v161;
    a4 = v154;
    if (v161 >= v47)
    {
      goto LABEL_111;
    }
  }

  if (__OFADD__(v49, a4))
  {
    goto LABEL_142;
  }

  if ((v49 + a4) < v78)
  {
    v78 = v49 + a4;
  }

  if (v78 < v49)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    result = sub_100B31E68(v49);
    goto LABEL_114;
  }

  v71 = v79;
  v161 = v78;
  if (v79 == v78)
  {
LABEL_39:
    v81 = v71;
    if (v71 < v49)
    {
      goto LABEL_140;
    }

    goto LABEL_58;
  }

  v169 = v50;
  v82 = *v172;
  v83 = *(v170 + 72);
  v84 = *v172 + v83 * (v71 - 1);
  v174 = -v83;
  v4 = (v49 - v71);
  v158 = v83;
  v175 = v82;
  v85 = v82 + v71 * v83;
  v86 = v188;
  v87 = v179;
  while (2)
  {
    v173 = v71;
    v162 = v85;
    v163 = v4;
    v164 = v84;
LABEL_48:
    v187 = v4;
    v89 = v189;
    sub_10058B200(v85, v189, type metadata accessor for ShareRecord);
    v186 = v84;
    sub_10058B200(v84, v86, type metadata accessor for ShareRecord);
    sub_1000D2A70(v89 + *(v28 + 32), v87, &unk_101696900, &unk_10138B1E0);
    v90 = v183;
    v91 = *v182;
    if ((*v182)(v87, 1, v183) == 1)
    {
      v88 = v87;
LABEL_45:
      sub_10000B3A8(v88, &unk_101696900, &unk_10138B1E0);
      v86 = v188;
      sub_10058B268(v188, type metadata accessor for ShareRecord);
      sub_10058B268(v189, type metadata accessor for ShareRecord);
      v28 = v184;
      goto LABEL_46;
    }

    v185 = v85;
    v92 = *v181;
    (*v181)(v190, v87, v90);
    v93 = v178;
    sub_1000D2A70(v188 + *(v28 + 32), v178, &unk_101696900, &unk_10138B1E0);
    if (v91(v93, 1, v90) == 1)
    {
      (*v180)(v190, v90);
      v88 = v93;
      v87 = v179;
      goto LABEL_45;
    }

    v94 = v177;
    v92(v177, v93, v90);
    v95 = static Date.< infix(_:_:)();
    v96 = *v180;
    (*v180)(v94, v90);
    v96(v190, v90);
    v86 = v188;
    sub_10058B268(v188, type metadata accessor for ShareRecord);
    result = sub_10058B268(v189, type metadata accessor for ShareRecord);
    if ((v95 & 1) == 0)
    {
      v87 = v179;
      v28 = v184;
LABEL_46:
      v71 = v173 + 1;
      v84 = v164 + v158;
      v4 = v163 - 1;
      v85 = v162 + v158;
      if (v173 + 1 == v161)
      {
        v50 = v169;
        v18 = v168;
        v42 = v166;
        v49 = v157;
        v81 = v161;
        if (v161 < v157)
        {
          goto LABEL_140;
        }

        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  v87 = v179;
  v28 = v184;
  v97 = v187;
  if (v175)
  {
    v98 = v185;
    v99 = v176;
    sub_100589B28(v185, v176, type metadata accessor for ShareRecord);
    v100 = v186;
    swift_arrayInitWithTakeFrontToBack();
    sub_100589B28(v99, v100, type metadata accessor for ShareRecord);
    v84 = v100 + v174;
    v85 = v98 + v174;
    v101 = __CFADD__(v97, 1);
    v4 = (v97 + 1);
    if (v101)
    {
      goto LABEL_46;
    }

    goto LABEL_48;
  }

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
  return result;
}

uint64_t sub_10057BA40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v91 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v86 - v14;
  v16 = __chkstk_darwin(v13);
  v94 = v86 - v17;
  __chkstk_darwin(v16);
  v100 = v86 - v18;
  v19 = type metadata accessor for Date();
  v103 = *(v19 - 8);
  v20 = *(v103 + 64);
  v21 = __chkstk_darwin(v19);
  v87 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = v86 - v24;
  v26 = __chkstk_darwin(v23);
  v90 = v86 - v27;
  __chkstk_darwin(v26);
  v29 = (v86 - v28);
  v105 = type metadata accessor for ShareRecord();
  v30 = *(*(v105 - 8) + 64);
  v31 = __chkstk_darwin(v105);
  v32 = __chkstk_darwin(v31);
  v99 = v86 - v33;
  v34 = __chkstk_darwin(v32);
  v101 = v86 - v35;
  result = __chkstk_darwin(v34);
  v97 = *(v39 + 72);
  if (!v97)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v96 = v25;
  v40 = a2;
  if (a2 - a1 == 0x8000000000000000 && v97 == -1)
  {
    goto LABEL_70;
  }

  v41 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v97 == -1)
  {
    goto LABEL_71;
  }

  v42 = (a2 - a1) / v97;
  v108 = a1;
  v107 = a4;
  v102 = v19;
  v86[1] = v4;
  if (v42 >= v41 / v97)
  {
    v46 = v41 / v97 * v97;
    v100 = v38;
    if (a4 < a2 || a2 + v46 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v46;
    if (v46 >= 1)
    {
      v67 = -v97;
      v93 = (v103 + 48);
      v68 = (v103 + 32);
      v89 = v15;
      v90 = (v103 + 8);
      v69 = a4 + v46;
      v70 = v105;
      v104 = a4;
      v98 = -v97;
      v88 = (v103 + 32);
      do
      {
        v95 = v66;
        v86[0] = v66;
        v71 = v40;
        v101 = v40 + v67;
        v94 = v40;
        while (1)
        {
          if (v71 <= a1)
          {
            v108 = v71;
            v106 = v86[0];
            goto LABEL_68;
          }

          v72 = a3;
          v97 = v69;
          v103 = v69 + v67;
          v73 = v99;
          sub_10058B200(v69 + v67, v99, type metadata accessor for ShareRecord);
          v74 = v100;
          sub_10058B200(v101, v100, type metadata accessor for ShareRecord);
          sub_1000D2A70(v73 + *(v70 + 32), v15, &unk_101696900, &unk_10138B1E0);
          v75 = *v93;
          v76 = v102;
          if ((*v93)(v15, 1, v102) == 1)
          {
            sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
            v77 = 0;
          }

          else
          {
            v92 = *v68;
            (v92)(v96, v15, v76);
            v78 = v74 + *(v70 + 32);
            v79 = v91;
            sub_1000D2A70(v78, v91, &unk_101696900, &unk_10138B1E0);
            if (v75(v79, 1, v76) == 1)
            {
              (*v90)(v96, v76);
              sub_10000B3A8(v79, &unk_101696900, &unk_10138B1E0);
              v77 = 0;
              v68 = v88;
              v15 = v89;
            }

            else
            {
              v80 = v87;
              v68 = v88;
              (v92)(v87, v79, v76);
              v81 = v96;
              v77 = static Date.< infix(_:_:)();
              v82 = *v90;
              (*v90)(v80, v76);
              v82(v81, v76);
              v15 = v89;
            }
          }

          v83 = v72 + v98;
          sub_10058B268(v100, type metadata accessor for ShareRecord);
          sub_10058B268(v99, type metadata accessor for ShareRecord);
          v71 = v94;
          if (v77)
          {
            break;
          }

          v84 = v103;
          a3 = v83;
          if (v72 < v97 || v83 >= v97)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v72 != v97)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v95 = v84;
          v69 = v84;
          v70 = v105;
          v67 = v98;
          if (v103 <= v104)
          {
            v40 = v71;
            v66 = v95;
            goto LABEL_67;
          }
        }

        a3 = v83;
        if (v72 < v94 || v83 >= v94)
        {
          v40 = v101;
          v70 = v105;
          swift_arrayInitWithTakeFrontToBack();
          v85 = v104;
        }

        else
        {
          v40 = v101;
          v85 = v104;
          v70 = v105;
          if (v72 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v69 = v97;
        v67 = v98;
        v66 = v95;
      }

      while (v97 > v85);
    }

LABEL_67:
    v108 = v40;
    v106 = v66;
  }

  else
  {
    v43 = v42 * v97;
    v99 = v86 - v37;
    if (a4 < a1 || a1 + v43 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v44 = v101;
      v45 = v40;
    }

    else
    {
      v44 = v101;
      v45 = v40;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v96 = (a4 + v43);
    v106 = a4 + v43;
    if (v43 >= 1 && v45 < a3)
    {
      v98 = v103 + 48;
      v91 = (v103 + 8);
      v92 = (v103 + 32);
      v95 = a3;
      v93 = v29;
      while (1)
      {
        v103 = a1;
        v104 = a4;
        v48 = v99;
        sub_10058B200(v45, v99, type metadata accessor for ShareRecord);
        sub_10058B200(a4, v44, type metadata accessor for ShareRecord);
        v49 = v105;
        v50 = v44;
        v51 = v100;
        sub_1000D2A70(v48 + *(v105 + 32), v100, &unk_101696900, &unk_10138B1E0);
        v52 = *v98;
        v53 = v102;
        if ((*v98)(v51, 1, v102) == 1)
        {
          goto LABEL_24;
        }

        v101 = v45;
        v54 = v93;
        v55 = *v92;
        (*v92)(v93, v100, v53);
        v56 = v50 + *(v49 + 32);
        v57 = v94;
        sub_1000D2A70(v56, v94, &unk_101696900, &unk_10138B1E0);
        if (v52(v57, 1, v53) == 1)
        {
          break;
        }

        v60 = v55;
        v61 = v90;
        v60(v90, v57, v53);
        v62 = v53;
        v63 = static Date.< infix(_:_:)();
        v64 = *v91;
        v65 = v61;
        v58 = v97;
        (*v91)(v65, v62);
        v64(v54, v62);
        sub_10058B268(v50, type metadata accessor for ShareRecord);
        sub_10058B268(v99, type metadata accessor for ShareRecord);
        v45 = v101;
        a4 = v104;
        v44 = v50;
        if (v63)
        {
          v59 = v103;
          if (v103 < v101 || v103 >= v101 + v58)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v103 != v101)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 += v58;
          goto LABEL_31;
        }

LABEL_25:
        v59 = v103;
        if (v103 < a4 || v103 >= a4 + v58)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v103 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v107 = a4 + v58;
        a4 += v58;
LABEL_31:
        a1 = v59 + v58;
        v108 = a1;
        if (a4 >= v96 || v45 >= v95)
        {
          goto LABEL_68;
        }
      }

      (*v91)(v54, v53);
      v51 = v57;
      v45 = v101;
      v48 = v99;
LABEL_24:
      sub_10000B3A8(v51, &unk_101696900, &unk_10138B1E0);
      sub_10058B268(v50, type metadata accessor for ShareRecord);
      sub_10058B268(v48, type metadata accessor for ShareRecord);
      v44 = v50;
      v58 = v97;
      a4 = v104;
      goto LABEL_25;
    }
  }

LABEL_68:
  sub_10060ABBC(&v108, &v107, &v106);
  return 1;
}

uint64_t sub_10057C4E8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_10057C5DC;

  return v6(v2 + 16);
}

uint64_t sub_10057C5DC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_10057C760(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsRelayAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1010A7B80(a1, v6, v1 + v5);
}

unint64_t sub_10057C844()
{
  result = qword_1016A46B0;
  if (!qword_1016A46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46B0);
  }

  return result;
}

unint64_t sub_10057C920(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return swift_errorRetain();
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_10057C95C()
{
  result = qword_1016A46B8;
  if (!qword_1016A46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46B8);
  }

  return result;
}

uint64_t sub_10057CA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014744;

  return sub_1010A6B68(a1, v4, v5, v6, v11, v7, v8, v9);
}

uint64_t sub_10057CB34(char a1)
{
  v3 = *(type metadata accessor for ShareRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100563B20(a1, v1 + v4, v6, v8, v9);
}

unint64_t sub_10057CC00()
{
  result = qword_1016BF380;
  if (!qword_1016BF380)
  {
    sub_1000BC580(&unk_1016BF350, &unk_1013E4AF0);
    sub_100003DFC(&qword_101698330, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BF380);
  }

  return result;
}

uint64_t sub_10057CDD4()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v22 = *(*(v1 - 1) + 64);
  v21 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v21;
  sub_100016590(*(v0 + v21), *(v0 + v21 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v21 + v3, v4);
  v6(v0 + v21 + v1[6], v4);
  v7 = *(v0 + v21 + v1[7] + 16);

  v8 = *(v0 + v21 + v1[8] + 8);

  v9 = *(v0 + v21 + v1[9] + 8);

  v10 = *(v0 + v21 + v1[10] + 8);

  v11 = v1[18];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v21 + v11, v12);
  v13 = v1[19];
  v14 = *(v5 + 48);
  if (!v14(v0 + v21 + v13, 1, v4))
  {
    v6(v2 + v13, v4);
  }

  v15 = v2 + v1[20];
  v16 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v16 + 20);
    if (!v14(v15 + v17, 1, v4))
    {
      v6(v15 + v17, v4);
    }
  }

  v18 = (v22 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18 + 8);

  return _swift_deallocObject(v0, v18 + 16);
}

uint64_t sub_10057D078(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

unint64_t sub_10057D12C()
{
  result = qword_1016A46D0;
  if (!qword_1016A46D0)
  {
    sub_1000BC580(&qword_1016A46C8, &unk_1013B2160);
    sub_100003DFC(&qword_1016A46D8, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46D0);
  }

  return result;
}

uint64_t sub_10057D1E0(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void **))
{
  v231 = a6;
  v230 = a4;
  v229 = a3;
  v228 = a2;
  v227 = a1;
  v179 = a13;
  v205 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v205 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v205);
  v204 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for DispatchTime();
  v19 = *(v184 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v184);
  v183 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v182 = &v179 - v23;
  v226 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v226 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v226);
  v225 = &v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for DispatchQoS();
  v27 = *(v237 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v237);
  v236 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for SecureLocationsRelayAction(0);
  v223 = *(v224 - 8);
  v30 = *(v223 + 64);
  v31 = __chkstk_darwin(v224);
  v221 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = v32;
  __chkstk_darwin(v31);
  v220 = &v179 - v33;
  v219 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v34 = *(*(v219 - 8) + 64);
  v35 = __chkstk_darwin(v219);
  v195 = &v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v218 = &v179 - v37;
  v217 = type metadata accessor for MessagingOptions(0);
  v38 = *(*(v217 - 8) + 64);
  __chkstk_darwin(v217);
  v251 = &v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v216 = &v179 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v250 = &v179 - v44;
  v253 = type metadata accessor for UUID();
  v193 = *(v253 - 8);
  v45 = *(v193 + 64);
  v46 = __chkstk_darwin(v253);
  v194 = &v179 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v249 = &v179 - v49;
  v181 = v50;
  __chkstk_darwin(v48);
  v198 = &v179 - v51;
  v52 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v199 = &v179 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v240 = &v179 - v56;
  v246 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v57 = *(*(v246 - 8) + 64);
  __chkstk_darwin(v246);
  v245 = (&v179 - v58);
  v259 = type metadata accessor for SystemInfo.DeviceLockState();
  v59 = *(v259 - 8);
  v60 = *(v59 + 64);
  v61 = __chkstk_darwin(v259);
  v258 = &v179 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v257 = &v179 - v63;
  v64 = dispatch_group_create();
  sub_1000BC4D4(&qword_1016A46E0, &qword_1013B0FF0);
  v65 = swift_allocObject();
  v66 = v65;
  *(v65 + 24) = 0;
  *(v65 + 16) = _swiftEmptyArrayStorage;
  v67 = *(a5 + 16);
  if (v67)
  {
    v248 = 0;
    v256 = (v59 + 104);
    v255 = (v59 + 8);
    v215 = (v193 + 56);
    v242 = (v193 + 16);
    v214 = a12;
    v213 = a11;
    v212 = (a8 & 1) == 0;
    v211 = a8 & 1;
    v235 = (v193 + 8);
    v203 = (v16 + 104);
    v210 = a10;
    v209 = a9;
    v202 = (v16 + 8);
    v254 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v234 = &v267;
    v233 = (v24 + 8);
    v201 = enum case for DispatchQoS.QoSClass.default(_:);
    v232 = (v27 + 8);
    v200 = (v193 + 32);
    v180 = (v19 + 8);
    v68 = (a5 + 48);
    v252 = xmmword_101385D80;
    v208 = xmmword_1013B0D90;
    v207 = xmmword_10138BBF0;
    v206 = a7 & 1;
    v244 = v64;
    v243 = v65;
    do
    {
      v262 = v68;
      v263 = v67;
      v70 = *(v68 - 16);
      v72 = *(v68 - 1);
      v71 = *v68;

      dispatch_group_enter(v64);
      v73 = swift_allocObject();
      *(v73 + 16) = v70;
      *(v73 + 24) = v72;
      *(v73 + 32) = v71;
      *(v73 + 40) = v66;
      *(v73 + 48) = v64;
      v261 = v73;
      v264 = v71;

      v260 = v64;
      sub_100908F24(_swiftEmptyArrayStorage);

      v74 = v257;
      static SystemInfo.lockState.getter();
      v75 = v258;
      v76 = v259;
      (*v256)(v258, v254, v259);
      sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      v77 = dispatch thunk of static Equatable.== infix(_:_:)();
      v78 = *v255;
      (*v255)(v75, v76);
      v78(v74, v76);
      if (v77)
      {
        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        type metadata accessor for SPOwnerSessionError(0);
        v271 = 5;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v69 = v245;
        *v245 = aBlock;
        swift_storeEnumTagMultiPayload();
        sub_100543540(v69, v70, v72, v264, v66, v260);
      }

      else
      {
        if (v70 == 2)
        {
          goto LABEL_19;
        }

        v79 = dispatch_group_create();
        v80 = v72;
        v81 = swift_allocObject();
        *(v81 + 16) = 0;
        v239 = v81 + 16;
        dispatch_group_enter(v79);
        v82 = *(v247 + 24);
        v83 = swift_allocObject();
        *(v83 + 16) = v81;
        *(v83 + 24) = v79;
        v84 = type metadata accessor for TaskPriority();
        v85 = *(v84 - 8);
        v86 = v240;
        (*(v85 + 56))(v240, 1, 1, v84);
        v87 = swift_allocObject();
        *(v87 + 16) = 0;
        *(v87 + 24) = 0;
        *(v87 + 32) = v82;
        *(v87 + 40) = v70;
        v241 = v80;
        *(v87 + 48) = v80;
        *(v87 + 56) = v264;
        *(v87 + 64) = sub_10058D6F8;
        *(v87 + 72) = v83;
        v88 = v86;
        v89 = v199;
        sub_1000D2A70(v88, v199, &qword_101698C00, &qword_10138B570);
        LODWORD(v83) = (*(v85 + 48))(v89, 1, v84);
        v90 = v81;

        v238 = v79;

        if (v83 == 1)
        {
          sub_10000B3A8(v89, &qword_101698C00, &qword_10138B570);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v85 + 8))(v89, v84);
        }

        v91 = *(v87 + 16);
        v92 = *(v87 + 24);
        swift_unknownObjectRetain();

        v72 = v241;
        if (v91)
        {
          swift_getObjectType();
          v93 = dispatch thunk of Actor.unownedExecutor.getter();
          v95 = v94;
          swift_unknownObjectRelease();
        }

        else
        {
          v93 = 0;
          v95 = 0;
        }

        sub_10000B3A8(v240, &qword_101698C00, &qword_10138B570);
        v96 = swift_allocObject();
        *(v96 + 16) = &unk_1013B0FF8;
        *(v96 + 24) = v87;
        if (v95 | v93)
        {
          v272 = 0;
          v273 = 0;
          v274 = v93;
          v275 = v95;
        }

        v64 = v244;
        v66 = v243;
        swift_task_create();

        v97 = v238;
        OS_dispatch_group.wait()();

        swift_beginAccess();
        LOBYTE(v97) = *(v90 + 16);

        if (v97)
        {
LABEL_19:
          v260 = *(v247 + 24);
          sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
          v98 = swift_allocObject();
          *(v98 + 16) = v252;
          *(v98 + 32) = v70;
          v99 = v264;
          *(v98 + 40) = v72;
          *(v98 + 48) = v99;
          v100 = *v215;
          v101 = v250;
          v102 = v253;
          (*v215)(v250, 1, 1, v253);

          v103 = v249;
          UUID.init()();
          v104 = v251;
          v241 = *v242;
          v241(v251, v103, v102);
          v105 = v216;
          sub_1000D2A70(v101, v216, &qword_1016980D0, &unk_10138F3B0);
          v106 = v217;
          v107 = *(v217 + 28);
          v100(v104 + v107, 1, 1, v102);
          *(v104 + v106[5]) = v98;
          *(v104 + v106[6]) = v212;
          sub_10002311C(v105, v104 + v107, &qword_1016980D0, &unk_10138F3B0);
          v108 = v104 + v106[8];
          *v108 = v231;
          *(v108 + 8) = v206;
          *(v104 + v106[9]) = v211;
          *(v104 + v106[10]) = v209;
          *(v104 + v106[11]) = v210;
          v109 = (v104 + v106[12]);
          v110 = v214;
          *v109 = v213;
          v109[1] = v110;
          *(v104 + v106[13]) = v208;
          v111 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
          v112 = v220;
          sub_10058B200(v104, &v220[*(v111 + 24)], type metadata accessor for MessagingOptions);
          *v112 = v227;
          v113 = v229;
          *(v112 + 8) = v228;
          *(v112 + 16) = v113;
          v114 = v230;
          *(v112 + 24) = v230;
          *(v112 + 32) = v207;
          swift_storeEnumTagMultiPayload();
          v115 = v221;
          sub_10058B200(v112, v221, type metadata accessor for SecureLocationsRelayAction);
          v116 = (*(v223 + 80) + 24) & ~*(v223 + 80);
          v117 = swift_allocObject();
          *(v117 + 16) = v260;
          sub_100589B28(v115, v117 + v116, type metadata accessor for SecureLocationsRelayAction);

          sub_100017D5C(v113, v114);

          v118 = v218;
          v119 = v248;
          unsafeFromAsyncTask<A>(_:)();
          if (v119)
          {

            sub_10058B268(v112, type metadata accessor for SecureLocationsRelayAction);
            v120 = v119;
            v121 = v235;
            goto LABEL_29;
          }

          sub_10058B268(v112, type metadata accessor for SecureLocationsRelayAction);

          v122 = v195;
          sub_10058B200(v118, v195, type metadata accessor for SecureLocationsRelayAction.Response);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v121 = v235;
          v124 = v200;
          if (EnumCaseMultiPayload == 4)
          {
            v248 = 0;
            sub_10058B268(v118, type metadata accessor for SecureLocationsRelayAction.Response);
            v125 = v253;
            v192 = *v121;
            v192(v249, v253);
            sub_10000B3A8(v250, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v251, type metadata accessor for MessagingOptions);
            v126 = v198;
            v127 = v122;
            v128 = v125;
            v260 = *v124;
            (v260)(v198, v127, v125);
            v129 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
            v130 = *(v129 + 48);
            v131 = *(v129 + 52);
            swift_allocObject();
            v132 = Future.init()();
            static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v133 = swift_allocObject();
            *(v133 + 16) = v252;
            v134 = UUID.uuidString.getter();
            v136 = v135;
            *(v133 + 56) = &type metadata for String;
            *(v133 + 64) = sub_100008C00();
            *(v133 + 32) = v134;
            *(v133 + 40) = v136;
            os_log(_:dso:log:_:_:)();

            v137 = v247;
            v138 = v126;
            v197 = *(v247 + 168);
            v139 = v194;
            v241(v194, v138, v128);
            v238 = *(v193 + 80);
            v191 = ((v238 + 24) & ~v238) + v181;
            v140 = (v238 + 24) & ~v238;
            v239 = v140;
            v141 = (v191 + 7) & 0xFFFFFFFFFFFFFFF8;
            v142 = swift_allocObject();
            *(v142 + 16) = v137;
            (v260)(v142 + v140, v139, v128);
            *(v142 + v141) = v132;
            v196 = v132;
            v269 = sub_10058D4DC;
            v270 = v142;
            aBlock = _NSConcreteStackBlock;
            v266 = 1107296256;
            v267 = sub_100006684;
            v268 = &unk_1016279E0;
            v143 = _Block_copy(&aBlock);

            v144 = v236;
            static DispatchQoS.unspecified.getter();
            v271 = _swiftEmptyArrayStorage;
            v187 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            v186 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            v188 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v145 = v225;
            v146 = v226;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v143);
            v190 = *v233;
            v190(v145, v146);
            v189 = *v232;
            v189(v144, v237);

            v147 = v194;
            v148 = v198;
            v241(v194, v198, v128);
            v149 = swift_allocObject();
            *(v149 + 16) = v137;
            (v260)(v149 + v239, v147, v128);
            v150 = (v149 + v141);
            v151 = v261;
            *v150 = sub_10057F26C;
            v150[1] = v151;

            Future.addSuccess(block:)();

            v152 = swift_allocObject();
            *(v152 + 16) = sub_10057F26C;
            *(v152 + 24) = v151;

            Future.addFailure(block:)();

            v153 = v183;
            static DispatchTime.now()();
            v154 = v148;
            v155 = v182;
            + infix(_:_:)();
            v185 = *v180;
            v156 = v184;
            v185(v153, v184);
            v157 = v154;
            v158 = v253;
            v241(v147, v157, v253);
            v159 = swift_allocObject();
            *(v159 + 16) = v137;
            (v260)(v159 + v239, v147, v158);
            v269 = sub_10058D4E0;
            v270 = v159;
            aBlock = _NSConcreteStackBlock;
            v266 = 1107296256;
            v267 = sub_100006684;
            v268 = &unk_101627A80;
            v160 = _Block_copy(&aBlock);

            v161 = v236;
            static DispatchQoS.unspecified.getter();
            v271 = _swiftEmptyArrayStorage;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v160);

            v190(v145, v146);
            v189(v161, v237);
            v185(v155, v156);
            v192(v198, v253);
          }

          else
          {
            sub_10058B268(v122, type metadata accessor for SecureLocationsRelayAction.Response);
            sub_10057C844();
            v120 = swift_allocError();
            swift_willThrow();
            sub_10058B268(v118, type metadata accessor for SecureLocationsRelayAction.Response);
LABEL_29:
            v248 = 0;
            (*v121)(v249, v253);
            sub_10000B3A8(v250, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v251, type metadata accessor for MessagingOptions);
            static os_log_type_t.error.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v164 = swift_allocObject();
            *(v164 + 16) = v252;
            aBlock = v120;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v165 = String.init<A>(describing:)();
            v167 = v166;
            *(v164 + 56) = &type metadata for String;
            *(v164 + 64) = sub_100008C00();
            *(v164 + 32) = v165;
            *(v164 + 40) = v167;
            os_log(_:dso:log:_:_:)();

            sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
            v168 = v204;
            v169 = v205;
            (*v203)(v204, v201, v205);
            v170 = static OS_dispatch_queue.global(qos:)();
            (*v202)(v168, v169);
            v171 = swift_allocObject();
            v172 = v261;
            v171[2] = sub_10057F26C;
            v171[3] = v172;
            v171[4] = v120;
            v269 = sub_10058D73C;
            v270 = v171;
            aBlock = _NSConcreteStackBlock;
            v266 = 1107296256;
            v267 = sub_100006684;
            v268 = &unk_101627990;
            v173 = _Block_copy(&aBlock);

            swift_errorRetain();
            v174 = v236;
            static DispatchQoS.unspecified.getter();
            v271 = _swiftEmptyArrayStorage;
            sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
            v175 = v225;
            v176 = v226;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v173);

            (*v233)(v175, v176);
            (*v232)(v174, v237);
          }

          v64 = v244;
          v66 = v243;
          goto LABEL_7;
        }

        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v162 = swift_allocObject();
        *(v162 + 16) = v252;
        *(v162 + 56) = &type metadata for String;
        *(v162 + 64) = sub_100008C00();
        v163 = v264;
        *(v162 + 32) = v72;
        *(v162 + 40) = v163;

        os_log(_:dso:log:_:_:)();

        type metadata accessor for SPOwnerSessionError(0);
        v271 = 12;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v69 = v245;
        *v245 = aBlock;
        swift_storeEnumTagMultiPayload();
        sub_100543540(v69, v70, v72, v163, v66, v260);
      }

      sub_10000B3A8(v69, &qword_10169F358, &qword_1013A0810);
LABEL_7:
      v68 = v262 + 3;
      v67 = v263 - 1;
    }

    while (v263 != 1);
  }

  OS_dispatch_group.wait()();
  v177 = v179;
  if (v179)
  {
    sub_1000BC4D4(&qword_1016A46E8, &qword_1013B1008);
    OSAllocatedUnfairLock<A>.stateSnapshot.getter();
    v177(aBlock);
  }
}

void sub_10057F27C(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  dispatch_group_leave(v3);
}

unint64_t sub_10057F2EC()
{
  result = qword_1016A46F8;
  if (!qword_1016A46F8)
  {
    sub_1000BC580(&qword_1016A46F0, &qword_1013B1020);
    sub_100003DFC(&qword_1016A4700, type metadata accessor for BeaconObservation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A46F8);
  }

  return result;
}

unint64_t sub_10057F3A0()
{
  result = qword_1016A4718;
  if (!qword_1016A4718)
  {
    sub_1000BC580(&qword_1016A4710, &qword_1013B1030);
    sub_100003DFC(&qword_10169A618, type metadata accessor for CircleTrustDeclineEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4718);
  }

  return result;
}

uint64_t sub_10057F454()
{
  v1 = *(*(type metadata accessor for OwnedBeaconRecord() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_100546CB0();
}

uint64_t sub_10057F4B8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014744;

  return sub_100546944(a1, v1 + v5, v9, v10);
}

uint64_t sub_10057F5E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BA6C8;

  return sub_100546C24(v2, v3);
}

uint64_t sub_10057F698()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10054712C(v2, v3, v4);
}

uint64_t sub_10057F6FC()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10057624C(v4, v0 + v3);
}

uint64_t sub_10057F7D4()
{
  v2 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_1005764AC(v0 + v3, v4);
}

uint64_t sub_10057F8D8()
{
  v1 = v0;
  v82 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v82 - 8);
  v2 = *(v84 + 64);
  __chkstk_darwin(v82);
  v80 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  v4 = *(v81 + 64);
  __chkstk_darwin(v83);
  v79 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v75 = &v67 - v8;
  v9 = sub_1000BC4D4(&qword_1016A4930, &qword_1013B1300);
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v76 = &v67 - v12;
  v69 = sub_1000BC4D4(&qword_1016A4938, &qword_1013B1308);
  v70 = *(v69 - 8);
  v13 = *(v70 + 64);
  __chkstk_darwin(v69);
  v15 = &v67 - v14;
  v71 = sub_1000BC4D4(&qword_1016A4940, &qword_1013B1310);
  v72 = *(v71 - 8);
  v16 = *(v72 + 64);
  __chkstk_darwin(v71);
  v18 = &v67 - v17;
  v73 = sub_1000BC4D4(&qword_1016A4948, &qword_1013B1318);
  v74 = *(v73 - 1);
  v19 = *(v74 + 64);
  __chkstk_darwin(v73);
  v68 = &v67 - v20;
  v21 = v0[3];
  v22 = v21[5];
  v23 = v21[6];
  v21[5] = sub_10058AE90;
  v21[6] = v1;

  sub_1000BB27C(v22);
  v24 = v21[7];
  v25 = v21[8];
  v21[7] = sub_10058AED4;
  v21[8] = v1;

  sub_1000BB27C(v24);
  v26 = v21[9];
  v27 = v21[10];
  v21[9] = sub_10058AF08;
  v21[10] = v1;

  sub_1000BB27C(v26);
  v28 = v21[11];
  v29 = v21[12];
  v21[11] = sub_10058AF38;
  v21[12] = v1;

  sub_1000BB27C(v28);
  v30 = v21[13];
  v31 = v21[14];
  v21[13] = sub_10058AF40;
  v21[14] = v1;

  sub_1000BB27C(v30);
  v32 = v1[4];
  v33 = v32[10];
  v34 = v32[11];
  v32[10] = sub_10058AF48;
  v32[11] = v1;

  sub_1000BB27C(v33);
  v35 = v32[12];
  v36 = v32[13];
  v32[12] = sub_10058AF8C;
  v32[13] = v1;

  sub_1000BB27C(v35);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10058AFC0;
  *(v37 + 24) = v1;
  v38 = v32[14];
  v39 = v32[15];
  v32[14] = sub_10058AFF0;
  v32[15] = v37;

  sub_1000BB27C(v38);
  v40 = v32[20];
  v41 = v32[21];
  v32[20] = sub_10058B03C;
  v32[21] = v1;

  sub_1000BB27C(v40);
  aBlock = v1[42];

  sub_1000BC4D4(&unk_1016B2870, &qword_1013B1320);
  sub_1000BC4D4(&qword_1016A4950, &qword_1013B1328);
  v67 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_101697B68, &unk_1016B2870, &qword_1013B1320);
  Publisher.map<A>(_:)();

  sub_1000BC4D4(&qword_1016A4958, &qword_1013B1330);
  v42 = v69;
  Publishers.Map.map<A>(_:)();
  (*(v70 + 8))(v15, v42);
  sub_1000041A4(&qword_1016A4960, &qword_1016A4940, &qword_1013B1310);
  sub_10058B044();
  v43 = v68;
  v44 = v71;
  Publisher<>.removeDuplicates()();
  (*(v72 + 8))(v18, v44);
  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A4978, &qword_1016A4948, &qword_1013B1318);
  v45 = v73;
  v46 = Publisher<>.sink(receiveValue:)();

  (*(v74 + 8))(v43, v45);
  v47 = v1[26];
  v1[26] = v46;

  v48 = v1[18];
  v74 = sub_100A96AF8();
  aBlock = v74;
  v91[0] = v1[25];
  v49 = v91[0];
  v50 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v51 = v75;
  (*(*(v50 - 8) + 56))(v75, 1, 1, v50);
  v73 = v49;
  sub_1000BC4D4(&qword_1016A4980, &qword_1013B1338);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016A4988, &qword_1016A4980, &qword_1013B1338);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr);
  v52 = v76;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v51, &unk_1016B0FE0, &unk_101391980);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016A4990, &qword_1016A4930, &qword_1013B1300);
  v53 = v77;
  v54 = Publisher<>.sink(receiveValue:)();

  (v78[1])(v52, v53);
  v55 = v1[27];
  v1[27] = v54;

  swift_weakInit();
  swift_weakInit();
  swift_weakAssign();
  swift_weakAssign();
  v92 = 0;
  swift_beginAccess();
  sub_10002311C(v91, (v1 + 8), &qword_1016A4998, &qword_1013B1340);
  swift_endAccess();
  v56 = v1[21];
  swift_weakInit();
  swift_weakAssign();
  v91[1] = v56;
  swift_beginAccess();
  v77 = v56;
  sub_10002311C(v91, (v1 + 11), &qword_1016A49A0, &unk_1013B1348);
  swift_endAccess();
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = v21;
  *(v58 + 24) = v57;
  v89 = sub_10058B12C;
  v90 = v58;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v78 = &v87;
  v87 = sub_100006684;
  v88 = &unk_101629150;
  v59 = _Block_copy(&aBlock);

  v60 = v79;
  static DispatchQoS.unspecified.getter();
  v91[0] = _swiftEmptyArrayStorage;
  sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v61 = v80;
  v62 = v82;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v59);
  (*(v84 + 8))(v61, v62);
  (*(v81 + 8))(v60, v83);

  sub_100579FAC();
  v63 = v1[7];
  v64 = swift_allocObject();
  *(v64 + 16) = sub_10058D4E4;
  *(v64 + 24) = v1;
  v89 = sub_10040B9F8;
  v90 = v64;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10013FE14;
  v88 = &unk_1016291A0;
  v65 = _Block_copy(&aBlock);

  dispatch_sync(v63, v65);
  _Block_release(v65);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100580650(int a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  LODWORD(v54) = a1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v45 - v6;
  v8 = dispatch_group_create();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v53 = v9 + 16;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  dispatch_group_enter(v8);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v8;
  v12 = type metadata accessor for TaskPriority();
  v13 = (*(v12 - 8) + 56);
  v52 = *v13;
  v52(v7, 1, 1, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = sub_10058C978;
  *(v14 + 40) = v11;
  v15 = v7;
  *(v14 + 48) = v54;
  *(v14 + 56) = v55;
  *(v14 + 64) = a3;

  v55 = v10;

  v16 = v8;

  sub_10025EDD4(0, 0, v15, &unk_1013B13B8, v14);

  OS_dispatch_group.wait()();
  swift_beginAccess();
  if (!*(v10 + 16))
  {
    v48 = v13;
    v49 = v12;
    swift_beginAccess();
    v22 = *(v9 + 24);
    v23 = v9;
    if (!v22)
    {

      goto LABEL_16;
    }

    v46 = v15;
    v47 = *(v9 + 16);
    v53 = v22;

    v24 = dispatch_group_create();
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v50 = (v25 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = (v26 + 16);
    dispatch_group_enter(v24);
    v28 = swift_allocObject();
    v28[2] = v25;
    v28[3] = v26;
    v28[4] = v24;
    v29 = qword_1016944B0;
    swift_retain_n();
    v54 = v24;

    if (v29 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&qword_1016A4A28, &qword_1013B13C0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v30 = v56;
    v51 = v23;
    if (v56)
    {
      static os_log_type_t.debug.getter();
      if (qword_101695058 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      swift_beginAccess();
      v31 = *(v25 + 16);
      *(v25 + 16) = v30;

      v32 = v54;
      dispatch_group_leave(v54);
    }

    else
    {
      sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v33 = v56;
      if ((v57 & 1) == 0)
      {
        sub_100527E88(v56);
        v41 = v40;
        sub_1001DB7B8(v33, 0);
        v42 = sub_101129FC8(v41);

        v43 = v46;
        v52(v46, 1, 1, v49);
        v44 = swift_allocObject();
        v44[2] = 0;
        v44[3] = 0;
        v44[4] = v42;
        v44[5] = sub_10058CABC;
        v44[6] = v28;
        sub_10025EDD4(0, 0, v43, &unk_1013B13C8, v44);

        v32 = v54;
        goto LABEL_20;
      }

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      swift_willThrowTypedImpl();
      v56 = v33;
      swift_errorRetain();
      swift_errorRetain();
      swift_willThrowTypedImpl();
      swift_beginAccess();
      v34 = *v27;
      *v27 = v33;

      v32 = v54;
      dispatch_group_leave(v54);

      sub_1001DB7B8(v33, 1);
      sub_1001DB7B8(v33, 1);
    }

LABEL_20:
    OS_dispatch_group.wait()();
    swift_beginAccess();
    if (*v27)
    {
      v52 = v26;
      swift_errorRetain();

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_101385D80;
      v36 = _convertErrorToNSError(_:)();
      *(v35 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v35 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr);
      *(v35 + 32) = v36;
      os_log(_:dso:log:_:_:)();

      goto LABEL_5;
    }

    v37 = v50;
    swift_beginAccess();
    v38 = *v37;
    if (*v37)
    {
      v39 = *v37;

      v20 = sub_10111EACC(v47, v53, v38);

      return v20 & 1;
    }

LABEL_16:

    goto LABEL_6;
  }

  v17 = *(v10 + 16);
  swift_errorRetain();
  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  v19 = _convertErrorToNSError(_:)();
  *(v18 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
  *(v18 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr);
  *(v18 + 32) = v19;
  os_log(_:dso:log:_:_:)();

LABEL_5:

LABEL_6:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_100580FCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v54 = a5;
  v55 = a6;
  v51 = a4;
  v53 = a3;
  v52 = a2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v49 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v15;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v16 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &unk_101695C20, &unk_101386D90);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v59 = &type metadata for Bool;
  LOBYTE(v58) = 1;
  sub_1001E6224(&v58, v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v16;
  sub_100FFB368(v57, v17, v19, isUniquelyReferenced_nonNull_native);

  v21 = v56;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v25 = UUID.data.getter();
  v59 = &type metadata for Data;
  *&v58 = v25;
  *(&v58 + 1) = v26;
  sub_1001E6224(&v58, v57);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v21;
  sub_100FFB368(v57, v22, v24, v27);

  v28 = v56;
  if (v52)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    v59 = &type metadata for Bool;
    LOBYTE(v58) = 1;
    sub_1001E6224(&v58, v57);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v28;
    sub_100FFB368(v57, v29, v31, v32);

    v28 = v56;
  }

  sub_1000D2A70(v53, v9, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v33 = v50;
    (*(v11 + 32))(v50, v9, v10);
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = UUID.uuidString.getter();
    v59 = &type metadata for String;
    *&v58 = v37;
    *(&v58 + 1) = v38;
    sub_1001E6224(&v58, v57);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v28;
    sub_100FFB368(v57, v34, v36, v39);

    (*(v11 + 8))(v33, v10);
    v28 = v56;
    if (v54)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  if ((v54 & 1) == 0)
  {
LABEL_7:
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    v59 = &type metadata for Double;
    *&v58 = v51;
    sub_1001E6224(&v58, v57);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v28;
    sub_100FFB368(v57, v40, v42, v43);

    v28 = v56;
  }

LABEL_8:
  if (v55)
  {
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    v59 = &type metadata for Bool;
    LOBYTE(v58) = 1;
    sub_1001E6224(&v58, v57);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v28;
    sub_100FFB368(v57, v44, v46, v47);

    return v56;
  }

  return v28;
}

void *sub_10058149C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (v5)
  {
LABEL_10:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
    v11 = *(*(a1 + 56) + v10);
    v12 = *(v11 + 16);
    v13 = v8[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);

      __break(1u);
      return result;
    }

    v15 = *(*(a1 + 56) + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v14 > v8[3] >> 1)
    {
      if (v13 <= v14)
      {
        v17 = v13 + v12;
      }

      else
      {
        v17 = v13;
      }

      v8 = sub_100A5C944(isUniquelyReferenced_nonNull_native, v17, 1, v8);
    }

    v5 &= v5 - 1;
    if (*(v11 + 16))
    {
      v18 = (v8[3] >> 1) - v8[2];
      v19 = *(type metadata accessor for ShareRecord() - 8);
      if (v18 < v12)
      {
        goto LABEL_27;
      }

      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v19 + 72);
      swift_arrayInitWithCopy();

      if (v12)
      {
        v22 = v8[2];
        v23 = __OFADD__(v22, v12);
        v24 = v22 + v12;
        if (v23)
        {
          goto LABEL_28;
        }

        v8[2] = v24;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v26 = v8;

  sub_100579F04(&v26);

  return v26;
}

uint64_t sub_1005816AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a2;
  v7 = type metadata accessor for ShareInstruction();
  v103 = *(v7 - 8);
  v8 = *(v103 + 64);
  __chkstk_darwin(v7);
  v104 = v9;
  v105 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v10 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v116 = &v102 - v11;
  v12 = type metadata accessor for Date();
  v113 = *(v12 - 8);
  v114 = v12;
  v13 = *(v113 + 64);
  __chkstk_darwin(v12);
  v112 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v102 - v17;
  v121 = type metadata accessor for ShareRecord();
  *&v120 = *(v121 - 8);
  v19 = *(v120 + 64);
  v20 = __chkstk_darwin(v121);
  v109 = (&v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v107 = &v102 - v23;
  __chkstk_darwin(v22);
  v110 = &v102 - v24;
  v25 = swift_allocObject();
  v117 = a3;
  v118 = a4;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v122 = v25;

  LODWORD(v119) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v126 = qword_10177C378;
  v123 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  v106 = xmmword_10138BBE0;
  *(v26 + 16) = xmmword_10138BBE0;
  v27 = a1 + *(v7 + 24);
  v28 = *(type metadata accessor for OwnedBeaconRecord() + 20);
  v29 = UUID.uuidString.getter();
  v31 = v30;
  *(v26 + 56) = &type metadata for String;
  v32 = sub_100008C00();
  *(v26 + 64) = v32;
  *(v26 + 32) = v29;
  *(v26 + 40) = v31;
  v108 = v7;
  v33 = *(v7 + 32);
  v111 = a1;
  v34 = a1 + v33;
  v35 = UUID.uuidString.getter();
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v32;
  v124 = v32;
  *(v26 + 72) = v35;
  *(v26 + 80) = v36;
  os_log(_:dso:log:_:_:)();

  v37 = v28;
  v38 = v125;
  sub_100541328(v34, v18);
  v39 = v121;
  if ((*(v120 + 48))(v18, 1, v121) != 1)
  {
    v72 = v110;
    sub_100589B28(v18, v110, type metadata accessor for ShareRecord);
    static os_log_type_t.default.getter();
    v73 = swift_allocObject();
    v120 = xmmword_101385D80;
    *(v73 + 16) = xmmword_101385D80;
    sub_10058B200(v72, v107, type metadata accessor for ShareRecord);
    v74 = String.init<A>(describing:)();
    v75 = v124;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = v75;
    *(v73 + 32) = v74;
    *(v73 + 40) = v76;
    os_log(_:dso:log:_:_:)();

    v77 = (v72 + v39[10]);
    v79 = *v77;
    v78 = v77[1];
    v80 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v80 = v79 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {
      static os_log_type_t.default.getter();
      v81 = swift_allocObject();
      *(v81 + 16) = v120;
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = v75;
      *(v81 + 32) = v79;
      *(v81 + 40) = v78;
    }

    else
    {
      v87 = *(v125 + 320);
      v88 = sub_1010B2678(v72 + v39[7], 0);
      v90 = v113;
      v89 = v114;
      if (v88)
      {
        v91 = *(v87 + 24);
        __chkstk_darwin(v88);
        *(&v102 - 4) = v87;
        *(&v102 - 24) = 0;
        *(&v102 - 2) = v34;
        v92 = v112;
        OS_dispatch_queue.sync<A>(execute:)();
        LOBYTE(v91) = sub_1010B2678(v92, 0);
        v93 = *(v90 + 8);
        v93(v92, v89);
        if (v91)
        {
          v94 = v112;
          static Date.trustedNow.getter(v112);
          sub_1010B1D04(v34, v94, 0);
          v93(v94, v89);
          sub_1010B22E4(v34, 1);
          sub_100541920(v111, v125);
LABEL_17:
          v100 = v116;
          sub_10058B200(v72, v116, type metadata accessor for ShareRecord);
          swift_storeEnumTagMultiPayload();
          sub_100540EAC(v100, v117, v118);
          sub_10000B3A8(v100, &unk_1016B1650, &unk_1013B1110);
          goto LABEL_18;
        }
      }

      static os_log_type_t.default.getter();
      v95 = swift_allocObject();
      *(v95 + 16) = v120;
      v96 = v72 + v39[5];
      v97 = UUID.uuidString.getter();
      v98 = v124;
      *(v95 + 56) = &type metadata for String;
      *(v95 + 64) = v98;
      *(v95 + 32) = v97;
      *(v95 + 40) = v99;
    }

    os_log(_:dso:log:_:_:)();

    goto LABEL_17;
  }

  v40 = v38;
  sub_10000B3A8(v18, &qword_1016A4780, &qword_1013B34F0);
  static os_log_type_t.default.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v106;
  v102 = v37;
  v42 = UUID.uuidString.getter();
  v43 = v124;
  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = v43;
  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  v45 = UUID.uuidString.getter();
  *(v41 + 96) = &type metadata for String;
  *(v41 + 104) = v43;
  *(v41 + 72) = v45;
  *(v41 + 80) = v46;
  os_log(_:dso:log:_:_:)();

  v47 = *(v38 + 144);
  v48 = *(v47 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  v110 = v47;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *&v120 = 0;
  v49 = v27;
  v119 = sub_10130980C(v27, v127);

  v50 = v39[5];
  v51 = type metadata accessor for UUID();
  v52 = *(*(v51 - 8) + 16);
  v53 = v109;
  v52(v109 + v50, v34, v51);
  v52(v53 + v39[6], v49 + v102, v51);
  static Date.trustedNow.getter(v53 + v39[7]);
  v54 = v108;
  v55 = v111;
  sub_1000D2A70(v111 + *(v108 + 36), v53 + v39[8], &unk_101696900, &unk_10138B1E0);
  v56 = v55 + *(v54 + 28);
  v57 = *v56;
  *v53 = xmmword_10138C660;
  v58 = v53 + v39[9];
  *v58 = v57;
  v59 = *(v56 + 16);
  *(v58 + 1) = *(v56 + 8);
  *(v58 + 2) = v59;
  v60 = (v53 + v39[10]);
  *v60 = 0;
  v60[1] = 0xE000000000000000;
  *(v53 + v39[11]) = v119;
  *(v53 + v39[12]) = 1;
  v61 = *(v40 + 320);
  v62 = *(v61 + 24);
  __chkstk_darwin(v59);
  *(&v102 - 4) = v61;
  *(&v102 - 24) = 0;
  *(&v102 - 2) = v34;

  v63 = v112;
  v64 = v114;
  OS_dispatch_queue.sync<A>(execute:)();
  LOBYTE(v62) = sub_1010B2678(v63, 0);
  v65 = *(v113 + 8);
  v65(v63, v64);
  if (v62)
  {
    static Date.trustedNow.getter(v63);
    sub_1010B1D04(v34, v63, 0);
    v65(v63, v64);
    sub_1010B22E4(v34, 1);
    v66 = v105;
    sub_10058B200(v55, v105, type metadata accessor for ShareInstruction);
    v67 = (*(v103 + 80) + 24) & ~*(v103 + 80);
    v68 = (v104 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    *(v69 + 16) = v125;
    sub_100589B28(v66, v69 + v67, type metadata accessor for ShareInstruction);
    v70 = (v69 + v68);
    v71 = v122;
    *v70 = sub_100589280;
    v70[1] = v71;

    sub_1006DF24C(v53, 0, sub_100589288, v69);
  }

  else
  {
    static os_log_type_t.default.getter();
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_101385D80;
    v83 = UUID.uuidString.getter();
    v84 = v124;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 64) = v84;
    *(v82 + 32) = v83;
    *(v82 + 40) = v85;
    os_log(_:dso:log:_:_:)();

    v86 = v116;
    sub_10058B200(v53, v116, type metadata accessor for ShareRecord);
    swift_storeEnumTagMultiPayload();
    sub_100540EAC(v86, v117, v118);
    sub_10000B3A8(v86, &unk_1016B1650, &unk_1013B1110);
  }

  v72 = v53;
LABEL_18:
  sub_10058B268(v72, type metadata accessor for ShareRecord);
}

uint64_t sub_100582460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = (a2 + *(v4 + 32));
  v6 = *v5;
  v7 = v5[1];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v9 = type metadata accessor for MessagingMessageContext();
  if (v8)
  {
    v10 = (a1 + *(v9 + 48));
    if (v6 != *v10 || v7 != v10[1])
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 1;
  }

  v13 = a1 + *(v9 + 24);
  v15 = *(v13 + 8);
  v14 = *(v13 + 16);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v16 _stripPotentialTokenURIWithToken:0];

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = a2 + *(v4 + 28);
    if (*(v21 + 8) != v18 || *(v21 + 16) != v20)
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v23 & 1;
    }

    return 1;
  }

  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = v15;
  *(v24 + 40) = v14;

  os_log(_:dso:log:_:_:)();

  return 0;
}

uint64_t sub_100582674()
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v1 = v0;
  sub_1000BC4D4(&qword_1016A4770, &qword_1013E4E70);
  unsafeFromAsyncTask<A>(_:)();
  if (v0)
  {
    v2 = v0;
    if ((v16 & 1) == 0)
    {
      swift_errorRetain();
      static os_log_type_t.error.getter();
      if (qword_101695058 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_101385D80;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v4 = String.init<A>(describing:)();
      v6 = v5;
      *(v3 + 56) = &type metadata for String;
      *(v3 + 64) = sub_100008C00();
      *(v3 + 32) = v4;
      *(v3 + 40) = v6;
      os_log(_:dso:log:_:_:)();

      swift_willThrow();
      sub_1001DB7B8(v0, 1);
      v7 = 0;
LABEL_14:
      sub_1001DB7B8(v15, v7);
      return v15;
    }

LABEL_11:
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    swift_willThrow();
    sub_1001DB7B8(v2, v1 != 0);
    v7 = 1;
    goto LABEL_14;
  }

  v2 = v15;
  v8 = qword_101694CF0;

  if (v8 != -1)
  {
    v9 = swift_once();
  }

  __chkstk_darwin(v9);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1001DB7B8(v15, 0);
  if (v16)
  {
    goto LABEL_11;
  }

  return v15;
}

uint64_t sub_100582A7C()
{
  v2 = sub_100582674();
  if (v1)
  {
    return v0;
  }

  v4 = v3;
  v5 = v2;
  v6 = [objc_opt_self() defaultStore];
  if (!v6)
  {
    goto LABEL_83;
  }

  v7 = v6;
  v8 = [v6 aa_primaryAppleAccount];

  if (!v8)
  {

    static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v0 = v112;
    swift_willThrow();
    return v0;
  }

  v9 = [v8 username];
  if (!v9)
  {
    goto LABEL_88;
  }

  v10 = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  if (!v13)
  {

    static os_log_type_t.error.getter();
    if (qword_101695058 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v0 = v112;
    swift_willThrow();

    return v0;
  }

  v14 = v11;
  v15 = v12;
  v16 = v13;
  v108 = v5;
  sub_100527E88(v5);
  v18 = sub_101129FC8(v17);

  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v14;
  v20 = inited + 32;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  v21 = sub_101129FC8(inited);
  swift_setDeallocating();
  sub_1001BAE8C(v20);
  v102 = v8;
  if (*(v21 + 16) <= v18[2] >> 3)
  {
    v112 = v18;
    sub_10087D930(v21);

    v106 = v18;
  }

  else
  {
    v106 = sub_100614D54(v21, v18);
  }

  v23 = v4 + 56;
  v24 = 1 << *(v4 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v4 + 56);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v110 = _swiftEmptyArrayStorage;
  for (i = v4; v26; v4 = i)
  {
LABEL_23:
    v30 = (*(v4 + 48) + 40 * (__clz(__rbit64(v26)) | (v28 << 6)));
    v31 = v30[2];
    v32 = v30[4];
    v112 = *v30;
    v113 = v30[1];
    sub_1000DF96C();

    v33 = StringProtocol.contains<A>(_:)();
    v34 = String._bridgeToObjectiveC()();
    if (v33)
    {
      v35 = IDSCopyIDForEmailAddress();

      if (!v35)
      {
        goto LABEL_84;
      }

      v36 = 0;
    }

    else
    {
      v35 = IDSCopyIDForPhoneNumber();

      if (!v35)
      {
        goto LABEL_85;
      }

      v36 = 1;
    }

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_100A5C1F8(0, *(v110 + 2) + 1, 1, v110);
    }

    v41 = *(v110 + 2);
    v40 = *(v110 + 3);
    if (v41 >= v40 >> 1)
    {
      v110 = sub_100A5C1F8((v40 > 1), v41 + 1, 1, v110);
    }

    *(v110 + 2) = v41 + 1;
    v42 = &v110[24 * v41];
    v42[32] = v36;
    v26 &= v26 - 1;
    *(v42 + 5) = v37;
    *(v42 + 6) = v39;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      v103 = sub_101129FC8(v110);

      static os_log_type_t.default.getter();
      if (qword_101695058 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_80;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  swift_once();
LABEL_35:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_101385D80;
  sub_100589064();
  v44 = Set.description.getter();
  v46 = v45;
  *(v43 + 56) = &type metadata for String;
  v47 = sub_100008C00();
  *(v43 + 64) = v47;
  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_101385D80;
  v49 = Set.description.getter();
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = v47;
  *(v48 + 32) = v49;
  *(v48 + 40) = v50;
  os_log(_:dso:log:_:_:)();

  v119 = _swiftEmptyDictionarySingleton;
  v109 = sub_100A03FDC(v103, v106);

  v51 = v108;
  if ((v108 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    sub_100009D18(&qword_1016A4758, &qword_1016996A0, FAFamilyMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v51 = v114;
    v52 = v115;
    v53 = v116;
    j = v117;
    v55 = v118;
  }

  else
  {
    j = 0;
    v56 = -1 << *(v108 + 32);
    v52 = v108 + 56;
    v53 = ~v56;
    v57 = -v56;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v55 = v58 & *(v108 + 56);
  }

  v59 = (v53 + 64) >> 6;
  v103 = _swiftEmptyDictionarySingleton;
  v108 = v51;
  while (2)
  {
    v60 = j;
    v61 = v55;
    if (v51 < 0)
    {
LABEL_45:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
        swift_dynamicCast();
        v64 = v112;
        j = v60;
        v65 = v61;
        goto LABEL_52;
      }

LABEL_77:
      sub_1000128F8();
      v98 = sub_1005285EC(v109, &v119);

      v0 = sub_10039CA08(v98);

      return v0;
    }

    while (1)
    {
      while (1)
      {
        v66 = v60;
        v67 = v61;
        for (j = v60; !v67; ++v66)
        {
          j = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_79;
          }

          if (j >= v59)
          {
            goto LABEL_77;
          }

          v67 = *(v52 + 8 * j);
        }

        v65 = (v67 - 1) & v67;
        v64 = *(*(v51 + 48) + ((j << 9) | (8 * __clz(__rbit64(v67)))));
LABEL_52:
        if (!v64)
        {
          goto LABEL_77;
        }

        v111 = v65;
        v68 = [v64 appleID];
        if (v68)
        {
          break;
        }

        LODWORD(v106) = static os_log_type_t.error.getter();
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_101385D80;
        *(v62 + 56) = sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
        *(v62 + 64) = sub_100009D18(&qword_1016A4760, &qword_1016996A0, FAFamilyMember_ptr);
        *(v62 + 32) = v64;
        v63 = v64;
        os_log(_:dso:log:_:_:)();

        v60 = j;
        v61 = v65;
        if (v51 < 0)
        {
          goto LABEL_45;
        }
      }

      v69 = v68;
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000DF96C();
      if (StringProtocol.contains<A>(_:)())
      {
        v70 = IDSCopyIDForEmailAddress();

        if (!v70)
        {
          goto LABEL_87;
        }

        v71 = 0;
      }

      else
      {
        v70 = IDSCopyIDForPhoneNumber();

        if (!v70)
        {
          goto LABEL_86;
        }

        v71 = 1;
      }

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      if ((sub_10111FDB4(v71, v72, v74, v109) & 1) == 0)
      {

        goto LABEL_63;
      }

      v75 = [v64 altDSID];
      if (v75)
      {
        break;
      }

      static os_log_type_t.error.getter();
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_101385D80;
      *(v76 + 56) = sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
      *(v76 + 64) = sub_100009D18(&qword_1016A4760, &qword_1016996A0, FAFamilyMember_ptr);
      *(v76 + 32) = v64;
      v77 = v64;
      os_log(_:dso:log:_:_:)();

LABEL_63:
      v60 = j;
      v61 = v111;
      v51 = v108;
      if (v108 < 0)
      {
        goto LABEL_45;
      }
    }

    v78 = v75;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v101 = String.utf8Data.getter();
    v106 = v79;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v119;
    v81 = sub_100772110(v71, v72, v74);
    v82 = v119[2];
    v83 = (v80 & 1) == 0;
    v84 = v82 + v83;
    if (__OFADD__(v82, v83))
    {
      __break(1u);
    }

    else
    {
      if (v119[3] >= v84)
      {
        v55 = v111;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v105 = v81;
          v100 = v80;
          sub_101009250();
          v80 = v100;
          v81 = v105;
          goto LABEL_69;
        }
      }

      else
      {
        v99 = v80;
        sub_100FEECE4(v84, isUniquelyReferenced_nonNull_native);
        v85 = sub_100772110(v71, v72, v74);
        v87 = v86 & 1;
        v80 = v99;
        if ((v99 & 1) != v87)
        {
          goto LABEL_89;
        }

        v81 = v85;
LABEL_69:
        v55 = v111;
      }

      if (v80)
      {
        v88 = v81;

        v89 = v119;
        v90 = (v119[7] + 16 * v88);
        v91 = *v90;
        v92 = v90[1];
        *v90 = v101;
        v90[1] = v106;
        sub_100016590(v91, v92);

LABEL_75:
        v51 = v108;
        v103 = v89;
        v119 = v89;
        continue;
      }

      v119[(v81 >> 6) + 8] |= 1 << v81;
      v93 = v112[6] + 24 * v81;
      *v93 = v71;
      v89 = v112;
      *(v93 + 8) = v72;
      *(v93 + 16) = v74;
      v94 = (v112[7] + 16 * v81);
      *v94 = v101;
      v94[1] = v106;

      v95 = v112[2];
      v96 = __OFADD__(v95, 1);
      v97 = v95 + 1;
      if (!v96)
      {
        v112[2] = v97;
        goto LABEL_75;
      }
    }

    break;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_10058383C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1016096E8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100583888(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemVersionNumber();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v29[-v12];
  if (qword_1016947C0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177AF10);
  (*(v7 + 16))(v13, a3, v6);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33._countAndFlagsBits = v32;
    *v17 = 136315394;
    *(v17 + 4) = sub_1000136BC(a1, a2, &v33._countAndFlagsBits);
    *(v17 + 12) = 2080;
    sub_100003DFC(&qword_1016A4928, &type metadata accessor for SystemVersionNumber);
    v31 = v15;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v16;
    v20 = v19;
    v21 = v13;
    v22 = *(v7 + 8);
    v22(v21, v6);
    v23 = sub_1000136BC(v18, v20, &v33._countAndFlagsBits);

    *(v17 + 14) = v23;
    v24 = v31;
    _os_log_impl(&_mh_execute_header, v31, v30, "supportsItemConnection? %s %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v25 = v13;
    v22 = *(v7 + 8);
    v22(v25, v6);
  }

  v33 = String.lowercased()();
  sub_10058AE3C();
  sub_1000DF96C();
  static PartialMatchCase<>.first(containing:)();

  if (v34 > 4u)
  {
    v27 = 0;
  }

  else
  {
    SystemVersionNumber.init(stringLiteral:)();
    sub_100003DFC(&qword_101697BD0, &type metadata accessor for SystemVersionNumber);
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    v22(v11, v6);
    v27 = v26 ^ 1;
  }

  return v27 & 1;
}

uint64_t sub_100583CA8(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for PeerCommunicationIdentifier();
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[22] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for OwnerPeerTrust();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v9 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v10 = type metadata accessor for OwnerSharingCircle();
  v2[27] = v10;
  v11 = *(v10 - 8);
  v2[28] = v11;
  v12 = *(v11 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[36] = v13;
  v14 = *(v13 - 8);
  v2[37] = v14;
  v2[38] = *(v14 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_100583F30, 0, 0);
}

uint64_t sub_100583F30()
{
  if (*(v0[19] + 16))
  {
    v1 = async function pointer to daemon.getter[1];
    v2 = swift_task_alloc();
    v0[47] = v2;
    *v2 = v0;
    v2[1] = sub_100584124;

    return daemon.getter();
  }

  else
  {
    sub_100588F34();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v5 = v0[45];
    v4 = v0[46];
    v7 = v0[43];
    v6 = v0[44];
    v8 = v0[41];
    v9 = v0[42];
    v11 = v0[39];
    v10 = v0[40];
    v12 = v0[34];
    v13 = v0[35];
    v16 = v0[33];
    v17 = v0[32];
    v18 = v0[31];
    v19 = v0[30];
    v20 = v0[29];
    v21 = v0[26];
    v22 = v0[23];
    v23 = v0[21];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100584124(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 376);
  v12 = *v1;
  v3[48] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[49] = v6;
  v7 = type metadata accessor for Daemon();
  v3[50] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[51] = v9;
  v10 = sub_100003DFC(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100584304;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100584304(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {
    v7 = sub_1005876E0;
    v8 = 0;
  }

  else
  {
    v9 = v4[48];

    v7 = sub_10058443C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100584464()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 440) = v2;
  *v2 = v0;
  v2[1] = sub_100584540;
  v3 = *(v0 + 432);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v3, &type metadata for () + 8);
}

uint64_t sub_100584540()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return _swift_task_switch(sub_10058463C, 0, 0);
}

uint64_t sub_10058463C()
{
  v1 = *(v0 + 416);
  *(v0 + 720) = *(type metadata accessor for OwnedBeaconRecord() + 20);

  return _swift_task_switch(sub_1005846B0, v1, 0);
}

uint64_t sub_1005846B0()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 144);
  v8 = *(v5 + 16);
  *(v0 + 448) = v8;
  *(v0 + 456) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v6);
  v9 = *(v5 + 80);
  *(v0 + 724) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 464) = v12;
  *(v12 + 16) = v2;
  v13 = *(v5 + 32);
  *(v0 + 472) = v13;
  *(v0 + 480) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v10, v3, v6);
  *(v12 + v11) = 0;
  v14 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v15 = swift_task_alloc();
  *(v0 + 488) = v15;
  v16 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v15 = v0;
  v15[1] = sub_100584864;

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v12, v16);
}

uint64_t sub_100584864()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 416);
  v5 = *v0;

  return _swift_task_switch(sub_100584990, v3, 0);
}

uint64_t sub_1005849B4()
{
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v72 = v5;
    while (v3 < *(v1 + 16))
    {
      v6 = *(v0 + 280);
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_10058B200(*(v0 + 496) + v7 + v8 * v3, v6, type metadata accessor for OwnerSharingCircle);
      v9 = *(v0 + 280);
      if (*(v6 + *(v5 + 28)) > 1u)
      {
        sub_10058B268(v9, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_100589B28(v9, *(v0 + 272), type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_101123FE4(v10 > 1, v11 + 1, 1);
        }

        v12 = *(v0 + 272);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_100589B28(v12, _swiftEmptyArrayStorage + v7 + v11 * v8, type metadata accessor for OwnerSharingCircle);
        v5 = v72;
      }

      if (v2 == ++v3)
      {
        v13 = *(v0 + 496);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return daemon.getter();
  }

LABEL_13:
  *(v0 + 504) = _swiftEmptyArrayStorage;

  v14 = _swiftEmptyDictionarySingleton;
  *(v0 + 128) = _swiftEmptyDictionarySingleton;
  v15 = _swiftEmptyArrayStorage[2];
  *(v0 + 512) = v15;
  if (v15)
  {
    *(v0 + 728) = *(*(v0 + 224) + 80);
    v73 = *(v0 + 424);
    *(v0 + 520) = 0;
    v16 = *(v0 + 504);
    if (*(v16 + 16))
    {
      v17 = 0;
      while (1)
      {
        v18 = *(v0 + 264);
        v19 = *(v0 + 216);
        sub_10058B200(v16 + ((*(v0 + 728) + 32) & ~*(v0 + 728)) + *(*(v0 + 224) + 72) * v17, v18, type metadata accessor for OwnerSharingCircle);
        v20 = *(v18 + *(v19 + 32));
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = *(v0 + 296);
          v23 = (*(v0 + 724) + 32) & ~*(v0 + 724);
          sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
          v24 = *(v22 + 72);
          v25 = swift_allocObject();
          v26 = j__malloc_size(v25);
          if (!v24)
          {
            goto LABEL_46;
          }

          if (v26 - v23 == 0x8000000000000000 && v24 == -1)
          {
            goto LABEL_48;
          }

          v28 = (*(v0 + 724) + 32) & ~*(v0 + 724);
          v25[2] = v21;
          v25[3] = 2 * ((v26 - v23) / v24);
          v29 = sub_1003CC2CC(v0 + 16, v25 + v28, v21, v20);
          v30 = *(v0 + 16);
          v31 = *(v0 + 24);
          v32 = *(v0 + 32);
          v33 = *(v0 + 40);
          v34 = *(v0 + 48);

          sub_1000128F8();
          if (v29 != v21)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v25 = _swiftEmptyArrayStorage;
        }

        *(v0 + 528) = v25;
        v35 = v25[2];
        *(v0 + 536) = v35;
        if (v35)
        {
          break;
        }

        v36 = *(v0 + 512);
        v14 = (*(v0 + 520) + 1);
        sub_10058B268(*(v0 + 264), type metadata accessor for OwnerSharingCircle);
        if (v14 == v36)
        {
          v43 = *(v0 + 504);

          v14 = _swiftEmptyDictionarySingleton;
          goto LABEL_35;
        }

        v17 = *(v0 + 520) + 1;
        *(v0 + 520) = v17;
        v16 = *(v0 + 504);
        if (v17 >= *(v16 + 16))
        {
          goto LABEL_28;
        }
      }

      v37 = *(v0 + 724);
      *(v0 + 560) = _swiftEmptyDictionarySingleton;
      *(v0 + 552) = 0;
      *(v0 + 544) = v73;
      if (!v25[2])
      {
        goto LABEL_49;
      }

      v39 = *(v0 + 448);
      v38 = *(v0 + 456);
      v40 = *(v0 + 416);
      v41 = *(v0 + 360);
      v42 = *(v0 + 288);
      *(v0 + 568) = *(*(v0 + 296) + 72);
      v39(v41, v25 + ((v37 + 32) & ~v37), v42);

      return _swift_task_switch(sub_100584FE0, v40, 0);
    }

LABEL_28:
    __break(1u);
  }

  v74 = *(v0 + 424);
LABEL_35:
  *(v0 + 632) = v14;
  if (v14[2])
  {
    v44 = sub_100528208(*(v0 + 152), (v0 + 128));
    *(v0 + 640) = v44;
    v45 = v44[2];
    *(v0 + 648) = v45;
    if (v45)
    {
      v46 = async function pointer to daemon.getter[1];
      v47 = swift_task_alloc();
      *(v0 + 656) = v47;
      *v47 = v0;
      v47[1] = sub_100586F9C;

      return daemon.getter();
    }

    v50 = *(v0 + 416);

    v49 = 1;
  }

  else
  {
    v48 = *(v0 + 416);
    v49 = 2;
  }

  sub_100588F34();
  swift_allocError();
  *v51 = v49;
  swift_willThrow();

  v53 = *(v0 + 360);
  v52 = *(v0 + 368);
  v55 = *(v0 + 344);
  v54 = *(v0 + 352);
  v56 = *(v0 + 328);
  v57 = *(v0 + 336);
  v58 = *(v0 + 312);
  v59 = *(v0 + 320);
  v61 = *(v0 + 272);
  v60 = *(v0 + 280);
  v64 = *(v0 + 264);
  v65 = *(v0 + 256);
  v66 = *(v0 + 248);
  v67 = *(v0 + 240);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 184);
  v71 = *(v0 + 168);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100584FE0()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v4 = *(v0 + 416);
  v5 = *(v0 + 368);
  v6 = *(v0 + 304);
  v7 = *(v0 + 288);
  v8 = (*(v0 + 724) + 24) & ~*(v0 + 724);
  (*(v0 + 448))(v5, *(v0 + 360), v7);
  v9 = swift_allocObject();
  *(v0 + 576) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 584) = v11;
  *v11 = v0;
  v11[1] = sub_10058512C;
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100588F88, v9, v13);
}

uint64_t sub_10058512C()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);
  v4 = *v0;

  return _swift_task_switch(sub_100585244, 0, 0);
}

uint64_t sub_100585244()
{
  v100 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  if ((*(*(v0 + 200) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    if (qword_101694E40 != -1)
    {
LABEL_41:
      swift_once();
    }

    v4 = *(v0 + 448);
    v3 = *(v0 + 456);
    v5 = *(v0 + 360);
    v6 = *(v0 + 320);
    v7 = *(v0 + 288);
    v8 = *(v0 + 264);
    v9 = *(v0 + 232);
    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177BFE0);
    v4(v6, v5, v7);
    sub_10058B200(v8, v9, type metadata accessor for OwnerSharingCircle);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v96 = *(v0 + 360);
    v14 = *(v0 + 320);
    v15 = *(v0 + 288);
    v16 = *(v0 + 296);
    v17 = *(v0 + 232);
    if (v13)
    {
      v93 = *(v0 + 216);
      v18 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v18 = 141558787;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v91 = v12;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v14, v15);
      v23 = sub_1000136BC(v19, v21, v99);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2160;
      *(v18 + 24) = 1752392040;
      *(v18 + 32) = 2081;
      v24 = v17 + *(v93 + 20);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_10058B268(v17, type metadata accessor for OwnerSharingCircle);
      v28 = sub_1000136BC(v25, v27, v99);

      *(v18 + 34) = v28;
      _os_log_impl(&_mh_execute_header, v11, v91, "Could not find peerTrust for %{private,mask.hash}s in circle %{private,mask.hash}s.", v18, 0x2Au);
      swift_arrayDestroy();

      v22(v96, v15);
    }

    else
    {

      sub_10058B268(v17, type metadata accessor for OwnerSharingCircle);
      v33 = *(v16 + 8);
      v33(v14, v15);
      v33(v96, v15);
    }

    v34 = *(v0 + 560);
    v35 = *(v0 + 544);
    v36 = *(v0 + 552) + 1;
    v37 = *(v0 + 528);
    if (v36 == *(v0 + 536))
    {
      v95 = *(v0 + 544);
      v97 = *(v0 + 560);
      while (1)
      {

        v39 = *(v0 + 512);
        v40 = *(v0 + 520) + 1;
        sub_10058B268(*(v0 + 264), type metadata accessor for OwnerSharingCircle);
        if (v40 == v39)
        {
          break;
        }

        v41 = *(v0 + 520) + 1;
        *(v0 + 520) = v41;
        v42 = *(v0 + 504);
        if (v41 >= *(v42 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v43 = *(v0 + 264);
        v44 = *(v0 + 216);
        sub_10058B200(v42 + ((*(v0 + 728) + 32) & ~*(v0 + 728)) + *(*(v0 + 224) + 72) * v41, v43, type metadata accessor for OwnerSharingCircle);
        v45 = *(v43 + *(v44 + 32));
        v46 = *(v45 + 16);
        if (v46)
        {
          v47 = *(v0 + 296);
          v48 = (*(v0 + 724) + 32) & ~*(v0 + 724);
          sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
          v49 = *(v47 + 72);
          v37 = swift_allocObject();
          v50 = j__malloc_size(v37);
          if (!v49)
          {
            goto LABEL_39;
          }

          if (v50 - v48 == 0x8000000000000000 && v49 == -1)
          {
            goto LABEL_40;
          }

          v52 = (*(v0 + 724) + 32) & ~*(v0 + 724);
          v37[2] = v46;
          v37[3] = 2 * ((v50 - v48) / v49);
          v53 = sub_1003CC2CC(v0 + 16, v37 + v52, v46, v45);
          v55 = *(v0 + 16);
          v54 = *(v0 + 24);
          v56 = *(v0 + 32);
          v57 = *(v0 + 40);
          v58 = *(v0 + 48);

          sub_1000128F8();
          if (v53 != v46)
          {
            __break(1u);
            break;
          }
        }

        else
        {
          v37 = _swiftEmptyArrayStorage;
        }

        *(v0 + 528) = v37;
        v38 = v37[2];
        *(v0 + 536) = v38;
        if (v38)
        {
          v36 = 0;
          v35 = v95;
          v34 = v97;
          goto LABEL_30;
        }
      }

      v59 = *(v0 + 504);

      *(v0 + 632) = v97;
      if (*(v97 + 16))
      {
        v60 = sub_100528208(*(v0 + 152), (v0 + 128));
        *(v0 + 640) = v60;
        v61 = v60[2];
        *(v0 + 648) = v61;
        if (v61)
        {
          v62 = async function pointer to daemon.getter[1];
          v63 = swift_task_alloc();
          *(v0 + 656) = v63;
          *v63 = v0;
          v63[1] = sub_100586F9C;

          return daemon.getter();
        }

        v73 = *(v0 + 416);

        v65 = 1;
      }

      else
      {
        v64 = *(v0 + 416);
        v65 = 2;
      }

      sub_100588F34();
      swift_allocError();
      *v74 = v65;
      swift_willThrow();

      v76 = *(v0 + 360);
      v75 = *(v0 + 368);
      v78 = *(v0 + 344);
      v77 = *(v0 + 352);
      v79 = *(v0 + 328);
      v80 = *(v0 + 336);
      v81 = *(v0 + 312);
      v82 = *(v0 + 320);
      v84 = *(v0 + 272);
      v83 = *(v0 + 280);
      v86 = *(v0 + 264);
      v87 = *(v0 + 256);
      v88 = *(v0 + 248);
      v89 = *(v0 + 240);
      log = *(v0 + 232);
      v92 = *(v0 + 208);
      v94 = *(v0 + 184);
      v98 = *(v0 + 168);

      v85 = *(v0 + 8);

      return v85();
    }

    else
    {
LABEL_30:
      *(v0 + 560) = v34;
      *(v0 + 552) = v36;
      *(v0 + 544) = v35;
      if (v36 >= v37[2])
      {
        __break(1u);
        return daemon.getter();
      }

      v66 = *(v0 + 724);
      v68 = *(v0 + 448);
      v67 = *(v0 + 456);
      v69 = *(v0 + 416);
      v70 = *(v0 + 360);
      v71 = *(v0 + 288);
      v72 = *(*(v0 + 296) + 72);
      *(v0 + 568) = v72;
      v68(v70, v37 + ((v66 + 32) & ~v66) + v72 * v36, v71);

      return _swift_task_switch(sub_100584FE0, v69, 0);
    }
  }

  else
  {
    v29 = *(v0 + 208);
    sub_100589B28(v2, v29, type metadata accessor for OwnerPeerTrust);
    v30 = *(v1 + 28);
    *(v0 + 732) = v30;
    v31 = swift_task_alloc();
    *(v0 + 592) = v31;
    *v31 = v0;
    v31[1] = sub_100585ABC;

    return sub_100E8BEF8(v29 + v30);
  }
}

uint64_t sub_100585ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 592);
  v11 = *v4;
  v5[75] = a1;
  v5[76] = a2;
  v5[77] = a3;
  v5[78] = v3;

  if (v3)
  {
    v7 = v5[66];
    v8 = v5[63];

    v9 = sub_100586DDC;
  }

  else
  {
    v9 = sub_100585BF0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100585BF0()
{
  v205 = v0;
  v1 = *(v0 + 616);
  if (!v1)
  {
    v4 = *(v0 + 160);
    sub_10058B200(*(v0 + 208) + *(v0 + 732), *(v0 + 168), type metadata accessor for PeerCommunicationIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          if (qword_101694E40 != -1)
          {
            goto LABEL_97;
          }

          goto LABEL_20;
        }

LABEL_14:
        if (qword_101694E40 != -1)
        {
          goto LABEL_95;
        }

        goto LABEL_15;
      }

      v6 = *(v0 + 168);
      if (EnumCaseMultiPayload == 4)
      {
        v2 = *v6;
        v3 = *(v6 + 8);
        v1 = *(v6 + 16);
        v7 = *(v6 + 32);
      }

      else
      {
        v40 = *(v6 + 8);
        v2 = *(v6 + 16);
        v3 = *(v6 + 24);
        v1 = *(v6 + 32);
        v41 = *(v6 + 48);
      }

      goto LABEL_28;
    }

    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_10058B268(*(v0 + 168), type metadata accessor for PeerCommunicationIdentifier);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload)
    {
      v42 = *(v0 + 168);
      v2 = *v42;
      v3 = *(v42 + 8);
      v1 = *(v42 + 16);
LABEL_29:

      goto LABEL_30;
    }

    v8 = *(v0 + 168);
    v9 = v8[1];
    *(v0 + 88) = *v8;
    *(v0 + 96) = v9;
    *(v0 + 104) = 64;
    *(v0 + 112) = 0xE100000000000000;
    sub_1000DF96C();

    v10 = StringProtocol.contains<A>(_:)();
    v11 = String._bridgeToObjectiveC()();
    if (v10)
    {
      v12 = IDSCopyIDForEmailAddress();

      if (v12)
      {
        v2 = 0;
LABEL_27:

        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v1 = v64;

LABEL_28:

        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      v12 = IDSCopyIDForPhoneNumber();

      if (v12)
      {
        v2 = 1;
        goto LABEL_27;
      }
    }

    __break(1u);
    return daemon.getter();
  }

  v2 = *(v0 + 600);
  v3 = *(v0 + 608);
LABEL_30:
  v65 = *(v0 + 152);
  v66 = *(v0 + 616);
  if (*(v65 + 16))
  {
    v67 = *(v65 + 40);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v2);

    String.hash(into:)();
    v68 = Hasher._finalize()();
    v69 = -1 << *(v65 + 32);
    v70 = v68 & ~v69;
    if ((*(v65 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v70))
    {
      v71 = ~v69;
      v72 = *(v0 + 152);
      v73 = *(v72 + 48);
      do
      {
        v74 = (v73 + 24 * v70);
        if (*v74 == v2)
        {
          v75 = *(v74 + 1) == v3 && *(v74 + 2) == v1;
          if (v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v198 = *(v0 + 448);
            v202 = *(v0 + 456);
            v122 = *(v0 + 360);
            v123 = *(v0 + 336);
            v194 = *(v0 + 328);
            v124 = *(v0 + 288);
            v125 = *(v0 + 264);
            v126 = *(v0 + 216);

            v127 = *(v126 + 20);
            sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
            *(v0 + 56) = dispatch thunk of CustomStringConvertible.description.getter();
            *(v0 + 64) = v128;
            v129._countAndFlagsBits = 124;
            v129._object = 0xE100000000000000;
            String.append(_:)(v129);
            v130._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v130);

            v131 = *(v0 + 56);
            v132 = *(v0 + 64);
            v133 = String.utf8Data.getter();
            v135 = v134;

            *(v0 + 72) = v133;
            *(v0 + 80) = v135;
            sub_1000E0A3C();
            DataProtocol.stableUUID.getter();
            sub_100016590(v133, v135);
            v198(v194, v123, v124);
            v136 = *(v0 + 128);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 136) = v136;
            v138 = sub_100772110(v2, v3, v1);
            v140 = *(v136 + 16);
            v141 = (v139 & 1) == 0;
            v142 = __OFADD__(v140, v141);
            v143 = v140 + v141;
            if (v142)
            {
              goto LABEL_94;
            }

            v144 = v139;
            if (*(v136 + 24) >= v143)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v181 = v138;
                sub_1010093E4();
                v138 = v181;
              }
            }

            else
            {
              sub_100FEEFB8(v143, isUniquelyReferenced_nonNull_native);
              v145 = *(v0 + 136);
              v138 = sub_100772110(v2, v3, v1);
              if ((v144 & 1) != (v146 & 1))
              {

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }
            }

            v95 = *(v0 + 136);
            v170 = *(v0 + 568);
            if (v144)
            {
              (*(*(v0 + 296) + 40))(v95[7] + v170 * v138, *(v0 + 328), *(v0 + 288));

LABEL_88:
              v178 = *(v0 + 360);
              v179 = *(v0 + 288);
              v3 = *(v0 + 208);
              v180 = *(*(v0 + 296) + 8);
              v180(*(v0 + 336), v179);
              sub_10058B268(v3, type metadata accessor for OwnerPeerTrust);
              v180(v178, v179);
              *(v0 + 128) = v95;
              goto LABEL_47;
            }

            v172 = *(v0 + 472);
            v171 = *(v0 + 480);
            v173 = *(v0 + 328);
            v174 = *(v0 + 288);
            v95[(v138 >> 6) + 8] |= 1 << v138;
            v175 = v95[6] + 24 * v138;
            *v175 = v2;
            *(v175 + 8) = v3;
            *(v175 + 16) = v1;
            v172(v95[7] + v170 * v138, v173, v174);
            v176 = v95[2];
            v142 = __OFADD__(v176, 1);
            v177 = v176 + 1;
            if (!v142)
            {
              v95[2] = v177;
              goto LABEL_88;
            }

            __break(1u);
LABEL_97:
            swift_once();
LABEL_20:
            v44 = *(v0 + 448);
            v43 = *(v0 + 456);
            v45 = *(v0 + 360);
            v46 = *(v0 + 344);
            v47 = *(v0 + 288);
            v48 = *(v0 + 264);
            v49 = *(v0 + 248);
            v50 = type metadata accessor for Logger();
            sub_1000076D4(v50, qword_10177BFE0);
            v44(v46, v45, v47);
            sub_10058B200(v48, v49, type metadata accessor for OwnerSharingCircle);
            v21 = Logger.logObject.getter();
            v51 = static os_log_type_t.default.getter();
            v52 = os_log_type_enabled(v21, v51);
            v25 = *(v0 + 360);
            v24 = *(v0 + 344);
            v3 = *(v0 + 288);
            v26 = *(v0 + 296);
            v27 = *(v0 + 248);
            if (!v52)
            {
              goto LABEL_23;
            }

            v191 = *(v0 + 216);
            v199 = *(v0 + 208);
            v28 = swift_slowAlloc();
            v204[0] = swift_slowAlloc();
            *v28 = 141558787;
            *(v28 + 4) = 1752392040;
            *(v28 + 12) = 2081;
            sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
            v196 = v25;
            v187 = v51;
            v53 = dispatch thunk of CustomStringConvertible.description.getter();
            v55 = v54;
            log = v21;
            v32 = *(v26 + 8);
            v32(v24, v3);
            v56 = sub_1000136BC(v53, v55, v204);

            *(v28 + 14) = v56;
            *(v28 + 22) = 2160;
            *(v28 + 24) = 1752392040;
            *(v28 + 32) = 2081;
            v57 = v27 + *(v191 + 20);
            v58 = dispatch thunk of CustomStringConvertible.description.getter();
            v60 = v59;
            sub_10058B268(v27, type metadata accessor for OwnerSharingCircle);
            v61 = sub_1000136BC(v58, v60, v204);

            *(v28 + 34) = v61;
            v39 = "Unexpected destionation type %{private,mask.hash}s in circle %{private,mask.hash}s.";
            goto LABEL_22;
          }

          v72 = *(v0 + 152);
        }

        v70 = (v70 + 1) & v71;
      }

      while (((*(v72 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v70) & 1) != 0);
    }
  }

  else
  {
    v76 = *(v0 + 616);
  }

  if (qword_101694E40 != -1)
  {
LABEL_92:
    swift_once();
  }

  v77 = *(v0 + 264);
  v78 = *(v0 + 240);
  v79 = type metadata accessor for Logger();
  sub_1000076D4(v79, qword_10177BFE0);
  sub_10058B200(v77, v78, type metadata accessor for OwnerSharingCircle);

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  v82 = os_log_type_enabled(v80, v81);
  v83 = *(v0 + 360);
  v85 = *(v0 + 288);
  v84 = *(v0 + 296);
  v86 = *(v0 + 240);
  if (v82)
  {
    v188 = *(v0 + 216);
    v200 = *(v0 + 208);
    v192 = *(v0 + 288);
    v87 = swift_slowAlloc();
    v204[0] = swift_slowAlloc();
    *v87 = 141558787;
    *(v87 + 4) = 1752392040;
    *(v87 + 12) = 2081;
    v88 = sub_1000136BC(v3, v1, v204);

    *(v87 + 14) = v88;
    *(v87 + 22) = 2160;
    *(v87 + 24) = 1752392040;
    *(v87 + 32) = 2081;
    v89 = *(v188 + 20);
    sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
    v3 = v192;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    sub_10058B268(v86, type metadata accessor for OwnerSharingCircle);
    v93 = sub_1000136BC(v90, v92, v204);

    *(v87 + 34) = v93;
    _os_log_impl(&_mh_execute_header, v80, v81, "%{private,mask.hash}s is not a member to remove from circle %{private,mask.hash}s.", v87, 0x2Au);
    swift_arrayDestroy();

    sub_10058B268(v200, type metadata accessor for OwnerPeerTrust);
    (*(v84 + 8))(v83, v192);
  }

  else
  {
    v94 = *(v0 + 208);

    sub_10058B268(v86, type metadata accessor for OwnerSharingCircle);
    sub_10058B268(v94, type metadata accessor for OwnerPeerTrust);
    (*(v84 + 8))(v83, v85);
  }

  while (1)
  {
    v95 = *(v0 + 560);
LABEL_47:
    v96 = *(v0 + 624);
    v97 = *(v0 + 552) + 1;
    v98 = *(v0 + 528);
    if (v97 == *(v0 + 536))
    {
      break;
    }

LABEL_74:
    *(v0 + 560) = v95;
    *(v0 + 552) = v97;
    *(v0 + 544) = v96;
    if (v97 < *(v98 + 2))
    {
      v150 = *(v0 + 724);
      v152 = *(v0 + 448);
      v151 = *(v0 + 456);
      v153 = *(v0 + 416);
      v154 = *(v0 + 360);
      v155 = *(v0 + 288);
      v156 = *(*(v0 + 296) + 72);
      *(v0 + 568) = v156;
      v152(v154, &v98[((v150 + 32) & ~v150) + v156 * v97], v155);

      return _swift_task_switch(sub_100584FE0, v153, 0);
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
LABEL_15:
    v14 = *(v0 + 448);
    v13 = *(v0 + 456);
    v15 = *(v0 + 352);
    v16 = *(v0 + 360);
    v17 = *(v0 + 288);
    v19 = *(v0 + 256);
    v18 = *(v0 + 264);
    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177BFE0);
    v14(v15, v16, v17);
    sub_10058B200(v18, v19, type metadata accessor for OwnerSharingCircle);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 352);
    v25 = *(v0 + 360);
    v3 = *(v0 + 288);
    v26 = *(v0 + 296);
    v27 = *(v0 + 256);
    if (v23)
    {
      v190 = *(v0 + 216);
      v199 = *(v0 + 208);
      v28 = swift_slowAlloc();
      v204[0] = swift_slowAlloc();
      *v28 = 141558787;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      sub_100003DFC(&qword_101696930, &type metadata accessor for UUID);
      v196 = v25;
      v187 = v22;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      log = v21;
      v32 = *(v26 + 8);
      v32(v24, v3);
      v33 = sub_1000136BC(v29, v31, v204);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2160;
      *(v28 + 24) = 1752392040;
      *(v28 + 32) = 2081;
      v34 = v27 + *(v190 + 20);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      sub_10058B268(v27, type metadata accessor for OwnerSharingCircle);
      v38 = sub_1000136BC(v35, v37, v204);

      *(v28 + 34) = v38;
      v39 = "Unreachable destionation %{private,mask.hash}s in circle %{private,mask.hash}s.";
LABEL_22:
      _os_log_impl(&_mh_execute_header, log, v187, v39, v28, 0x2Au);
      swift_arrayDestroy();

      sub_10058B268(v199, type metadata accessor for OwnerPeerTrust);
      v62 = v196;
    }

    else
    {
LABEL_23:
      v63 = *(v0 + 208);

      sub_10058B268(v27, type metadata accessor for OwnerSharingCircle);
      v32 = *(v26 + 8);
      v32(v24, v3);
      sub_10058B268(v63, type metadata accessor for OwnerPeerTrust);
      v62 = v25;
    }

    v32(v62, v3);
  }

  v197 = *(v0 + 624);
  v201 = v95;
  while (1)
  {

    v100 = *(v0 + 512);
    v1 = *(v0 + 520) + 1;
    sub_10058B268(*(v0 + 264), type metadata accessor for OwnerSharingCircle);
    if (v1 == v100)
    {
      break;
    }

    v101 = *(v0 + 520) + 1;
    *(v0 + 520) = v101;
    v102 = *(v0 + 504);
    if (v101 >= *(v102 + 16))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v103 = *(v0 + 264);
    v104 = *(v0 + 216);
    sub_10058B200(v102 + ((*(v0 + 728) + 32) & ~*(v0 + 728)) + *(*(v0 + 224) + 72) * v101, v103, type metadata accessor for OwnerSharingCircle);
    v105 = *(v103 + *(v104 + 32));
    v106 = *(v105 + 16);
    if (v106)
    {
      v3 = *(v0 + 724);
      v107 = *(v0 + 296);
      v1 = (v3 + 32) & ~v3;
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v108 = *(v107 + 72);
      v98 = swift_allocObject();
      v109 = j__malloc_size(v98);
      if (!v108)
      {
        goto LABEL_90;
      }

      if (v109 - v1 == 0x8000000000000000 && v108 == -1)
      {
        goto LABEL_91;
      }

      v111 = (*(v0 + 724) + 32) & ~*(v0 + 724);
      *(v98 + 2) = v106;
      *(v98 + 3) = 2 * ((v109 - v1) / v108);
      v112 = sub_1003CC2CC(v0 + 16, &v98[v111], v106, v105);
      v114 = *(v0 + 16);
      v113 = *(v0 + 24);
      v115 = *(v0 + 32);
      v3 = *(v0 + 40);
      v116 = *(v0 + 48);

      sub_1000128F8();
      if (v112 != v106)
      {
        __break(1u);
        break;
      }
    }

    else
    {
      v98 = _swiftEmptyArrayStorage;
    }

    *(v0 + 528) = v98;
    v99 = *(v98 + 2);
    *(v0 + 536) = v99;
    if (v99)
    {
      v97 = 0;
      v96 = v197;
      v95 = v201;
      goto LABEL_74;
    }
  }

  v117 = *(v0 + 504);

  *(v0 + 632) = v201;
  if (v201[2])
  {
    v118 = sub_100528208(*(v0 + 152), (v0 + 128));
    *(v0 + 640) = v118;
    v119 = v118[2];
    *(v0 + 648) = v119;
    if (v119)
    {
      v120 = async function pointer to daemon.getter[1];
      v121 = swift_task_alloc();
      *(v0 + 656) = v121;
      *v121 = v0;
      v121[1] = sub_100586F9C;

      return daemon.getter();
    }

    v157 = *(v0 + 416);

    v149 = 1;
  }

  else
  {
    v148 = *(v0 + 416);
    v149 = 2;
  }

  sub_100588F34();
  swift_allocError();
  *v158 = v149;
  swift_willThrow();

  v160 = *(v0 + 360);
  v159 = *(v0 + 368);
  v162 = *(v0 + 344);
  v161 = *(v0 + 352);
  v163 = *(v0 + 328);
  v164 = *(v0 + 336);
  v165 = *(v0 + 312);
  v166 = *(v0 + 320);
  v168 = *(v0 + 272);
  v167 = *(v0 + 280);
  v182 = *(v0 + 264);
  v183 = *(v0 + 256);
  v184 = *(v0 + 248);
  loga = *(v0 + 240);
  v189 = *(v0 + 232);
  v193 = *(v0 + 208);
  v195 = *(v0 + 184);
  v203 = *(v0 + 168);

  v169 = *(v0 + 8);

  return v169();
}

uint64_t sub_100586DDC()
{
  v1 = v0[70];
  v2 = v0[52];
  v3 = v0[45];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[26];

  sub_10058B268(v7, type metadata accessor for OwnerPeerTrust);
  (*(v5 + 8))(v3, v4);
  sub_10058B268(v6, type metadata accessor for OwnerSharingCircle);

  v28 = v0[78];
  v9 = v0[45];
  v8 = v0[46];
  v11 = v0[43];
  v10 = v0[44];
  v12 = v0[41];
  v13 = v0[42];
  v15 = v0[39];
  v14 = v0[40];
  v17 = v0[34];
  v16 = v0[35];
  v20 = v0[33];
  v21 = v0[32];
  v22 = v0[31];
  v23 = v0[30];
  v24 = v0[29];
  v25 = v0[26];
  v26 = v0[23];
  v27 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100586F9C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 656);
  v5 = *v1;
  v3[83] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[84] = v7;
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100003DFC(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v7 = v5;
  v7[1] = sub_100587150;
  v10 = v3[51];
  v11 = v3[50];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100587150(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 672);
  v8 = *v2;
  v3[85] = a1;
  v3[86] = v1;

  if (v1)
  {
    v5 = sub_100587834;
  }

  else
  {
    v6 = v3[83];

    v5 = sub_100587270;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100587270()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 724);
  *(v0 + 696) = 0;
  if (*(v1 + 16))
  {
    v3 = *(v0 + 456);
    (*(v0 + 448))(*(v0 + 312), v1 + ((v2 + 32) & ~v2), *(v0 + 288));
    v4 = swift_task_alloc();
    *(v0 + 704) = v4;
    *v4 = v0;
    v4[1] = sub_10058733C;
    v5 = *(v0 + 680);
    v6 = *(v0 + 312);

    sub_1001986AC(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10058733C()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v7 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v4 = v2[80];
    (*(v2[37] + 8))(v2[39], v2[36]);

    v5 = sub_1005879AC;
  }

  else
  {
    (*(v2[37] + 8))(v2[39], v2[36]);
    v5 = sub_10058748C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10058748C()
{
  v1 = *(v0 + 696) + 1;
  if (v1 == *(v0 + 648))
  {
    v2 = *(v0 + 680);
    v3 = *(v0 + 640);
    v4 = *(v0 + 632);
    v5 = *(v0 + 416);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 328);
    v11 = *(v0 + 336);
    v18 = *(v0 + 320);
    v19 = *(v0 + 312);
    v20 = *(v0 + 280);
    v21 = *(v0 + 272);
    v22 = *(v0 + 264);
    v23 = *(v0 + 256);
    v24 = *(v0 + 248);
    v25 = *(v0 + 240);
    v26 = *(v0 + 232);
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v29 = *(v0 + 168);

    v12 = *(v0 + 8);

    v12();
  }

  else
  {
    *(v0 + 696) = v1;
    v13 = *(v0 + 640);
    if (v1 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = *(v0 + 456);
      (*(v0 + 448))(*(v0 + 312), v13 + ((*(v0 + 724) + 32) & ~*(v0 + 724)) + *(*(v0 + 296) + 72) * v1, *(v0 + 288));
      v15 = swift_task_alloc();
      *(v0 + 704) = v15;
      *v15 = v0;
      v15[1] = sub_10058733C;
      v16 = *(v0 + 680);
      v17 = *(v0 + 312);

      sub_1001986AC(v17);
    }
  }
}

uint64_t sub_1005876E0()
{
  v1 = v0[48];

  v22 = v0[53];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[41];
  v7 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v11 = v0[34];
  v10 = v0[35];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[26];
  v20 = v0[23];
  v21 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100587834()
{
  v1 = v0[83];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[52];

  v25 = v0[86];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  v12 = v0[39];
  v11 = v0[40];
  v14 = v0[34];
  v13 = v0[35];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[23];
  v24 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1005879AC()
{
  v1 = v0[85];
  v2 = v0[79];
  v3 = v0[52];

  v24 = v0[89];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v9 = v0[42];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[34];
  v12 = v0[35];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[21];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100587B18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for StableIdentifier();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SharingRampState() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100587C64, 0, 0);
}

uint64_t sub_100587C64()
{
  v1 = v0[3];
  if (!*(v1 + 16))
  {
    v22 = 0;
LABEL_25:
    sub_100588F34();
    swift_allocError();
    *v23 = v22;
    swift_willThrow();
    v25 = v0[12];
    v24 = v0[13];
    v27 = v0[10];
    v26 = v0[11];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[5];

    v31 = v0[1];

    return v31();
  }

  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_5:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = (*(v1 + 48) + 24 * (v7 | (v6 << 6)));
    if (*v8 - 2 >= 4)
    {
      v11 = *(v8 + 1);
      v10 = *(v8 + 2);
      if (*v8)
      {

        v14._countAndFlagsBits = 980182388;
        v14._object = 0xE400000000000000;
        String.deletingPrefix(_:)(v14);
        v13 = &selRef_handleWithPhoneNumber_;
      }

      else
      {

        v12._countAndFlagsBits = 0x3A6F746C69616DLL;
        v12._object = 0xE700000000000000;
        String.deletingPrefix(_:)(v12);
        v13 = &selRef_handleWithEmailAddress_;
      }

      v15 = String._bridgeToObjectiveC()();

      v16 = [objc_opt_self() *v13];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  while (1)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return daemon.getter();
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v9);
    ++v6;
    if (v4)
    {
      v6 = v9;
      goto LABEL_5;
    }
  }

  v18 = v0[3];

  v19 = sub_10112A6B4(_swiftEmptyArrayStorage);
  v0[14] = v19;

  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*(v19 + 16))
    {
      goto LABEL_19;
    }

LABEL_24:

    v22 = 3;
    goto LABEL_25;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_24;
  }

LABEL_19:
  v20 = async function pointer to daemon.getter[1];
  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  v21[1] = sub_100587FEC;

  return daemon.getter();
}

uint64_t sub_100587FEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100003DFC(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003DFC(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_1005881C8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1005881C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = sub_100588CD0;
  }

  else
  {
    v6 = v3[16];

    v5 = sub_1005882E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005882E4()
{
  v79 = v0;
  v1 = v0[2];
  if (sub_1000322C8())
  {
    v2 = v0[13];
    sub_10052F8CC(v2);
    v3 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    if ((*(*(v3 - 8) + 48))(v2, 2, v3))
    {
      v4 = v0[2];
      v5 = *(type metadata accessor for OwnedBeaconRecord() + 20);
      v6 = swift_task_alloc();
      v0[20] = v6;
      *v6 = v0;
      v6[1] = sub_1005889E0;
      v7 = v0[18];
      v8 = v0[14];

      return sub_10018F2A8(v4 + v5, v8);
    }

    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[11];
    v20 = v0[6];
    v21 = v0[7];

    (*(v21 + 32))(v19, v18, v20);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v22 = v0[10];
    v23 = v0[11];
    v24 = v0[6];
    v25 = v0[7];
    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177A560);
    (*(v25 + 16))(v22, v23, v24);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[18];
    v31 = v0[10];
    v32 = v0[11];
    v33 = v0[6];
    v34 = v0[7];
    if (v29)
    {
      v76 = v0[18];
      v35 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v35 = 136446210;
      sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v32;
      v38 = v37;
      v39 = *(v34 + 8);
      v39(v31, v33);
      v40 = sub_1000136BC(v36, v38, &v78);

      *(v35 + 4) = v40;
      v41 = "allowedToUseUTFSItemSharing == .notAllowed(retry: %{public}s";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v27, v28, v41, v35, 0xCu);
      sub_100007BAC(v74);

      v39(v75, v33);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v13 = type metadata accessor for OwnedBeaconRecord();
  sub_10058B200(v12 + *(v13 + 24), v10, type metadata accessor for StableIdentifier);
  if (swift_getEnumCaseMultiPayload())
  {
    v14 = v0[18];
    v15 = v0[14];
    v16 = v0[5];

    sub_10058B268(v16, type metadata accessor for StableIdentifier);
LABEL_22:
    v67 = v0[12];
    v66 = v0[13];
    v69 = v0[10];
    v68 = v0[11];
    v71 = v0[8];
    v70 = v0[9];
    v72 = v0[5];

    v73 = v0[1];

    return v73();
  }

  v42 = v0[12];
  sub_10058B268(v0[5], type metadata accessor for StableIdentifier);
  sub_10052FFA4(v42);
  v43 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  if (!(*(*(v43 - 8) + 48))(v42, 2, v43))
  {
    v49 = v0[14];
    v50 = v0[12];
    v51 = v0[9];
    v52 = v0[6];
    v53 = v0[7];

    (*(v53 + 32))(v51, v50, v52);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v54 = v0[8];
    v55 = v0[9];
    v56 = v0[6];
    v57 = v0[7];
    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177A560);
    (*(v57 + 16))(v54, v55, v56);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v59 = os_log_type_enabled(v27, v28);
    v60 = v0[18];
    v31 = v0[8];
    v32 = v0[9];
    v33 = v0[6];
    v34 = v0[7];
    if (v59)
    {
      v77 = v0[18];
      v35 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v35 = 136446210;
      sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v32;
      v63 = v62;
      v39 = *(v34 + 8);
      v39(v31, v33);
      v64 = sub_1000136BC(v61, v63, &v78);

      *(v35 + 4) = v64;
      v41 = "allowedToUseSelfBeaconingItemSharing == .notAllowed(retry: %{public}s";
      goto LABEL_20;
    }

LABEL_21:

    v65 = *(v34 + 8);
    v65(v31, v33);
    v65(v32, v33);
    goto LABEL_22;
  }

  v44 = v0[2];
  v45 = *(v13 + 20);
  v46 = swift_task_alloc();
  v0[22] = v46;
  *v46 = v0;
  v46[1] = sub_100588BB4;
  v47 = v0[18];
  v48 = v0[14];

  return sub_10018FC44(v44 + v45, v48);
}

uint64_t sub_1005889E0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100588D9C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100588AFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100588AFC()
{
  v1 = v0[18];

  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100588BB4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_100588E68;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_10058D500;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100588CD0()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100588D9C()
{
  v1 = v0[18];
  v2 = v0[14];

  v3 = v0[21];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100588E68()
{
  v1 = v0[18];
  v2 = v0[14];

  v3 = v0[23];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[5];

  v11 = v0[1];

  return v11();
}

unint64_t sub_100588F34()
{
  result = qword_1016A4730;
  if (!qword_1016A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4730);
  }

  return result;
}

uint64_t sub_100588F8C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100579CC0(a1, a2, v2);
}

uint64_t sub_100589038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100582A7C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100589064()
{
  result = qword_1016A4748;
  if (!qword_1016A4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4748);
  }

  return result;
}

uint64_t sub_100589114(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_10054ACAC(a1, v4, v7, v5, v6);
}

uint64_t sub_1005891D8(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v6 + 1);
  v8 = *(v6 + 2);
  v9 = *v6;

  return sub_10054B230(a1, v5, v1 + v4, v9, v7, v8);
}

void sub_1005892F0(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10053ECFC(a1, v1 + v4, v5);
}

uint64_t sub_10058938C(uint64_t a1)
{
  v4 = *(type metadata accessor for DateInterval() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  v7 = (v6 + *(v4 + 64));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_100AD92FC(a1, v5, v1 + 24, v6, v8, v9, v10);
}

uint64_t sub_1005894F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014744;

  return sub_1010A76C0(a1, v4, v5, v6, v11, v7, v8, v9);
}

unint64_t sub_100589638()
{
  result = qword_1016A47A0;
  if (!qword_1016A47A0)
  {
    sub_1000BC580(&qword_1016A4798, &qword_1013B1150);
    sub_100003DFC(&qword_1016A47A8, type metadata accessor for LegacyShareEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47A0);
  }

  return result;
}

unint64_t sub_100589714()
{
  result = qword_1016A47C0;
  if (!qword_1016A47C0)
  {
    sub_1000BC580(&qword_1016A47B8, &qword_1013B1160);
    sub_100003DFC(&qword_1016A47C8, type metadata accessor for FamilyShareEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47C0);
  }

  return result;
}

unint64_t sub_10058981C()
{
  result = qword_1016A47E0;
  if (!qword_1016A47E0)
  {
    sub_1000BC580(&qword_1016A47D8, &qword_1013B1170);
    sub_100003DFC(&qword_1016A47E8, type metadata accessor for FindMyAirPodsFamilyShareEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47E0);
  }

  return result;
}

uint64_t sub_1005898D0()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64) + v3;
  v5 = *(v0 + 16);

  sub_100007BAC((v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 3);
}

uint64_t sub_1005899A0(uint64_t a1)
{
  v4 = *(type metadata accessor for DateInterval() - 8);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));
  v7 = (v6 + *(v4 + 64));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014650;

  return sub_100AD92FC(a1, v5, v1 + 24, v6, v8, v9, v10);
}

unint64_t sub_100589AD4()
{
  result = qword_1016A47F0;
  if (!qword_1016A47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A47F0);
  }

  return result;
}

uint64_t sub_100589B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100589C18()
{
  result = qword_1016A4808;
  if (!qword_1016A4808)
  {
    sub_1000BC580(&qword_1016A4800, &unk_1013B1198);
    sub_100003DFC(&qword_1016A4810, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4808);
  }

  return result;
}

uint64_t sub_100589CCC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ShareRecord() + 20);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_100589D1C()
{
  v1 = *(sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

void sub_100589DB0(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for ShareInstruction() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100540120(a1, a2 & 1, v6, v7, v8);
}

uint64_t sub_100589E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1010A5CF0(a1, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_100589F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100548BF0(a1, v4, v5, v6);
}

unint64_t sub_10058A01C()
{
  result = qword_1016A4828;
  if (!qword_1016A4828)
  {
    sub_1000BC580(&qword_1016A4820, &unk_1013B2170);
    sub_100003DFC(&qword_1016A4830, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4828);
  }

  return result;
}

unint64_t sub_10058A0FC()
{
  result = qword_1016A4848;
  if (!qword_1016A4848)
  {
    sub_1000BC580(&qword_1016A4840, &unk_1013B2180);
    sub_100003DFC(&qword_1016A4850, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4848);
  }

  return result;
}

unint64_t sub_10058A1B0()
{
  result = qword_1016A4868;
  if (!qword_1016A4868)
  {
    sub_1000BC580(&qword_1016A4860, &qword_1013B1208);
    sub_100003DFC(&qword_1016A4870, type metadata accessor for SelfBeaconingKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4868);
  }

  return result;
}

void sub_10058A264()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_10056B878(v1, v2, v3);
}

uint64_t sub_10058A290(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *(v1 + v6);
  v11 = *v7;

  return sub_10056FF14(a1, v1 + v4, v11, v8, v9, v10);
}

uint64_t sub_10058A340()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10058A3BC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *v7;

  return a3(a1, v3 + v6, v10, v8, v9);
}

unint64_t sub_10058A478()
{
  result = qword_1016A4888;
  if (!qword_1016A4888)
  {
    sub_1000BC580(&qword_1016A4880, &qword_1013B1230);
    sub_100003DFC(&qword_1016A4890, type metadata accessor for KeyRequestEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4888);
  }

  return result;
}

unint64_t sub_10058A52C()
{
  result = qword_1016A48A8;
  if (!qword_1016A48A8)
  {
    sub_1000BC580(&qword_1016A48A0, &qword_1013B1240);
    sub_100003DFC(&qword_1016A48B0, type metadata accessor for CircleTrustAckEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A48A8);
  }

  return result;
}

unint64_t sub_10058A5E0()
{
  result = qword_1016A48C8;
  if (!qword_1016A48C8)
  {
    sub_1000BC580(&qword_1016A48C0, &qword_1013B1250);
    sub_100003DFC(&qword_1016A48D0, type metadata accessor for PeerTrustAckEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A48C8);
  }

  return result;
}

unint64_t sub_10058A694()
{
  result = qword_1016A48F0;
  if (!qword_1016A48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A48F0);
  }

  return result;
}

uint64_t sub_10058A6E8(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 40);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10058A740(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10058A7F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_1005711A0(a1, v7, v11, v8, v9, v1 + v6, v10);
}

uint64_t sub_10058A92C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100571408(a1, a2, v6, v11, v7, v8, v9, v10);
}

uint64_t sub_10058AA0C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for ShareRecord() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v8 = (v6 + *(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + v6;
  v12 = *(v1 + v6 + 8);
  v13 = *(v11 + 16);
  v14 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v11;
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014744;

  return sub_100571D34(a1, v9, v10, v1 + v5, v15, v12, v13, v1 + v8);
}

uint64_t sub_10058ABC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_10057C4E8(a1, v5);
}

uint64_t sub_10058ACB8(uint64_t a1)
{
  v2 = *(*(sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0) - 8) + 80);

  return sub_10057428C(a1);
}

unint64_t sub_10058AD34()
{
  result = qword_1016A4910;
  if (!qword_1016A4910)
  {
    sub_1000BC580(&qword_101697720, &unk_101392640);
    sub_100003DFC(&qword_1016A4918, type metadata accessor for SharedBeaconRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4910);
  }

  return result;
}

unint64_t sub_10058ADE8()
{
  result = qword_1016A4920;
  if (!qword_1016A4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4920);
  }

  return result;
}

unint64_t sub_10058AE3C()
{
  result = qword_1016AF8D0;
  if (!qword_1016AF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF8D0);
  }

  return result;
}

uint64_t sub_10058AFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  return v9(a1, a2, a3, a4, a5, *a6, a6[1], a6[2], a6[3], a7, a8);
}

unint64_t sub_10058B044()
{
  result = qword_1016A4968;
  if (!qword_1016A4968)
  {
    sub_1000BC580(&qword_1016A4958, &qword_1013B1330);
    sub_10058B0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4968);
  }

  return result;
}

unint64_t sub_10058B0C8()
{
  result = qword_1016A4970;
  if (!qword_1016A4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4970);
  }

  return result;
}

uint64_t sub_10058B12C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100537F9C();
}

uint64_t sub_10058B134(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10058B14C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100359088(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10058B200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10058B268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10058B2C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 167) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v4 + 24);

  v9 = *(v0 + v4 + 40);

  v10 = *(v0 + v4 + 56);

  v11 = *(v0 + v4 + 72);

  v12 = *(v0 + v4 + 88);

  v13 = *(v0 + v4 + 104);

  v14 = *(v0 + v4 + 120);

  v15 = *(v0 + v4 + 152);

  if (*(v0 + v5))
  {
    v16 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16);
}

uint64_t sub_10058B408(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10053D770(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 167) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 167) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10058B4BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_10058B568()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100546130(v0 + v2, v4, v5);
}

unint64_t sub_10058B620()
{
  result = qword_1016A49B8;
  if (!qword_1016A49B8)
  {
    sub_1000BC580(&qword_1016A49B0, &unk_1013B1368);
    sub_100003DFC(&qword_1016A49C0, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A49B8);
  }

  return result;
}

uint64_t sub_10058B6EC(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_10058B794()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

unint64_t sub_10058B858()
{
  result = qword_1016A49F0;
  if (!qword_1016A49F0)
  {
    sub_1000BC580(&qword_1016A49E8, &qword_1013B1390);
    sub_100003DFC(&qword_1016A49F8, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A49F0);
  }

  return result;
}

unint64_t sub_10058B9E8()
{
  result = qword_1016A4A10;
  if (!qword_1016A4A10)
  {
    sub_1000BC580(&qword_1016A4A08, &qword_1013B13A0);
    sub_10058BA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A10);
  }

  return result;
}

unint64_t sub_10058BA6C()
{
  result = qword_1016A4A18;
  if (!qword_1016A4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A18);
  }

  return result;
}

unint64_t sub_10058BB20()
{
  result = qword_1016A4A20;
  if (!qword_1016A4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A20);
  }

  return result;
}

uint64_t sub_10058BCE8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, v7, v3 + v6, v9, v10);
}

uint64_t sub_10058BDA4()
{
  v1 = *(type metadata accessor for SecureLocationsRelayAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v7 = (v5 + 1);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_16;
    }

LABEL_8:
    v7 = (v5 + 2);
LABEL_15:
    v17 = *v7;

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100016590(v5[2], v5[3]);
    v8 = v5[5];
    if (v8 >> 60 != 15)
    {
      sub_100016590(v5[4], v8);
    }

    v9 = v5 + *(type metadata accessor for SecureLocationsRelayAction.SendMessage(0) + 24);
    v10 = type metadata accessor for UUID();
    v11 = *(v10 - 8);
    v19 = *(v11 + 8);
    v19(v9, v10);
    v12 = type metadata accessor for MessagingOptions(0);
    v13 = *&v9[v12[5]];

    v14 = v12[7];
    if (!(*(v11 + 48))(&v9[v14], 1, v10))
    {
      v19(&v9[v14], v10);
    }

    v15 = *&v9[v12[10]];

    v16 = *&v9[v12[11]];

    v7 = &v9[v12[12] + 8];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    goto LABEL_8;
  }

LABEL_16:

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10058BFBC(void (*a1)(void))
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  (*(v4 + 8))(v1 + v6, v3);
  a1(*(v1 + v7));

  return _swift_deallocObject(v1, v7 + 8, v5 | 7);
}

uint64_t sub_10058C0A4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005425AC(v3, v0 + v2, v4);
}

uint64_t sub_10058C134()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10058C210(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t sub_10058C2D0(id *a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1009ECED0(a1, v4, v5, v6);
}

uint64_t sub_10058C344()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v24 = *(*(v1 - 1) + 64);
  v23 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v2 = v0 + v23;
  sub_100016590(*(v0 + v23), *(v0 + v23 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v23 + v3, v4);
  v6(v0 + v23 + v1[6], v4);
  v7 = *(v0 + v23 + v1[7] + 16);

  v8 = *(v0 + v23 + v1[8] + 8);

  v9 = *(v0 + v23 + v1[9] + 8);

  v10 = *(v0 + v23 + v1[10] + 8);

  v11 = v1[18];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 8))(v0 + v23 + v11, v12);
  v13 = v1[19];
  v14 = *(v5 + 48);
  if (!v14(v0 + v23 + v13, 1, v4))
  {
    v6(v2 + v13, v4);
  }

  v15 = v2 + v1[20];
  v16 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v16 + 20);
    if (!v14(v15 + v17, 1, v4))
    {
      v6(v15 + v17, v4);
    }
  }

  v18 = (v24 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + v18);

  v21 = *(v0 + v19 + 8);

  return _swift_deallocObject(v0, v19 + 16);
}

uint64_t sub_10058C5E0(void **a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *a1;

  return sub_1009ED964(v10, v1 + v4, v6, v8);
}

uint64_t sub_10058C68C()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v4, *(v4 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v8(v4 + v1[6], v6);
  v9 = *(v4 + v1[7] + 16);

  v10 = *(v4 + v1[8] + 8);

  v11 = *(v4 + v1[9] + 8);

  v12 = *(v4 + v1[10] + 8);

  v13 = v1[18];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v4 + v13, v14);
  v15 = v1[19];
  v16 = *(v7 + 48);
  if (!v16(v4 + v15, 1, v6))
  {
    v8(v4 + v15, v6);
  }

  v17 = v4 + v1[20];
  v18 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *(v18 + 20);
    if (!v16(v17 + v19, 1, v6))
    {
      v8(v17 + v19, v6);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v21);
}

uint64_t sub_10058C988(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_1001DCC34(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_10058CA64(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10058CAE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1001DB9D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10058CBF4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10058CCEC(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + v4);
  v8 = *(v1 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a1(v5, v6, v1 + v3, v7, v8);
}

uint64_t sub_10058CDB0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_10058CE08()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return Future.finish(error:)();
}

uint64_t sub_10058CE5C()
{
  v1 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100575A3C((v0 + v2), v0 + v5, v6);
}

uint64_t sub_10058CF54(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100575EB4(a1, v4);
}

uint64_t sub_10058CFD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_1005327C4(a1, v4, v5, v7, v6);
}

uint64_t sub_10058D098(uint64_t a1)
{

  sub_10053067C(sub_10058D0E8, a1);
}

unint64_t sub_10058D134()
{
  result = qword_1016A4A40;
  if (!qword_1016A4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A40);
  }

  return result;
}

unint64_t sub_10058D18C()
{
  result = qword_1016A4A48;
  if (!qword_1016A4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A48);
  }

  return result;
}

unint64_t sub_10058D228()
{
  result = qword_1016A4A60;
  if (!qword_1016A4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A60);
  }

  return result;
}

unint64_t sub_10058D280()
{
  result = qword_1016A4A68;
  if (!qword_1016A4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A68);
  }

  return result;
}

unint64_t sub_10058D2D8()
{
  result = qword_1016A4A70;
  if (!qword_1016A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4A70);
  }

  return result;
}

uint64_t sub_10058D744()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF28);
  sub_1000076D4(v0, qword_10177AF28);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10058D7C0()
{
  result = static Duration.seconds(_:)();
  qword_10177AF40 = result;
  *algn_10177AF48 = v1;
  return result;
}

uint64_t sub_10058D7E8(char *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v4 + 112) = &off_1016097A8;
  *(v4 + 120) = &off_1016097D8;
  ContinuousClock.init()();
  *(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_rssiBuffer) = _swiftEmptyDictionarySingleton;
  *(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastProximityLevel) = 2;
  static ContinuousClock.Instant.now.getter();
  v13 = v9[2];
  v13(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_beacon, a1, v8);
  if (a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2;
  }

  if (__OFSUB__(v14, 4))
  {
    __break(1u);
  }

  else
  {
    v29 = v14 - 4;
    if (qword_1016947D0 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177AF28);
  v13(v12, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = a1;
    v30 = v27;
    *v18 = 134218755;
    *(v18 + 4) = v14;
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = v9[1];
    v22(v12, v8);
    v23 = sub_1000136BC(v19, v21, &v30);

    *(v18 + 24) = v23;
    *(v18 + 32) = 2048;
    v24 = v29;
    *(v18 + 34) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received TX Power: %ld for beacon %{private,mask.hash}s. Calibrated: %ld.", v18, 0x2Au);
    sub_100007BAC(v27);

    v22(v28, v8);
  }

  else
  {

    v25 = v9[1];
    v25(a1, v8);
    v25(v12, v8);
    v24 = v29;
  }

  *(v4 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_txPower) = v24;
  return v4;
}

uint64_t sub_10058DB6C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock.Instant();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10058DC94, v1, 0);
}

uint64_t sub_10058DC94()
{
  v97 = v0;
  v1 = *(v0 + 144);
  v2 = [*(v0 + 136) rssi];
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_txPower);
  v4 = &v2[-v3];
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = *(v0 + 144);
  v6 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_rssiBuffer;
  swift_beginAccess();
  if (!*(*(v5 + v6) + 16))
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v10 = *(v0 + 144);
    ContinuousClock.now.getter();
    v11 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastMeasurementTime;
    swift_beginAccess();
    (*(v9 + 40))(v10 + v11, v7, v8);
    swift_endAccess();
    if (qword_1016947D0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 144);
    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177AF28);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 144);
      v17 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v96 = v92;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10058F70C(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = sub_1000136BC(v18, v19, &v96);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "BTRSSIFilter is initialized for beacon: %{private,mask.hash}s", v17, 0x16u);
      sub_100007BAC(v92);
    }
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    if (qword_1016947D0 == -1)
    {
LABEL_10:
      v21 = *(v0 + 144);
      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177AF28);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 144);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v96 = v27;
        *v26 = 134218499;
        *(v26 + 4) = v4;
        *(v26 + 12) = 2160;
        *(v26 + 14) = 1752392040;
        *(v26 + 22) = 2081;
        type metadata accessor for UUID();
        sub_10058F70C(&qword_101696930, &type metadata accessor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = sub_1000136BC(v28, v29, &v96);

        *(v26 + 24) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring invalid RSSI value: %ld from beacon %{private,mask.hash}s", v26, 0x20u);
        sub_100007BAC(v27);
      }

      goto LABEL_13;
    }

LABEL_38:
    swift_once();
    goto LABEL_10;
  }

  if (qword_1016947D0 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 136);
  v37 = *(v0 + 144);
  v38 = type metadata accessor for Logger();
  v39 = sub_1000076D4(v38, qword_10177AF28);

  v40 = v36;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 136);
    v87 = *(v0 + 144);
    v44 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v96 = v90;
    *v44 = 138413059;
    *(v44 + 4) = v43;
    *v89 = v43;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v4;
    *(v44 + 22) = 2160;
    *(v44 + 24) = 1752392040;
    *(v44 + 32) = 2081;
    type metadata accessor for UUID();
    v93 = v5;
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID);
    v45 = v43;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = sub_1000136BC(v46, v47, &v96);

    *(v44 + 34) = v48;
    v5 = v93;
    _os_log_impl(&_mh_execute_header, v41, v42, "Adding measurement: %@. Adjusted RSSI: %ld. Beacon: %{private,mask.hash}s.", v44, 0x2Au);
    sub_100288C6C(v89);

    sub_100007BAC(v90);
  }

  v49 = [*(v0 + 136) channel];
  v50 = *(v5 + v6);
  if (*(v50 + 16) && (v51 = sub_100777018(v49), (v52 & 1) != 0))
  {
    v53 = *(*(v50 + 56) + 8 * v51);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_100A5D2D8(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_100A5D2D8((v54 > 1), v55 + 1, 1, v53);
    }

    v56 = *(v0 + 136);
    *(v53 + 2) = v55 + 1;
    *&v53[8 * v55 + 32] = v4;
    v57 = [v56 channel];
    swift_beginAccess();
    v58 = *(v5 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(v5 + v6);
    *(v5 + v6) = 0x8000000000000000;
    v60 = v53;
    v61 = v57;
  }

  else
  {
    v62 = [*(v0 + 136) channel];
    sub_1000BC4D4(&qword_10169D108, &qword_10139AAA8);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_101385D80;
    *(v63 + 32) = v4;
    swift_beginAccess();
    v64 = *(v5 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(v5 + v6);
    *(v5 + v6) = 0x8000000000000000;
    v60 = v63;
    v61 = v62;
  }

  sub_100FFE5CC(v60, v61, isUniquelyReferenced_nonNull_native);
  *(v5 + v6) = v96;
  swift_endAccess();
  v65 = *(v0 + 192);
  v66 = *(v0 + 200);
  v67 = *(v0 + 176);
  v68 = *(v0 + 184);
  v88 = *(v0 + 168);
  v69 = *(v0 + 144);
  v91 = *(v0 + 160);
  v94 = *(v0 + 152);
  ContinuousClock.now.getter();
  v70 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastMeasurementTime;
  swift_beginAccess();
  v71 = *(v68 + 16);
  v71(v66, v69 + v70, v67);
  ContinuousClock.Instant.duration(to:)();
  v72 = *(v68 + 8);
  *(v0 + 208) = v72;
  *(v0 + 216) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72(v66, v67);
  v71(v66, v69 + v70, v67);
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  sub_10058F70C(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant);
  v73 = static Duration.description<A>(_:_:units:)();
  v75 = v74;
  (*(v91 + 8))(v88, v94);
  v72(v66, v67);
  if (qword_1016947D8 != -1)
  {
    swift_once();
  }

  if (static Duration.< infix(_:_:)())
  {

    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.debug.getter();

    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 192);
    v80 = *(v0 + 176);
    if (v78)
    {
      v95 = *(v0 + 176);
      v81 = v73;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v96 = v83;
      *v82 = 136315138;
      v84 = sub_1000136BC(v81, v75, &v96);

      *(v82 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v76, v77, "Not returning result yet. Duration since last update: %s", v82, 0xCu);
      sub_100007BAC(v83);

      v72(v79, v95);
    }

    else
    {

      v72(v79, v80);
    }

LABEL_13:
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v33 = *(v0 + 168);

    v34 = *(v0 + 8);

    return v34(0);
  }

  v85 = swift_task_alloc();
  *(v0 + 224) = v85;
  *v85 = v0;
  v85[1] = sub_10058E7C8;
  v86 = *(v0 + 144);

  return sub_10058F09C();
}

uint64_t sub_10058E7C8(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10058E8E0, v3, 0);
}

uint64_t sub_10058E8E0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  (*(v0 + 208))(*(v0 + 192), *(v0 + 176));
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 168);

  v6 = *(v0 + 8);

  return v6(v1);
}

void sub_10058E994()
{
  v63 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_rssiBuffer;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_100777018(37), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    sub_1000C3258();

    Array<A>.mean.getter();
    v8 = v7;
  }

  else
  {
    v8 = -128.0;
  }

  v9 = *(v1 + v2);
  if (*(v9 + 16) && (v10 = sub_100777018(38), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    sub_1000C3258();

    Array<A>.mean.getter();
    v14 = v13;
  }

  else
  {
    v14 = -128.0;
  }

  v15 = *(v1 + v2);
  if (*(v15 + 16) && (v16 = sub_100777018(39), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    sub_1000C3258();

    Array<A>.mean.getter();
    v20 = v19;
  }

  else
  {
    v20 = -128.0;
  }

  if (v8 > v14)
  {
    v21 = v8;
  }

  else
  {
    v21 = v14;
  }

  if (v21 > v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (qword_1016947D0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 40);
  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177AF28);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 40);
    v28 = swift_slowAlloc();
    v60 = v0;
    v29 = swift_slowAlloc();
    v62 = v29;
    *v28 = 134219267;
    *(v28 + 4) = v8;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v14;
    *(v28 + 22) = 2048;
    *(v28 + 24) = v20;
    *(v28 + 32) = 2048;
    *(v28 + 34) = v22;
    *(v28 + 42) = 2160;
    *(v28 + 44) = 1752392040;
    *(v28 + 52) = 2081;
    type metadata accessor for UUID();
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = sub_1000136BC(v30, v31, &v62);

    *(v28 + 54) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "channel37Average: %f. channel38Average: %f. channel39Average: %f. filteredRSSI: %f. Beacon %{private,mask.hash}s", v28, 0x3Eu);
    sub_100007BAC(v29);
    v0 = v60;
  }

  v33 = *(v0 + 40);
  v34 = *(v33 + 112);
  v35 = *(v34 + 16);
  if (!v35)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (*(v34 + 32) >= v22)
  {
    if (v35 == 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (*(v34 + 40) < v22)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastProximityLevel;
  v38 = *(v33 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastProximityLevel);
  if (v38 == 2)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v36, v38))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v36 - v38 != 1)
  {
    goto LABEL_39;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v39 = *(v33 + 120);
  if (v38 >= *(v39 + 16))
  {
LABEL_56:
    __break(1u);
    return;
  }

  v40 = *(v39 + 8 * v38 + 32);
  v41 = *(v0 + 40);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  if (v22 < v40)
  {
    if (v44)
    {
      v57 = *(v0 + 40);
      v45 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10058F70C(&qword_101696930, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = sub_1000136BC(v46, v47, &v62);

      *(v45 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "RSSI decrease is enough to switch to the lower level. Beacon: %{private,mask.hash}s.", v45, 0x16u);
      sub_100007BAC(v58);
    }

LABEL_39:
    *(v33 + v37) = v36;
    goto LABEL_40;
  }

  if (v44)
  {
    v61 = v43;
    v52 = *(v0 + 40);
    v53 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62 = v59;
    *v53 = 141558275;
    *(v53 + 4) = 1752392040;
    *(v53 + 12) = 2081;
    type metadata accessor for UUID();
    sub_10058F70C(&qword_101696930, &type metadata accessor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = sub_1000136BC(v54, v55, &v62);

    *(v53 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v42, v61, "RSSI decrease is NOT small enough to switch to the lower level. Beacon: %{private,mask.hash}s.", v53, 0x16u);
    sub_100007BAC(v59);
  }

LABEL_40:
  v49 = *(v1 + v2);
  *(v1 + v2) = _swiftEmptyDictionarySingleton;

  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v50 = *(v33 + v37);
  v51 = *(v0 + 8);

  v51(v50, 0, v22);
}

uint64_t sub_10058F09C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[9] = v8;
  *v8 = v1;
  v8[1] = sub_10058F1E4;

  return sub_10058E974();
}

uint64_t sub_10058F1E4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 72);
  v6 = *(*v3 + 16);
  v8 = *v3;
  *(v4 + 96) = a2;
  *(v4 + 80) = a1;
  *(v4 + 88) = a3;

  return _swift_task_switch(sub_10058F300, v6, 0);
}

uint64_t sub_10058F300()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);
  v15 = v6;
  v16 = *(v0 + 24);
  (*(v5 + 16))(v4, *(v0 + 16) + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_beacon);
  static Date.now.getter();
  if (v1)
  {
    v3 = 3;
  }

  v9 = objc_allocWithZone(SPBTRSSIResult);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = Date._bridgeToObjectiveC()().super.isa;
  v12 = [v9 initWithBeaconIdentifier:isa timestamp:v11 bucket:v3 rssi:v2];

  (*(v8 + 8))(v7, v16);
  (*(v5 + 8))(v4, v15);

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_10058F464()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_beacon;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_clock;
  v6 = type metadata accessor for ContinuousClock();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_rssiBuffer);

  v8 = OBJC_IVAR____TtC12searchpartyd12BTRSSIFilter_lastMeasurementTime;
  v9 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BTRSSIFilter()
{
  result = qword_1016A4AC8;
  if (!qword_1016A4AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10058F5D0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for ContinuousClock();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for ContinuousClock.Instant();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10058F70C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10058F754@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v132 = a1;
  v133 = a2;
  v126 = a4;
  v6 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v127 = &v111[-v8];
  v9 = type metadata accessor for BeaconPayloadFile.MetaData(0);
  v124 = *(v9 - 8);
  v125 = v9;
  v10 = *(v124 + 64);
  __chkstk_darwin(v9);
  v121 = &v111[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000BC4D4(&qword_10169BA58, &unk_101395640);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v123 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v111[-v16];
  v131 = type metadata accessor for CachedHistoricalLocation(0);
  v122 = *(v131 - 8);
  v18 = *(v122 + 64);
  __chkstk_darwin(v131);
  v134 = &v111[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for BeaconPayloadv1();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v129 = &v111[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v26 = &v111[-v25];
  v27 = __chkstk_darwin(v24);
  v128 = &v111[-v28];
  __chkstk_darwin(v27);
  v135 = &v111[-v29];
  v30 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v111[-v32];
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v130 = &v111[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v40 = &v111[-v39];
  sub_10047895C(v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_10000B3A8(v33, &unk_101696900, &unk_10138B1E0);
    sub_10059022C();
    swift_allocError();
    *v41 = 0;
    return swift_willThrow();
  }

  v120 = a3;
  v43 = v20;
  v119 = v17;
  v44 = v34;
  v45 = v35;
  v48 = *(v35 + 32);
  v46 = v35 + 32;
  v47 = v48;
  v48(v40, v33, v44);
  v49 = v136;
  result = Data.init(contentsOf:options:)();
  if (v49)
  {
    return (*(v45 + 8))(v40, v44);
  }

  v113 = v47;
  v117 = v44;
  v116 = v45;
  v114 = v46;
  v118 = v40;
  v51 = v50 >> 62;
  v136 = v50;
  v52 = result;
  v115 = v4;
  if ((v50 >> 62) > 1)
  {
    v53 = v43;
    if (v51 != 2)
    {
      v54 = 0;
      goto LABEL_15;
    }

    v56 = *(result + 16);
    v55 = *(result + 24);
    v54 = v55 - v56;
    v57 = v120;
    v58 = v133;
    if (__OFSUB__(v55, v56))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_13:
    sub_100017D5C(result, v50);
    goto LABEL_16;
  }

  v53 = v43;
  if (v51)
  {
    v57 = v120;
    v58 = v133;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v54 = HIDWORD(result) - result;
    goto LABEL_13;
  }

  v54 = BYTE6(v50);
LABEL_15:
  v57 = v120;
  v58 = v133;
LABEL_16:
  sub_100A2A240(3);
  v60 = v59;
  v61 = v132;
  sub_100017D5C(v58, v57);
  if (v54 >= v60)
  {
    v26 = v129;
    sub_100A2AA58(v61, v52, v136, v58, v57, v129);
  }

  else
  {
    sub_100A2B118(v61, v52, v136, v58, v57, v26);
  }

  v62 = v128;
  sub_100590280(v26, v128);
  v63 = v135;
  sub_100590280(v62, v135);
  v64 = *v63;
  v65 = v63[1];
  sub_100017D5C(*v63, v65);
  v66 = static MACAddress.length.getter();
  sub_10002EA98(v66, v64, v65, &v137);
  v67 = v137;
  v68 = v138;
  v70 = *v63;
  v69 = v63[1];
  sub_100017D5C(*v63, v69);
  sub_100017D5C(v70, v69);
  v71 = static MACAddress.length.getter();
  sub_10002EA98(v71, v70, v69, &v137);
  result = v137;
  v72 = v138;
  v73 = v138 >> 62;
  if ((v138 >> 62) <= 1)
  {
    if (!v73)
    {
      v74 = BYTE6(v138);
      sub_100016590(v137, v138);
      result = v74;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v73 != 2)
  {
    sub_100016590(v137, v138);
    result = 0;
    goto LABEL_29;
  }

  v76 = *(v137 + 16);
  v75 = *(v137 + 24);
  sub_100016590(v137, v138);
  result = v75 - v76;
  if (__OFSUB__(v75, v76))
  {
    __break(1u);
LABEL_26:
    v77 = HIDWORD(result);
    v78 = result;
    result = sub_100016590(result, v72);
    if (__OFSUB__(v77, v78))
    {
LABEL_47:
      __break(1u);
      return result;
    }

    result = v77 - v78;
  }

LABEL_29:
  v79 = v69 >> 62;
  if ((v69 >> 62) > 1)
  {
    if (v79 == 2)
    {
      v80 = *(v70 + 24);
    }

    else
    {
      v80 = 0;
    }
  }

  else if (v79)
  {
    v80 = v70 >> 32;
  }

  else
  {
    v80 = BYTE6(v69);
  }

  v132 = v68;
  v133 = v67;
  if (v80 < result)
  {
    __break(1u);
    goto LABEL_45;
  }

  v128 = Data._Representation.subscript.getter();
  v120 = v81;
  sub_100016590(v70, v69);
  v82 = v53[9];
  v112 = *(v135 + v53[10]);
  v83 = *(v135 + v53[7]);
  v84 = *(v135 + v53[8]);
  v85 = *(v135 + v82);
  v86 = *(v116 + 16);
  v87 = v134;
  v88 = v117;
  v86(&v134[*(v131 + 28)], v135 + v53[5], v117);
  *v87 = v83;
  v87[1] = v84;
  v87[2] = v85;
  v86(v130, v118, v88);
  v89 = v119;
  sub_1004784B0(v119);
  v90 = v125;
  v91 = *(v124 + 48);
  v92 = v91(v89, 1, v125);
  v129 = 0;
  if (v92)
  {
    sub_10000B3A8(v89, &qword_10169BA58, &unk_101395640);
    v93 = 0;
  }

  else
  {
    v94 = v121;
    sub_100590354(v89, v121, type metadata accessor for BeaconPayloadFile.MetaData);
    sub_10000B3A8(v89, &qword_10169BA58, &unk_101395640);
    v93 = v94[*(v90 + 28)];
    sub_1005903BC(v94, type metadata accessor for BeaconPayloadFile.MetaData);
  }

  v95 = v127;
  sub_100590354(v134, v127, type metadata accessor for CachedHistoricalLocation);
  v96 = v95;
  (*(v122 + 56))(v95, 0, 1, v131);
  v97 = v123;
  sub_1004784B0(v123);
  sub_100016590(v52, v136);
  v98 = v91(v97, 1, v90);
  v99 = v133;
  if (v98)
  {
    sub_10000B3A8(v97, &qword_10169BA58, &unk_101395640);
    v100 = 0;
  }

  else
  {
    v101 = v121;
    sub_100590354(v97, v121, type metadata accessor for BeaconPayloadFile.MetaData);
    sub_10000B3A8(v97, &qword_10169BA58, &unk_101395640);
    v100 = v101[*(v90 + 48)];
    sub_1005903BC(v101, type metadata accessor for BeaconPayloadFile.MetaData);
  }

  v102 = v126;
  v103 = v118;
  v104 = v128;
  v105 = v120;
  v106 = v100 & 1;
  v107 = type metadata accessor for BeaconPayload(0);
  v102[3] = v107;
  v102[4] = &off_1016528A0;
  v108 = sub_1000280DC(v102);
  v109 = v132;
  *v108 = v99;
  v108[1] = v109;
  v108[2] = v104;
  v108[3] = v105;
  *(v108 + 32) = v112;
  *(v108 + 5) = xmmword_10138C660;
  v108[7] = 0;
  v110 = v117;
  v113(v108 + v107[9], v130, v117);
  *(v108 + v107[10]) = v93;
  sub_1005902E4(v96, v108 + v107[11]);
  *(v108 + v107[12]) = v106;
  sub_1005903BC(v134, type metadata accessor for CachedHistoricalLocation);
  (*(v116 + 8))(v103, v110);
  return sub_1005903BC(v135, type metadata accessor for BeaconPayloadv1);
}

unint64_t sub_10059022C()
{
  result = qword_1016A4BF0;
  if (!qword_1016A4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4BF0);
  }

  return result;
}

uint64_t sub_100590280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconPayloadv1();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005902E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169BA28, &unk_1013EAA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100590354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005903BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AirPodsSendPairingStatusCommandPayload.expectedLength.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static AirPodsSendPairingStatusCommandPayload.expectedLength = a1;
  return result;
}

double AirPodsSendPairingStatusCommandPayload.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1005907F4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t AirPodsSendPairingStatusCommandPayload.encode(to:)(void *a1)
{
  v3 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v11 = *v1;
  v6 = *v1;
  sub_10015049C(v7, v8);
  sub_1001022C4(&v11, v5);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v6, *(&v6 + 1));
  if (!v2)
  {
    v10 = v1[1];
    v6 = v1[1];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v10, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
    v9 = v1[2];
    v6 = v1[2];
    sub_10015049C(v7, v8);
    sub_1001022C4(&v9, v5);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v6, *(&v6 + 1));
  }

  return sub_100007BAC(v7);
}

uint64_t sub_1005906F4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = *(result + 16);
  v9 = *(result + 24);
  v11 = __OFSUB__(v9, v10);
  v8 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_8:
    LODWORD(v8) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_33;
    }

    v8 = v8;
  }

LABEL_10:
  if (v8 != 60)
  {
    goto LABEL_35;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a4);
      goto LABEL_20;
    }

LABEL_18:
    LODWORD(v13) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v13 = v13;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v12 != 2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v11 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v11)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  if (v13 != 4)
  {
    goto LABEL_36;
  }

  v16 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a6);
      goto LABEL_30;
    }

LABEL_28:
    LODWORD(v17) = HIDWORD(a5) - a5;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v17 = v17;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  if (v16 != 2)
  {
    goto LABEL_37;
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v11 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v11)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  if (v17 == 100)
  {
    *a7 = result;
    a7[1] = a2;
    a7[2] = a3;
    a7[3] = a4;
    a7[4] = a5;
    a7[5] = a6;
    return result;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1005907F4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v16, v17);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v16);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v6;
    v9 = v7;
    sub_10015049C(v16, v17);
    v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v19 = v11;
    sub_10015049C(v16, v17);
    v12 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    sub_1005906F4(v8, v9, v10, v19, v12, v13, v18);
    sub_100007BAC(v16);
    result = sub_100007BAC(a1);
    v15 = v18[1];
    *a2 = v18[0];
    a2[1] = v15;
    a2[2] = v18[2];
  }

  return result;
}

unint64_t sub_100590974(uint64_t a1)
{
  *(a1 + 8) = sub_1005909A4();
  result = sub_1005909F8();
  *(a1 + 16) = result;
  return result;
}