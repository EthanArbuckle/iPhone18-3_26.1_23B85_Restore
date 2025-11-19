uint64_t sub_100333E90(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v12 = *v1;
  *(v3 + 328) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 336) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100334074;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100334074(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = sub_100334B1C;
  }

  else
  {
    v9 = v4[41];

    v4[45] = a1;
    v8 = sub_1003341B0;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1003341B0()
{
  v1 = *(v0 + 360);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 240);
  v5 = *(v0 + 184);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  (*(v0 + 232))(v5, *(v0 + 192), v8);
  v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v0 + 368) = v10;
  *(v10 + 16) = v1;
  v3(v10 + v9, v5, v8);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 376) = v12;
  *v12 = v0;
  v12[1] = sub_1003342FC;
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100359F38, v10, v14);
}

uint64_t sub_1003342FC()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 72);
  v6 = *v0;

  return _swift_task_switch(sub_10033444C, v4, 0);
}

uint64_t sub_10033444C()
{
  v82 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) != 1)
  {
    v6 = *(v0 + 280);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    sub_100359DA8(v1, v7, type metadata accessor for OwnedBeaconRecord);
    sub_100034E04(v7, v8, type metadata accessor for OwnedBeaconRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 280);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

  v2 = *(v0 + 256);
  (*(v0 + 264))(*(v0 + 192), *(v0 + 144));
  sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
  v3 = *(v0 + 296);
  v4 = (*(v0 + 288) - 1) & *(v0 + 288);
  if (v4)
  {
LABEL_3:
    v5 = *(v0 + 272);
LABEL_12:
    *(v0 + 288) = v4;
    *(v0 + 296) = v3;
    v19 = *(v0 + 240);
    v20 = *(v0 + 192);
    v21 = *(v0 + 200);
    v22 = *(v0 + 144);
    v23 = *(v0 + 152);
    (*(v0 + 232))(v21, *(v5 + 48) + *(v23 + 72) * (__clz(__rbit64(v4)) | (v3 << 6)), v22);
    v24 = *(v23 + 32);
    *(v0 + 304) = v24;
    *(v0 + 312) = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v20, v21, v22);
    v25 = async function pointer to daemon.getter[1];
    v26 = swift_task_alloc();
    *(v0 + 320) = v26;
    *v26 = v0;
    v26[1] = sub_100333E90;

    return daemon.getter();
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v18 = v3 + 1;
        if (!__OFADD__(v3, 1))
        {
          break;
        }

        __break(1u);
LABEL_26:
        v1 = sub_100A5C050(0, v1[2] + 1, 1, v1);
LABEL_5:
        v11 = v1[2];
        v10 = v1[3];
        if (v11 >= v10 >> 1)
        {
          v1 = sub_100A5C050(v10 > 1, v11 + 1, 1, v1);
        }

        v13 = *(v0 + 256);
        v12 = *(v0 + 264);
        v14 = *(v0 + 192);
        v15 = *(v0 + 144);
        v16 = *(v0 + 128);
        v17 = *(v0 + 104);
        sub_100359E10(*(v0 + 136), type metadata accessor for OwnedBeaconRecord);
        v12(v14, v15);
        v1[2] = v11 + 1;
        sub_100359DA8(v16, v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v11, type metadata accessor for OwnedBeaconRecord);
        v3 = *(v0 + 296);
        v4 = (*(v0 + 288) - 1) & *(v0 + 288);
        *(v0 + 280) = v1;
        if (v4)
        {
          goto LABEL_3;
        }
      }

      if (v18 >= (((1 << *(v0 + 492)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v0 + 272);
      v4 = *(v5 + 8 * v18 + 56);
      ++v3;
      if (v4)
      {
        v3 = v18;
        goto LABEL_12;
      }
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 280);

    v29 = *(v28 + 16);
    *(v0 + 352) = v29;
    if (v29)
    {
      v30 = *(v0 + 280);
      v32 = *(v0 + 96);
      v31 = *(v0 + 104);
      v33 = *(v31 + 80);
      *(v0 + 488) = v33;
      v34 = *(v31 + 72);
      *(v0 + 392) = 0;
      *(v0 + 400) = 0;
      *(v0 + 384) = v34;
      v35 = *(v0 + 120);
      sub_100034E04(v30 + ((v33 + 32) & ~v33), v35, type metadata accessor for OwnedBeaconRecord);
      *(v0 + 40) = v32;
      *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord);
      v36 = sub_1000280DC((v0 + 16));
      sub_100034E04(v35, v36, type metadata accessor for OwnedBeaconRecord);
      v37 = swift_task_alloc();
      *(v0 + 408) = v37;
      *v37 = v0;
      v37[1] = sub_100334C78;
      v38 = *(v0 + 72);
      v39 = *(v0 + 56);

      return sub_100335FE8(v39, v0 + 16);
    }

    else
    {
      v40 = *(v0 + 280);
      v42 = *(v0 + 240);
      v41 = *(v0 + 248);
      v43 = *(v0 + 224);
      v44 = *(v0 + 232);
      v45 = *(v0 + 168);
      v46 = *(v0 + 144);

      v44(v45, v43, v46);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      v49 = os_log_type_enabled(v47, v48);
      v51 = *(v0 + 256);
      v50 = *(v0 + 264);
      v52 = *(v0 + 168);
      v53 = *(v0 + 144);
      if (v49)
      {
        v80 = *(v0 + 264);
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v81 = v55;
        *v54 = 141558275;
        *(v54 + 4) = 1752392040;
        *(v54 + 12) = 2081;
        sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v80(v52, v53);
        v59 = sub_1000136BC(v56, v58, &v81);

        *(v54 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v47, v48, "No eligible member beacon to disable notify when found for group %{private,mask.hash}s", v54, 0x16u);
        sub_100007BAC(v55);
      }

      else
      {

        v50(v52, v53);
      }

      v61 = *(v0 + 256);
      v60 = *(v0 + 264);
      v62 = *(v0 + 224);
      v63 = *(v0 + 144);
      sub_100358F3C();
      swift_allocError();
      *v64 = 0;
      swift_willThrow();
      v60(v62, v63);
      v66 = *(v0 + 216);
      v65 = *(v0 + 224);
      v68 = *(v0 + 200);
      v67 = *(v0 + 208);
      v70 = *(v0 + 184);
      v69 = *(v0 + 192);
      v72 = *(v0 + 168);
      v71 = *(v0 + 176);
      v73 = *(v0 + 128);
      v74 = *(v0 + 136);
      v77 = *(v0 + 120);
      v78 = *(v0 + 112);
      v79 = *(v0 + 88);

      v75 = *(v0 + 8);

      return v75();
    }
  }
}

uint64_t sub_100334B1C()
{
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[28];
  v7 = v0[24];
  v8 = v0[18];

  v4(v7, v8);
  v4(v6, v8);
  v10 = v0[27];
  v9 = v0[28];
  v12 = v0[25];
  v11 = v0[26];
  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[16];
  v18 = v0[17];
  v21 = v0[15];
  v22 = v0[14];
  v23 = v0[11];
  v24 = v0[43];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100334C78()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v8 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = sub_100335A18;
  }

  else
  {
    v6 = *(v2 + 72);
    sub_100007BAC((v2 + 16));
    v5 = sub_100334DA0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100334DA0()
{
  v34 = v0;
  sub_100359E10(*(v0 + 120), type metadata accessor for OwnedBeaconRecord);
  v1 = *(v0 + 400);
  *(v0 + 424) = *(v0 + 392);
  v2 = v1 + 1;
  if (v1 + 1 == *(v0 + 352))
  {
    v3 = *(v0 + 280);
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = *(v0 + 224);
    v7 = *(v0 + 232);
    v8 = *(v0 + 176);
    v9 = *(v0 + 144);

    v7(v8, v6, v9);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 176);
    v16 = *(v0 + 144);
    if (v12)
    {
      v32 = *(v0 + 264);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v32(v15, v16);
      v22 = sub_1000136BC(v19, v21, &v33);

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "Disabled notify when found for group %{private,mask.hash}s.", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      v13(v15, v16);
    }

    v30 = async function pointer to daemon.getter[1];
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    *v31 = v0;
    v31[1] = sub_100335134;

    return daemon.getter();
  }

  else
  {
    *(v0 + 400) = v2;
    v23 = *(v0 + 120);
    v24 = *(v0 + 96);
    sub_100034E04(*(v0 + 280) + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(v0 + 384) * v2, v23, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 40) = v24;
    *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord);
    v25 = sub_1000280DC((v0 + 16));
    sub_100034E04(v23, v25, type metadata accessor for OwnedBeaconRecord);
    v26 = swift_task_alloc();
    *(v0 + 408) = v26;
    *v26 = v0;
    v26[1] = sub_100334C78;
    v27 = *(v0 + 72);
    v28 = *(v0 + 56);

    return sub_100335FE8(v28, v0 + 16);
  }
}

uint64_t sub_100335134(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v12 = *v1;
  *(v3 + 440) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 448) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100335318;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100335318(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = sub_1003358DC;
  }

  else
  {
    v9 = v4[55];

    v4[58] = a1;
    v8 = sub_100335454;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100335454()
{
  v1 = v0[58];
  v2 = swift_allocObject();
  v0[59] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_100335560;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 8);
}

uint64_t sub_100335560()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 472);
  v3 = *(*v0 + 464);
  v5 = *v0;

  return _swift_task_switch(sub_10033568C, v3, 0);
}

uint64_t sub_10033568C()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1003356F8, v2, 0);
}

uint64_t sub_1003356F8()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];
  if (v0[53])
  {
    v4 = v0[18];
    v5 = v0[53];
    swift_willThrow();
    v2(v3, v4);
    v7 = v0[27];
    v6 = v0[28];
    v9 = v0[25];
    v8 = v0[26];
    v11 = v0[23];
    v10 = v0[24];
    v13 = v0[21];
    v12 = v0[22];
    v14 = v0[17];
    v26 = v0[16];
    v28 = v0[15];
    v30 = v0[14];
    v31 = v0[11];
  }

  else
  {
    v17 = v0[26];
    v16 = v0[27];
    v19 = v0[24];
    v18 = v0[25];
    v21 = v0[22];
    v20 = v0[23];
    v24 = v0[21];
    v25 = v0[17];
    v27 = v0[16];
    v29 = v0[15];
    v22 = v0[14];
    v32 = v0[11];
    v2(v3, v0[18]);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003358DC()
{
  v1 = v0[55];
  v2 = v0[53];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[28];
  v6 = v0[18];

  v3(v5, v6);
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[16];
  v16 = v0[17];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[57];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100335A18()
{
  v59 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 248);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  sub_100007BAC((v0 + 16));
  sub_100034E04(v3, v4, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v54 = *(v0 + 416);
    v55 = *(v0 + 392);
    v7 = *(v0 + 144);
    v8 = *(v0 + 112);
    v56 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v13 = *(v9 + 20);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100359E10(v8, type metadata accessor for OwnedBeaconRecord);
    v17 = sub_1000136BC(v14, v16, &v58);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    *v11 = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not disable notify when found for %{private,mask.hash}s, error: %{public}@", v10, 0x20u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);

    v19 = v56;
  }

  else
  {
    v20 = *(v0 + 392);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);

    sub_100359E10(v22, type metadata accessor for OwnedBeaconRecord);
    v19 = v21;
  }

  sub_100359E10(v19, type metadata accessor for OwnedBeaconRecord);
  v23 = *(v0 + 416);
  *(v0 + 424) = v23;
  v24 = *(v0 + 400) + 1;
  if (v24 == *(v0 + 352))
  {
    v25 = *(v0 + 280);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = *(v0 + 224);
    v29 = *(v0 + 232);
    v30 = *(v0 + 176);
    v31 = *(v0 + 144);

    v29(v30, v28, v31);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 256);
    v35 = *(v0 + 264);
    v37 = *(v0 + 176);
    v38 = *(v0 + 144);
    if (v34)
    {
      v57 = *(v0 + 264);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v58 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v57(v37, v38);
      v44 = sub_1000136BC(v41, v43, &v58);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v32, v33, "Disabled notify when found for group %{private,mask.hash}s.", v39, 0x16u);
      sub_100007BAC(v40);
    }

    else
    {

      v35(v37, v38);
    }

    v52 = async function pointer to daemon.getter[1];
    v53 = swift_task_alloc();
    *(v0 + 432) = v53;
    *v53 = v0;
    v53[1] = sub_100335134;

    return daemon.getter();
  }

  else
  {
    *(v0 + 392) = v23;
    *(v0 + 400) = v24;
    v45 = *(v0 + 120);
    v46 = *(v0 + 96);
    sub_100034E04(*(v0 + 280) + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(v0 + 384) * v24, v45, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 40) = v46;
    *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord);
    v47 = sub_1000280DC((v0 + 16));
    sub_100034E04(v45, v47, type metadata accessor for OwnedBeaconRecord);
    v48 = swift_task_alloc();
    *(v0 + 408) = v48;
    *v48 = v0;
    v48[1] = sub_100334C78;
    v49 = *(v0 + 72);
    v50 = *(v0 + 56);

    return sub_100335FE8(v50, v0 + 16);
  }
}

uint64_t sub_100335FE8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v3[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v3[19] = found;
  v9 = *(found - 8);
  v3[20] = v9;
  v10 = *(v9 + 64) + 15;
  v3[21] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[22] = v11;
  v12 = *(v11 - 8);
  v3[23] = v12;
  v3[24] = *(v12 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1003361D4, v2, 0);
}

uint64_t sub_1003361D4()
{
  v35 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[12];
  v4 = v0[13];
  v6 = type metadata accessor for Logger();
  v0[28] = sub_1000076D4(v6, qword_10177AC78);
  sub_10001F280(v4, (v0 + 2));
  v7 = *(v3 + 16);
  v0[29] = v7;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  if (v10)
  {
    v12 = v0[26];
    v14 = v0[22];
    v13 = v0[23];
    log = v8;
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v15 = 136315394;
    v32 = v9;
    v17 = v0[5];
    v16 = v0[6];
    sub_1000035D0(v0 + 2, v17);
    (*(*(*(v16 + 8) + 8) + 32))(v17);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    sub_100007BAC(v0 + 2);
    v22 = sub_1000136BC(v18, v20, &v34);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v21(v11, v14);
    v26 = sub_1000136BC(v23, v25, &v34);

    *(v15 + 14) = v26;
    _os_log_impl(&_mh_execute_header, log, v32, "disableNotifyWhenFound for %s, commandId %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = v0[22];
    v27 = v0[23];

    v21 = *(v27 + 8);
    v21(v11, v28);
    sub_100007BAC(v0 + 2);
  }

  v0[31] = v21;
  v29 = async function pointer to daemon.getter[1];
  v30 = swift_task_alloc();
  v0[32] = v30;
  *v30 = v0;
  v30[1] = sub_100336530;

  return daemon.getter();
}

uint64_t sub_100336530(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v12 = *v1;
  v3[33] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[34] = v6;
  v7 = type metadata accessor for Daemon();
  v3[35] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[36] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[37] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[38] = v10;
  *v6 = v12;
  v6[1] = sub_10033672C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10033672C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = sub_100336FAC;
  }

  else
  {
    v9 = v4[33];
    v10 = v4[14];

    v4[40] = a1;
    v8 = sub_10033686C;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10033686C()
{
  v1 = v0[40];
  v2 = v0[26];
  v3 = v0[13];
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);

  return _swift_task_switch(sub_100336914, v1, 0);
}

uint64_t sub_100336914()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  (*(v0 + 232))(v3, *(v0 + 208), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 328) = v8;
  *(v8 + 16) = v1;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 336) = v10;
  *v10 = v0;
  v10[1] = sub_100336A68;
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v8, v12);
}

uint64_t sub_100336A68()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v4 = *(*v0 + 320);
  v5 = *(*v0 + 248);
  v6 = *(*v0 + 208);
  v7 = *(*v0 + 184);
  v8 = *(*v0 + 176);
  v9 = *(*v0 + 112);
  v11 = *v0;

  *(v1 + 344) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v6, v8);

  return _swift_task_switch(sub_100336C3C, v9, 0);
}

uint64_t sub_100336C3C()
{
  v31 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[28];
    v3 = v0[13];
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    sub_10001F280(v3, (v0 + 7));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v29 = v0[43];
      v6 = v0[31];
      v7 = v0[26];
      v8 = v0[22];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = v0[10];
      v11 = v0[11];
      sub_1000035D0(v0 + 7, v12);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      v6(v7, v8);
      sub_100007BAC(v0 + 7);
      v16 = sub_1000136BC(v13, v15, &v30);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "No notify when found record for beacon %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100007BAC(v0 + 7);
    }

    sub_100358F3C();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[25];
    v23 = v0[21];
    v24 = v0[18];
    v26 = v0[15];
    v25 = v0[16];

    v27 = v0[1];

    return v27();
  }

  else
  {
    sub_100359DA8(v1, v0[21], type metadata accessor for NotifyWhenFoundRecord);
    v17 = async function pointer to daemon.getter[1];
    v18 = swift_task_alloc();
    v0[44] = v18;
    *v18 = v0;
    v18[1] = sub_100337070;

    return daemon.getter();
  }
}

uint64_t sub_100336FAC()
{
  v1 = v0[33];

  v2 = v0[39];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[18];
  v9 = v0[15];
  v8 = v0[16];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100337070(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 352);
  v5 = *v1;
  v3[45] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[46] = v7;
  *v7 = v5;
  v7[1] = sub_1003371FC;
  v8 = v3[38];
  v9 = v3[37];
  v10 = v3[36];
  v11 = v3[35];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_1003371FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v10 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v5 = v3[14];
    v6 = sub_1003374A0;
  }

  else
  {
    v7 = v3[45];
    v8 = v3[14];

    v6 = sub_100337324;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100337324()
{
  v1 = v0[48];
  v2 = v0[21];
  v3 = v0[16];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_100359D7C, v3);
  v4 = v0[47];
  if (v1)
  {
    v5 = v0[21];
    v6 = v0[47];

    sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[25];
    v10 = v0[21];
    v11 = v0[18];
    v13 = v0[15];
    v12 = v0[16];

    v14 = v0[1];

    return v14();
  }

  else
  {

    return _swift_task_switch(sub_100337584, v4, 0);
  }
}

uint64_t sub_1003374A0()
{
  v1 = v0[45];
  v2 = v0[21];

  sub_100359E10(v2, type metadata accessor for NotifyWhenFoundRecord);
  v3 = v0[48];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003375AC()
{
  v1 = v0[49];
  v2 = v0[16];
  v3 = swift_task_alloc();
  v0[50] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_1003376A4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_1003376A4()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v7 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = sub_100337A74;
  }

  else
  {
    v5 = *(v2 + 400);

    v4 = sub_1003377C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003377C0()
{
  v1 = v0[47];
  v2 = v0[16];
  v3 = v0[14];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100337848, v3, 0);
}

uint64_t sub_100337848()
{
  v1 = v0[20];
  v2 = v0[21];
  sub_1000BC4D4(&qword_10169E398, &qword_10139D838);
  v3 = *(v1 + 72);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  v0[53] = v5;
  *(v5 + 16) = xmmword_101385D80;
  sub_100034E04(v2, v5 + v4, type metadata accessor for NotifyWhenFoundRecord);
  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_10033794C;
  v7 = v0[14];

  return sub_10034C794(v5);
}

uint64_t sub_10033794C()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v9 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_10033849C;
  }

  else
  {
    v6 = *(v2 + 424);
    v7 = *(v2 + 112);

    v5 = sub_100337C40;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100337A74()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_100337AE0, v2, 0);
}

uint64_t sub_100337AE0()
{
  v1 = v0[47];
  v2 = v0[16];
  v3 = v0[14];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100337B68, v3, 0);
}

uint64_t sub_100337B68()
{
  sub_100359E10(v0[21], type metadata accessor for NotifyWhenFoundRecord);
  v1 = v0[52];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100337C40()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_10025F0D4(0, 0, v2, &unk_10139D840, v4);

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_100337D70;

  return daemon.getter();
}

uint64_t sub_100337D70(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 448);
  v5 = *v1;
  v3[57] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[58] = v7;
  *v7 = v5;
  v7[1] = sub_100337EFC;
  v8 = v3[38];
  v9 = v3[37];
  v10 = v3[36];
  v11 = v3[35];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_100337EFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 464);
  v6 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = sub_1003383B8;
  }

  else
  {
    v9 = v4[57];

    v4[60] = a1;
    v8 = sub_100338038;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100338038()
{
  v1 = v0[60];
  v2 = swift_allocObject();
  v0[61] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;
  v3 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_100338144;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 8);
}

uint64_t sub_100338144()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 480);
  v5 = *v0;

  return _swift_task_switch(sub_100338270, v3, 0);
}

uint64_t sub_100338270()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1003382DC, v2, 0);
}

uint64_t sub_1003382DC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  sub_100359E10(v0[21], type metadata accessor for NotifyWhenFoundRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003383B8()
{
  v1 = v0[57];
  v2 = v0[21];

  sub_100359E10(v2, type metadata accessor for NotifyWhenFoundRecord);
  v3 = v0[59];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10033849C()
{
  v1 = v0[53];
  v2 = v0[21];

  sub_100359E10(v2, type metadata accessor for NotifyWhenFoundRecord);
  v3 = v0[55];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[21];
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100338580()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100338638, v0, 0);
}

uint64_t sub_100338638()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering new xpc activity for Notify WhenFound.", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_100338784;

  return daemon.getter();
}

uint64_t sub_100338784(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100338968;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100338968(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_100338DA4;
  }

  else
  {
    v9 = v4[6];
    v10 = v4[2];

    v4[9] = a1;
    v8 = sub_100338AA8;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100338AA8()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  type metadata accessor for XPCActivity();
  static DispatchQoS.default.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100338C00;
  v9 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000026, 0x8000000101351560, v9, &unk_10139D7F0, v5, &unk_10139D800, v6);
}

uint64_t sub_100338C00(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100338D18, v3, 0);
}

uint64_t sub_100338D18()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[4];
  v4 = v0[2];

  v5 = *(v4 + 136);
  *(v4 + 136) = v1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_100338DA4()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_100338E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = type metadata accessor for XPCActivity.Criteria();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[9] = v10;
  *v10 = v4;
  v10[1] = sub_100338F44;

  return sub_100359234(a3);
}

uint64_t sub_100338F44(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100339044, 0, 0);
}

uint64_t sub_100339044()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    sub_1000D2A70(*(v0 + 24), v3, &qword_10169E370, &qword_1013BA3F0);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_10000B3A8(*(v0 + 40), &qword_10169E370, &qword_1013BA3F0);
      v4 = swift_task_alloc();
      *(v0 + 80) = v4;
      *v4 = v0;
      v4[1] = sub_100339208;
      v5 = *(v0 + 32);
      v6 = *(v0 + 16);

      return sub_100329218(v6);
    }

    v9 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = *(v0 + 16);
    v12 = *(*(v0 + 56) + 32);
    v12(v9, *(v0 + 40), v10);
    v12(v11, v9, v10);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  (*(*(v0 + 56) + 56))(*(v0 + 16), v8, 1, *(v0 + 48));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100339208()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_100339304, 0, 0);
}

uint64_t sub_100339304()
{
  v1 = v0[8];
  v2 = v0[5];
  (*(v0[7] + 56))(v0[2], 0, 1, v0[6]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100339390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100339460, 0, 0);
}

