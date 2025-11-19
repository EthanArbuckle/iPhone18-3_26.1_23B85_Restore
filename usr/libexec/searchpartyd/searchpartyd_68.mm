uint64_t sub_100722744(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[44] = v1;

  v7 = v4[12];
  if (v1)
  {
    v8 = sub_1007243B8;
  }

  else
  {
    v4[45] = a1;
    v8 = sub_100722880;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100722880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 352);
  *(v3 + 368) = *(v3 + 360);
  v6 = *(v3 + 336);
  v7 = *(v6 + 32);
  *(v3 + 41) = v7;
  v8 = 1 << v7;
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 7);
  *(v3 + 28) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v11 = (v8 + 63) >> 6;
  while (1)
  {
    *(v3 + 376) = v5;
    if (!v10)
    {
      break;
    }

LABEL_4:
    *(v3 + 384) = v10;
    *(v3 + 392) = v4;
    v12 = *(*(v6 + 6) + (__clz(__rbit64(v10)) | (v4 << 6)));
    *(v3 + 42) = v12;
    if ((v12 - 7) >= 0xC && ((1 << v12) & 0x1C) == 0)
    {
      *(v3 + 43) = ((1 << v12) & 0x21) == 0;
      a2 = *(*(v3 + 96) + 152);
      *(v3 + 440) = a2;
      v14 = sub_1007239B0;
LABEL_14:
      v6 = v14;
      a3 = 0;

      return _swift_task_switch(v6, a2, a3);
    }

    v10 &= v10 - 1;
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      v15 = *(v3 + 96);

      v16 = sub_1000035D0((v15 + 112), *(v15 + 136));
      a2 = *v16;
      *(v3 + 400) = *v16;
      v14 = sub_1007229F4;
      goto LABEL_14;
    }

    v10 = *(v6 + v13 + 7);
    ++v4;
    if (v10)
    {
      v4 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
  return _swift_task_switch(v6, a2, a3);
}

uint64_t sub_1007229F4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 192);
  v6 = *(v0 + 88);
  v34 = sub_100D110E8(v6, *(v0 + 26));
  v7 = *(v4 + 16);
  v7(v1, v6 + *(v5 + 20), v3);
  v7(v2, v6 + *(v5 + 24), v3);
  if (qword_101694560 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = *(v0 + 192);
  v11 = *(v0 + 88);
  v12 = sub_1000076D4(v9, qword_10177A900);
  v7(v8, v12, v9);
  v13 = 8 * *(v11 + *(v10 + 28));
  v33 = *(v0 + 368);
  v15 = *(v0 + 320);
  v14 = *(v0 + 328);
  v17 = *(v0 + 304);
  v16 = *(v0 + 312);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);
  v20 = *(v0 + 272);
  v21 = *(v0 + 280);
  v31 = *(v0 + 26);
  v32 = 0x4000201u >> v13;
  UUID.init()();
  v22 = *(v21 + 32);
  v22(v14 + v16[5], v17, v20);
  v22(v14 + v16[6], v18, v20);
  v22(v14 + v16[7], v19, v20);
  *(v14 + v16[8]) = v34;
  *(v14 + v16[9]) = v32;
  *(v14 + v16[10]) = v31;
  *(v14 + v16[11]) = v33;
  static Date.trustedNow.getter(v14 + v16[12]);
  sub_1000BC4D4(&qword_1016A7A78, &qword_1013B6AE8);
  v23 = *(v15 + 72);
  v24 = *(v15 + 80);
  *(v0 + 44) = v24;
  v25 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  *(v0 + 408) = v26;
  *(v26 + 16) = xmmword_101385D80;
  sub_100729630(v14, v26 + v25, type metadata accessor for SharingCircleKeyManager.Instruction);
  v27 = swift_task_alloc();
  *(v0 + 416) = v27;
  *v27 = v0;
  v27[1] = sub_100722CAC;
  v28 = *(v0 + 400);
  v29 = *(v0 + 27);

  return sub_100C7BF64(v26, v29);
}

uint64_t sub_100722CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(v2 + 424) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  v7 = (*(v2 + 44) + 32) & ~*(v2 + 44);
  swift_setDeallocating();
  sub_100729698(v5 + v7, type metadata accessor for SharingCircleKeyManager.Instruction);
  swift_deallocClassInstance();
  if (v0)
  {
    v8 = sub_10072320C;
  }

  else
  {
    v8 = sub_100722E38;
  }

  return _swift_task_switch(v8, v6, 0);
}

uint64_t sub_100722E38()
{
  sub_100729698(*(v0 + 328), type metadata accessor for SharingCircleKeyManager.Instruction);
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  *v1 = v0;
  v1[1] = sub_100722EF8;

  return sub_100EC9FEC(2);
}

uint64_t sub_100722EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v22 = *v0;

  v3 = v1[41];
  v4 = v1[38];
  v5 = v1[37];
  v6 = v1[36];
  v7 = v1[33];
  v8 = v1[32];
  v9 = v1[31];
  v10 = v1[30];
  v14 = v1[29];
  v15 = v1[28];
  v16 = v1[27];
  v17 = v1[23];
  v18 = v1[21];
  v19 = v1[20];
  v20 = v1[17];
  v21 = v1[16];
  v11 = v1[13];

  v12 = *(v22 + 8);

  return v12();
}

uint64_t sub_10072320C()
{
  v1 = *(v0 + 96);
  sub_100729698(*(v0 + 328), type metadata accessor for SharingCircleKeyManager.Instruction);

  return _swift_task_switch(sub_10072328C, v1, 0);
}

uint64_t sub_10072328C()
{
  v68 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  sub_100729630(v4, v3, type metadata accessor for OwnerSharingCircle);
  sub_100729630(v4, v2, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v64 = *(v0 + 424);
    v8 = *(v0 + 264);
    v9 = *(v0 + 272);
    v10 = *(v0 + 192);
    v58 = v10;
    v60 = *(v0 + 256);
    v11 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v12 = *(v10 + 20);
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v67);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v17 = v60 + *(v58 + 24);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100729698(v60, type metadata accessor for OwnerSharingCircle);
    v21 = sub_1000136BC(v18, v20, &v67);

    *(v11 + 34) = v21;
    *(v11 + 42) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 44) = v22;
    *v62 = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Keys upload failure for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s, error %{public}@.", v11, 0x34u);
    sub_10000B3A8(v62, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);

    sub_100729698(v24, type metadata accessor for OwnerSharingCircle);
    sub_100729698(v23, type metadata accessor for OwnerSharingCircle);
  }

  *(v0 + 72) = *(v0 + 424);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 25) == 20)
  {
    v25 = swift_task_alloc();
    *(v0 + 464) = v25;
    *v25 = v0;
    v25[1] = sub_100724B14;
    v26 = 1;
LABEL_16:

    return sub_100EC9FEC(v26);
  }

  v27 = *(v0 + 424);
  v28 = *(v0 + 72);

  *(v0 + 80) = v27;
  swift_errorRetain();
  if (!swift_dynamicCast() || *(v0 + 40) != 1 || *(v0 + 32) < 6uLL)
  {
    v54 = *(v0 + 80);

    v55 = swift_task_alloc();
    *(v0 + 472) = v55;
    *v55 = v0;
    v55[1] = sub_100724D70;
    v26 = 0;
    goto LABEL_16;
  }

  v29 = *(v0 + 424);
  v31 = *(v0 + 208);
  v30 = *(v0 + 216);
  v32 = *(v0 + 200);
  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v35 = *(v0 + 88);
  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  sub_100729630(v35, v30, type metadata accessor for OwnerSharingCircle);
  v38 = sub_1007296F8(&unk_1016A7A80, v37, type metadata accessor for ShareKeysUploadUseCase);
  v39 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v40 = swift_allocObject();
  v40[2] = v34;
  v40[3] = v38;
  v40[4] = v34;
  sub_100729184(v30, v40 + v39, type metadata accessor for OwnerSharingCircle);
  swift_retain_n();
  sub_100A838D4(0, 0, v33, &unk_1013B6AF8, v40);

  v41 = *(v0 + 80);

  v42 = *(v0 + 328);
  v44 = *(v0 + 296);
  v43 = *(v0 + 304);
  v45 = *(v0 + 288);
  v47 = *(v0 + 256);
  v46 = *(v0 + 264);
  v48 = *(v0 + 240);
  v49 = *(v0 + 248);
  v51 = *(v0 + 224);
  v50 = *(v0 + 232);
  v56 = *(v0 + 216);
  v57 = *(v0 + 184);
  v59 = *(v0 + 168);
  v61 = *(v0 + 160);
  v63 = *(v0 + 136);
  v65 = *(v0 + 128);
  v66 = *(v0 + 104);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1007239B0()
{
  v1 = *(v0 + 440);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 448) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100723A90;
  v5 = *(v0 + 440);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_100723A90()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v4 = *v0;

  return _swift_task_switch(sub_100723BA8, v2, 0);
}

uint64_t sub_100723BA8()
{
  v1 = v0[12];
  v0[57] = v0[7];
  return _swift_task_switch(sub_100723BCC, v1, 0);
}

uint64_t sub_100723BCC()
{
  v82 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 43);
  v3 = *(v0 + 376);
  v4 = *(v0 + 184);
  v5 = *(v0 + 176);
  v6 = *(v0 + 88);
  v7 = *(*(v0 + 192) + 24);
  (*(*(v0 + 280) + 16))(v4, v6 + v7, *(v0 + 272));
  *(v4 + *(v5 + 20)) = v2;
  v8 = *(v1 + 80);
  v9 = swift_task_alloc();
  *(v9 + 16) = v1;
  *(v9 + 24) = v4;
  sub_1000BC4D4(&qword_1016A7A70, &qword_1013B6AE0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v10 = *(v0 + 64);
  v11 = *(v0 + 456);
  if (v10)
  {
    v12 = *(v0 + 456);
LABEL_3:

    goto LABEL_4;
  }

  v22 = v2;
  v23 = *(v0 + 456);
  v24 = sub_1012E710C((v6 + v7), v22, 0);
  if (!v24)
  {
    v58 = *(v0 + 456);
    v59 = *(v0 + 184);

    v60 = type metadata accessor for BeaconKeyManager.FileKey;
    v61 = v59;
    goto LABEL_21;
  }

  v10 = v24;
  v25 = *(v0 + 28);
  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  static SystemInfo.lockState.getter();
  (*(v29 + 104))(v27, v25, v28);
  sub_1007296F8(&qword_10169F338, 255, &type metadata accessor for SystemInfo.DeviceLockState);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v29 + 8);
  v31(v27, v28);
  v31(v26, v28);
  v32 = *(v0 + 456);
  if (v30)
  {
    v33 = *(v0 + 456);
    goto LABEL_3;
  }

  v62 = *(v0 + 184);
  v63 = *(v1 + 80);
  v64 = swift_task_alloc();
  v64[2] = v32;
  v64[3] = v62;
  v64[4] = v10;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

LABEL_4:
  sub_100729698(*(v0 + 184), type metadata accessor for BeaconKeyManager.FileKey);
  v7 = *(v10 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex);
  v13 = *(v10 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex);

  if (v13 < v7)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_16:
    v36 = *(v0 + 240);
    v37 = *(v0 + 248);
    v38 = *(v0 + 88);
    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177A560);
    sub_100729630(v38, v37, type metadata accessor for OwnerSharingCircle);
    sub_100729630(v38, v36, type metadata accessor for OwnerSharingCircle);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 272);
      v43 = *(v0 + 248);
      v78 = *(v0 + 240);
      v44 = *(v0 + 192);
      v79 = *(v0 + 42);
      v45 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v45 = 141559555;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      v80 = v41;
      v46 = *(v44 + 20);
      sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v1;
      v1 = v48;
      sub_100729698(v43, type metadata accessor for OwnerSharingCircle);
      v49 = sub_1000136BC(v47, v1, v81);

      *(v45 + 14) = v49;
      *(v45 + 22) = 2160;
      *(v45 + 24) = 1752392040;
      *(v45 + 32) = 2081;
      v50 = v78 + *(v44 + 24);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_100729698(v78, type metadata accessor for OwnerSharingCircle);
      v54 = sub_1000136BC(v51, v53, v81);

      *(v45 + 34) = v54;
      *(v45 + 42) = 2082;
      v55 = sub_10125403C(v79);
      v57 = sub_1000136BC(v55, v56, v81);

      *(v45 + 44) = v57;
      *(v45 + 52) = 2048;
      *(v45 + 54) = v7;
      *(v45 + 62) = 2048;
      *(v45 + 64) = v77;
      _os_log_impl(&_mh_execute_header, v40, v80, "Bookmark updated for circle: %{private,mask.hash}s, beacon: %{private,mask.hash}s, keyType: %{public}s, lower bound on disk is %llu, bookmark: %llu.", v45, 0x48u);
      swift_arrayDestroy();

      goto LABEL_22;
    }

    v66 = *(v0 + 240);
    v65 = *(v0 + 248);

    sub_100729698(v66, type metadata accessor for OwnerSharingCircle);
    v61 = v65;
    v60 = type metadata accessor for OwnerSharingCircle;
LABEL_21:
    sub_100729698(v61, v60);
    goto LABEL_22;
  }

  if (*(*(v0 + 368) + 16) && (v14 = sub_100771F0C(*(v0 + 42)), (v15 & 1) != 0))
  {
    sub_100729630(*(*(v0 + 368) + 56) + *(*(v0 + 120) + 72) * v14, *(v0 + 136), type metadata accessor for BookmarkMetaData);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 112);
  v19 = *(v0 + 120);
  (*(v19 + 56))(v17, v16, 1, v18);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v21 = *(v0 + 136);
  if (!v20)
  {
    v34 = *(v0 + 128);
    v35 = *(v0 + 136);
    sub_100729630(v21, v34, type metadata accessor for BookmarkMetaData);
    sub_10000B3A8(v35, &qword_1016998B8, &unk_1013B6AD0);
    v1 = *(v34 + 8);
    sub_100729698(v34, type metadata accessor for BookmarkMetaData);
    if (v1 >= v7)
    {
      goto LABEL_22;
    }

    if (qword_101694480 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

  sub_10000B3A8(v21, &qword_1016998B8, &unk_1013B6AD0);
LABEL_22:
  v68 = *(v0 + 384);
  v67 = *(v0 + 392);
  do
  {
    *(v0 + 376) = v3;
    v68 &= v68 - 1;
    if (!v68)
    {
      while (1)
      {
        v70 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        v69 = *(v0 + 336);
        if (v70 >= (((1 << *(v0 + 41)) + 63) >> 6))
        {
          v74 = *(v0 + 96);

          v75 = sub_1000035D0((v74 + 112), *(v74 + 136));
          v72 = *v75;
          *(v0 + 400) = *v75;
          v73 = sub_1007229F4;
          goto LABEL_33;
        }

        v68 = *(v69 + 8 * v70 + 56);
        ++v67;
        if (v68)
        {
          v67 = v70;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_37;
    }

    v69 = *(v0 + 336);
LABEL_29:
    *(v0 + 384) = v68;
    *(v0 + 392) = v67;
    v71 = *(*(v69 + 48) + (__clz(__rbit64(v68)) | (v67 << 6)));
    *(v0 + 42) = v71;
  }

  while ((v71 - 7) < 0xC || ((1 << v71) & 0x1C) != 0);
  *(v0 + 43) = ((1 << v71) & 0x21) == 0;
  v72 = *(*(v0 + 96) + 152);
  *(v0 + 440) = v72;
  v73 = sub_1007239B0;
LABEL_33:

  return _swift_task_switch(v73, v72, 0);
}

uint64_t sub_1007243B8()
{
  v77 = v0;
  if (qword_101694480 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 224);
    v3 = *(v0 + 232);
    v4 = *(v0 + 88);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    sub_100729630(v4, v3, type metadata accessor for OwnerSharingCircle);
    sub_100729630(v4, v2, type metadata accessor for OwnerSharingCircle);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 272);
      v9 = *(v0 + 232);
      v71 = *(v0 + 352);
      v73 = *(v0 + 224);
      v10 = *(v0 + 192);
      v67 = v10;
      v11 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v11 = 141559043;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v12 = *(v10 + 24);
      sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
      v16 = sub_1000136BC(v13, v15, &v76);

      *(v11 + 14) = v16;
      *(v11 + 22) = 2112;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v17;
      *v69 = v17;
      *(v11 + 32) = 2160;
      *(v11 + 34) = 1752392040;
      *(v11 + 42) = 2081;
      v18 = v73 + *(v67 + 20);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_100729698(v73, type metadata accessor for OwnerSharingCircle);
      v22 = sub_1000136BC(v19, v21, &v76);

      *(v11 + 44) = v22;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to set bookmark for sharing circle. beacon: %{private,mask.hash}s, Error: %@, circle: %{private,mask.hash}s.", v11, 0x34u);
      sub_10000B3A8(v69, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {
      v24 = *(v0 + 224);
      v23 = *(v0 + 232);

      sub_100729698(v24, type metadata accessor for OwnerSharingCircle);
      sub_100729698(v23, type metadata accessor for OwnerSharingCircle);
    }

    *(v0 + 48) = *(v0 + 352);
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (!swift_dynamicCast())
    {
      v50 = *(v0 + 352);
      goto LABEL_13;
    }

    v25 = *(v0 + 352);
    if (*(v0 + 24) == 1 && *(v0 + 16) > 5uLL)
    {
      break;
    }

    v51 = *(v0 + 352);
LABEL_13:

    v52 = 0;
    *(v0 + 368) = &_swiftEmptyDictionarySingleton;
    v53 = *(v0 + 336);
    v54 = *(v53 + 32);
    *(v0 + 41) = v54;
    v55 = 1 << v54;
    v56 = -1;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    v57 = v56 & *(v53 + 56);
    *(v0 + 28) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v58 = (v55 + 63) >> 6;
    while (1)
    {
      *(v0 + 376) = 0;
      if (!v57)
      {
        break;
      }

LABEL_16:
      *(v0 + 384) = v57;
      *(v0 + 392) = v52;
      v59 = *(*(v53 + 48) + (__clz(__rbit64(v57)) | (v52 << 6)));
      *(v0 + 42) = v59;
      if ((v59 - 7) >= 0xC && ((1 << v59) & 0x1C) == 0)
      {
        *(v0 + 43) = ((1 << v59) & 0x21) == 0;
        v61 = *(*(v0 + 96) + 152);
        *(v0 + 440) = v61;
        v62 = sub_1007239B0;
LABEL_26:

        return _swift_task_switch(v62, v61, 0);
      }

      v57 &= v57 - 1;
    }

    while (1)
    {
      v60 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v60 >= v58)
      {
        v63 = *(v0 + 96);

        v64 = sub_1000035D0((v63 + 112), *(v63 + 136));
        v61 = *v64;
        *(v0 + 400) = *v64;
        v62 = sub_1007229F4;
        goto LABEL_26;
      }

      v57 = *(v53 + 56 + 8 * v60);
      ++v52;
      if (v57)
      {
        v52 = v60;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  v26 = *(v0 + 336);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 200);
  v31 = *(v0 + 96);
  v30 = *(v0 + 104);
  v32 = *(v0 + 88);

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
  sub_100729630(v32, v27, type metadata accessor for OwnerSharingCircle);
  v35 = sub_1007296F8(&unk_1016A7A80, v34, type metadata accessor for ShareKeysUploadUseCase);
  v36 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v37 = swift_allocObject();
  v37[2] = v31;
  v37[3] = v35;
  v37[4] = v31;
  sub_100729184(v27, v37 + v36, type metadata accessor for OwnerSharingCircle);
  swift_retain_n();
  sub_100A838D4(0, 0, v30, &unk_1013B6B10, v37);

  v38 = *(v0 + 328);
  v40 = *(v0 + 296);
  v39 = *(v0 + 304);
  v41 = *(v0 + 288);
  v43 = *(v0 + 256);
  v42 = *(v0 + 264);
  v44 = *(v0 + 240);
  v45 = *(v0 + 248);
  v47 = *(v0 + 224);
  v46 = *(v0 + 232);
  v65 = *(v0 + 216);
  v66 = *(v0 + 184);
  v68 = *(v0 + 168);
  v70 = *(v0 + 160);
  v72 = *(v0 + 136);
  v74 = *(v0 + 128);
  v75 = *(v0 + 104);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_100724B14()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100724C24, v2, 0);
}

uint64_t sub_100724C24()
{
  v1 = v0[53];

  v2 = v0[9];

  v3 = v0[41];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[30];
  v10 = v0[31];
  v12 = v0[28];
  v11 = v0[29];
  v15 = v0[27];
  v16 = v0[23];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[13];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100724D70()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100724E80, v2, 0);
}

uint64_t sub_100724E80()
{
  v1 = v0[53];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[23];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[13];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[53];

  return v10();
}

uint64_t sub_100724FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100724FEC, a4, 0);
}

uint64_t sub_100724FEC()
{
  *(v0 + 32) = *sub_1000035D0((*(v0 + 16) + 160), *(*(v0 + 16) + 184));

  return _swift_task_switch(sub_100725064, 0, 0);
}

uint64_t sub_100725064()
{
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = v0[3];
    v4 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v6 = *(type metadata accessor for OwnerSharingCircle() + 20);
    v7 = *(v4 + 8);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1007251F4;

    return v12(v3 + v6, ObjectType, v4);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1007251F4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100729A60, 0, 0);
  }

  else
  {
    v4 = v3[5];
    swift_unknownObjectRelease();
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100725330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100725350, a4, 0);
}

uint64_t sub_100725350()
{
  *(v0 + 32) = *sub_1000035D0((*(v0 + 16) + 160), *(*(v0 + 16) + 184));

  return _swift_task_switch(sub_1007253C8, 0, 0);
}

uint64_t sub_1007253C8()
{
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = v0[3];
    v4 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v6 = *(type metadata accessor for OwnerSharingCircle() + 20);
    v7 = *(v4 + 8);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_100725558;

    return v12(v3 + v6, ObjectType, v4);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100725558()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100725694, 0, 0);
  }

  else
  {
    v4 = v3[5];
    swift_unknownObjectRelease();
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100725694()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1007256F8(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for OwnerSharingCircle();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10072579C, v2, 0);
}

uint64_t sub_10072579C()
{
  v30 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_100729630(v3, v2, type metadata accessor for OwnerSharingCircle);
  sub_100729630(v3, v1, type metadata accessor for OwnerSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  if (v7)
  {
    v10 = *(v0 + 32);
    v28 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v27 = v6;
    v12 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v29);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v17 = v8 + *(v10 + 24);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    v21 = sub_1000136BC(v18, v20, &v29);

    *(v11 + 34) = v21;
    *(v11 + 42) = 1024;
    *(v11 + 44) = v28;
    _os_log_impl(&_mh_execute_header, v5, v27, "Upload keys: share-id: %{private,mask.hash}s,              beacon: %{private,mask.hash}s,              initial: %{BOOL}d.", v11, 0x30u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
  }

  v22 = swift_task_alloc();
  *(v0 + 56) = v22;
  *v22 = v0;
  v22[1] = sub_100729A64;
  v23 = *(v0 + 64);
  v24 = *(v0 + 16);
  v25 = *(v0 + 24);

  return sub_1007221B0(v24, v23, 0);
}

uint64_t sub_100725B0C(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for OwnerSharingCircle();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100725BB0, v2, 0);
}

uint64_t sub_100725BB0()
{
  v30 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_100729630(v3, v2, type metadata accessor for OwnerSharingCircle);
  sub_100729630(v3, v1, type metadata accessor for OwnerSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  if (v7)
  {
    v10 = *(v0 + 32);
    v28 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    v27 = v6;
    v12 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v29);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v17 = v8 + *(v10 + 24);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    v21 = sub_1000136BC(v18, v20, &v29);

    *(v11 + 34) = v21;
    *(v11 + 42) = 1024;
    *(v11 + 44) = v28;
    _os_log_impl(&_mh_execute_header, v5, v27, "Force Upload keys: share-id: %{private,mask.hash}s,              beacon: %{private,mask.hash}s,              initial: %{BOOL}d.", v11, 0x30u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100729698(v8, type metadata accessor for OwnerSharingCircle);
    sub_100729698(v9, type metadata accessor for OwnerSharingCircle);
  }

  v22 = swift_task_alloc();
  *(v0 + 56) = v22;
  *v22 = v0;
  v22[1] = sub_100725F20;
  v23 = *(v0 + 64);
  v24 = *(v0 + 16);
  v25 = *(v0 + 24);

  return sub_1007221B0(v24, v23, 1);
}

uint64_t sub_100725F20()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100726054(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 152) = a2;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for BookmarkMetaData();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  v8 = type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData(0);
  *(v4 + 88) = v8;
  v9 = *(v8 - 8);
  *(v4 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v11 = type metadata accessor for KeyDropShareMetaDataResponse(0);
  *(v4 + 112) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_1007261CC, v3, 0);
}

uint64_t sub_1007261CC()
{
  v1 = *sub_1000035D0((*(v0 + 32) + 112), *(*(v0 + 32) + 136));
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_10072627C;
  v3 = *(v0 + 120);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 152);

  return sub_100CA41A0(v3, v4, v6, v5);
}

uint64_t sub_10072627C()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[4];

    return _swift_task_switch(sub_100726BF8, v4, 0);
  }

  else
  {
    v5 = *(v3[15] + *(v3[14] + 28));
    v6 = swift_task_alloc();
    v3[18] = v6;
    *v6 = v3;
    v6[1] = sub_100726408;
    v7 = v3[4];
    v8 = v3[2];

    return sub_100726CA0(v5, v8);
  }
}

uint64_t sub_100726408()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100726518, v2, 0);
}