uint64_t sub_100339460()
{
  v44 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AC78);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    buf = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *buf = 136446210;
    sub_10003A260(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State);
    v40 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v43);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v40, "Notify when found activity state: %{public}s.", buf, 0xCu);
    sub_100007BAC(v42);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[8];
  v6(v20, v0[6], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      v29 = v0[7];
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v0[12] = Strong;
      if (Strong)
      {
        v31 = swift_task_alloc();
        v0[13] = v31;
        *v31 = v0;
        v31[1] = sub_100339A18;

        return sub_100339F7C();
      }

      v38 = v0[5];
      type metadata accessor for XPCActivity();
      sub_10003A260(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
      v33 = dispatch thunk of Actor.unownedExecutor.getter();
      v35 = v39;
      v36 = sub_100339BA8;
      goto LABEL_26;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      v32 = v0[5];
      type metadata accessor for XPCActivity();
      sub_10003A260(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
      v33 = dispatch thunk of Actor.unownedExecutor.getter();
      v35 = v34;
      v36 = sub_100339948;
LABEL_26:

      return _swift_task_switch(v36, v33, v35);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v37 = v0[9] + 8;
      v17(v0[10], v0[8]);
    }
  }

  v26 = v0[10];
  v25 = v0[11];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100339948()
{
  v1 = *(v0 + 40);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1003399B0, 0, 0);
}

uint64_t sub_1003399B0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100339A18()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v8 = *v0;

  v4 = *(v1 + 40);
  type metadata accessor for XPCActivity();
  sub_10003A260(&qword_101696CC0, 255, &type metadata accessor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100339BA8, v6, v5);
}

uint64_t sub_100339BA8()
{
  v1 = *(v0 + 40);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100359F08, 0, 0);
}

uint64_t sub_100339C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100339C30, a4, 0);
}

uint64_t sub_100339C30()
{
  *(v0 + 32) = *(*(v0 + 24) + 136);

  return _swift_task_switch(sub_100339CA4, 0, 0);
}

uint64_t sub_100339CA4()
{
  if (v0[4])
  {
    v1 = *(&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + 1);
    v8 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_100339DC8;
    v3 = v0[2];

    return v8(v3);
  }

  else
  {
    v5 = v0[2];
    v6 = type metadata accessor for XPCActivity.State();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100339DC8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100339EE0, 0, 0);
}

uint64_t sub_100339EE0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100339F7C()
{
  v1[8] = v0;
  v2 = sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v1[14] = *(v6 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v1[17] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v1[19] = found;
  v10 = *(found - 8);
  v1[20] = v10;
  v11 = *(v10 + 64) + 15;
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10033A150, v0, 0);
}

uint64_t sub_10033A150()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "schedulerFired", v4, 2u);
  }

  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_10033A2A0;

  return daemon.getter();
}

uint64_t sub_10033A2A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v12 = *v1;
  v3[24] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[25] = v6;
  v7 = type metadata accessor for Daemon();
  v3[26] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[27] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[28] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[29] = v10;
  *v6 = v12;
  v6[1] = sub_10033A49C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10033A49C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 200);
  v7 = *v2;

  v8 = v4[24];
  if (v1)
  {

    v9 = v5[21];
    v10 = v5[18];
    v11 = v5[15];
    v12 = v5[16];
    v13 = v5[11];

    v14 = *(v7 + 8);

    return v14();
  }

  else
  {

    v5[30] = a1;

    return _swift_task_switch(sub_10033A650, a1, 0);
  }
}

uint64_t sub_10033A650()
{
  v1 = *(v0 + 240);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_10033A73C;
  v5 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_10033A73C()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return _swift_task_switch(sub_10033A854, v2, 0);
}

uint64_t sub_10033A854()
{
  v1 = v0[30];
  v2 = v0[8];

  v0[32] = v0[7];

  return _swift_task_switch(sub_10033A8C8, v2, 0);
}

uint64_t sub_10033A8C8()
{
  v1 = v0[32];
  v2 = *(v1 + 16);
  v0[33] = v2;
  if (v2)
  {
    v0[34] = 0;
    v0[35] = _swiftEmptyArrayStorage;
    sub_10001F280(v1 + 32, (v0 + 2));
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v0[36] = v4;
    *v4 = v0;
    v4[1] = sub_10033AAFC;

    return daemon.getter();
  }

  else
  {

    v0[42] = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v5 = swift_task_alloc();
      v0[43] = v5;
      *v5 = v0;
      v5[1] = sub_10033B7B4;
      v6 = v0[8];

      return sub_10034AE3C(_swiftEmptyArrayStorage);
    }

    else
    {
      v7 = v0[22];

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "No notify records to publish", v10, 2u);
      }

      v11 = v0[21];
      v12 = v0[18];
      v14 = v0[15];
      v13 = v0[16];
      v15 = v0[11];

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_10033AAFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 288);
  v5 = *v1;
  v3[37] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[38] = v7;
  *v7 = v5;
  v7[1] = sub_10033AC88;
  v8 = v3[29];
  v9 = v3[28];
  v10 = v3[27];
  v11 = v3[26];

  return ActorServiceDaemon.getService<A>()(v11, v10, v9, v8);
}

uint64_t sub_10033AC88(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 304);
  v7 = *v2;

  v8 = *(v4 + 296);
  v9 = *(v4 + 64);
  if (v1)
  {

    v10 = sub_10033B540;
  }

  else
  {

    *(v5 + 312) = a1;
    v10 = sub_10033ADF0;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10033ADF0()
{
  v1 = v0[39];
  v2 = v0[16];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000035D0(v0 + 2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);

  return _swift_task_switch(sub_10033AE98, v1, 0);
}

uint64_t sub_10033AE98()
{
  v1 = v0[39];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[12];
  (*(v3 + 16))(v2, v0[16], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[40] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v8[1] = sub_10033AFF0;
  v10 = v0[17];
  v9 = v0[18];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v6, v10);
}

uint64_t sub_10033AFF0()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 104);
  v6 = *(*v0 + 96);
  v7 = *(*v0 + 64);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_10033B19C, v7, 0);
}

uint64_t sub_10033B19C()
{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    v2 = v0[35];
  }

  else
  {
    v3 = v0[35];
    v4 = v0[21];
    v5 = v0[11];
    v6 = v0[9];
    sub_100359DA8(v1, v4, type metadata accessor for NotifyWhenFoundRecord);
    v7 = *(v6 + 48);
    sub_10001F280((v0 + 2), v5);
    sub_100034E04(v4, v5 + v7, type metadata accessor for NotifyWhenFoundRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = v0[35];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_100A5CAC0(0, v2[2] + 1, 1, v0[35]);
    }

    v10 = v2[2];
    v9 = v2[3];
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5CAC0(v9 > 1, v10 + 1, 1, v2);
    }

    v12 = v0[10];
    v11 = v0[11];
    sub_100359E10(v0[21], type metadata accessor for NotifyWhenFoundRecord);
    v2[2] = v10 + 1;
    sub_1000D2AD8(v11, v2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, &qword_10169E348, &unk_10139D7A0);
  }

  v13 = v0[33];
  v14 = v0[34] + 1;
  sub_100007BAC(v0 + 2);
  if (v14 == v13)
  {
    v15 = v0[32];

    v0[42] = v2;
    if (v2[2])
    {
      v16 = swift_task_alloc();
      v0[43] = v16;
      *v16 = v0;
      v16[1] = sub_10033B7B4;
      v17 = v0[8];

      return sub_10034AE3C(v2);
    }

    else
    {
      v22 = v0[22];

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "No notify records to publish", v25, 2u);
      }

      v26 = v0[21];
      v27 = v0[18];
      v29 = v0[15];
      v28 = v0[16];
      v30 = v0[11];

      v31 = v0[1];

      return v31();
    }
  }

  else
  {
    v19 = v0[34];
    v0[34] = v19 + 1;
    v0[35] = v2;
    sub_10001F280(v0[32] + 40 * v19 + 72, (v0 + 2));
    v20 = async function pointer to daemon.getter[1];
    v21 = swift_task_alloc();
    v0[36] = v21;
    *v21 = v0;
    v21[1] = sub_10033AAFC;

    return daemon.getter();
  }
}

uint64_t sub_10033B540()
{
  (*(v0[20] + 56))(v0[18], 1, 1, v0[19]);
  sub_10000B3A8(v0[18], &qword_10169E328, &unk_10139D740);
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34] + 1;
  sub_100007BAC(v0 + 2);
  if (v3 == v2)
  {
    v4 = v0[32];

    v0[42] = v1;
    if (*(v1 + 16))
    {
      v5 = swift_task_alloc();
      v0[43] = v5;
      *v5 = v0;
      v5[1] = sub_10033B7B4;
      v6 = v0[8];

      return sub_10034AE3C(v1);
    }

    else
    {
      v11 = v0[22];

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "No notify records to publish", v14, 2u);
      }

      v15 = v0[21];
      v16 = v0[18];
      v18 = v0[15];
      v17 = v0[16];
      v19 = v0[11];

      v20 = v0[1];

      return v20();
    }
  }

  else
  {
    v8 = v0[34];
    v0[34] = v8 + 1;
    v0[35] = v1;
    sub_10001F280(v0[32] + 40 * v8 + 72, (v0 + 2));
    v9 = async function pointer to daemon.getter[1];
    v10 = swift_task_alloc();
    v0[36] = v10;
    *v10 = v0;
    v10[1] = sub_10033AAFC;

    return daemon.getter();
  }
}

uint64_t sub_10033B7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v9 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_10033B9E0;
  }

  else
  {
    v6 = *(v2 + 336);
    v7 = *(v2 + 64);

    v5 = sub_10033B8DC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10033B8DC()
{
  v1 = v0[22];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully published", v4, 2u);
  }

  v5 = v0[21];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10033B9E0()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[22];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[44];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to publish keys: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[21];
  v12 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10033BB7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 360) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  v6 = type metadata accessor for TimeBasedKey();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = type metadata accessor for DateInterval();
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v12 = type metadata accessor for Date();
  *(v5 + 104) = v12;
  v13 = *(v12 - 8);
  *(v5 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_10169E368, &qword_1013D6690) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v16 = type metadata accessor for KeyGenerationBeaconInfo();
  *(v5 + 136) = v16;
  v17 = *(v16 - 8);
  *(v5 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v19 = type metadata accessor for BeaconIdentifier();
  *(v5 + 160) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v21 = async function pointer to daemon.getter[1];
  v22 = swift_task_alloc();
  *(v5 + 176) = v22;
  *v22 = v5;
  v22[1] = sub_10033BDF0;

  return daemon.getter();
}

uint64_t sub_10033BDF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  v12 = *v1;
  v3[23] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[24] = v6;
  v7 = type metadata accessor for Daemon();
  v3[25] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[26] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10033BFE4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10033BFE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = sub_10033C6C0;
  }

  else
  {
    v9 = v4[23];

    v4[28] = a1;
    v8 = sub_10033C120;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10033C120()
{
  v1 = *(v0 + 224);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_10033C200;
  v5 = *(v0 + 224);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_10033C200()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v4 = *v0;

  return _swift_task_switch(sub_10033C318, v2, 0);
}

uint64_t sub_10033C318()
{
  v1 = v0[28];

  v0[30] = v0[2];
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_10033C3B8;

  return daemon.getter();
}

uint64_t sub_10033C3B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 248);
  v5 = *v1;
  v3[32] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[33] = v7;
  v8 = type metadata accessor for BeaconKeyService();
  v9 = sub_10003A260(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService);
  *v7 = v5;
  v7[1] = sub_10033C570;
  v10 = v3[26];
  v11 = v3[25];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10033C570(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v5 = *v2;
  *(*v2 + 272) = a1;

  v6 = *(v3 + 256);
  if (v1)
  {

    v7 = sub_10033C984;
  }

  else
  {

    v7 = sub_10033C774;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10033C6C0()
{
  v1 = v0[23];

  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10033C774()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[4];
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = v3[3];
  v6 = v3[4];
  sub_1000035D0(v3, v5);
  v7 = v1 + *(v2 + 20);
  (*(*(*(v6 + 8) + 8) + 32))(v5);
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_10033C870;
  v9 = v0[34];
  v10 = v0[21];
  v11 = v0[16];

  return sub_10098F404(v11, v10);
}

uint64_t sub_10033C870()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_10033CE1C;
  }

  else
  {
    v3 = sub_10033CBB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033C984()
{
  if (qword_101694A18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B538);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconKeyService.", v4, 2u);
  }

  v5 = v0[30];

  v6 = type metadata accessor for Daemon.Error();
  sub_10003A260(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  swift_allocError();
  *v7 = 0xD000000000000010;
  v7[1] = 0x8000000101351540;
  (*(*(v6 - 8) + 104))(v7, enum case for Daemon.Error.missingService(_:), v6);
  swift_willThrow();

  v8 = v0[21];
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[12];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10033CBB0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    goto LABEL_7;
  }

  v3 = *(v0 + 152);
  sub_100359DA8(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100359E10(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
LABEL_7:
    if (*(v0 + 360))
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        v16 = sub_100A848EC;
        v10 = swift_task_alloc();
        *(v0 + 312) = v10;
        *v10 = v0;
        v11 = sub_10033D23C;
LABEL_12:
        v10[1] = v11;
        v12 = *(v0 + 240);
        v14 = *(v0 + 32);
        v13 = *(v0 + 40);

        return v16(v14, v13, 1);
      }
    }

    else
    {
    }

    v16 = sub_100A83E64;
    v10 = swift_task_alloc();
    *(v0 + 296) = v10;
    *v10 = v0;
    v11 = sub_10033D08C;
    goto LABEL_12;
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 240);
  v7 = *(v0 + 168);
  v8 = *(v0 + 48);

  sub_100359E10(v7, type metadata accessor for BeaconIdentifier);

  return _swift_task_switch(sub_10033CEFC, v8, 0);
}

uint64_t sub_10033CE1C()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[21];

  sub_100359E10(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[36];
  v5 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10033CEFC()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
  }

  sub_100358F3C();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();
  v6 = v0[21];
  v7 = v0[19];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10033D08C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 296);
  v8 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10033D3EC, 0, 0);
  }

  else
  {
    v9 = *(v6 + 360);
    v10 = swift_task_alloc();
    *(v6 + 328) = v10;
    *v10 = v8;
    v10[1] = sub_10033D4CC;
    v11 = *(v6 + 240);
    v12 = *(v6 + 32);

    return sub_100731BF4(v12, a1, a2, v9 & 1, 0, 0);
  }
}

uint64_t sub_10033D23C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 312);
  v8 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10033DD58, 0, 0);
  }

  else
  {
    v9 = *(v6 + 360);
    v10 = swift_task_alloc();
    *(v6 + 328) = v10;
    *v10 = v8;
    v10[1] = sub_10033D4CC;
    v11 = *(v6 + 240);
    v12 = *(v6 + 32);

    return sub_100731BF4(v12, a1, a2, v9 & 1, 0, 0);
  }
}

uint64_t sub_10033D3EC()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[21];

  sub_100359E10(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[38];
  v5 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10033D4CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 328);
  v8 = *v4;
  *(v6 + 336) = a1;
  *(v6 + 344) = a2;
  *(v6 + 352) = v3;

  if (v3)
  {
    v9 = sub_10033DC78;
  }

  else
  {
    *(v6 + 361) = a3;
    v9 = sub_10033D5F8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10033D5F8()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[21];
  v4 = v0[6];

  sub_100359E10(v3, type metadata accessor for BeaconIdentifier);

  return _swift_task_switch(sub_10033D698, v4, 0);
}

uint64_t sub_10033D698()
{
  v56 = v0;
  if (*(v0 + 361) > 1u)
  {
    if (*(v0 + 361) == 2)
    {
      sub_100359088(*(v0 + 336), *(v0 + 344), 2u);
    }

    if (qword_101694688 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

  if (*(v0 + 361))
  {
    v1 = *(v0 + 336);
    if (*(v1 + 16))
    {
LABEL_8:
      v10 = *(v0 + 112);
      v11 = *(v0 + 120);
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      v16 = *(v0 + 24);
      v17 = *(*(v0 + 64) + 80);
      v53 = (v17 + 32) & ~v17;
      (*(v15 + 16))(v12, v1 + v53 + *(*(v0 + 56) + 20), v14);
      DateInterval.start.getter();
      (*(v15 + 8))(v12, v14);
      (*(v10 + 32))(v16, v11, v13);
      v18 = *(v1 + 16);
      if (!v18)
      {

LABEL_30:
        v39 = *(v0 + 168);
        v40 = *(v0 + 152);
        v42 = *(v0 + 120);
        v41 = *(v0 + 128);
        v43 = *(v0 + 96);
        v44 = *(v0 + 72);

        v45 = *(v0 + 8);

        return v45(_swiftEmptyArrayStorage);
      }

      v19 = *(v0 + 64);
      sub_1011244D8(0, v18, 0);
      if (*(v1 + 16))
      {
        v20 = *(v0 + 352);
        v21 = *(v0 + 72);
        v22 = *(v19 + 72);
        sub_100034E04(v1 + v53, v21, type metadata accessor for TimeBasedKey);
        sub_10033DE38(v21, v55);
        if (v20)
        {
          sub_100359E10(*(v0 + 72), type metadata accessor for TimeBasedKey);
        }

        sub_100359E10(*(v0 + 72), type metadata accessor for TimeBasedKey);
        v36 = *v55;
        v38 = _swiftEmptyArrayStorage[2];
        v37 = _swiftEmptyArrayStorage[3];
        if (v38 >= v37 >> 1)
        {
          v52 = *v55;
          sub_1011244D8((v37 > 1), v38 + 1, 1);
          v36 = v52;
        }

        _swiftEmptyArrayStorage[2] = v38 + 1;
        *&_swiftEmptyArrayStorage[2 * v38 + 4] = v36;
        if (v18 == 1)
        {
LABEL_29:

          goto LABEL_30;
        }

        v46 = v1 + v22 + v53;
        v47 = 1;
        while (v47 < *(v1 + 16))
        {
          v48 = *(v0 + 72);
          sub_100034E04(v46, v48, type metadata accessor for TimeBasedKey);
          sub_10033DE38(v48, v55);
          sub_100359E10(*(v0 + 72), type metadata accessor for TimeBasedKey);
          v49 = *v55;
          v51 = _swiftEmptyArrayStorage[2];
          v50 = _swiftEmptyArrayStorage[3];
          if (v51 >= v50 >> 1)
          {
            v54 = *v55;
            sub_1011244D8((v50 > 1), v51 + 1, 1);
            v49 = v54;
          }

          ++v47;
          _swiftEmptyArrayStorage[2] = v51 + 1;
          *&_swiftEmptyArrayStorage[2 * v51 + 4] = v49;
          v46 += v22;
          if (v18 == v47)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
LABEL_40:
      swift_once();
LABEL_17:
      v24 = type metadata accessor for Logger();
      sub_1000076D4(v24, qword_10177AC78);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v1 = *(v0 + 336);
    v2 = qword_101694688;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177AC78);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    if (v6)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
    }

    sub_100359088(v8, v7, 0);
    if (*(v1 + 16))
    {
      goto LABEL_8;
    }
  }

LABEL_22:
  sub_100358F3C();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();
  v29 = *(v0 + 168);
  v30 = *(v0 + 152);
  v32 = *(v0 + 120);
  v31 = *(v0 + 128);
  v33 = *(v0 + 96);
  v34 = *(v0 + 72);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10033DC78()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[21];

  sub_100359E10(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[44];
  v5 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10033DD58()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[21];

  sub_100359E10(v3, type metadata accessor for BeaconIdentifier);
  v4 = v0[40];
  v5 = v0[21];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

void sub_10033DE38(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for TimeBasedKey();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HashAlgorithm();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v3;
  v12 = PublicKey.advertisement.getter(*(a1 + *(v3 + 24) + 16), *(a1 + *(v3 + 24) + 24));
  v14 = v13;
  (*(v8 + 104))(v11, enum case for HashAlgorithm.sha256(_:), v7);
  v15 = Data.hash(algorithm:)();
  v17 = v16;
  sub_100016590(v12, v14);
  (*(v8 + 8))(v11, v7);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177AC78);
  sub_100034E04(a1, v6, type metadata accessor for TimeBasedKey);
  sub_100017D5C(v15, v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  sub_100016590(v15, v17);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v21 = 136315650;
    v37 = v15;
    v38 = v17;
    sub_10025DB08();
    v22 = RawRepresentable<>.hexString.getter();
    v24 = sub_1000136BC(v22, v23, &v39);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v37 = v15;
    v38 = v17;
    v25 = RawRepresentable<>.base64EncodedString(options:)();
    v27 = sub_1000136BC(v25, v26, &v39);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = *(v35 + 20);
    type metadata accessor for DateInterval();
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    sub_100359E10(v6, type metadata accessor for TimeBasedKey);
    v32 = sub_1000136BC(v29, v31, &v39);

    *(v21 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "Key hashed: %s, base64: %s, dateInterval: %s.", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100359E10(v6, type metadata accessor for TimeBasedKey);
  }

  v33 = v36;
  *v36 = v15;
  v33[1] = v17;
}

uint64_t sub_10033E248(uint64_t a1)
{
  v2[73] = v1;
  v2[72] = a1;
  v3 = type metadata accessor for NotifyMeRequest.Subscription();
  v2[74] = v3;
  v4 = *(v3 - 8);
  v2[75] = v4;
  v5 = *(v4 + 64) + 15;
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v6 = type metadata accessor for HashAlgorithm();
  v2[79] = v6;
  v7 = *(v6 - 8);
  v2[80] = v7;
  v8 = *(v7 + 64) + 15;
  v2[81] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40) - 8) + 64) + 15;
  v2[82] = swift_task_alloc();
  v10 = type metadata accessor for OwnedBeaconRecord();
  v2[83] = v10;
  v11 = *(v10 - 8);
  v2[84] = v11;
  v12 = *(v11 + 64) + 15;
  v2[85] = swift_task_alloc();
  v13 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[86] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010) - 8) + 64) + 15;
  v2[89] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_10169E350, &unk_10139D7B0);
  v2[90] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v18 = type metadata accessor for DateInterval();
  v2[96] = v18;
  v19 = *(v18 - 8);
  v2[97] = v19;
  v20 = *(v19 + 64) + 15;
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v21 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v22 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v23 = *(*(sub_1000BC4D4(&qword_10169E358, &qword_101404C50) - 8) + 64) + 15;
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v24 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v2[108] = v24;
  v25 = *(v24 - 8);
  v2[109] = v25;
  v26 = *(v25 + 64) + 15;
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v27 = type metadata accessor for UUID();
  v2[112] = v27;
  v28 = *(v27 - 8);
  v2[113] = v28;
  v2[114] = *(v28 + 64);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v2[119] = found;
  v30 = *(*(found - 8) + 64) + 15;
  v2[120] = swift_task_alloc();
  v31 = sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
  v2[121] = v31;
  v32 = *(v31 - 8);
  v2[122] = v32;
  v33 = *(v32 + 64) + 15;
  v2[123] = swift_task_alloc();
  v34 = type metadata accessor for Date();
  v2[124] = v34;
  v35 = *(v34 - 8);
  v2[125] = v35;
  v36 = *(v35 + 64) + 15;
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();

  return _swift_task_switch(sub_10033E900, v1, 0);
}