uint64_t sub_100726518()
{
  v1 = v0;
  v2 = *(v0[15] + *(v0[14] + 24));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v69 = v1[11];
    v62 = v1[8];
    v63 = v1[10];
    v64 = v1[6];
    v65 = v1[5];
    v66 = v1[12];
    v5 = &_swiftEmptyDictionarySingleton;
    v61 = *(v2 + 16);
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v6 = v1[13];
      sub_100729630(v2 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v4, v6, type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      v7 = *(v6 + v69[7]);
      v8 = v7 & ~(v7 >> 63);
      v9 = v6 + v69[6];
      if ((*(v9 + 8) & 1) == 0 && ((v10 = *v9, v10 >= 1) ? (v11 = v8 >= v10) : (v11 = 1), v11))
      {
        if (v10 > v8)
        {
          goto LABEL_49;
        }

        v12 = v2;
        v13 = v1[13];
        v14 = *v13;
        v15 = v1[8];
        v67 = v1[7];
        v16 = v5;
        v17 = v10 & ~(v10 >> 63);
        v18 = *(v65 + 20);
        sub_100729630(&v13[v69[5]], v15 + v18, type metadata accessor for KeyDropInterface.KeyAlignment);
        v19 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
        (*(*(v19 - 8) + 56))(v15 + v18, 0, 1, v19);
        *v15 = v17;
        v5 = v16;
        *(v62 + 8) = v8;
        *(v15 + *(v65 + 24)) = v14;
        sub_100729184(v15, v67, type metadata accessor for BookmarkMetaData);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v16;
        v21 = sub_100771F0C(v14);
        v23 = v16[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_50;
        }

        v27 = v22;
        if (v16[3] < v26)
        {
          sub_100FE7AB0(v26, isUniquelyReferenced_nonNull_native);
          v5 = v16;
          v21 = sub_100771F0C(v14);
          v2 = v12;
          v3 = v61;
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_43;
          }

LABEL_30:
          v44 = v1[7];
          if ((v27 & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_3;
        }

        v2 = v12;
        if (isUniquelyReferenced_nonNull_native)
        {
          v3 = v61;
          goto LABEL_30;
        }

        v49 = v21;
        sub_101005B0C();
        v21 = v49;
        v5 = v70;
        v3 = v61;
        v44 = v1[7];
        if ((v27 & 1) == 0)
        {
LABEL_31:
          v5[(v21 >> 6) + 8] |= 1 << v21;
          *(v5[6] + v21) = v14;
          sub_100729184(v44, v5[7] + *(v64 + 72) * v21, type metadata accessor for BookmarkMetaData);
          v47 = v5[2];
          v25 = __OFADD__(v47, 1);
          v46 = v47 + 1;
          if (v25)
          {
            goto LABEL_51;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v68 = v4;
        v29 = v1[13];
        v31 = v1[9];
        v30 = v1[10];
        v32 = v1;
        v33 = *v29;
        v1 = v5;
        v34 = *(v65 + 20);
        sub_100729630(&v29[v69[5]], v30 + v34, type metadata accessor for KeyDropInterface.KeyAlignment);
        v35 = type metadata accessor for KeyDropInterface.KeyAlignment(0);
        v36 = v30 + v34;
        v5 = v1;
        (*(*(v35 - 8) + 56))(v36, 0, 1, v35);
        *v30 = v8;
        *(v63 + 8) = v8;
        *(v30 + *(v65 + 24)) = v33;
        sub_100729184(v30, v31, type metadata accessor for BookmarkMetaData);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v1;
        v21 = sub_100771F0C(v33);
        v39 = v1[2];
        v40 = (v38 & 1) == 0;
        v25 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v25)
        {
          goto LABEL_47;
        }

        v42 = v38;
        if (v1[3] >= v41)
        {
          v1 = v32;
          if ((v37 & 1) == 0)
          {
            v48 = v21;
            sub_101005B0C();
            v21 = v48;
            v5 = v71;
          }

          v4 = v68;
          v44 = v1[9];
          if ((v42 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_100FE7AB0(v41, v37);
          v5 = v1;
          v21 = sub_100771F0C(v33);
          v1 = v32;
          v4 = v68;
          if ((v42 & 1) != (v43 & 1))
          {
LABEL_43:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v44 = v1[9];
          if ((v42 & 1) == 0)
          {
LABEL_25:
            v5[(v21 >> 6) + 8] |= 1 << v21;
            *(v5[6] + v21) = v33;
            sub_100729184(v44, v5[7] + *(v64 + 72) * v21, type metadata accessor for BookmarkMetaData);
            v45 = v5[2];
            v25 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v25)
            {
              goto LABEL_48;
            }

LABEL_32:
            v5[2] = v46;
            goto LABEL_4;
          }
        }
      }

LABEL_3:
      sub_100729120(v44, v5[7] + *(v64 + 72) * v21);
LABEL_4:
      ++v4;
      sub_100729698(v1[13], type metadata accessor for KeyDropShareMetaDataResponse.ShareMetaData);
      if (v3 == v4)
      {
        goto LABEL_36;
      }
    }
  }

  v5 = &_swiftEmptyDictionarySingleton;
LABEL_36:
  if (qword_101694480 != -1)
  {
LABEL_52:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_1000076D4(v50, qword_10177A560);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v5[2];

    _os_log_impl(&_mh_execute_header, v51, v52, "Generated existing metadata, found %ld key types ranges.", v53, 0xCu);
  }

  else
  {
  }

  v54 = v1[13];
  v56 = v1[9];
  v55 = v1[10];
  v58 = v1[7];
  v57 = v1[8];
  sub_100729698(v1[15], type metadata accessor for KeyDropShareMetaDataResponse);

  v59 = v1[1];

  return v59(v5);
}

uint64_t sub_100726BF8()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];
  v8 = v0[17];

  return v7();
}

uint64_t sub_100726CA0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v3[27] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v10 = type metadata accessor for OwnerSharingCircle();
  v3[29] = v10;
  v11 = *(v10 - 8);
  v3[30] = v11;
  v12 = *(v11 + 64) + 15;
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_100726EE0, v2, 0);
}

uint64_t sub_100726EE0()
{
  v1 = *(*(v0 + 88) + 152);
  *(v0 + 256) = v1;
  return _swift_task_switch(sub_100726F04, v1, 0);
}

uint64_t sub_100726F04()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[16];
  v4 = v0[15];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[33] = v6;
  v0[34] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[35] = v8;
  *(v8 + 16) = v1;
  v9 = *(v3 + 32);
  v0[36] = v9;
  v0[37] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[38] = v11;
  *v11 = v0;
  v11[1] = sub_100727080;
  v13 = v0[27];
  v12 = v0[28];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1003CA280, v8, v13);
}

uint64_t sub_100727080()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 88);
  v5 = *v0;

  return _swift_task_switch(sub_1007271AC, v3, 0);
}

uint64_t sub_1007271AC()
{
  v1 = v0[28];
  if ((*(v0[30] + 48))(v1, 1, v0[29]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
    v2 = v0[31];
    v3 = v0[28];
    v5 = v0[25];
    v4 = v0[26];
    v7 = v0[23];
    v6 = v0[24];
    v9 = v0[21];
    v8 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v19 = v0[18];
    v20 = v0[14];
    v21 = v0[13];
    v22 = v0[12];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[11];
    sub_100729184(v1, v0[31], type metadata accessor for OwnerSharingCircle);
    v15 = *sub_1000035D0((v14 + 112), *(v14 + 136));
    v16 = swift_task_alloc();
    v0[39] = v16;
    *v16 = v0;
    v16[1] = sub_1007273AC;
    v18 = v0[9];
    v17 = v0[10];

    return sub_100CA560C(v18, v17);
  }
}

uint64_t sub_1007273AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  *(v4 + 320) = a1;
  *(v4 + 328) = v1;

  v7 = *(v3 + 88);
  if (v1)
  {

    v8 = sub_100728428;
  }

  else
  {
    v8 = sub_1007274EC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1007274EC()
{
  v175 = v0;
  v154 = &_swiftEmptyDictionarySingleton;
  *(v0 + 64) = &_swiftEmptyDictionarySingleton;
  v166 = *(v0 + 320);
  v153 = (v0 + 64);
  v1 = *(*(v0 + 248) + *(*(v0 + 232) + 32));
  v155 = v1 + 64;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v161 = *(v0 + 128);
  v162 = *(*(v0 + 248) + *(*(v0 + 232) + 32));
  v163 = (v161 + 8);

  v6 = 0;
  v168 = v0;
  v164 = v5;
LABEL_4:
  v7 = v6;
  while (1)
  {
    if (!v4)
    {
      if (v5 <= v7 + 1)
      {
        v10 = v7 + 1;
      }

      else
      {
        v10 = v5;
      }

      v11 = v10 - 1;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          v56 = *(v0 + 104);
          v57 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
          (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
          v4 = 0;
          goto LABEL_17;
        }

        v4 = *(v155 + 8 * v9);
        ++v7;
        if (v4)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_62:
      v152 = *(v0 + 120);

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v9 = v7;
LABEL_16:
    v12 = *(v0 + 288);
    v170 = *(v0 + 296);
    v13 = *(v0 + 272);
    v14 = *(v0 + 208);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);
    v17 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v18 = v17 | (v9 << 6);
    (*(v0 + 264))(v14, *(v162 + 48) + *(v161 + 72) * v18, v15);
    v19 = *(*(v162 + 56) + v18);
    v20 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
    v21 = *(v20 + 48);
    v12(v16, v14, v15);
    *(v16 + v21) = v19;
    v0 = v168;
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
    v11 = v9;
LABEL_17:
    v22 = *(v0 + 112);
    sub_1007291EC(*(v0 + 104), v22);
    v23 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
    if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
    {
      break;
    }

    v24 = *(v0 + 296);
    v25 = *(v0 + 120);
    v26 = *(*(v0 + 112) + *(v23 + 48));
    (*(v0 + 288))(*(v0 + 200));
    if (*(v166 + 16) && (v27 = *(v0 + 320), v28 = sub_1000210EC(*(v0 + 200)), (v29 & 1) != 0))
    {
      if (((1 << v26) & 0x16) != 0)
      {
        (*v163)(*(v0 + 200), *(v0 + 120));
        v7 = v11;
        v5 = v164;
      }

      else
      {
        v5 = v164;
        if (*(*(v166 + 56) + v28) == 1)
        {
          v58 = *(v0 + 272);
          v59 = *(v0 + 192);
          (*(v0 + 264))(v59, *(v0 + 200), *(v0 + 120));
          v60 = *(v0 + 64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v174[0] = v60;
          v62 = sub_1000210EC(v59);
          v65 = v60;
          v66 = *(v60 + 16);
          v67 = (v63 & 1) == 0;
          v68 = __OFADD__(v66, v67);
          v69 = v66 + v67;
          if (v68)
          {
            __break(1u);
LABEL_66:
            __break(1u);
            return _swift_task_switch(v62, v63, v64);
          }

          v70 = v63;
          if (*(v65 + 24) >= v69)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v154 = v65;
              if ((v63 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            else
            {
              v78 = v62;
              sub_1010062B8();
              v62 = v78;
              v65 = v174[0];
              v154 = v174[0];
              if ((v70 & 1) == 0)
              {
                goto LABEL_38;
              }
            }

LABEL_36:
            v74 = *(v0 + 192);
            v75 = *(v0 + 120);
            *(*(v65 + 56) + v62) = 1;
            v76 = *v163;
            (*v163)(v74, v75);
            v77 = v154;
            goto LABEL_40;
          }

          v71 = *(v0 + 192);
          sub_100FE88DC(v69, isUniquelyReferenced_nonNull_native);
          v72 = v174[0];
          v62 = sub_1000210EC(v71);
          if ((v70 & 1) != (v73 & 1))
          {
            goto LABEL_62;
          }

          v65 = v72;
          v154 = v72;
          if (v70)
          {
            goto LABEL_36;
          }

LABEL_38:
          v80 = *(v0 + 264);
          v79 = *(v0 + 272);
          v81 = *(v0 + 192);
          v82 = *(v0 + 120);
          *(v65 + 8 * (v62 >> 6) + 64) |= 1 << v62;
          v83 = v62;
          v80(v154[6] + *(v161 + 72) * v62, v81, v82);
          *(v154[7] + v83) = 1;
          v76 = *(v161 + 8);
          v62 = (v76)(v81, v82);
          v77 = v154;
          v84 = v154[2];
          v68 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v68)
          {
            goto LABEL_66;
          }

          v154[2] = v85;
LABEL_40:
          v160 = v76;
          *v153 = v77;
          if (qword_101694480 != -1)
          {
            swift_once();
          }

          v86 = *(v0 + 264);
          v87 = *(v0 + 272);
          v88 = *(v0 + 200);
          v90 = *(v0 + 176);
          v89 = *(v0 + 184);
          v91 = *(v0 + 120);
          v92 = *(v0 + 80);
          v93 = type metadata accessor for Logger();
          sub_1000076D4(v93, qword_10177A560);
          v86(v89, v92, v91);
          v86(v90, v88, v91);
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.error.getter();
          v96 = os_log_type_enabled(v94, v95);
          v97 = *(v0 + 200);
          v99 = *(v0 + 176);
          v98 = *(v0 + 184);
          v100 = *(v0 + 120);
          if (v96)
          {
            v159 = *(v0 + 200);
            v101 = swift_slowAlloc();
            v174[0] = swift_slowAlloc();
            *v101 = 141558787;
            *(v101 + 4) = 1752392040;
            *(v101 + 12) = 2081;
            sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
            v102 = dispatch thunk of CustomStringConvertible.description.getter();
            loga = v94;
            v104 = v103;
            v160(v98, v100);
            v0 = v168;
            v105 = sub_1000136BC(v102, v104, v174);

            *(v101 + 14) = v105;
            *(v101 + 22) = 2160;
            *(v101 + 24) = 1752392040;
            *(v101 + 32) = 2081;
            v106 = dispatch thunk of CustomStringConvertible.description.getter();
            v108 = v107;
            v160(v99, v100);
            v109 = sub_1000136BC(v106, v108, v174);

            *(v101 + 34) = v109;
            _os_log_impl(&_mh_execute_header, loga, v95, "Circle on server contains a member who accepted,\nshare-id: %{private,mask.hash}s, member-id: %{private,mask.hash}s.", v101, 0x2Au);
            swift_arrayDestroy();

            v160(v159, v100);
          }

          else
          {

            v160(v99, v100);
            v160(v98, v100);
            v160(v97, v100);
          }

          v5 = v164;
          v6 = v11;
          goto LABEL_4;
        }

        (*v163)(*(v0 + 200), *(v0 + 120));
        v7 = v11;
      }
    }

    else
    {
      v171 = v11;
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 264);
      v31 = *(v0 + 272);
      v32 = *(v0 + 200);
      v34 = *(v0 + 160);
      v33 = *(v0 + 168);
      v35 = *(v0 + 120);
      v36 = *(v0 + 80);
      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177A560);
      v30(v33, v36, v35);
      v30(v34, v32, v35);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 200);
      v43 = *(v0 + 160);
      v42 = *(v0 + 168);
      v44 = *(v0 + 120);
      if (v40)
      {
        v45 = swift_slowAlloc();
        v174[0] = swift_slowAlloc();
        *v45 = 141558787;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2081;
        sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
        v158 = v39;
        log = v38;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v49 = *v163;
        (*v163)(v42, v44);
        v50 = sub_1000136BC(v46, v48, v174);

        *(v45 + 14) = v50;
        *(v45 + 22) = 2160;
        *(v45 + 24) = 1752392040;
        *(v45 + 32) = 2081;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v49(v43, v44);
        v54 = v49;
        v55 = sub_1000136BC(v51, v53, v174);

        *(v45 + 34) = v55;
        _os_log_impl(&_mh_execute_header, log, v158, "Owner circle contains a member which is not in the server share,\nshare-id: %{private,mask.hash}s,\nmember-id: %{private,mask.hash}s.", v45, 0x2Au);
        swift_arrayDestroy();

        v0 = v168;

        v54(v41, v44);
      }

      else
      {

        v8 = *v163;
        (*v163)(v43, v44);
        v8(v42, v44);
        v8(v41, v44);
      }

      v7 = v171;
      v5 = v164;
    }
  }

  v110 = *(v0 + 320);

  if (!v154[2])
  {
    v137 = *(v0 + 248);

    goto LABEL_58;
  }

  v111 = *(v0 + 328);
  v112 = *(v0 + 248);
  v113 = *(v0 + 96);
  v114 = swift_task_alloc();
  *(v114 + 16) = v112;
  *(v114 + 24) = v153;
  sub_100EC0C48(sub_10072925C, v113);
  if (!v111)
  {
    v138 = *(v0 + 256);

    v62 = sub_100728554;
    v63 = v138;
    v64 = 0;

    return _swift_task_switch(v62, v63, v64);
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v115 = *(v0 + 264);
  v116 = *(v0 + 272);
  v117 = *(v0 + 144);
  v118 = *(v0 + 120);
  v119 = *(v0 + 80);
  v120 = type metadata accessor for Logger();
  sub_1000076D4(v120, qword_10177A560);
  v115(v117, v119, v118);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.error.getter();
  v123 = os_log_type_enabled(v121, v122);
  v124 = *(v0 + 144);
  v125 = *(v0 + 120);
  v126 = (*(v0 + 128) + 8);
  if (v123)
  {
    v127 = swift_slowAlloc();
    v174[0] = swift_slowAlloc();
    *v127 = 141558531;
    *(v127 + 4) = 1752392040;
    *(v127 + 12) = 2081;
    v172 = v122;
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
    v128 = dispatch thunk of CustomStringConvertible.description.getter();
    v130 = v129;
    (*v126)(v124, v125);
    v131 = sub_1000136BC(v128, v130, v174);

    *(v127 + 14) = v131;
    *(v127 + 22) = 2080;
    swift_beginAccess();
    v132 = *v153;
    sub_1007296F8(&qword_1016967B0, 255, &type metadata accessor for UUID);

    v133 = Dictionary.description.getter();
    v135 = v134;

    v136 = sub_1000136BC(v133, v135, v174);

    *(v127 + 24) = v136;
    _os_log_impl(&_mh_execute_header, v121, v172, "Failed to update members from server response,\nshare-id: %{private,mask.hash}s, updatedMembers: %s.", v127, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*v126)(v124, v125);
    v139 = *v153;
  }

  v0 = v168;
  v137 = *(v168 + 248);
LABEL_58:
  sub_100729698(v137, type metadata accessor for OwnerSharingCircle);
  v140 = *(v0 + 248);
  v141 = *(v0 + 224);
  v143 = *(v0 + 200);
  v142 = *(v0 + 208);
  v145 = *(v0 + 184);
  v144 = *(v0 + 192);
  v147 = *(v0 + 168);
  v146 = *(v0 + 176);
  v149 = *(v0 + 152);
  v148 = *(v0 + 160);
  v165 = *(v0 + 144);
  v167 = *(v0 + 112);
  v169 = *(v0 + 104);
  v173 = *(v0 + 96);

  v150 = *(v0 + 8);

  return v150();
}

uint64_t sub_100728428()
{
  sub_100729698(v0[31], type metadata accessor for OwnerSharingCircle);
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v10 = v0[19];
  v9 = v0[20];
  v13 = v0[18];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[12];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10072857C()
{
  v1 = v0[42];
  v2 = v0[12];
  v3 = swift_task_alloc();
  v0[43] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_100728674;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100728674()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v7 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = sub_100728B94;
  }

  else
  {
    v5 = *(v2 + 344);

    v4 = sub_100728790;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007287AC()
{
  v43 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[10];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  v2(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[19];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[12];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v13;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v42);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    swift_beginAccess();
    v19 = v0[8];
    sub_1007296F8(&qword_1016967B0, 255, &type metadata accessor for UUID);

    v20 = Dictionary.description.getter();
    v22 = v21;

    v23 = sub_1000136BC(v20, v22, &v42);

    *(v14 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v8, "Circle on server updated members state,\nshare-id: %{private,mask.hash}s, updatedMembers: %s.", v14, 0x20u);
    swift_arrayDestroy();

    sub_10000B3A8(v39, &qword_1016975C8, &qword_10138C1F0);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    sub_10000B3A8(v13, &qword_1016975C8, &qword_10138C1F0);
    v24 = v0[8];
  }

  sub_100729698(v0[31], type metadata accessor for OwnerSharingCircle);
  v25 = v0[31];
  v26 = v0[28];
  v28 = v0[25];
  v27 = v0[26];
  v30 = v0[23];
  v29 = v0[24];
  v32 = v0[21];
  v31 = v0[22];
  v34 = v0[19];
  v33 = v0[20];
  v37 = v0[18];
  v38 = v0[14];
  v40 = v0[13];
  v41 = v0[12];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100728B94()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_100728C00, v2, 0);
}

uint64_t sub_100728C00()
{
  v42 = v0;
  sub_10000B3A8(v0[12], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[45];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[10];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A560);
  v3(v4, v6, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[15];
  v13 = (v0[16] + 8);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1007296F8(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*v13)(v11, v12);
    v18 = sub_1000136BC(v15, v17, &v41);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2080;
    swift_beginAccess();
    v19 = v0[8];
    sub_1007296F8(&qword_1016967B0, 255, &type metadata accessor for UUID);

    v20 = Dictionary.description.getter();
    v22 = v21;

    v23 = sub_1000136BC(v20, v22, &v41);

    *(v14 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to update members from server response,\nshare-id: %{private,mask.hash}s, updatedMembers: %s.", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*v13)(v11, v12);
    v24 = v0[8];
  }

  sub_100729698(v0[31], type metadata accessor for OwnerSharingCircle);
  v25 = v0[31];
  v26 = v0[28];
  v28 = v0[25];
  v27 = v0[26];
  v30 = v0[23];
  v29 = v0[24];
  v32 = v0[21];
  v31 = v0[22];
  v34 = v0[19];
  v33 = v0[20];
  v37 = v0[18];
  v38 = v0[14];
  v39 = v0[13];
  v40 = v0[12];

  v35 = v0[1];

  return v35();
}

uint64_t sub_100728FE8()
{
  sub_100007BAC(v0 + 14);
  v1 = v0[19];

  sub_100007BAC(v0 + 20);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100729054(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for OwnerSharingCircle();
  v7 = *(a2 + *(v6 + 32));
  v8 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v7;
  sub_1007292B8(v8, sub_1003153D0, 0, isUniquelyReferenced_nonNull_native, &v14);

  v10 = v14;
  v11 = *(v6 + 32);
  v12 = *(a1 + v11);

  *(a1 + v11) = v10;
  return result;
}

uint64_t sub_100729120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkMetaData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100729184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007291EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007292B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v46 = type metadata accessor for UUID();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v46);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_10169DB08, &qword_10139CBE8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v43 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v47 = a1;
  v48 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v49 = v18;
  v50 = 0;
  v51 = v21 & v19;
  v52 = a2;
  v53 = a3;
  v22 = (v9 + 32);
  v44 = (v9 + 8);
  v45 = v9;

  v43 = a3;

  while (1)
  {
    sub_10061D55C(v16);
    v23 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
    if ((*(*(v23 - 8) + 48))(v16, 1, v23) == 1)
    {
      sub_1000128F8();
    }

    v24 = *(v23 + 48);
    v25 = *v22;
    (*v22)(v12, v16, v46);
    v26 = v16[v24];
    v27 = *v54;
    v29 = sub_1000210EC(v12);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_1010062B8();
      }
    }

    else
    {
      v34 = v54;
      sub_100FE88DC(v32, a4 & 1);
      v35 = *v34;
      v36 = sub_1000210EC(v12);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_19;
      }

      v29 = v36;
    }

    v38 = *v54;
    if (v33)
    {
      (*v44)(v12, v46);
      *(v38[7] + v29) = v26;
      a4 = 1;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v25((v38[6] + *(v45 + 72) * v29), v12, v46);
      *(v38[7] + v29) = v26;
      v39 = v38[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_18;
      }

      v38[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100729630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100729698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007296F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100729740(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100725330(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100729838()
{
  v1 = (type metadata accessor for OwnerSharingCircle() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v2 + v6, v7);
  v8(v0 + v2 + v1[8], v7);
  v9 = *(v0 + v2 + v1[10]);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100729968(uint64_t a1)
{
  v4 = *(type metadata accessor for OwnerSharingCircle() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100724FCC(a1, v6, v7, v8, v1 + v5);
}

void sub_100729E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_100729ED8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation);
  static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  type metadata accessor for Transaction();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v8;
  v10 = a1;

  static Transaction.asyncTask(name:block:)();
}

void sub_10072A250(char *a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v6 = _Block_copy(aBlock);
  v7 = *&a1[OBJC_IVAR____TtC12searchpartyd28AccessoryDiscoveryTrampoline_implementation];
  _Block_copy(v6);
  v8 = a1;
  a4(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

id sub_10072A678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDiscoveryTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10072A6E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E17094(v2, v3, v5, v4);
}

uint64_t sub_10072A78C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014650;

  return sub_100E15C98(v0 + v3, v5, v7, v8);
}

uint64_t sub_10072A8B8()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_100E18C30(v0 + v3, v5, v6);
}

uint64_t type metadata accessor for PencilPairingLockCheckResponse()
{
  result = qword_1016A7B78;
  if (!qword_1016A7B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072AA38()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016BD350);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_10169A330);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10072AB10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for UUID();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A7BC8, &qword_1013B6C18);
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = v33 - v9;
  v11 = type metadata accessor for PencilPairingLockCheckResponse();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15[*(v13 + 44)] = 0;
  v17 = a1[3];
  v16 = a1[4];
  v41 = a1;
  sub_1000035D0(a1, v17);
  sub_10072B4EC();
  v18 = v10;
  v19 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100007BAC(v41);
  }

  v34 = v6;
  v35 = v3;
  v20 = v38;
  v40 = v11;
  v43 = 0;
  v21 = sub_1000E307C();
  v22 = v18;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = *(&v42 + 1);
  *v15 = v42;
  *(v15 + 1) = v23;
  v43 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v21;
  *(v15 + 1) = v42;
  v43 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v15;
  *(v15 + 2) = v42;
  v43 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33[1] = v24;
  *(v15 + 3) = v42;
  LOBYTE(v42) = 4;
  sub_100395BEC();
  v26 = v34;
  v27 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v40;
  (*(v37 + 32))(v25 + *(v40 + 32), v26, v27);
  LOBYTE(v42) = 5;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = (v25 + *(v28 + 36));
  *v30 = v29;
  v30[1] = v31;
  v43 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 8))(v22, v39);
  *(v25 + *(v28 + 40)) = v42;
  sub_10072B540(v25, v36);
  sub_100007BAC(v41);
  return sub_10072B5A4(v25);
}

uint64_t sub_10072B0D0()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10072B208@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10072B718(*a1);
  *a2 = result;
  return result;
}

void sub_10072B238(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007265626DLL;
  v4 = 0x754E6C6169726573;
  v5 = 0xED00006449656C70;
  v6 = 0x704164656B73616DLL;
  if (v2 != 5)
  {
    v6 = 0xD000000000000013;
    v5 = 0x8000000101347DB0;
  }

  v7 = 0xEA00000000006E67;
  v8 = 0x6953726576726573;
  if (v2 != 3)
  {
    v8 = 0x6449616E6D66;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF7265626D754E6CLL;
  v10 = 0x6169726553746C61;
  if (v2 != 1)
  {
    v10 = 0x5364656573;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10072B338()
{
  v1 = *v0;
  v2 = 0x754E6C6169726573;
  v3 = 0x704164656B73616DLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6953726576726573;
  if (v1 != 3)
  {
    v4 = 0x6449616E6D66;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6169726553746C61;
  if (v1 != 1)
  {
    v5 = 0x5364656573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10072B434@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10072B718(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10072B45C(uint64_t a1)
{
  v2 = sub_10072B4EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10072B498(uint64_t a1)
{
  v2 = sub_10072B4EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10072B4EC()
{
  result = qword_1016A7BD0;
  if (!qword_1016A7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BD0);
  }

  return result;
}

uint64_t sub_10072B540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PencilPairingLockCheckResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10072B5A4(uint64_t a1)
{
  v2 = type metadata accessor for PencilPairingLockCheckResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10072B614()
{
  result = qword_1016A7BD8;
  if (!qword_1016A7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BD8);
  }

  return result;
}

unint64_t sub_10072B66C()
{
  result = qword_1016A7BE0;
  if (!qword_1016A7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BE0);
  }

  return result;
}

unint64_t sub_10072B6C4()
{
  result = qword_1016A7BE8;
  if (!qword_1016A7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7BE8);
  }

  return result;
}

unint64_t sub_10072B718(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609C28, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10072B764(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10072B7AC(uint64_t result, int a2, int a3)
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

uint64_t sub_10072B7F8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B078);
  sub_1000076D4(v0, qword_10177B078);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10072B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016A7C00, &unk_1013B6DF0);
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = type metadata accessor for Table();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10072BA04, 0, 0);
}

uint64_t sub_10072BA04()
{
  v1 = *(v0 + 48);
  v2 = sub_100027FA4();
  if (v2)
  {
    v3 = v2;
    (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 48) + OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_findMyServiceDevices, *(v0 + 112));
    if (qword_1016953A0 != -1)
    {
      swift_once();
    }

    v4 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
    sub_1000076D4(v4, qword_10177CA88);
    sub_1000041A4(&qword_1016A7C08, &qword_10169DE00, &unk_10139D160);
    Expressible.asSQL()();
    v5._countAndFlagsBits = 8236;
    v5._object = 0xE200000000000000;
    String.append(_:)(v5);
    if (qword_1016952D0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    v26 = *(v0 + 128);
    v27 = *(v0 + 64);
    v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    v25 = *(v0 + 32);
    sub_1000076D4(v10, qword_10177C818);
    sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
    v11 = Expressible.asSQL()();
    String.append(_:)(v11);

    sub_1000041A4(&qword_1016A7C10, &qword_1016A7C00, &unk_1013B6DF0);
    ExpressionType.init(literal:)();
    *(v0 + 16) = _swiftEmptyArrayStorage;
    v12 = swift_task_alloc();
    v12[1].i64[0] = v3;
    v12[1].i64[1] = v26;
    v12[2] = vextq_s8(v25, v25, 8uLL);
    v12[3].i64[0] = v0 + 16;
    v12[3].i64[1] = v6;
    (*(v9 + 104))(v7, enum case for Connection.TransactionMode.deferred(_:), v27);
    Connection.transaction(_:block:)();
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v18 = *(v0 + 16);
    if (*(v18 + 16))
    {
      v19 = *(v0 + 56);
      *(v0 + 24) = v18;

      AsyncStreamProvider.yield(value:transaction:)();

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    v21 = *(v0 + 120);
    v20 = *(v0 + 128);
    v22 = *(v0 + 112);
    v23 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    (*(v21 + 8))(v20, v22);

    v17 = *(v0 + 8);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_10072BEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6)
{
  v354 = a6;
  v350 = a5;
  v367 = a4;
  v359 = a2;
  v362 = a1;
  v321 = type metadata accessor for Delete();
  v320 = *(v321 - 8);
  v7 = *(v320 + 64);
  __chkstk_darwin(v321);
  v319 = &v315 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = type metadata accessor for Table();
  v328 = *(v360 - 8);
  v9 = *(v328 + 64);
  v10 = __chkstk_darwin(v360);
  v363 = &v315 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v329 = &v315 - v12;
  v385 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  v366 = *(v385 - 1);
  v13 = *(v366 + 64);
  __chkstk_darwin(v385);
  v372 = &v315 - v14;
  v353 = type metadata accessor for Insert();
  v365 = *(v353 - 8);
  v15 = v365[8];
  __chkstk_darwin(v353);
  v371 = &v315 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v331 = &v315 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v330 = &v315 - v22;
  v23 = __chkstk_darwin(v21);
  v332 = &v315 - v24;
  __chkstk_darwin(v23);
  v340 = &v315 - v25;
  v356 = type metadata accessor for FindMyServiceDeviceStore.ListChange();
  v355 = *(v356 - 8);
  v26 = *(v355 + 64);
  v27 = __chkstk_darwin(v356);
  v318 = &v315 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v336 = &v315 - v30;
  __chkstk_darwin(v29);
  v361 = &v315 - v31;
  v32 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v326 = &v315 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v325 = &v315 - v37;
  __chkstk_darwin(v36);
  v349 = &v315 - v38;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v322 = *(MyServiceDevice - 1);
  v39 = *(v322 + 64);
  v40 = __chkstk_darwin(MyServiceDevice);
  v364 = &v315 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v339 = &v315 - v43;
  v44 = __chkstk_darwin(v42);
  v338 = &v315 - v45;
  v46 = __chkstk_darwin(v44);
  v337 = &v315 - v47;
  v48 = __chkstk_darwin(v46);
  v334 = &v315 - v49;
  v50 = __chkstk_darwin(v48);
  v333 = &v315 - v51;
  v52 = __chkstk_darwin(v50);
  v335 = &v315 - v53;
  v54 = __chkstk_darwin(v52);
  v341 = &v315 - v55;
  v56 = __chkstk_darwin(v54);
  v373 = &v315 - v57;
  v58 = __chkstk_darwin(v56);
  v377 = &v315 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v315 - v61;
  v63 = __chkstk_darwin(v60);
  v380 = &v315 - v64;
  __chkstk_darwin(v63);
  v66 = &v315 - v65;
  v67 = type metadata accessor for Row();
  v68 = *(v67 - 8);
  v69 = v68[8];
  v70 = __chkstk_darwin(v67);
  v381 = &v315 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v73 = &v315 - v72;
  v74 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v75 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74 - 8);
  v384 = (&v315 - v76);
  v382 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v77 = *(v382 - 8);
  v78 = *(v77 + 64);
  v79 = __chkstk_darwin(v382);
  v327 = &v315 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v82 = &v315 - v81;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v352 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v83 = sub_1000076D4(v352, qword_10177C818);
  v84 = type metadata accessor for UUID();
  v358 = v83;
  v375 = v84;
  == infix<A>(_:_:)();
  v357 = a3;
  v85 = v82;
  v388 = v360;
  v389 = &protocol witness table for Table;
  sub_1000280DC(&v386);
  QueryType.filter(_:)();
  v88 = *(v77 + 8);
  v86 = v77 + 8;
  v87 = v88;
  v88(v82, v382);
  v89 = v390;
  v90 = Connection.prepare(_:)();
  v390 = v89;
  if (v89)
  {
    return sub_100007BAC(&v386);
  }

  v92 = v90;
  v376 = v87;
  v316 = v85;
  v374 = v86;
  sub_100007BAC(&v386);
  v317 = v92;
  v93 = dispatch thunk of _AnySequenceBox._makeIterator()();
  v94 = v384;
  v379 = v93;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v95 = v68[6];
  v378 = (v68 + 6);
  v370 = v95;
  if (v95(v94, 1, v67) == 1)
  {
    v96 = &_swiftEmptyDictionarySingleton;
LABEL_10:
    v351 = v96;

    v110 = *(v367 + 16);
    if (v110)
    {
      v111 = v367 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
      v381 = *(v322 + 72);
      v343 = v375 - 8;
      v348 = (v366 + 16);
      v347 = (v366 + 8);
      v346 = (v365 + 1);
      *&v109 = 136315394;
      v342 = v109;
      *&v109 = 136315138;
      v323 = v109;
      *(&v112 + 1) = 54;
      v345 = xmmword_1013B6D70;
      *&v112 = 138412290;
      v324 = v112;
      v315 = v111;
      v113 = v111;
      v380 = v110;
      v114 = v110;
      v115 = MyServiceDevice;
      v116 = v377;
      v344 = v62;
      do
      {
        v378 = v113;
        v379 = v114;
        sub_10073132C(v113, v62);
        if (qword_101694AD8 != -1)
        {
          swift_once();
        }

        v370 = type metadata accessor for Logger();
        v120 = sub_1000076D4(v370, qword_10177B740);
        sub_10073132C(v62, v116);
        v121 = v373;
        sub_10073132C(v62, v373);
        v384 = v120;
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v386 = swift_slowAlloc();
          *v124 = v342;
          v125 = v349;
          sub_1000D2A70(v116, v349, &qword_1016980D0, &unk_10138F3B0);
          v126 = v375;
          v127 = *(v375 - 8);
          if ((*(v127 + 48))(v125, 1, v375) == 1)
          {
            sub_10000B3A8(v125, &qword_1016980D0, &unk_10138F3B0);
            v128 = 0xE400000000000000;
            v129 = 1162760014;
          }

          else
          {
            v130 = v125;
            v129 = UUID.uuidString.getter();
            v128 = v131;
            v132 = v130;
            v121 = v373;
            (*(v127 + 8))(v132, v126);
          }

          sub_100731400(v377);
          v133 = sub_1000136BC(v129, v128, &v386);

          *(v124 + 4) = v133;
          *(v124 + 12) = 2080;
          v115 = MyServiceDevice;
          v134 = (v121 + MyServiceDevice[8]);
          v135 = *v134;
          v136 = v134[1];

          sub_100731400(v121);
          v137 = sub_1000136BC(v135, v136, &v386);

          *(v124 + 14) = v137;
          _os_log_impl(&_mh_execute_header, v122, v123, "Check Insert got beacon %s, name: %s", v124, 0x16u);
          swift_arrayDestroy();

          v62 = v344;
        }

        else
        {

          sub_100731400(v121);
          sub_100731400(v116);
        }

        v138 = &v62[v115[5]];
        v139 = *(v138 + 1);
        if (v139)
        {
          v365 = *v138;
          v140 = v115[7];
          v141 = v351;
          v142 = v351[2];
          v366 = v140;
          if (v142 && (v143 = sub_1000210EC(&v62[v140]), (v144 & 1) != 0))
          {
            v145 = v335;
            sub_10073132C(v141[7] + v143 * v381, v335);
            v146 = v145;
            v147 = v341;
            sub_10073145C(v146, v341, type metadata accessor for FindMyServiceDevice);
            v148 = sub_1008BD92C(v147, v62);
            v149 = v338;
            v150 = v337;
            if (v148)
            {
              sub_10073132C(v62, v337);
              sub_10073132C(v62, v149);
              v151 = Logger.logObject.getter();
              v152 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v151, v152))
              {
                v153 = v150;
                v154 = swift_slowAlloc();
                v384 = swift_slowAlloc();
                v386 = v384;
                *v154 = v342;
                v155 = v153;
                v156 = v326;
                sub_1000D2A70(v155, v326, &qword_1016980D0, &unk_10138F3B0);
                v157 = v375;
                v158 = *(v375 - 8);
                if ((*(v158 + 48))(v156, 1, v375) == 1)
                {
                  sub_10000B3A8(v156, &qword_1016980D0, &unk_10138F3B0);
                  v159 = 0xE400000000000000;
                  v160 = 1162760014;
                }

                else
                {
                  v253 = v156;
                  v160 = UUID.uuidString.getter();
                  v159 = v254;
                  (*(v158 + 8))(v253, v157);
                }

                sub_100731400(v337);
                v255 = sub_1000136BC(v160, v159, &v386);

                *(v154 + 4) = v255;
                *(v154 + 12) = 2080;
                v115 = MyServiceDevice;
                v256 = v338;
                v257 = &v338[MyServiceDevice[8]];
                v258 = *v257;
                v259 = v257[1];

                sub_100731400(v256);
                v260 = sub_1000136BC(v258, v259, &v386);

                *(v154 + 14) = v260;
                _os_log_impl(&_mh_execute_header, v151, v152, "Insert no change got beacon %s, name: %s", v154, 0x16u);
                swift_arrayDestroy();

                v62 = v344;
              }

              else
              {

                sub_100731400(v149);
                sub_100731400(v150);
              }

              v261 = v331;
              sub_1000D2A70(&v62[v115[31]], v331, &unk_101696AC0, &qword_101390A60);
              v262 = type metadata accessor for URL();
              v263 = *(v262 - 8);
              if ((*(v263 + 48))(v261, 1, v262) == 1)
              {
                sub_100731400(v341);
                sub_10000B3A8(v261, &unk_101696AC0, &qword_101390A60);
                v368 = 0;
                v369 = 0;
              }

              else
              {
                v368 = URL.absoluteString.getter();
                v369 = v264;
                sub_100731400(v341);
                (*(v263 + 8))(v261, v262);
              }

              v180 = MyServiceDevice;
            }

            else
            {
              sub_10073132C(v62, v336);
              swift_storeEnumTagMultiPayload();
              v237 = v350;
              v238 = *v350;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v237 = v238;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v238 = sub_100A5DDC8(0, v238[2] + 1, 1, v238);
                *v350 = v238;
              }

              v240 = v333;
              v242 = v238[2];
              v241 = v238[3];
              if (v242 >= v241 >> 1)
              {
                v238 = sub_100A5DDC8(v241 > 1, v242 + 1, 1, v238);
                *v350 = v238;
              }

              v238[2] = v242 + 1;
              sub_10073145C(v336, v238 + ((*(v355 + 80) + 32) & ~*(v355 + 80)) + *(v355 + 72) * v242, type metadata accessor for FindMyServiceDeviceStore.ListChange);
              sub_10073132C(v62, v240);
              v243 = v334;
              sub_10073132C(v62, v334);
              v244 = Logger.logObject.getter();
              v245 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v244, v245))
              {
                v246 = swift_slowAlloc();
                v384 = swift_slowAlloc();
                v386 = v384;
                *v246 = v342;
                v247 = v325;
                sub_1000D2A70(v240, v325, &qword_1016980D0, &unk_10138F3B0);
                v248 = v375;
                v249 = *(v375 - 8);
                if ((*(v249 + 48))(v247, 1, v375) == 1)
                {
                  sub_10000B3A8(v247, &qword_1016980D0, &unk_10138F3B0);
                  v250 = 0xE400000000000000;
                  v251 = 1162760014;
                }

                else
                {
                  v265 = v247;
                  v251 = UUID.uuidString.getter();
                  v250 = v266;
                  (*(v249 + 8))(v265, v248);
                }

                sub_100731400(v333);
                v267 = sub_1000136BC(v251, v250, &v386);

                *(v246 + 4) = v267;
                *(v246 + 12) = 2080;
                v252 = MyServiceDevice;
                v268 = v334;
                v269 = (v334 + MyServiceDevice[8]);
                v270 = *v269;
                v271 = v269[1];

                sub_100731400(v268);
                v272 = sub_1000136BC(v270, v271, &v386);

                *(v246 + 14) = v272;
                _os_log_impl(&_mh_execute_header, v244, v245, "Insert got beacon %s, name: %s", v246, 0x16u);
                swift_arrayDestroy();

                v62 = v344;
              }

              else
              {

                sub_100731400(v243);
                sub_100731400(v240);
                v252 = MyServiceDevice;
              }

              v273 = v330;
              sub_1000D2A70(&v62[v252[31]], v330, &unk_101696AC0, &qword_101390A60);
              v274 = type metadata accessor for URL();
              v275 = v252;
              v276 = *(v274 - 8);
              v277 = *(v276 + 48);
              if (v277(v273, 1, v274) == 1)
              {
                v278 = v341 + v275[31];
                v279 = v332;
                sub_1000D2A70(v278, v332, &unk_101696AC0, &qword_101390A60);
                if (v277(v273, 1, v274) != 1)
                {
                  sub_10000B3A8(v273, &unk_101696AC0, &qword_101390A60);
                }
              }

              else
              {
                v279 = v332;
                (*(v276 + 32))(v332, v273, v274);
                (*(v276 + 56))(v279, 0, 1, v274);
              }

              if (v277(v279, 1, v274) == 1)
              {
                sub_100731400(v341);
                sub_10000B3A8(v279, &unk_101696AC0, &qword_101390A60);
                v368 = 0;
                v369 = 0;
              }

              else
              {
                v368 = URL.absoluteString.getter();
                v369 = v280;
                sub_100731400(v341);
                (*(v276 + 8))(v279, v274);
              }

              v180 = MyServiceDevice;
            }
          }

          else
          {
            sub_10073132C(v62, v361);
            swift_storeEnumTagMultiPayload();
            v161 = v350;
            v162 = *v350;
            v163 = swift_isUniquelyReferenced_nonNull_native();
            *v161 = v162;
            if ((v163 & 1) == 0)
            {
              v162 = sub_100A5DDC8(0, v162[2] + 1, 1, v162);
              *v350 = v162;
            }

            v164 = v340;
            v166 = v162[2];
            v165 = v162[3];
            if (v166 >= v165 >> 1)
            {
              v162 = sub_100A5DDC8(v165 > 1, v166 + 1, 1, v162);
              *v350 = v162;
            }

            v162[2] = v166 + 1;
            sub_10073145C(v361, v162 + ((*(v355 + 80) + 32) & ~*(v355 + 80)) + *(v355 + 72) * v166, type metadata accessor for FindMyServiceDeviceStore.ListChange);
            sub_1000D2A70(&v62[MyServiceDevice[31]], v164, &unk_101696AC0, &qword_101390A60);
            v167 = type metadata accessor for URL();
            v168 = *(v167 - 8);
            if ((*(v168 + 48))(v164, 1, v167) == 1)
            {
              sub_10000B3A8(v164, &unk_101696AC0, &qword_101390A60);
              v368 = 0;
              v369 = 0;
            }

            else
            {
              v368 = URL.absoluteString.getter();
              v369 = v179;
              (*(v168 + 8))(v164, v167);
            }

            v180 = MyServiceDevice;
          }

          sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
          v181 = *(type metadata accessor for Setter() - 8);
          v182 = *(v181 + 72);
          v183 = (*(v181 + 80) + 32) & ~*(v181 + 80);
          v184 = swift_allocObject();
          *(v184 + 16) = v345;
          if (qword_101695398 != -1)
          {
            v281 = v184;
            swift_once();
            v184 = v281;
          }

          v367 = v184;
          v185 = v184 + v183;
          v186 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
          sub_1000076D4(v186, qword_10177CA70);
          <- infix<A>(_:_:)();
          if (qword_1016953A0 != -1)
          {
            swift_once();
          }

          v384 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
          sub_1000076D4(v384, qword_10177CA88);
          v386 = v365;
          v387 = v139;
          <- infix<A>(_:_:)();
          <- infix<A>(_:_:)();
          v187 = v352;
          if (qword_1016953A8 != -1)
          {
            v282 = v352;
            swift_once();
            v187 = v282;
          }

          sub_1000076D4(v187, qword_10177CAA0);
          <- infix<A>(_:_:)();
          if (qword_1016953B0 != -1)
          {
            swift_once();
          }

          v188 = v384;
          sub_1000076D4(v384, qword_10177CAB8);
          v189 = &v62[v180[8]];
          v190 = *(v189 + 1);
          v386 = *v189;
          v387 = v190;

          <- infix<A>(_:_:)();

          if (qword_1016953B8 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v188, qword_10177CAD0);
          v191 = 3158066;
          v192 = 3223602;
          if (v62[v180[9]] != 2)
          {
            v192 = 3354674;
          }

          if (!v62[v180[9]])
          {
            v191 = 12589;
          }

          v193 = 0xE200000000000000;
          if (v62[v180[9]])
          {
            v193 = 0xE300000000000000;
          }

          if (v62[v180[9]] <= 1u)
          {
            v194 = v191;
          }

          else
          {
            v194 = v192;
          }

          if (v62[v180[9]] <= 1u)
          {
            v195 = v193;
          }

          else
          {
            v195 = 0xE300000000000000;
          }

          v386 = v194;
          v387 = v195;
          <- infix<A>(_:_:)();

          if (qword_1016953C0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v385, qword_10177CAE8);
          v196 = &v62[v180[10]];
          v197 = *(v196 + 1);
          v386 = *v196;
          v387 = v197;

          <- infix<A>(_:_:)();

          if (qword_1016953C8 != -1)
          {
            swift_once();
          }

          v366 = v185 - v182;
          sub_1000076D4(v188, qword_10177CB00);
          v198 = &v62[v180[11]];
          v199 = *(v198 + 1);
          v386 = *v198;
          v387 = v199;

          <- infix<A>(_:_:)();

          if (qword_1016953D0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v188, qword_10177CB18);
          v200 = &v62[v180[12]];
          v201 = *(v200 + 1);
          v386 = *v200;
          v387 = v201;

          <- infix<A>(_:_:)();

          v202 = v188;
          v203 = v180;
          if (qword_1016953D8 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v202, qword_10177CB30);
          v204 = &v62[v180[13]];
          v205 = *(v204 + 1);
          v386 = *v204;
          v387 = v205;

          <- infix<A>(_:_:)();

          if (qword_1016953E0 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v202, qword_10177CB48);
          v206 = &v62[v180[14]];
          v207 = *(v206 + 1);
          v386 = *v206;
          v387 = v207;

          <- infix<A>(_:_:)();

          if (qword_1016953E8 != -1)
          {
            swift_once();
          }

          v208 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
          sub_1000076D4(v208, qword_10177CB60);
          v209 = &v62[v180[15]];
          v210 = *v209;
          LOBYTE(v209) = v209[8];
          v386 = v210;
          LOBYTE(v387) = v209;
          <- infix<A>(_:_:)();
          if (qword_1016953F0 != -1)
          {
            swift_once();
          }

          v211 = v385;
          v212 = sub_1000076D4(v385, qword_10177CB78);
          (*v348)(v372, v212, v211);
          v213 = v62[v180[16]];
          if (v213 <= 1)
          {
            v214 = 0x64656772616843;
            if (!v62[v180[16]])
            {
              v214 = 0x6E776F6E6B6E55;
            }

            v215 = 0xE700000000000000;
          }

          else if (v213 == 2)
          {
            v215 = 0xE800000000000000;
            v214 = 0x676E696772616843;
          }

          else if (v213 == 3)
          {
            v214 = 0x6772616843746F4ELL;
            v215 = 0xEB00000000676E69;
          }

          else
          {
            v214 = 0;
            v215 = 0;
          }

          v386 = v214;
          v387 = v215;
          v216 = v372;
          <- infix<A>(_:_:)();

          (*v347)(v216, v385);
          if (qword_1016953F8 != -1)
          {
            swift_once();
          }

          v217 = v382;
          sub_1000076D4(v382, qword_10177CB90);
          LOBYTE(v386) = v62[v203[17]];
          <- infix<A>(_:_:)();
          if (qword_101695400 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v217, qword_10177CBA8);
          LOBYTE(v386) = v62[v203[18]];
          <- infix<A>(_:_:)();
          if (qword_101695408 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v217, qword_10177CBC0);
          LOBYTE(v386) = v62[v203[19]];
          <- infix<A>(_:_:)();
          if (qword_101695410 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v384, qword_10177CBD8);
          v218 = &v62[v203[20]];
          v219 = *(v218 + 1);
          v386 = *v218;
          v387 = v219;

          <- infix<A>(_:_:)();

          if (qword_101695418 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v382, qword_10177CBF0);
          LOBYTE(v386) = v62[v203[21]];
          <- infix<A>(_:_:)();
          if (qword_101695420 != -1)
          {
            swift_once();
          }

          v220 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
          sub_1000076D4(v220, qword_10177CC08);
          v221 = v203[22];
          type metadata accessor for Date();
          <- infix<A>(_:_:)();
          if (qword_101695428 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v220, qword_10177CC20);
          v222 = &v62[v203[23]];
          <- infix<A>(_:_:)();
          v223 = v203;
          if (qword_101695430 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v220, qword_10177CC38);
          v224 = &v62[v203[24]];
          <- infix<A>(_:_:)();
          v225 = v382;
          if (qword_101695438 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v225, qword_10177CC50);
          LOBYTE(v386) = v62[v223[25]];
          <- infix<A>(_:_:)();
          if (qword_101695440 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v384, qword_10177CC68);
          v226 = &v62[v223[26]];
          v227 = v223;
          v228 = *(v226 + 1);
          v386 = *v226;
          v387 = v228;

          <- infix<A>(_:_:)();

          if (qword_101695448 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v225, qword_10177CC80);
          LOBYTE(v386) = v62[v227[27]];
          <- infix<A>(_:_:)();
          v115 = v227;
          if (qword_101695450 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v225, qword_10177CC98);
          LOBYTE(v386) = v62[v227[28]];
          <- infix<A>(_:_:)();
          v116 = v377;
          if (qword_101695458 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v225, qword_10177CCB0);
          LOBYTE(v386) = v62[v115[29]];
          <- infix<A>(_:_:)();
          if (qword_101695460 != -1)
          {
            swift_once();
          }

          sub_1000076D4(v385, qword_10177CCC8);
          v386 = v368;
          v387 = v369;
          <- infix<A>(_:_:)();

          v229 = sub_1000BC4D4(&qword_1016A7C00, &unk_1013B6DF0);
          v388 = v229;
          v389 = sub_1000041A4(&qword_1016A7C20, &qword_1016A7C00, &unk_1013B6DF0);
          v230 = sub_1000280DC(&v386);
          (*(*(v229 - 8) + 16))(v230, v354, v229);
          QueryType.upsert(_:onConflictOf:)();

          sub_100007BAC(&v386);
          v231 = v390;
          Connection.run(_:)();
          if (v231)
          {
            v117 = v363;
            if (qword_101694848 != -1)
            {
              swift_once();
            }

            v390 = 0;
            sub_1000076D4(v370, qword_10177B078);
            swift_errorRetain();
            v232 = Logger.logObject.getter();
            v233 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v232, v233))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              *v234 = v324;
              swift_errorRetain();
              v236 = _swift_stdlib_bridgeErrorToNSError();
              *(v234 + 4) = v236;
              *v235 = v236;
              _os_log_impl(&_mh_execute_header, v232, v233, "Failed to upsert device: %@.", v234, 0xCu);
              sub_10000B3A8(v235, &qword_10169BB30, &unk_10138B3C0);

              v116 = v377;
            }

            else
            {
            }
          }

          else
          {
            v390 = 0;
            v117 = v363;
          }

          v118 = v376;
          (*v346)(v371, v353);
        }

        else
        {
          v169 = v339;
          sub_10073132C(v62, v339);
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            v173 = v169;
            v174 = swift_slowAlloc();
            v386 = v174;
            *v172 = v323;
            v175 = (v173 + v115[8]);
            v176 = *v175;
            v177 = v175[1];

            sub_100731400(v173);
            v178 = sub_1000136BC(v176, v177, &v386);

            *(v172 + 4) = v178;
            _os_log_impl(&_mh_execute_header, v170, v171, "Cannot insert device without ID, name: %s.", v172, 0xCu);
            sub_100007BAC(v174);
          }

          else
          {

            sub_100731400(v169);
          }

          v117 = v363;
          v118 = v376;
          v116 = v377;
        }

        v119 = v379;
        sub_100731400(v62);
        v113 = v378 + v381;
        v114 = v119 - 1;
      }

      while (v114);

      v283 = (v364 + v115[5]);
      v284 = _swiftEmptyArrayStorage;
      v285 = v315;
      do
      {
        v287 = v285;
        v288 = v364;
        sub_10073132C(v285, v364);
        v290 = *v283;
        v289 = v283[1];

        sub_100731400(v288);
        if (v289)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v284 = sub_100A5B2CC(0, *(v284 + 2) + 1, 1, v284);
          }

          v292 = *(v284 + 2);
          v291 = *(v284 + 3);
          if (v292 >= v291 >> 1)
          {
            v284 = sub_100A5B2CC((v291 > 1), v292 + 1, 1, v284);
          }

          *(v284 + 2) = v292 + 1;
          v286 = &v284[16 * v292];
          *(v286 + 4) = v290;
          *(v286 + 5) = v289;
          v118 = v376;
        }

        v285 = v287 + v381;
        --v380;
      }

      while (v380);
    }

    else
    {

      v284 = _swiftEmptyArrayStorage;
      v117 = v363;
      v118 = v376;
    }

    v293 = v316;
    == infix<A>(_:_:)();
    v294 = v360;
    QueryType.filter(_:)();
    v295 = v382;
    v118(v293, v382);
    v386 = v284;
    if (qword_1016953A0 != -1)
    {
      swift_once();
    }

    v296 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
    sub_1000076D4(v296, qword_10177CA88);
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1000041A4(&qword_1016A7C18, &qword_1016B0470, &qword_10138EB80);
    v297 = v327;
    Collection<>.contains(_:)();

    LOBYTE(v386) = 0;
    == infix<A>(_:_:)();
    v298 = v297;
    v299 = v376;
    v376(v298, v295);
    v300 = v329;
    QueryType.filter(_:)();
    v299(v293, v295);
    v301 = v328;
    v302 = *(v328 + 8);
    v302(v117, v294);
    v388 = v294;
    v389 = &protocol witness table for Table;
    v303 = sub_1000280DC(&v386);
    (*(v301 + 16))(v303, v300, v294);
    v304 = v390;
    Connection.prepare(_:)();
    v305 = v294;
    if (v304)
    {
      v302(v300, v294);

      return sub_100007BAC(&v386);
    }

    else
    {
      sub_100007BAC(&v386);
      v306 = dispatch thunk of _AnySequenceBox._map<A>(_:)();

      v307 = *(v306 + 16);
      if (v307)
      {
        v385 = v302;
        v390 = 0;
        v386 = _swiftEmptyArrayStorage;
        sub_101125038(0, v307, 0);
        v308 = v386;
        v309 = v306 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
        v310 = *(v322 + 72);
        v311 = v318;
        do
        {
          sub_10073132C(v309, v311);
          swift_storeEnumTagMultiPayload();
          v386 = v308;
          v313 = v308[2];
          v312 = v308[3];
          if (v313 >= v312 >> 1)
          {
            sub_101125038(v312 > 1, v313 + 1, 1);
            v308 = v386;
          }

          v308[2] = v313 + 1;
          sub_10073145C(v311, v308 + ((*(v355 + 80) + 32) & ~*(v355 + 80)) + *(v355 + 72) * v313, type metadata accessor for FindMyServiceDeviceStore.ListChange);
          v309 += v310;
          --v307;
        }

        while (v307);

        v305 = v360;
        v300 = v329;
        v302 = v385;
      }

      else
      {

        v308 = _swiftEmptyArrayStorage;
      }

      sub_10039A250(v308);
      v314 = v319;
      QueryType.delete()();
      Connection.run(_:)();

      (*(v320 + 8))(v314, v321);
      return (v302)(v300, v305);
    }
  }

  else
  {
    v98 = v68[4];
    v97 = v68 + 4;
    v368 = v98;
    v99 = (v97 - 2);
    v369 = (v97 - 3);
    v96 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      (v368)(v73, v94, v67);
      v100 = v381;
      (*v99)(v381, v73, v67);

      v101 = v390;
      sub_10072F0C0(v100, v66);
      v390 = v101;
      if (v101)
      {
        break;
      }

      v102 = MyServiceDevice[7];
      v103 = v67;
      v104 = v73;
      v105 = v97;
      v106 = v380;
      sub_10073132C(v66, v380);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v386 = v96;
      v108 = v106;
      v97 = v105;
      v73 = v104;
      v67 = v103;
      v94 = v384;
      sub_100FFFDD0(v108, &v66[v102], v107);

      sub_100731400(v66);
      (*v369)(v73, v67);
      v96 = v386;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v370(v94, 1, v67) == 1)
      {
        goto LABEL_10;
      }
    }

    (*v369)(v73, v67);
  }
}