uint64_t sub_10033E900()
{
  v71 = v0;
  v1 = *(v0 + 576);
  static Date.trustedNow.getter(*(v0 + 1104));
  v2 = *(v1 + 16);
  *(v0 + 1112) = v2;
  if (v2)
  {
    v3 = *(v0 + 984);
    v4 = *(v0 + 976);
    v5 = *(v0 + 576);
    v6 = *(*(v0 + 968) + 48);
    *(v0 + 1592) = v6;
    v7 = *(v4 + 80);
    *(v0 + 1596) = v7;
    *(v0 + 1120) = *(v4 + 72);
    *(v0 + 1600) = enum case for Feature.FindMy.networkScalingImprovements(_:);
    *(v0 + 1604) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 1144) = _swiftEmptyArrayStorage;
    *(v0 + 1136) = 0;
    v8 = *(v0 + 960);
    sub_1000D2A70(v5 + ((v7 + 32) & ~v7), v3, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v3, v0 + 16);
    sub_100359DA8(v3 + v6, v8, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    *(v0 + 1152) = v9;
    *(v0 + 1160) = sub_1000076D4(v9, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 944);
      v13 = *(v0 + 904);
      v14 = *(v0 + 896);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v70 = v16;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v18);
      (*(*(*(v17 + 8) + 8) + 32))(v18);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      sub_100007BAC((v0 + 56));
      v22 = sub_1000136BC(v19, v21, &v70);

      *(v15 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "publishKeys for beacon: %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v16);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }

  else
  {
    (*(*(v0 + 1000) + 8))(*(v0 + 1104), *(v0 + 992));
    v23 = *(v0 + 1104);
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    v27 = *(v0 + 1072);
    v28 = *(v0 + 1064);
    v29 = *(v0 + 1056);
    v30 = *(v0 + 1048);
    v31 = *(v0 + 1040);
    v32 = *(v0 + 1032);
    v35 = *(v0 + 1024);
    v36 = *(v0 + 1016);
    v37 = *(v0 + 1008);
    v38 = *(v0 + 984);
    v39 = *(v0 + 960);
    v40 = *(v0 + 944);
    v41 = *(v0 + 936);
    v42 = *(v0 + 928);
    v43 = *(v0 + 920);
    v44 = *(v0 + 888);
    v45 = *(v0 + 880);
    v46 = *(v0 + 856);
    v47 = *(v0 + 848);
    v48 = *(v0 + 840);
    v49 = *(v0 + 832);
    v50 = *(v0 + 824);
    v51 = *(v0 + 816);
    v52 = *(v0 + 808);
    v53 = *(v0 + 800);
    v54 = *(v0 + 792);
    v55 = *(v0 + 784);
    v56 = *(v0 + 760);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 736);
    v60 = *(v0 + 728);
    v61 = *(v0 + 712);
    v62 = *(v0 + 704);
    v63 = *(v0 + 696);
    v64 = *(v0 + 680);
    v65 = *(v0 + 656);
    v66 = *(v0 + 648);
    v67 = *(v0 + 624);
    v68 = *(v0 + 616);
    v69 = *(v0 + 608);

    v33 = *(v0 + 8);

    return v33(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10033EF80()
{
  v1 = *(v0 + 1168);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1176) = v3;
  *v3 = v0;
  v3[1] = sub_10033F070;
  v4 = *(v0 + 1168);

  return unsafeBlocking<A>(_:)(v0 + 528, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_10033F070()
{
  v1 = *(*v0 + 1176);
  v2 = *(*v0 + 1168);
  v4 = *v0;

  return _swift_task_switch(sub_10033F1B4, 0, 0);
}

uint64_t sub_10033F1B4()
{
  v1 = v0[73];
  v0[148] = v0[66];

  return _swift_task_switch(sub_10033F248, v1, 0);
}

uint64_t sub_10033F248()
{
  v1 = sub_101074038(v0[148]);
  v2 = 60 * v1;
  if ((v1 * 60) >> 64 != (60 * v1) >> 63)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v3 = v0[148];
  v0[149] = v2;
  v4 = sub_101074000(v3);
  if ((v4 * 60) >> 64 != (60 * v4) >> 63)
  {
    goto LABEL_7;
  }

  v0[150] = 60 * v4;
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v0[151] = v6;
  *v6 = v0;
  v6[1] = sub_10033F354;

  return daemon.getter();
}

uint64_t sub_10033F354(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1208);
  v12 = *v1;
  v3[152] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[153] = v6;
  v7 = type metadata accessor for Daemon();
  v3[154] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[155] = v9;
  v10 = sub_10003A260(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_10033F574;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10033F574(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1224);
  v6 = *v2;
  v4[156] = a1;
  v4[157] = v1;

  v7 = v3[152];
  if (v1)
  {
    v8 = v4[148];
    v9 = v4[143];
    v10 = v4[73];

    v11 = sub_1003470C4;
    v12 = v10;
  }

  else
  {
    v13 = v4[73];

    v11 = sub_10033F740;
    v12 = v13;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10033F740()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 936);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v5);
  (*(v6 + 192))(v5, v6);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v7);
  *(v0 + 1631) = (*(v8 + 112))(v7, v8) & 1;
  v9 = swift_task_alloc();
  *(v0 + 1264) = v9;
  *v9 = v0;
  v9[1] = sub_10033F8C4;
  v10 = *(v0 + 1248);
  v11 = *(v0 + 936);
  v12 = *(v0 + 856);

  return sub_1010D4938(v12, v11);
}

uint64_t sub_10033F8C4()
{
  v1 = *(*v0 + 1264);
  v2 = *(*v0 + 1248);
  v4 = *v0;

  return _swift_task_switch(sub_10033FA00, v2, 0);
}

uint64_t sub_10033FA00()
{
  v1 = *(v0 + 848);
  sub_1000D2A70(*(v0 + 856), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 936);
    v4 = *(v0 + 904);
    v5 = *(v0 + 896);
    v6 = *(v0 + 872);
    v36 = *(v0 + 864);
    v7 = *(v0 + 848);
    v8 = *(v0 + 840);
    sub_10000B3A8(*(v0 + 856), &qword_10169E358, &qword_101404C50);
    v9 = *(v4 + 8);
    v9(v3, v5);
    sub_10000B3A8(v7, &qword_10169E358, &qword_101404C50);
    (*(v6 + 56))(v8, 1, 1, v36);
  }

  else
  {
    v10 = *(v0 + 936);
    v11 = *(v0 + 904);
    v12 = *(v0 + 896);
    v13 = *(v0 + 856);
    v14 = *(v0 + 848);
    sub_10112FB78(*(v0 + 1631), *(v0 + 840));
    sub_10000B3A8(v13, &qword_10169E358, &qword_101404C50);
    v9 = *(v11 + 8);
    v9(v10, v12);
    sub_100359E10(v14, type metadata accessor for KeySyncSnapshot);
  }

  *(v0 + 1272) = v9;
  v15 = *(v0 + 872);
  v16 = *(v0 + 864);
  v17 = *(v0 + 832);
  sub_1000D2AD8(*(v0 + 840), v17, &unk_1016AF8A0, &unk_10139D7C0);
  v18 = (*(v15 + 48))(v17, 1, v16);
  v19 = *(v0 + 1096);
  v20 = *(v0 + 1088);
  v21 = *(v0 + 1000);
  v22 = *(v0 + 992);
  if (v18 == 1)
  {
    sub_10000B3A8(*(v0 + 832), &unk_1016AF8A0, &unk_10139D7C0);
    v23 = *(v21 + 32);
    v23(v20, v19, v22);
    v24 = 1;
  }

  else
  {
    v25 = *(v0 + 880);
    v26 = *(v0 + 864);
    v27 = *(v0 + 832);
    (*(v21 + 8))(*(v0 + 1096), *(v0 + 992));
    sub_1000D2AD8(v27, v25, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v25 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = *v25;
    }

    v23 = *(v21 + 32);
    v23(v20, v25 + *(v26 + 36), v22);
  }

  *(v0 + 1280) = v23;
  v28 = *(v0 + 1088);
  v29 = *(v0 + 992);
  v30 = *(v0 + 888);
  v31 = *(v0 + 864);
  v32 = *(v0 + 584);
  v33 = *(v0 + 1000) + 32;
  *v30 = v24;
  v34 = *(v31 + 36);
  *(v0 + 1608) = v34;
  *(v0 + 1288) = v33 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v30 + v34, v28, v29);

  return _swift_task_switch(sub_10033FD5C, v32, 0);
}

uint64_t sub_10033FD5C()
{
  v172 = v0;
  v1 = *(v0 + 1608);
  v131 = *(v0 + 1256);
  v2 = *(v0 + 1168);
  v167 = *(v0 + 1104);
  v3 = *(v0 + 1080);
  v135 = *(v0 + 1072);
  v140 = *(v0 + 1064);
  v143 = *(v0 + 1056);
  v147 = *(v0 + 1048);
  v155 = *(v0 + 1040);
  v159 = *(v0 + 1032);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 824);
  v8 = *(v0 + 816);
  v151 = *(v0 + 800);
  v163 = *(v0 + 792);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v4 + 16);
  *(v0 + 1296) = v11;
  *(v0 + 1304) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v3, v6 + v1, v5);
  v12 = *(v4 + 56);
  *(v0 + 1312) = v12;
  *(v0 + 1320) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v7, 1, 1, v5);
  v11(v8, v3, v5);
  v12(v8, 0, 1, v5);
  v13 = *(v2 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v130 = v0;
  *(v0 + 96) = *(v0 + 536);
  v14 = (v0 + 96);
  v15 = v10;
  v14[3] = &type metadata for Configuration;
  v14[4] = &off_101616308;
  sub_100884E1C(v14 - 10, v167, v7, v8, 0, v14, v135);
  sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  sub_100007BAC(v14);
  sub_10003A260(&qword_1016C9070, 255, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v16 = v167;
  }

  else
  {
    v16 = v135;
  }

  v11(v140, v16, v5);
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = *(v14 - 7);
  v20 = *(v14 - 6);
  sub_1000035D0(v14 - 10, v19);
  v127 = (*(v20 + 112))(v19, v20);
  v21 = *(v14 - 7);
  v22 = *(v14 - 6);
  v125 = v14;
  v168 = v14 - 10;
  sub_1000035D0(v14 - 10, v21);
  v132 = (*(v22 + 112))(v21, v22);
  Date.addingTimeInterval(_:)();
  v11(v147, v135, v5);
  v11(v155, v143, v5);
  DateInterval.init(start:end:)();
  Date.addingTimeInterval(_:)();
  v11(v147, v135, v5);
  v11(v155, v159, v5);
  DateInterval.init(start:end:)();
  if ((v127 & 1) == 0 || v18 <= v15)
  {
    v31 = *(*(v130 + 720) + 48);
    v32 = swift_task_alloc();
    *(v130 + 1352) = v32;
    *v32 = v130;
    if (v132)
    {
      v33 = *(v130 + 736);
      v34 = sub_100342084;
    }

    else
    {
      v33 = *(v130 + 744);
      v34 = sub_1003416B0;
    }

    v32[1] = v34;
    v26 = *(v130 + 800);
    v35 = *(v130 + 584);
    v28 = v33 + v31;
    v29 = (v14 - 10);
    v30 = 0;
    goto LABEL_12;
  }

  if (v132)
  {
    v23 = *(v130 + 760);
    v24 = *(*(v130 + 720) + 48);
    v25 = swift_task_alloc();
    *(v130 + 1328) = v25;
    *v25 = v130;
    v25[1] = sub_100340CDC;
    v26 = *(v130 + 792);
    v27 = *(v130 + 584);
    v28 = v23 + v24;
    v29 = (v14 - 10);
    v30 = 1;
LABEL_12:

    return sub_10033BB7C(v28, v29, v26, v30);
  }

  v37 = *(v130 + 1184);
  v38 = *(v130 + 1160);

  sub_10001F280((v14 - 10), (v14 + 5));
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v119 = *(v130 + 1272);
    v133 = *(v130 + 1248);
    v148 = *(v130 + 1064);
    v152 = *(v130 + 1072);
    v141 = *(v130 + 1032);
    v144 = *(v130 + 1056);
    v41 = *(v130 + 1000);
    v160 = *(v130 + 1080);
    v164 = *(v130 + 960);
    v42 = *(v130 + 944);
    v43 = *(v130 + 896);
    v156 = *(v130 + 888);
    v136 = *(v130 + 800);
    v138 = *(v130 + 992);
    v128 = *(v130 + 792);
    v117 = *(v130 + 904) + 8;
    v121 = *(v130 + 768);
    v123 = *(v130 + 776);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v171[0] = v45;
    *v44 = 141558275;
    *(v44 + 4) = 1752392040;
    *(v44 + 12) = 2081;
    v47 = *(v130 + 160);
    v46 = *(v130 + 168);
    sub_1000035D0(v125 + 5, v47);
    (*(*(*(v46 + 8) + 8) + 32))(v47);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    v51 = v43;
    v14 = v125;
    v119(v42, v51);
    sub_100007BAC(v125 + 5);
    v52 = sub_1000136BC(v48, v50, v171);

    *(v44 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v39, v40, "Not subscribing beacon: %{private,mask.hash}s", v44, 0x16u);
    sub_100007BAC(v45);

    v53 = *(v123 + 8);
    v53(v128, v121);
    v54 = *(v41 + 8);
    v54(v141, v138);
    v53(v136, v121);
    v54(v144, v138);
    v54(v148, v138);
    v54(v152, v138);
    v54(v160, v138);
    sub_10000B3A8(v156, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v164, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v55 = *(v130 + 1248);
    v149 = *(v130 + 1064);
    v153 = *(v130 + 1072);
    v145 = *(v130 + 1056);
    v56 = *(v130 + 1032);
    v57 = *(v130 + 1000);
    v58 = *(v130 + 992);
    v161 = *(v130 + 1080);
    v165 = *(v130 + 960);
    v157 = *(v130 + 888);
    v59 = *(v130 + 800);
    v60 = *(v130 + 792);
    v61 = *(v130 + 776);
    v62 = *(v130 + 768);

    v63 = *(v61 + 8);
    v63(v60, v62);
    v54 = *(v57 + 8);
    v54(v56, v58);
    v63(v59, v62);
    v54(v145, v58);
    v54(v149, v58);
    v54(v153, v58);
    v54(v161, v58);
    sub_10000B3A8(v157, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v165, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC(v14 + 5);
  }

  v64 = *(v130 + 1144);
  v65 = *(v130 + 1128);
  v66 = *(v130 + 1112);
  v67 = *(v130 + 1136) + 1;
  sub_100007BAC(v168);
  if (v67 == v66)
  {
    v98 = v64;
    v68 = *(v130 + 1000) + 8;
    v54(*(v130 + 1104), *(v130 + 992));
    v69 = *(v130 + 1104);
    v70 = *(v130 + 1096);
    v71 = *(v130 + 1088);
    v72 = *(v130 + 1080);
    v73 = *(v130 + 1072);
    v74 = *(v130 + 1064);
    v75 = *(v130 + 1056);
    v76 = *(v130 + 1048);
    v77 = *(v130 + 1040);
    v78 = *(v130 + 1032);
    v99 = *(v130 + 1024);
    v100 = *(v130 + 1016);
    v101 = *(v130 + 1008);
    v102 = *(v130 + 984);
    v103 = *(v130 + 960);
    v104 = *(v130 + 944);
    v105 = *(v130 + 936);
    v106 = *(v130 + 928);
    v107 = *(v130 + 920);
    v108 = *(v130 + 888);
    v109 = *(v130 + 880);
    v110 = *(v130 + 856);
    v111 = *(v130 + 848);
    v112 = *(v130 + 840);
    v113 = *(v130 + 832);
    v114 = *(v130 + 824);
    v115 = *(v130 + 816);
    v116 = *(v130 + 808);
    v118 = *(v130 + 800);
    v120 = *(v130 + 792);
    v122 = *(v130 + 784);
    v124 = *(v130 + 760);
    v126 = *(v130 + 752);
    v129 = *(v130 + 744);
    v134 = *(v130 + 736);
    v137 = *(v130 + 728);
    v139 = *(v130 + 712);
    v142 = *(v130 + 704);
    v146 = *(v130 + 696);
    v150 = *(v130 + 680);
    v154 = *(v130 + 656);
    v158 = *(v130 + 648);
    v162 = *(v130 + 624);
    v166 = *(v130 + 616);
    v169 = *(v130 + 608);

    v79 = *(v130 + 8);

    return v79(v98);
  }

  else
  {
    v80 = v14 - 5;
    v81 = *(v130 + 1136) + 1;
    *(v130 + 1144) = v64;
    *(v130 + 1136) = v81;
    *(v130 + 1128) = v65;
    v82 = *(v130 + 1592);
    v83 = *(v130 + 984);
    v84 = *(v130 + 960);
    sub_1000D2A70(*(v130 + 576) + ((*(v130 + 1596) + 32) & ~*(v130 + 1596)) + *(v130 + 1120) * v81, v83, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v83, v168);
    sub_100359DA8(v83 + v82, v84, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    *(v130 + 1152) = v85;
    *(v130 + 1160) = sub_1000076D4(v85, qword_10177AC78);
    sub_10001F280(v168, (v14 - 5));
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = *(v130 + 944);
      v89 = *(v130 + 904);
      v90 = *(v130 + 896);
      v91 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v171[0] = v170;
      *v91 = 141558275;
      *(v91 + 4) = 1752392040;
      *(v91 + 12) = 2081;
      v93 = *(v130 + 80);
      v92 = *(v130 + 88);
      sub_1000035D0(v80, v93);
      (*(*(*(v92 + 8) + 8) + 32))(v93);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v95;
      (*(v89 + 8))(v88, v90);
      sub_100007BAC(v80);
      v97 = sub_1000136BC(v94, v96, v171);

      *(v91 + 14) = v97;
      _os_log_impl(&_mh_execute_header, v86, v87, "publishKeys for beacon: %{private,mask.hash}s", v91, 0x16u);
      sub_100007BAC(v170);
    }

    else
    {

      sub_100007BAC(v14 - 5);
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v130 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100340CDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1328);
  v11 = *v2;
  *(*v2 + 1336) = v1;

  if (v1)
  {
    v6 = v4[148];
    v7 = v4[73];

    v8 = sub_10034748C;
    v9 = v7;
  }

  else
  {
    v9 = v4[73];
    v4[168] = a1;
    v8 = sub_100340E58;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100340E58()
{
  v89 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1280);
  v84 = *(v0 + 1160);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v8 = *(v0 + 720);
  *v6 = *(v0 + 1344);
  sub_1000D2A70(v6, v7, &qword_10169E350, &unk_10139D7B0);
  v9 = *v7;

  v2(v3, v7 + *(v8 + 48), v5);
  sub_1000D2A70(v6, v7, &qword_10169E350, &unk_10139D7B0);
  v10 = *v7;
  v87 = *(v4 + 8);
  v87(v7 + *(v8 + 48), v5);
  sub_10001F280(v0 + 16, v0 + 216);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v85 = v10;
    v13 = *(v0 + 944);
    v14 = *(v0 + 896);
    log = *(v0 + 1272);
    v81 = *(v0 + 760);
    v15 = *(v0 + 904) + 8;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v88 = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    sub_1000035D0((v0 + 216), v19);
    (*(*(*(v18 + 8) + 8) + 32))(v19);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = v13;
    v10 = v85;
    (log)(v23, v14);
    sub_100007BAC((v0 + 216));
    v24 = sub_1000136BC(v20, v22, &v88);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "Subscribing secondary keys for beacon: %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v17);

    sub_10000B3A8(v81, &qword_10169E350, &unk_10139D7B0);
  }

  else
  {
    v25 = *(v0 + 760);

    sub_10000B3A8(v25, &qword_10169E350, &unk_10139D7B0);
    sub_100007BAC((v0 + 216));
  }

  *(v0 + 1424) = _swiftEmptyArrayStorage;
  *(v0 + 1416) = v10;
  *(v0 + 1408) = v87;
  v26 = *(v0 + 928);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v27);
  (*(*(*(v28 + 8) + 8) + 32))(v27);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 1272);
  v30 = *(v0 + 928);
  v31 = *(v0 + 896);
  v32 = *(v0 + 712);
  v33 = *(v0 + 904) + 8;
  v34 = sub_100035730(v30, sub_100352E10, 0);
  sub_1012BB138(v34, v32);

  *(v0 + 1432) = v33 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v30, v31);
  v35 = type metadata accessor for BeaconObservation();
  if ((*(*(v35 - 8) + 48))(v32, 1, v35) == 1)
  {
    sub_10000B3A8(*(v0 + 712), &qword_1016A42E0, &qword_1013B0010);
    v36 = 1;
  }

  else
  {
    v37 = *(v0 + 1304);
    v38 = *(v0 + 712);
    (*(v0 + 1296))(*(v0 + 808), v38 + *(v35 + 20), *(v0 + 992));
    sub_100359E10(v38, type metadata accessor for BeaconObservation);
    v36 = 0;
  }

  v39 = *(v0 + 1320);
  v40 = *(v0 + 1304);
  v41 = *(v0 + 1296);
  v42 = *(v0 + 1080);
  v43 = *(v0 + 1024);
  v44 = *(v0 + 1016);
  v45 = *(v0 + 1008);
  v46 = *(v0 + 992);
  v82 = *(v0 + 792);
  v86 = *(v0 + 1160);
  loga = *(v0 + 784);
  v47 = *(v0 + 776);
  v48 = *(v0 + 768);
  (*(v0 + 1312))(*(v0 + 808), v36, 1, v46);
  v41(v44, v42, v46);
  v41(v45, v43, v46);
  (*(v47 + 16))(loga, v82, v48);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 1016);
  v53 = *(v0 + 1008);
  v54 = *(v0 + 1000);
  v55 = *(v0 + 992);
  v56 = *(v0 + 784);
  v57 = *(v0 + 776);
  v58 = *(v0 + 768);
  if (v51)
  {
    v76 = *(v0 + 1008);
    v83 = v50;
    v59 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v59 = 136315650;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date);
    v77 = v56;
    logb = v49;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v87(v52, v55);
    v63 = sub_1000136BC(v60, v62, &v88);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v87(v76, v55);
    v67 = sub_1000136BC(v64, v66, &v88);

    *(v59 + 14) = v67;
    *(v59 + 22) = 2080;
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval);
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    v71 = *(v57 + 8);
    v71(v77, v58);
    v72 = sub_1000136BC(v68, v70, &v88);

    *(v59 + 24) = v72;
    _os_log_impl(&_mh_execute_header, logb, v83, "lastGoodKeyDate: %s, startDate: %s, secondaryDateInterval: %s", v59, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v71 = *(v57 + 8);
    v71(v56, v58);
    v87(v53, v55);
    v87(v52, v55);
  }

  *(v0 + 1440) = v71;
  v73 = async function pointer to daemon.getter[1];
  v74 = swift_task_alloc();
  *(v0 + 1448) = v74;
  *v74 = v0;
  v74[1] = sub_100342CD0;

  return daemon.getter();
}