uint64_t sub_10072F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v4, qword_10177CA70);
  type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016953A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v5, qword_10177CA88);
  Row.subscript.getter();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  *(a2 + MyServiceDevice[5]) = string;
  v7 = (a2 + MyServiceDevice[6]);
  *v7 = 0;
  v7[1] = 0;
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v8, qword_10177CAA0);
  v9 = a2 + MyServiceDevice[7];
  Row.subscript.getter();
  if (qword_1016953B0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CAB8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[8]) = string;
  if (qword_1016953B8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CAD0);
  Row.subscript.getter();
  v10 = sub_1008BEAAC(string);
  if (v10 == 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  *(a2 + MyServiceDevice[9]) = v11;
  if (qword_1016953C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v12, qword_10177CAE8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[10]) = string;
  if (qword_1016953C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB00);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[11]) = string;
  if (qword_1016953D0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB18);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[12]) = string;
  if (qword_1016953D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB30);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[13]) = string;
  if (qword_1016953E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CB48);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[14]) = string;
  if (qword_1016953E8 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_1016A7BF8, &qword_1013B6DD8);
  sub_1000076D4(v13, qword_10177CB60);
  Row.subscript.getter();
  v14 = a2 + MyServiceDevice[15];
  *v14 = string._countAndFlagsBits;
  *(v14 + 8) = string._object;
  if (qword_1016953F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v12, qword_10177CB78);
  Row.subscript.getter();
  v15._object = string._object;
  if (string._object)
  {
    v15._countAndFlagsBits = string._countAndFlagsBits;
    v16 = sub_1008BEAF8(v15);
  }

  else
  {
    v16 = 4;
  }

  *(a2 + MyServiceDevice[16]) = v16;
  if (qword_101695460 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v12, qword_10177CCC8);
  Row.subscript.getter();
  if (string._object)
  {
    v17 = a2 + MyServiceDevice[31];
    URL.init(string:)();
  }

  else
  {
    v18 = MyServiceDevice[31];
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 56))(a2 + v18, 1, 1, v19);
  }

  if (qword_1016953F8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v20, qword_10177CB90);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[17]) = string._countAndFlagsBits;
  if (qword_101695400 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CBA8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[18]) = string._countAndFlagsBits;
  if (qword_101695408 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CBC0);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[19]) = string._countAndFlagsBits;
  if (qword_101695410 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CBD8);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[20]) = string;
  if (qword_101695418 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CBF0);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[21]) = string._countAndFlagsBits;
  if (qword_101695420 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v21, qword_10177CC08);
  v22 = MyServiceDevice[22];
  type metadata accessor for Date();
  Row.subscript.getter();
  if (qword_101695438 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CC50);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[25]) = string._countAndFlagsBits;
  if (qword_101695428 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CC20);
  v23 = a2 + MyServiceDevice[23];
  Row.subscript.getter();
  if (qword_101695430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177CC38);
  v24 = a2 + MyServiceDevice[24];
  Row.subscript.getter();
  if (qword_101695440 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v5, qword_10177CC68);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[26]) = string;
  if (qword_101695448 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CC80);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[27]) = string._countAndFlagsBits;
  if (qword_101695450 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CC98);
  Row.subscript.getter();
  *(a2 + MyServiceDevice[28]) = string._countAndFlagsBits;
  *(a2 + MyServiceDevice[30]) = 4;
  if (qword_101695458 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177CCB0);
  Row.subscript.getter();
  v25 = type metadata accessor for Row();
  result = (*(*(v25 - 8) + 8))(a1, v25);
  *(a2 + MyServiceDevice[29]) = string._countAndFlagsBits;
  return result;
}

uint64_t sub_10072FCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a1;
  v72 = a2;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v81 = *(MyServiceDevice - 8);
  v5 = *(v81 + 64);
  v6 = __chkstk_darwin(MyServiceDevice - 8);
  v83 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v67 = &v66 - v8;
  v9 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v79 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = &v66 - v13;
  v78 = type metadata accessor for Row();
  v14 = *(v78 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v78);
  v77 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v74 = &v66 - v19;
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v70 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v22 = *(v70 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v70);
  v25 = &v66 - v24;
  v26 = type metadata accessor for Table();
  v69 = *(v26 - 8);
  v27 = *(v69 + 64);
  __chkstk_darwin(v26);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100028E90();
  if (!v30)
  {
    sub_10020223C();
    swift_allocError();
    *v37 = 2;
    *(v37 + 4) = 1;
    return swift_willThrow();
  }

  v73 = v21;
  v75 = v14;
  v68 = v30;
  v66 = a3;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v31, qword_10177C818);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  v32 = *(v22 + 8);
  v33 = v70;
  v32(v25, v70);
  if (qword_1016953A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v31, qword_10177CAA0);
  == infix<A>(_:_:)();
  v82[3] = v26;
  v82[4] = &protocol witness table for Table;
  sub_1000280DC(v82);
  QueryType.filter(_:)();
  v32(v25, v33);
  (*(v69 + 8))(v29, v26);
  v34 = v80;
  v35 = Connection.prepare(_:)();
  if (v34)
  {

    return sub_100007BAC(v82);
  }

  v38 = v35;
  sub_100007BAC(v82);

  v39 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v82[0] = _swiftEmptyArrayStorage;
  sub_101124F70(0, v39 & ~(v39 >> 63), 0);
  v40 = v82[0];
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v80 = result;
  if (v39 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v72 = v38;
  v41 = v78;
  if (v39)
  {
    v42 = (v75 + 48);
    v43 = (v75 + 16);
    v44 = (v75 + 8);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v45 = v79;
      result = (*v42)(v79, 1, v41);
      if (result == 1)
      {
        goto LABEL_24;
      }

      v46 = v77;
      (*v43)(v77, v45, v41);
      sub_10072F0C0(v46, v83);
      (*v44)(v45, v41);
      v82[0] = v40;
      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_101124F70(v47 > 1, v48 + 1, 1);
        v40 = v82[0];
      }

      *(v40 + 16) = v48 + 1;
      sub_10073145C(v83, v40 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v48, type metadata accessor for FindMyServiceDevice);
      --v39;
      v41 = v78;
    }

    while (v39);
  }

  v49 = v76;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v50 = v49;
  v51 = v75;
  v83 = *(v75 + 48);
  if (v83(v49, 1, v41) != 1)
  {
    v54 = *(v51 + 32);
    v53 = v51 + 32;
    v79 = v54;
    v55 = (v53 - 16);
    v75 = v53;
    v56 = (v53 - 24);
    v57 = v67;
    do
    {
      v58 = v73;
      (v79)(v73, v50, v41);
      v59 = v74;
      (*v55)(v74, v58, v41);
      sub_10072F0C0(v59, v57);
      v60 = v57;
      (*v56)(v58, v41);
      v82[0] = v40;
      v62 = *(v40 + 16);
      v61 = *(v40 + 24);
      v63 = v41;
      if (v62 >= v61 >> 1)
      {
        sub_101124F70(v61 > 1, v62 + 1, 1);
        v60 = v67;
        v40 = v82[0];
      }

      *(v40 + 16) = v62 + 1;
      sub_10073145C(v60, v40 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v62, type metadata accessor for FindMyServiceDevice);
      v64 = v76;
      v57 = v60;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v50 = v64;
      v65 = v83(v64, 1, v63);
      v41 = v63;
    }

    while (v65 != 1);
  }

  sub_10000B3A8(v50, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_1016A7BF0, &qword_1013B6DD0);
  inited = swift_initStackObject();
  *(inited + 16) = v40;
  *(inited + 24) = 0;
  sub_1007311FC(v66);
}

uint64_t sub_100730604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v94 = *(MyServiceDevice - 8);
  v4 = *(v94 + 64);
  v5 = __chkstk_darwin(MyServiceDevice - 8);
  v96 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v77 = &v75 - v7;
  v8 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v92 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v75 - v12;
  v91 = type metadata accessor for Row();
  v13 = *(v91 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v91);
  v90 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v86 = &v75 - v18;
  __chkstk_darwin(v17);
  v87 = &v75 - v19;
  v20 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v81 = &v75 - v22;
  v83 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v82 = *(v83 - 8);
  v23 = *(v82 + 64);
  __chkstk_darwin(v83);
  v80 = &v75 - v24;
  v25 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v75 - v28;
  v30 = type metadata accessor for Table();
  v79 = *(v30 - 8);
  v31 = *(v79 + 64);
  __chkstk_darwin(v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_100028E90())
  {
    sub_10020223C();
    swift_allocError();
    *v46 = 2;
    *(v46 + 4) = 1;
    return swift_willThrow();
  }

  v88 = v13;
  v76 = a2;
  v78 = OBJC_IVAR____TtC12searchpartyd19ObservationDatabase_findMyServiceDevices;
  if (qword_1016952D0 != -1)
  {
    swift_once();
  }

  v34 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v34, qword_10177C818);
  v35 = type metadata accessor for UUID();
  v36 = v84;
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v26 + 8))(v29, v25);
  if (qword_101695398 != -1)
  {
    swift_once();
  }

  v37 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v37, qword_10177CA70);
  v38 = *(type metadata accessor for BeaconIdentifier() + 20);
  v39 = *(v35 - 8);
  v40 = v36 + v38;
  v41 = v81;
  (*(v39 + 16))(v81, v40, v35);
  (*(v39 + 56))(v41, 0, 1, v35);
  v42 = v80;
  == infix<A>(_:_:)();
  sub_10000B3A8(v41, &qword_1016980D0, &unk_10138F3B0);
  v95[3] = v30;
  v95[4] = &protocol witness table for Table;
  sub_1000280DC(v95);
  QueryType.filter(_:)();
  (*(v82 + 8))(v42, v83);
  (*(v79 + 8))(v33, v30);
  v43 = v93;
  v44 = Connection.prepare(_:)();
  if (v43)
  {

    return sub_100007BAC(v95);
  }

  v47 = v44;
  sub_100007BAC(v95);

  v48 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
  v95[0] = _swiftEmptyArrayStorage;
  sub_101124F70(0, v48 & ~(v48 >> 63), 0);
  v49 = v95[0];
  result = dispatch thunk of _AnySequenceBox._makeIterator()();
  v93 = result;
  if (v48 < 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v84 = v47;
  v50 = v91;
  if (v48)
  {
    v51 = (v88 + 48);
    v52 = (v88 + 16);
    v53 = (v88 + 8);
    do
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v54 = v92;
      result = (*v51)(v92, 1, v50);
      if (result == 1)
      {
        goto LABEL_24;
      }

      v55 = v90;
      (*v52)(v90, v54, v50);
      sub_10072F0C0(v55, v96);
      (*v53)(v54, v50);
      v95[0] = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_101124F70(v56 > 1, v57 + 1, 1);
        v49 = v95[0];
      }

      *(v49 + 16) = v57 + 1;
      sub_10073145C(v96, v49 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v57, type metadata accessor for FindMyServiceDevice);
      --v48;
      v50 = v91;
    }

    while (v48);
  }

  v58 = v89;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v59 = v58;
  v60 = v88;
  v96 = *(v88 + 48);
  if (v96(v58, 1, v50) != 1)
  {
    v63 = *(v60 + 32);
    v62 = v60 + 32;
    v92 = v63;
    v64 = (v62 - 16);
    v88 = v62;
    v65 = (v62 - 24);
    v66 = v77;
    do
    {
      v67 = v87;
      (v92)(v87, v59, v50);
      v68 = v86;
      (*v64)(v86, v67, v50);
      sub_10072F0C0(v68, v66);
      v69 = v66;
      (*v65)(v67, v50);
      v95[0] = v49;
      v71 = *(v49 + 16);
      v70 = *(v49 + 24);
      v72 = v50;
      if (v71 >= v70 >> 1)
      {
        sub_101124F70(v70 > 1, v71 + 1, 1);
        v69 = v77;
        v49 = v95[0];
      }

      *(v49 + 16) = v71 + 1;
      sub_10073145C(v69, v49 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v71, type metadata accessor for FindMyServiceDevice);
      v73 = v89;
      v66 = v69;
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v59 = v73;
      v74 = v96(v73, 1, v72);
      v50 = v72;
    }

    while (v74 != 1);
  }

  sub_10000B3A8(v59, &qword_101699D68, &unk_1013B6450);
  sub_1000BC4D4(&qword_1016A7BF0, &qword_1013B6DD0);
  inited = swift_initStackObject();
  *(inited + 16) = v49;
  *(inited + 24) = 0;
  sub_1007311FC(v76);
}

uint64_t sub_1007310F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Row();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  result = sub_10072F0C0(v8, a2);
  if (v2)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    result = swift_allocError();
    *v11 = v2;
  }

  return result;
}

void sub_1007311FC(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v3 == v5)
  {
    MyServiceDevice = type metadata accessor for FindMyServiceDevice();
    v7 = *(*(MyServiceDevice - 8) + 56);
    v8 = MyServiceDevice;
    v9 = a1;
    v10 = 1;
  }

  else
  {
    if (v3 >= v5)
    {
      __break(1u);
      return;
    }

    v11 = type metadata accessor for FindMyServiceDevice();
    v12 = *(v11 - 8);
    sub_10073132C(v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v3, a1);
    *(v1 + 24) = v3 + 1;
    v7 = *(v12 + 56);
    v9 = a1;
    v10 = 0;
    v8 = v11;
  }

  v7(v9, v10, 1, v8);
}

uint64_t sub_10073132C(uint64_t a1, uint64_t a2)
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  (*(*(MyServiceDevice - 8) + 16))(a2, a1, MyServiceDevice);
  return a2;
}

uint64_t type metadata accessor for FindMyServiceDeviceStore.ListChange()
{
  result = qword_1016A7C98;
  if (!qword_1016A7C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100731400(uint64_t a1)
{
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  (*(*(MyServiceDevice - 8) + 8))(a1, MyServiceDevice);
  return a1;
}

uint64_t sub_10073145C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007314C4()
{
  result = type metadata accessor for FindMyServiceDevice();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100731528(uint64_t a1, int a2)
{
  v51 = type metadata accessor for TimeBasedKey();
  v50 = *(v51 - 8);
  v4 = *(v50 + 64);
  v5 = __chkstk_darwin(v51);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (v43 - v8);
  v49 = type metadata accessor for Date();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v49);
  v58 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DateInterval();
  v13 = *(v57 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v57);
  v56 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for SharedBeaconRecord(0) + 20);
  v53 = a1;
  v43[1] = v16;
  v52 = a2;
  v17 = sub_1012E7748((a1 + v16), a2 & 1, 0);
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_firstIndex);
    v48 = *(v17 + OBJC_IVAR____TtC12searchpartyd20BeaconKeySubsequence_lastIndex);
    if (v48 >= v19)
    {
      v46 = (v10 + 8);
      v45 = (v13 + 16);
      v44 = (v13 + 8);
      v20 = _swiftEmptyArrayStorage;
      v47 = v17;
      do
      {
        v21 = objc_autoreleasePoolPush();
        sub_100F0A450(v19, v18, 0, &v59, v60);
        v22 = v7;
        objc_autoreleasePoolPop(v21);
        v54 = v60[1];
        v55 = v60[0];
        v24 = v61;
        v23 = v62;
        sub_100A8AD0C(v58);
        if (v52)
        {
          if (qword_101694940 != -1)
          {
            swift_once();
          }

          v25 = *(qword_10177B348 + 40);
          OS_dispatch_queue.sync<A>(execute:)();
          v26 = sub_101073C10(*&v60[0]);

          if (v26 < 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (qword_101694940 != -1)
          {
            swift_once();
          }

          v27 = *(qword_10177B348 + 40);
          OS_dispatch_queue.sync<A>(execute:)();
          v26 = sub_101073524(*&v60[0]);

          if (v26 < 0)
          {
            goto LABEL_22;
          }
        }

        v28 = v56;
        v29 = v58;
        sub_1008849E8(v58, v19, v26, v56);
        (*v46)(v29, v49);
        v30 = v51;
        (*v45)(v9 + *(v51 + 20), v28, v57);
        *v9 = v19;
        v31 = v9 + *(v30 + 24);
        v32 = v54;
        *v31 = v55;
        *(v31 + 1) = v32;
        *(v31 + 4) = v24;
        *(v31 + 5) = v23;
        v7 = v22;
        sub_100739F64(v9, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100A5BDF0(0, v20[2] + 1, 1, v20);
        }

        v18 = v47;
        v34 = v20[2];
        v33 = v20[3];
        if (v34 >= v33 >> 1)
        {
          v20 = sub_100A5BDF0(v33 > 1, v34 + 1, 1, v20);
        }

        sub_10073AA30(v9, type metadata accessor for TimeBasedKey);
        (*v44)(v56, v57);
        v20[2] = v34 + 1;
        sub_1000185B4(v22, v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v34, type metadata accessor for TimeBasedKey);
        if (v48 == v19)
        {

          return v20;
        }

        ++v19;
      }

      while (v19 != &_mh_execute_header);
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
    swift_once();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10138B360;
    *(v35 + 56) = &type metadata for UInt64;
    *(v35 + 64) = &protocol witness table for UInt64;
    *(v35 + 32) = v19;
    v36 = UUID.uuidString.getter();
    v38 = v37;
    *(v35 + 96) = &type metadata for String;
    v39 = sub_100008C00();
    *(v35 + 104) = v39;
    *(v35 + 72) = v36;
    *(v35 + 80) = v38;
    swift_getErrorValue();
    v40 = Error.localizedDescription.getter();
    *(v35 + 136) = &type metadata for String;
    *(v35 + 144) = v39;
    *(v35 + 112) = v40;
    *(v35 + 120) = v41;
    os_log(_:dso:log:_:_:)();
  }

  return 0;
}

uint64_t sub_100731BF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 720) = v6;
  *(v7 + 1267) = a6;
  *(v7 + 1266) = a5;
  *(v7 + 1265) = a4;
  *(v7 + 712) = a3;
  *(v7 + 704) = a2;
  *(v7 + 696) = a1;
  v8 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  *(v7 + 728) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 736) = swift_task_alloc();
  v10 = _s18ConnectionKeyGroupVMa();
  *(v7 + 744) = v10;
  v11 = *(v10 - 8);
  *(v7 + 752) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 760) = swift_task_alloc();
  v13 = type metadata accessor for Date();
  *(v7 + 768) = v13;
  v14 = *(v13 - 8);
  *(v7 + 776) = v14;
  v15 = *(v14 + 64) + 15;
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  *(v7 + 800) = v16;
  v17 = *(v16 - 8);
  *(v7 + 808) = v17;
  *(v7 + 816) = *(v17 + 64);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&unk_101698C30, &unk_101392630) - 8) + 64) + 15;
  *(v7 + 904) = swift_task_alloc();
  v19 = type metadata accessor for SharedBeaconRecord(0);
  *(v7 + 912) = v19;
  v20 = *(v19 - 8);
  *(v7 + 920) = v20;
  v21 = *(v20 + 64) + 15;
  *(v7 + 928) = swift_task_alloc();
  v22 = type metadata accessor for TimeBasedKey();
  *(v7 + 936) = v22;
  v23 = *(v22 - 8);
  *(v7 + 944) = v23;
  v24 = *(v23 + 64) + 15;
  *(v7 + 952) = swift_task_alloc();
  *(v7 + 960) = swift_task_alloc();
  *(v7 + 968) = swift_task_alloc();
  *(v7 + 976) = swift_task_alloc();
  v25 = type metadata accessor for DateInterval();
  *(v7 + 984) = v25;
  v26 = *(v25 - 8);
  *(v7 + 992) = v26;
  v27 = *(v26 + 64) + 15;
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = swift_task_alloc();
  v28 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  *(v7 + 1024) = swift_task_alloc();
  v29 = type metadata accessor for OwnedBeaconRecord();
  *(v7 + 1032) = v29;
  v30 = *(v29 - 8);
  *(v7 + 1040) = v30;
  v31 = *(v30 + 64) + 15;
  *(v7 + 1048) = swift_task_alloc();

  return _swift_task_switch(sub_100732050, 0, 0);
}

uint64_t sub_100732050()
{
  v308 = v0;
  if (*(v0 + 1266) == 1)
  {
    v1 = *(v0 + 1040);
    v2 = *(v0 + 1032);
    v3 = *(v0 + 1024);
    sub_10001F280(*(v0 + 696), v0 + 112);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v4 = swift_dynamicCast();
    v5 = *(v1 + 56);
    if (v4)
    {
      v6 = *(v0 + 1048);
      v7 = *(v0 + 1024);
      v5(v7, 0, 1, *(v0 + 1032));
      sub_1000185B4(v7, v6, type metadata accessor for OwnedBeaconRecord);
      static os_log_type_t.error.getter();
      if (qword_101694A20 != -1)
      {
        goto LABEL_131;
      }

      while (1)
      {
        v8 = *(v0 + 1265);
        v9 = qword_10177B550;
        os_log(_:dso:log:_:_:)();
        v10 = *(v0 + 1048);
        v11 = *(v0 + 1032);
        if (v8)
        {
          v12 = (v10 + *(v11 + 40));
          v13 = v12[1];
          if (v13 >> 60 == 15)
          {
            sub_100720740();
            swift_allocError();
            *v14 = 0;
            swift_willThrow();
            v305 = _swiftEmptyArrayStorage;
            v157 = static os_log_type_t.error.getter();
            v158 = os_log_type_enabled(v9, v157);
            v159 = *(v0 + 1048);
            if (v158)
            {
              v160 = swift_slowAlloc();
              v161 = swift_slowAlloc();
              v306 = v161;
              *v160 = 136315138;
              swift_getErrorValue();
              v163 = *(v0 + 496);
              v162 = *(v0 + 504);
              v164 = *(v0 + 512);
              v165 = Error.localizedDescription.getter();
              v167 = sub_1000136BC(v165, v166, &v306);

              *(v160 + 4) = v167;
              _os_log_impl(&_mh_execute_header, v9, v157, "Error during forceGenerate: %s", v160, 0xCu);
              sub_100007BAC(v161);
            }

            sub_10073AA30(v159, type metadata accessor for OwnedBeaconRecord);
            goto LABEL_115;
          }

          v118 = *v12;
        }

        else
        {
          v117 = (v10 + *(v11 + 36));
          v118 = *v117;
          v13 = v117[1];
        }

        sub_100017D5C(v118, v13);
        v150 = *(v0 + 1048);
        v151 = (v150 + *(*(v0 + 1032) + 52));
        v152 = (v150 + *(*(v0 + 1032) + 48));
        v153 = *v152;
        v154 = v152[1];
        v290 = *v151;
        v295 = v151[1];
        sub_100017D5C(*v151, v295);
        v299 = v153;
        v303 = v154;
        sub_100017D5C(v153, v154);
        if (qword_101694FA8 != -1)
        {
          swift_once();
        }

        v155 = *(v0 + 704);
        *(v0 + 592) = 0x7365547265646E75;
        *(v0 + 600) = 0xE900000000000074;
        SynchronousCache.cachedValue<A>(key:computeBlock:)();
        v156 = sub_100A7563C(v118, v13, v155);
        v260 = v118;
        v263 = v13;
        v168 = *(v0 + 992);
        v279 = *(v0 + 944);
        v284 = *(v0 + 1032);
        v275 = *(v0 + 936);
        v271 = *(v0 + 1265);
        v306 = v156;
        v307 = v169;
        v265 = (v168 + 8);
        v268 = (v168 + 16);
        v170 = *(v0 + 704);
        v305 = _swiftEmptyArrayStorage;
        while (1)
        {
          v171 = objc_autoreleasePoolPush();
          v172 = v306;
          v173 = v307;
          sub_100017D5C(v306, v307);
          sub_100A76468(v299, v303, v290, v295, v172, v173, 1, &v306, (v0 + 64));
          v174 = *(v0 + 1048);
          v175 = *(v0 + 1016);
          v176 = *(v0 + 984);
          v177 = *(v0 + 976);
          v178 = *(v0 + 968);
          sub_100016590(v172, v173);
          v179 = *(v284 + 32);
          v180 = sub_1007382B8(v271 & 1);
          sub_1008849E8(v174 + v179, v170, v180, v175);
          (*v268)(v177 + *(v275 + 20), v175, v176);
          *v177 = v170;
          v181 = (v177 + *(v275 + 24));
          v183 = *(v0 + 80);
          v182 = *(v0 + 96);
          *v181 = *(v0 + 64);
          v181[1] = v183;
          v181[2] = v182;
          sub_100739F64(v177, v178);
          v184 = v305;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v184 = sub_100A5BDF0(0, v305[2] + 1, 1, v305);
          }

          v186 = v184[2];
          v185 = v184[3];
          v305 = v186 >= v185 >> 1 ? sub_100A5BDF0(v185 > 1, v186 + 1, 1, v184) : v184;
          v187 = *(v0 + 1016);
          v188 = *(v0 + 984);
          v189 = *(v0 + 968);
          sub_10073AA30(*(v0 + 976), type metadata accessor for TimeBasedKey);
          (*v265)(v187, v188);
          v305[2] = v186 + 1;
          sub_1000185B4(v189, v305 + ((*(v279 + 80) + 32) & ~*(v279 + 80)) + *(v279 + 72) * v186, type metadata accessor for TimeBasedKey);
          if (v170 == -1)
          {
            break;
          }

          v190 = *(v0 + 712);
          objc_autoreleasePoolPop(v171);
          if (v170++ >= v190)
          {
            v230 = *(v0 + 1048);
            sub_100016590(v290, v295);
            sub_100016590(v299, v303);
            sub_100016590(v260, v263);
            sub_10073AA30(v230, type metadata accessor for OwnedBeaconRecord);
            sub_100016590(v306, v307);
            goto LABEL_115;
          }
        }

LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        swift_once();
      }
    }

    v92 = *(v0 + 1024);
    v5(v92, 1, 1, *(v0 + 1032));
    sub_10000B3A8(v92, &unk_1016A9A20, &qword_10138B280);
    static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
LABEL_78:
    v305 = 0;
    v288 = 0;
    v136 = 3;
    goto LABEL_116;
  }

  v15 = *(v0 + 712);
  v16 = *(v0 + 704);
  *(v0 + 680) = &_swiftEmptySetSingleton;
  if (v15 < v16)
  {
    goto LABEL_130;
  }

  v17 = 0;
  v277 = 0;
  v281 = (v0 + 472);
  *(v0 + 1056) = OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore;
  v18 = _swiftEmptyArrayStorage;
  v19 = 1;
  v20 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 1096) = v21;
    *(v0 + 1088) = v20;
    *(v0 + 1080) = v18;
    v298 = v17;
    v301 = v16;
    *(v0 + 1072) = v16;
    *(v0 + 1268) = v19 & 1;
    *(v0 + 1064) = v17;
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);
    v24 = *(v0 + 904);
    sub_10001F280(*(v0 + 696), v0 + 152);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v25 = swift_dynamicCast();
    v26 = *(v22 + 56);
    if (v25)
    {
      v27 = *(v0 + 928);
      v28 = *(v0 + 912);
      v29 = *(v0 + 904);
      v26(v29, 0, 1, v28);
      sub_1000185B4(v29, v27, type metadata accessor for SharedBeaconRecord);
      v30 = *(v27 + *(v28 + 64));
      *(v0 + 1269) = v30;
      if (v30 == 4 || v30 == 2)
      {
        if (*(v0 + 1265))
        {
          v115 = &type metadata for SecondaryIndex;
          *(v0 + 456) = &type metadata for SecondaryIndex;
          v116 = sub_10022A4D4();
          *(v0 + 464) = v116;
          *(v0 + 432) = v301;
        }

        else
        {
          v137 = *(v0 + 928);
          v138 = *(v0 + 912);
          *(v0 + 456) = &type metadata for PrimaryIndex;
          *(v0 + 464) = sub_10002A2B8();
          *(v0 + 432) = v301;
          if (*(v137 + *(v138 + 44)) != -1 && v30 != 4 && *(v137 + *(v138 + 48)) != -1)
          {
            v139 = *(v0 + 896);
            v140 = *(v0 + 888);
            v141 = *(v0 + 696);
            v142 = *(*(v0 + 720) + *(v0 + 1056));
            v143 = v141[3];
            v144 = v141[4];
            sub_1000035D0(v141, v143);
            (*(*(*(v144 + 8) + 8) + 32))(v143);
            v145 = getuid();
            sub_1000294F0(v145);
            v146 = swift_task_alloc();
            *(v0 + 1104) = v146;
            *v146 = v0;
            v146[1] = sub_100733DE8;
            v147 = *(v0 + 896);
            v148 = *(v0 + 888);

            return sub_1006868C4(v148, v147, v301);
          }

          if (qword_101694480 != -1)
          {
            swift_once();
          }

          v215 = *(v0 + 696);
          v216 = type metadata accessor for Logger();
          sub_1000076D4(v216, qword_10177A560);
          sub_10001F280(v215, v0 + 272);
          v217 = Logger.logObject.getter();
          v218 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v217, v218))
          {
            v219 = *(v0 + 880);
            v220 = *(v0 + 808);
            v221 = *(v0 + 800);
            v222 = swift_slowAlloc();
            v223 = swift_slowAlloc();
            v306 = v223;
            *v222 = 141558275;
            *(v222 + 4) = 1752392040;
            *(v222 + 12) = 2081;
            v225 = *(v0 + 296);
            v224 = *(v0 + 304);
            sub_1000035D0((v0 + 272), v225);
            (*(*(*(v224 + 8) + 8) + 32))(v225);
            sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
            v226 = dispatch thunk of CustomStringConvertible.description.getter();
            v228 = v227;
            (*(v220 + 8))(v219, v221);
            sub_100007BAC((v0 + 272));
            v229 = sub_1000136BC(v226, v228, &v306);

            *(v222 + 14) = v229;
            _os_log_impl(&_mh_execute_header, v217, v218, "Skipping connection keys fetching: %{private,mask.hash}s.", v222, 0x16u);
            sub_100007BAC(v223);
          }

          else
          {

            sub_100007BAC((v0 + 272));
          }

          v115 = *(v0 + 456);
          v116 = *(v0 + 464);
        }

        *(v0 + 1168) = xmmword_10138BBF0;
        v242 = *(v0 + 1056);
        v243 = *(v0 + 864);
        v244 = *(v0 + 856);
        v245 = *(v0 + 720);
        v246 = *(v0 + 696);
        v247 = sub_1000035D0((v0 + 432), v115);
        v248 = *(v245 + v242);
        v249 = v246[3];
        v250 = v246[4];
        sub_1000035D0(v246, v249);
        (*(*(*(v250 + 8) + 8) + 32))(v249);
        sub_1005F9784();
        v251 = swift_task_alloc();
        *(v0 + 1184) = v251;
        *v251 = v0;
        v251[1] = sub_10073454C;
        v252 = *(v0 + 864);
        v253 = *(v0 + 856);

        return sub_1006858D0(v253, v252, v247, v115, v116);
      }

      sub_10073AA30(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v32 = *(v0 + 904);
      v26(v32, 1, 1, *(v0 + 912));
      sub_10000B3A8(v32, &unk_101698C30, &unk_101392630);
    }

    v292 = v19;
    v33 = *(v0 + 848);
    v34 = *(v0 + 1265);
    v35 = *(v0 + 696);
    v37 = v35[3];
    v36 = v35[4];
    sub_1000035D0(v35, v37);
    (*(*(*(v36 + 8) + 8) + 32))(v37);
    v304 = v18;
    v38 = v21;
    if (v34)
    {
      *(v0 + 256) = &type metadata for SecondaryIndex;
      v39 = sub_10022A4D4();
    }

    else
    {
      *(v0 + 256) = &type metadata for PrimaryIndex;
      v39 = sub_10002A2B8();
    }

    v40 = *(v0 + 848);
    v41 = *(v0 + 808);
    v42 = *(v0 + 800);
    v43 = *(v0 + 736);
    v44 = *(v0 + 728);
    v45 = *(v0 + 720);
    v46 = *(v0 + 1267);
    *(v0 + 264) = v39;
    *(v0 + 232) = v301;
    sub_100031694((v0 + 232), v0 + 192);
    (*(v41 + 16))(v43, v40, v42);
    sub_10001F280(v0 + 192, v43 + *(v44 + 20));
    sub_1012DE5A0(v43, v46, (v0 + 16));
    sub_10073AA30(v43, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 192));
    v47 = *(v41 + 8);
    v47(v40, v42);
    v48 = *(v0 + 40);
    v49 = v48 >> 60;
    v50 = v48 >> 60 != 15;
    if (v48 >> 60 == 15)
    {
      v17 = v298;
      if (v292)
      {
        v17 = v301;
      }

      v21 = v38;
    }

    else
    {
      v267 = v48 >> 60;
      v51 = *(v0 + 784);
      v52 = *(v0 + 1265);
      v53 = *(v0 + 696);
      *v281 = *(v0 + 16);
      *(v0 + 488) = *(v0 + 32);
      *(v0 + 576) = *(v0 + 48);
      v54 = v53[3];
      v55 = v53[4];
      sub_1000035D0(v53, v54);
      (*(v55 + 192))(v54, v55);
      v287 = v38;
      v270 = v48;
      v273 = v47;
      if (v52)
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v56 = *(qword_10177B348 + 40);
        v57 = v277;
        OS_dispatch_queue.sync<A>(execute:)();
        v58 = *(v0 + 632);
        KeyPath = swift_getKeyPath();
        v60 = sub_1010790F4(KeyPath, v58);
        if (v61)
        {
          v306 = 0;
          v307 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);
          *(v0 + 560) = 0;
          v192 = (v0 + 568);
          *(v0 + 568) = 0xE000000000000000;
          v195._countAndFlagsBits = 0xD000000000000026;
          v195._object = 0x800000010134CA80;
          v194 = (v0 + 560);
          String.append(_:)(v195);
          *(v0 + 624) = KeyPath;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
          goto LABEL_103;
        }

        v62 = v60;

        if (v62 < 0)
        {
          goto LABEL_125;
        }
      }

      else
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v63 = *(qword_10177B348 + 40);
        v57 = v277;
        OS_dispatch_queue.sync<A>(execute:)();
        v64 = *(v0 + 608);
        v65 = swift_getKeyPath();
        v66 = sub_1010790F4(v65, v64);
        if (v67)
        {
          v306 = 0;
          v307 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);
          *(v0 + 544) = 0;
          v192 = (v0 + 552);
          *(v0 + 552) = 0xE000000000000000;
          v193._countAndFlagsBits = 0xD000000000000026;
          v193._object = 0x800000010134CA80;
          v194 = (v0 + 544);
          String.append(_:)(v193);
          *(v0 + 616) = v65;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
LABEL_103:
          _print_unlocked<A, B>(_:_:)();
          v196 = *v194;
          v197 = *v192;
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v62 = v66;

        if (v62 < 0)
        {
          goto LABEL_126;
        }
      }

      v277 = v57;
      v68 = *(v0 + 1000);
      v69 = *(v0 + 992);
      v70 = *(v0 + 960);
      v259 = *(v0 + 984);
      v262 = *(v0 + 952);
      v71 = *(v0 + 936);
      v72 = *(v0 + 784);
      v73 = *(v0 + 776);
      v74 = *(v0 + 768);
      sub_1008849E8(v72, v301, v62, v68);
      (*(v73 + 8))(v72, v74);
      (*(v69 + 16))(v70 + *(v71 + 20), v68, v259);
      *v70 = v301;
      v75 = v70 + *(v71 + 24);
      v76 = *(v0 + 488);
      *v75 = *v281;
      *(v75 + 2) = v76;
      *(v75 + 3) = v270;
      *(v75 + 2) = *(v0 + 576);
      sub_100739F64(v70, v262);
      v18 = v304;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_100A5BDF0(0, v304[2] + 1, 1, v304);
      }

      v47 = v273;
      v78 = v18[2];
      v77 = v18[3];
      if (v78 >= v77 >> 1)
      {
        v18 = sub_100A5BDF0(v77 > 1, v78 + 1, 1, v18);
      }

      v79 = *(v0 + 952);
      v80 = *(v0 + 944);
      v18[2] = v78 + 1;
      sub_1000185B4(v79, v18 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v78, type metadata accessor for TimeBasedKey);
      if (v292)
      {
        v81 = *(v0 + 1000);
        v82 = *(v0 + 992);
        v83 = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        (*(v82 + 8))(v81, v83);
        v17 = 0;
        v21 = v287;
      }

      else
      {
        v84 = v301 - 1;
        if (!v301)
        {
          goto LABEL_127;
        }

        if (v84 < v298)
        {
          goto LABEL_128;
        }

        v21 = v287;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100A5BCE0(0, *(v287 + 2) + 1, 1, v287);
        }

        v86 = *(v21 + 2);
        v85 = *(v21 + 3);
        if (v86 >= v85 >> 1)
        {
          v21 = sub_100A5BCE0((v85 > 1), v86 + 1, 1, v21);
        }

        v87 = *(v0 + 1000);
        v88 = *(v0 + 992);
        v89 = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        (*(v88 + 8))(v87, v89);
        *(v21 + 2) = v86 + 1;
        v90 = &v21[16 * v86];
        *(v90 + 4) = v298;
        *(v90 + 5) = v84;
        v17 = 0;
      }

      v49 = v267;
      v50 = 1;
    }

    v91 = *(v0 + 1072);
    v20 = *(v0 + 1088);
    if (v91 == *(v0 + 712))
    {
      break;
    }

    v19 = v50;
    v16 = v91 + 1;
    if (v91 == -1)
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
      goto LABEL_129;
    }
  }

  v93 = *(v0 + 680);

  if (v49 >= 0xF)
  {
    if (v17 > *(v0 + 712))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_56;
    }

    v21 = sub_100A5BCE0(0, *(v21 + 2) + 1, 1, v21);
LABEL_56:
    v95 = *(v21 + 2);
    v94 = *(v21 + 3);
    if (v95 >= v94 >> 1)
    {
      v21 = sub_100A5BCE0((v94 > 1), v95 + 1, 1, v21);
    }

    v96 = *(v0 + 712);
    *(v21 + 2) = v95 + 1;
    v97 = &v21[16 * v95];
    *(v97 + 4) = v17;
    *(v97 + 5) = v96;
  }

  v305 = v18;
  v274 = v47;
  if (!v18[2])
  {

    static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v119 = *(v0 + 824);
    v120 = *(v0 + 800);
    v121 = *(v0 + 720);
    v283 = *(v0 + 1265);
    v289 = *(v0 + 704);
    v294 = *(v0 + 712);
    v122 = *(v0 + 696);
    v123 = *(v0 + 808) + 8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1013917A0;
    *(v0 + 648) = *v121;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v125 = String.init<A>(describing:)();
    v127 = v126;
    *(v124 + 56) = &type metadata for String;
    v128 = sub_100008C00();
    *(v124 + 32) = v125;
    *(v124 + 40) = v127;
    *(v124 + 96) = &type metadata for String;
    *(v124 + 104) = v128;
    *(v124 + 64) = v128;
    *(v124 + 72) = 0xD00000000000004DLL;
    *(v124 + 80) = 0x800000010135DB80;
    v129 = v122[3];
    v130 = v122[4];
    sub_1000035D0(v122, v129);
    (*(*(*(v130 + 8) + 8) + 32))(v129);
    v131 = UUID.uuidString.getter();
    v133 = v132;
    v274(v119, v120);
    *(v124 + 136) = &type metadata for String;
    *(v124 + 144) = v128;
    *(v124 + 112) = v131;
    *(v124 + 120) = v133;
    v134 = 0x7972616D6972702ELL;
    if (v283)
    {
      v134 = 0x61646E6F6365732ELL;
    }

    v135 = 0xE800000000000000;
    if (v283)
    {
      v135 = 0xEA00000000007972;
    }

    *(v124 + 176) = &type metadata for String;
    *(v124 + 184) = v128;
    *(v124 + 152) = v134;
    *(v124 + 160) = v135;
    *(v124 + 216) = &type metadata for UInt64;
    *(v124 + 224) = &protocol witness table for UInt64;
    *(v124 + 192) = v289;
    *(v124 + 256) = &type metadata for UInt64;
    *(v124 + 264) = &protocol witness table for UInt64;
    *(v124 + 232) = v294;
    os_log(_:dso:log:_:_:)();

    goto LABEL_78;
  }

  if (*(v21 + 2))
  {
    v288 = v21;
    static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v98 = *(v0 + 832);
    v99 = *(v0 + 800);
    v100 = *(v0 + 720);
    v278 = *(v0 + 1265);
    v293 = *(v0 + 712);
    v282 = *(v0 + 704);
    v101 = *(v0 + 696);
    v102 = *(v0 + 808) + 8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_10138B420;
    *(v0 + 672) = *v100;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v104 = String.init<A>(describing:)();
    v106 = v105;
    *(v103 + 56) = &type metadata for String;
    v107 = sub_100008C00();
    *(v103 + 32) = v104;
    *(v103 + 40) = v106;
    *(v103 + 96) = &type metadata for String;
    *(v103 + 104) = v107;
    *(v103 + 64) = v107;
    *(v103 + 72) = 0xD00000000000004DLL;
    *(v103 + 80) = 0x800000010135DB80;
    v108 = v101[3];
    v109 = v101[4];
    sub_1000035D0(v101, v108);
    (*(*(*(v109 + 8) + 8) + 32))(v108);
    v110 = UUID.uuidString.getter();
    v112 = v111;
    v274(v98, v99);
    *(v103 + 136) = &type metadata for String;
    *(v103 + 144) = v107;
    *(v103 + 112) = v110;
    *(v103 + 120) = v112;
    v113 = 0x7972616D6972702ELL;
    if (v278)
    {
      v113 = 0x61646E6F6365732ELL;
    }

    v114 = 0xE800000000000000;
    if (v278)
    {
      v114 = 0xEA00000000007972;
    }

    *(v103 + 176) = &type metadata for String;
    *(v103 + 184) = v107;
    *(v103 + 152) = v113;
    *(v103 + 160) = v114;
    *(v103 + 216) = &type metadata for UInt64;
    *(v103 + 224) = &protocol witness table for UInt64;
    *(v103 + 192) = v282;
    *(v103 + 256) = &type metadata for UInt64;
    *(v103 + 264) = &protocol witness table for UInt64;
    *(v103 + 232) = v293;
    *(v103 + 296) = sub_1000BC4D4(&qword_1016A7CD0, &qword_1013B6E40);
    *(v103 + 304) = sub_1000041A4(&qword_1016A7CD8, &qword_1016A7CD0, &qword_1013B6E40);
    *(v103 + 272) = v288;
    swift_bridgeObjectRetain_n();
    os_log(_:dso:log:_:_:)();

    v302 = 0;
    goto LABEL_117;
  }

  static os_log_type_t.default.getter();
  if (qword_101694A20 != -1)
  {
    swift_once();
  }

  v198 = *(v0 + 840);
  v199 = *(v0 + 800);
  v200 = *(v0 + 720);
  v285 = *(v0 + 1265);
  v291 = *(v0 + 704);
  v296 = *(v0 + 712);
  v201 = *(v0 + 696);
  v202 = *(v0 + 808) + 8;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v203 = swift_allocObject();
  *(v203 + 16) = xmmword_1013917A0;
  *(v0 + 664) = *v200;
  sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
  v204 = String.init<A>(describing:)();
  v206 = v205;
  *(v203 + 56) = &type metadata for String;
  v207 = sub_100008C00();
  *(v203 + 32) = v204;
  *(v203 + 40) = v206;
  *(v203 + 96) = &type metadata for String;
  *(v203 + 104) = v207;
  *(v203 + 64) = v207;
  *(v203 + 72) = 0xD00000000000004DLL;
  *(v203 + 80) = 0x800000010135DB80;
  v208 = v201[3];
  v209 = v201[4];
  sub_1000035D0(v201, v208);
  (*(*(*(v209 + 8) + 8) + 32))(v208);
  v210 = UUID.uuidString.getter();
  v212 = v211;
  v274(v198, v199);
  *(v203 + 136) = &type metadata for String;
  *(v203 + 144) = v207;
  *(v203 + 112) = v210;
  *(v203 + 120) = v212;
  v213 = 0x7972616D6972702ELL;
  if (v285)
  {
    v213 = 0x61646E6F6365732ELL;
  }

  v214 = 0xE800000000000000;
  if (v285)
  {
    v214 = 0xEA00000000007972;
  }

  *(v203 + 176) = &type metadata for String;
  *(v203 + 184) = v207;
  *(v203 + 152) = v213;
  *(v203 + 160) = v214;
  *(v203 + 216) = &type metadata for UInt64;
  *(v203 + 224) = &protocol witness table for UInt64;
  *(v203 + 192) = v291;
  *(v203 + 256) = &type metadata for UInt64;
  *(v203 + 264) = &protocol witness table for UInt64;
  *(v203 + 232) = v296;
  os_log(_:dso:log:_:_:)();