uint64_t sub_1003416B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1352);
  v11 = *v2;
  *(*v2 + 1360) = v1;

  if (v1)
  {
    v6 = v4[148];
    v7 = v4[73];

    v8 = sub_100347F74;
    v9 = v7;
  }

  else
  {
    v9 = v4[73];
    v4[171] = a1;
    v8 = sub_10034182C;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10034182C()
{
  v88 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1280);
  v83 = *(v0 + 1160);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);
  v8 = *(v0 + 720);
  *v7 = *(v0 + 1368);
  sub_1000D2A70(v7, v6, &qword_10169E350, &unk_10139D7B0);
  v9 = *v6;

  v2(v3, &v6[*(v8 + 48)], v5);
  sub_1000D2A70(v7, v6, &qword_10169E350, &unk_10139D7B0);
  v10 = *v6;
  v86 = *(v4 + 8);
  v86(&v6[*(v8 + 48)], v5);
  sub_10001F280(v0 + 16, v0 + 416);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 944);
    v14 = *(v0 + 896);
    log = *(v0 + 1272);
    v80 = *(v0 + 744);
    v15 = *(v0 + 904) + 8;
    v84 = v10;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v87 = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v19 = *(v0 + 440);
    v18 = *(v0 + 448);
    sub_1000035D0((v0 + 416), v19);
    (*(*(*(v18 + 8) + 8) + 32))(v19);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (log)(v13, v14);
    sub_100007BAC((v0 + 416));
    v23 = sub_1000136BC(v20, v22, &v87);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v11, v12, "Subscribing primary keys for beacon: %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v17);

    v10 = v84;

    sub_10000B3A8(v80, &qword_10169E350, &unk_10139D7B0);
  }

  else
  {
    v24 = *(v0 + 744);

    sub_10000B3A8(v24, &qword_10169E350, &unk_10139D7B0);
    sub_100007BAC((v0 + 416));
  }

  *(v0 + 1424) = v10;
  *(v0 + 1416) = _swiftEmptyArrayStorage;
  *(v0 + 1408) = v86;
  v25 = *(v0 + 928);
  v26 = *(v0 + 40);
  v27 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v26);
  (*(*(*(v27 + 8) + 8) + 32))(v26);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 1272);
  v29 = *(v0 + 928);
  v30 = *(v0 + 896);
  v31 = *(v0 + 712);
  v32 = *(v0 + 904) + 8;
  v33 = sub_100035730(v29, sub_100352E10, 0);
  sub_1012BB138(v33, v31);

  *(v0 + 1432) = v32 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v29, v30);
  v34 = type metadata accessor for BeaconObservation();
  if ((*(*(v34 - 8) + 48))(v31, 1, v34) == 1)
  {
    sub_10000B3A8(*(v0 + 712), &qword_1016A42E0, &qword_1013B0010);
    v35 = 1;
  }

  else
  {
    v36 = *(v0 + 1304);
    v37 = *(v0 + 712);
    (*(v0 + 1296))(*(v0 + 808), v37 + *(v34 + 20), *(v0 + 992));
    sub_100359E10(v37, type metadata accessor for BeaconObservation);
    v35 = 0;
  }

  v38 = *(v0 + 1320);
  v39 = *(v0 + 1304);
  v40 = *(v0 + 1296);
  v41 = *(v0 + 1080);
  v42 = *(v0 + 1024);
  v43 = *(v0 + 1016);
  v44 = *(v0 + 1008);
  v45 = *(v0 + 992);
  v81 = *(v0 + 792);
  v85 = *(v0 + 1160);
  loga = *(v0 + 784);
  v46 = *(v0 + 776);
  v47 = *(v0 + 768);
  (*(v0 + 1312))(*(v0 + 808), v35, 1, v45);
  v40(v43, v41, v45);
  v40(v44, v42, v45);
  (*(v46 + 16))(loga, v81, v47);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 1016);
  v52 = *(v0 + 1008);
  v53 = *(v0 + 1000);
  v54 = *(v0 + 992);
  v55 = *(v0 + 784);
  v56 = *(v0 + 776);
  v57 = *(v0 + 768);
  if (v50)
  {
    v75 = *(v0 + 1008);
    v82 = v49;
    v58 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v58 = 136315650;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date);
    v76 = v55;
    logb = v48;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v86(v51, v54);
    v62 = sub_1000136BC(v59, v61, &v87);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v86(v75, v54);
    v66 = sub_1000136BC(v63, v65, &v87);

    *(v58 + 14) = v66;
    *(v58 + 22) = 2080;
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v70 = *(v56 + 8);
    v70(v76, v57);
    v71 = sub_1000136BC(v67, v69, &v87);

    *(v58 + 24) = v71;
    _os_log_impl(&_mh_execute_header, logb, v82, "lastGoodKeyDate: %s, startDate: %s, secondaryDateInterval: %s", v58, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v70 = *(v56 + 8);
    v70(v55, v57);
    v86(v52, v54);
    v86(v51, v54);
  }

  *(v0 + 1440) = v70;
  v72 = async function pointer to daemon.getter[1];
  v73 = swift_task_alloc();
  *(v0 + 1448) = v73;
  *v73 = v0;
  v73[1] = sub_100342CD0;

  return daemon.getter();
}

uint64_t sub_100342084(uint64_t a1)
{
  v4 = *(*v2 + 1352);
  v5 = *v2;
  *(v5 + 1376) = v1;

  if (v1)
  {
    v6 = *(v5 + 1184);
    v7 = *(v5 + 584);

    return _swift_task_switch(sub_100348A5C, v7, 0);
  }

  else
  {
    v8 = *(v5 + 728);
    v9 = *(v5 + 720);
    **(v5 + 736) = a1;
    v10 = *(v9 + 48);
    v11 = swift_task_alloc();
    *(v5 + 1384) = v11;
    *v11 = v5;
    v11[1] = sub_100342284;
    v12 = *(v5 + 792);
    v13 = *(v5 + 584);

    return sub_10033BB7C(v8 + v10, v5 + 16, v12, 1);
  }
}

uint64_t sub_100342284(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1384);
  v11 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v6 = v4[148];
    v7 = v4[73];

    v8 = sub_100349544;
    v9 = v7;
  }

  else
  {
    v9 = v4[73];
    v4[175] = a1;
    v8 = sub_100342400;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100342400()
{
  v94 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1280);
  v89 = *(v0 + 1160);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 752);
  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  *v8 = *(v0 + 1400);
  sub_1000D2A70(v7, v6, &qword_10169E350, &unk_10139D7B0);
  v10 = *v6;

  v2(v3, &v6[*(v9 + 48)], v5);
  sub_1000D2A70(v7, v6, &qword_10169E350, &unk_10139D7B0);
  v11 = *v6;
  v12 = *(v4 + 8);
  v12(&v6[*(v9 + 48)], v5);
  sub_1000D2A70(v8, v6, &qword_10169E350, &unk_10139D7B0);
  v13 = *v6;
  v92 = v12;
  v12(&v6[*(v9 + 48)], v5);
  sub_10001F280(v0 + 16, v0 + 456);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 944);
    v17 = *(v0 + 896);
    log = *(v0 + 736);
    v79 = *(v0 + 1272);
    v81 = *(v0 + 728);
    v18 = *(v0 + 904) + 8;
    v86 = v13;
    v19 = swift_slowAlloc();
    v90 = v11;
    v20 = swift_slowAlloc();
    v93 = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v22 = *(v0 + 480);
    v21 = *(v0 + 488);
    sub_1000035D0((v0 + 456), v22);
    (*(*(*(v21 + 8) + 8) + 32))(v22);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v79(v16, v17);
    sub_100007BAC((v0 + 456));
    v26 = sub_1000136BC(v23, v25, &v93);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Subscribing primary and secondary keys for beacon: %{private,mask.hash}s", v19, 0x16u);
    sub_100007BAC(v20);
    v11 = v90;

    v13 = v86;

    sub_10000B3A8(v81, &qword_10169E350, &unk_10139D7B0);
    sub_10000B3A8(log, &qword_10169E350, &unk_10139D7B0);
  }

  else
  {
    v27 = *(v0 + 736);
    v28 = *(v0 + 728);

    sub_10000B3A8(v28, &qword_10169E350, &unk_10139D7B0);
    sub_10000B3A8(v27, &qword_10169E350, &unk_10139D7B0);
    sub_100007BAC((v0 + 456));
  }

  *(v0 + 1424) = v11;
  *(v0 + 1416) = v13;
  *(v0 + 1408) = v92;
  v29 = *(v0 + 928);
  v30 = *(v0 + 40);
  v31 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v30);
  (*(*(*(v31 + 8) + 8) + 32))(v30);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 1272);
  v33 = *(v0 + 928);
  v34 = *(v0 + 896);
  v35 = *(v0 + 712);
  v36 = *(v0 + 904) + 8;
  v37 = sub_100035730(v33, sub_100352E10, 0);
  sub_1012BB138(v37, v35);

  *(v0 + 1432) = v36 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v33, v34);
  v38 = type metadata accessor for BeaconObservation();
  if ((*(*(v38 - 8) + 48))(v35, 1, v38) == 1)
  {
    sub_10000B3A8(*(v0 + 712), &qword_1016A42E0, &qword_1013B0010);
    v39 = 1;
  }

  else
  {
    v40 = *(v0 + 1304);
    v41 = *(v0 + 712);
    (*(v0 + 1296))(*(v0 + 808), v41 + *(v38 + 20), *(v0 + 992));
    sub_100359E10(v41, type metadata accessor for BeaconObservation);
    v39 = 0;
  }

  v42 = *(v0 + 1320);
  v43 = *(v0 + 1304);
  v44 = *(v0 + 1296);
  v45 = *(v0 + 1080);
  v46 = *(v0 + 1024);
  v47 = *(v0 + 1016);
  v48 = *(v0 + 1008);
  v49 = *(v0 + 992);
  v87 = *(v0 + 792);
  v91 = *(v0 + 1160);
  loga = *(v0 + 784);
  v50 = *(v0 + 776);
  v51 = *(v0 + 768);
  (*(v0 + 1312))(*(v0 + 808), v39, 1, v49);
  v44(v47, v45, v49);
  v44(v48, v46, v49);
  (*(v50 + 16))(loga, v87, v51);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 1016);
  v56 = *(v0 + 1008);
  v57 = *(v0 + 1000);
  v58 = *(v0 + 992);
  v59 = *(v0 + 784);
  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  if (v54)
  {
    v80 = *(v0 + 1008);
    v88 = v53;
    v62 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v62 = 136315650;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date);
    v82 = v59;
    logb = v52;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    v92(v55, v58);
    v66 = sub_1000136BC(v63, v65, &v93);

    *(v62 + 4) = v66;
    *(v62 + 12) = 2080;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    v92(v80, v58);
    v70 = sub_1000136BC(v67, v69, &v93);

    *(v62 + 14) = v70;
    *(v62 + 22) = 2080;
    sub_10003A260(&qword_10169D0F8, 255, &type metadata accessor for DateInterval);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v72;
    v74 = *(v60 + 8);
    v74(v82, v61);
    v75 = sub_1000136BC(v71, v73, &v93);

    *(v62 + 24) = v75;
    _os_log_impl(&_mh_execute_header, logb, v88, "lastGoodKeyDate: %s, startDate: %s, secondaryDateInterval: %s", v62, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v74 = *(v60 + 8);
    v74(v59, v61);
    v92(v56, v58);
    v92(v55, v58);
  }

  *(v0 + 1440) = v74;
  v76 = async function pointer to daemon.getter[1];
  v77 = swift_task_alloc();
  *(v0 + 1448) = v77;
  *v77 = v0;
  v77[1] = sub_100342CD0;

  return daemon.getter();
}

uint64_t sub_100342CD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1448);
  v5 = *v1;
  v3[182] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[183] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[184] = v8;
  v9 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[185] = v9;
  *v7 = v5;
  v7[1] = sub_100342EC4;
  v10 = v3[155];
  v11 = v3[154];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100342EC4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 1464);
  v7 = *v2;

  v8 = *(v4 + 1456);
  v9 = *(v4 + 584);
  if (v1)
  {

    v10 = sub_1003444C4;
  }

  else
  {

    *(v5 + 1488) = a1;
    v10 = sub_100343060;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100343060()
{
  v1 = v0[186];
  v2 = v0[118];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000035D0(v0 + 2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);

  return _swift_task_switch(sub_10034313C, v1, 0);
}

uint64_t sub_10034313C()
{
  v1 = v0[186];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  (*(v4 + 16))(v2, v0[118], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[187] = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v5);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[188] = v9;
  *v9 = v0;
  v9[1] = sub_1003432D4;
  v10 = v0[88];
  v11 = v0[86];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100359F38, v7, v11);
}

uint64_t sub_1003432D4()
{
  v1 = *(*v0 + 1504);
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1432);
  v5 = *(*v0 + 1272);
  v6 = *(*v0 + 944);
  v7 = *(*v0 + 896);
  v8 = *(*v0 + 584);
  v10 = *v0;

  v5(v6, v7);

  return _swift_task_switch(sub_1003434BC, v8, 0);
}

uint64_t sub_1003434BC()
{
  v168 = v0;
  v1 = *(v0 + 704);
  if ((*(*(v0 + 672) + 48))(v1, 1, *(v0 + 664)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
LABEL_4:
    v5 = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v2 = sub_100D5F668();
  v4 = v3;
  sub_100359E10(v1, type metadata accessor for OwnedBeaconRecord);
  if (v4 >> 60 == 15)
  {
    goto LABEL_4;
  }

  *(v0 + 512) = v2;
  *(v0 + 520) = v4;
  sub_1002313AC();
  v5 = RawRepresentable<>.hexString.getter();
  v6 = v7;
  sub_100006654(v2, v4);
LABEL_6:
  *(v0 + 1520) = v6;
  *(v0 + 1512) = v5;
  v8 = *(v0 + 1600);
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 280) = My;
  *(v0 + 288) = sub_10003A260(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v10 = sub_1000280DC((v0 + 256));
  (*(*(My - 8) + 104))(v10, v8, My);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 256));
  if (v8)
  {
    v11 = *(v0 + 696);
    v12 = *(v0 + 664);
    sub_10001F280(v0 + 16, v0 + 296);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v13 = swift_dynamicCast();
    v14 = *(v0 + 672);
    v15 = *(v0 + 664);
    if (v13)
    {
      v16 = *(v0 + 696);
      v17 = *(v0 + 680);
      (*(v14 + 56))(v16, 0, 1, *(v0 + 664));
      sub_100359DA8(v16, v17, type metadata accessor for OwnedBeaconRecord);
      v18 = async function pointer to daemon.getter[1];
      v19 = swift_task_alloc();
      *(v0 + 1528) = v19;
      *v19 = v0;
      v19[1] = sub_100345414;

      return daemon.getter();
    }

    v93 = *(v0 + 1184);
    v94 = *(v0 + 696);

    (*(v14 + 56))(v94, 1, 1, v15);
    sub_10000B3A8(v94, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 1152), qword_10177CE28);
    sub_10001F280(v0 + 16, v0 + 336);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v166 = *(v0 + 1432);
      v97 = *(v0 + 1272);
      v98 = *(v0 + 944);
      v99 = *(v0 + 896);
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v167[0] = v101;
      *v100 = 141558275;
      *(v100 + 4) = 1752392040;
      *(v100 + 12) = 2081;
      v103 = *(v0 + 360);
      v102 = *(v0 + 368);
      sub_1000035D0((v0 + 336), v103);
      (*(*(*(v102 + 8) + 8) + 32))(v103);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      v97(v98, v99);
      sub_100007BAC((v0 + 336));
      v107 = sub_1000136BC(v104, v106, v167);

      *(v100 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v95, v96, "Not an OwnedBeaconRecord not including the owned device keys %{private,mask.hash}s.", v100, 0x16u);
      sub_100007BAC(v101);
    }

    else
    {

      sub_100007BAC((v0 + 336));
    }
  }

  else
  {
    v20 = *(v0 + 1184);
  }

  v130 = *(v0 + 1128);
  v152 = *(v0 + 1424);
  v155 = *(v0 + 1512);
  v158 = *(v0 + 1416);
  v161 = *(v0 + 1520);
  v21 = *(v0 + 1320);
  v22 = *(v0 + 1312);
  v23 = *(v0 + 1304);
  v164 = *(v0 + 1160);
  v24 = *(v0 + 992);
  v25 = *(v0 + 960);
  v26 = *(v0 + 952);
  v27 = *(v0 + 904);
  v28 = *(v0 + 896);
  v29 = *(v0 + 624);
  v146 = *(v0 + 808);
  v149 = *(v0 + 616);
  v30 = *(v0 + 592);
  (*(v0 + 1296))(v29, *(v0 + 1024), v24);
  v22(v29, 0, 1, v24);
  (*(v27 + 16))(v29 + v30[5], v25 + *(v26 + 20), v28);
  v31 = v30[7];
  v33 = *(v0 + 40);
  v32 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v33);
  (*(*(*(v32 + 8) + 8) + 32))(v33);
  (*(v27 + 56))(v29 + v31, 0, 1, v28);
  sub_1000D2A70(v146, v29 + v30[9], &unk_101696900, &unk_10138B1E0);
  *(v29 + v30[6]) = 1;
  *(v29 + v30[8]) = v152;
  v34 = (v29 + v30[10]);
  *v34 = v155;
  v34[1] = v161;
  *(v29 + v30[11]) = v158;
  *(v29 + v30[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v29, v149, type metadata accessor for NotifyMeRequest.Subscription);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 616);
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v167[0] = v40;
    *v39 = 136315138;
    v41 = sub_10040BAA8();
    v43 = v42;
    sub_100359E10(v38, type metadata accessor for NotifyMeRequest.Subscription);
    v44 = sub_1000136BC(v41, v43, v167);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "publishKeys subscription: %s.", v39, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    sub_100359E10(v38, type metadata accessor for NotifyMeRequest.Subscription);
  }

  v45 = *(v0 + 1144);
  sub_100034E04(*(v0 + 624), *(v0 + 608), type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v0 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_100A5CA98(0, v47[2] + 1, 1, v47);
  }

  v49 = v47[2];
  v48 = v47[3];
  v159 = v49 + 1;
  v162 = v49;
  if (v49 >= v48 >> 1)
  {
    v165 = sub_100A5CA98(v48 > 1, v49 + 1, 1, v47);
  }

  else
  {
    v165 = v47;
  }

  v50 = *(v0 + 1440);
  v51 = *(v0 + 1408);
  v52 = *(v0 + 1248);
  v147 = *(v0 + 1080);
  v140 = *(v0 + 1064);
  v142 = *(v0 + 1072);
  v138 = *(v0 + 1056);
  v136 = *(v0 + 1032);
  v132 = *(v0 + 1024);
  v53 = *(v0 + 1000);
  v54 = *(v0 + 992);
  v153 = *(v0 + 960);
  v144 = *(v0 + 888);
  v55 = *(v0 + 808);
  v134 = *(v0 + 800);
  v56 = *(v0 + 792);
  v57 = *(v0 + 776);
  v58 = *(v0 + 768);
  v59 = *(v0 + 624);
  v156 = *(v0 + 608);
  v150 = *(v0 + 600);

  sub_100359E10(v59, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v55, &unk_101696900, &unk_10138B1E0);
  v51(v132, v54);
  v50(v56, v58);
  v51(v136, v54);
  v50(v134, v58);
  v51(v138, v54);
  v51(v140, v54);
  v51(v142, v54);
  v51(v147, v54);
  sub_10000B3A8(v144, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v153, type metadata accessor for NotifyWhenFoundRecord);
  *(v165 + 16) = v159;
  sub_100359DA8(v156, v165 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v162, type metadata accessor for NotifyMeRequest.Subscription);
  v60 = *(v0 + 1408);
  v61 = *(v0 + 1112);
  v62 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v62 == v61)
  {
    v63 = *(v0 + 1000) + 8;
    v60(*(v0 + 1104), *(v0 + 992));
    v64 = *(v0 + 1104);
    v65 = *(v0 + 1096);
    v66 = *(v0 + 1088);
    v67 = *(v0 + 1080);
    v68 = *(v0 + 1072);
    v69 = *(v0 + 1064);
    v70 = *(v0 + 1056);
    v71 = *(v0 + 1048);
    v72 = *(v0 + 1040);
    v73 = *(v0 + 1032);
    v109 = *(v0 + 1024);
    v110 = *(v0 + 1016);
    v111 = *(v0 + 1008);
    v112 = *(v0 + 984);
    v113 = *(v0 + 960);
    v114 = *(v0 + 944);
    v115 = *(v0 + 936);
    v116 = *(v0 + 928);
    v117 = *(v0 + 920);
    v118 = *(v0 + 888);
    v119 = *(v0 + 880);
    v120 = *(v0 + 856);
    v121 = *(v0 + 848);
    v122 = *(v0 + 840);
    v123 = *(v0 + 832);
    v124 = *(v0 + 824);
    v125 = *(v0 + 816);
    v126 = *(v0 + 808);
    v127 = *(v0 + 800);
    v128 = *(v0 + 792);
    v129 = *(v0 + 784);
    v131 = *(v0 + 760);
    v133 = *(v0 + 752);
    v135 = *(v0 + 744);
    v137 = *(v0 + 736);
    v139 = *(v0 + 728);
    v141 = *(v0 + 712);
    v143 = *(v0 + 704);
    v145 = *(v0 + 696);
    v148 = *(v0 + 680);
    v151 = *(v0 + 656);
    v154 = *(v0 + 648);
    v157 = *(v0 + 624);
    v160 = *(v0 + 616);
    v163 = *(v0 + 608);

    v74 = *(v0 + 8);

    return v74(v165);
  }

  else
  {
    v75 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v165;
    *(v0 + 1136) = v75;
    *(v0 + 1128) = v130;
    v76 = *(v0 + 1592);
    v77 = *(v0 + 984);
    v78 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v75, v77, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v77, v0 + 16);
    sub_100359DA8(v77 + v76, v78, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    *(v0 + 1152) = v79;
    *(v0 + 1160) = sub_1000076D4(v79, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = *(v0 + 944);
      v83 = *(v0 + 904);
      v84 = *(v0 + 896);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v167[0] = v86;
      *v85 = 141558275;
      *(v85 + 4) = 1752392040;
      *(v85 + 12) = 2081;
      v88 = *(v0 + 80);
      v87 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v88);
      (*(*(*(v87 + 8) + 8) + 32))(v88);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      (*(v83 + 8))(v82, v84);
      sub_100007BAC((v0 + 56));
      v92 = sub_1000136BC(v89, v91, v167);

      *(v85 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v80, v81, "publishKeys for beacon: %{private,mask.hash}s", v85, 0x16u);
      sub_100007BAC(v86);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_1003444C4()
{
  v161 = v0;
  *(v0 + 1512) = 0u;
  v1 = *(v0 + 1600);
  My = type metadata accessor for Feature.FindMy();
  *(v0 + 280) = My;
  *(v0 + 288) = sub_10003A260(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v3 = sub_1000280DC((v0 + 256));
  (*(*(My - 8) + 104))(v3, v1, My);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100007BAC((v0 + 256));
  if (v1)
  {
    v4 = *(v0 + 696);
    v5 = *(v0 + 664);
    sub_10001F280(v0 + 16, v0 + 296);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v6 = swift_dynamicCast();
    v7 = *(v0 + 672);
    v8 = *(v0 + 664);
    if (v6)
    {
      v9 = *(v0 + 696);
      v10 = *(v0 + 680);
      (*(v7 + 56))(v9, 0, 1, *(v0 + 664));
      sub_100359DA8(v9, v10, type metadata accessor for OwnedBeaconRecord);
      v11 = async function pointer to daemon.getter[1];
      v12 = swift_task_alloc();
      *(v0 + 1528) = v12;
      *v12 = v0;
      v12[1] = sub_100345414;

      return daemon.getter();
    }

    v86 = *(v0 + 1184);
    v87 = *(v0 + 696);

    (*(v7 + 56))(v87, 1, 1, v8);
    sub_10000B3A8(v87, &unk_1016A9A20, &qword_10138B280);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(*(v0 + 1152), qword_10177CE28);
    sub_10001F280(v0 + 16, v0 + 336);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v159 = *(v0 + 1432);
      v90 = *(v0 + 1272);
      v91 = *(v0 + 944);
      v92 = *(v0 + 896);
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v160[0] = v94;
      *v93 = 141558275;
      *(v93 + 4) = 1752392040;
      *(v93 + 12) = 2081;
      v96 = *(v0 + 360);
      v95 = *(v0 + 368);
      sub_1000035D0((v0 + 336), v96);
      (*(*(*(v95 + 8) + 8) + 32))(v96);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v90(v91, v92);
      sub_100007BAC((v0 + 336));
      v100 = sub_1000136BC(v97, v99, v160);

      *(v93 + 14) = v100;
      _os_log_impl(&_mh_execute_header, v88, v89, "Not an OwnedBeaconRecord not including the owned device keys %{private,mask.hash}s.", v93, 0x16u);
      sub_100007BAC(v94);
    }

    else
    {

      sub_100007BAC((v0 + 336));
    }
  }

  else
  {
    v13 = *(v0 + 1184);
  }

  v123 = *(v0 + 1128);
  v145 = *(v0 + 1424);
  v148 = *(v0 + 1512);
  v151 = *(v0 + 1416);
  v154 = *(v0 + 1520);
  v14 = *(v0 + 1320);
  v15 = *(v0 + 1312);
  v16 = *(v0 + 1304);
  v157 = *(v0 + 1160);
  v17 = *(v0 + 992);
  v18 = *(v0 + 960);
  v19 = *(v0 + 952);
  v20 = *(v0 + 904);
  v21 = *(v0 + 896);
  v22 = *(v0 + 624);
  v139 = *(v0 + 808);
  v142 = *(v0 + 616);
  v23 = *(v0 + 592);
  (*(v0 + 1296))(v22, *(v0 + 1024), v17);
  v15(v22, 0, 1, v17);
  (*(v20 + 16))(v22 + v23[5], v18 + *(v19 + 20), v21);
  v24 = v23[7];
  v26 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v26);
  (*(*(*(v25 + 8) + 8) + 32))(v26);
  (*(v20 + 56))(v22 + v24, 0, 1, v21);
  sub_1000D2A70(v139, v22 + v23[9], &unk_101696900, &unk_10138B1E0);
  *(v22 + v23[6]) = 1;
  *(v22 + v23[8]) = v145;
  v27 = (v22 + v23[10]);
  *v27 = v148;
  v27[1] = v154;
  *(v22 + v23[11]) = v151;
  *(v22 + v23[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v22, v142, type metadata accessor for NotifyMeRequest.Subscription);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 616);
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v160[0] = v33;
    *v32 = 136315138;
    v34 = sub_10040BAA8();
    v36 = v35;
    sub_100359E10(v31, type metadata accessor for NotifyMeRequest.Subscription);
    v37 = sub_1000136BC(v34, v36, v160);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "publishKeys subscription: %s.", v32, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    sub_100359E10(v31, type metadata accessor for NotifyMeRequest.Subscription);
  }

  v38 = *(v0 + 1144);
  sub_100034E04(*(v0 + 624), *(v0 + 608), type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v0 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_100A5CA98(0, v40[2] + 1, 1, v40);
  }

  v42 = v40[2];
  v41 = v40[3];
  v152 = v42 + 1;
  v155 = v42;
  if (v42 >= v41 >> 1)
  {
    v158 = sub_100A5CA98(v41 > 1, v42 + 1, 1, v40);
  }

  else
  {
    v158 = v40;
  }

  v43 = *(v0 + 1440);
  v44 = *(v0 + 1408);
  v45 = *(v0 + 1248);
  v140 = *(v0 + 1080);
  v133 = *(v0 + 1064);
  v135 = *(v0 + 1072);
  v131 = *(v0 + 1056);
  v129 = *(v0 + 1032);
  v125 = *(v0 + 1024);
  v46 = *(v0 + 1000);
  v47 = *(v0 + 992);
  v146 = *(v0 + 960);
  v137 = *(v0 + 888);
  v48 = *(v0 + 808);
  v127 = *(v0 + 800);
  v49 = *(v0 + 792);
  v50 = *(v0 + 776);
  v51 = *(v0 + 768);
  v52 = *(v0 + 624);
  v149 = *(v0 + 608);
  v143 = *(v0 + 600);

  sub_100359E10(v52, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v48, &unk_101696900, &unk_10138B1E0);
  v44(v125, v47);
  v43(v49, v51);
  v44(v129, v47);
  v43(v127, v51);
  v44(v131, v47);
  v44(v133, v47);
  v44(v135, v47);
  v44(v140, v47);
  sub_10000B3A8(v137, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v146, type metadata accessor for NotifyWhenFoundRecord);
  *(v158 + 16) = v152;
  sub_100359DA8(v149, v158 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v155, type metadata accessor for NotifyMeRequest.Subscription);
  v53 = *(v0 + 1408);
  v54 = *(v0 + 1112);
  v55 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v55 == v54)
  {
    v56 = *(v0 + 1000) + 8;
    v53(*(v0 + 1104), *(v0 + 992));
    v57 = *(v0 + 1104);
    v58 = *(v0 + 1096);
    v59 = *(v0 + 1088);
    v60 = *(v0 + 1080);
    v61 = *(v0 + 1072);
    v62 = *(v0 + 1064);
    v63 = *(v0 + 1056);
    v64 = *(v0 + 1048);
    v65 = *(v0 + 1040);
    v66 = *(v0 + 1032);
    v102 = *(v0 + 1024);
    v103 = *(v0 + 1016);
    v104 = *(v0 + 1008);
    v105 = *(v0 + 984);
    v106 = *(v0 + 960);
    v107 = *(v0 + 944);
    v108 = *(v0 + 936);
    v109 = *(v0 + 928);
    v110 = *(v0 + 920);
    v111 = *(v0 + 888);
    v112 = *(v0 + 880);
    v113 = *(v0 + 856);
    v114 = *(v0 + 848);
    v115 = *(v0 + 840);
    v116 = *(v0 + 832);
    v117 = *(v0 + 824);
    v118 = *(v0 + 816);
    v119 = *(v0 + 808);
    v120 = *(v0 + 800);
    v121 = *(v0 + 792);
    v122 = *(v0 + 784);
    v124 = *(v0 + 760);
    v126 = *(v0 + 752);
    v128 = *(v0 + 744);
    v130 = *(v0 + 736);
    v132 = *(v0 + 728);
    v134 = *(v0 + 712);
    v136 = *(v0 + 704);
    v138 = *(v0 + 696);
    v141 = *(v0 + 680);
    v144 = *(v0 + 656);
    v147 = *(v0 + 648);
    v150 = *(v0 + 624);
    v153 = *(v0 + 616);
    v156 = *(v0 + 608);

    v67 = *(v0 + 8);

    return v67(v158);
  }

  else
  {
    v68 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v158;
    *(v0 + 1136) = v68;
    *(v0 + 1128) = v123;
    v69 = *(v0 + 1592);
    v70 = *(v0 + 984);
    v71 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v68, v70, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v70, v0 + 16);
    sub_100359DA8(v70 + v69, v71, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    *(v0 + 1152) = v72;
    *(v0 + 1160) = sub_1000076D4(v72, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = *(v0 + 944);
      v76 = *(v0 + 904);
      v77 = *(v0 + 896);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v160[0] = v79;
      *v78 = 141558275;
      *(v78 + 4) = 1752392040;
      *(v78 + 12) = 2081;
      v81 = *(v0 + 80);
      v80 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v81);
      (*(*(*(v80 + 8) + 8) + 32))(v81);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      (*(v76 + 8))(v75, v77);
      sub_100007BAC((v0 + 56));
      v85 = sub_1000136BC(v82, v84, v160);

      *(v78 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v73, v74, "publishKeys for beacon: %{private,mask.hash}s", v78, 0x16u);
      sub_100007BAC(v79);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100345414(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1528);
  v5 = *v1;
  v3[192] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[193] = v7;
  *v7 = v5;
  v7[1] = sub_1003455D4;
  v8 = v3[185];
  v9 = v3[184];
  v10 = v3[155];
  v11 = v3[154];

  return ActorServiceDaemon.getService<A>()(v11, v9, v10, v8);
}