LABEL_115:
  v288 = 0;
  v136 = 1;
LABEL_116:
  v302 = v136;
LABEL_117:
  v231 = *(v0 + 1048);
  v232 = *(v0 + 1024);
  v233 = *(v0 + 1016);
  v234 = *(v0 + 1008);
  v235 = *(v0 + 1000);
  v236 = *(v0 + 976);
  v237 = *(v0 + 968);
  v238 = *(v0 + 960);
  v239 = *(v0 + 952);
  v240 = *(v0 + 928);
  v254 = *(v0 + 904);
  v255 = *(v0 + 896);
  v256 = *(v0 + 888);
  v257 = *(v0 + 880);
  v258 = *(v0 + 872);
  v261 = *(v0 + 864);
  v264 = *(v0 + 856);
  v266 = *(v0 + 848);
  v269 = *(v0 + 840);
  v272 = *(v0 + 832);
  v276 = *(v0 + 824);
  v280 = *(v0 + 792);
  v286 = *(v0 + 784);
  v297 = *(v0 + 760);
  v300 = *(v0 + 736);

  v241 = *(v0 + 8);

  return v241(v305, v288, v302);
}

uint64_t sub_100733DE8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1104);
  v8 = *v3;
  v6[139] = v2;

  v9 = v6[112];
  v10 = v6[111];
  v11 = v6[100];
  v12 = v6[101] + 8;
  if (v2)
  {
    v13 = *v12;
    v6[156] = *v12;
    v6[157] = v12 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v11);
    v13(v9, v11);
    v14 = sub_100737CF8;
  }

  else
  {
    v6[140] = a2;
    v6[141] = a1;
    v15 = *v12;
    v6[142] = *v12;
    v6[143] = v12 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v10, v11);
    v15(v9, v11);
    v14 = sub_100733FE8;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_100733FE8()
{
  v1 = v0[140];
  if (v1 >> 60 == 15)
  {
    v2 = v0[143];
    v3 = v0[142];
    v4 = v0[110];
    v5 = v0[109];
    v6 = v0[100];
    v7 = v0[87];
    v9 = v7[3];
    v8 = v7[4];
    sub_1000035D0(v7, v9);
    (*(*(*(v8 + 8) + 8) + 32))(v9);
    LOBYTE(v8) = sub_100DE8BCC(v4, v5);
    v3(v4, v6);
    if (v8)
    {
      v10 = v0[110];
      v11 = v0[87];
      v12 = v11[3];
      v13 = v11[4];
      sub_1000035D0(v11, v12);
      (*(*(*(v13 + 8) + 8) + 32))(v12);
      if (qword_1016954F8 != -1)
      {
        swift_once();
      }

      v14 = v0[110];
      v15 = v0[109];
      v16 = v0[102];
      v17 = v0[101];
      v18 = v0[100];
      v0[144] = qword_1016CCD18;
      (*(v17 + 16))(v15, v14, v18);
      v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v20 = swift_allocObject();
      v0[145] = v20;
      (*(v17 + 32))(v20 + v19, v15, v18);
      sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
      sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060);
      v22 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100734348, v22, v21);
    }

    v23 = 0;
    v1 = 0xF000000000000000;
  }

  else
  {
    v23 = v0[141];
  }

  v0[147] = v1;
  v0[146] = v23;
  v24 = v0[132];
  v25 = v0[108];
  v26 = v0[107];
  v27 = v0[90];
  v28 = v0[87];
  v29 = v0[57];
  v30 = v0[58];
  v31 = sub_1000035D0(v0 + 54, v29);
  v32 = *(v27 + v24);
  v33 = v28[3];
  v34 = v28[4];
  sub_1000035D0(v28, v33);
  (*(*(*(v34 + 8) + 8) + 32))(v33);
  sub_1005F9784();
  v35 = swift_task_alloc();
  v0[148] = v35;
  *v35 = v0;
  v35[1] = sub_10073454C;
  v36 = v0[108];
  v37 = v0[107];

  return sub_1006858D0(v37, v36, v31, v29, v30);
}

uint64_t sub_100734348()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[143];
  v4 = v0[142];
  v5 = v0[110];
  v6 = v0[100];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v4(v5, v6);

  return _swift_task_switch(sub_100734404, 0, 0);
}

uint64_t sub_100734404()
{
  *(v0 + 1168) = xmmword_10138BBF0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 720);
  v5 = *(v0 + 696);
  v6 = *(v0 + 456);
  v7 = *(v0 + 464);
  v8 = sub_1000035D0((v0 + 432), v6);
  v9 = *(v4 + v1);
  v10 = v5[3];
  v11 = v5[4];
  sub_1000035D0(v5, v10);
  (*(*(*(v11 + 8) + 8) + 32))(v10);
  sub_1005F9784();
  v12 = swift_task_alloc();
  *(v0 + 1184) = v12;
  *v12 = v0;
  v12[1] = sub_10073454C;
  v13 = *(v0 + 864);
  v14 = *(v0 + 856);

  return sub_1006858D0(v14, v13, v8, v6, v7);
}

uint64_t sub_10073454C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1184);
  v19 = *v3;
  v4[149] = a1;
  v4[150] = a2;
  v4[151] = v2;

  if (v2)
  {
    v6 = v4[137];
    v7 = v4[136];
    v8 = v4[108];
    v9 = v4[100];
    v10 = *(v4[101] + 8);
    v10(v4[107], v9);
    v10(v8, v9);
    v11 = v4[85];

    v12 = sub_1007380B0;
  }

  else
  {
    v13 = v4[108];
    v14 = v4[107];
    v15 = v4[101];
    v16 = v4[100];
    v17 = *(v15 + 8);
    v4[152] = v17;
    v4[153] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v14, v16);
    v17(v13, v16);
    v12 = sub_100734720;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100734720()
{
  v321 = v0;
  v294 = (v0 + 472);
  if (*(v0 + 1200) >> 60 != 15)
  {
    v278 = (v0 + 680);
    v312 = *(v0 + 1176);
    v27 = *(v0 + 1072);
    v28 = *(v0 + 1008);
    v29 = *(v0 + 792);
    v30 = *(v0 + 776);
    v31 = *(v0 + 768);
    v32 = *(v0 + 1265);
    v33 = *(v0 + 696);
    v34 = v33[3];
    v35 = v33[4];
    sub_1000035D0(v33, v34);
    (*(v35 + 192))(v34, v35);
    v36 = sub_1007382B8(v32 & 1);
    sub_1008849E8(v29, v27, v36, v28);
    (*(v30 + 8))(v29, v31);
    v37 = type metadata accessor for __DataStorage();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = __DataStorage.init(length:)();
    if (v312 >> 60 == 15)
    {
      v305 = 0x2000000000;
      v310 = v40 | 0x4000000000000000;
      sub_100017D5C(0x2000000000, v40 | 0x4000000000000000);
      v313 = *(v0 + 1176);
      v41 = *(v0 + 1168);
    }

    else
    {
      v41 = *(v0 + 1168);
      v305 = v41;
      v310 = *(v0 + 1176);
      v313 = v310;
    }

    v51 = *(v0 + 1200);
    v52 = *(v0 + 1192);
    v53 = *(v0 + 1088);
    v54 = *(v0 + 1008);
    v55 = *(v0 + 992);
    v56 = *(v0 + 984);
    v57 = *(v0 + 760);
    v58 = *(v0 + 744);
    sub_10001F280(v0 + 432, (v57 + 32));
    (*(v55 + 16))(&v57[*(v58 + 28)], v54, v56);
    *v57 = v52;
    *(v57 + 1) = v51;
    *(v57 + 2) = v305;
    *(v57 + 3) = v310;
    sub_10002E98C(v41, v313);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v0 + 1088);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_100A5BE18(0, v60[2] + 1, 1, *(v0 + 1088));
    }

    v62 = v60[2];
    v61 = v60[3];
    if (v62 >= v61 >> 1)
    {
      v60 = sub_100A5BE18(v61 > 1, v62 + 1, 1, v60);
    }

    v63 = *(v0 + 1176);
    v64 = *(v0 + 1168);
    v309 = *(v0 + 1072);
    v65 = *(v0 + 1008);
    v66 = *(v0 + 992);
    v67 = *(v0 + 984);
    v68 = *(v0 + 928);
    v69 = *(v0 + 752);
    v299 = *(v0 + 760);
    v304 = *(v0 + 712);

    sub_100006654(v64, v63);
    v70 = *(v66 + 8);
    v46 = (v66 + 8);
    v70(v65, v67);
    sub_10073AA30(v68, type metadata accessor for SharedBeaconRecord);
    v60[2] = v62 + 1;
    sub_1000185B4(v299, v60 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v62, _s18ConnectionKeyGroupVMa);
    sub_100007BAC((v0 + 432));
    if (v309 != v304)
    {
      v291 = *(v0 + 1208);
      v74 = *(v0 + 1096);
      v75 = *(v0 + 1080);
      v76 = *(v0 + 1268);
      v77 = *(v0 + 1064);
      v78 = *(v0 + 1072);
      goto LABEL_29;
    }

    v71 = *(v0 + 1096);
    v72 = *(v0 + 1080);
    v73 = *(v0 + 680);

    v311 = 0;
    v275 = 2;
    v314 = v60;
    goto LABEL_104;
  }

  if (*(v0 + 1269) == 2)
  {
    v1 = *(v0 + 1224);
    v2 = *(v0 + 1216);
    v3 = *(v0 + 880);
    v4 = *(v0 + 872);
    v5 = *(v0 + 800);
    v6 = *(v0 + 696);
    v8 = v6[3];
    v7 = v6[4];
    sub_1000035D0(v6, v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    LOBYTE(v7) = sub_100DE8BCC(v3, v4);
    v2(v3, v5);
    if (v7)
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 696);
      v10 = type metadata accessor for Logger();
      sub_1000076D4(v10, qword_10177A560);
      sub_10001F280(v9, v0 + 392);
      sub_10001F280(v0 + 432, v0 + 352);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v316 = *(v0 + 1224);
        v13 = *(v0 + 1216);
        v14 = *(v0 + 880);
        v15 = *(v0 + 800);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v319 = v17;
        *v16 = 141558531;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2081;
        v19 = *(v0 + 416);
        v18 = *(v0 + 424);
        sub_1000035D0((v0 + 392), v19);
        (*(*(*(v18 + 8) + 8) + 32))(v19);
        sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v21;
        v13(v14, v15);
        sub_100007BAC((v0 + 392));
        v23 = sub_1000136BC(v20, v22, &v319);

        *(v16 + 14) = v23;
        *(v16 + 22) = 2048;
        v24 = *(v0 + 384);
        sub_1000035D0((v0 + 352), *(v0 + 376));
        v25 = *(v24 + 56);
        dispatch thunk of RawRepresentable.rawValue.getter();
        v26 = *(v0 + 640);
        sub_100007BAC((v0 + 352));
        *(v16 + 24) = v26;
        _os_log_impl(&_mh_execute_header, v11, v12, "Didn't find keys for beacon: %{private,mask.hash}s, requesting download - index %llu.", v16, 0x20u);
        sub_100007BAC(v17);
      }

      else
      {
        sub_100007BAC((v0 + 352));

        sub_100007BAC((v0 + 392));
      }

      v79 = *(v0 + 880);
      v80 = *(v0 + 696);
      v81 = v80[3];
      v82 = v80[4];
      sub_1000035D0(v80, v81);
      (*(*(*(v82 + 8) + 8) + 32))(v81);
      if (qword_1016954F8 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 880);
      v84 = *(v0 + 872);
      v85 = *(v0 + 816);
      v86 = *(v0 + 808);
      v87 = *(v0 + 800);
      *(v0 + 1232) = qword_1016CCD18;
      (*(v86 + 16))(v84, v83, v87);
      v88 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v89 = swift_allocObject();
      *(v0 + 1240) = v89;
      (*(v86 + 32))(v89 + v88, v84, v87);
      sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
      sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060);
      v91 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_10073653C, v91, v90);
    }
  }

  v42 = *(v0 + 1176);
  v43 = *(v0 + 1168);
  sub_10073AA30(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
  sub_100006654(v43, v42);
  v44 = *(v0 + 1072);
  v45 = *(v0 + 712);
  v46 = *(*(v0 + 1088) + 16);
  sub_100007BAC((v0 + 432));
  if (v46 && v44 == v45)
  {
    v47 = *(v0 + 1096);
    v314 = *(v0 + 1088);
    v48 = *(v0 + 1080);
    v49 = *(v0 + 680);

    v311 = 0;
    v50 = 2;
    goto LABEL_103;
  }

  v278 = (v0 + 680);
  v63 = *(v0 + 1216);
  v291 = *(v0 + 1208);
  v74 = *(v0 + 1096);
  v75 = *(v0 + 1080);
  v76 = *(v0 + 1268);
  v77 = *(v0 + 1064);
  while (1)
  {
    v78 = *(v0 + 1072);
    v60 = *(v0 + 1088);
    if (v78 == *(v0 + 712))
    {
      break;
    }

LABEL_29:
    v92 = v78 + 1;
    if (v78 == -1)
    {
      __break(1u);
LABEL_117:
      v46 = sub_100A5BDF0(0, v46[2] + 1, 1, v46);
      goto LABEL_53;
    }

    *(v0 + 1096) = v74;
    *(v0 + 1088) = v60;
    *(v0 + 1080) = v75;
    *(v0 + 1072) = v92;
    LOBYTE(v304) = v76;
    *(v0 + 1268) = v76 & 1;
    v299 = v77;
    *(v0 + 1064) = v77;
    v93 = *(v0 + 920);
    v94 = *(v0 + 912);
    v95 = *(v0 + 904);
    sub_10001F280(*(v0 + 696), v0 + 152);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v96 = swift_dynamicCast();
    v97 = *(v93 + 56);
    if (v96)
    {
      v98 = *(v0 + 928);
      v99 = *(v0 + 912);
      v100 = *(v0 + 904);
      v97(v100, 0, 1, v99);
      sub_1000185B4(v100, v98, type metadata accessor for SharedBeaconRecord);
      v101 = *(v98 + *(v99 + 64));
      *(v0 + 1269) = v101;
      if (v101 == 4 || v101 == 2)
      {
        if (*(v0 + 1265))
        {
          v182 = &type metadata for SecondaryIndex;
          *(v0 + 456) = &type metadata for SecondaryIndex;
          v183 = sub_10022A4D4();
          *(v0 + 464) = v183;
          *(v0 + 432) = v92;
LABEL_113:
          *(v0 + 1168) = xmmword_10138BBF0;
          v262 = *(v0 + 1056);
          v263 = *(v0 + 864);
          v264 = *(v0 + 856);
          v265 = *(v0 + 720);
          v266 = *(v0 + 696);
          v267 = sub_1000035D0((v0 + 432), v182);
          v268 = *(v265 + v262);
          v269 = v266[3];
          v270 = v266[4];
          sub_1000035D0(v266, v269);
          (*(*(*(v270 + 8) + 8) + 32))(v269);
          sub_1005F9784();
          v271 = swift_task_alloc();
          *(v0 + 1184) = v271;
          *v271 = v0;
          v271[1] = sub_10073454C;
          v272 = *(v0 + 864);
          v273 = *(v0 + 856);

          return sub_1006858D0(v273, v272, v267, v182, v183);
        }

        v201 = *(v0 + 928);
        v202 = *(v0 + 912);
        *(v0 + 456) = &type metadata for PrimaryIndex;
        *(v0 + 464) = sub_10002A2B8();
        *(v0 + 432) = v92;
        if (*(v201 + *(v202 + 44)) == -1 || v101 == 4 || *(v201 + *(v202 + 48)) == -1)
        {
          if (qword_101694480 != -1)
          {
            swift_once();
          }

          v247 = *(v0 + 696);
          v248 = type metadata accessor for Logger();
          sub_1000076D4(v248, qword_10177A560);
          sub_10001F280(v247, v0 + 272);
          v249 = Logger.logObject.getter();
          v250 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v249, v250))
          {
            v251 = *(v0 + 880);
            v252 = *(v0 + 808);
            v253 = *(v0 + 800);
            v254 = swift_slowAlloc();
            v255 = swift_slowAlloc();
            v319 = v255;
            *v254 = 141558275;
            *(v254 + 4) = 1752392040;
            *(v254 + 12) = 2081;
            v257 = *(v0 + 296);
            v256 = *(v0 + 304);
            sub_1000035D0((v0 + 272), v257);
            (*(*(*(v256 + 8) + 8) + 32))(v257);
            sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
            v258 = dispatch thunk of CustomStringConvertible.description.getter();
            v260 = v259;
            (*(v252 + 8))(v251, v253);
            sub_100007BAC((v0 + 272));
            v261 = sub_1000136BC(v258, v260, &v319);

            *(v254 + 14) = v261;
            _os_log_impl(&_mh_execute_header, v249, v250, "Skipping connection keys fetching: %{private,mask.hash}s.", v254, 0x16u);
            sub_100007BAC(v255);
          }

          else
          {

            sub_100007BAC((v0 + 272));
          }

          v182 = *(v0 + 456);
          v183 = *(v0 + 464);
          goto LABEL_113;
        }

        v203 = *(v0 + 896);
        v204 = *(v0 + 888);
        v205 = *(v0 + 696);
        v206 = *(*(v0 + 720) + *(v0 + 1056));
        v207 = v205[3];
        v208 = v205[4];
        sub_1000035D0(v205, v207);
        (*(*(*(v208 + 8) + 8) + 32))(v207);
        v209 = getuid();
        sub_1000294F0(v209);
        v210 = swift_task_alloc();
        *(v0 + 1104) = v210;
        *v210 = v0;
        v210[1] = sub_100733DE8;
        v211 = *(v0 + 896);
        v212 = *(v0 + 888);

        return sub_1006868C4(v212, v211, v92);
      }

      sub_10073AA30(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
    }

    else
    {
      v102 = *(v0 + 904);
      v97(v102, 1, 1, *(v0 + 912));
      sub_10000B3A8(v102, &unk_101698C30, &unk_101392630);
    }

    v103 = *(v0 + 848);
    v104 = *(v0 + 1265);
    v105 = *(v0 + 696);
    v107 = v105[3];
    v106 = v105[4];
    sub_1000035D0(v105, v107);
    (*(*(*(v106 + 8) + 8) + 32))(v107);
    v315 = v75;
    v317 = v92;
    v309 = v74;
    if (v104)
    {
      v108 = &type metadata for SecondaryIndex;
      v109 = sub_10022A4D4();
    }

    else
    {
      v108 = &type metadata for PrimaryIndex;
      v109 = sub_10002A2B8();
    }

    v110 = *(v0 + 848);
    v111 = *(v0 + 808);
    v112 = *(v0 + 800);
    v113 = *(v0 + 736);
    v114 = *(v0 + 728);
    v115 = *(v0 + 720);
    v74 = *(v0 + 1267);
    *(v0 + 256) = v108;
    *(v0 + 264) = v109;
    v46 = v317;
    *(v0 + 232) = v317;
    sub_100031694((v0 + 232), v0 + 192);
    (*(v111 + 16))(v113, v110, v112);
    sub_10001F280(v0 + 192, v113 + *(v114 + 20));
    sub_1012DE5A0(v113, v74, (v0 + 16));
    sub_10073AA30(v113, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 192));
    v63 = *(v111 + 8);
    v63(v110, v112);
    v116 = *(v0 + 40);
    if (v116 >> 60 == 15)
    {
      v76 = 0;
      v77 = v299;
      if (v304)
      {
        v77 = v317;
      }

      v74 = v309;
      v75 = v315;
    }

    else
    {
      v117 = *(v0 + 784);
      v118 = *(v0 + 1265);
      v119 = *(v0 + 696);
      *v294 = *(v0 + 16);
      *(v0 + 488) = *(v0 + 32);
      *(v0 + 576) = *(v0 + 48);
      v120 = v119[3];
      v121 = v119[4];
      sub_1000035D0(v119, v120);
      (*(v121 + 192))(v120, v121);
      v122 = &unk_10177B000;
      v123 = qword_101694940 == -1;
      if (v118)
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v124 = *(qword_10177B348 + 40);
        v46 = v291;
        OS_dispatch_queue.sync<A>(execute:)();
        v125 = *(v0 + 632);
        KeyPath = swift_getKeyPath();
        v127 = sub_1010790F4(KeyPath, v125);
        if (v128)
        {
          v319 = 0;
          v320 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);
          *(v0 + 560) = 0;
          v213 = (v0 + 568);
          *(v0 + 568) = 0xE000000000000000;
          v214._countAndFlagsBits = 0xD000000000000026;
          v214._object = 0x800000010134CA80;
          v215 = (v0 + 560);
          String.append(_:)(v214);
          *(v0 + 624) = KeyPath;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
LABEL_95:
          _print_unlocked<A, B>(_:_:)();
          v217 = *v215;
          v218 = *v213;
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v122 = v127;

        if ((v122 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      if (!v123)
      {
        swift_once();
      }

      v129 = *(*(v122 + 840) + 40);
      v46 = v291;
      OS_dispatch_queue.sync<A>(execute:)();
      v130 = *(v0 + 608);
      v131 = swift_getKeyPath();
      v132 = sub_1010790F4(v131, v130);
      if (v133)
      {
        v319 = 0;
        v320 = 0xE000000000000000;
        _StringGuts.grow(_:)(40);
        *(v0 + 544) = 0;
        v213 = (v0 + 552);
        *(v0 + 552) = 0xE000000000000000;
        v216._countAndFlagsBits = 0xD000000000000026;
        v216._object = 0x800000010134CA80;
        v215 = (v0 + 544);
        String.append(_:)(v216);
        *(v0 + 616) = v131;
        sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
        goto LABEL_95;
      }

      v122 = v132;

      if (v122 < 0)
      {
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

LABEL_52:
      v288 = v63;
      v291 = v46;
      v134 = *(v0 + 1000);
      v284 = v116;
      v135 = *(v0 + 992);
      v136 = *(v0 + 984);
      v137 = *(v0 + 960);
      v286 = *(v0 + 952);
      v138 = *(v0 + 936);
      v139 = *(v0 + 784);
      v140 = *(v0 + 776);
      v141 = *(v0 + 768);
      sub_1008849E8(v139, v317, v122, v134);
      (*(v140 + 8))(v139, v141);
      (*(v135 + 16))(v137 + *(v138 + 20), v134, v136);
      v63 = v317;
      *v137 = v317;
      v142 = v137 + *(v138 + 24);
      v143 = *(v0 + 488);
      *v142 = *v294;
      *(v142 + 2) = v143;
      *(v142 + 3) = v284;
      *(v142 + 2) = *(v0 + 576);
      sub_100739F64(v137, v286);
      v46 = v315;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_117;
      }

LABEL_53:
      v74 = v309;
      v145 = v46[2];
      v144 = v46[3];
      if (v145 >= v144 >> 1)
      {
        v46 = sub_100A5BDF0(v144 > 1, v145 + 1, 1, v46);
      }

      v146 = *(v0 + 952);
      v147 = *(v0 + 944);
      v46[2] = v145 + 1;
      sub_1000185B4(v146, v46 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v145, type metadata accessor for TimeBasedKey);
      if (v304)
      {
        v148 = *(v0 + 1000);
        v149 = v46;
        v150 = *(v0 + 992);
        v151 = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        v152 = *(v150 + 8);
        v46 = (v150 + 8);
        v152(v148, v151);
        v75 = v149;
        v77 = 0;
        v76 = 1;
        v63 = v288;
      }

      else
      {
        v131 = v63 - 1;
        if (!v63)
        {
          goto LABEL_119;
        }

        if (v131 >= v299)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        v74 = sub_100A5BCE0(0, *(v74 + 2) + 1, 1, v74);
LABEL_60:
        v154 = *(v74 + 2);
        v153 = *(v74 + 3);
        v75 = v46;
        if (v154 >= v153 >> 1)
        {
          v74 = sub_100A5BCE0((v153 > 1), v154 + 1, 1, v74);
        }

        v155 = *(v0 + 1000);
        v156 = *(v0 + 992);
        v157 = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        v158 = *(v156 + 8);
        v46 = (v156 + 8);
        v158(v155, v157);
        *(v74 + 2) = v154 + 1;
        v159 = &v74[16 * v154];
        *(v159 + 4) = v299;
        *(v159 + 5) = v131;
        v76 = 1;
        v77 = 0;
        v63 = v288;
      }
    }
  }

  v160 = *v278;

  if ((v76 & 1) == 0)
  {
    if (v77 > *(v0 + 712))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_66;
    }

    v74 = sub_100A5BCE0(0, *(v74 + 2) + 1, 1, v74);
LABEL_66:
    v162 = *(v74 + 2);
    v161 = *(v74 + 3);
    if (v162 >= v161 >> 1)
    {
      v74 = sub_100A5BCE0((v161 > 1), v162 + 1, 1, v74);
    }

    v163 = *(v0 + 712);
    *(v74 + 2) = v162 + 1;
    v164 = &v74[16 * v162];
    *(v164 + 4) = v77;
    *(v164 + 5) = v163;
  }

  v314 = v75;
  v289 = v63;
  if (v75[2])
  {
    if (*(v74 + 2))
    {
      v311 = v74;
      static os_log_type_t.error.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v165 = *(v0 + 832);
      v166 = *(v0 + 800);
      v167 = *(v0 + 720);
      v292 = *(v0 + 1265);
      v295 = *(v0 + 704);
      v300 = *(v0 + 712);
      v168 = *(v0 + 696);
      v169 = *(v0 + 808) + 8;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_10138B420;
      *(v0 + 672) = *v167;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v171 = String.init<A>(describing:)();
      v173 = v172;
      *(v170 + 56) = &type metadata for String;
      v174 = sub_100008C00();
      *(v170 + 32) = v171;
      *(v170 + 40) = v173;
      *(v170 + 96) = &type metadata for String;
      *(v170 + 104) = v174;
      *(v170 + 64) = v174;
      *(v170 + 72) = 0xD00000000000004DLL;
      *(v170 + 80) = 0x800000010135DB80;
      v175 = v168[3];
      v176 = v168[4];
      sub_1000035D0(v168, v175);
      (*(*(*(v176 + 8) + 8) + 32))(v175);
      v177 = UUID.uuidString.getter();
      v179 = v178;
      v289(v165, v166);
      *(v170 + 136) = &type metadata for String;
      *(v170 + 144) = v174;
      *(v170 + 112) = v177;
      *(v170 + 120) = v179;
      v180 = 0x7972616D6972702ELL;
      if (v292)
      {
        v180 = 0x61646E6F6365732ELL;
      }

      v181 = 0xE800000000000000;
      if (v292)
      {
        v181 = 0xEA00000000007972;
      }

      *(v170 + 176) = &type metadata for String;
      *(v170 + 184) = v174;
      *(v170 + 152) = v180;
      *(v170 + 160) = v181;
      *(v170 + 216) = &type metadata for UInt64;
      *(v170 + 224) = &protocol witness table for UInt64;
      *(v170 + 192) = v295;
      *(v170 + 256) = &type metadata for UInt64;
      *(v170 + 264) = &protocol witness table for UInt64;
      *(v170 + 232) = v300;
      *(v170 + 296) = sub_1000BC4D4(&qword_1016A7CD0, &qword_1013B6E40);
      *(v170 + 304) = sub_1000041A4(&qword_1016A7CD8, &qword_1016A7CD0, &qword_1013B6E40);
      *(v170 + 272) = v311;
      swift_bridgeObjectRetain_n();
      os_log(_:dso:log:_:_:)();

      v275 = 0;
      goto LABEL_104;
    }

    static os_log_type_t.default.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v219 = *(v0 + 840);
    v220 = *(v0 + 800);
    v221 = *(v0 + 720);
    v297 = *(v0 + 1265);
    v302 = *(v0 + 704);
    v307 = *(v0 + 712);
    v222 = *(v0 + 696);
    v223 = *(v0 + 808) + 8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v224 = swift_allocObject();
    *(v224 + 16) = xmmword_1013917A0;
    *(v0 + 664) = *v221;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v225 = String.init<A>(describing:)();
    v227 = v226;
    *(v224 + 56) = &type metadata for String;
    v228 = sub_100008C00();
    *(v224 + 32) = v225;
    *(v224 + 40) = v227;
    *(v224 + 96) = &type metadata for String;
    *(v224 + 104) = v228;
    *(v224 + 64) = v228;
    *(v224 + 72) = 0xD00000000000004DLL;
    *(v224 + 80) = 0x800000010135DB80;
    v229 = v222[3];
    v230 = v222[4];
    sub_1000035D0(v222, v229);
    (*(*(*(v230 + 8) + 8) + 32))(v229);
    v231 = UUID.uuidString.getter();
    v233 = v232;
    v289(v219, v220);
    *(v224 + 136) = &type metadata for String;
    *(v224 + 144) = v228;
    *(v224 + 112) = v231;
    *(v224 + 120) = v233;
    v234 = 0x7972616D6972702ELL;
    if (v297)
    {
      v234 = 0x61646E6F6365732ELL;
    }

    v235 = 0xE800000000000000;
    if (v297)
    {
      v235 = 0xEA00000000007972;
    }

    *(v224 + 176) = &type metadata for String;
    *(v224 + 184) = v228;
    *(v224 + 152) = v234;
    *(v224 + 160) = v235;
    *(v224 + 216) = &type metadata for UInt64;
    *(v224 + 224) = &protocol witness table for UInt64;
    *(v224 + 192) = v302;
    *(v224 + 256) = &type metadata for UInt64;
    *(v224 + 264) = &protocol witness table for UInt64;
    *(v224 + 232) = v307;
    os_log(_:dso:log:_:_:)();

    v311 = 0;
    v50 = 1;
  }

  else
  {

    static os_log_type_t.error.getter();
    if (qword_101694A20 != -1)
    {
      swift_once();
    }

    v184 = *(v0 + 824);
    v185 = *(v0 + 800);
    v186 = *(v0 + 720);
    v296 = *(v0 + 1265);
    v301 = *(v0 + 704);
    v306 = *(v0 + 712);
    v187 = *(v0 + 696);
    v188 = *(v0 + 808) + 8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_1013917A0;
    *(v0 + 648) = *v186;
    sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
    v190 = String.init<A>(describing:)();
    v192 = v191;
    *(v189 + 56) = &type metadata for String;
    v193 = sub_100008C00();
    *(v189 + 32) = v190;
    *(v189 + 40) = v192;
    *(v189 + 96) = &type metadata for String;
    *(v189 + 104) = v193;
    *(v189 + 64) = v193;
    *(v189 + 72) = 0xD00000000000004DLL;
    *(v189 + 80) = 0x800000010135DB80;
    v194 = v187[3];
    v195 = v187[4];
    sub_1000035D0(v187, v194);
    (*(*(*(v195 + 8) + 8) + 32))(v194);
    v196 = UUID.uuidString.getter();
    v198 = v197;
    v289(v184, v185);
    *(v189 + 136) = &type metadata for String;
    *(v189 + 144) = v193;
    *(v189 + 112) = v196;
    *(v189 + 120) = v198;
    v199 = 0x7972616D6972702ELL;
    if (v296)
    {
      v199 = 0x61646E6F6365732ELL;
    }

    v200 = 0xE800000000000000;
    if (v296)
    {
      v200 = 0xEA00000000007972;
    }

    *(v189 + 176) = &type metadata for String;
    *(v189 + 184) = v193;
    *(v189 + 152) = v199;
    *(v189 + 160) = v200;
    *(v189 + 216) = &type metadata for UInt64;
    *(v189 + 224) = &protocol witness table for UInt64;
    *(v189 + 192) = v301;
    *(v189 + 256) = &type metadata for UInt64;
    *(v189 + 264) = &protocol witness table for UInt64;
    *(v189 + 232) = v306;
    os_log(_:dso:log:_:_:)();

    v311 = 0;
    v314 = 0;
    v50 = 3;
  }