uint64_t sub_1003455D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1544);
  v6 = *v2;
  *(v4 + 1552) = v1;

  v7 = *(v4 + 1536);
  if (v1)
  {
    v8 = *(v4 + 1184);
    v9 = *(v4 + 584);

    v10 = sub_10034A044;
    v11 = v9;
  }

  else
  {
    v12 = *(v4 + 664);

    *(v4 + 1560) = a1;
    *(v4 + 1612) = *(v12 + 20);
    v10 = sub_100345788;
    v11 = a1;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100345788()
{
  v1 = *(v0 + 1560);
  v2 = *(v0 + 944);
  v3 = *(v0 + 912);
  v4 = *(v0 + 904);
  v5 = *(v0 + 896);
  (*(v4 + 16))(v2, *(v0 + 680) + *(v0 + 1612), v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 1568) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v5);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 1576) = v9;
  v10 = sub_1000BC4D4(&qword_10169E360, &qword_10139D7E0);
  *v9 = v0;
  v9[1] = sub_10034593C;

  return unsafeBlocking<A>(context:_:)(v0 + 544, 0xD000000000000010, 0x800000010134A8C0, sub_100359014, v7, v10);
}

uint64_t sub_10034593C()
{
  v1 = *(*v0 + 1576);
  v2 = *(*v0 + 1568);
  v3 = *(*v0 + 1560);
  v5 = *v0;

  return _swift_task_switch(sub_100345A9C, v3, 0);
}

uint64_t sub_100345A9C()
{
  v1 = v0[195];
  v2 = v0[73];

  v0[198] = v0[68];

  return _swift_task_switch(sub_100345B3C, v2, 0);
}

uint64_t sub_100345B3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v222 = v4;
  v5 = v4;
  v6 = v4[198];
  v199 = *(v6 + 16);
  if (v199)
  {
    v7 = 0;
    v8 = v4 + 71;
    v9 = v5[194];
    v203 = v5[141];
    v205 = v5 + 202;
    v188 = v5 + 69;
    v191 = (v5 + 203);
    v10 = (v6 + 56);
    v11 = _swiftEmptyArrayStorage;
    v195 = v5 + 71;
    while (v7 < *(v6 + 16))
    {
      v217 = v7;
      v12 = *(v10 - 3);
      v13 = *(v10 - 2);
      v15 = *(v10 - 1);
      v14 = *v10;
      sub_100017D5C(v12, v13);
      sub_100017D5C(v15, v14);
      sub_100016590(v15, v14);
      v209 = v13;
      v213 = v12;
      sub_100A7A194(v12, v13);
      if (v9)
      {
        v52 = v188;
        goto LABEL_75;
      }

      *v8 = 57;
      v16 = type metadata accessor for __DataStorage();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = __DataStorage.init(length:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
        {
          goto LABEL_88;
        }

        v20 = *(v16 + 48);
        v21 = *(v16 + 52);
        swift_allocObject();
        v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v19 = v22;
      }

      if (!__DataStorage._bytes.getter())
      {
        goto LABEL_95;
      }

      if (__OFSUB__(0, __DataStorage._offset.getter()))
      {
        goto LABEL_86;
      }

      __DataStorage._length.getter();
      v23 = CCECCryptorExportKey();

      if (v23)
      {
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v53 = v5[82];
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_101385D80;
        *(v54 + 56) = &type metadata for Int32;
        *(v54 + 64) = &protocol witness table for Int32;
        *(v54 + 32) = v23;
        os_log(_:dso:log:_:_:)();

        CryptoError.init(rawValue:)();
        v55 = type metadata accessor for CryptoError();
        sub_10003A260(&qword_10169C9B8, 255, &type metadata accessor for CryptoError);
        v56 = swift_allocError();
        v58 = v57;
        v59 = *(v55 - 8);
        v60 = *(v59 + 48);
        v61 = v60(v53, 1, v55);
        v62 = v5[82];
        if (v61 == 1)
        {
          (*(v59 + 104))(v58, enum case for CryptoError.unspecifiedError(_:), v55);
          v5 = v220;
          v52 = v188;
          if (v60(v62, 1, v55) != 1)
          {
            sub_10000B3A8(*(v220 + 656), &qword_10169C9A0, &unk_1013D5A40);
          }
        }

        else
        {
          (*(v59 + 32))(v58, v5[82], v55);
          v5 = v220;
          v52 = v188;
        }

        swift_willThrow();
        v9 = v56;

LABEL_75:
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v144 = swift_allocObject();
        *(v144 + 16) = xmmword_101385D80;
        *v52 = v9;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v145 = String.init<A>(describing:)();
        v147 = v146;
        *(v144 + 56) = &type metadata for String;
        *(v144 + 64) = sub_100008C00();
        *(v144 + 32) = v145;
        *(v144 + 40) = v147;
        os_log(_:dso:log:_:_:)();

        sub_1001BAF88();
        v148 = swift_allocError();
        *v149 = 0;
        swift_willThrow();

LABEL_84:
        v221[0] = 0;
        v221[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v5[62] = 0;
        v5[63] = 0xE000000000000000;
        v153._object = 0x800000010134CB30;
        v153._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v153);
        v5[70] = v148;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        v154 = v5[62];
        v155 = v5[63];
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v24 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (v24 >= 0x39)
      {
        v25 = 57;
      }

      else
      {
        v25 = *v8;
      }

      if (!v24)
      {

        CCECCryptorRelease();
        v26 = 0;
        v63 = 0;
        v27 = 0xC000000000000000;
        goto LABEL_83;
      }

      if (v24 <= 0xE)
      {
        *(v205 + 6) = 0;
        *v205 = 0;
        *(v5 + 1630) = v25;

        v28 = __DataStorage._bytes.getter();
        if (v28)
        {
          v29 = v28;
          v30 = __DataStorage._offset.getter();
          if (__OFSUB__(0, v30))
          {
            goto LABEL_91;
          }

          v31 = (v29 - v30);
          __DataStorage._length.getter();
          if (v31)
          {
            memcpy(v205, v31, v25);
          }
        }

        else
        {
          __DataStorage._length.getter();
        }

        v26 = *v205;
        v32 = *v191 | ((*(v191 + 2) | (*(v191 + 6) << 16)) << 32);

        v27 = v203 & 0xF00000000000000 | v32;
        v203 = v27;
      }

      else
      {
        v26 = v25 << 32;
        v27 = v19 | 0x4000000000000000;
      }

      CCECCryptorRelease();
      v33 = v27 >> 62;
      if ((v27 >> 62) > 1)
      {
        if (v33 != 2)
        {
          v63 = 0;
          goto LABEL_83;
        }

        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        v36 = __OFSUB__(v34, v35);
        v37 = v34 - v35;
        if (v36)
        {
          goto LABEL_89;
        }

        if (v37 != 28)
        {
          goto LABEL_49;
        }
      }

      else if (v33)
      {
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_90;
        }

        if (HIDWORD(v26) - v26 != 28)
        {
LABEL_49:
          if (v33 == 2)
          {
            v151 = *(v26 + 16);
            v150 = *(v26 + 24);
            v63 = v150 - v151;
            if (!__OFSUB__(v150, v151))
            {
              goto LABEL_83;
            }

            __break(1u);
          }

          else if (v33 == 1)
          {
            if (__OFSUB__(HIDWORD(v26), v26))
            {
              __break(1u);
LABEL_95:
              __break(1u);
            }

            v63 = HIDWORD(v26) - v26;
            goto LABEL_83;
          }

          v63 = BYTE6(v27);
LABEL_83:
          sub_100018350();
          v148 = swift_allocError();
          *v152 = 28;
          *(v152 + 8) = v63;
          *(v152 + 16) = 0;
          swift_willThrow();
          sub_100016590(v26, v27);
          goto LABEL_84;
        }
      }

      else if (BYTE6(v27) != 28)
      {
        goto LABEL_49;
      }

      v38 = v6;
      v39 = *(v5 + 401);
      v40 = v5[81];
      v41 = v5[80];
      v42 = v5;
      v43 = v11;
      v44 = v42[79];
      (*(v41 + 104))(v40, v39, v44);
      v45 = Data.hash(algorithm:)();
      v47 = v46;
      sub_100016590(v26, v27);
      v48 = v44;
      v11 = v43;
      (*(v41 + 8))(v40, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100A5B734(0, *(v43 + 2) + 1, 1, v43);
      }

      v6 = v38;
      v50 = *(v11 + 2);
      v49 = *(v11 + 3);
      v5 = v220;
      if (v50 >= v49 >> 1)
      {
        v11 = sub_100A5B734((v49 > 1), v50 + 1, 1, v11);
      }

      v7 = v217 + 1;
      sub_100016590(v213, v209);
      v9 = 0;
      *(v11 + 2) = v50 + 1;
      v51 = &v11[16 * v50];
      *(v51 + 4) = v45;
      *(v51 + 5) = v47;
      v10 += 4;
      v8 = v195;
      if (v199 == v217 + 1)
      {
        v64 = *(v220 + 1584);
        v218 = v11;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
  }

  else
  {
    v203 = v4[141];
    v218 = _swiftEmptyArrayStorage;
LABEL_53:
    v65 = v5[148];
    sub_100359E10(v5[85], type metadata accessor for OwnedBeaconRecord);

    v196 = v5[178];
    v200 = v5[189];
    v206 = v5[177];
    v210 = v5[190];
    v66 = v5[165];
    v67 = v5[164];
    v68 = v5[163];
    v69 = v5[162];
    v214 = v5[145];
    v70 = v5[128];
    v71 = v5[124];
    v72 = v5[120];
    v73 = v5[119];
    v74 = v5[113];
    v75 = *(v220 + 896);
    v76 = *(v220 + 808);
    v77 = *(v220 + 624);
    v192 = *(v220 + 616);
    v78 = *(v220 + 592);
    v69(v77, v70, v71);
    v67(v77, 0, 1, v71);
    (*(v74 + 16))(v77 + v78[5], v72 + *(v73 + 20), v75);
    v79 = v78[7];
    v80 = *(v220 + 40);
    v81 = *(v220 + 48);
    sub_1000035D0((v220 + 16), v80);
    (*(*(*(v81 + 8) + 8) + 32))(v80);
    v82 = v75;
    v11 = v220;
    (*(v74 + 56))(v77 + v79, 0, 1, v82);
    sub_1000D2A70(v76, v77 + v78[9], &unk_101696900, &unk_10138B1E0);
    *(v77 + v78[6]) = 1;
    *(v77 + v78[8]) = v196;
    v83 = (v77 + v78[10]);
    *v83 = v200;
    v83[1] = v210;
    *(v77 + v78[11]) = v206;
    *(v77 + v78[12]) = v218;
    sub_100034E04(v77, v192, type metadata accessor for NotifyMeRequest.Subscription);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v220 + 616);
    if (v86)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v221[0] = v89;
      *v88 = 136315138;
      v90 = sub_10040BAA8();
      v92 = v91;
      sub_100359E10(v87, type metadata accessor for NotifyMeRequest.Subscription);
      v93 = sub_1000136BC(v90, v92, v221);
      v11 = v220;

      *(v88 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v84, v85, "publishKeys subscription: %s.", v88, 0xCu);
      sub_100007BAC(v89);
    }

    else
    {

      sub_100359E10(v87, type metadata accessor for NotifyMeRequest.Subscription);
    }

    v94 = *(v11 + 143);
    sub_100034E04(*(v11 + 78), *(v11 + 76), type metadata accessor for NotifyMeRequest.Subscription);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = *(v11 + 143);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_57;
    }
  }

  a4 = sub_100A5CA98(0, a4[2] + 1, 1, a4);
LABEL_57:
  v97 = a4[2];
  v96 = a4[3];
  v211 = v97 + 1;
  v215 = v97;
  if (v97 >= v96 >> 1)
  {
    v219 = sub_100A5CA98(v96 > 1, v97 + 1, 1, a4);
  }

  else
  {
    v219 = a4;
  }

  v98 = *(v11 + 180);
  v99 = *(v11 + 176);
  v100 = *(v11 + 156);
  v193 = *(v11 + 135);
  v184 = *(v11 + 133);
  v186 = *(v11 + 134);
  v180 = *(v11 + 129);
  v182 = *(v11 + 132);
  v101 = *(v11 + 128);
  v102 = *(v11 + 125);
  v103 = *(v11 + 124);
  v201 = *(v11 + 120);
  v189 = *(v11 + 111);
  v104 = *(v11 + 101);
  v178 = *(v11 + 100);
  v105 = *(v11 + 99);
  v106 = *(v11 + 97);
  v107 = *(v220 + 768);
  v108 = *(v220 + 624);
  v207 = *(v220 + 608);
  v197 = *(v220 + 600);

  sub_100359E10(v108, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v104, &unk_101696900, &unk_10138B1E0);
  v99(v101, v103);
  v98(v105, v107);
  v99(v180, v103);
  v109 = v220;
  v98(v178, v107);
  v99(v182, v103);
  v99(v184, v103);
  v99(v186, v103);
  v99(v193, v103);
  sub_10000B3A8(v189, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v201, type metadata accessor for NotifyWhenFoundRecord);
  *(v219 + 16) = v211;
  sub_100359DA8(v207, v219 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v215, type metadata accessor for NotifyMeRequest.Subscription);
  v110 = *(v220 + 1408);
  v111 = *(v220 + 1112);
  v112 = *(v220 + 1136) + 1;
  sub_100007BAC((v220 + 16));
  if (v112 == v111)
  {
    v113 = *(v220 + 1000) + 8;
    v110(*(v220 + 1104), *(v220 + 992));
    v114 = *(v220 + 1104);
    v115 = *(v220 + 1096);
    v116 = *(v220 + 1088);
    v117 = *(v220 + 1080);
    v118 = *(v220 + 1072);
    v119 = *(v220 + 1064);
    v120 = *(v220 + 1056);
    v121 = *(v220 + 1048);
    v122 = *(v220 + 1040);
    v123 = *(v220 + 1032);
    v156 = *(v220 + 1024);
    v157 = *(v220 + 1016);
    v158 = *(v220 + 1008);
    v159 = *(v220 + 984);
    v160 = *(v220 + 960);
    v161 = *(v220 + 944);
    v162 = *(v220 + 936);
    v163 = *(v220 + 928);
    v164 = *(v220 + 920);
    v165 = *(v220 + 888);
    v166 = *(v220 + 880);
    v167 = *(v220 + 856);
    v168 = *(v220 + 848);
    v169 = *(v220 + 840);
    v170 = *(v220 + 832);
    v171 = *(v220 + 824);
    v172 = *(v220 + 816);
    v173 = *(v220 + 808);
    v174 = *(v220 + 800);
    v175 = *(v220 + 792);
    v176 = *(v220 + 784);
    v177 = *(v220 + 760);
    v179 = *(v220 + 752);
    v181 = *(v220 + 744);
    v183 = *(v220 + 736);
    v185 = *(v220 + 728);
    v187 = *(v220 + 712);
    v190 = *(v220 + 704);
    v194 = *(v220 + 696);
    v198 = *(v220 + 680);
    v202 = *(v220 + 656);
    v204 = *(v220 + 648);
    v208 = *(v220 + 624);
    v212 = *(v220 + 616);
    v216 = *(v220 + 608);

    v124 = *(v220 + 8);

    return v124(v219);
  }

  else
  {
    v126 = *(v220 + 1136) + 1;
    *(v220 + 1144) = v219;
    *(v220 + 1136) = v126;
    *(v220 + 1128) = v203;
    v127 = *(v220 + 1592);
    v128 = *(v220 + 984);
    v129 = *(v220 + 960);
    sub_1000D2A70(*(v220 + 576) + ((*(v220 + 1596) + 32) & ~*(v220 + 1596)) + *(v220 + 1120) * v126, v128, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v128, v220 + 16);
    sub_100359DA8(v128 + v127, v129, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    *(v220 + 1152) = v130;
    *(v220 + 1160) = sub_1000076D4(v130, qword_10177AC78);
    sub_10001F280(v220 + 16, v220 + 56);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = *(v220 + 944);
      v134 = *(v220 + 904);
      v135 = *(v220 + 896);
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v221[0] = v137;
      *v136 = 141558275;
      *(v136 + 4) = 1752392040;
      *(v136 + 12) = 2081;
      v138 = *(v220 + 80);
      v139 = *(v220 + 88);
      sub_1000035D0((v220 + 56), v138);
      (*(*(*(v139 + 8) + 8) + 32))(v138);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v140 = dispatch thunk of CustomStringConvertible.description.getter();
      v142 = v141;
      v109 = v220;
      (*(v134 + 8))(v133, v135);
      sub_100007BAC((v220 + 56));
      v143 = sub_1000136BC(v140, v142, v221);

      *(v136 + 14) = v143;
      _os_log_impl(&_mh_execute_header, v131, v132, "publishKeys for beacon: %{private,mask.hash}s", v136, 0x16u);
      sub_100007BAC(v137);
    }

    else
    {

      sub_100007BAC((v220 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v109 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_1003470C4()
{
  v1 = v0[145];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No ObservationStoreService available!", v4, 2u);
  }

  v5 = v0[138];
  v6 = v0[125];
  v7 = v0[124];
  v8 = v0[120];

  sub_100359E10(v8, type metadata accessor for NotifyWhenFoundRecord);
  (*(v6 + 8))(v5, v7);
  sub_100007BAC(v0 + 2);
  v9 = v0[138];
  v10 = v0[137];
  v11 = v0[136];
  v12 = v0[135];
  v13 = v0[134];
  v14 = v0[133];
  v15 = v0[132];
  v16 = v0[131];
  v17 = v0[130];
  v18 = v0[129];
  v21 = v0[128];
  v22 = v0[127];
  v23 = v0[126];
  v24 = v0[123];
  v25 = v0[120];
  v26 = v0[118];
  v27 = v0[117];
  v28 = v0[116];
  v29 = v0[115];
  v30 = v0[111];
  v31 = v0[110];
  v32 = v0[107];
  v33 = v0[106];
  v34 = v0[105];
  v35 = v0[104];
  v36 = v0[103];
  v37 = v0[102];
  v38 = v0[101];
  v39 = v0[100];
  v40 = v0[99];
  v41 = v0[98];
  v42 = v0[95];
  v43 = v0[94];
  v44 = v0[93];
  v45 = v0[92];
  v46 = v0[91];
  v47 = v0[89];
  v48 = v0[88];
  v49 = v0[87];
  v50 = v0[85];
  v51 = v0[82];
  v52 = v0[81];
  v53 = v0[78];
  v54 = v0[77];
  v55 = v0[76];

  v19 = v0[1];

  return v19(_swiftEmptyArrayStorage);
}

uint64_t sub_10034748C()
{
  v123 = v0;
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1160);
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v86 = *(v0 + 1272);
    v96 = *(v0 + 1248);
    v107 = *(v0 + 1064);
    v110 = *(v0 + 1072);
    v102 = *(v0 + 1032);
    v104 = *(v0 + 1056);
    v5 = *(v0 + 1000);
    v100 = *(v0 + 992);
    v116 = *(v0 + 1080);
    v119 = *(v0 + 960);
    log = v3;
    v6 = *(v0 + 944);
    v7 = *(v0 + 896);
    v113 = *(v0 + 888);
    v98 = *(v0 + 800);
    v94 = *(v0 + 792);
    v82 = *(v0 + 904) + 8;
    v90 = *(v0 + 768);
    v92 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v122[0] = v84;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v86(v6, v7);
    sub_100007BAC((v0 + 176));
    v15 = sub_1000136BC(v12, v14, v122);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, log, v4, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v84);

    v17 = *(v92 + 8);
    v17(v94, v90);
    v18 = *(v5 + 8);
    v18(v102, v100);
    v17(v98, v90);
    v18(v104, v100);
    v18(v107, v100);
    v18(v110, v100);
    v18(v116, v100);
    sub_10000B3A8(v113, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v119, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v19 = *(v0 + 1248);
    v108 = *(v0 + 1064);
    v111 = *(v0 + 1072);
    v105 = *(v0 + 1056);
    v20 = *(v0 + 1032);
    v21 = *(v0 + 1000);
    v22 = *(v0 + 992);
    v117 = *(v0 + 1080);
    v120 = *(v0 + 960);
    v114 = *(v0 + 888);
    v23 = *(v0 + 800);
    v24 = *(v0 + 792);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);

    v27 = *(v25 + 8);
    v27(v24, v26);
    v18 = *(v21 + 8);
    v18(v20, v22);
    v27(v23, v26);
    v18(v105, v22);
    v18(v108, v22);
    v18(v111, v22);
    v18(v117, v22);
    sub_10000B3A8(v114, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v120, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v28 = *(v0 + 1144);
  v29 = *(v0 + 1128);
  v30 = *(v0 + 1112);
  v31 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v31 == v30)
  {
    v63 = v28;
    v32 = *(v0 + 1000) + 8;
    v18(*(v0 + 1104), *(v0 + 992));
    v33 = *(v0 + 1104);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1064);
    v39 = *(v0 + 1056);
    v40 = *(v0 + 1048);
    v41 = *(v0 + 1040);
    v42 = *(v0 + 1032);
    v64 = *(v0 + 1024);
    v65 = *(v0 + 1016);
    v66 = *(v0 + 1008);
    v67 = *(v0 + 984);
    v68 = *(v0 + 960);
    v69 = *(v0 + 944);
    v70 = *(v0 + 936);
    v71 = *(v0 + 928);
    v72 = *(v0 + 920);
    v73 = *(v0 + 888);
    v74 = *(v0 + 880);
    v75 = *(v0 + 856);
    v76 = *(v0 + 848);
    v77 = *(v0 + 840);
    v78 = *(v0 + 832);
    v79 = *(v0 + 824);
    v80 = *(v0 + 816);
    v81 = *(v0 + 808);
    v83 = *(v0 + 800);
    v85 = *(v0 + 792);
    v87 = *(v0 + 784);
    loga = *(v0 + 760);
    v91 = *(v0 + 752);
    v93 = *(v0 + 744);
    v95 = *(v0 + 736);
    v97 = *(v0 + 728);
    v99 = *(v0 + 712);
    v101 = *(v0 + 704);
    v103 = *(v0 + 696);
    v106 = *(v0 + 680);
    v109 = *(v0 + 656);
    v112 = *(v0 + 648);
    v115 = *(v0 + 624);
    v118 = *(v0 + 616);
    v121 = *(v0 + 608);

    v43 = *(v0 + 8);

    return v43(v63);
  }

  else
  {
    v45 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v28;
    *(v0 + 1136) = v45;
    *(v0 + 1128) = v29;
    v46 = *(v0 + 1592);
    v47 = *(v0 + 984);
    v48 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v45, v47, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v47, v0 + 16);
    sub_100359DA8(v47 + v46, v48, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    *(v0 + 1152) = v49;
    *(v0 + 1160) = sub_1000076D4(v49, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 944);
      v53 = *(v0 + 904);
      v54 = *(v0 + 896);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v122[0] = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      v58 = *(v0 + 80);
      v57 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v58);
      (*(*(*(v57 + 8) + 8) + 32))(v58);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v53 + 8))(v52, v54);
      sub_100007BAC((v0 + 56));
      v62 = sub_1000136BC(v59, v61, v122);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "publishKeys for beacon: %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100347F74()
{
  v123 = v0;
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1160);
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v86 = *(v0 + 1272);
    v96 = *(v0 + 1248);
    v107 = *(v0 + 1064);
    v110 = *(v0 + 1072);
    v102 = *(v0 + 1032);
    v104 = *(v0 + 1056);
    v5 = *(v0 + 1000);
    v100 = *(v0 + 992);
    v116 = *(v0 + 1080);
    v119 = *(v0 + 960);
    log = v3;
    v6 = *(v0 + 944);
    v7 = *(v0 + 896);
    v113 = *(v0 + 888);
    v98 = *(v0 + 800);
    v94 = *(v0 + 792);
    v82 = *(v0 + 904) + 8;
    v90 = *(v0 + 768);
    v92 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v122[0] = v84;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v86(v6, v7);
    sub_100007BAC((v0 + 176));
    v15 = sub_1000136BC(v12, v14, v122);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, log, v4, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v84);

    v17 = *(v92 + 8);
    v17(v94, v90);
    v18 = *(v5 + 8);
    v18(v102, v100);
    v17(v98, v90);
    v18(v104, v100);
    v18(v107, v100);
    v18(v110, v100);
    v18(v116, v100);
    sub_10000B3A8(v113, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v119, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v19 = *(v0 + 1248);
    v108 = *(v0 + 1064);
    v111 = *(v0 + 1072);
    v105 = *(v0 + 1056);
    v20 = *(v0 + 1032);
    v21 = *(v0 + 1000);
    v22 = *(v0 + 992);
    v117 = *(v0 + 1080);
    v120 = *(v0 + 960);
    v114 = *(v0 + 888);
    v23 = *(v0 + 800);
    v24 = *(v0 + 792);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);

    v27 = *(v25 + 8);
    v27(v24, v26);
    v18 = *(v21 + 8);
    v18(v20, v22);
    v27(v23, v26);
    v18(v105, v22);
    v18(v108, v22);
    v18(v111, v22);
    v18(v117, v22);
    sub_10000B3A8(v114, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v120, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v28 = *(v0 + 1144);
  v29 = *(v0 + 1128);
  v30 = *(v0 + 1112);
  v31 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v31 == v30)
  {
    v63 = v28;
    v32 = *(v0 + 1000) + 8;
    v18(*(v0 + 1104), *(v0 + 992));
    v33 = *(v0 + 1104);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1064);
    v39 = *(v0 + 1056);
    v40 = *(v0 + 1048);
    v41 = *(v0 + 1040);
    v42 = *(v0 + 1032);
    v64 = *(v0 + 1024);
    v65 = *(v0 + 1016);
    v66 = *(v0 + 1008);
    v67 = *(v0 + 984);
    v68 = *(v0 + 960);
    v69 = *(v0 + 944);
    v70 = *(v0 + 936);
    v71 = *(v0 + 928);
    v72 = *(v0 + 920);
    v73 = *(v0 + 888);
    v74 = *(v0 + 880);
    v75 = *(v0 + 856);
    v76 = *(v0 + 848);
    v77 = *(v0 + 840);
    v78 = *(v0 + 832);
    v79 = *(v0 + 824);
    v80 = *(v0 + 816);
    v81 = *(v0 + 808);
    v83 = *(v0 + 800);
    v85 = *(v0 + 792);
    v87 = *(v0 + 784);
    loga = *(v0 + 760);
    v91 = *(v0 + 752);
    v93 = *(v0 + 744);
    v95 = *(v0 + 736);
    v97 = *(v0 + 728);
    v99 = *(v0 + 712);
    v101 = *(v0 + 704);
    v103 = *(v0 + 696);
    v106 = *(v0 + 680);
    v109 = *(v0 + 656);
    v112 = *(v0 + 648);
    v115 = *(v0 + 624);
    v118 = *(v0 + 616);
    v121 = *(v0 + 608);

    v43 = *(v0 + 8);

    return v43(v63);
  }

  else
  {
    v45 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v28;
    *(v0 + 1136) = v45;
    *(v0 + 1128) = v29;
    v46 = *(v0 + 1592);
    v47 = *(v0 + 984);
    v48 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v45, v47, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v47, v0 + 16);
    sub_100359DA8(v47 + v46, v48, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    *(v0 + 1152) = v49;
    *(v0 + 1160) = sub_1000076D4(v49, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 944);
      v53 = *(v0 + 904);
      v54 = *(v0 + 896);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v122[0] = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      v58 = *(v0 + 80);
      v57 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v58);
      (*(*(*(v57 + 8) + 8) + 32))(v58);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v53 + 8))(v52, v54);
      sub_100007BAC((v0 + 56));
      v62 = sub_1000136BC(v59, v61, v122);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "publishKeys for beacon: %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100348A5C()
{
  v123 = v0;
  v1 = *(v0 + 1376);
  v2 = *(v0 + 1160);
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v86 = *(v0 + 1272);
    v96 = *(v0 + 1248);
    v107 = *(v0 + 1064);
    v110 = *(v0 + 1072);
    v102 = *(v0 + 1032);
    v104 = *(v0 + 1056);
    v5 = *(v0 + 1000);
    v100 = *(v0 + 992);
    v116 = *(v0 + 1080);
    v119 = *(v0 + 960);
    log = v3;
    v6 = *(v0 + 944);
    v7 = *(v0 + 896);
    v113 = *(v0 + 888);
    v98 = *(v0 + 800);
    v94 = *(v0 + 792);
    v82 = *(v0 + 904) + 8;
    v90 = *(v0 + 768);
    v92 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v122[0] = v84;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v86(v6, v7);
    sub_100007BAC((v0 + 176));
    v15 = sub_1000136BC(v12, v14, v122);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, log, v4, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v84);

    v17 = *(v92 + 8);
    v17(v94, v90);
    v18 = *(v5 + 8);
    v18(v102, v100);
    v17(v98, v90);
    v18(v104, v100);
    v18(v107, v100);
    v18(v110, v100);
    v18(v116, v100);
    sub_10000B3A8(v113, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v119, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v19 = *(v0 + 1248);
    v108 = *(v0 + 1064);
    v111 = *(v0 + 1072);
    v105 = *(v0 + 1056);
    v20 = *(v0 + 1032);
    v21 = *(v0 + 1000);
    v22 = *(v0 + 992);
    v117 = *(v0 + 1080);
    v120 = *(v0 + 960);
    v114 = *(v0 + 888);
    v23 = *(v0 + 800);
    v24 = *(v0 + 792);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);

    v27 = *(v25 + 8);
    v27(v24, v26);
    v18 = *(v21 + 8);
    v18(v20, v22);
    v27(v23, v26);
    v18(v105, v22);
    v18(v108, v22);
    v18(v111, v22);
    v18(v117, v22);
    sub_10000B3A8(v114, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v120, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v28 = *(v0 + 1144);
  v29 = *(v0 + 1128);
  v30 = *(v0 + 1112);
  v31 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v31 == v30)
  {
    v63 = v28;
    v32 = *(v0 + 1000) + 8;
    v18(*(v0 + 1104), *(v0 + 992));
    v33 = *(v0 + 1104);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1064);
    v39 = *(v0 + 1056);
    v40 = *(v0 + 1048);
    v41 = *(v0 + 1040);
    v42 = *(v0 + 1032);
    v64 = *(v0 + 1024);
    v65 = *(v0 + 1016);
    v66 = *(v0 + 1008);
    v67 = *(v0 + 984);
    v68 = *(v0 + 960);
    v69 = *(v0 + 944);
    v70 = *(v0 + 936);
    v71 = *(v0 + 928);
    v72 = *(v0 + 920);
    v73 = *(v0 + 888);
    v74 = *(v0 + 880);
    v75 = *(v0 + 856);
    v76 = *(v0 + 848);
    v77 = *(v0 + 840);
    v78 = *(v0 + 832);
    v79 = *(v0 + 824);
    v80 = *(v0 + 816);
    v81 = *(v0 + 808);
    v83 = *(v0 + 800);
    v85 = *(v0 + 792);
    v87 = *(v0 + 784);
    loga = *(v0 + 760);
    v91 = *(v0 + 752);
    v93 = *(v0 + 744);
    v95 = *(v0 + 736);
    v97 = *(v0 + 728);
    v99 = *(v0 + 712);
    v101 = *(v0 + 704);
    v103 = *(v0 + 696);
    v106 = *(v0 + 680);
    v109 = *(v0 + 656);
    v112 = *(v0 + 648);
    v115 = *(v0 + 624);
    v118 = *(v0 + 616);
    v121 = *(v0 + 608);

    v43 = *(v0 + 8);

    return v43(v63);
  }

  else
  {
    v45 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v28;
    *(v0 + 1136) = v45;
    *(v0 + 1128) = v29;
    v46 = *(v0 + 1592);
    v47 = *(v0 + 984);
    v48 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v45, v47, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v47, v0 + 16);
    sub_100359DA8(v47 + v46, v48, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    *(v0 + 1152) = v49;
    *(v0 + 1160) = sub_1000076D4(v49, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 944);
      v53 = *(v0 + 904);
      v54 = *(v0 + 896);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v122[0] = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      v58 = *(v0 + 80);
      v57 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v58);
      (*(*(*(v57 + 8) + 8) + 32))(v58);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v53 + 8))(v52, v54);
      sub_100007BAC((v0 + 56));
      v62 = sub_1000136BC(v59, v61, v122);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "publishKeys for beacon: %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_100349544()
{
  v123 = v0;
  sub_10000B3A8(*(v0 + 736), &qword_10169E350, &unk_10139D7B0);
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1160);
  sub_10001F280(v0 + 16, v0 + 176);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v86 = *(v0 + 1272);
    v96 = *(v0 + 1248);
    v107 = *(v0 + 1064);
    v110 = *(v0 + 1072);
    v102 = *(v0 + 1032);
    v104 = *(v0 + 1056);
    v5 = *(v0 + 1000);
    v100 = *(v0 + 992);
    v116 = *(v0 + 1080);
    v119 = *(v0 + 960);
    log = v3;
    v6 = *(v0 + 944);
    v7 = *(v0 + 896);
    v113 = *(v0 + 888);
    v98 = *(v0 + 800);
    v94 = *(v0 + 792);
    v82 = *(v0 + 904) + 8;
    v90 = *(v0 + 768);
    v92 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v122[0] = v84;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    sub_1000035D0((v0 + 176), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v86(v6, v7);
    sub_100007BAC((v0 + 176));
    v15 = sub_1000136BC(v12, v14, v122);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, log, v4, "Could not obtain keys for %{private,mask.hash}s - %{public}@", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v84);

    v17 = *(v92 + 8);
    v17(v94, v90);
    v18 = *(v5 + 8);
    v18(v102, v100);
    v17(v98, v90);
    v18(v104, v100);
    v18(v107, v100);
    v18(v110, v100);
    v18(v116, v100);
    sub_10000B3A8(v113, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v119, type metadata accessor for NotifyWhenFoundRecord);
  }

  else
  {
    v19 = *(v0 + 1248);
    v108 = *(v0 + 1064);
    v111 = *(v0 + 1072);
    v105 = *(v0 + 1056);
    v20 = *(v0 + 1032);
    v21 = *(v0 + 1000);
    v22 = *(v0 + 992);
    v117 = *(v0 + 1080);
    v120 = *(v0 + 960);
    v114 = *(v0 + 888);
    v23 = *(v0 + 800);
    v24 = *(v0 + 792);
    v25 = *(v0 + 776);
    v26 = *(v0 + 768);

    v27 = *(v25 + 8);
    v27(v24, v26);
    v18 = *(v21 + 8);
    v18(v20, v22);
    v27(v23, v26);
    v18(v105, v22);
    v18(v108, v22);
    v18(v111, v22);
    v18(v117, v22);
    sub_10000B3A8(v114, &unk_1016C8FC0, &unk_10139D7D0);
    sub_100359E10(v120, type metadata accessor for NotifyWhenFoundRecord);
    sub_100007BAC((v0 + 176));
  }

  v28 = *(v0 + 1144);
  v29 = *(v0 + 1128);
  v30 = *(v0 + 1112);
  v31 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v31 == v30)
  {
    v63 = v28;
    v32 = *(v0 + 1000) + 8;
    v18(*(v0 + 1104), *(v0 + 992));
    v33 = *(v0 + 1104);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1064);
    v39 = *(v0 + 1056);
    v40 = *(v0 + 1048);
    v41 = *(v0 + 1040);
    v42 = *(v0 + 1032);
    v64 = *(v0 + 1024);
    v65 = *(v0 + 1016);
    v66 = *(v0 + 1008);
    v67 = *(v0 + 984);
    v68 = *(v0 + 960);
    v69 = *(v0 + 944);
    v70 = *(v0 + 936);
    v71 = *(v0 + 928);
    v72 = *(v0 + 920);
    v73 = *(v0 + 888);
    v74 = *(v0 + 880);
    v75 = *(v0 + 856);
    v76 = *(v0 + 848);
    v77 = *(v0 + 840);
    v78 = *(v0 + 832);
    v79 = *(v0 + 824);
    v80 = *(v0 + 816);
    v81 = *(v0 + 808);
    v83 = *(v0 + 800);
    v85 = *(v0 + 792);
    v87 = *(v0 + 784);
    loga = *(v0 + 760);
    v91 = *(v0 + 752);
    v93 = *(v0 + 744);
    v95 = *(v0 + 736);
    v97 = *(v0 + 728);
    v99 = *(v0 + 712);
    v101 = *(v0 + 704);
    v103 = *(v0 + 696);
    v106 = *(v0 + 680);
    v109 = *(v0 + 656);
    v112 = *(v0 + 648);
    v115 = *(v0 + 624);
    v118 = *(v0 + 616);
    v121 = *(v0 + 608);

    v43 = *(v0 + 8);

    return v43(v63);
  }

  else
  {
    v45 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v28;
    *(v0 + 1136) = v45;
    *(v0 + 1128) = v29;
    v46 = *(v0 + 1592);
    v47 = *(v0 + 984);
    v48 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v45, v47, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v47, v0 + 16);
    sub_100359DA8(v47 + v46, v48, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    *(v0 + 1152) = v49;
    *(v0 + 1160) = sub_1000076D4(v49, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 944);
      v53 = *(v0 + 904);
      v54 = *(v0 + 896);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v122[0] = v56;
      *v55 = 141558275;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      v58 = *(v0 + 80);
      v57 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v58);
      (*(*(*(v57 + 8) + 8) + 32))(v58);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v53 + 8))(v52, v54);
      sub_100007BAC((v0 + 56));
      v62 = sub_1000136BC(v59, v61, v122);

      *(v55 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "publishKeys for beacon: %{private,mask.hash}s", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_10034A044()
{
  v154 = v0;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1552);
  sub_1000076D4(*(v0 + 1152), qword_10177CE28);
  sub_10001F280(v0 + 16, v0 + 376);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1552);
  if (v4)
  {
    v138 = *(v0 + 1272);
    v142 = *(v0 + 1432);
    v6 = *(v0 + 944);
    v7 = *(v0 + 896);
    v150 = *(v0 + 680);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v153[0] = v146;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 400);
    v10 = *(v0 + 408);
    sub_1000035D0((v0 + 376), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v138(v6, v7);
    sub_100007BAC((v0 + 376));
    v15 = sub_1000136BC(v12, v14, v153);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get ownedDevice keys for %{private,mask.hash}s error: %{public}@.", v8, 0x20u);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v146);

    sub_100359E10(v150, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
    v17 = *(v0 + 680);
    v18 = *(v0 + 1552);

    sub_100359E10(v17, type metadata accessor for OwnedBeaconRecord);
    sub_100007BAC((v0 + 376));
  }

  v113 = *(v0 + 1128);
  v135 = *(v0 + 1424);
  v139 = *(v0 + 1512);
  v143 = *(v0 + 1416);
  v147 = *(v0 + 1520);
  v19 = *(v0 + 1320);
  v20 = *(v0 + 1312);
  v21 = *(v0 + 1304);
  v151 = *(v0 + 1160);
  v22 = *(v0 + 992);
  v23 = *(v0 + 960);
  v24 = *(v0 + 952);
  v25 = *(v0 + 904);
  v26 = *(v0 + 896);
  v27 = *(v0 + 624);
  v129 = *(v0 + 808);
  v132 = *(v0 + 616);
  v28 = *(v0 + 592);
  (*(v0 + 1296))(v27, *(v0 + 1024), v22);
  v20(v27, 0, 1, v22);
  (*(v25 + 16))(v27 + v28[5], v23 + *(v24 + 20), v26);
  v29 = v28[7];
  v31 = *(v0 + 40);
  v30 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v31);
  (*(*(*(v30 + 8) + 8) + 32))(v31);
  (*(v25 + 56))(v27 + v29, 0, 1, v26);
  sub_1000D2A70(v129, v27 + v28[9], &unk_101696900, &unk_10138B1E0);
  *(v27 + v28[6]) = 1;
  *(v27 + v28[8]) = v135;
  v32 = (v27 + v28[10]);
  *v32 = v139;
  v32[1] = v147;
  *(v27 + v28[11]) = v143;
  *(v27 + v28[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v27, v132, type metadata accessor for NotifyMeRequest.Subscription);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 616);
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v153[0] = v38;
    *v37 = 136315138;
    v39 = sub_10040BAA8();
    v41 = v40;
    sub_100359E10(v36, type metadata accessor for NotifyMeRequest.Subscription);
    v42 = sub_1000136BC(v39, v41, v153);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "publishKeys subscription: %s.", v37, 0xCu);
    sub_100007BAC(v38);
  }

  else
  {

    sub_100359E10(v36, type metadata accessor for NotifyMeRequest.Subscription);
  }

  v43 = *(v0 + 1144);
  sub_100034E04(*(v0 + 624), *(v0 + 608), type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v0 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_100A5CA98(0, v45[2] + 1, 1, v45);
  }

  v47 = v45[2];
  v46 = v45[3];
  v144 = v47 + 1;
  v148 = v47;
  if (v47 >= v46 >> 1)
  {
    v152 = sub_100A5CA98(v46 > 1, v47 + 1, 1, v45);
  }

  else
  {
    v152 = v45;
  }

  v48 = *(v0 + 1440);
  v49 = *(v0 + 1408);
  v50 = *(v0 + 1248);
  v130 = *(v0 + 1080);
  v123 = *(v0 + 1064);
  v125 = *(v0 + 1072);
  v121 = *(v0 + 1056);
  v119 = *(v0 + 1032);
  v115 = *(v0 + 1024);
  v51 = *(v0 + 1000);
  v52 = *(v0 + 992);
  v136 = *(v0 + 960);
  v127 = *(v0 + 888);
  v53 = *(v0 + 808);
  v117 = *(v0 + 800);
  v54 = *(v0 + 792);
  v55 = *(v0 + 776);
  v56 = *(v0 + 768);
  v57 = *(v0 + 624);
  v140 = *(v0 + 608);
  v133 = *(v0 + 600);

  sub_100359E10(v57, type metadata accessor for NotifyMeRequest.Subscription);
  sub_10000B3A8(v53, &unk_101696900, &unk_10138B1E0);
  v49(v115, v52);
  v48(v54, v56);
  v49(v119, v52);
  v48(v117, v56);
  v49(v121, v52);
  v49(v123, v52);
  v49(v125, v52);
  v49(v130, v52);
  sub_10000B3A8(v127, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100359E10(v136, type metadata accessor for NotifyWhenFoundRecord);
  *(v152 + 16) = v144;
  sub_100359DA8(v140, v152 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v148, type metadata accessor for NotifyMeRequest.Subscription);
  v58 = *(v0 + 1408);
  v59 = *(v0 + 1112);
  v60 = *(v0 + 1136) + 1;
  sub_100007BAC((v0 + 16));
  if (v60 == v59)
  {
    v61 = *(v0 + 1000) + 8;
    v58(*(v0 + 1104), *(v0 + 992));
    v62 = *(v0 + 1104);
    v63 = *(v0 + 1096);
    v64 = *(v0 + 1088);
    v65 = *(v0 + 1080);
    v66 = *(v0 + 1072);
    v67 = *(v0 + 1064);
    v68 = *(v0 + 1056);
    v69 = *(v0 + 1048);
    v70 = *(v0 + 1040);
    v71 = *(v0 + 1032);
    v92 = *(v0 + 1024);
    v93 = *(v0 + 1016);
    v94 = *(v0 + 1008);
    v95 = *(v0 + 984);
    v96 = *(v0 + 960);
    v97 = *(v0 + 944);
    v98 = *(v0 + 936);
    v99 = *(v0 + 928);
    v100 = *(v0 + 920);
    v101 = *(v0 + 888);
    v102 = *(v0 + 880);
    v103 = *(v0 + 856);
    v104 = *(v0 + 848);
    v105 = *(v0 + 840);
    v106 = *(v0 + 832);
    v107 = *(v0 + 824);
    v108 = *(v0 + 816);
    v109 = *(v0 + 808);
    v110 = *(v0 + 800);
    v111 = *(v0 + 792);
    v112 = *(v0 + 784);
    v114 = *(v0 + 760);
    v116 = *(v0 + 752);
    v118 = *(v0 + 744);
    v120 = *(v0 + 736);
    v122 = *(v0 + 728);
    v124 = *(v0 + 712);
    v126 = *(v0 + 704);
    v128 = *(v0 + 696);
    v131 = *(v0 + 680);
    v134 = *(v0 + 656);
    v137 = *(v0 + 648);
    v141 = *(v0 + 624);
    v145 = *(v0 + 616);
    v149 = *(v0 + 608);

    v72 = *(v0 + 8);

    return v72(v152);
  }

  else
  {
    v74 = *(v0 + 1136) + 1;
    *(v0 + 1144) = v152;
    *(v0 + 1136) = v74;
    *(v0 + 1128) = v113;
    v75 = *(v0 + 1592);
    v76 = *(v0 + 984);
    v77 = *(v0 + 960);
    sub_1000D2A70(*(v0 + 576) + ((*(v0 + 1596) + 32) & ~*(v0 + 1596)) + *(v0 + 1120) * v74, v76, &qword_10169E348, &unk_10139D7A0);
    sub_10000A748(v76, v0 + 16);
    sub_100359DA8(v76 + v75, v77, type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    *(v0 + 1152) = v78;
    *(v0 + 1160) = sub_1000076D4(v78, qword_10177AC78);
    sub_10001F280(v0 + 16, v0 + 56);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = *(v0 + 944);
      v82 = *(v0 + 904);
      v83 = *(v0 + 896);
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v153[0] = v85;
      *v84 = 141558275;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2081;
      v87 = *(v0 + 80);
      v86 = *(v0 + 88);
      sub_1000035D0((v0 + 56), v87);
      (*(*(*(v86 + 8) + 8) + 32))(v87);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      (*(v82 + 8))(v81, v83);
      sub_100007BAC((v0 + 56));
      v91 = sub_1000136BC(v88, v90, v153);

      *(v84 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v79, v80, "publishKeys for beacon: %{private,mask.hash}s", v84, 0x16u);
      sub_100007BAC(v85);
    }

    else
    {

      sub_100007BAC((v0 + 56));
    }

    if (qword_101694940 != -1)
    {
      swift_once();
    }

    *(v0 + 1168) = qword_10177B348;

    return _swift_task_switch(sub_10033EF80, 0, 0);
  }
}