LABEL_103:
  v275 = v50;
LABEL_104:
  v236 = *(v0 + 1048);
  v237 = *(v0 + 1024);
  v238 = *(v0 + 1016);
  v239 = *(v0 + 1008);
  v240 = *(v0 + 1000);
  v241 = *(v0 + 976);
  v242 = *(v0 + 968);
  v243 = *(v0 + 960);
  v244 = *(v0 + 952);
  v245 = *(v0 + 928);
  v276 = *(v0 + 904);
  v277 = *(v0 + 896);
  v279 = *(v0 + 888);
  v280 = *(v0 + 880);
  v281 = *(v0 + 872);
  v282 = *(v0 + 864);
  v283 = *(v0 + 856);
  v285 = *(v0 + 848);
  v287 = *(v0 + 840);
  v290 = *(v0 + 832);
  v293 = *(v0 + 824);
  v298 = *(v0 + 792);
  v303 = *(v0 + 784);
  v308 = *(v0 + 760);
  v318 = *(v0 + 736);

  v246 = *(v0 + 8);

  return v246(v314, v311, v275);
}

uint64_t sub_10073653C()
{
  v1 = v0[155];
  v2 = v0[154];
  v3 = v0[153];
  v4 = v0[152];
  v5 = v0[110];
  v6 = v0[100];
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v4(v5, v6);

  return _swift_task_switch(sub_1007365F8, 0, 0);
}

uint64_t sub_1007365F8()
{
  v233 = v0;
  v1 = *(v0 + 928);
  sub_100006654(*(v0 + 1168), *(v0 + 1176));
  sub_10073AA30(v1, type metadata accessor for SharedBeaconRecord);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 712);
  v4 = *(*(v0 + 1088) + 16);
  sub_100007BAC((v0 + 432));
  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v12 = *(v0 + 1096);
    v226 = *(v0 + 1088);
    v13 = *(v0 + 1080);
    v14 = *(v0 + 680);

    v224 = 0;
    v15 = 2;
    goto LABEL_83;
  }

  v6 = *(v0 + 1096);
  v7 = *(v0 + 1080);
  v8 = *(v0 + 1268);
  KeyPath = *(v0 + 1064);
  v10 = *(v0 + 1072);
  if (v10 == *(v0 + 712))
  {
    v11 = *(v0 + 1216);
LABEL_54:
    v78 = *(v0 + 1088);
    v79 = *(v0 + 680);

    if (v8)
    {
LABEL_60:
      v226 = v7;
      if (v7[2])
      {
        if (*(v6 + 2))
        {
          v224 = v6;
          static os_log_type_t.error.getter();
          if (qword_101694A20 != -1)
          {
            swift_once();
          }

          v84 = *(v0 + 832);
          v205 = *(v0 + 800);
          v85 = *(v0 + 720);
          v207 = *(v0 + 1265);
          v211 = *(v0 + 704);
          v216 = *(v0 + 712);
          v86 = *(v0 + 696);
          v87 = *(v0 + 808) + 8;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v88 = swift_allocObject();
          *(v88 + 16) = xmmword_10138B420;
          *(v0 + 672) = *v85;
          sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
          v89 = String.init<A>(describing:)();
          v91 = v90;
          *(v88 + 56) = &type metadata for String;
          v92 = sub_100008C00();
          *(v88 + 32) = v89;
          *(v88 + 40) = v91;
          *(v88 + 96) = &type metadata for String;
          *(v88 + 104) = v92;
          *(v88 + 64) = v92;
          *(v88 + 72) = 0xD00000000000004DLL;
          *(v88 + 80) = 0x800000010135DB80;
          v93 = v86[3];
          v94 = v86[4];
          sub_1000035D0(v86, v93);
          (*(*(*(v94 + 8) + 8) + 32))(v93);
          v95 = UUID.uuidString.getter();
          v97 = v96;
          v11(v84, v205);
          *(v88 + 136) = &type metadata for String;
          *(v88 + 144) = v92;
          *(v88 + 112) = v95;
          *(v88 + 120) = v97;
          v98 = 0x7972616D6972702ELL;
          if (v207)
          {
            v98 = 0x61646E6F6365732ELL;
          }

          v99 = 0xE800000000000000;
          if (v207)
          {
            v99 = 0xEA00000000007972;
          }

          *(v88 + 176) = &type metadata for String;
          *(v88 + 184) = v92;
          *(v88 + 152) = v98;
          *(v88 + 160) = v99;
          *(v88 + 216) = &type metadata for UInt64;
          *(v88 + 224) = &protocol witness table for UInt64;
          *(v88 + 192) = v211;
          *(v88 + 256) = &type metadata for UInt64;
          *(v88 + 264) = &protocol witness table for UInt64;
          *(v88 + 232) = v216;
          *(v88 + 296) = sub_1000BC4D4(&qword_1016A7CD0, &qword_1013B6E40);
          *(v88 + 304) = sub_1000041A4(&qword_1016A7CD8, &qword_1016A7CD0, &qword_1013B6E40);
          *(v88 + 272) = v224;
          swift_bridgeObjectRetain_n();
          os_log(_:dso:log:_:_:)();

          v230 = 0;
          goto LABEL_84;
        }

        static os_log_type_t.default.getter();
        if (qword_101694A20 != -1)
        {
          swift_once();
        }

        v116 = *(v0 + 840);
        v209 = *(v0 + 800);
        v117 = *(v0 + 720);
        v213 = *(v0 + 1265);
        v218 = *(v0 + 704);
        v222 = *(v0 + 712);
        v118 = *(v0 + 696);
        v119 = *(v0 + 808) + 8;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_1013917A0;
        *(v0 + 664) = *v117;
        sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
        v121 = String.init<A>(describing:)();
        v123 = v122;
        *(v120 + 56) = &type metadata for String;
        v124 = sub_100008C00();
        *(v120 + 32) = v121;
        *(v120 + 40) = v123;
        *(v120 + 96) = &type metadata for String;
        *(v120 + 104) = v124;
        *(v120 + 64) = v124;
        *(v120 + 72) = 0xD00000000000004DLL;
        *(v120 + 80) = 0x800000010135DB80;
        v125 = v118[3];
        v126 = v118[4];
        sub_1000035D0(v118, v125);
        (*(*(*(v126 + 8) + 8) + 32))(v125);
        v127 = UUID.uuidString.getter();
        v129 = v128;
        v11(v116, v209);
        *(v120 + 136) = &type metadata for String;
        *(v120 + 144) = v124;
        *(v120 + 112) = v127;
        *(v120 + 120) = v129;
        v130 = 0x7972616D6972702ELL;
        if (v213)
        {
          v130 = 0x61646E6F6365732ELL;
        }

        v131 = 0xE800000000000000;
        if (v213)
        {
          v131 = 0xEA00000000007972;
        }

        *(v120 + 176) = &type metadata for String;
        *(v120 + 184) = v124;
        *(v120 + 152) = v130;
        *(v120 + 160) = v131;
        *(v120 + 216) = &type metadata for UInt64;
        *(v120 + 224) = &protocol witness table for UInt64;
        *(v120 + 192) = v218;
        *(v120 + 256) = &type metadata for UInt64;
        *(v120 + 264) = &protocol witness table for UInt64;
        *(v120 + 232) = v222;
        os_log(_:dso:log:_:_:)();

        v224 = 0;
        v15 = 1;
      }

      else
      {

        static os_log_type_t.error.getter();
        if (qword_101694A20 != -1)
        {
          swift_once();
        }

        v100 = *(v0 + 824);
        v208 = *(v0 + 800);
        v101 = *(v0 + 720);
        v212 = *(v0 + 1265);
        v217 = *(v0 + 704);
        v221 = *(v0 + 712);
        v102 = *(v0 + 696);
        v103 = *(v0 + 808) + 8;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1013917A0;
        *(v0 + 648) = *v101;
        sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
        v105 = String.init<A>(describing:)();
        v107 = v106;
        *(v104 + 56) = &type metadata for String;
        v108 = sub_100008C00();
        *(v104 + 32) = v105;
        *(v104 + 40) = v107;
        *(v104 + 96) = &type metadata for String;
        *(v104 + 104) = v108;
        *(v104 + 64) = v108;
        *(v104 + 72) = 0xD00000000000004DLL;
        *(v104 + 80) = 0x800000010135DB80;
        v109 = v102[3];
        v110 = v102[4];
        sub_1000035D0(v102, v109);
        (*(*(*(v110 + 8) + 8) + 32))(v109);
        v111 = UUID.uuidString.getter();
        v113 = v112;
        v11(v100, v208);
        *(v104 + 136) = &type metadata for String;
        *(v104 + 144) = v108;
        *(v104 + 112) = v111;
        *(v104 + 120) = v113;
        v114 = 0x7972616D6972702ELL;
        if (v212)
        {
          v114 = 0x61646E6F6365732ELL;
        }

        v115 = 0xE800000000000000;
        if (v212)
        {
          v115 = 0xEA00000000007972;
        }

        *(v104 + 176) = &type metadata for String;
        *(v104 + 184) = v108;
        *(v104 + 152) = v114;
        *(v104 + 160) = v115;
        *(v104 + 216) = &type metadata for UInt64;
        *(v104 + 224) = &protocol witness table for UInt64;
        *(v104 + 192) = v217;
        *(v104 + 256) = &type metadata for UInt64;
        *(v104 + 264) = &protocol witness table for UInt64;
        *(v104 + 232) = v221;
        os_log(_:dso:log:_:_:)();

        v224 = 0;
        v226 = 0;
        v15 = 3;
      }

LABEL_83:
      v230 = v15;
LABEL_84:
      v132 = *(v0 + 1048);
      v133 = *(v0 + 1024);
      v134 = *(v0 + 1016);
      v135 = *(v0 + 1008);
      v136 = *(v0 + 1000);
      v137 = *(v0 + 976);
      v138 = *(v0 + 968);
      v139 = *(v0 + 960);
      v140 = *(v0 + 952);
      v141 = *(v0 + 928);
      v190 = *(v0 + 904);
      v191 = *(v0 + 896);
      v192 = *(v0 + 888);
      v193 = *(v0 + 880);
      v194 = *(v0 + 872);
      v195 = *(v0 + 864);
      v197 = *(v0 + 856);
      v199 = *(v0 + 848);
      v201 = *(v0 + 840);
      v203 = *(v0 + 832);
      v206 = *(v0 + 824);
      v210 = *(v0 + 792);
      v214 = *(v0 + 784);
      v219 = *(v0 + 760);
      v223 = *(v0 + 736);

      v142 = *(v0 + 8);

      return v142(v226, v224, v230);
    }

    if (KeyPath > *(v0 + 712))
    {
      __break(1u);
    }

    else if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_57:
      v81 = *(v6 + 2);
      v80 = *(v6 + 3);
      if (v81 >= v80 >> 1)
      {
        v6 = sub_100A5BCE0((v80 > 1), v81 + 1, 1, v6);
      }

      v82 = *(v0 + 712);
      *(v6 + 2) = v81 + 1;
      v83 = &v6[16 * v81];
      *(v83 + 4) = KeyPath;
      *(v83 + 5) = v82;
      goto LABEL_60;
    }

    v6 = sub_100A5BCE0(0, *(v6 + 2) + 1, 1, v6);
    goto LABEL_57;
  }

  v215 = (v0 + 472);
  v220 = *(v0 + 1208);
  v16 = *(v0 + 1064);
LABEL_9:
  v225 = v6;
LABEL_10:
  v227 = v7;
  while (1)
  {
    v17 = v10 + 1;
    if (v10 == -1)
    {
      __break(1u);
LABEL_104:
      v231 = 0;
      v232 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);
      *(v0 + 560) = 0;
      v184 = (v0 + 568);
      *(v0 + 568) = 0xE000000000000000;
      v185._countAndFlagsBits = 0xD000000000000026;
      v185._object = 0x800000010134CA80;
      v186 = (v0 + 560);
      String.append(_:)(v185);
      *(v0 + 624) = KeyPath;
      sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
LABEL_106:
      _print_unlocked<A, B>(_:_:)();
      v188 = *v186;
      v189 = *v184;
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *(v0 + 1096) = v6;
    *(v0 + 1080) = v7;
    *(v0 + 1072) = v17;
    *(v0 + 1268) = v8 & 1;
    *(v0 + 1064) = v16;
    v18 = *(v0 + 920);
    v19 = *(v0 + 912);
    v20 = *(v0 + 904);
    sub_10001F280(*(v0 + 696), v0 + 152);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v21 = swift_dynamicCast();
    v22 = *(v18 + 56);
    if (v21)
    {
      break;
    }

    v28 = *(v0 + 904);
    v22(v28, 1, 1, *(v0 + 912));
    sub_10000B3A8(v28, &unk_101698C30, &unk_101392630);
LABEL_19:
    v29 = *(v0 + 848);
    v30 = *(v0 + 1265);
    v31 = *(v0 + 696);
    v32 = v31[3];
    v33 = v31[4];
    sub_1000035D0(v31, v32);
    (*(*(*(v33 + 8) + 8) + 32))(v32);
    v229 = v8;
    if (v30)
    {
      *(v0 + 256) = &type metadata for SecondaryIndex;
      v34 = sub_10022A4D4();
    }

    else
    {
      *(v0 + 256) = &type metadata for PrimaryIndex;
      v34 = sub_10002A2B8();
    }

    KeyPath = *(v0 + 848);
    v35 = *(v0 + 808);
    v36 = *(v0 + 800);
    v37 = *(v0 + 736);
    v38 = *(v0 + 728);
    v39 = *(v0 + 720);
    v40 = *(v0 + 1267);
    *(v0 + 264) = v34;
    *(v0 + 232) = v17;
    sub_100031694((v0 + 232), v0 + 192);
    (*(v35 + 16))(v37, KeyPath, v36);
    sub_10001F280(v0 + 192, v37 + *(v38 + 20));
    sub_1012DE5A0(v37, v40, (v0 + 16));
    sub_10073AA30(v37, type metadata accessor for BeaconKeyManager.IndexInformation);
    sub_100007BAC((v0 + 192));
    v11 = *(v35 + 8);
    v11(KeyPath, v36);
    v41 = *(v0 + 40);
    if (v41 >> 60 != 15)
    {
      v42 = *(v0 + 784);
      v43 = *(v0 + 1265);
      v44 = *(v0 + 696);
      *v215 = *(v0 + 16);
      *(v0 + 488) = *(v0 + 32);
      *(v0 + 576) = *(v0 + 48);
      v45 = v44[3];
      v46 = v44[4];
      sub_1000035D0(v44, v45);
      (*(v46 + 192))(v45, v46);
      if (v43)
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v47 = *(qword_10177B348 + 40);
        OS_dispatch_queue.sync<A>(execute:)();
        v48 = *(v0 + 632);
        KeyPath = swift_getKeyPath();
        v49 = sub_1010790F4(KeyPath, v48);
        if (v50)
        {
          goto LABEL_104;
        }

        v51 = v49;

        if (v51 < 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (qword_101694940 != -1)
        {
          swift_once();
        }

        v52 = *(qword_10177B348 + 40);
        OS_dispatch_queue.sync<A>(execute:)();
        v53 = *(v0 + 608);
        v54 = swift_getKeyPath();
        v55 = sub_1010790F4(v54, v53);
        if (v56)
        {
          v231 = 0;
          v232 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);
          *(v0 + 544) = 0;
          v184 = (v0 + 552);
          *(v0 + 552) = 0xE000000000000000;
          v187._countAndFlagsBits = 0xD000000000000026;
          v187._object = 0x800000010134CA80;
          v186 = (v0 + 544);
          String.append(_:)(v187);
          *(v0 + 616) = v54;
          sub_1000BC4D4(&qword_1016A5870, &qword_1013B3260);
          goto LABEL_106;
        }

        v51 = v55;

        if (v51 < 0)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          swift_once();
          goto LABEL_96;
        }
      }

      v57 = *(v0 + 992);
      v200 = *(v0 + 1000);
      v202 = *(v0 + 984);
      v58 = *(v0 + 960);
      v204 = *(v0 + 952);
      v59 = *(v0 + 784);
      v60 = *(v0 + 776);
      v196 = *(v0 + 768);
      v198 = *(v0 + 936);
      sub_1008849E8(v59, v17, v51, v200);
      (*(v60 + 8))(v59, v196);
      (*(v57 + 16))(v58 + *(v198 + 20), v200, v202);
      *v58 = v17;
      v61 = v58 + *(v198 + 24);
      v62 = *(v0 + 488);
      *v61 = *v215;
      *(v61 + 2) = v62;
      *(v61 + 3) = v41;
      *(v61 + 2) = *(v0 + 576);
      sub_100739F64(v58, v204);
      v7 = v227;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100A5BDF0(0, v227[2] + 1, 1, v227);
      }

      v6 = v225;
      v64 = v7[2];
      v63 = v7[3];
      if (v64 >= v63 >> 1)
      {
        v7 = sub_100A5BDF0(v63 > 1, v64 + 1, 1, v7);
      }

      v65 = *(v0 + 952);
      v66 = *(v0 + 944);
      v7[2] = v64 + 1;
      result = sub_1000185B4(v65, v7 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v64, type metadata accessor for TimeBasedKey);
      if (v229)
      {
        v68 = *(v0 + 1000);
        v69 = *(v0 + 992);
        KeyPath = *(v0 + 984);
        sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
        (*(v69 + 8))(v68, KeyPath);
        v16 = 0;
        v10 = *(v0 + 1072);
        v8 = 1;
        if (v10 != *(v0 + 712))
        {
          goto LABEL_10;
        }

LABEL_53:
        KeyPath = v16;
        goto LABEL_54;
      }

      v70 = v17 - 1;
      if (!v17)
      {
        __break(1u);
LABEL_113:
        __break(1u);
        return result;
      }

      if (v70 < v16)
      {
        goto LABEL_113;
      }

      v228 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100A5BCE0(0, *(v225 + 2) + 1, 1, v225);
      }

      v72 = *(v6 + 2);
      v71 = *(v6 + 3);
      if (v72 >= v71 >> 1)
      {
        v73 = sub_100A5BCE0((v71 > 1), v72 + 1, 1, v6);
      }

      else
      {
        v73 = v6;
      }

      v74 = *(v0 + 1000);
      v75 = *(v0 + 992);
      v76 = *(v0 + 984);
      sub_10073AA30(*(v0 + 960), type metadata accessor for TimeBasedKey);
      (*(v75 + 8))(v74, v76);
      KeyPath = 0;
      v6 = v73;
      *(v73 + 2) = v72 + 1;
      v77 = &v73[16 * v72];
      *(v77 + 4) = v16;
      *(v77 + 5) = v70;
      v10 = *(v0 + 1072);
      v8 = 1;
      v16 = 0;
      v7 = v228;
      if (v10 == *(v0 + 712))
      {
        goto LABEL_54;
      }

      goto LABEL_9;
    }

    if (v229)
    {
      v16 = v17;
    }

    v10 = *(v0 + 1072);
    v8 = 0;
    v6 = v225;
    v7 = v227;
    if (v10 == *(v0 + 712))
    {
      goto LABEL_53;
    }
  }

  v23 = *(v0 + 928);
  v24 = *(v0 + 912);
  v25 = *(v0 + 904);
  v22(v25, 0, 1, v24);
  sub_1000185B4(v25, v23, type metadata accessor for SharedBeaconRecord);
  v26 = *(v23 + *(v24 + 64));
  *(v0 + 1269) = v26;
  if (v26 != 4 && v26 != 2)
  {
    sub_10073AA30(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
    goto LABEL_19;
  }

  if (*(v0 + 1265))
  {
    v143 = &type metadata for SecondaryIndex;
    *(v0 + 456) = &type metadata for SecondaryIndex;
    v144 = sub_10022A4D4();
    *(v0 + 464) = v144;
    *(v0 + 432) = v17;
    goto LABEL_100;
  }

  v145 = *(v0 + 928);
  v146 = *(v0 + 912);
  *(v0 + 456) = &type metadata for PrimaryIndex;
  *(v0 + 464) = sub_10002A2B8();
  *(v0 + 432) = v17;
  if (*(v145 + *(v146 + 44)) != -1 && v26 != 4 && *(v145 + *(v146 + 48)) != -1)
  {
    v147 = *(v0 + 896);
    v148 = *(v0 + 888);
    v149 = *(v0 + 696);
    v150 = *(*(v0 + 720) + *(v0 + 1056));
    v151 = v149[3];
    v152 = v149[4];
    sub_1000035D0(v149, v151);
    (*(*(*(v152 + 8) + 8) + 32))(v151);
    v153 = getuid();
    sub_1000294F0(v153);
    v154 = swift_task_alloc();
    *(v0 + 1104) = v154;
    *v154 = v0;
    v154[1] = sub_100733DE8;
    v155 = *(v0 + 896);
    v156 = *(v0 + 888);

    return sub_1006868C4(v156, v155, v17);
  }

  if (qword_101694480 != -1)
  {
    goto LABEL_111;
  }

LABEL_96:
  v157 = *(v0 + 696);
  v158 = type metadata accessor for Logger();
  sub_1000076D4(v158, qword_10177A560);
  sub_10001F280(v157, v0 + 272);
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = *(v0 + 880);
    v162 = *(v0 + 808);
    v163 = *(v0 + 800);
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v231 = v165;
    *v164 = 141558275;
    *(v164 + 4) = 1752392040;
    *(v164 + 12) = 2081;
    v167 = *(v0 + 296);
    v166 = *(v0 + 304);
    sub_1000035D0((v0 + 272), v167);
    (*(*(*(v166 + 8) + 8) + 32))(v167);
    sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
    v168 = dispatch thunk of CustomStringConvertible.description.getter();
    v170 = v169;
    (*(v162 + 8))(v161, v163);
    sub_100007BAC((v0 + 272));
    v171 = sub_1000136BC(v168, v170, &v231);

    *(v164 + 14) = v171;
    _os_log_impl(&_mh_execute_header, v159, v160, "Skipping connection keys fetching: %{private,mask.hash}s.", v164, 0x16u);
    sub_100007BAC(v165);
  }

  else
  {

    sub_100007BAC((v0 + 272));
  }

  v143 = *(v0 + 456);
  v144 = *(v0 + 464);
LABEL_100:
  *(v0 + 1168) = xmmword_10138BBF0;
  v172 = *(v0 + 1056);
  v173 = *(v0 + 864);
  v174 = *(v0 + 856);
  v175 = *(v0 + 720);
  v176 = *(v0 + 696);
  v177 = sub_1000035D0((v0 + 432), v143);
  v178 = *(v175 + v172);
  v180 = v176[3];
  v179 = v176[4];
  sub_1000035D0(v176, v180);
  (*(*(*(v179 + 8) + 8) + 32))(v180);
  sub_1005F9784();
  v181 = swift_task_alloc();
  *(v0 + 1184) = v181;
  *v181 = v0;
  v181[1] = sub_10073454C;
  v182 = *(v0 + 864);
  v183 = *(v0 + 856);

  return sub_1006858D0(v183, v182, v177, v143, v144);
}

uint64_t sub_100737CF8()
{
  v41 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 696);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_10001F280(v2, v0 + 312);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1248);
    v38 = *(v0 + 1256);
    v39 = *(v0 + 1112);
    v7 = *(v0 + 880);
    v8 = *(v0 + 800);
    v9 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v0 + 336);
    v10 = *(v0 + 344);
    sub_1000035D0((v0 + 312), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v6(v7, v8);
    sub_100007BAC((v0 + 312));
    v15 = sub_1000136BC(v12, v14, &v40);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v16 = *(v0 + 520);
    v17 = *(v0 + 528);
    v18 = *(v0 + 536);
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v40);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error getting connectionKeys for beacon: %{private,mask.hash}s %s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 1112);

    sub_100007BAC((v0 + 312));
  }

  *(v0 + 1168) = xmmword_10138BBF0;
  v23 = *(v0 + 1056);
  v24 = *(v0 + 864);
  v25 = *(v0 + 856);
  v26 = *(v0 + 720);
  v27 = *(v0 + 696);
  v28 = *(v0 + 456);
  v29 = *(v0 + 464);
  v30 = sub_1000035D0((v0 + 432), v28);
  v31 = *(v26 + v23);
  v32 = v27[3];
  v33 = v27[4];
  sub_1000035D0(v27, v32);
  (*(*(*(v33 + 8) + 8) + 32))(v32);
  sub_1005F9784();
  v34 = swift_task_alloc();
  *(v0 + 1184) = v34;
  *v34 = v0;
  v34[1] = sub_10073454C;
  v35 = *(v0 + 864);
  v36 = *(v0 + 856);

  return sub_1006858D0(v36, v35, v30, v28, v29);
}

uint64_t sub_1007380B0()
{
  v1 = v0[135];
  v2 = v0[131];
  v3 = v0[128];
  v4 = v0[127];
  v5 = v0[126];
  v6 = v0[125];
  v7 = v0[122];
  v8 = v0[121];
  v13 = v0[120];
  v14 = v0[119];
  v9 = v0[116];
  v15 = v0[113];
  v16 = v0[112];
  v17 = v0[111];
  v18 = v0[110];
  v19 = v0[109];
  v20 = v0[108];
  v21 = v0[107];
  v22 = v0[106];
  v23 = v0[105];
  v24 = v0[104];
  v25 = v0[103];
  v26 = v0[99];
  v27 = v0[98];
  v28 = v0[95];
  v29 = v0[92];
  sub_100006654(v0[146], v0[147]);
  sub_10073AA30(v9, type metadata accessor for SharedBeaconRecord);
  sub_100007BAC(v0 + 54);

  v10 = v0[1];
  v11 = v0[151];

  return v10();
}

uint64_t sub_1007382B8(char a1)
{
  v1 = qword_101694940 == -1;
  if (a1)
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v2 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v3 = sub_101073C10(v6);

    if ((v3 & 0x8000000000000000) == 0)
    {
      return v3;
    }

    __break(1u);
  }

  if (!v1)
  {
    swift_once();
  }

  v4 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v3 = sub_101073524(v6);

  if ((v3 & 0x8000000000000000) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007383E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v2[10] = v10;
  *v10 = v2;
  v10[1] = sub_100738534;

  return daemon.getter();
}

uint64_t sub_100738534(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100739ED0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100739ED0(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100738710;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100738710(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_100738B98;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 112) = a1;
    v7 = sub_100738840;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100738840()
{
  v1 = v0[9];
  v2 = v0[6];
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
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_100738968;
  v9 = v0[14];
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[2];

  return sub_1010CD424(v12, v10, v11);
}

uint64_t sub_100738968()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100738B1C, 0, 0);
}

uint64_t sub_100738B1C()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100738B98()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_100738C14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_1000BC4D4(&qword_10169E358, &qword_101404C50) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[7] = v5;
  v6 = *(v5 - 8);
  v2[8] = v6;
  v7 = *(v6 + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v2[13] = v12;
  *v12 = v2;
  v12[1] = sub_100738DDC;

  return daemon.getter();
}

uint64_t sub_100738DDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100739ED0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100739ED0(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100738FB8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100738FB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v8 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = sub_1007395D4;
  }

  else
  {
    v6 = v3[14];

    v5 = sub_1007390D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1007390D4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = v3[3];
  v5 = v3[4];
  sub_1000035D0(v3, v4);
  (*(*(*(v5 + 8) + 8) + 32))(v4);
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(v7 + 192))(v6, v7);
  v8 = v3[3];
  v9 = v3[4];
  sub_1000035D0(v3, v8);
  *(v0 + 152) = (*(v9 + 112))(v8, v9) & 1;
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_100739230;
  v11 = *(v0 + 128);
  v12 = *(v0 + 96);
  v13 = *(v0 + 48);

  return sub_1010D4938(v13, v12);
}

uint64_t sub_100739230()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_100739340, v2, 0);
}

uint64_t sub_100739340()
{
  v1 = *(v0 + 40);
  sub_10073A9C0(*(v0 + 48), v1);
  v2 = type metadata accessor for KeySyncSnapshot();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 32);
    sub_10000B3A8(*(v0 + 40), &qword_10169E358, &qword_101404C50);
    v4 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  else
  {
    v5 = *(v0 + 40);
    sub_10112FB78(*(v0 + 152), *(v0 + 32));
    sub_10073AA30(v5, type metadata accessor for KeySyncSnapshot);
  }

  v6 = *(v0 + 128);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = *(v0 + 32);
  sub_1010D4F70(v10, v14, *(v0 + 16));
  sub_10000B3A8(v14, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v13, &qword_10169E358, &qword_101404C50);
  (*(v12 + 8))(v10, v11);
  (*(v8 + 8))(v7, v9);

  return _swift_task_switch(sub_100739528, 0, 0);
}

uint64_t sub_100739528()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1007395D4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  v7 = v0[1];
  v8 = v0[17];

  return v7();
}

uint64_t sub_100739680(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = type metadata accessor for Date();
  v10 = *(v80 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v80);
  v14 = &v64[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v64[-v15];
  v76 = type metadata accessor for UUID();
  v78 = *(v76 - 1);
  v17 = *(v78 + 64);
  v18 = __chkstk_darwin(v76);
  v70 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v77 = &v64[-v21];
  v22 = __chkstk_darwin(v20);
  v24 = &v64[-v23];
  v25 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v22);
  v27 = &v64[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = v28;
  (*(v28 + 16))(v27, a1, a4);
  (*(*(*(a5 + 8) + 8) + 32))(a4);
  v29 = *(a5 + 192);
  v75 = a4;
  v29(a4, a5);
  v30 = *a3;
  v31 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v32 = sub_10088756C(v24, v16, a3 + *(v31 + 36), 0);
  if (((v32 | v30) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v71 = v27;
  v68 = v32;
  v69 = v30;
  v33 = v32 - v30;
  DateInterval.start.getter();
  a3 = sub_10088756C(v24, v16, v14, 0);
  v34 = *(v10 + 8);
  v10 += 8;
  v35 = v80;
  v34(v14, v80);
  DateInterval.end.getter();
  v79 = v24;
  a2 = sub_10088756C(v24, v16, v14, 0);
  v72 = v34;
  result = (v34)(v14, v35);
  v30 = v33;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v73 = v16;
  if ((v33 & 0x8000000000000000) == 0 && v33 >= a3)
  {
    if (qword_101694A18 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_10177B538);
      v39 = v78;
      v40 = v70;
      v41 = v76;
      (*(v78 + 16))(v70, v79, v76);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v67 = v10;
        v45 = v44;
        v66 = swift_slowAlloc();
        v81 = v66;
        *v45 = 141558787;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2081;
        sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
        v65 = v43;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        (*(v39 + 8))(v40, v41);
        v49 = sub_1000136BC(v46, v48, &v81);

        *(v45 + 14) = v49;
        *(v45 + 22) = 2048;
        *(v45 + 24) = a3;
        *(v45 + 32) = 2048;
        *(v45 + 34) = v30;
        _os_log_impl(&_mh_execute_header, v42, v65, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v45, 0x2Au);
        sub_100007BAC(v66);

        v10 = v67;
      }

      else
      {

        (*(v39 + 8))(v40, v41);
      }

      a3 = v41;
      v24 = v77;
      a1 = 1;
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (v68 != v69)
      {
LABEL_14:
        if (a2 < v30)
        {
          if (a1 <= a2)
          {
            v50 = a2;
          }

          else
          {
            v50 = a1;
          }

          goto LABEL_23;
        }
      }

LABEL_18:
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v50 = a2 - v30;
      if (__OFSUB__(a2, v30))
      {
        goto LABEL_33;
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        if (a1 > v50)
        {
          v50 = a1;
        }

LABEL_23:
        v77 = v50;
        a2 = v79;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_30:
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_1000076D4(v51, qword_10177B538);
        v52 = v78;
        (*(v78 + 16))(v24, a2, a3);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = a3;
          a3 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v67 = v10;
          v76 = v56;
          v81 = v56;
          *a3 = 141559043;
          *(a3 + 4) = 1752392040;
          *(a3 + 12) = 2081;
          sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
          v10 = v55;
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v24;
          v60 = v59;
          a2 = *(v52 + 8);
          (a2)(v58, v10);
          v61 = sub_1000136BC(v57, v60, &v81);

          *(a3 + 14) = v61;
          *(a3 + 22) = 2048;
          *(a3 + 24) = a1;
          *(a3 + 32) = 2048;
          v62 = v77;
          *(a3 + 34) = v77;
          *(a3 + 42) = 2048;
          *(a3 + 44) = v30;
          _os_log_impl(&_mh_execute_header, v53, v54, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", a3, 0x34u);
          sub_100007BAC(v76);

          v72(v73, v80);
          (a2)(v79, v10);
        }

        else
        {

          v63 = *(v52 + 8);
          v63(v24, a3);
          v72(v73, v80);
          v63(a2, a3);
          v62 = v77;
        }

        if (v62 >= a1)
        {
          (*(v74 + 8))(v71, v75);
          return a1;
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  v24 = v77;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  a1 = a3 - v33;
  if (__OFSUB__(a3, v33))
  {
    __break(1u);
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    a3 = v76;
    if (v33 < 1)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100739ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s18ConnectionKeyGroupVMa()
{
  result = qword_1016A7D38;
  if (!qword_1016A7D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100739F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100739FC8()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10073ACF0;

  return sub_1012D7B38(v0 + v3);
}

uint64_t sub_10073A094()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BBA4C;

  return sub_1012D7B38(v0 + v3);
}

uint64_t sub_10073A160(uint64_t a1, void (*a2)(char *, uint64_t), unint64_t *a3, char *a4, uint64_t a5)
{
  v76 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v78 = type metadata accessor for UUID();
  v17 = *(v78 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v78);
  v71 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v77 = &v69 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v69 - v24;
  v26 = *(a4 - 1);
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v29, a1, a4);
  (*(*(*(a5 + 8) + 8) + 32))(a4);
  v30 = *(a5 + 192);
  v74 = v29;
  v75 = a4;
  v30(a4, a5);
  v31 = *a3;
  v32 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  if (v31)
  {
    v33 = ~(v31 / 0x60);
  }

  else
  {
    v33 = 0;
  }

  v81 = v16;
  v34 = sub_10088756C(v25, v16, a3 + v32, 1uLL);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v35 = v26;
  v79 = v17;
  v36 = v34 + v33;
  DateInterval.start.getter();
  v37 = v81;
  v38 = sub_10088756C(v25, v81, v14, 1uLL);
  v39 = v82;
  v40 = v83 + 8;
  v41 = *(v83 + 8);
  v41(v14, v82);
  DateInterval.end.getter();
  v80 = v25;
  v42 = v37;
  v16 = v38;
  v25 = sub_10088756C(v25, v42, v14, 1uLL);
  v43 = v39;
  v33 = v36;
  v83 = v40;
  v76 = v41;
  result = (v41)(v14, v43);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v73 = v35;
  if ((v36 & 0x8000000000000000) == 0 && v36 >= v38)
  {
    if (qword_101694A18 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177B538);
      v47 = v79;
      v48 = v71;
      v49 = v78;
      (*(v79 + 16))(v71, v80, v78);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v72 = v33;
        v53 = v52;
        v70 = swift_slowAlloc();
        v84 = v70;
        *v53 = 141558787;
        *(v53 + 4) = 1752392040;
        *(v53 + 12) = 2081;
        sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        (*(v47 + 8))(v48, v49);
        v57 = sub_1000136BC(v54, v56, &v84);

        *(v53 + 14) = v57;
        *(v53 + 22) = 2048;
        *(v53 + 24) = v16;
        *(v53 + 32) = 2048;
        *(v53 + 34) = v72;
        _os_log_impl(&_mh_execute_header, v50, v51, "        Buckets clamped for beacon %{private,mask.hash}s,starting secondary index %llu <= factor %lld -- clamping to 1.", v53, 0x2Au);
        sub_100007BAC(v70);

        v33 = v72;
      }

      else
      {

        (*(v47 + 8))(v48, v49);
      }

      a4 = v77;
      v26 = 1;
      v17 = v79;
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (v33)
      {
LABEL_17:
        if (v25 < v33)
        {
          if (v26 <= v25)
          {
            v58 = v25;
          }

          else
          {
            v58 = v26;
          }

          goto LABEL_26;
        }
      }

LABEL_21:
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v58 = v25 - v33;
      if (__OFSUB__(v25, v33))
      {
        goto LABEL_36;
      }

      if ((v58 & 0x8000000000000000) == 0)
      {
        if (v26 > v58)
        {
          v58 = v26;
        }

LABEL_26:
        v79 = v58;
        a1 = v78;
        v25 = v80;
        if (p_weak_ivar_lyt[323] != -1)
        {
LABEL_33:
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177B538);
        (*(v17 + 16))(a4, v25, a1);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v72 = v33;
          v33 = v62;
          v25 = swift_slowAlloc();
          v84 = v25;
          *v33 = 141559043;
          *(v33 + 4) = 1752392040;
          *(v33 + 12) = 2081;
          sub_100739ED0(&qword_101696930, &type metadata accessor for UUID);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v64 = a4;
          v66 = v65;
          v16 = *(v17 + 8);
          (v16)(v64, a1);
          v67 = sub_1000136BC(v63, v66, &v84);

          *(v33 + 14) = v67;
          *(v33 + 22) = 2048;
          *(v33 + 24) = v26;
          *(v33 + 32) = 2048;
          v68 = v79;
          *(v33 + 34) = v79;
          *(v33 + 42) = 2048;
          *(v33 + 44) = v72;
          _os_log_impl(&_mh_execute_header, v60, v61, "        Buckets for beacon %{private,mask.hash}s,secondary index %llu - %llu (factor %lld).", v33, 0x34u);
          sub_100007BAC(v25);

          v76(v81, v82);
          (v16)(v80, a1);
        }

        else
        {

          v33 = *(v17 + 8);
          (v33)(a4, a1);
          v76(v81, v82);
          (v33)(v25, a1);
          v68 = v79;
        }

        if (v68 >= v26)
        {
          (*(v73 + 8))(v74, v75);
          return v26;
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }

  a4 = v77;
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v26 = v38 - v36;
  if (__OFSUB__(v16, v36))
  {
    __break(1u);
  }

  else if ((v26 & 0x8000000000000000) == 0)
  {
    v17 = v79;
    if (v36 < 1)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10073A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169E358, &qword_101404C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073AA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10073AAC8()
{
  result = sub_10073AB64();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10073AB64()
{
  result = qword_1016A7D48;
  if (!qword_1016A7D48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016A7D48);
  }

  return result;
}

uint64_t sub_10073ABC8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10073ABE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10073AC2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10073AC70(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10073AC9C()
{
  result = qword_1016A7D80;
  if (!qword_1016A7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A7D80);
  }

  return result;
}

uint64_t sub_10073AD2C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for BeaconObservation();
  v9 = v7 - 8;
  v8 = *(v7 - 8);
  v10 = *(v8 + 64);
  __chkstk_darwin(v7);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v3 + 16);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 16))(v12, a1, v14);
  v15 = *(v9 + 28);
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 16))(&v12[v15], a2, v16);
  v12[*(v9 + 32)] = a3;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  sub_10073B64C(v12, v19 + v18);
  type metadata accessor for Transaction();
  v22 = v13;
  v23 = v19;
  v24 = 0;
  v25 = 0;
  static Transaction.named<A>(_:with:)();

  return sub_10073B5F0(v12);
}

uint64_t sub_10073AF28(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v4 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v48 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v47 = &v43 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v43 - v24;
  __chkstk_darwin(v23);
  v27 = &v43 - v26;
  v28 = *(v2 + 16);
  v45 = a1;
  v29 = sub_100035730(a1, sub_10073B524, 0);
  sub_1012BB138(v29, v9);

  v30 = type metadata accessor for BeaconObservation();
  v44 = *(*(v30 - 8) + 48);
  if (v44(v9, 1, v30) == 1)
  {
    sub_10000B3A8(v9, &qword_1016A42E0, &qword_1013B0010);
    v31 = *(v17 + 56);
    v31(v15, 1, 1, v16);
    static Date.distantPast.getter();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      sub_10000B3A8(v15, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v17 + 16))(v15, &v9[*(v30 + 20)], v16);
    sub_10073B5F0(v9);
    v31 = *(v17 + 56);
    v31(v15, 0, 1, v16);
    (*(v17 + 32))(v27, v15, v16);
  }

  Date.advanced(by:)();
  sub_10031A74C();
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v32 = *(v17 + 8);
    v32(v25, v16);
    v32(v27, v16);
    v33 = 0;
  }

  else
  {
    v34 = sub_100035730(v45, sub_10073B55C, 0);
    v35 = v46;
    sub_1012BB138(v34, v46);

    if (v44(v35, 1, v30) == 1)
    {
      sub_10000B3A8(v35, &qword_1016A42E0, &qword_1013B0010);
      v36 = v49;
      v31(v49, 1, 1, v16);
      v37 = v47;
      static Date.distantPast.getter();
      if ((*(v17 + 48))(v36, 1, v16) != 1)
      {
        sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v38 = v49;
      (*(v17 + 16))(v49, v35 + *(v30 + 20), v16);
      sub_10073B5F0(v35);
      v31(v38, 0, 1, v16);
      v37 = v47;
      (*(v17 + 32))(v47, v38, v16);
    }

    v39 = v48;
    Date.advanced(by:)();
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    v41 = *(v17 + 8);
    v41(v39, v16);
    v41(v37, v16);
    v41(v25, v16);
    v41(v27, v16);
    v33 = v40 ^ 1;
  }

  return v33 & 1;
}

uint64_t sub_10073B594()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10073B5F0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconObservation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10073B64C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconObservation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10073B6B0()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();

    v1 = sub_10073BA24(sub_10073C37C, v2);

    v3 = *(v0 + 72);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_10073B760()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    Transaction.capture()();
    v2 = *(v1 + 64);
    (*(v1 + 56))();
  }

  return result;
}

uint64_t sub_10073B7C8()
{
  v1 = v0;
  v2 = sub_10073B6B0();
  v3 = *(v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10058A7BC;
  *(v4 + 24) = v2;
  v15 = sub_1000D2FB0;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10013FE14;
  v14 = &unk_10162FD70;
  v5 = _Block_copy(&v11);

  dispatch_sync(v3, v5);
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  static os_log_type_t.default.getter();
  if (qword_101695078 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v11 = 0x656863534350583CLL;
  v12 = 0xEF203A72656C7564;
  String.append(_:)(v1[1]);
  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = v11;
  v9 = v12;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10073BA24(unint64_t a1, uint64_t a2)
{
  v34 = a1;
  v39 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v38 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v37 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v35 = *(v40 - 8);
  v10 = *(v35 + 64);
  v11 = __chkstk_darwin(v40);
  v36 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  static os_log_type_t.default.getter();
  if (qword_101695078 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  *(v15 + 56) = &type metadata for Double;
  *(v15 + 64) = &protocol witness table for Double;
  v16 = *(v2 + 48);
  *(v15 + 32) = *(v2 + 40);
  *(v15 + 96) = &type metadata for Double;
  *(v15 + 104) = &protocol witness table for Double;
  *(v15 + 72) = v16;
  os_log(_:dso:log:_:_:)();

  v17 = *(v2 + 16);
  v41[0] = 0xD00000000000002BLL;
  v41[1] = 0x800000010135DE80;
  String.append(_:)(v17);
  v18 = v41[0];
  v19 = v41[1];
  v31 = v41[1];
  v32 = v41[0];
  static DispatchQoS.background.getter();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v34;
  *(v21 + 24) = a2;
  type metadata accessor for XPCActivity();
  v22 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v22 + 40) = v23;
  swift_unknownObjectWeakInit();
  *(v22 + 88) = 0;
  v34 = sub_1000BC488();
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  strcpy(v41, "XPCActivity-");
  BYTE5(v41[1]) = 0;
  HIWORD(v41[1]) = -5120;

  v24._countAndFlagsBits = v18;
  v24._object = v19;
  String.append(_:)(v24);
  v33 = v14;
  v30[1] = v41[0];
  v25 = v35;
  (*(v35 + 16))(v36, v14, v40);
  (*(v7 + 104))(v37, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  v41[0] = _swiftEmptyArrayStorage;
  sub_100237258();
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = v31;
  v28 = v32;
  *(v22 + 16) = v26;
  *(v22 + 24) = v28;
  *(v22 + 32) = v27;
  *(v22 + 48) = sub_10073C36C;
  *(v22 + 56) = v20;
  *(v22 + 64) = sub_10073C374;
  *(v22 + 72) = v21;

  sub_100997398();

  (*(v25 + 8))(v33, v40);

  return v22;
}

uint64_t sub_10073BF00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = 2;
    goto LABEL_12;
  }

  if (v4 != 2)
  {

    goto LABEL_12;
  }

  v9 = *(result + 48);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(result + 40);

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 < 9.22337204e18)
  {
    v5 = v9;
    v6 = v10;
    v7 = 707;
    v3 = 1;
    v4 = 256;
LABEL_12:
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}