uint64_t sub_10034AE3C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for FMNAccountType();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for NotifyMeEndpoint();
  v2[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10034AFF0, v1, 0);
}

uint64_t sub_10034AFF0()
{
  v16 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[22] = sub_1000076D4(v2, qword_10177AC78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
    v8 = Array.description.getter();
    v10 = sub_1000136BC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "publishKeys for beacons: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_10034B1DC;
  v12 = v0[7];
  v13 = v0[8];

  return sub_10033E248(v12);
}

uint64_t sub_10034B1DC(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10034B2F4, v3, 0);
}

uint64_t sub_10034B2F4()
{
  v1 = *(v0[8] + 128);

  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10034B3B8;
  v3 = v0[24];

  return (sub_10040D0B8)(v3, v1);
}

uint64_t sub_10034B3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 200);
  v6 = *(*v3 + 64);
  v8 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = a3;

  return _swift_task_switch(sub_10034B4D4, v6, 0);
}

uint64_t sub_10034B4D4()
{
  v1 = v0[26];
  if (v1)
  {
    v3 = v0[27];
    v2 = v0[28];
    v39 = v0[14];
    v4 = v0[12];
    v36 = v0[13];
    v37 = v0[15];
    v5 = v0[10];
    v38 = v0[9];
    v6 = enum case for FMNAccountType.searchParty(_:);
    v7 = *(v0[11] + 104);
    v7(v4, enum case for FMNAccountType.searchParty(_:), v5);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();

    sub_100017D5C(v3, v2);
    *v37 = sub_1010B32C8(v4);
    v7(v37 + *(v36 + 20), v6, v5);
    v8 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = type metadata accessor for FMNMockingPreferences();
    (*(*(v11 - 8) + 56))(v38, 1, 1, v11);
    v12 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v13 = type metadata accessor for ServerInteractionController(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    sub_100034E04(v37, v39, type metadata accessor for NotifyMeEndpoint);
    v0[29] = sub_10062050C(v39, v12, v16);
    sub_100359E10(v37, type metadata accessor for NotifyMeEndpoint);
    v0[5] = &type metadata for NotifyMeRequest;
    v0[6] = sub_100358FC0();
    v0[2] = v1;
    v0[3] = v3;
    v0[4] = v2;

    sub_100017D5C(v3, v2);
    v17 = swift_task_alloc();
    v0[30] = v17;
    *v17 = v0;
    v17[1] = sub_10034B894;
    v18 = v0[21];

    return sub_1004E682C(v18, (v0 + 2));
  }

  else
  {
    v20 = v0[22];
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not create notify me request", v23, 2u);
    }

    v25 = v0[27];
    v24 = v0[28];

    sub_100358F3C();
    swift_allocError();
    *v26 = 4;
    swift_willThrow();
    sub_100165328(0, v25, v24);
    v28 = v0[20];
    v27 = v0[21];
    v30 = v0[18];
    v29 = v0[19];
    v32 = v0[14];
    v31 = v0[15];
    v33 = v0[12];
    v34 = v0[9];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_10034B894()
{
  v2 = *v1;
  v3 = (*v1)[30];
  v8 = *v1;
  (*v1)[31] = v0;

  v4 = v2[29];
  if (v0)
  {
    v5 = v2[8];

    v6 = sub_10034C3C0;
  }

  else
  {
    v5 = v2[8];

    sub_100007BAC(v2 + 2);
    v6 = sub_10034B9C8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10034B9C8()
{
  v80 = v0;
  v1 = v0[21];
  v2 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v2 == 500 || v2 == 404)
  {
    v16 = v0[22];
    (*(v0[17] + 16))(v0[19], v0[21], v0[16]);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[19];
    v22 = v0[16];
    v21 = v0[17];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v23 = 136446210;
      sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v74 = v18;
      v27 = *(v21 + 8);
      v27(v20, v22);
      v28 = v27;
      v29 = sub_1000136BC(v24, v26, v79);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v17, v74, "Publish failed: %{public}s", v23, 0xCu);
      sub_100007BAC(v77);
    }

    else
    {

      v30 = *(v21 + 8);
      v30(v20, v22);
      v28 = v30;
    }

    v31 = v0[21];
    v32 = v0[16];
    sub_100358F3C();
    swift_allocError();
    *v33 = 0;
  }

  else
  {
    if (v2 == 200)
    {
      v3 = v0[22];
      (*(v0[17] + 16))(v0[20], v0[21], v0[16]);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      v6 = os_log_type_enabled(v4, v5);
      v7 = v0[20];
      v8 = v0[16];
      v9 = v0[17];
      if (v6)
      {
        v10 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v79[0] = v76;
        *v10 = 136315138;
        sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v13 = v12;
        v14 = *(v9 + 8);
        v14(v7, v8);
        v15 = sub_1000136BC(v11, v13, v79);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v4, v5, "Publish success: %s", v10, 0xCu);
        sub_100007BAC(v76);
      }

      else
      {

        v14 = *(v9 + 8);
        v14(v7, v8);
      }

      v0[32] = v14;
      v47 = v0[21];
      v48 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v50 = v49;
      v0[33] = v48;
      v0[34] = v49;
      v51 = swift_task_alloc();
      v0[35] = v51;
      *v51 = v0;
      v51[1] = sub_10034C140;
      v52 = v0[8];

      return sub_10035052C(v48, v50);
    }

    v34 = v0[22];
    (*(v0[17] + 16))(v0[18], v0[21], v0[16]);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v39 = v0[17];
    v38 = v0[18];
    v40 = v0[16];
    if (v37)
    {
      v41 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v41 = 136446210;
      sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v75 = v36;
      v45 = *(v39 + 8);
      v45(v38, v40);
      v28 = v45;
      v46 = sub_1000136BC(v42, v44, v79);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v35, v75, "Publish failed: %{public}s", v41, 0xCu);
      sub_100007BAC(v78);
    }

    else
    {

      v54 = *(v39 + 8);
      v54(v38, v40);
      v28 = v54;
    }

    v31 = v0[21];
    v32 = v0[16];
    sub_100358F3C();
    swift_allocError();
    *v55 = 2;
  }

  swift_willThrow();
  v28(v31, v32);
  v56 = v0[22];
  swift_errorRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138543362;
    swift_errorRetain();
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v59 + 4) = v61;
    *v60 = v61;
    _os_log_impl(&_mh_execute_header, v57, v58, "Server error publishing keys: %{public}@", v59, 0xCu);
    sub_10000B3A8(v60, &qword_10169BB30, &unk_10138B3C0);
  }

  v63 = v0[27];
  v62 = v0[28];
  v64 = v0[26];

  swift_willThrow();
  sub_100165328(v64, v63, v62);
  sub_100165328(v64, v63, v62);
  v66 = v0[20];
  v65 = v0[21];
  v68 = v0[18];
  v67 = v0[19];
  v70 = v0[14];
  v69 = v0[15];
  v71 = v0[12];
  v72 = v0[9];

  v73 = v0[1];

  return v73();
}

uint64_t sub_10034C140()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[34];
  v6 = v2[33];
  v7 = v2[8];
  sub_100016590(v6, v5);
  if (v0)
  {
    v8 = sub_10034C5A0;
  }

  else
  {
    v8 = sub_10034C29C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10034C29C()
{
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];
  v9 = v0[16];
  v8 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[14];
  v15 = v0[12];
  v16 = v0[9];
  sub_100165328(v4, v2, v3);
  sub_100165328(v4, v2, v3);
  v1(v5, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10034C3C0()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[31];
  v2 = v0[22];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Server error publishing keys: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];

  swift_willThrow();
  sub_100165328(v10, v9, v8);
  sub_100165328(v10, v9, v8);
  v12 = v0[20];
  v11 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[12];
  v18 = v0[9];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10034C5A0()
{
  v1 = *(v0 + 136) + 8;
  (*(v0 + 256))(*(v0 + 168), *(v0 + 128));
  v2 = *(v0 + 288);
  v3 = *(v0 + 176);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Server error publishing keys: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 208);

  swift_willThrow();
  sub_100165328(v11, v10, v9);
  sub_100165328(v11, v10, v9);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10034C794(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for FMNAccountType();
  v2[16] = v5;
  v6 = *(v5 - 8);
  v2[17] = v6;
  v7 = *(v6 + 64) + 15;
  v2[18] = swift_task_alloc();
  v8 = type metadata accessor for NotifyMeEndpoint();
  v2[19] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v10 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v13 = type metadata accessor for NotifyMeRequest.Subscription();
  v2[28] = v13;
  v14 = *(v13 - 8);
  v2[29] = v14;
  v15 = *(v14 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v16 = type metadata accessor for StableIdentifier();
  v2[32] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v2[35] = v18;
  v19 = *(v18 - 8);
  v2[36] = v19;
  v2[37] = *(v19 + 64);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v20 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v2[42] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v2[44] = found;
  v23 = *(found - 8);
  v2[45] = v23;
  v24 = *(v23 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_10034CB50, v1, 0);
}

uint64_t sub_10034CB50()
{
  v23 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  *(v0 + 384) = sub_1000076D4(v2, qword_10177AC78);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 352);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_1000136BC(v9, v10, &v22);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unsubscribe for beacons: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v12 = *(v0 + 96);
  v13 = *(v12 + 16);
  *(v0 + 392) = v13;
  if (v13)
  {
    v14 = *(v0 + 360);
    v15 = *(v14 + 80);
    *(v0 + 600) = v15;
    v16 = *(v14 + 72);
    *(v0 + 416) = 0;
    *(v0 + 400) = v16;
    *(v0 + 408) = _swiftEmptyArrayStorage;
    sub_100034E04(v12 + ((v15 + 32) & ~v15), *(v0 + 376), type metadata accessor for NotifyWhenFoundRecord);
    v17 = async function pointer to daemon.getter[1];
    v18 = swift_task_alloc();
    *(v0 + 424) = v18;
    *v18 = v0;
    v18[1] = sub_10034CE38;

    return daemon.getter();
  }

  else
  {
    *(v0 + 496) = _swiftEmptyArrayStorage;
    v19 = *(*(v0 + 104) + 128);

    v20 = swift_task_alloc();
    *(v0 + 504) = v20;
    *v20 = v0;
    v20[1] = sub_10034DBF8;

    return sub_10040D0B8(_swiftEmptyArrayStorage, v19);
  }
}

uint64_t sub_10034CE38(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 424);
  v12 = *v1;
  *(v3 + 432) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 440) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10034D01C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10034D01C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = *(v4 + 104);
    v8 = sub_10034DA64;
  }

  else
  {
    v9 = *(v4 + 432);
    v10 = *(v4 + 352);

    *(v4 + 456) = a1;
    *(v4 + 604) = *(v10 + 24);
    v8 = sub_10034D164;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10034D164()
{
  v1 = *(v0 + 604);
  v2 = *(v0 + 456);
  v3 = *(v0 + 376);
  v4 = *(v0 + 328);
  v5 = *(v0 + 288);
  v6 = *(v0 + 280);
  v7 = *(v5 + 16);
  *(v0 + 464) = v7;
  *(v0 + 472) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3 + v1, v6);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  *(v9 + 16) = v2;
  (*(v5 + 32))(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 488) = v11;
  *v11 = v0;
  v11[1] = sub_10034D2D4;
  v13 = *(v0 + 336);
  v12 = *(v0 + 344);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100358FA8, v9, v13);
}

uint64_t sub_10034D2D4()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 456);
  v4 = *(*v0 + 104);
  v6 = *v0;

  return _swift_task_switch(sub_10034D424, v4, 0);
}

uint64_t sub_10034D424()
{
  v1 = *(v0 + 344);
  v2 = type metadata accessor for OwnedBeaconRecord();
  if ((*(*(v2 - 1) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 256);
    v5 = v2[6];
    sub_100034E04(v1 + v5, v3, type metadata accessor for StableIdentifier);
    LODWORD(v4) = swift_getEnumCaseMultiPayload();
    sub_100359E10(v3, type metadata accessor for StableIdentifier);
    if (v4 != 1)
    {
      v6 = *(v0 + 256);
      sub_100034E04(v1 + v5, *(v0 + 264), type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v8 = *(v0 + 264) + 8;
        v13 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v14 = *(v8 + v13[12]);

        v15 = *(v8 + v13[16]);

        v16 = *(v8 + v13[20]);

        v12 = v13[28];
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v27 = *(v0 + 344);
          sub_100359E10(*(v0 + 264), type metadata accessor for StableIdentifier);
          sub_100359E10(v27, type metadata accessor for OwnedBeaconRecord);
          goto LABEL_12;
        }

        v8 = *(v0 + 264) + 8;
        v9 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
        v10 = *(v8 + v9[12]);

        v11 = *(v8 + v9[16]);

        v12 = v9[20];
      }

      v17 = *(v8 + v12);
      v18 = *(v0 + 280);
      v19 = *(v0 + 288);
      v20 = *(v0 + 264);

      (*(v19 + 8))(v20, v18);
    }

    v21 = *(v0 + 344);
    v22 = sub_100314604(*(v21 + v2[16]), *(v21 + v2[17]));
    v24 = v23;
    sub_100359E10(v21, type metadata accessor for OwnedBeaconRecord);
    if (v24 >> 60 != 15)
    {
      *(v0 + 80) = v22;
      *(v0 + 88) = v24;
      sub_1002313AC();
      v25 = RawRepresentable<>.hexString.getter();
      v58 = v26;
      v59 = v25;
      sub_100006654(v22, v24);
      goto LABEL_13;
    }
  }

LABEL_12:
  v58 = 0;
  v59 = 0;
LABEL_13:
  v29 = *(v0 + 464);
  v28 = *(v0 + 472);
  v30 = *(v0 + 376);
  v53 = *(v0 + 352);
  v31 = *(v0 + 280);
  v54 = *(v0 + 288);
  v55 = *(v0 + 604);
  v32 = *(v0 + 248);
  v56 = *(v0 + 240);
  v57 = *(v0 + 408);
  v33 = *(v0 + 224);
  v34 = type metadata accessor for Date();
  v35 = *(*(v34 - 8) + 56);
  v35(v32, 1, 1, v34);
  v29(v32 + v33[5], v30 + *(v53 + 20), v31);
  v36 = v33[7];
  v29(v32 + v36, v30 + v55, v31);
  (*(v54 + 56))(v32 + v36, 0, 1, v31);
  v35(v32 + v33[9], 1, 1, v34);
  *(v32 + v33[6]) = 0;
  *(v32 + v33[8]) = _swiftEmptyArrayStorage;
  v37 = (v32 + v33[10]);
  *v37 = v59;
  v37[1] = v58;
  *(v32 + v33[11]) = _swiftEmptyArrayStorage;
  *(v32 + v33[12]) = _swiftEmptyArrayStorage;
  sub_100034E04(v32, v56, type metadata accessor for NotifyMeRequest.Subscription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v0 + 408);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_100A5CA98(0, v39[2] + 1, 1, *(v0 + 408));
  }

  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v39 = sub_100A5CA98(v40 > 1, v41 + 1, 1, v39);
  }

  v42 = *(v0 + 392);
  v43 = *(v0 + 376);
  v44 = *(v0 + 240);
  v45 = *(v0 + 232);
  v46 = *(v0 + 416) + 1;
  sub_100359E10(*(v0 + 248), type metadata accessor for NotifyMeRequest.Subscription);
  sub_100359E10(v43, type metadata accessor for NotifyWhenFoundRecord);
  v39[2] = v41 + 1;
  sub_100359DA8(v44, v39 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v41, type metadata accessor for NotifyMeRequest.Subscription);
  if (v46 == v42)
  {
    *(v0 + 496) = v39;
    v47 = *(*(v0 + 104) + 128);

    v48 = swift_task_alloc();
    *(v0 + 504) = v48;
    *v48 = v0;
    v48[1] = sub_10034DBF8;

    return sub_10040D0B8(v39, v47);
  }

  else
  {
    v50 = *(v0 + 416) + 1;
    *(v0 + 408) = v39;
    *(v0 + 416) = v50;
    sub_100034E04(*(v0 + 96) + ((*(v0 + 600) + 32) & ~*(v0 + 600)) + *(v0 + 400) * v50, *(v0 + 376), type metadata accessor for NotifyWhenFoundRecord);
    v51 = async function pointer to daemon.getter[1];
    v52 = swift_task_alloc();
    *(v0 + 424) = v52;
    *v52 = v0;
    v52[1] = sub_10034CE38;

    return daemon.getter();
  }
}

uint64_t sub_10034DA64()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[47];

  sub_100359E10(v3, type metadata accessor for NotifyWhenFoundRecord);
  v26 = v0[56];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v12 = v0[33];
  v11 = v0[34];
  v13 = v0[31];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[18];
  v24 = v0[15];
  v25 = v0[14];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10034DBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 504);
  v6 = *(*v3 + 104);
  v8 = *v3;
  v4[64] = a1;
  v4[65] = a2;
  v4[66] = a3;

  return _swift_task_switch(sub_10034DD18, v6, 0);
}

uint64_t sub_10034DD18()
{
  v1 = v0[64];
  if (v1)
  {
    v2 = v0[66];
    v3 = v0[65];
    v52 = v0[20];
    v4 = v0[18];
    v44 = v0[19];
    v46 = v0[21];
    v5 = v0[16];
    v48 = v0[15];
    v6 = enum case for FMNAccountType.searchParty(_:);
    v7 = *(v0[17] + 104);
    v7(v4, enum case for FMNAccountType.searchParty(_:), v5);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();

    sub_100017D5C(v3, v2);
    *v46 = sub_1010B32C8(v4);
    v7(v46 + *(v44 + 20), v6, v5);
    v8 = type metadata accessor for SearchPartyURLSessionFactory(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = type metadata accessor for FMNMockingPreferences();
    (*(*(v11 - 8) + 56))(v48, 1, 1, v11);
    v12 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    v13 = type metadata accessor for ServerInteractionController(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    v16 = swift_allocObject();
    sub_100034E04(v46, v52, type metadata accessor for NotifyMeEndpoint);
    v0[67] = sub_10062050C(v52, v12, v16);
    sub_100359E10(v46, type metadata accessor for NotifyMeEndpoint);
    v0[5] = &type metadata for NotifyMeRequest;
    v0[6] = sub_100358FC0();
    v0[2] = v1;
    v0[3] = v3;
    v0[4] = v2;

    sub_100017D5C(v3, v2);
    v17 = swift_task_alloc();
    v0[68] = v17;
    *v17 = v0;
    v17[1] = sub_10034E178;
    v18 = v0[27];

    return sub_1004E682C(v18, (v0 + 2));
  }

  else
  {
    v20 = v0[62];
    v21 = v0[48];

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Could not create notify me request", v24, 2u);
    }

    v25 = v0[66];
    v26 = v0[65];

    sub_100358F3C();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();
    sub_100165328(0, v26, v25);
    v29 = v0[46];
    v28 = v0[47];
    v30 = v0[43];
    v32 = v0[40];
    v31 = v0[41];
    v34 = v0[38];
    v33 = v0[39];
    v36 = v0[33];
    v35 = v0[34];
    v37 = v0[31];
    v39 = v0[30];
    v40 = v0[27];
    v41 = v0[26];
    v42 = v0[25];
    v43 = v0[24];
    v45 = v0[21];
    v47 = v0[20];
    v49 = v0[18];
    v50 = v0[15];
    v51 = v0[14];

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_10034E178()
{
  v2 = *v1;
  v3 = (*v1)[68];
  v12 = *v1;
  (*v1)[69] = v0;

  if (v0)
  {
    v4 = v2[67];
    v5 = v2[62];
    v6 = v2[13];

    v7 = sub_10034F234;
    v8 = v6;
  }

  else
  {
    v9 = v2[67];
    v10 = v2[13];

    sub_100007BAC(v2 + 2);
    v7 = sub_10034E2C0;
    v8 = v10;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10034E2C0()
{
  v88 = v0;
  v1 = v0[27];
  v2 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v2 == 200)
  {
    v3 = v0[48];
    (*(v0[23] + 16))(v0[26], v0[27], v0[22]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[26];
    v8 = v0[22];
    v9 = v0[23];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v87[0] = v84;
      *v10 = 136315138;
      sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      v14 = *(v9 + 8);
      v14(v7, v8);
      v15 = sub_1000136BC(v11, v13, v87);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unsubscribe success: %s", v10, 0xCu);
      sub_100007BAC(v84);
    }

    else
    {

      v14 = *(v9 + 8);
      v14(v7, v8);
    }

    v0[70] = v14;
    v31 = v0[27];
    v32 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v34 = v33;
    v0[71] = v32;
    v0[72] = v33;
    v35 = swift_task_alloc();
    v0[73] = v35;
    *v35 = v0;
    v35[1] = sub_10034EAD4;
    v36 = v0[13];

    return sub_10035052C(v32, v34);
  }

  else
  {
    v16 = v2;
    v17 = v0[62];

    if (v16 == 500 || v16 == 404)
    {
      v18 = v0[48];
      (*(v0[23] + 16))(v0[25], v0[27], v0[22]);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v0[25];
      v24 = v0[22];
      v23 = v0[23];
      if (v21)
      {
        v25 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v87[0] = v85;
        *v25 = 136446210;
        sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        v29 = *(v23 + 8);
        v29(v22, v24);
        v30 = sub_1000136BC(v26, v28, v87);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v19, v20, "Unsubscribe failed: %{public}s", v25, 0xCu);
        sub_100007BAC(v85);
      }

      else
      {

        v29 = *(v23 + 8);
        v29(v22, v24);
      }

      v38 = v0[27];
      v39 = v0[22];
      sub_100358F3C();
      swift_allocError();
      *v40 = 0;
    }

    else
    {
      v41 = v0[48];
      (*(v0[23] + 16))(v0[24], v0[27], v0[22]);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      v44 = os_log_type_enabled(v42, v43);
      v46 = v0[23];
      v45 = v0[24];
      v47 = v0[22];
      if (v44)
      {
        v48 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87[0] = v86;
        *v48 = 136446210;
        sub_10003A260(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v29 = *(v46 + 8);
        v29(v45, v47);
        v52 = sub_1000136BC(v49, v51, v87);

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v42, v43, "Unsubscribe failed: %{public}s", v48, 0xCu);
        sub_100007BAC(v86);
      }

      else
      {

        v29 = *(v46 + 8);
        v29(v45, v47);
      }

      v38 = v0[27];
      v39 = v0[22];
      sub_100358F3C();
      swift_allocError();
      *v53 = 2;
    }

    swift_willThrow();
    v29(v38, v39);
    v54 = v0[48];
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138543362;
      swift_errorRetain();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "Server error unsubscribing: %{public}@", v57, 0xCu);
      sub_10000B3A8(v58, &qword_10169BB30, &unk_10138B3C0);
    }

    v60 = v0[66];
    v61 = v0[65];
    v62 = v0[64];

    swift_willThrow();
    sub_100165328(v62, v61, v60);
    sub_100165328(v62, v61, v60);
    v64 = v0[46];
    v63 = v0[47];
    v65 = v0[43];
    v67 = v0[40];
    v66 = v0[41];
    v69 = v0[38];
    v68 = v0[39];
    v71 = v0[33];
    v70 = v0[34];
    v72 = v0[31];
    v74 = v0[30];
    v75 = v0[27];
    v76 = v0[26];
    v77 = v0[25];
    v78 = v0[24];
    v79 = v0[21];
    v80 = v0[20];
    v81 = v0[18];
    v82 = v0[15];
    v83 = v0[14];

    v73 = v0[1];

    return v73();
  }
}

uint64_t sub_10034EAD4()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  v2[74] = v0;

  v5 = v2[72];
  v6 = v2[71];
  if (v0)
  {
    v7 = v2[62];
    v8 = v2[13];

    sub_100016590(v6, v5);
    v9 = sub_10034F4A8;
  }

  else
  {
    v8 = v2[13];
    sub_100016590(v6, v5);
    v9 = sub_10034EC48;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10034EC48()
{
  v74 = v0;
  v1 = *(v0 + 392);
  if (v1)
  {
    v2 = *(v0 + 360);
    v71 = *(v0 + 352);
    v3 = *(v0 + 288);
    v4 = *(v0 + 96);
    v73 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v1, 0);
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v68 = *(v2 + 72);
    do
    {
      v8 = *(v0 + 368);
      v9 = *(v0 + 312);
      v10 = *(v0 + 280);
      sub_100034E04(v7, v8, type metadata accessor for NotifyWhenFoundRecord);
      (*(v3 + 16))(v9, v8 + *(v71 + 24), v10);
      sub_100359E10(v8, type metadata accessor for NotifyWhenFoundRecord);
      v73 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123D4C(v11 > 1, v12 + 1, 1);
        v6 = v73;
      }

      v13 = *(v0 + 392);
      v14 = *(v0 + 312);
      v15 = *(v0 + 280);
      ++v5;
      v6[2] = v12 + 1;
      (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v14, v15);
      v7 += v68;
    }

    while (v5 != v13);
    v16 = *(v0 + 496);

    v18 = v6;
    v19 = v6[2];
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = *(v0 + 496);

    v18 = _swiftEmptyArrayStorage;
    v19 = _swiftEmptyArrayStorage[2];
    if (!v19)
    {
LABEL_15:
      v41 = *(v0 + 528);
      v42 = *(v0 + 520);
      v43 = *(v0 + 512);
      v45 = *(v0 + 368);
      v44 = *(v0 + 376);
      v46 = *(v0 + 344);
      v47 = *(v0 + 328);
      v50 = *(v0 + 320);
      v51 = *(v0 + 312);
      v52 = *(v0 + 304);
      v53 = *(v0 + 272);
      v54 = *(v0 + 264);
      v55 = *(v0 + 248);
      v56 = *(v0 + 240);
      v58 = *(v0 + 208);
      v59 = *(v0 + 200);
      v61 = *(v0 + 192);
      v62 = *(v0 + 168);
      v64 = *(v0 + 160);
      v67 = *(v0 + 144);
      v65 = *(v0 + 120);
      v70 = *(v0 + 112);
      v48 = (*(v0 + 184) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      (*(v0 + 560))(*(v0 + 216), *(v0 + 176));

      sub_100165328(v43, v42, v41);
      sub_100165328(v43, v42, v41);

      v49 = *(v0 + 8);

      return v49();
    }
  }

  v21 = 0;
  v69 = *(v0 + 104);
  v66 = *(v0 + 288);
  v63 = (v66 + 8);
  v72 = v18;
  v57 = v19;
  while (v21 < v18[2])
  {
    v26 = *(v0 + 384);
    v27 = *(v0 + 320);
    v28 = *(v0 + 304);
    v29 = *(v0 + 280);
    v30 = *(v66 + 16);
    v30(v27, v18 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v21, v29);
    v30(v28, v27, v29);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 304);
    v35 = *(v0 + 280);
    if (v33)
    {
      v36 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v73 = v60;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v22 = *v63;
      (*v63)(v34, v35);
      v40 = sub_1000136BC(v37, v39, &v73);
      v19 = v57;

      *(v36 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Removing beacon %{private,mask.hash}s from pending force publish.", v36, 0x16u);
      sub_100007BAC(v60);
    }

    else
    {

      v22 = *v63;
      (*v63)(v34, v35);
    }

    ++v21;
    v23 = *(v0 + 320);
    v24 = *(v0 + 280);
    v25 = *(v0 + 112);
    swift_beginAccess();
    sub_1010F6584(v23, v25);
    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();
    result = (v22)(v23, v24);
    v18 = v72;
    if (v19 == v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10034F234()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[69];
  v2 = v0[48];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Server error unsubscribing: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];

  swift_willThrow();
  sub_100165328(v10, v9, v8);
  sub_100165328(v10, v9, v8);
  v12 = v0[46];
  v11 = v0[47];
  v13 = v0[43];
  v15 = v0[40];
  v14 = v0[41];
  v17 = v0[38];
  v16 = v0[39];
  v19 = v0[33];
  v18 = v0[34];
  v20 = v0[31];
  v23 = v0[30];
  v24 = v0[27];
  v25 = v0[26];
  v26 = v0[25];
  v27 = v0[24];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[18];
  v31 = v0[15];
  v32 = v0[14];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10034F4A8()
{
  v1 = *(v0 + 184) + 8;
  (*(v0 + 560))(*(v0 + 216), *(v0 + 176));
  v2 = *(v0 + 592);
  v3 = *(v0 + 384);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Server error unsubscribing: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);

  swift_willThrow();
  sub_100165328(v11, v10, v9);
  sub_100165328(v11, v10, v9);
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  v14 = *(v0 + 344);
  v16 = *(v0 + 320);
  v15 = *(v0 + 328);
  v18 = *(v0 + 304);
  v17 = *(v0 + 312);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  v21 = *(v0 + 248);
  v24 = *(v0 + 240);
  v25 = *(v0 + 216);
  v26 = *(v0 + 208);
  v27 = *(v0 + 200);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);
  v30 = *(v0 + 160);
  v31 = *(v0 + 144);
  v32 = *(v0 + 120);
  v33 = *(v0 + 112);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10034F730(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v2[14] = *(v8 + 64);
  v2[15] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v2[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v2[18] = found;
  v12 = *(found - 8);
  v2[19] = v12;
  v13 = *(v12 + 64) + 15;
  v2[20] = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  v2[21] = v15;
  *v15 = v2;
  v15[1] = sub_10034F978;

  return daemon.getter();
}

uint64_t sub_10034F978(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v12 = *v1;
  *(v3 + 176) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 184) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_10034FB5C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10034FB5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_100350454;
  }

  else
  {
    v9 = v4[22];

    v4[25] = a1;
    v8 = sub_10034FC98;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10034FC98()
{
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[26] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[27] = v8;
  *v8 = v0;
  v8[1] = sub_10034FDF8;
  v10 = v0[16];
  v9 = v0[17];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v6, v10);
}

uint64_t sub_10034FDF8()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 32);
  v6 = *v0;

  return _swift_task_switch(sub_10034FF48, v4, 0);
}

void sub_10034FF48()
{
  v49 = v0;
  v1 = v0[17];
  if ((*(v0[19] + 48))(v1, 1, v0[18]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
LABEL_7:
    v6 = 0;
LABEL_8:
    v7 = v0[20];
    v8 = v0[17];
    v9 = v0[15];
    v11 = v0[10];
    v10 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[5];

    v15 = v0[1];

    v15(v6 & 1);
    return;
  }

  sub_100359DA8(v1, v0[20], type metadata accessor for NotifyWhenFoundRecord);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_100035730(v0[3], sub_100352E48, 0);
  sub_1012BB138(v3, v2);

  v4 = type metadata accessor for BeaconObservation();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    v5 = v0[20];
    sub_10000B3A8(v0[5], &qword_1016A42E0, &qword_1013B0010);
    sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);
    goto LABEL_7;
  }

  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[5];
  v21 = *(v19 + 16);
  v21(v17, v20 + *(v4 + 20), v18);
  sub_100359E10(v20, type metadata accessor for BeaconObservation);
  (*(v19 + 32))(v16, v17, v18);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v22 = v0[11];
  v23 = v0[9];
  v24 = v0[6];
  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_10177AC78);
  v21(v23, v22, v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[9];
  v30 = v0[6];
  v31 = v0[7];
  if (v28)
  {
    v32 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v32 = 136315138;
    sub_10003A260(&qword_1016969A0, 255, &type metadata accessor for Date);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = *(v31 + 8);
    v36(v29, v30);
    v37 = sub_1000136BC(v33, v35, &v48);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "postedLocalNotification lastPosted: %s.", v32, 0xCu);
    sub_100007BAC(v47);
  }

  else
  {

    v36 = *(v31 + 8);
    v36(v29, v30);
  }

  v38 = v0[24];
  v39 = v0[20];
  v40 = v0[8];
  v41 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v39, v40);
  objc_autoreleasePoolPop(v41);
  if (!v38)
  {
    v42 = v0[20];
    v43 = v0[11];
    v45 = v0[7];
    v44 = v0[8];
    v46 = v0[6];
    v6 = static Date.> infix(_:_:)();
    v36(v44, v46);
    v36(v43, v46);
    sub_100359E10(v42, type metadata accessor for NotifyWhenFoundRecord);
    goto LABEL_8;
  }
}

uint64_t sub_100350454()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[5];

  v10 = v0[1];
  v11 = v0[24];

  return v10(0);
}

uint64_t sub_10035052C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord();
  v3[16] = found;
  v9 = *(found - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v3[21] = v11;
  v12 = *(v11 - 8);
  v3[22] = v12;
  v3[23] = *(v12 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v13 = type metadata accessor for NotifyMeResponseResult();
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1003507A4, v2, 0);
}

uint64_t sub_1003507A4()
{
  v63 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 248) = JSONDecoder.init()();
  sub_100358EE8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v6 = *(v0 + 48);
  *(v0 + 256) = v6;
  if (qword_101694688 != -1)
  {
LABEL_21:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  *(v0 + 264) = sub_1000076D4(v7, qword_10177AC78);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v62[0] = v11;
    *v10 = 136315138;
    *(v0 + 56) = v6;

    v12 = String.init<A>(describing:)();
    v14 = sub_1000136BC(v12, v13, v62);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "NotifyMeResponse: %s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  v15 = *(v6 + 16);
  *(v0 + 272) = v15;
  if (!v15)
  {
LABEL_14:
    v42 = *(v0 + 248);
    v41 = *(v0 + 256);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);
    v45 = *(v0 + 224);
    v47 = *(v0 + 192);
    v46 = *(v0 + 200);
    v49 = *(v0 + 152);
    v48 = *(v0 + 160);
    v50 = *(v0 + 144);
    v55 = *(v0 + 120);
    v57 = *(v0 + 104);
    v59 = *(v0 + 96);
    v61 = *(v0 + 88);

    v51 = *(v0 + 8);

    return v51();
  }

  v16 = 0;
  *(v0 + 464) = *(*(v0 + 216) + 80);
  while (1)
  {
    *(v0 + 280) = v16;
    v19 = *(v0 + 256);
    if (v16 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v20 = *(v0 + 240);
    v21 = *(v0 + 208);
    v6 = *(v0 + 200);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    sub_100034E04(v19 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 216) + 72) * v16, v20, type metadata accessor for NotifyMeResponseResult);
    v24 = *(v23 + 16);
    *(v0 + 288) = v24;
    *(v0 + 296) = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v6, v20, v22);
    if (*(v20 + *(v21 + 20)))
    {
      break;
    }

    v17 = *(v0 + 240);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    v18 = v17;
LABEL_7:
    sub_100359E10(v18, type metadata accessor for NotifyMeResponseResult);
    v16 = *(v0 + 280) + 1;
    if (v16 == *(v0 + 272))
    {
      goto LABEL_14;
    }
  }

  if (*(v20 + *(v21 + 20)) == 2)
  {
    v25 = *(v0 + 264);
    sub_100034E04(*(v0 + 240), *(v0 + 232), type metadata accessor for NotifyMeResponseResult);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v6 = *(v0 + 232);
    v29 = *(v0 + 240);
    if (v28)
    {
      v30 = *(v0 + 224);
      v31 = *(v0 + 208);
      v32 = *(v0 + 176);
      v58 = *(v0 + 168);
      v60 = *(v0 + 200);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v62[0] = v34;
      *v33 = 136446210;
      sub_100034E04(v6, v30, type metadata accessor for NotifyMeResponseResult);
      v35 = String.init<A>(describing:)();
      v56 = v29;
      v37 = v36;
      sub_100359E10(v6, type metadata accessor for NotifyMeResponseResult);
      v6 = sub_1000136BC(v35, v37, v62);

      *(v33 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to process notify request: %{public}s", v33, 0xCu);
      sub_100007BAC(v34);

      (*(v32 + 8))(v60, v58);
      v18 = v56;
    }

    else
    {
      v38 = *(v0 + 200);
      v40 = *(v0 + 168);
      v39 = *(v0 + 176);

      sub_100359E10(v6, type metadata accessor for NotifyMeResponseResult);
      (*(v39 + 8))(v38, v40);
      v18 = v29;
    }

    goto LABEL_7;
  }

  v53 = async function pointer to daemon.getter[1];
  v54 = swift_task_alloc();
  *(v0 + 304) = v54;
  *v54 = v0;
  v54[1] = sub_100350E5C;

  return daemon.getter();
}

uint64_t sub_100350E5C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 304);
  v12 = *v1;
  v3[39] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[40] = v6;
  v7 = type metadata accessor for Daemon();
  v3[41] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v3[42] = v8;
  v9 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[43] = v9;
  v10 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  v3[44] = v10;
  *v6 = v12;
  v6[1] = sub_100351058;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100351058(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = v4[10];
    v8 = sub_100351ABC;
  }

  else
  {
    v9 = v4[39];

    v4[46] = a1;
    v8 = sub_100351194;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100351194()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 296);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  (*(v0 + 288))(v3, *(v0 + 200), v6);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 376) = v8;
  *(v8 + 16) = v1;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 384) = v10;
  *v10 = v0;
  v10[1] = sub_1003512E0;
  v12 = *(v0 + 112);
  v11 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100358F90, v8, v12);
}

uint64_t sub_1003512E0()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v4 = *(*v0 + 80);
  v6 = *v0;

  return _swift_task_switch(sub_100351430, v4, 0);
}

uint64_t sub_100351430()
{
  v70 = v0;
  v1 = *(v0 + 120);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) != 1)
  {
    v16 = *(v0 + 264);
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    sub_100359DA8(v1, v17, type metadata accessor for NotifyWhenFoundRecord);
    sub_100034E04(v17, v18, type metadata accessor for NotifyWhenFoundRecord);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 152);
    if (v21)
    {
      v23 = *(v0 + 144);
      v24 = *(v0 + 128);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v69 = v26;
      *v25 = 136315138;
      sub_100034E04(v22, v23, type metadata accessor for NotifyWhenFoundRecord);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      sub_100359E10(v22, type metadata accessor for NotifyWhenFoundRecord);
      v30 = sub_1000136BC(v27, v29, &v69);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Delete notification record (204 response): %s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100359E10(v22, type metadata accessor for NotifyWhenFoundRecord);
    }

    v58 = async function pointer to daemon.getter[1];
    v59 = swift_task_alloc();
    *(v0 + 392) = v59;
    *v59 = v0;
    v60 = sub_100351C1C;
LABEL_19:
    v59[1] = v60;

    return daemon.getter();
  }

  v2 = *(v0 + 240);
  (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
  sub_100359E10(v2, type metadata accessor for NotifyMeResponseResult);
  sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
  v3 = *(v0 + 280) + 1;
  if (v3 != *(v0 + 272))
  {
    while (1)
    {
      *(v0 + 280) = v3;
      v33 = *(v0 + 256);
      if (v3 >= *(v33 + 16))
      {
        break;
      }

      v34 = *(v0 + 240);
      v35 = *(v0 + 208);
      v36 = *(v0 + 200);
      v37 = *(v0 + 168);
      v38 = *(v0 + 176);
      sub_100034E04(v33 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 216) + 72) * v3, v34, type metadata accessor for NotifyMeResponseResult);
      v39 = *(v38 + 16);
      *(v0 + 288) = v39;
      *(v0 + 296) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v39(v36, v34, v37);
      if (*(v34 + *(v35 + 20)))
      {
        if (*(v34 + *(v35 + 20)) != 2)
        {
          v61 = async function pointer to daemon.getter[1];
          v59 = swift_task_alloc();
          *(v0 + 304) = v59;
          *v59 = v0;
          v60 = sub_100350E5C;
          goto LABEL_19;
        }

        v40 = *(v0 + 264);
        sub_100034E04(*(v0 + 240), *(v0 + 232), type metadata accessor for NotifyMeResponseResult);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        v43 = os_log_type_enabled(v41, v42);
        v44 = *(v0 + 232);
        v45 = *(v0 + 240);
        if (v43)
        {
          v46 = *(v0 + 224);
          v47 = *(v0 + 208);
          v48 = *(v0 + 176);
          v66 = *(v0 + 168);
          v68 = *(v0 + 200);
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v69 = v50;
          *v49 = 136446210;
          sub_100034E04(v44, v46, type metadata accessor for NotifyMeResponseResult);
          v51 = String.init<A>(describing:)();
          v64 = v45;
          v53 = v52;
          sub_100359E10(v44, type metadata accessor for NotifyMeResponseResult);
          v54 = sub_1000136BC(v51, v53, &v69);

          *(v49 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v41, v42, "Failed to process notify request: %{public}s", v49, 0xCu);
          sub_100007BAC(v50);

          (*(v48 + 8))(v68, v66);
          v32 = v64;
        }

        else
        {
          v55 = *(v0 + 200);
          v57 = *(v0 + 168);
          v56 = *(v0 + 176);

          sub_100359E10(v44, type metadata accessor for NotifyMeResponseResult);
          (*(v56 + 8))(v55, v57);
          v32 = v45;
        }
      }

      else
      {
        v31 = *(v0 + 240);
        (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
        v32 = v31;
      }

      sub_100359E10(v32, type metadata accessor for NotifyMeResponseResult);
      v3 = *(v0 + 280) + 1;
      if (v3 == *(v0 + 272))
      {
        goto LABEL_3;
      }
    }

    __break(1u);
    return daemon.getter();
  }

LABEL_3:
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  v10 = *(v0 + 192);
  v9 = *(v0 + 200);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 144);
  v62 = *(v0 + 120);
  v63 = *(v0 + 104);
  v65 = *(v0 + 96);
  v67 = *(v0 + 88);

  v14 = *(v0 + 8);

  return v14();
}