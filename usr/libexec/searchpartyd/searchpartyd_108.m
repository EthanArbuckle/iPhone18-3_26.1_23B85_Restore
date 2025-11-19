uint64_t sub_100B48338()
{
  v1 = v0[90];
  v2 = v0[85];
  v3 = v0[84];
  sub_10002FF48(v0[76], type metadata accessor for OwnerPeerTrust);
  (*(v2 + 8))(v1, v3);
  v92 = v0[74];
  v94 = v0[85];
  v96 = v0[60];
  v4 = v0[48];
  v5 = sub_10016632C();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B5AC54, v6, v5);

  v8 = v7 + 64;
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);
  v12 = (63 - v10) >> 6;

  v13 = 0;
  v88 = v7 + 64;
  v90 = v7;
  if (!v11)
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        v23 = v0[64];
        v25 = v0[60];
        v24 = v0[61];

        (*(v24 + 56))(v23, 1, 1, v25);
        goto LABEL_12;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  while (1)
  {
    v14 = v13;
LABEL_8:
    v15 = v0[105];
    v16 = v0[104];
    v17 = v0[84];
    v18 = v0[63];
    v98 = v0[62];
    v101 = v0[79];
    v19 = v0;
    v20 = *(v94 + 72) * (__clz(__rbit64(v11)) | (v14 << 6));
    v16(v18, *(v7 + 48) + v20, v17);
    v16(v18 + *(v96 + 48), *(v7 + 56) + v20, v17);
    sub_1000D2AD8(v18, v98, &qword_101698C18, &qword_101390740);
    v21 = v98 + *(v96 + 48);
    v22 = v101 + *(v92 + 20);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    v11 &= v11 - 1;
    sub_10000B3A8(v19[62], &qword_101698C18, &qword_101390740);
    v13 = v14;
    v0 = v19;
    v8 = v88;
    v7 = v90;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  v75 = v19[64];
  v77 = v19[61];
  v76 = v19[62];
  v78 = v19[60];

  sub_1000D2AD8(v76, v75, &qword_101698C18, &qword_101390740);
  (*(v77 + 56))(v75, 0, 1, v78);
  v0 = v19;
LABEL_12:
  v26 = v0[64];
  v28 = v0[60];
  v27 = v0[61];

  if ((*(v27 + 48))(v26, 1, v28) == 1)
  {
    v29 = v0;
    v30 = v0[85];
    v31 = v29[84];
    v32 = v29[67];
    sub_10000B3A8(v29[64], &qword_10169D398, &qword_10139ADE8);
    (*(v30 + 56))(v32, 1, 1, v31);
  }

  else
  {
    v33 = v0[108];
    v34 = v0[107];
    v29 = v0;
    v35 = v0[85];
    v36 = v29[84];
    v37 = v29[67];
    v38 = v29[64];
    v39 = *(v96 + 48);
    v34(v37, v38, v36);
    (*(v35 + 56))(v37, 0, 1, v36);
    (*(v35 + 8))(v38 + v39, v36);
  }

  v11 = v29[102];
  v0 = v29;
  if (v11)
  {
    sub_1000D2A70((v29 + 13), (v29 + 28), &qword_101696920, &unk_10138B200);
    if (v29[31])
    {
      sub_10000A748(v29 + 14, (v29 + 23));
      sub_100007BAC(v29 + 23);
    }

    else
    {
      sub_10000B3A8((v29 + 28), &qword_101696920, &unk_10138B200);
    }
  }

  if (qword_101694C50 != -1)
  {
LABEL_28:
    swift_once();
  }

  v40 = v0[102];
  v41 = v0[83];
  v42 = v0[81];
  v43 = v0[67];
  v44 = v0[65];
  v45 = type metadata accessor for Logger();
  sub_1000076D4(v45, qword_10177BAA0);
  sub_1000D2A70((v0 + 13), (v0 + 18), &qword_101696920, &unk_10138B200);
  sub_1000D2A70(v43, v44, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v41, v42, &unk_1016AF8C0, &unk_1013A07A0);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v11 != 0;
    v49 = v0[85];
    v50 = v0[81];
    v51 = v0[65];
    v52 = v0[58];
    v99 = v0[84];
    v102 = v0[57];
    v53 = swift_slowAlloc();
    *v53 = 67110144;

    *(v53 + 4) = v48;

    *(v53 + 8) = 1024;

    *(v53 + 10) = 0;

    *(v53 + 14) = 1024;
    v54 = v0[21] != 0;
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    *(v53 + 16) = v54;
    *(v53 + 20) = 1024;
    v55 = (*(v49 + 48))(v51, 1, v99) != 1;
    sub_10000B3A8(v51, &qword_1016980D0, &unk_10138F3B0);
    *(v53 + 22) = v55;
    *(v53 + 26) = 1024;
    v56 = (*(v52 + 48))(v50, 1, v102) != 1;
    sub_10000B3A8(v50, &unk_1016AF8C0, &unk_1013A07A0);
    *(v53 + 28) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "Can't post Request Received Notification! beaconName(%{BOOL}d), memberName(%{BOOL}d), beaconRecord(%{BOOL}d), clientShareIdentifier(%{BOOL}d), productInfo(%{BOOL}d).", v53, 0x20u);
  }

  else
  {
    v57 = v0[65];
    sub_10000B3A8(v0[81], &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v57, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8((v0 + 18), &qword_101696920, &unk_10138B200);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v58 = v0[96];
  v59 = v0[83];
  v60 = v0[79];
  v61 = v0[67];
  sub_100B58A3C();
  swift_allocError();
  *v62 = 0;
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v59, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8((v0 + 13), &qword_101696920, &unk_10138B200);
  sub_10002FF48(v60, type metadata accessor for OwnerPeerTrust);
  sub_100007BAC(v0 + 8);
  v63 = v0[91];
  v64 = v0[90];
  v65 = v0[89];
  v66 = v0[88];
  v67 = v0[87];
  v68 = v0[83];
  v69 = v0[82];
  v70 = v0[81];
  v71 = v0[79];
  v72 = v0[78];
  v79 = v0[77];
  v80 = v0[76];
  v81 = v0[73];
  v82 = v0[72];
  v83 = v0[71];
  v84 = v0[69];
  v85 = v0[67];
  v86 = v0[66];
  v87 = v0[65];
  v89 = v0[64];
  v91 = v0[63];
  v93 = v0[62];
  v95 = v0[59];
  v97 = v0[56];
  v100 = v0[54];

  v73 = v0[1];

  return v73();
}

uint64_t sub_100B48C18()
{
  v1 = v0[96];
  swift_unknownObjectRelease();
  v29 = v0[98];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];
  v10 = v0[79];
  v11 = v0[78];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[73];
  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[69];
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[65];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[62];
  v26 = v0[59];
  v27 = v0[56];
  v28 = v0[54];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100B48DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 128) = a5;
  *(v6 + 136) = v5;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  v8 = type metadata accessor for MemberSharingCircle();
  *(v6 + 144) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v10 = *(*(type metadata accessor for Endianness() - 8) + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v11 = type metadata accessor for BeaconProductInfoRecord();
  *(v6 + 168) = v11;
  v12 = *(v11 - 8);
  *(v6 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v14 = type metadata accessor for MemberPeerTrust();
  *(v6 + 192) = v14;
  v15 = *(v14 - 8);
  *(v6 + 200) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v17 = type metadata accessor for SharedBeaconRecord(0);
  *(v6 + 216) = v17;
  v18 = *(v17 - 8);
  *(v6 + 224) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v20 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  *(v6 + 248) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v22 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v6 + 280) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  v24 = type metadata accessor for UUID();
  *(v6 + 312) = v24;
  v25 = *(v24 - 8);
  *(v6 + 320) = v25;
  *(v6 + 328) = *(v25 + 64);
  *(v6 + 336) = swift_task_alloc();
  v26 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v6 + 344) = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  v28 = *(v8 + 24);
  *(v6 + 488) = v28;
  v29 = swift_task_alloc();
  *(v6 + 376) = v29;
  *v29 = v6;
  v29[1] = sub_100B49180;

  return sub_100B57904(a2 + v28);
}

uint64_t sub_100B49180(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[7] = v2;
  v4[8] = a1;
  v4[9] = a2;
  v5 = v3[47];
  v6 = v3[17];
  v8 = *v2;
  v4[48] = a2;

  return _swift_task_switch(sub_100B4929C, v6, 0);
}

uint64_t sub_100B4929C()
{
  v1 = *(*(v0 + 136) + 136);
  *(v0 + 392) = v1;
  return _swift_task_switch(sub_100B492C0, v1, 0);
}

uint64_t sub_100B492C0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 488);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v7 = *(v0 + 104);
  v8 = *(v6 + 16);
  *(v0 + 400) = v8;
  *(v0 + 408) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v2, v5);
  v9 = *(v6 + 80);
  *(v0 + 492) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 416) = v11;
  *(v11 + 16) = v1;
  v12 = *(v6 + 32);
  *(v0 + 424) = v12;
  *(v0 + 432) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v3, v5);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 440) = v14;
  *v14 = v0;
  v14[1] = sub_100B4944C;
  v15 = *(v0 + 368);
  v16 = *(v0 + 344);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC84, v11, v16);
}

uint64_t sub_100B4944C()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 392);
  v5 = *(*v0 + 144);
  v7 = *v0;

  *(v1 + 496) = *(v5 + 32);

  return _swift_task_switch(sub_100B4959C, v4, 0);
}

uint64_t sub_100B4959C()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = (*(v0 + 492) + 24) & ~*(v0 + 492);
  (*(v0 + 400))(v5, *(v0 + 104) + *(v0 + 496), v6);
  v8 = swift_allocObject();
  *(v0 + 448) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 456) = v10;
  *v10 = v0;
  v10[1] = sub_100B496F4;
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC88, v8, v12);
}

uint64_t sub_100B496F4()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 392);
  v5 = *v0;

  return _swift_task_switch(sub_100B49820, v3, 0);
}

uint64_t sub_100B49820()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);
  v5 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = (*(v0 + 492) + 24) & ~*(v0 + 492);
  (*(v0 + 400))(v5, *(v0 + 104) + *(v0 + 488), v6);
  v8 = swift_allocObject();
  *(v0 + 464) = v8;
  *(v8 + 16) = v4;
  v2(v8 + v7, v5, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 472) = v10;
  *v10 = v0;
  v10[1] = sub_100B49978;
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A9C4, v8, v12);
}

uint64_t sub_100B49978()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 136);
  v5 = *v0;

  return _swift_task_switch(sub_100B49AA4, v3, 0);
}

uint64_t sub_100B49AA4()
{
  v169 = v0;
  v1 = *(v0 + 384);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 360);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  sub_1000D2A70(*(v0 + 368), v2, &unk_101698C30, &unk_101392630);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 360);
  if (v5 == 1)
  {
    v7 = &unk_101698C30;
    v8 = &unk_101392630;
LABEL_9:
    sub_10000B3A8(v6, v7, v8);
LABEL_10:
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 384);
    v22 = *(v0 + 368);
    v23 = *(v0 + 352);
    v24 = *(v0 + 304);
    v25 = *(v0 + 288);
    v26 = *(v0 + 272);
    v27 = *(v0 + 256);
    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177BAA0);
    sub_1000D2A70(v22, v23, &unk_101698C30, &unk_101392630);
    sub_1000D2A70(v24, v25, &qword_101698C10, &unk_10138C1E0);
    sub_1000D2A70(v26, v27, &unk_1016AF8C0, &unk_1013A07A0);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 352);
    v33 = *(v0 + 288);
    v34 = *(v0 + 256);
    if (v31)
    {
      v163 = v30;
      v35 = v1 != 0;
      v166 = v29;
      v36 = *(v0 + 224);
      v154 = *(v0 + 216);
      v37 = *(v0 + 200);
      v38 = *(v0 + 176);
      v157 = *(v0 + 192);
      v160 = *(v0 + 168);
      v39 = swift_slowAlloc();
      *v39 = 67109888;

      *(v39 + 4) = v35;

      *(v39 + 8) = 1024;
      LODWORD(v36) = (*(v36 + 48))(v32, 1, v154) != 1;
      sub_10000B3A8(v32, &unk_101698C30, &unk_101392630);
      *(v39 + 10) = v36;
      *(v39 + 14) = 1024;
      LODWORD(v36) = (*(v37 + 48))(v33, 1, v157) != 1;
      sub_10000B3A8(v33, &qword_101698C10, &unk_10138C1E0);
      *(v39 + 16) = v36;
      *(v39 + 20) = 1024;
      LODWORD(v36) = (*(v38 + 48))(v34, 1, v160) != 1;
      sub_10000B3A8(v34, &unk_1016AF8C0, &unk_1013A07A0);
      *(v39 + 22) = v36;
      v29 = v166;
      _os_log_impl(&_mh_execute_header, v166, v163, "Can't create Transparency Notification! beaconName(%{BOOL}d), beaconRecord(%{BOOL}d), ownerPeerTrust(%{BOOL}d), productInfo(%{BOOL}d).", v39, 0x1Au);
    }

    else
    {
      sub_10000B3A8(*(v0 + 256), &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v33, &qword_101698C10, &unk_10138C1E0);
      sub_10000B3A8(v32, &unk_101698C30, &unk_101392630);
      swift_bridgeObjectRelease_n();
    }

    v40 = *(v0 + 368);
    v41 = *(v0 + 304);
    v42 = *(v0 + 272);
    sub_100B58A3C();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    sub_10000B3A8(v42, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v41, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v40, &unk_101698C30, &unk_101392630);
LABEL_16:
    v45 = *(v0 + 360);
    v44 = *(v0 + 368);
    v46 = *(v0 + 352);
    v47 = *(v0 + 336);
    v49 = *(v0 + 296);
    v48 = *(v0 + 304);
    v50 = *(v0 + 288);
    v51 = *(v0 + 264);
    v52 = *(v0 + 272);
    v53 = *(v0 + 256);
    v150 = *(v0 + 240);
    v152 = *(v0 + 232);
    v155 = *(v0 + 208);
    v158 = *(v0 + 184);
    v161 = *(v0 + 160);
    v164 = *(v0 + 152);

    v54 = *(v0 + 8);
    goto LABEL_17;
  }

  v10 = *(v0 + 296);
  v9 = *(v0 + 304);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  sub_100038EDC(v6, *(v0 + 240), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v9, v10, &qword_101698C10, &unk_10138C1E0);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = *(v0 + 296);
  if (v13 == 1)
  {
    sub_10002FF48(*(v0 + 240), type metadata accessor for SharedBeaconRecord);
    v7 = &qword_101698C10;
    v8 = &unk_10138C1E0;
LABEL_8:
    v6 = v14;
    goto LABEL_9;
  }

  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  sub_100038EDC(*(v0 + 296), *(v0 + 208), type metadata accessor for MemberPeerTrust);
  sub_1000D2A70(v15, v16, &unk_1016AF8C0, &unk_1013A07A0);
  v19 = (*(v18 + 48))(v16, 1, v17);
  v14 = *(v0 + 264);
  if (v19 == 1)
  {
    v20 = *(v0 + 208);
    sub_10002FF48(*(v0 + 240), type metadata accessor for SharedBeaconRecord);
    sub_10002FF48(v20, type metadata accessor for MemberPeerTrust);
    v7 = &unk_1016AF8C0;
    v8 = &unk_1013A07A0;
    goto LABEL_8;
  }

  v56 = *(v0 + 184);
  v57 = *(v0 + 168);
  sub_100038EDC(*(v0 + 264), v56, type metadata accessor for BeaconProductInfoRecord);
  if (*(v56 + *(v57 + 36)))
  {

    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 152);
    v59 = *(v0 + 104);
    v60 = type metadata accessor for Logger();
    sub_1000076D4(v60, qword_10177BAA0);
    sub_100B5AAA0(v59, v58, type metadata accessor for MemberSharingCircle);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 312);
      v64 = *(v0 + 144);
      v65 = *(v0 + 152);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v168 = v67;
      *v66 = 141558275;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v68 = *(v64 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      sub_10002FF48(v65, type metadata accessor for MemberSharingCircle);
      v72 = sub_1000136BC(v69, v71, &v168);

      *(v66 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v61, v62, "Hiding beacon %{private,mask.hash}s because productInfo has hidden flag set.", v66, 0x16u);
      sub_100007BAC(v67);
    }

    else
    {
      v79 = *(v0 + 152);

      sub_10002FF48(v79, type metadata accessor for MemberSharingCircle);
    }

    v80 = *(v0 + 368);
    v81 = *(v0 + 304);
    v82 = *(v0 + 272);
    v83 = *(v0 + 240);
    v84 = *(v0 + 208);
    v85 = *(v0 + 184);
    sub_100B58A3C();
    swift_allocError();
    *v86 = 2;
    swift_willThrow();
    sub_10002FF48(v85, type metadata accessor for BeaconProductInfoRecord);
    sub_10002FF48(v83, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v82, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v81, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v80, &unk_101698C30, &unk_101392630);
    sub_10002FF48(v84, type metadata accessor for MemberPeerTrust);
    goto LABEL_16;
  }

  v74 = *(v0 + 120);
  v73 = *(v0 + 128);

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  if (v77)
  {
    v78 = sub_100B5DEBC(v75, v76, v77);
  }

  else
  {
    v78 = 0;
  }

  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v88 = *(v0 + 232);
  v87 = *(v0 + 240);
  v89 = type metadata accessor for Logger();
  sub_1000076D4(v89, qword_10177BAA0);
  sub_100B5AAA0(v87, v88, type metadata accessor for SharedBeaconRecord);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  v92 = os_log_type_enabled(v90, v91);
  v93 = *(v0 + 232);
  if (v92)
  {
    v94 = *(v0 + 216);
    v95 = swift_slowAlloc();
    *v95 = 67109376;
    v96 = *(v0 + 232);
    v98 = *(v93 + *(v94 + 44)) == 76 && (v97 = *(v96 + *(*(v0 + 216) + 48)), !HIDWORD(v97)) && (v97 == 21760 || v97 == 22034);
    sub_10002FF48(v96, type metadata accessor for SharedBeaconRecord);
    *(v95 + 4) = v98;
    *(v95 + 8) = 1024;
    *(v95 + 10) = v78 & 1;
    _os_log_impl(&_mh_execute_header, v90, v91, "create Transparency Notification,\nisAirTag:%{BOOL}d,\nisContainBlockedMembers:%{BOOL}d", v95, 0xEu);
  }

  else
  {
    sub_10002FF48(*(v0 + 232), type metadata accessor for SharedBeaconRecord);
  }

  v100 = *(v0 + 208);
  v102 = *(v0 + 184);
  v101 = *(v0 + 192);
  v103 = *(v0 + 168);

  v104 = (v100 + *(v101 + 32));
  v165 = *v104;
  v167 = v104[1];
  v105 = *(v102 + *(v103 + 112));
  if (v105 == 2)
  {
    v106 = (*(v0 + 184) + *(*(v0 + 168) + 24));
    v107 = v106[1];
    *(v0 + 80) = *v106;
    *(v0 + 88) = v107;
    sub_1000DF96C();

    v108 = Data.init<A>(hexString:)();
    if (v109 >> 60 == 15)
    {
      goto LABEL_56;
    }

    v110 = v108;
    v111 = v109;
    sub_100017D5C(v108, v109);
    v112 = sub_100314594(v110, v111);
    if (v113 >> 60 == 15)
    {
      sub_100006654(v110, v111);
      goto LABEL_56;
    }

    v116 = *(v0 + 160);
    v117 = v112;
    v118 = v113;
    sub_100313B54(v112, v113);
    static Endianness.current.getter();
    sub_10012BF24();
    FixedWidthInteger.init(data:ofEndianness:)();
    sub_100006654(v117, v118);
    sub_100006654(v110, v111);
    v119 = *(v0 + 480);
    if (*(v0 + 484))
    {
      v120 = 0;
    }

    else
    {
      v120 = *(v0 + 480);
    }

    if ((sub_100B8A580(v120) & 0xFE) == 2)
    {
      goto LABEL_56;
    }

LABEL_49:
    if (v78)
    {
      updated = type metadata accessor for ItemShareAirTagCircleUpdateWithBlockedContactUserNotification(0);
      v115 = &off_101617B00;
    }

    else
    {
      updated = type metadata accessor for ItemShareAirTagCircleUpdateUserNotification(0);
      v115 = &off_101617B40;
    }

    goto LABEL_59;
  }

  if (v105)
  {
    goto LABEL_49;
  }

LABEL_56:
  if (v78)
  {
    updated = type metadata accessor for ItemShareCircleUpdateWithBlockedContactUserNotification(0);
    v115 = &off_101617B80;
  }

  else
  {
    updated = type metadata accessor for ItemShareCircleUpdateUserNotification(0);
    v115 = &off_101617BC0;
  }

LABEL_59:
  v136 = *(v0 + 400);
  v137 = *(v0 + 408);
  v138 = *(v0 + 64);
  v145 = *(v0 + 360);
  v146 = *(v0 + 352);
  v135 = *(v0 + 312);
  v142 = *(v0 + 304);
  v143 = *(v0 + 368);
  v147 = *(v0 + 336);
  v148 = *(v0 + 296);
  v149 = *(v0 + 288);
  v151 = *(v0 + 264);
  v153 = *(v0 + 256);
  v139 = *(v0 + 240);
  v140 = *(v0 + 272);
  v156 = *(v0 + 232);
  v144 = *(v0 + 208);
  v121 = *(v0 + 184);
  v122 = *(v0 + 168);
  v159 = *(v0 + 160);
  v162 = *(v0 + 152);
  v123 = *(v0 + 120);
  v124 = *(v0 + 128);
  v125 = *(v0 + 104);
  v126 = *(v0 + 112);
  v141 = *(v0 + 96);
  *(v0 + 40) = updated;
  *(v0 + 48) = v115;
  v127 = sub_1000280DC((v0 + 16));
  sub_100B5AAA0(v125, v127, type metadata accessor for MemberSharingCircle);
  v136(v127 + updated[6], v126, v135);
  v128 = (v121 + *(v122 + 44));
  v130 = *v128;
  v129 = v128[1];
  v131 = (v127 + updated[5]);
  *v131 = v138;
  v131[1] = v1;
  v132 = (v127 + updated[7]);
  *v132 = v123;
  v132[1] = v124;
  v133 = (v127 + updated[8]);
  *v133 = v165;
  v133[1] = v167;
  v134 = (v127 + updated[9]);
  *v134 = v130;
  v134[1] = v129;

  sub_10002FF48(v121, type metadata accessor for BeaconProductInfoRecord);
  sub_10002FF48(v139, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v140, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8(v142, &qword_101698C10, &unk_10138C1E0);
  sub_10000B3A8(v143, &unk_101698C30, &unk_101392630);
  sub_10000A748((v0 + 16), v141);
  sub_10002FF48(v144, type metadata accessor for MemberPeerTrust);

  v54 = *(v0 + 8);
LABEL_17:

  return v54();
}

uint64_t sub_100B4A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = v4;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_100B4AA3C;

  return sub_100B48DE8(v5 + 16, a1, a2, a3, a4);
}

uint64_t sub_100B4AA3C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10095CD5C;
  }

  else
  {
    v4 = sub_100B4AB64;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100B4AB64()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BAA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Post Transparency Notification", v4, 2u);
  }

  v5 = v0[7];

  v6 = *(v5 + 128);
  swift_unownedRetainStrong();
  v7 = v0[5];
  v8 = v0[6];
  v9 = sub_1000035D0(v0 + 2, v7);
  sub_100E1EF8C(v9, 0, 0, v7, *(v8 + 8));

  sub_100007BAC(v0 + 2);
  v10 = v0[1];

  return v10();
}

void sub_100B4ACC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    v4 = _swiftEmptyArrayStorage;
    v5 = *(a1 + 16);
    do
    {
      sub_1000D2A70(v3, &v29, &qword_1016A9F18, &qword_1013D78F0);
      v25 = v29;
      v26 = v30;
      v27 = v31;
      if (*(&v30 + 1))
      {
        sub_10000A748(&v25, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100A5BB04(0, v4[2] + 1, 1, v4);
        }

        v7 = v4[2];
        v6 = v4[3];
        if (v7 >= v6 >> 1)
        {
          v4 = sub_100A5BB04((v6 > 1), v7 + 1, 1, v4);
        }

        v4[2] = v7 + 1;
        sub_10000A748(v28, &v4[5 * v7 + 4]);
      }

      else
      {
        sub_10000B3A8(&v25, &qword_1016A9F18, &qword_1013D78F0);
      }

      v3 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = v4[2];
  if (v8)
  {
    v9 = *(v1 + 128);
    v10 = (v4 + 4);
    do
    {
      sub_10001F280(v10, &v29);
      swift_unownedRetainStrong();
      v11 = *(&v30 + 1);
      v12 = v31;
      v13 = sub_1000035D0(&v29, *(&v30 + 1));
      sub_100E1EF8C(v13, 0, 0, v11, *(v12 + 8));

      sub_100007BAC(&v29);
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BAA0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v23 = v16;
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    v18 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v19 = a1 + 32;
      do
      {
        sub_1000D2A70(v19, &v29, &qword_1016A9F18, &qword_1013D78F0);
        v25 = v29;
        v26 = v30;
        v27 = v31;
        if (*(&v30 + 1))
        {
          sub_10000A748(&v25, v28);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100A5BB04(0, v18[2] + 1, 1, v18);
          }

          v21 = v18[2];
          v20 = v18[3];
          if (v21 >= v20 >> 1)
          {
            v18 = sub_100A5BB04((v20 > 1), v21 + 1, 1, v18);
          }

          v18[2] = v21 + 1;
          sub_10000A748(v28, &v18[5 * v21 + 4]);
        }

        else
        {
          sub_10000B3A8(&v25, &qword_1016A9F18, &qword_1013D78F0);
        }

        v19 += 40;
        --v2;
      }

      while (v2);
    }

    v22 = v18[2];

    *(v17 + 4) = v22;

    _os_log_impl(&_mh_execute_header, v15, v23, "postTransparencyNotifications, notifications count = %ld", v17, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_100B4B064(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100B4B084, 0, 0);
}

uint64_t sub_100B4B084()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_100B4B178;

    return sub_100B4B2BC();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100B4B178()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100B4B290, 0, 0);
}

uint64_t sub_100B4B2DC()
{
  v26 = v0;
  v1 = qword_101698690;
  v0[23] = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  if (qword_101694C50 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v3 = v0[22];
  v4 = type metadata accessor for Logger();
  v0[24] = sub_1000076D4(v4, qword_10177BAA0);
  swift_retain_n();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315650;
    v0[21] = v1;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_1000136BC(v11, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    swift_beginAccess();
    v14 = *(*(v8 + 224) + 16);

    *(v9 + 14) = v14;

    *(v9 + 22) = 2048;
    swift_beginAccess();
    v15 = *(*(v8 + 208) + 16);

    *(v9 + 24) = v15;

    _os_log_impl(&_mh_execute_header, v5, v6, "%s Evaluate notification posting for saved records.\nOwned pairs count: %ld, Member pairs count: %ld.", v9, 0x20u);
    sub_100007BAC(v10);
  }

  else
  {
    v16 = v0[22];
  }

  v17 = v0[22];
  swift_beginAccess();
  v18 = *(v17 + 224);
  v0[25] = v18;
  v0[17] = v18;
  v19 = async function pointer to Sequence.asyncForEach(_:)[1];

  v20 = swift_task_alloc();
  v0[26] = v20;
  v21 = sub_1000BC4D4(&qword_1016B60B0, &qword_1013D7890);
  v22 = sub_100014084(&qword_1016B60B8, &qword_1016B60B0, &qword_1013D7890);
  *v20 = v0;
  v20[1] = sub_100B4B5E8;
  v23 = v0[22];

  return Sequence.asyncForEach(_:)(&unk_1013D7888, v23, v21, v22);
}

uint64_t sub_100B4B5E8()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 176);

    return _swift_task_switch(sub_100B4B728, v7, 0);
  }
}

uint64_t sub_100B4B728()
{
  v1 = v0[22];
  swift_beginAccess();
  v2 = *(v1 + 208);
  v0[27] = v2;
  v0[18] = v2;
  v3 = async function pointer to Sequence.asyncForEach(_:)[1];

  v4 = swift_task_alloc();
  v0[28] = v4;
  v5 = sub_1000BC4D4(&qword_1016B60C0, &qword_1013D78A8);
  v6 = sub_100014084(&qword_1016B60C8, &qword_1016B60C0, &qword_1013D78A8);
  *v4 = v0;
  v4[1] = sub_100B4B850;
  v7 = v0[22];

  return Sequence.asyncForEach(_:)(&unk_1013D78A0, v7, v5, v6);
}

uint64_t sub_100B4B850()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 216);
    v7 = *(v2 + 176);

    return _swift_task_switch(sub_100B4B990, v7, 0);
  }
}

uint64_t sub_100B4B990()
{
  v2 = v0[22];
  v1 = v0[23];
  swift_beginAccess();
  v3 = *(v2 + 216);
  v0[29] = v3;
  v0[19] = v3;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;
  v5 = async function pointer to Sequence.asyncForEach(_:)[1];

  v6 = swift_task_alloc();
  v0[31] = v6;
  v7 = sub_1000BC4D4(&qword_1016B60D0, &qword_1013D78C0);
  v8 = sub_100014084(&qword_1016B60D8, &qword_1016B60D0, &qword_1013D78C0);
  *v6 = v0;
  v6[1] = sub_100B4BAD4;

  return Sequence.asyncForEach(_:)(&unk_1013D78B8, v4, v7, v8);
}

uint64_t sub_100B4BAD4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[29];
    v7 = v2[30];
    v8 = v2[22];

    return _swift_task_switch(sub_100B4BC1C, v8, 0);
  }
}

uint64_t sub_100B4BC1C()
{
  v19 = v0;
  v1 = v0[24];
  v2 = v0[22];
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315906;
    v0[20] = v6;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1000136BC(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    v12 = *(v5[28] + 16);

    *(v7 + 14) = v12;

    *(v7 + 22) = 2048;
    v13 = *(v5[26] + 16);

    *(v7 + 24) = v13;

    *(v7 + 32) = 2048;
    v14 = *(v5[27] + 16);

    *(v7 + 34) = v14;

    _os_log_impl(&_mh_execute_header, v3, v4, "%s After notification posting evaluation:\n    ownerCirclePairs: %ld,\n    memberCirclePairs: %ld,\n    sharedBeaconsPairs: %ld.", v7, 0x2Au);
    sub_100007BAC(v8);
  }

  else
  {
    v15 = v0[22];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100B4BDEC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100B4BEA4, 0, 0);
}

uint64_t sub_100B4BEA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), v1, &unk_1016B1610, &qword_10138CA38);
  v3 = *(v2 + 48);
  *(v0 + 104) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100B4BF74;
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);

  return sub_100B52794(v5, v1 + v3);
}

uint64_t sub_100B4BF74()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100B4C314;
  }

  else
  {
    v5 = *(v2 + 80);
    sub_10002FF48(v5 + *(v2 + 104), type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v5, &unk_1016AFA00, &qword_10138C4D0);
    v4 = sub_100B4C0C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100B4C0C4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), *(v0 + 72), &unk_1016B1610, &qword_10138CA38);
  *(v0 + 108) = *(v1 + 48);

  return _swift_task_switch(sub_100B4C14C, v2, 0);
}

int64_t sub_100B4C14C()
{
  v1 = *(v0 + 108);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1000D2A70(v3, v4, &unk_1016AFA00, &qword_10138C4D0);
  sub_100B5AAA0(v3 + v1, v4 + *(v6 + 48), type metadata accessor for OwnerSharingCircle);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  swift_beginAccess();
  result = sub_100B58AAC(sub_100B5A9A4, v7, &unk_1016B1610, &qword_10138CA38, sub_10060743C);
  v9 = *(*(v5 + 224) + 16);
  if (v9 < result)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 108);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    sub_100A1A2C0(result, v9);
    swift_endAccess();

    sub_10000B3A8(v12, &unk_1016B1610, &qword_10138CA38);
    sub_10002FF48(v11 + v10, type metadata accessor for OwnerSharingCircle);
    sub_10000B3A8(v11, &unk_1016AFA00, &qword_10138C4D0);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_100B4C314()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  sub_10002FF48(v2 + *(v0 + 104), type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);

  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100B4C3D4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100B4C48C, 0, 0);
}

uint64_t sub_100B4C48C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), v1, &unk_1016B1630, &qword_10138CA48);
  v3 = *(v2 + 48);
  *(v0 + 104) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100B4C55C;
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);

  return sub_100B50908(v5, v1 + v3);
}

uint64_t sub_100B4C55C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100B4C8FC;
  }

  else
  {
    v5 = *(v2 + 80);
    sub_10002FF48(v5 + *(v2 + 104), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v5, &unk_101698BC0, &qword_10138C440);
    v4 = sub_100B4C6AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100B4C6AC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1000D2A70(*(v0 + 40), *(v0 + 72), &unk_1016B1630, &qword_10138CA48);
  *(v0 + 108) = *(v1 + 48);

  return _swift_task_switch(sub_100B4C734, v2, 0);
}

int64_t sub_100B4C734()
{
  v1 = *(v0 + 108);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1000D2A70(v3, v4, &unk_101698BC0, &qword_10138C440);
  sub_100B5AAA0(v3 + v1, v4 + *(v6 + 48), type metadata accessor for MemberSharingCircle);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  swift_beginAccess();
  result = sub_100B58AAC(sub_100B5A984, v7, &unk_1016B1630, &qword_10138CA48, sub_100607414);
  v9 = *(*(v5 + 208) + 16);
  if (v9 < result)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 108);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    sub_100A1A3D0(result, v9);
    swift_endAccess();

    sub_10000B3A8(v12, &unk_1016B1630, &qword_10138CA48);
    sub_10002FF48(v11 + v10, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v11, &unk_101698BC0, &qword_10138C440);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_100B4C8FC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  sub_10002FF48(v2 + *(v0 + 104), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);

  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100B4C9BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  v5 = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  *(v4 + 64) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100B4CA7C, 0, 0);
}

uint64_t sub_100B4CA7C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 120);
  sub_1000D2A70(*(v0 + 40), v1, &unk_1016B15C0, &unk_1013D7870);
  v4 = *(v2 + 48);
  *(v0 + 112) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_100B4CB54;
  v6 = *(v0 + 88);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  return sub_100B4CFB8(v6, v1 + v4, v7, v3 & 1);
}

uint64_t sub_100B4CB54()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100B4CEF8;
  }

  else
  {
    v5 = *(v2 + 88);
    sub_10002FF48(v5 + *(v2 + 112), type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v5, &unk_101698C30, &unk_101392630);
    v4 = sub_100B4CCA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100B4CCA4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 40), *(v0 + 80), &unk_1016B15C0, &unk_1013D7870);
  *(v0 + 116) = *(v1 + 48);

  return _swift_task_switch(sub_100B4CD2C, v2, 0);
}

int64_t sub_100B4CD2C()
{
  v1 = *(v0 + 116);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  sub_1000D2A70(v3, v4, &unk_101698C30, &unk_101392630);
  sub_100B5AAA0(v3 + v1, v4 + *(v5 + 48), type metadata accessor for SharedBeaconRecord);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  swift_beginAccess();
  result = sub_100B58AAC(sub_100B5A964, v7, &unk_1016B15C0, &unk_1013D7870, sub_100607428);
  v9 = *(*(v6 + 216) + 16);
  if (v9 < result)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 116);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    sub_100A1A544(result, v9);
    swift_endAccess();

    sub_10000B3A8(v12, &unk_1016B15C0, &unk_1013D7870);
    sub_10002FF48(v11 + v10, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v11, &unk_101698C30, &unk_101392630);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

uint64_t sub_100B4CEF8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  sub_10002FF48(v2 + *(v0 + 112), type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);

  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100B4CFB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 676) = a4;
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  v8 = sub_1000BC4D4(&qword_1016B60A8, &qword_1013D7868);
  *(v5 + 192) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v11 = type metadata accessor for SharedBeaconRecord(0);
  *(v5 + 232) = v11;
  v12 = *(v11 - 8);
  *(v5 + 240) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v14 = type metadata accessor for MemberSharingCircle();
  *(v5 + 272) = v14;
  v15 = *(v14 - 8);
  *(v5 + 280) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v5 + 312) = v17;
  v18 = *(v17 - 8);
  *(v5 + 320) = v18;
  *(v5 + 328) = *(v18 + 64);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v19 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v5 + 352) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  v21 = sub_1000BC4D4(&unk_1016B15C0, &unk_1013D7870);
  *(v5 + 376) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  v23 = swift_task_alloc();
  *(v5 + 408) = v23;
  sub_1000D2A70(a1, v23, &unk_101698C30, &unk_101392630);
  sub_100B5AAA0(a2, v23 + *(v21 + 48), type metadata accessor for SharedBeaconRecord);

  return _swift_task_switch(sub_100B4D318, v4, 0);
}

uint64_t sub_100B4D318()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[29];
  sub_1000D2A70(v0[51], v1, &unk_1016B15C0, &unk_1013D7870);
  v4 = v1 + *(v2 + 48);
  LODWORD(v2) = *(v4 + *(v3 + 64));
  sub_10002FF48(v4, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
  v5 = v0[51];
  if (v2 == 2)
  {
    v6 = v0[49];
    v7 = v0[46];
    v8 = v0[47];
    v9 = v0[29];
    v10 = v0[30];
    sub_1000D2A70(v0[51], v6, &unk_1016B15C0, &unk_1013D7870);
    v11 = *(v8 + 48);
    sub_1000D2AD8(v6, v7, &unk_101698C30, &unk_101392630);
    v12 = *(v10 + 48);
    v0[52] = v12;
    v0[53] = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v13 = v12(v7, 1, v9);
    v14 = v0[46];
    if (v13 == 1)
    {
      sub_10002FF48(v6 + v11, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v14, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v15 = *(v14 + *(v3 + 64));
      sub_10002FF48(v0[46], type metadata accessor for SharedBeaconRecord);
      sub_10002FF48(v6 + v11, type metadata accessor for SharedBeaconRecord);
      if (v15 == 4)
      {
        v5 = v0[51];
        v16 = v0[29];
LABEL_7:
        v17 = v0[50];
        v18 = v0[47];
        v19 = v0[43];
        v20 = v0[39];
        v21 = v0[40];
        v22 = *(v0[23] + 136);
        v0[54] = v22;
        sub_1000D2A70(v5, v17, &unk_1016B15C0, &unk_1013D7870);
        v23 = v17 + *(v18 + 48);
        v24 = *(v16 + 20);
        v25 = *(v21 + 16);
        v0[55] = v25;
        v0[56] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v25(v19, v23 + v24, v20);
        sub_10002FF48(v23, type metadata accessor for SharedBeaconRecord);

        return _swift_task_switch(sub_100B4D6DC, v22, 0);
      }
    }

    v5 = v0[51];
    v16 = v0[29];
    if (v12(v5, 1, v16) == 1)
    {
      goto LABEL_7;
    }
  }

  v26 = v0[49];
  v27 = v0[50];
  v28 = v0[48];
  v30 = v0[45];
  v29 = v0[46];
  v32 = v0[42];
  v31 = v0[43];
  v33 = v0[38];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[33];
  v39 = v0[32];
  v40 = v0[31];
  v41 = v0[28];
  v42 = v0[27];
  v43 = v0[26];
  v44 = v0[25];
  sub_10000B3A8(v5, &unk_1016B15C0, &unk_1013D7870);

  v34 = v0[1];

  return v34();
}

uint64_t sub_100B4D6DC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 336);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 312);
  (*(v0 + 440))(v3, *(v0 + 344), v6);
  v7 = *(v5 + 80);
  *(v0 + 664) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 456) = v9;
  *(v9 + 16) = v2;
  v10 = *(v5 + 32);
  *(v0 + 464) = v10;
  *(v0 + 472) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 480) = v12;
  v13 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v12 = v0;
  v12[1] = sub_100B4D85C;

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x800000010134A8C0, sub_10062CA88, v9, v13);
}

uint64_t sub_100B4D85C()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 432);
  v5 = *v0;

  return _swift_task_switch(sub_100B4D988, v3, 0);
}

uint64_t sub_100B4D988()
{
  v1 = v0[50];
  v2 = v0[43];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[23];
  v6 = *(v4 + 8);
  v0[61] = v6;
  v0[62] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v0[63] = v0[12];
  sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);

  return _swift_task_switch(sub_100B4DA34, v5, 0);
}

uint64_t sub_100B4DA34()
{
  v74 = v0;
  v1 = *(v0 + 504);
  v2 = v1[2];
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v2 >= 2)
  {
    if (qword_101694C50 != -1)
    {
LABEL_30:
      swift_once();
    }

    v4 = *(v0 + 408);
    v5 = *(v0 + 384);
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177BAA0);
    sub_1000D2A70(v4, v5, &unk_1016B15C0, &unk_1013D7870);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 676);
      v10 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v10 = 136315651;
      log = v7;
      v69 = v8;
      v62 = v1;
      if (v9)
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 168) = *(v0 + 176);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v12 = v14;
      }

      v64 = *(v0 + 488);
      v66 = *(v0 + 496);
      v58 = *(v0 + 440);
      v60 = *(v0 + 448);
      v15 = *(v0 + 400);
      v16 = *(v0 + 376);
      v17 = *(v0 + 384);
      v18 = *(v0 + 344);
      v19 = *(v0 + 312);
      v20 = *(v0 + 232);
      v21 = sub_1000136BC(v11, v12, &v73);

      *(v10 + 4) = v21;
      *(v10 + 12) = 2160;
      *(v10 + 14) = 1752392040;
      *(v10 + 22) = 2081;
      sub_1000D2A70(v17, v15, &unk_1016B15C0, &unk_1013D7870);
      v22 = v15 + *(v16 + 48);
      v58(v18, v22 + *(v20 + 20), v19);
      sub_10002FF48(v22, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v15, &unk_101698C30, &unk_101392630);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v64(v18, v19);
      sub_10000B3A8(v17, &unk_1016B15C0, &unk_1013D7870);
      v26 = sub_1000136BC(v23, v25, &v73);

      *(v10 + 24) = v26;
      _os_log_impl(&_mh_execute_header, log, v69, "%s Several explicit shares for a beacon %{private,mask.hash}s!", v10, 0x20u);
      swift_arrayDestroy();

      p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
      v1 = v62;
    }

    else
    {
      v13 = *(v0 + 384);

      sub_10000B3A8(v13, &unk_1016B15C0, &unk_1013D7870);
    }

    v2 = v1[2];
  }

  *(v0 + 512) = v2;
  if (v2)
  {
    v27 = 0;
    *(v0 + 668) = *(*(v0 + 280) + 80);
    while (1)
    {
      *(v0 + 520) = v27;
      v29 = *(v0 + 504);
      if (v27 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v30 = *(v0 + 304);
      v31 = *(v0 + 272);
      v32 = v29 + ((*(v0 + 668) + 32) & ~*(v0 + 668));
      v33 = *(*(v0 + 280) + 72);
      *(v0 + 528) = v33;
      sub_100B5AAA0(v32 + v33 * v27, v30, type metadata accessor for MemberSharingCircle);
      if (!*(v30 + *(v31 + 40)))
      {
        break;
      }

      if (p_weak_ivar_lyt[394] != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_10177BAA0);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v1 = p_weak_ivar_lyt;
        v37 = *(v0 + 676);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *(v0 + 104) = v39;
        *v38 = 136315138;
        if (v37)
        {
          v40 = 0;
          v41 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 112) = *(v0 + 176);
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v41 = v42;
        }

        v43 = *(v0 + 304);
        v44 = sub_1000136BC(v40, v41, (v0 + 104));

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v35, v36, "%s Member sharing circle has been accepted already, skip notification posting.", v38, 0xCu);
        sub_100007BAC(v39);

        sub_10002FF48(v43, type metadata accessor for MemberSharingCircle);
        p_weak_ivar_lyt = v1;
      }

      else
      {
        v28 = *(v0 + 304);

        sub_10002FF48(v28, type metadata accessor for MemberSharingCircle);
      }

      v27 = *(v0 + 520) + 1;
      if (v27 == *(v0 + 512))
      {
        goto LABEL_23;
      }
    }

    v56 = *(v0 + 432);
    *(v0 + 672) = *(*(v0 + 272) + 24);

    return _swift_task_switch(sub_100B4E128, v56, 0);
  }

  else
  {
LABEL_23:
    v45 = *(v0 + 504);

    v46 = *(v0 + 400);
    v47 = *(v0 + 384);
    v48 = *(v0 + 392);
    v50 = *(v0 + 360);
    v49 = *(v0 + 368);
    v52 = *(v0 + 336);
    v51 = *(v0 + 344);
    v53 = *(v0 + 304);
    v57 = *(v0 + 296);
    v59 = *(v0 + 288);
    v61 = *(v0 + 264);
    v63 = *(v0 + 256);
    v65 = *(v0 + 248);
    v67 = *(v0 + 224);
    v68 = *(v0 + 216);
    v70 = *(v0 + 208);
    loga = *(v0 + 200);
    sub_10000B3A8(*(v0 + 408), &unk_1016B15C0, &unk_1013D7870);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_100B4E128()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  v8 = (*(v0 + 664) + 24) & ~*(v0 + 664);
  (*(v0 + 440))(v5, *(v0 + 304) + *(v0 + 672), v7);
  v9 = swift_allocObject();
  *(v0 + 536) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 544) = v11;
  *v11 = v0;
  v11[1] = sub_100B4E27C;
  v13 = *(v0 + 352);
  v12 = *(v0 + 360);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC84, v9, v13);
}

uint64_t sub_100B4E27C()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_100B4E3A8, v3, 0);
}

uint64_t sub_100B4E3A8()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 360);
  if ((*(v0 + 416))(v2, 1, *(v0 + 232)) == 1)
  {
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    if (qword_101694C50 != -1)
    {
LABEL_32:
      swift_once();
    }

    v4 = *(v0 + 296);
    v3 = *(v0 + 304);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BAA0);
    sub_100B5AAA0(v3, v4, type metadata accessor for MemberSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 676);
      v9 = swift_slowAlloc();
      *(v0 + 120) = swift_slowAlloc();
      *v9 = 136315651;
      if (v8)
      {
        v10 = 0;
        v11 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 128) = *(v0 + 176);
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v17;
      }

      v18 = *(v0 + 312);
      v64 = *(v0 + 304);
      v19 = *(v0 + 296);
      v20 = *(v0 + 272);
      v21 = sub_1000136BC(v10, v11, (v0 + 120));

      *(v9 + 4) = v21;
      *(v9 + 12) = 2160;
      *(v9 + 14) = 1752392040;
      *(v9 + 22) = 2081;
      v22 = *(v20 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_10002FF48(v19, type metadata accessor for MemberSharingCircle);
      v26 = sub_1000136BC(v23, v25, (v0 + 120));

      *(v9 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Can't post share suggestion notification, because there is no Shared beacon record available for beacon %{private,mask.hash}s", v9, 0x20u);
      swift_arrayDestroy();

      v16 = v64;
    }

    else
    {
      v15 = *(v0 + 296);
      v14 = *(v0 + 304);

      sub_10002FF48(v15, type metadata accessor for MemberSharingCircle);
      v16 = v14;
    }

    sub_10002FF48(v16, type metadata accessor for MemberSharingCircle);
    v27 = *(v0 + 520) + 1;
    if (v27 == *(v0 + 512))
    {
LABEL_13:
      v28 = *(v0 + 504);

      v29 = *(v0 + 400);
      v30 = *(v0 + 384);
      v31 = *(v0 + 392);
      v33 = *(v0 + 360);
      v32 = *(v0 + 368);
      v35 = *(v0 + 336);
      v34 = *(v0 + 344);
      v36 = *(v0 + 304);
      v57 = *(v0 + 296);
      v58 = *(v0 + 288);
      v59 = *(v0 + 264);
      v60 = *(v0 + 256);
      v61 = *(v0 + 248);
      v62 = *(v0 + 224);
      v63 = *(v0 + 216);
      v65 = *(v0 + 208);
      v66 = *(v0 + 200);
      sub_10000B3A8(*(v0 + 408), &unk_1016B15C0, &unk_1013D7870);

      v37 = *(v0 + 8);

      return v37();
    }

    else
    {
      while (1)
      {
        *(v0 + 520) = v27;
        v40 = *(v0 + 504);
        if (v27 >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v41 = *(v0 + 304);
        v42 = *(v0 + 272);
        v43 = v40 + ((*(v0 + 668) + 32) & ~*(v0 + 668));
        v44 = *(*(v0 + 280) + 72);
        *(v0 + 528) = v44;
        sub_100B5AAA0(v43 + v44 * v27, v41, type metadata accessor for MemberSharingCircle);
        if (!*(v41 + *(v42 + 40)))
        {
          break;
        }

        if (qword_101694C50 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v5, qword_10177BAA0);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = *(v0 + 676);
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *(v0 + 104) = v49;
          *v48 = 136315138;
          if (v47)
          {
            v50 = 0;
            v51 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 112) = *(v0 + 176);
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            v51 = v52;
          }

          v53 = *(v0 + 304);
          v54 = sub_1000136BC(v50, v51, (v0 + 104));

          *(v48 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v45, v46, "%s Member sharing circle has been accepted already, skip notification posting.", v48, 0xCu);
          sub_100007BAC(v49);

          v39 = v53;
        }

        else
        {
          v38 = *(v0 + 304);

          v39 = v38;
        }

        sub_10002FF48(v39, type metadata accessor for MemberSharingCircle);
        v27 = *(v0 + 520) + 1;
        if (v27 == *(v0 + 512))
        {
          goto LABEL_13;
        }
      }

      v55 = *(v0 + 432);
      *(v0 + 672) = *(*(v0 + 272) + 24);

      return _swift_task_switch(sub_100B4E128, v55, 0);
    }
  }

  else
  {
    sub_100038EDC(v2, *(v0 + 264), type metadata accessor for SharedBeaconRecord);
    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    *(v0 + 552) = v13;
    *v13 = v0;
    v13[1] = sub_100B4EAC8;

    return daemon.getter();
  }
}

uint64_t sub_100B4EAC8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 552);
  v12 = *v1;
  v3[70] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[71] = v6;
  v7 = type metadata accessor for Daemon();
  v3[72] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100B5AB90(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100B5AB90(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100B4ECB0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100B4ECB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  v4[73] = a1;
  v4[74] = v1;

  if (v1)
  {
    v7 = v4[70];

    v4[80] = v1;
    v8 = v4[23];
    v9 = sub_100B4FA9C;
  }

  else
  {
    v9 = sub_100B4EDF0;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100B4EDF0()
{
  v1 = v0[74];
  v2 = v0[73];
  sub_10001B108();
  v0[75] = v3;
  v0[76] = v1;
  v4 = v0[72];
  v5 = v0[70];
  sub_100B5AB90(&qword_1016969E0, 255, &type metadata accessor for Daemon);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v8 = sub_100B4FA20;
  }

  else
  {
    v8 = sub_100B4EED0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100B4EED0()
{
  v1 = v0[73];
  v2 = v0[70];
  v3 = v0[23];

  return _swift_task_switch(sub_100B4EF48, v3, 0);
}

uint64_t sub_100B4EF48()
{
  v1 = v0[33];
  v0[5] = v0[29];
  v0[6] = sub_100B5AB90(&qword_101698D80, 255, type metadata accessor for SharedBeaconRecord);
  v2 = sub_1000280DC(v0 + 2);
  sub_100B5AAA0(v1, v2, type metadata accessor for SharedBeaconRecord);

  return _swift_task_switch(sub_100B4F018, 0, 0);
}

uint64_t sub_100B4F018()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 676);
  v3 = *(v0 + 176);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v0 + 16, v0 + 56);
  v5 = swift_allocObject();
  *(v0 + 616) = v5;
  sub_10000A748((v0 + 56), v5 + 16);
  *(v5 + 56) = v4;
  *(v5 + 64) = v3;
  *(v5 + 72) = v2 & 1;
  v6 = async function pointer to withTimeout<A>(_:block:)[1];
  v7 = swift_task_alloc();
  *(v0 + 624) = v7;
  *v7 = v0;
  v7[1] = sub_100B4F154;

  return withTimeout<A>(_:block:)(v7, 0x40AAD21B3B700000, 3, &unk_101390908, v5, &type metadata for () + 8);
}

uint64_t sub_100B4F154()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v7 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = sub_100B4F608;
  }

  else
  {
    v5 = *(v2 + 616);

    v4 = sub_100B4F270;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100B4F270()
{
  v1 = *(v0 + 184);
  sub_100007BAC((v0 + 16));

  return _swift_task_switch(sub_100B4F2DC, v1, 0);
}

uint64_t sub_100B4F2DC()
{
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177BAA0);
  sub_100B5AAA0(v2, v1, type metadata accessor for SharedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 676);
    v7 = swift_slowAlloc();
    *(v0 + 152) = swift_slowAlloc();
    *v7 = 136315651;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 160) = *(v0 + 176);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v12;
    }

    v28 = *(v0 + 600);
    v13 = *(v0 + 312);
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v16 = sub_1000136BC(v8, v9, (v0 + 152));

    *(v7 + 4) = v16;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v17 = *(v15 + 20);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10002FF48(v14, type metadata accessor for SharedBeaconRecord);
    v21 = sub_1000136BC(v18, v20, (v0 + 152));

    *(v7 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Fetched product info for beacon %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 600);
    v11 = *(v0 + 256);

    sub_10002FF48(v11, type metadata accessor for SharedBeaconRecord);
  }

  v22 = *(v0 + 676);
  v23 = swift_task_alloc();
  *(v0 + 648) = v23;
  *v23 = v0;
  v23[1] = sub_100B4FE38;
  v24 = *(v0 + 304);
  v25 = *(v0 + 176);
  v26 = *(v0 + 184);

  return sub_100B3F2D8(v24, v25, v22 & 1);
}

uint64_t sub_100B4F608()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_100B4F674, v2, 0);
}

uint64_t sub_100B4F674()
{
  v1 = *(v0 + 600);

  sub_100007BAC((v0 + 16));
  v2 = *(v0 + 632);
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177BAA0);
  sub_100B5AAA0(v3, v4, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 676);
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *(v0 + 136) = swift_slowAlloc();
    *v9 = 136315907;
    if (v8)
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 144) = *(v0 + 176);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v13;
    }

    v14 = *(v0 + 312);
    v15 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = sub_1000136BC(v10, v11, (v0 + 136));

    *(v9 + 4) = v17;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    v18 = *(v16 + 20);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_10002FF48(v15, type metadata accessor for SharedBeaconRecord);
    v22 = sub_1000136BC(v19, v21, (v0 + 136));

    *(v9 + 24) = v22;
    *(v9 + 32) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v23;
    *v30 = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v9, 0x2Au);
    sub_10000B3A8(v30, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 248);

    sub_10002FF48(v12, type metadata accessor for SharedBeaconRecord);
  }

  v24 = *(v0 + 676);
  v25 = swift_task_alloc();
  *(v0 + 648) = v25;
  *v25 = v0;
  v25[1] = sub_100B4FE38;
  v26 = *(v0 + 304);
  v27 = *(v0 + 176);
  v28 = *(v0 + 184);

  return sub_100B3F2D8(v26, v27, v24 & 1);
}

uint64_t sub_100B4FA20()
{
  v1 = v0[73];
  v2 = v0[70];

  v0[80] = v0[76];
  v3 = v0[23];

  return _swift_task_switch(sub_100B4FA9C, v3, 0);
}

uint64_t sub_100B4FA9C()
{
  v1 = *(v0 + 640);
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177BAA0);
  sub_100B5AAA0(v2, v3, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 676);
    v8 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *(v0 + 136) = swift_slowAlloc();
    *v8 = 136315907;
    if (v7)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 144) = *(v0 + 176);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v12;
    }

    v13 = *(v0 + 312);
    v14 = *(v0 + 248);
    v15 = *(v0 + 232);
    v16 = sub_1000136BC(v9, v10, (v0 + 136));

    *(v8 + 4) = v16;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    v17 = *(v15 + 20);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10002FF48(v14, type metadata accessor for SharedBeaconRecord);
    v21 = sub_1000136BC(v18, v20, (v0 + 136));

    *(v8 + 24) = v21;
    *(v8 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v22;
    *v29 = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Failed to fetch product info for beacon %{private,mask.hash}s error = %{public}@!", v8, 0x2Au);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v11 = *(v0 + 248);

    sub_10002FF48(v11, type metadata accessor for SharedBeaconRecord);
  }

  v23 = *(v0 + 676);
  v24 = swift_task_alloc();
  *(v0 + 648) = v24;
  *v24 = v0;
  v24[1] = sub_100B4FE38;
  v25 = *(v0 + 304);
  v26 = *(v0 + 176);
  v27 = *(v0 + 184);

  return sub_100B3F2D8(v25, v26, v23 & 1);
}

uint64_t sub_100B4FE38()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v9 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = sub_100B500FC;
  }

  else
  {
    v6 = *(v2 + 504);
    v7 = *(v2 + 184);

    v5 = sub_100B4FF60;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100B4FF60()
{
  v1 = v0[38];
  sub_10002FF48(v0[33], type metadata accessor for SharedBeaconRecord);
  sub_10002FF48(v1, type metadata accessor for MemberSharingCircle);
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[38];
  v12 = v0[37];
  v13 = v0[36];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[27];
  v19 = v0[26];
  v20 = v0[25];
  sub_10000B3A8(v0[51], &unk_1016B15C0, &unk_1013D7870);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100B500FC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = sub_10002FF48(*(v0 + 264), type metadata accessor for SharedBeaconRecord);
  if (v2 > *(v1 + 16))
  {
LABEL_31:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v11 = *(v0 + 200);
  v85 = *(v0 + 192);
  sub_100B5AAA0(*(v0 + 504) + ((*(v0 + 668) + 32) & ~*(v0 + 668)) + (*(v0 + 512) - 1) * *(v0 + 528), v9, type metadata accessor for MemberSharingCircle);
  v12 = *(v8 + 56);
  v12(v9, 0, 1, v7);
  sub_100B5AAA0(v6, v10, type metadata accessor for MemberSharingCircle);
  v12(v10, 0, 1, v7);
  v13 = *(v85 + 48);
  sub_1000D2A70(v9, v11, &unk_101698BC0, &qword_10138C440);
  sub_1000D2A70(v10, v11 + v13, &unk_101698BC0, &qword_10138C440);
  v14 = *(v8 + 48);
  v15 = v14(v11, 1, v7);
  v16 = *(v0 + 272);
  if (v15 == 1)
  {
    v17 = *(v0 + 224);
    sub_10000B3A8(*(v0 + 216), &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v17, &unk_101698BC0, &qword_10138C440);
    if (v14(v11 + v13, 1, v16) == 1)
    {
      sub_10000B3A8(*(v0 + 200), &unk_101698BC0, &qword_10138C440);
LABEL_23:
      v56 = *(v0 + 656);
      v57 = *(v0 + 504);
      v59 = *(v0 + 400);
      v58 = *(v0 + 408);
      v60 = *(v0 + 384);
      v61 = *(v0 + 392);
      v63 = *(v0 + 360);
      v62 = *(v0 + 368);
      v64 = *(v0 + 344);
      v65 = *(v0 + 304);
      v68 = *(v0 + 336);
      v70 = *(v0 + 296);
      v72 = *(v0 + 288);
      v74 = *(v0 + 264);
      v76 = *(v0 + 256);
      v78 = *(v0 + 248);
      v80 = *(v0 + 224);
      v82 = *(v0 + 216);
      v84 = *(v0 + 208);
      v87 = *(v0 + 200);

      swift_willThrow();
      sub_10002FF48(v65, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v58, &unk_1016B15C0, &unk_1013D7870);

      v31 = *(v0 + 8);
      v66 = *(v0 + 656);
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  sub_1000D2A70(*(v0 + 200), *(v0 + 208), &unk_101698BC0, &qword_10138C440);
  if (v14(v11 + v13, 1, v16) == 1)
  {
    v18 = *(v0 + 224);
    v19 = *(v0 + 208);
    sub_10000B3A8(*(v0 + 216), &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v18, &unk_101698BC0, &qword_10138C440);
    sub_10002FF48(v19, type metadata accessor for MemberSharingCircle);
LABEL_7:
    sub_10000B3A8(*(v0 + 200), &qword_1016B60A8, &qword_1013D7868);
    goto LABEL_8;
  }

  v50 = *(v0 + 288);
  v52 = *(v0 + 216);
  v51 = *(v0 + 224);
  v54 = *(v0 + 200);
  v53 = *(v0 + 208);
  sub_100038EDC(v11 + v13, v50, type metadata accessor for MemberSharingCircle);
  v55 = sub_1003287CC(v53, v50);
  sub_10002FF48(v50, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v52, &unk_101698BC0, &qword_10138C440);
  sub_10000B3A8(v51, &unk_101698BC0, &qword_10138C440);
  sub_10002FF48(v53, type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v54, &unk_101698BC0, &qword_10138C440);
  if (v55)
  {
    goto LABEL_23;
  }

LABEL_8:
  v20 = *(v0 + 656);
  sub_10002FF48(*(v0 + 304), type metadata accessor for MemberSharingCircle);

  v21 = *(v0 + 520) + 1;
  if (v21 != *(v0 + 512))
  {
    while (1)
    {
      *(v0 + 520) = v21;
      v34 = *(v0 + 504);
      if (v21 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v35 = *(v0 + 304);
      v36 = *(v0 + 272);
      v37 = v34 + ((*(v0 + 668) + 32) & ~*(v0 + 668));
      v38 = *(*(v0 + 280) + 72);
      *(v0 + 528) = v38;
      sub_100B5AAA0(v37 + v38 * v21, v35, type metadata accessor for MemberSharingCircle);
      if (!*(v35 + *(v36 + 40)))
      {
        break;
      }

      if (qword_101694C50 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177BAA0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 676);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *(v0 + 104) = v44;
        *v43 = 136315138;
        if (v42)
        {
          v45 = 0;
          v46 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 112) = *(v0 + 176);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v47;
        }

        v48 = *(v0 + 304);
        v49 = sub_1000136BC(v45, v46, (v0 + 104));

        *(v43 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v40, v41, "%s Member sharing circle has been accepted already, skip notification posting.", v43, 0xCu);
        sub_100007BAC(v44);

        v33 = v48;
      }

      else
      {
        v32 = *(v0 + 304);

        v33 = v32;
      }

      v3 = sub_10002FF48(v33, type metadata accessor for MemberSharingCircle);
      v21 = *(v0 + 520) + 1;
      if (v21 == *(v0 + 512))
      {
        goto LABEL_9;
      }
    }

    v4 = *(v0 + 432);
    *(v0 + 672) = *(*(v0 + 272) + 24);
    v3 = sub_100B4E128;
    v5 = 0;

    return _swift_task_switch(v3, v4, v5);
  }

LABEL_9:
  v22 = *(v0 + 504);

  v23 = *(v0 + 400);
  v24 = *(v0 + 384);
  v25 = *(v0 + 392);
  v27 = *(v0 + 360);
  v26 = *(v0 + 368);
  v29 = *(v0 + 336);
  v28 = *(v0 + 344);
  v30 = *(v0 + 304);
  v69 = *(v0 + 296);
  v71 = *(v0 + 288);
  v73 = *(v0 + 264);
  v75 = *(v0 + 256);
  v77 = *(v0 + 248);
  v79 = *(v0 + 224);
  v81 = *(v0 + 216);
  v83 = *(v0 + 208);
  v86 = *(v0 + 200);
  sub_10000B3A8(*(v0 + 408), &unk_1016B15C0, &unk_1013D7870);

  v31 = *(v0 + 8);
LABEL_24:

  return v31();
}

uint64_t sub_100B50908(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v3 + 24) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for MemberPeerTrust();
  *(v3 + 40) = v8;
  v9 = *(v8 - 8);
  *(v3 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&unk_1016BBF00, &unk_1013D7858) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v3 + 96) = v13;
  v14 = *(v13 - 8);
  *(v3 + 104) = v14;
  *(v3 + 112) = *(v14 + 64);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v3 + 152) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v17 = type metadata accessor for SharedBeaconRecord(0);
  *(v3 + 168) = v17;
  v18 = *(v17 - 8);
  *(v3 + 176) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  v20 = sub_1000BC4D4(&unk_1016B1630, &qword_10138CA48);
  *(v3 + 192) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  v22 = swift_task_alloc();
  *(v3 + 232) = v22;
  sub_1000D2A70(a1, v22, &unk_101698BC0, &qword_10138C440);
  v23 = *(v20 + 48);
  *(v3 + 384) = v23;
  sub_100B5AAA0(a2, v22 + v23, type metadata accessor for MemberSharingCircle);

  return _swift_task_switch(sub_100B50C88, v2, 0);
}

uint64_t sub_100B50C88()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[24];
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[13];
  v7 = *(v0[2] + 136);
  v0[30] = v7;
  sub_1000D2A70(v1, v2, &unk_1016B1630, &qword_10138CA48);
  v8 = v2 + *(v3 + 48);
  v9 = type metadata accessor for MemberSharingCircle();
  v0[31] = v9;
  v10 = *(v9 + 24);
  v11 = *(v6 + 16);
  v0[32] = v11;
  v0[33] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v8 + v10, v5);
  sub_10002FF48(v8, type metadata accessor for MemberSharingCircle);

  return _swift_task_switch(sub_100B50D88, v7, 0);
}

uint64_t sub_100B50D88()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  (*(v0 + 256))(v3, *(v0 + 144), v6);
  v7 = *(v5 + 80);
  *(v0 + 388) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 272) = v9;
  *(v9 + 16) = v2;
  v10 = *(v5 + 32);
  *(v0 + 280) = v10;
  *(v0 + 288) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v6);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 296) = v12;
  *v12 = v0;
  v12[1] = sub_100B50EF0;
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A754, v9, v14);
}

uint64_t sub_100B50EF0()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 224);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 104);
  v7 = *(*v0 + 96);
  v8 = *(*v0 + 16);
  v11 = *v0;

  v9 = *(v6 + 8);
  *(v1 + 304) = v9;
  *(v1 + 312) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  sub_10000B3A8(v4, &unk_101698BC0, &qword_10138C440);

  return _swift_task_switch(sub_100B510C0, v8, 0);
}

uint64_t sub_100B510C0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  if ((*(*(v0 + 176) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(*(v0 + 232), &unk_1016B1630, &qword_10138CA48);
    v3 = &unk_101698C30;
    v4 = &unk_101392630;
LABEL_10:
    sub_10000B3A8(v2, v3, v4);
    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 200);
    v30 = *(v0 + 184);
    v31 = *(v0 + 160);
    v32 = *(v0 + 136);
    v33 = *(v0 + 144);
    v34 = *(v0 + 128);
    v89 = *(v0 + 120);
    v90 = *(v0 + 88);
    v91 = *(v0 + 80);
    v92 = *(v0 + 72);
    v93 = *(v0 + 64);
    v95 = *(v0 + 56);
    v98 = *(v0 + 32);

    v35 = *(v0 + 8);

    return v35();
  }

  v5 = *(v0 + 184);
  sub_100038EDC(v2, v5, type metadata accessor for SharedBeaconRecord);
  if (*(v5 + *(v1 + 64)) != 2)
  {
    v2 = *(v0 + 232);
    sub_10002FF48(*(v0 + 184), type metadata accessor for SharedBeaconRecord);
    v3 = &unk_1016B1630;
    v4 = &qword_10138CA48;
    goto LABEL_10;
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 88);
  sub_1000D2A70(*(v0 + 232), v7, &unk_1016B1630, &qword_10138CA48);
  v10 = *(v8 + 48);
  sub_1000D2AD8(v7, v9, &unk_101698BC0, &qword_10138C440);
  v11 = *(*(v6 - 8) + 48);
  if (v11(v9, 1, v6) == 1)
  {
    v12 = *(v0 + 232);
    v13 = *(v0 + 208);
    v14 = *(v0 + 192);
    v15 = *(v0 + 88);
    sub_10002FF48(v7 + v10, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v15, &unk_101698BC0, &qword_10138C440);
    sub_1000D2A70(v12, v13, &unk_1016B1630, &qword_10138CA48);
    sub_10002FF48(v13 + *(v14 + 48), type metadata accessor for MemberSharingCircle);
    goto LABEL_8;
  }

  v97 = v11;
  v16 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = *(v0 + 208);
  v19 = *(v0 + 192);
  v20 = *(v0 + 88);
  v21 = *(v20 + *(v16 + 40));
  sub_10002FF48(v20, type metadata accessor for MemberSharingCircle);
  sub_10002FF48(v7 + v10, type metadata accessor for MemberSharingCircle);
  sub_1000D2A70(v17, v18, &unk_1016B1630, &qword_10138CA48);
  v22 = v18 + *(v19 + 48);
  v23 = *(v22 + *(v16 + 40));
  sub_10002FF48(v22, type metadata accessor for MemberSharingCircle);
  if (v21 != 1 || v23 != 1)
  {
LABEL_8:
    v24 = *(v0 + 184);
LABEL_9:
    sub_10002FF48(v24, type metadata accessor for SharedBeaconRecord);
    v2 = *(v0 + 208);
    sub_10000B3A8(*(v0 + 232), &unk_1016B1630, &qword_10138CA48);
    v3 = &unk_101698BC0;
    v4 = &qword_10138C440;
    goto LABEL_10;
  }

  v37 = *(v0 + 248);
  v39 = *(v0 + 192);
  v38 = *(v0 + 200);
  v40 = *(v0 + 80);
  sub_1000D2A70(*(v0 + 232), v38, &unk_1016B1630, &qword_10138CA48);
  v41 = *(v39 + 48);
  sub_1000D2AD8(v38, v40, &unk_101698BC0, &qword_10138C440);
  if (v97(v40, 1, v37) == 1)
  {
    v42 = *(v0 + 80);
    sub_10002FF48(v38 + v41, type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v42, &unk_101698BC0, &qword_10138C440);
    v43 = sub_100908888(_swiftEmptyArrayStorage);
  }

  else
  {
    v44 = *(v0 + 80);
    v43 = *(v44 + *(*(v0 + 248) + 36));

    sub_10002FF48(v44, type metadata accessor for MemberSharingCircle);
    sub_10002FF48(v38 + v41, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 320) = v43;
  v45 = *(v0 + 248);
  v46 = *(v0 + 224);
  v47 = *(v0 + 192);
  sub_1000D2A70(*(v0 + 232), v46, &unk_1016B1630, &qword_10138CA48);
  v48 = v46 + *(v47 + 48);
  *(v0 + 328) = *(v48 + *(v45 + 36));

  sub_10002FF48(v48, type metadata accessor for MemberSharingCircle);
  v49 = sub_10000B3A8(v46, &unk_101698BC0, &qword_10138C440);
  v52 = 0;
  v53 = *(v43 + 32);
  *(v0 + 392) = v53;
  v54 = 1 << v53;
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v43 + 64);
  v57 = &qword_1016AAE68;
  v58 = &unk_1013BEB10;
  while (v56)
  {
    v60 = *(v0 + 320);
LABEL_31:
    v96 = *(v0 + 280);
    v99 = *(v0 + 288);
    v65 = *(v0 + 264);
    v66 = *(v0 + 144);
    v67 = *(v0 + 96);
    v68 = *(v0 + 64);
    v69 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v70 = v69 | (v52 << 6);
    (*(v0 + 256))(v66, *(v60 + 48) + *(*(v0 + 104) + 72) * v70, v67);
    v94 = *(*(v60 + 56) + v70);
    v71 = sub_1000BC4D4(v57, v58);
    v72 = v58;
    v73 = v57;
    v74 = *(v71 + 48);
    v96(v68, v66, v67);
    *(v68 + v74) = v94;
    v57 = v73;
    v58 = v72;
    (*(*(v71 - 8) + 56))(v68, 0, 1, v71);
LABEL_32:
    *(v0 + 336) = v56;
    *(v0 + 344) = v52;
    v75 = *(v0 + 72);
    sub_1000D2AD8(*(v0 + 64), v75, &unk_1016BBF00, &unk_1013D7858);
    v76 = sub_1000BC4D4(v57, v58);
    v77 = (*(*(v76 - 8) + 48))(v75, 1, v76);
    v78 = *(v0 + 328);
    if (v77 == 1)
    {
      v87 = *(v0 + 320);
      v88 = *(v0 + 184);

      v24 = v88;
      goto LABEL_9;
    }

    v79 = *(v0 + 288);
    v80 = *(v0 + 96);
    v81 = *(*(v0 + 72) + *(v76 + 48));
    (*(v0 + 280))(*(v0 + 128));
    if (*(v78 + 16))
    {
      v82 = *(v0 + 328);
      v83 = sub_1000210EC(*(v0 + 128));
      if ((v84 & 1) != 0 && !v81 && *(*(*(v0 + 328) + 56) + v83) == 1)
      {
        v50 = *(v0 + 240);
        v49 = sub_100B518FC;
        v51 = 0;

        return _swift_task_switch(v49, v50, v51);
      }
    }

    v59 = *(v0 + 312);
    v49 = (*(v0 + 304))(*(v0 + 128), *(v0 + 96));
  }

  v61 = ((1 << *(v0 + 392)) + 63) >> 6;
  if (v61 <= (v52 + 1))
  {
    v62 = v52 + 1;
  }

  else
  {
    v62 = ((1 << *(v0 + 392)) + 63) >> 6;
  }

  v63 = v62 - 1;
  while (1)
  {
    v64 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v64 >= v61)
    {
      v85 = *(v0 + 64);
      v86 = sub_1000BC4D4(v57, v58);
      (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
      v56 = 0;
      v52 = v63;
      goto LABEL_32;
    }

    v60 = *(v0 + 320);
    v56 = *(v60 + 8 * v64 + 64);
    ++v52;
    if (v56)
    {
      v52 = v64;
      goto LABEL_31;
    }
  }

  __break(1u);
  return _swift_task_switch(v49, v50, v51);
}

uint64_t sub_100B518FC()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 144);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = (*(v0 + 388) + 24) & ~*(v0 + 388);
  (*(v0 + 256))(v5, *(v0 + 128), v7);
  v9 = swift_allocObject();
  *(v0 + 352) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 360) = v11;
  *v11 = v0;
  v11[1] = sub_100B51A4C;
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A76C, v9, v13);
}

uint64_t sub_100B51A4C()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_100B51B78, v3, 0);
}

uint64_t sub_100B51B78()
{
  v59 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 328);

    sub_10000B3A8(v2, &qword_101698C10, &unk_10138C1E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 96);
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177BAA0);
    v5(v6, v7, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);
    if (v12)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v58 = v18;
      *v17 = 136380675;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      v14(v15, v16);
      v22 = sub_1000136BC(v19, v21, &v58);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v10, v11, "Can't post transparency notification due to no member peer trust for %{private}s identifier.", v17, 0xCu);
      sub_100007BAC(v18);
    }

    else
    {

      v14(v15, v16);
    }

    v34 = *(v0 + 312);
    v33 = *(v0 + 320);
    v35 = *(v0 + 304);
    v36 = *(v0 + 232);
    v37 = *(v0 + 184);
    v38 = *(v0 + 128);
    v39 = *(v0 + 96);
    sub_100B58A3C();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();

    v35(v38, v39);
    sub_10002FF48(v37, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v36, &unk_1016B1630, &qword_10138CA48);
    v42 = *(v0 + 224);
    v41 = *(v0 + 232);
    v43 = *(v0 + 216);
    v44 = *(v0 + 200);
    v45 = *(v0 + 184);
    v46 = *(v0 + 160);
    v48 = *(v0 + 136);
    v47 = *(v0 + 144);
    v50 = *(v0 + 128);
    v51 = *(v0 + 120);
    v52 = *(v0 + 88);
    v53 = *(v0 + 80);
    v54 = *(v0 + 72);
    v55 = *(v0 + 64);
    v56 = *(v0 + 56);
    v57 = *(v0 + 32);
    sub_10000B3A8(*(v0 + 208), &unk_101698BC0, &qword_10138C440);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v23 = *(v0 + 384);
    v24 = *(v0 + 232);
    v25 = *(v0 + 56);
    sub_100038EDC(v2, v25, type metadata accessor for MemberPeerTrust);
    v26 = *(v1 + 20);
    v27 = (v25 + *(v1 + 32));
    v29 = *v27;
    v28 = v27[1];
    v30 = swift_task_alloc();
    *(v0 + 368) = v30;
    *v30 = v0;
    v30[1] = sub_100B52018;
    v31 = *(v0 + 16);

    return sub_100B4A974(v24 + v23, v25 + v26, v29, v28);
  }
}

uint64_t sub_100B52018()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v9 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);
    v5 = *(v2 + 16);

    v6 = sub_100B525B8;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 16);
    v6 = sub_100B52140;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100B52140()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 56);
  (*(v0 + 304))(*(v0 + 128), *(v0 + 96));
  v3 = sub_10002FF48(v2, type metadata accessor for MemberPeerTrust);
  v6 = *(v0 + 336);
  v7 = *(v0 + 344);
  v8 = &qword_1016AAE68;
  v9 = &unk_1013BEB10;
  while (1)
  {
    if (!v6)
    {
      v12 = ((1 << *(v0 + 392)) + 63) >> 6;
      if (v12 <= (v7 + 1))
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = ((1 << *(v0 + 392)) + 63) >> 6;
      }

      v14 = v13 - 1;
      while (1)
      {
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          v36 = *(v0 + 64);
          v37 = sub_1000BC4D4(v8, v9);
          (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
          v6 = 0;
          v7 = v14;
          goto LABEL_14;
        }

        v11 = *(v0 + 320);
        v6 = *(v11 + 8 * v15 + 64);
        ++v7;
        if (v6)
        {
          v7 = v15;
          goto LABEL_13;
        }
      }

      __break(1u);
      return _swift_task_switch(v3, v4, v5);
    }

    v11 = *(v0 + 320);
LABEL_13:
    v59 = *(v0 + 280);
    v61 = *(v0 + 288);
    v16 = *(v0 + 264);
    v17 = *(v0 + 144);
    v18 = *(v0 + 96);
    v19 = *(v0 + 64);
    v20 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = v20 | (v7 << 6);
    (*(v0 + 256))(v17, *(v11 + 48) + *(*(v0 + 104) + 72) * v21, v18);
    v57 = *(*(v11 + 56) + v21);
    v22 = sub_1000BC4D4(v8, v9);
    v23 = v9;
    v24 = v8;
    v25 = *(v22 + 48);
    v59(v19, v17, v18);
    *(v19 + v25) = v57;
    v8 = v24;
    v9 = v23;
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
LABEL_14:
    *(v0 + 336) = v6;
    *(v0 + 344) = v7;
    v26 = *(v0 + 72);
    sub_1000D2AD8(*(v0 + 64), v26, &unk_1016BBF00, &unk_1013D7858);
    v27 = sub_1000BC4D4(v8, v9);
    v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
    v29 = *(v0 + 328);
    if (v28 == 1)
    {
      break;
    }

    v30 = *(v0 + 288);
    v31 = *(v0 + 96);
    v32 = *(*(v0 + 72) + *(v27 + 48));
    (*(v0 + 280))(*(v0 + 128));
    if (*(v29 + 16))
    {
      v33 = *(v0 + 328);
      v34 = sub_1000210EC(*(v0 + 128));
      if ((v35 & 1) != 0 && !v32 && *(*(*(v0 + 328) + 56) + v34) == 1)
      {
        v4 = *(v0 + 240);
        v3 = sub_100B518FC;
        v5 = 0;

        return _swift_task_switch(v3, v4, v5);
      }
    }

    v10 = *(v0 + 312);
    v3 = (*(v0 + 304))(*(v0 + 128), *(v0 + 96));
  }

  v38 = *(v0 + 320);
  v39 = *(v0 + 184);

  sub_10002FF48(v39, type metadata accessor for SharedBeaconRecord);
  v40 = *(v0 + 208);
  sub_10000B3A8(*(v0 + 232), &unk_1016B1630, &qword_10138CA48);
  sub_10000B3A8(v40, &unk_101698BC0, &qword_10138C440);
  v42 = *(v0 + 224);
  v41 = *(v0 + 232);
  v44 = *(v0 + 208);
  v43 = *(v0 + 216);
  v45 = *(v0 + 200);
  v46 = *(v0 + 184);
  v47 = *(v0 + 160);
  v48 = *(v0 + 136);
  v49 = *(v0 + 144);
  v50 = *(v0 + 128);
  v53 = *(v0 + 120);
  v54 = *(v0 + 88);
  v55 = *(v0 + 80);
  v56 = *(v0 + 72);
  v58 = *(v0 + 64);
  v60 = *(v0 + 56);
  v62 = *(v0 + 32);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100B525B8()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[29];
  v5 = v0[23];
  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[7];

  v3(v6, v7);
  sub_10002FF48(v5, type metadata accessor for SharedBeaconRecord);
  sub_10000B3A8(v4, &unk_1016B1630, &qword_10138CA48);
  sub_10002FF48(v8, type metadata accessor for MemberPeerTrust);
  v27 = v0[47];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  v12 = v0[25];
  v13 = v0[23];
  v14 = v0[20];
  v16 = v0[17];
  v15 = v0[18];
  v19 = v0[16];
  v20 = v0[15];
  v21 = v0[11];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[8];
  v25 = v0[7];
  v26 = v0[4];
  sub_10000B3A8(v0[26], &unk_101698BC0, &qword_10138C440);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100B52794(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = v2;
  v6 = type metadata accessor for UUID();
  *(v3 + 32) = v6;
  v7 = *(v6 - 8);
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v7 + 64);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  *(v3 + 72) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v3 + 88) = v10;
  sub_1000D2A70(a1, v10, &unk_1016AFA00, &qword_10138C4D0);
  v11 = *(v8 + 48);
  *(v3 + 168) = v11;
  sub_100B5AAA0(a2, v10 + v11, type metadata accessor for OwnerSharingCircle);

  return _swift_task_switch(sub_100B52918, v2, 0);
}

uint64_t sub_100B52918()
{
  v1 = v0[11];
  v2 = type metadata accessor for OwnerSharingCircle();
  if ((*(*(v2 - 1) + 48))(v1, 1, v2) != 1)
  {
    goto LABEL_7;
  }

  v4 = v0[9];
  v3 = v0[10];
  sub_1000D2A70(v1, v3, &unk_1016B1610, &qword_10138CA38);
  v5 = v3 + *(v4 + 48);
  LODWORD(v4) = *(v5 + v2[7]);
  sub_10002FF48(v5, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v3, &unk_1016AFA00, &qword_10138C4D0);
  v1 = v0[11];
  if (v4 != 2)
  {
    goto LABEL_7;
  }

  v7 = v0[9];
  v6 = v0[10];
  sub_1000D2A70(v0[11], v6, &unk_1016B1610, &qword_10138CA38);
  v8 = v6 + *(v7 + 48);
  LODWORD(v7) = *(v8 + v2[9]);
  sub_10002FF48(v8, type metadata accessor for OwnerSharingCircle);
  sub_10000B3A8(v6, &unk_1016AFA00, &qword_10138C4D0);
  v1 = v0[11];
  if (v7 == 2)
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];
    sub_100B5A68C();
    sub_100B5A6E0();
    v15 = static CaseIterable<>.allMembers.getter();
    v0[12] = sub_100616F34(&off_10160D050, v15);
    v16 = *(v14 + 136);
    v0[13] = v16;
    sub_1000D2A70(v1, v9, &unk_1016B1610, &qword_10138CA38);
    v17 = v9 + *(v10 + 48);
    v18 = v2[6];
    v19 = *(v13 + 16);
    v0[14] = v19;
    v0[15] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v11, v17 + v18, v12);
    sub_10002FF48(v17, type metadata accessor for OwnerSharingCircle);

    return _swift_task_switch(sub_100B52BFC, v16, 0);
  }

  else
  {
LABEL_7:
    v20 = v0[10];
    v22 = v0[7];
    v21 = v0[8];
    sub_10000B3A8(v1, &unk_1016B1610, &qword_10138CA38);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100B52BFC()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 32);
  (*(v0 + 112))(v4, *(v0 + 64), v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 128) = v10;
  *(v10 + 16) = v2;
  (*(v6 + 32))(v10 + v8, v4, v7);
  *(v10 + v9) = v3;
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v13 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v12 = v0;
  v12[1] = sub_100B52D80;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1001BD71C, v10, v13);
}

uint64_t sub_100B52D80()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_100B52EAC, v3, 0);
}

uint64_t sub_100B52EAC()
{
  v1 = v0[10];
  v2 = v0[3];
  (*(v0[5] + 8))(v0[8], v0[4]);
  v0[18] = v0[2];
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);

  return _swift_task_switch(sub_100B52F4C, v2, 0);
}

uint64_t sub_100B52F4C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_10013CF58(sub_100B5A734, v3, v1);

  v5 = *(v4 + 16);

  if (v5)
  {
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177BAA0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Beacon already requested by the sharee!", v9, 2u);
    }

    v10 = *(v0 + 80);
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    sub_10000B3A8(*(v0 + 88), &unk_1016B1610, &qword_10138CA38);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 88);
    v17 = swift_task_alloc();
    *(v0 + 152) = v17;
    *v17 = v0;
    v17[1] = sub_100B53190;
    v18 = *(v0 + 24);

    return sub_100B419CC(v16 + v15, 0, 0, 0);
  }
}

uint64_t sub_100B53190()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100B53360;
  }

  else
  {
    v6 = sub_100B532BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100B532BC()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  sub_10000B3A8(v0[11], &unk_1016B1610, &qword_10138CA38);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100B53360()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  sub_10000B3A8(v0[11], &unk_1016B1610, &qword_10138CA38);

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_100B53404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016B1610, &qword_10138CA38);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for OwnerSharingCircle();
  v12 = *(a1 + v11[8]);
  v24 = a2;
  sub_1000D2A70(a2, v10, &unk_1016B1610, &qword_10138CA38);
  v13 = &v10[*(v7 + 48)];
  v14 = *(v13 + v11[8]);

  sub_10002FF48(v13, type metadata accessor for OwnerSharingCircle);
  v15 = sub_100DE7CB4(v12, v14);

  sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);
  v16 = 0;
  if (*(a1 + v11[9]) == 2 && (v15 & 1) != 0)
  {
    v17 = v11[5];
    sub_1000D2A70(v24, v10, &unk_1016B1610, &qword_10138CA38);
    v18 = &v10[*(v7 + 48)];
    v19 = v25;
    v20 = v23;
    (*(v25 + 16))(v23, v18 + v11[5], v4);
    sub_10002FF48(v18, type metadata accessor for OwnerSharingCircle);
    sub_100B5AB90(&qword_1016984A0, 255, &type metadata accessor for UUID);
    LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v19 + 8))(v20, v4);
    v16 = v18 ^ 1;
    sub_10000B3A8(v10, &unk_1016AFA00, &qword_10138C4D0);
  }

  return v16 & 1;
}

uint64_t sub_100B536D0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  started = type metadata accessor for DelegatedShareStartUserNotification();
  v2[7] = started;
  v4 = *(*(started - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v2[11] = *(v6 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for MemberSharingCircle();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B5386C, v1, 0);
}

uint64_t sub_100B5386C()
{
  v1 = *(*(v0 + 48) + 136);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_100B53890, v1, 0);
}

uint64_t sub_100B53890()
{
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v5 = v0[5];
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[22] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_100B53A00;
  v12 = v0[14];
  v11 = v0[15];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100B5A674, v8, v12);
}

uint64_t sub_100B53A00()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_100B53B2C, v3, 0);
}

uint64_t sub_100B53B2C()
{
  v1 = v0[16];
  v2 = v0[15];
  if ((*(v0[17] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    v3 = v0[18];
    v4 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[8];
    sub_100B58A3C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[18];
    sub_100038EDC(v2, v11, type metadata accessor for MemberSharingCircle);
    v12 = *(v1 + 24);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_100B53CEC;
    v14 = v0[6];

    return sub_100B57904(v11 + v12);
  }
}

uint64_t sub_100B53CEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[24];
  v6 = v3[6];
  v8 = *v2;
  v4[25] = a2;

  return _swift_task_switch(sub_100B53E08, v6, 0);
}

uint64_t sub_100B53E08()
{
  v40 = v0;
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 168);
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    (*(v0 + 160))(v4, *(v0 + 40), *(v0 + 72));
    v6 = (v4 + *(v5 + 20));
    *v6 = v2;
    v6[1] = v1;
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 40);
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177BAA0);
    v8(v9, v11, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 141558275;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v18 + 8))(v16, v17);
      v24 = sub_1000136BC(v21, v23, &v39);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Post transparency notification for delegation start, share id: %{private,mask.hash}s", v19, 0x16u);
      sub_100007BAC(v20);
    }

    else
    {

      (*(v18 + 8))(v16, v17);
    }

    v32 = *(v0 + 144);
    v33 = *(v0 + 120);
    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 64);
    v37 = *(*(v0 + 48) + 128);
    swift_unownedRetainStrong();
    sub_100B58F18(v36, 0, 0);

    sub_10002FF48(v36, type metadata accessor for DelegatedShareStartUserNotification);
    sub_10002FF48(v32, type metadata accessor for MemberSharingCircle);

    v31 = *(v0 + 8);
  }

  else
  {
    sub_10002FF48(*(v0 + 144), type metadata accessor for MemberSharingCircle);
    v25 = *(v0 + 144);
    v26 = *(v0 + 120);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 64);
    sub_100B58A3C();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_100B541A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OwnerSharingCircle();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for DelegatedShareExpirationUserNotification(0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v2[14] = *(v10 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B543A0, v1, 0);
}

uint64_t sub_100B543A0()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 136);
  *(v0 + 152) = v2;
  *(v0 + 208) = *(v1 + 24);
  return _swift_task_switch(sub_100B543CC, v2, 0);
}

uint64_t sub_100B543CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_100B54550;
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v14);
}

uint64_t sub_100B54550()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100B5467C, v3, 0);
}

uint64_t sub_100B5467C()
{
  v104 = v0;
  v1 = *(v0 + 144);
  v2 = type metadata accessor for BeaconNamingRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BAA0);
    sub_100B5AAA0(v4, v3, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 96);
      v9 = *(v0 + 32);
      v10 = *(v0 + 40);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v103[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v13 = *(v9 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_10002FF48(v10, type metadata accessor for OwnerSharingCircle);
      v17 = sub_1000136BC(v14, v16, v103);

      *(v11 + 14) = v17;
      v18 = "Error posting notification for expired delegation - invalid beacon name %{private,mask.hash}s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, v7, v18, v11, 0x16u);
      sub_100007BAC(v12);

LABEL_18:
      v51 = *(v0 + 144);
      v53 = *(v0 + 120);
      v52 = *(v0 + 128);
      v55 = *(v0 + 80);
      v54 = *(v0 + 88);
      v56 = *(v0 + 72);
      v57 = *(v0 + 56);
      v99 = *(v0 + 48);
      v102 = *(v0 + 40);
      sub_100B58A3C();
      swift_allocError();
      *v58 = 0;
      swift_willThrow();

      v59 = *(v0 + 8);
      goto LABEL_19;
    }

    v32 = *(v0 + 40);
    goto LABEL_17;
  }

  v19 = *(v0 + 80);
  v20 = *(v0 + 16);
  v21 = (v1 + *(v2 + 32));
  v23 = *v21;
  v22 = v21[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v24 = sub_10016632C();
  v25 = swift_task_alloc();
  *(v25 + 16) = v20;
  v26 = sub_1001BE474(&_swiftEmptyDictionarySingleton, sub_100B5AC54, v25, v24);

  sub_10112C704(v26, v19);

  v27 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
  {
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);

    sub_10000B3A8(v31, &qword_10169D398, &qword_10139ADE8);
    (*(v29 + 56))(v30, 1, 1, v28);
LABEL_11:
    sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 48);
    v41 = *(v0 + 16);
    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177BAA0);
    sub_100B5AAA0(v41, v40, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v43 = *(v0 + 96);
      v44 = *(v0 + 48);
      v45 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v103[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v46 = *(v45 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_10002FF48(v44, type metadata accessor for OwnerSharingCircle);
      v50 = sub_1000136BC(v47, v49, v103);

      *(v11 + 14) = v50;
      v18 = "Error posting notification for expired delegation - invalid client share identifier %{private,mask.hash}s";
      goto LABEL_15;
    }

    v32 = *(v0 + 48);
LABEL_17:

    sub_10002FF48(v32, type metadata accessor for OwnerSharingCircle);
    goto LABEL_18;
  }

  v33 = *(v0 + 192);
  v34 = *(v0 + 96);
  v35 = *(v0 + 104);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v38 = *(v27 + 48);
  (*(v0 + 184))(v36, v37, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  v39 = *(v35 + 8);
  v39(v37 + v38, v34);
  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {

    goto LABEL_11;
  }

  v100 = v39;
  v61 = *(v0 + 192);
  v63 = *(v0 + 160);
  v62 = *(v0 + 168);
  v97 = v23;
  v64 = *(v0 + 208);
  v65 = *(v0 + 120);
  v66 = *(v0 + 96);
  v68 = *(v0 + 64);
  v67 = *(v0 + 72);
  v69 = *(v0 + 16);
  (*(v0 + 184))(v65, *(v0 + 88), v66);
  v63(v67, v65, v66);
  v63(v67 + *(v68 + 20), v69 + v64, v66);
  v70 = (v67 + *(v68 + 24));
  *v70 = v97;
  v70[1] = v22;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v71 = *(v0 + 56);
  v72 = *(v0 + 16);
  v73 = type metadata accessor for Logger();
  sub_1000076D4(v73, qword_10177BAA0);
  sub_100B5AAA0(v72, v71, type metadata accessor for OwnerSharingCircle);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 96);
    v77 = *(v0 + 56);
    v78 = *(v0 + 32);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v103[0] = v80;
    *v79 = 141558275;
    *(v79 + 4) = 1752392040;
    *(v79 + 12) = 2081;
    v81 = *(v78 + 24);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    sub_10002FF48(v77, type metadata accessor for OwnerSharingCircle);
    v85 = sub_1000136BC(v82, v84, v103);

    *(v79 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v75, "Post transparency notification for expired Delegation %{private,mask.hash}s", v79, 0x16u);
    sub_100007BAC(v80);
  }

  else
  {
    v86 = *(v0 + 56);

    sub_10002FF48(v86, type metadata accessor for OwnerSharingCircle);
  }

  v87 = v100;
  v88 = *(v0 + 144);
  v90 = *(v0 + 120);
  v89 = *(v0 + 128);
  v92 = *(v0 + 88);
  v91 = *(v0 + 96);
  v94 = *(v0 + 72);
  v93 = *(v0 + 80);
  v96 = *(v0 + 56);
  v98 = *(v0 + 48);
  v101 = *(v0 + 40);
  v95 = *(*(v0 + 24) + 128);
  swift_unownedRetainStrong();
  sub_100B59D1C(v94, 0, 0);

  sub_10002FF48(v94, type metadata accessor for DelegatedShareExpirationUserNotification);
  v87(v90, v91);

  v59 = *(v0 + 8);
LABEL_19:

  return v59();
}

uint64_t sub_100B55070(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OwnerSharingCircle();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for DelegatedShareOwnerReunitedUserNotification(0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v2[14] = *(v10 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B55268, v1, 0);
}

uint64_t sub_100B55268()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 136);
  *(v0 + 152) = v2;
  *(v0 + 208) = *(v1 + 24);
  return _swift_task_switch(sub_100B55294, v2, 0);
}

uint64_t sub_100B55294()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_100B55418;
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v14);
}

uint64_t sub_100B55418()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100B55544, v3, 0);
}

uint64_t sub_100B55544()
{
  v104 = v0;
  v1 = *(v0 + 144);
  v2 = type metadata accessor for BeaconNamingRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BAA0);
    sub_100B5AAA0(v4, v3, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 96);
      v9 = *(v0 + 32);
      v10 = *(v0 + 40);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v103[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v13 = *(v9 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_10002FF48(v10, type metadata accessor for OwnerSharingCircle);
      v17 = sub_1000136BC(v14, v16, v103);

      *(v11 + 14) = v17;
      v18 = "Error posting notification for reunited delegation - invalid beacon name %{private,mask.hash}s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, v7, v18, v11, 0x16u);
      sub_100007BAC(v12);

LABEL_18:
      v51 = *(v0 + 144);
      v53 = *(v0 + 120);
      v52 = *(v0 + 128);
      v55 = *(v0 + 80);
      v54 = *(v0 + 88);
      v56 = *(v0 + 72);
      v57 = *(v0 + 56);
      v99 = *(v0 + 48);
      v102 = *(v0 + 40);
      sub_100B58A3C();
      swift_allocError();
      *v58 = 0;
      swift_willThrow();

      v59 = *(v0 + 8);
      goto LABEL_19;
    }

    v32 = *(v0 + 40);
    goto LABEL_17;
  }

  v19 = *(v0 + 80);
  v20 = *(v0 + 16);
  v21 = (v1 + *(v2 + 32));
  v23 = *v21;
  v22 = v21[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v24 = sub_10016632C();
  v25 = swift_task_alloc();
  *(v25 + 16) = v20;
  v26 = sub_1001BE474(&_swiftEmptyDictionarySingleton, sub_100B5AC54, v25, v24);

  sub_10112C704(v26, v19);

  v27 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
  {
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);

    sub_10000B3A8(v31, &qword_10169D398, &qword_10139ADE8);
    (*(v29 + 56))(v30, 1, 1, v28);
LABEL_11:
    sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 48);
    v41 = *(v0 + 16);
    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177BAA0);
    sub_100B5AAA0(v41, v40, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v43 = *(v0 + 96);
      v44 = *(v0 + 48);
      v45 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v103[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v46 = *(v45 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_10002FF48(v44, type metadata accessor for OwnerSharingCircle);
      v50 = sub_1000136BC(v47, v49, v103);

      *(v11 + 14) = v50;
      v18 = "Error posting notification for reunited delegation - invalid client share identifier %{private,mask.hash}s";
      goto LABEL_15;
    }

    v32 = *(v0 + 48);
LABEL_17:

    sub_10002FF48(v32, type metadata accessor for OwnerSharingCircle);
    goto LABEL_18;
  }

  v33 = *(v0 + 192);
  v34 = *(v0 + 96);
  v35 = *(v0 + 104);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v38 = *(v27 + 48);
  (*(v0 + 184))(v36, v37, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  v39 = *(v35 + 8);
  v39(v37 + v38, v34);
  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {

    goto LABEL_11;
  }

  v100 = v39;
  v61 = *(v0 + 192);
  v63 = *(v0 + 160);
  v62 = *(v0 + 168);
  v97 = v23;
  v64 = *(v0 + 208);
  v65 = *(v0 + 120);
  v66 = *(v0 + 96);
  v68 = *(v0 + 64);
  v67 = *(v0 + 72);
  v69 = *(v0 + 16);
  (*(v0 + 184))(v65, *(v0 + 88), v66);
  v63(v67, v65, v66);
  v63(v67 + *(v68 + 20), v69 + v64, v66);
  v70 = (v67 + *(v68 + 24));
  *v70 = v97;
  v70[1] = v22;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v71 = *(v0 + 56);
  v72 = *(v0 + 16);
  v73 = type metadata accessor for Logger();
  sub_1000076D4(v73, qword_10177BAA0);
  sub_100B5AAA0(v72, v71, type metadata accessor for OwnerSharingCircle);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 96);
    v77 = *(v0 + 56);
    v78 = *(v0 + 32);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v103[0] = v80;
    *v79 = 141558275;
    *(v79 + 4) = 1752392040;
    *(v79 + 12) = 2081;
    v81 = *(v78 + 24);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    sub_10002FF48(v77, type metadata accessor for OwnerSharingCircle);
    v85 = sub_1000136BC(v82, v84, v103);

    *(v79 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v75, "Post transparency notification for reunited Delegation %{private,mask.hash}s", v79, 0x16u);
    sub_100007BAC(v80);
  }

  else
  {
    v86 = *(v0 + 56);

    sub_10002FF48(v86, type metadata accessor for OwnerSharingCircle);
  }

  v87 = v100;
  v88 = *(v0 + 144);
  v90 = *(v0 + 120);
  v89 = *(v0 + 128);
  v92 = *(v0 + 88);
  v91 = *(v0 + 96);
  v94 = *(v0 + 72);
  v93 = *(v0 + 80);
  v96 = *(v0 + 56);
  v98 = *(v0 + 48);
  v101 = *(v0 + 40);
  v95 = *(*(v0 + 24) + 128);
  swift_unownedRetainStrong();
  sub_100B593C4(v94, 0, 0);

  sub_10002FF48(v94, type metadata accessor for DelegatedShareOwnerReunitedUserNotification);
  v87(v90, v91);

  v59 = *(v0 + 8);
LABEL_19:

  return v59();
}

uint64_t sub_100B55F38(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v2[10] = *(v8 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100B560E8, v1, 0);
}

uint64_t sub_100B560E8()
{
  v1 = *(*(v0 + 24) + 136);
  *(v0 + 120) = v1;
  *(v0 + 176) = *(type metadata accessor for OwnerSharingCircle() + 24);

  return _swift_task_switch(sub_100B56164, v1, 0);
}

uint64_t sub_100B56164()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 144) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 152) = v10;
  *(v0 + 160) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_100B562E8;
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v14);
}

uint64_t sub_100B562E8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100B56414, v3, 0);
}

uint64_t sub_100B56414()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for BeaconNamingRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177BAA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = "Error while creating transparency notification on owner for delegation stop due to item reunited with sharee- invalid owner peer trust or beacon name";
LABEL_14:
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, v6, v28, 2u);

LABEL_15:
    v29 = *(v0 + 112);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    v33 = *(v0 + 48);
    v32 = *(v0 + 56);
    v34 = *(v0 + 40);

    sub_100B58A3C();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();

    v36 = *(v0 + 8);
    goto LABEL_16;
  }

  v7 = *(v0 + 48);
  v8 = *(v0 + 16);
  v9 = (v1 + *(v2 + 32));
  v11 = *v9;
  v10 = v9[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v12 = sub_10016632C();
  v13 = swift_task_alloc();
  *(v13 + 16) = v8;
  v14 = sub_1001BE474(&_swiftEmptyDictionarySingleton, sub_100B5AC54, v13, v12);

  sub_10112C704(v14, v7);

  v15 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v15 - 8) + 48))(v7, 1, v15) == 1)
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);

    sub_10000B3A8(v19, &qword_10169D398, &qword_10139ADE8);
    (*(v17 + 56))(v18, 1, 1, v16);
LABEL_10:
    sub_10000B3A8(*(v0 + 56), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BAA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_15;
    }

    v6 = "Error while creating transparency notification on owner for delegation stop due to item reunited with sharee - invalid client share identifier";
    goto LABEL_14;
  }

  v20 = *(v0 + 160);
  v21 = *(v0 + 64);
  v22 = *(v0 + 72);
  v24 = *(v0 + 48);
  v23 = *(v0 + 56);
  v25 = *(v15 + 48);
  (*(v0 + 152))(v23, v24, v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  v26 = *(v22 + 8);
  v26(v24 + v25, v21);
  if ((*(v22 + 48))(v23, 1, v21) == 1)
  {

    goto LABEL_10;
  }

  v60 = v11;
  v62 = v26;
  v38 = *(v0 + 160);
  v40 = *(v0 + 128);
  v39 = *(v0 + 136);
  v59 = *(v0 + 176);
  v41 = *(v0 + 88);
  v42 = *(v0 + 64);
  v44 = *(v0 + 32);
  v43 = *(v0 + 40);
  v45 = *(v0 + 16);
  (*(v0 + 152))(v41, *(v0 + 56), v42);
  v40(v43, v41, v42);
  v40(v43 + *(v44 + 20), v45 + v59, v42);
  v46 = (v43 + *(v44 + 24));
  *v46 = v60;
  v46[1] = v10;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_1000076D4(v47, qword_10177BAA0);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Post transparency notification on owner for delegation stop due to item reunited with sharee", v50, 2u);
  }

  v51 = *(v0 + 112);
  v53 = *(v0 + 88);
  v52 = *(v0 + 96);
  v55 = *(v0 + 56);
  v54 = *(v0 + 64);
  v56 = *(v0 + 40);
  v61 = *(v0 + 48);
  v57 = *(v0 + 24);

  v58 = *(v57 + 128);
  swift_unownedRetainStrong();
  sub_100B59870(v56, 0, 0);

  sub_10002FF48(v56, type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification);
  v62(v53, v54);

  v36 = *(v0 + 8);
LABEL_16:

  return v36();
}

uint64_t sub_100B56A3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OwnerSharingCircle();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for DelegatedSharMaxViewsUserNotification(0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_10169D398, &qword_10139ADE8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v2[14] = *(v10 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100B56C34, v1, 0);
}

uint64_t sub_100B56C34()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 136);
  *(v0 + 152) = v2;
  *(v0 + 208) = *(v1 + 24);
  return _swift_task_switch(sub_100B56C60, v2, 0);
}

uint64_t sub_100B56C60()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  v6 = *(v0 + 16);
  v7 = *(v4 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 176) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_100B56DE4;
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100B5AC80, v9, v14);
}

uint64_t sub_100B56DE4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return _swift_task_switch(sub_100B56F10, v3, 0);
}

uint64_t sub_100B56F10()
{
  v104 = v0;
  v1 = *(v0 + 144);
  v2 = type metadata accessor for BeaconNamingRecord();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = *(v0 + 16);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177BAA0);
    sub_100B5AAA0(v4, v3, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 96);
      v9 = *(v0 + 32);
      v10 = *(v0 + 40);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v103[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v13 = *(v9 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_10002FF48(v10, type metadata accessor for OwnerSharingCircle);
      v17 = sub_1000136BC(v14, v16, v103);

      *(v11 + 14) = v17;
      v18 = "Error while creating transparency notification for expired delegation - invalid beacon name %{private,mask.hash}s.";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, v7, v18, v11, 0x16u);
      sub_100007BAC(v12);

LABEL_18:
      v51 = *(v0 + 144);
      v53 = *(v0 + 120);
      v52 = *(v0 + 128);
      v55 = *(v0 + 80);
      v54 = *(v0 + 88);
      v56 = *(v0 + 72);
      v57 = *(v0 + 56);
      v99 = *(v0 + 48);
      v102 = *(v0 + 40);
      sub_100B58A3C();
      swift_allocError();
      *v58 = 0;
      swift_willThrow();

      v59 = *(v0 + 8);
      goto LABEL_19;
    }

    v32 = *(v0 + 40);
    goto LABEL_17;
  }

  v19 = *(v0 + 80);
  v20 = *(v0 + 16);
  v21 = (v1 + *(v2 + 32));
  v23 = *v21;
  v22 = v21[1];

  sub_10002FF48(v1, type metadata accessor for BeaconNamingRecord);
  v24 = sub_10016632C();
  v25 = swift_task_alloc();
  *(v25 + 16) = v20;
  v26 = sub_1001BE474(_swiftEmptyDictionarySingleton, sub_100B58A90, v25, v24);

  sub_10112C704(v26, v19);

  v27 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  if ((*(*(v27 - 8) + 48))(v19, 1, v27) == 1)
  {
    v28 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 80);
    v30 = *(v0 + 88);

    sub_10000B3A8(v31, &qword_10169D398, &qword_10139ADE8);
    (*(v29 + 56))(v30, 1, 1, v28);
LABEL_11:
    sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694C50 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 48);
    v41 = *(v0 + 16);
    v42 = type metadata accessor for Logger();
    sub_1000076D4(v42, qword_10177BAA0);
    sub_100B5AAA0(v41, v40, type metadata accessor for OwnerSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v43 = *(v0 + 96);
      v44 = *(v0 + 48);
      v45 = *(v0 + 32);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v103[0] = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v46 = *(v45 + 24);
      sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      sub_10002FF48(v44, type metadata accessor for OwnerSharingCircle);
      v50 = sub_1000136BC(v47, v49, v103);

      *(v11 + 14) = v50;
      v18 = "Error while creating transparency notification for expired delegation - invalid client share identifier %{private,mask.hash}s.";
      goto LABEL_15;
    }

    v32 = *(v0 + 48);
LABEL_17:

    sub_10002FF48(v32, type metadata accessor for OwnerSharingCircle);
    goto LABEL_18;
  }

  v33 = *(v0 + 192);
  v34 = *(v0 + 96);
  v35 = *(v0 + 104);
  v37 = *(v0 + 80);
  v36 = *(v0 + 88);
  v38 = *(v27 + 48);
  (*(v0 + 184))(v36, v37, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  v39 = *(v35 + 8);
  v39(v37 + v38, v34);
  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {

    goto LABEL_11;
  }

  v100 = v39;
  v61 = *(v0 + 192);
  v63 = *(v0 + 160);
  v62 = *(v0 + 168);
  v97 = v23;
  v64 = *(v0 + 208);
  v65 = *(v0 + 120);
  v66 = *(v0 + 96);
  v68 = *(v0 + 64);
  v67 = *(v0 + 72);
  v69 = *(v0 + 16);
  (*(v0 + 184))(v65, *(v0 + 88), v66);
  v63(v67, v65, v66);
  v63(v67 + *(v68 + 20), v69 + v64, v66);
  v70 = (v67 + *(v68 + 24));
  *v70 = v97;
  v70[1] = v22;
  if (qword_101694C50 != -1)
  {
    swift_once();
  }

  v71 = *(v0 + 56);
  v72 = *(v0 + 16);
  v73 = type metadata accessor for Logger();
  sub_1000076D4(v73, qword_10177BAA0);
  sub_100B5AAA0(v72, v71, type metadata accessor for OwnerSharingCircle);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 96);
    v77 = *(v0 + 56);
    v78 = *(v0 + 32);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v103[0] = v80;
    *v79 = 141558275;
    *(v79 + 4) = 1752392040;
    *(v79 + 12) = 2081;
    v81 = *(v78 + 24);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    sub_10002FF48(v77, type metadata accessor for OwnerSharingCircle);
    v85 = sub_1000136BC(v82, v84, v103);

    *(v79 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v75, "Post transparency notification for expired Delegation %{private,mask.hash}s.", v79, 0x16u);
    sub_100007BAC(v80);
  }

  else
  {
    v86 = *(v0 + 56);

    sub_10002FF48(v86, type metadata accessor for OwnerSharingCircle);
  }

  v87 = v100;
  v88 = *(v0 + 144);
  v90 = *(v0 + 120);
  v89 = *(v0 + 128);
  v92 = *(v0 + 88);
  v91 = *(v0 + 96);
  v94 = *(v0 + 72);
  v93 = *(v0 + 80);
  v96 = *(v0 + 56);
  v98 = *(v0 + 48);
  v101 = *(v0 + 40);
  v95 = *(*(v0 + 24) + 128);
  swift_unownedRetainStrong();
  sub_100B5A1C8(v94, 0, 0);

  sub_10002FF48(v94, type metadata accessor for DelegatedSharMaxViewsUserNotification);
  v87(v90, v91);

  v59 = *(v0 + 8);
LABEL_19:

  return v59();
}

uint64_t sub_100B57904(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UUID();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v2[16] = *(v4 + 64);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for BeaconNamingRecord();
  v2[21] = v7;
  v8 = *(v7 - 8);
  v2[22] = v8;
  v9 = *(v8 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100B57A70, v1, 0);
}

uint64_t sub_100B57A70()
{
  v1 = *(*(v0 + 104) + 136);
  *(v0 + 192) = v1;
  return _swift_task_switch(sub_100B57A94, v1, 0);
}

uint64_t sub_100B57A94()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[14];
  (*(v3 + 16))(v2, v0[12], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[25] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_100B57BF8;
  v10 = v0[19];
  v9 = v0[20];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100B58A24, v6, v10);
}

uint64_t sub_100B57BF8()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_100B57D24, v3, 0);
}

uint64_t sub_100B57D24()
{
  v1 = v0[21];
  v2 = v0[20];
  if ((*(v0[22] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[24];
    sub_10000B3A8(v2, &unk_1016B29E0, &unk_1013B70E0);

    return _swift_task_switch(sub_100B57E98, v3, 0);
  }

  else
  {
    v4 = v0[23];
    sub_100038EDC(v2, v4, type metadata accessor for BeaconNamingRecord);
    v5 = (v4 + *(v1 + 32));
    v7 = *v5;
    v6 = v5[1];

    sub_10002FF48(v4, type metadata accessor for BeaconNamingRecord);
    v8 = v0[23];
    v9 = v0[20];
    v11 = v0[17];
    v10 = v0[18];

    v12 = v0[1];

    return v12(v7, v6);
  }
}

uint64_t sub_100B57E98()
{
  v1 = *(v0 + 192);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100B57F78;
  v5 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v5, v4);
}

uint64_t sub_100B57F78()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_100B58090, v2, 0);
}

uint64_t sub_100B58090()
{
  v1 = v0[13];
  v0[28] = v0[11];
  return _swift_task_switch(sub_100B580B4, v1, 0);
}

uint64_t sub_100B580B4()
{
  v1 = *(v0 + 136);
  v2 = getuid();
  sub_1000294F0(v2);

  return _swift_task_switch(sub_100B58124, 0, 0);
}

uint64_t sub_100B58124()
{
  v1 = *(v0[28] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_100B581D4;
  v3 = v0[17];
  v4 = v0[12];

  return sub_100687A6C((v0 + 2), v4, v3);
}

uint64_t sub_100B581D4()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v12 = *v1;

  if (v0)
  {

    v4 = sub_100B583E8;
    v5 = 0;
  }

  else
  {
    v6 = v2[28];
    v7 = v2[17];
    v8 = v2[14];
    v9 = v2[15];
    v10 = v2[13];
    (*(v9 + 8))(v7, v8);

    v4 = sub_100B5831C;
    v5 = v10;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100B5831C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];

    sub_10000B3A8((v0 + 2), &unk_1016AF910, &unk_10138C4C0);
  }

  else
  {
    v2 = 0;
  }

  v4 = v0[23];
  v5 = v0[20];
  v7 = v0[17];
  v6 = v0[18];

  v8 = v0[1];

  return v8(v2, v1);
}

uint64_t sub_100B583E8()
{
  v1 = v0[28];
  v2 = v0[13];
  (*(v0[15] + 8))(v0[17], v0[14]);

  return _swift_task_switch(sub_100B58470, v2, 0);
}

uint64_t sub_100B58470()
{
  v1 = v0[23];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];

  v5 = v0[1];

  return v5(0, 0);
}

void *sub_100B58500()
{
  v1 = v0[15];

  v2 = v0[16];
  swift_unownedRelease();
  v3 = v0[17];

  sub_10000B3A8((v0 + 18), &qword_1016B6108, &unk_1013D7910);
  v4 = v0[23];
  swift_unknownObjectRelease();
  v5 = v0[25];

  v6 = v0[26];

  v7 = v0[27];

  v8 = v0[28];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100B58578()
{
  sub_100B58500();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100B585C8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ItemSharingNotificationsService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100B58670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ItemSharingNotificationsService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100B58734(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ItemSharingNotificationsService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100B587DC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ItemSharingNotificationsService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100B58884(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ItemSharingNotificationsService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100B5892C()
{
  v1 = *v0;
  type metadata accessor for ItemSharingNotificationsService();
  sub_100B5AB90(&qword_1016B1160, v2, type metadata accessor for ItemSharingNotificationsService);
  return ActorServiceProtocol.description.getter();
}

unint64_t sub_100B58A3C()
{
  result = qword_1016B6090;
  if (!qword_1016B6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6090);
  }

  return result;
}

uint64_t sub_100B58AAC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v51 = a5;
  v7 = a3;
  v10 = sub_1000BC4D4(a3, a4);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v49 - v17;
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v53 = v5;
  v21 = *v5;
  v61 = a1;
  v22 = v63;
  result = sub_100B58E14(a1, a2, v21, v7, a4);
  if (!v22)
  {
    v57 = v20;
    v52 = v18;
    v50 = v15;
    v63 = 0;
    if (v24)
    {
      return *(v21 + 16);
    }

    v55 = a2;
    v58 = a4;
    v60 = result;
    v25 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v26 = v21;
      v28 = (v21 + 16);
      v27 = *(v21 + 16);
      v29 = v57;
      if (v25 == v27)
      {
        return v60;
      }

      v30 = v61;
      v54 = v11;
      while (v25 < v27)
      {
        v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v62 = v26;
        v56 = v31;
        v32 = v26 + v31;
        v33 = v30;
        v34 = *(v11 + 72);
        v59 = v34 * v25;
        v35 = v7;
        v36 = v58;
        sub_1000D2A70(v32 + v34 * v25, v29, v7, v58);
        v37 = v29;
        v38 = v63;
        v39 = v33(v29);
        v40 = v37;
        v7 = v35;
        result = sub_10000B3A8(v40, v35, v36);
        v63 = v38;
        if (v38)
        {
          return result;
        }

        if (v39)
        {
          v30 = v61;
          v26 = v62;
          v11 = v54;
        }

        else
        {
          v41 = v60;
          if (v25 == v60)
          {
            v30 = v61;
            v26 = v62;
            v11 = v54;
          }

          else
          {
            if ((v60 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v42 = *v28;
            if (v60 >= v42)
            {
              goto LABEL_28;
            }

            v43 = v34 * v60;
            v44 = v32 + v34 * v60;
            v45 = v58;
            result = sub_1000D2A70(v44, v52, v35, v58);
            if (v25 >= v42)
            {
              goto LABEL_29;
            }

            v46 = v50;
            sub_1000D2A70(v32 + v59, v50, v35, v45);
            v47 = v45;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v30 = v61;
              v26 = v62;
            }

            else
            {
              v26 = v51(v62);
              v30 = v61;
            }

            v11 = v54;
            v48 = v26 + v56;
            result = sub_10002311C(v46, v26 + v56 + v43, v7, v47);
            if (v25 >= *(v26 + 16))
            {
              goto LABEL_30;
            }

            result = sub_10002311C(v52, v48 + v59, v7, v47);
            *v53 = v26;
            v41 = v60;
          }

          v60 = v41 + 1;
        }

        v29 = v57;
        ++v25;
        v28 = (v26 + 16);
        v27 = *(v26 + 16);
        if (v25 == v27)
        {
          return v60;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100B58E14(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(sub_1000BC4D4(a4, a5) - 8);
    v13 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    if (v6 == ++v11)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_100B58F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = type metadata accessor for DelegatedShareStartUserNotification();
  v49[4] = &off_10160E238;
  v10 = sub_1000280DC(v49);
  sub_100B5AAA0(a1, v10, type metadata accessor for DelegatedShareStartUserNotification);
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12];

  v14 = sub_101119244(v10);
  UUID.uuidString.getter();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v15 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C120);
  sub_10001F280(v49, aBlock);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v20;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v17;
    v40 = v23;
    *&v48[0] = v23;
    *v22 = 136315138;
    v24 = sub_1000035D0(aBlock, v45);
    v25 = v43;
    v26 = v9;
    (*(v43 + 16))(v9, v24, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v6;
    v29 = v15;
    v30 = v13;
    v31 = a2;
    v32 = a3;
    v34 = v33;
    (*(v25 + 8))(v26, v28);
    sub_100007BAC(aBlock);
    v35 = sub_1000136BC(v27, v34, v48);
    a3 = v32;
    a2 = v31;
    v13 = v30;
    v15 = v29;

    *(v22 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v19, v41, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v22, 0xCu);
    sub_100007BAC(v40);
    v17 = v42;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v49, v48);
  v36 = swift_allocObject();
  sub_10000A748(v48, v36 + 16);
  *(v36 + 56) = a2;
  *(v36 + 64) = a3;
  v46 = sub_1007A9F68;
  v47 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v45 = &unk_101649078;
  v37 = _Block_copy(aBlock);
  sub_100012908(a2);

  [v13 addNotificationRequest:v17 withCompletionHandler:v37];

  _Block_release(v37);
  return sub_100007BAC(v49);
}

uint64_t sub_100B593C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = type metadata accessor for DelegatedShareOwnerReunitedUserNotification(0);
  v49[4] = &off_101644E20;
  v10 = sub_1000280DC(v49);
  sub_100B5AAA0(a1, v10, type metadata accessor for DelegatedShareOwnerReunitedUserNotification);
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12];

  v14 = sub_101119A58(v10);
  UUID.uuidString.getter();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v15 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C120);
  sub_10001F280(v49, aBlock);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v20;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v17;
    v40 = v23;
    *&v48[0] = v23;
    *v22 = 136315138;
    v24 = sub_1000035D0(aBlock, v45);
    v25 = v43;
    v26 = v9;
    (*(v43 + 16))(v9, v24, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v6;
    v29 = v15;
    v30 = v13;
    v31 = a2;
    v32 = a3;
    v34 = v33;
    (*(v25 + 8))(v26, v28);
    sub_100007BAC(aBlock);
    v35 = sub_1000136BC(v27, v34, v48);
    a3 = v32;
    a2 = v31;
    v13 = v30;
    v15 = v29;

    *(v22 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v19, v41, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v22, 0xCu);
    sub_100007BAC(v40);
    v17 = v42;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v49, v48);
  v36 = swift_allocObject();
  sub_10000A748(v48, v36 + 16);
  *(v36 + 56) = a2;
  *(v36 + 64) = a3;
  v46 = sub_1007A9F68;
  v47 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v45 = &unk_101648F88;
  v37 = _Block_copy(aBlock);
  sub_100012908(a2);

  [v13 addNotificationRequest:v17 withCompletionHandler:v37];

  _Block_release(v37);
  return sub_100007BAC(v49);
}

uint64_t sub_100B59870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification(0);
  v49[4] = &off_101644E88;
  v10 = sub_1000280DC(v49);
  sub_100B5AAA0(a1, v10, type metadata accessor for DelegatedShareShareeReunitedShareeUserNotification);
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12];

  v14 = sub_101119FBC(v10);
  UUID.uuidString.getter();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v15 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C120);
  sub_10001F280(v49, aBlock);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v20;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v17;
    v40 = v23;
    *&v48[0] = v23;
    *v22 = 136315138;
    v24 = sub_1000035D0(aBlock, v45);
    v25 = v43;
    v26 = v9;
    (*(v43 + 16))(v9, v24, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v6;
    v29 = v15;
    v30 = v13;
    v31 = a2;
    v32 = a3;
    v34 = v33;
    (*(v25 + 8))(v26, v28);
    sub_100007BAC(aBlock);
    v35 = sub_1000136BC(v27, v34, v48);
    a3 = v32;
    a2 = v31;
    v13 = v30;
    v15 = v29;

    *(v22 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v19, v41, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v22, 0xCu);
    sub_100007BAC(v40);
    v17 = v42;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v49, v48);
  v36 = swift_allocObject();
  sub_10000A748(v48, v36 + 16);
  *(v36 + 56) = a2;
  *(v36 + 64) = a3;
  v46 = sub_1007A9F68;
  v47 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v45 = &unk_101648F10;
  v37 = _Block_copy(aBlock);
  sub_100012908(a2);

  [v13 addNotificationRequest:v17 withCompletionHandler:v37];

  _Block_release(v37);
  return sub_100007BAC(v49);
}

uint64_t sub_100B59D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = type metadata accessor for DelegatedShareExpirationUserNotification(0);
  v49[4] = &off_101644DB8;
  v10 = sub_1000280DC(v49);
  sub_100B5AAA0(a1, v10, type metadata accessor for DelegatedShareExpirationUserNotification);
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12];

  v14 = sub_10111A51C(v10);
  UUID.uuidString.getter();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v15 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C120);
  sub_10001F280(v49, aBlock);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v20;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v17;
    v40 = v23;
    *&v48[0] = v23;
    *v22 = 136315138;
    v24 = sub_1000035D0(aBlock, v45);
    v25 = v43;
    v26 = v9;
    (*(v43 + 16))(v9, v24, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v6;
    v29 = v15;
    v30 = v13;
    v31 = a2;
    v32 = a3;
    v34 = v33;
    (*(v25 + 8))(v26, v28);
    sub_100007BAC(aBlock);
    v35 = sub_1000136BC(v27, v34, v48);
    a3 = v32;
    a2 = v31;
    v13 = v30;
    v15 = v29;

    *(v22 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v19, v41, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v22, 0xCu);
    sub_100007BAC(v40);
    v17 = v42;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v49, v48);
  v36 = swift_allocObject();
  sub_10000A748(v48, v36 + 16);
  *(v36 + 56) = a2;
  *(v36 + 64) = a3;
  v46 = sub_1007A9F68;
  v47 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v45 = &unk_101649000;
  v37 = _Block_copy(aBlock);
  sub_100012908(a2);

  [v13 addNotificationRequest:v17 withCompletionHandler:v37];

  _Block_release(v37);
  return sub_100007BAC(v49);
}

uint64_t sub_100B5A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = type metadata accessor for DelegatedSharMaxViewsUserNotification(0);
  v49[4] = &off_101644EF0;
  v10 = sub_1000280DC(v49);
  sub_100B5AAA0(a1, v10, type metadata accessor for DelegatedSharMaxViewsUserNotification);
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12];

  v14 = sub_10111AA80(v10);
  UUID.uuidString.getter();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() requestWithIdentifier:v16 content:v15 trigger:0 destinations:7];

  if (qword_101694ED8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C120);
  sub_10001F280(v49, aBlock);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v20;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v17;
    v40 = v23;
    *&v48[0] = v23;
    *v22 = 136315138;
    v24 = sub_1000035D0(aBlock, v45);
    v25 = v43;
    v26 = v9;
    (*(v43 + 16))(v9, v24, v6);
    sub_100B5AB90(&qword_101696930, 255, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v6;
    v29 = v15;
    v30 = v13;
    v31 = a2;
    v32 = a3;
    v34 = v33;
    (*(v25 + 8))(v26, v28);
    sub_100007BAC(aBlock);
    v35 = sub_1000136BC(v27, v34, v48);
    a3 = v32;
    a2 = v31;
    v13 = v30;
    v15 = v29;

    *(v22 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v19, v41, "Notification with identifier %s **WILL NOT** be forwarded to the companion", v22, 0xCu);
    sub_100007BAC(v40);
    v17 = v42;
  }

  else
  {

    sub_100007BAC(aBlock);
  }

  sub_10001F280(v49, v48);
  v36 = swift_allocObject();
  sub_10000A748(v48, v36 + 16);
  *(v36 + 56) = a2;
  *(v36 + 64) = a3;
  v46 = sub_100358EC4;
  v47 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10077732C;
  v45 = &unk_101648E98;
  v37 = _Block_copy(aBlock);
  sub_100012908(a2);

  [v13 addNotificationRequest:v17 withCompletionHandler:v37];

  _Block_release(v37);
  return sub_100007BAC(v49);
}

unint64_t sub_100B5A68C()
{
  result = qword_1016B6098;
  if (!qword_1016B6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6098);
  }

  return result;
}

unint64_t sub_100B5A6E0()
{
  result = qword_1016B60A0;
  if (!qword_1016B60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B60A0);
  }

  return result;
}

uint64_t sub_100B5A784(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B4BDEC(a1, v1);
}

uint64_t sub_100B5A81C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100B4C3D4(a1, v1);
}

uint64_t sub_100B5A8B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100B4C9BC(a1, v4, v5, v6);
}

uint64_t sub_100B5A9F4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100B41634(a1, a2, v2);
}

uint64_t sub_100B5AAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B5AB08(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100B5AB90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100B5ABEC()
{
  result = qword_1016B6110;
  if (!qword_1016B6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6110);
  }

  return result;
}

uint64_t sub_100B5AC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OfflineLostModeInfoLookupEndpoint();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = URL.absoluteString.getter();
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    URLComponents.init(string:)();

    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 8))(a1, v21);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v24 = *(v9 + 32);
      v24(v12, v7, v8);
      v24(v17, v12, v8);
      sub_100B5B00C(v17, a2);
      v23 = 0;
      return (*(v14 + 56))(a2, v23, 1, v13);
    }

    sub_100B5AFA4(v7);
  }

  else
  {
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 8))(a1, v22);
  }

  v23 = 1;
  return (*(v14 + 56))(a2, v23, 1, v13);
}

uint64_t type metadata accessor for OfflineLostModeInfoLookupEndpoint()
{
  result = qword_1016B6170;
  if (!qword_1016B6170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B5AFA4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B5B00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineLostModeInfoLookupEndpoint();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B5B098()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B61A8);
  v1 = sub_1000076D4(v0, qword_1016B61A8);
  if (qword_101694CC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BBF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100B5B160()
{
  v0 = type metadata accessor for Table();
  sub_100044B3C(v0, qword_10177BAB8);
  sub_1000076D4(v0, qword_10177BAB8);
  return Table.init(_:database:)();
}

uint64_t sub_100B5B1CC(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DatabaseState();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100B5B290, 0, 0);
}

uint64_t sub_100B5B290()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 72);
  v6 = *(v0 + 16);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v1, enum case for DatabaseState.unavailable(_:), v4);
  v7 = sub_1000BC4D4(&qword_1016A9010, &qword_1013BA868);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v2 + 16))(v10 + *(*v10 + class metadata base offset for ManagedBuffer + 16), v1, v4);
  (*(v2 + 8))(v1, v4);
  *(v3 + 14) = v10;
  v11 = sub_1000BC4D4(&qword_1016A9018, &unk_1013BA870);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v3 + 15) = AsyncStreamProvider.init()();
  *(v3 + 16) = 0;
  *&v3[OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_currentVersion] = 1;
  v14 = OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_baseContainerURL;
  v15 = type metadata accessor for URL();
  *(v0 + 56) = v15;
  v16 = *(v15 - 8);
  *(v0 + 64) = v16;
  (*(v16 + 16))(&v3[v14], v6, v15);
  v3[OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_temporary] = v5;

  return _swift_task_switch(sub_100767500, v3, 0);
}

uint64_t sub_100B5B4C8()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_baseContainerURL;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LocalStorageDatabase()
{
  result = qword_1016B61E8;
  if (!qword_1016B61E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B5B5AC()
{
  result = type metadata accessor for URL();
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

uint64_t sub_100B5B6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd20LocalStorageDatabase_baseContainerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100B5B724()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_100B5B75C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_100B5B81C()
{
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathComponent(_:isDirectory:)();
  return URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100B5B904()
{
  v1 = type metadata accessor for DatabaseState();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  v14 = v2[1];
  v14((v6 + v7), v1);
  v9 = enum case for DatabaseState.available(_:);
  v10 = v2[13];
  v10((v6 + v7), enum case for DatabaseState.available(_:), v1);
  os_unfair_lock_unlock((v6 + v8));
  v11 = *(v0 + 120);
  v10(v5, v9, v1);
  AsyncStreamProvider.yield(value:transaction:)();
  return v14(v5, v1);
}

void sub_100B5BAB8(int a1, int a2)
{
  v20 = *v2;
  v5 = type metadata accessor for Connection.TransactionMode();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B61A8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v10, v11, "Migrate schema %d -> %d", v12, 0xEu);
  }

  if (a2 == 1)
  {
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    v13._object = 0x80000001013513F0;
    Connection.execute(_:)(v13);
    if (!v14)
    {
      v15._countAndFlagsBits = 0xD000000000000018;
      v15._object = 0x8000000101351410;
      Connection.execute(_:)(v15);
      if (!v17)
      {
        __chkstk_darwin(v16);
        v18 = v21;
        (*(v21 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v5);
        Connection.transaction(_:block:)();
        (*(v18 + 8))(v8, v5);
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v22 = 0xD000000000000013;
    v23 = 0x800000010135ECD0;
    v24 = a2;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100B5BEB8()
{
  v1 = *v0;
  type metadata accessor for LocalStorageDatabase();
  sub_100B5DD20(&qword_1016B62E0);
  return Database.description.getter();
}

uint64_t sub_100B5BF10()
{
  v1 = async function pointer to Database.isolatedDescription.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = type metadata accessor for LocalStorageDatabase();
  v4 = sub_100B5DD20(&qword_1016B62E0);
  *v2 = v0;
  v2[1] = sub_1007682F4;

  return Database.isolatedDescription.getter(v3, v4);
}

uint64_t sub_100B5C048()
{
  if (qword_101694C60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Table();
  sub_1000076D4(v1, qword_10177BAB8);
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  v4 = sub_1000076D4(v3, qword_10177BBA8);
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1000041A4(&qword_101699E98, &qword_101699DC0, &unk_10139D110);
  v5 = sub_1000280DC((v2 + 32));
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100B5C290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100B5C048();
}

uint64_t sub_100B5C2AC()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v67 = v58 - v2;
  v3 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v63 = v58 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v69 = v58 - v8;
  v9 = sub_1000BC4D4(&unk_1016AB5A0, &unk_1013BF4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v62 = v58 - v11;
  v12 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v61 = v58 - v14;
  v15 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v68 = v58 - v17;
  v18 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v58 - v20;
  v22 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v58 - v24;
  if (qword_101694C68 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v27 = sub_1000076D4(v26, qword_10177BAD0);
  v28 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v29 = *(*(v28 - 8) + 56);
  v70 = v28;
  v29(v25, 1, 1);
  v64 = *(v26 - 8);
  v30 = *(v64 + 56);
  v30(v21, 1, 1, v26);
  type metadata accessor for UUID();
  v65 = v27;
  TableBuilder.column<A>(_:primaryKey:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C70 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v31, qword_10177BAE8);
  (v29)(v25, 1, 1, v70);
  v66 = v26;
  v30(v21, 1, 1, v26);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CB0 != -1)
  {
    swift_once();
  }

  v32 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v32, qword_10177BBA8);
  v33 = v70;
  (v29)(v25, 1, 1, v70);
  v34 = *(v32 - 8);
  v35 = v68;
  v59 = *(v34 + 56);
  v60 = v32;
  v58[1] = v34 + 56;
  v59(v68, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v35, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C80 != -1)
  {
    swift_once();
  }

  v36 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v36, qword_10177BB18);
  (v29)(v25, 1, 1, v33);
  v37 = v61;
  (*(*(v36 - 8) + 56))(v61, 1, 1, v36);
  sub_100028088();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v37, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C90 != -1)
  {
    swift_once();
  }

  v38 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_1000076D4(v38, qword_10177BB48);
  (v29)(v25, 1, 1, v33);
  v39 = *(*(v38 - 8) + 56);
  v40 = v62;
  v39(v62, 1, 1, v38);
  sub_10022A60C();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C88 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v38, qword_10177BB30);
  (v29)(v25, 1, 1, v70);
  v39(v40, 1, 1, v38);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v40, &unk_1016AB5A0, &unk_1013BF4D0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CB8 != -1)
  {
    swift_once();
  }

  v41 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v41, qword_10177BBC0);
  v42 = v70;
  (v29)(v25, 1, 1, v70);
  v43 = v68;
  v59(v68, 1, 1, v60);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v43, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  v44 = v69;
  if (qword_101694C78 != -1)
  {
    swift_once();
  }

  v45 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v45, qword_10177BB00);
  (v29)(v25, 1, 1, v42);
  v46 = *(*(v45 - 8) + 56);
  v46(v44, 1, 1, v45);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694C98 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v45, qword_10177BB60);
  (v29)(v25, 1, 1, v42);
  v68 = v46;
  v46(v44, 1, 1, v45);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v44, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  v47 = v29;
  if (qword_101694CA0 != -1)
  {
    swift_once();
  }

  v48 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v48, qword_10177BB78);
  (v29)(v25, 1, 1, v42);
  v49 = v63;
  (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v49, &qword_10169DE60, &unk_10139D1C0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CA8 != -1)
  {
    swift_once();
  }

  v50 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v50, qword_10177BB90);
  v47(v25, 1, 1, v42);
  v51 = v69;
  (v68)(v69, 1, 1, v45);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v51, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  if (qword_101694CC0 != -1)
  {
    swift_once();
  }

  v52 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_1000076D4(v52, qword_10177BBD8);
  v47(v25, 1, 1, v42);
  v53 = v67;
  (*(*(v52 - 8) + 56))(v67, 1, 1, v52);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v53, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v25, &qword_10169DE30, &unk_10139D190);
  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_101385D80;
  v55 = v66;
  *(v54 + 56) = v66;
  *(v54 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0);
  v56 = sub_1000280DC((v54 + 32));
  (*(v64 + 16))(v56, v65, v55);
  TableBuilder.unique(_:)();
}

uint64_t sub_100B5D1DC()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177BAD0);
  sub_1000076D4(v0, qword_10177BAD0);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D284()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177BAE8);
  sub_1000076D4(v0, qword_10177BAE8);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D338()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177BB00);
  sub_1000076D4(v0, qword_10177BB00);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D3F8()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177BB18);
  sub_1000076D4(v0, qword_10177BB18);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D4A8()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177BB30);
  sub_1000076D4(v0, qword_10177BB30);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D560()
{
  v0 = sub_1000BC4D4(&qword_101699E60, &unk_1013BF4C0);
  sub_100044B3C(v0, qword_10177BB48);
  sub_1000076D4(v0, qword_10177BB48);
  sub_1000041A4(&qword_1016AB598, &qword_101699E60, &unk_1013BF4C0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D614()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177BB60);
  sub_1000076D4(v0, qword_10177BB60);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D6D0()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_100044B3C(v0, qword_10177BB78);
  sub_1000076D4(v0, qword_10177BB78);
  sub_1000041A4(&qword_10169DE18, &qword_101699E88, &unk_10139D170);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D790()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177BB90);
  sub_1000076D4(v0, qword_10177BB90);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D84C()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177BBA8);
  sub_1000076D4(v0, qword_10177BBA8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D908()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177BBC0);
  sub_1000076D4(v0, qword_10177BBC0);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5D9C0()
{
  v0 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  sub_100044B3C(v0, qword_10177BBD8);
  sub_1000076D4(v0, qword_10177BBD8);
  sub_1000041A4(&qword_101699D88, &qword_101699D78, &unk_1013BF4B0);
  return ExpressionType.init(_:)();
}

uint64_t sub_100B5DA78()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BBF0);
  sub_1000076D4(v0, qword_10177BBF0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B5DAF8()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v7 >> 60 == 15)
  {
    v8 = static Data.random(bytes:)();
    v10 = v9;
    v12[0] = v8;
    v12[1] = v9;
    (*(v2 + 104))(v5, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v13 = v8;
    sub_100017D5C(v8, v10);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v5, v1);
    v11 = v13;
    sub_100016590(v13, v10);
    return v11;
  }

  return result;
}

uint64_t sub_100B5DD20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalStorageDatabase();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

searchpartyd::MessagingDestination __swiftcall MessagingDestination.init(phoneNumber:)(Swift::String phoneNumber)
{
  v1 = String._bridgeToObjectiveC()();
  v2 = IDSCopyIDForPhoneNumber();

  if (v2)
  {

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v3 = searchpartyd_MessagingDestination_DestinationType_phoneNumber;
    v4 = v6;
    v5 = v8;
  }

  else
  {
    __break(1u);
  }

  result.destination._object = v5;
  result.destination._countAndFlagsBits = v4;
  result.type = v3;
  return result;
}

searchpartyd::MessagingDestination __swiftcall MessagingDestination.init(email:)(Swift::String email)
{
  v1 = String._bridgeToObjectiveC()();
  v2 = IDSCopyIDForEmailAddress();

  if (v2)
  {

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v3 = searchpartyd_MessagingDestination_DestinationType_email;
    v4 = v6;
    v5 = v8;
  }

  else
  {
    __break(1u);
  }

  result.destination._object = v5;
  result.destination._countAndFlagsBits = v4;
  result.type = v3;
  return result;
}

uint64_t static MessagingDestination.== infix(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100B5DEBC(unsigned __int8 a1, uint64_t a2, void *a3)
{
  if (a1 - 2 < 4)
  {
    return 2;
  }

  if (!a1)
  {
    v4 = sub_100EB3708(0, a2, a3);
    v5 = [v4 destination];

    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    v6 = CMFItemCreateWithEmailAddress();

    if (v6)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v7 = sub_100EB3708(1, a2, a3);
  v8 = [v7 destination];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = CFPhoneNumberCreate();

  result = CMFItemCreateWithPhoneNumber();
  if (result)
  {

LABEL_12:
    IsItemBlocked = CMFBlockListIsItemBlocked();
    swift_unknownObjectRelease();
    return IsItemBlocked != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100B5E0B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != 2)
  {
    v9 = a1;

    return v9;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v5 _stripPotentialTokenURIWithToken:0];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
    if (v8)
    {
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  _StringGuts.grow(_:)(39);

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x800000010136DD00;
  String.append(_:)(v12);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100B5E220()
{
  if (*v0)
  {
    result = 0x74616E6974736564;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_100B5E25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100B5E33C(uint64_t a1)
{
  v2 = sub_100B5EA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B5E378(uint64_t a1)
{
  v2 = sub_100B5EA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessagingDestination.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_1000BC4D4(&qword_1016B62E8, &qword_1013D7C30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B5EA34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_100B5EA88();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100B5E580@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100B5EADC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100B5E5D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t MessagingDestination.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int MessagingDestination.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100B5E6BC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B5E720()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  Hasher._combine(_:)(*v0);

  return String.hash(into:)();
}

Swift::Int sub_100B5E774()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B5E7D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0()
{
  sub_1000DF96C();
  v0 = StringProtocol.contains<A>(_:)();
  v1 = String._bridgeToObjectiveC()();
  if (v0)
  {
    v2 = IDSCopyIDForEmailAddress();

    if (v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    v2 = IDSCopyIDForPhoneNumber();

    if (v2)
    {
LABEL_5:

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  __break(1u);
}

uint64_t _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0()
{
  v0._countAndFlagsBits = 0x3A6F746C69616DLL;
  v0._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v0))
  {
    return 0;
  }

  v2._countAndFlagsBits = 980182388;
  v2._object = 0xE400000000000000;
  if (String.hasPrefix(_:)(v2))
  {
    return 1;
  }

  v3._countAndFlagsBits = 0x3A6E656B6F74;
  v3._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v3))
  {
    return 2;
  }

  v4._countAndFlagsBits = 0x6B6F742D666C6573;
  v4._object = 0xEB000000003A6E65;
  if (String.hasPrefix(_:)(v4))
  {
    return 2;
  }

  v5._countAndFlagsBits = 0x3A656369766564;
  v5._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v5))
  {
    return 3;
  }

  v6._countAndFlagsBits = 0x3A6E6F6973736573;
  v6._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v6))
  {
    return 4;
  }

  return 0;
}

unint64_t sub_100B5EA34()
{
  result = qword_1016B62F0;
  if (!qword_1016B62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B62F0);
  }

  return result;
}

unint64_t sub_100B5EA88()
{
  result = qword_1016B62F8;
  if (!qword_1016B62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B62F8);
  }

  return result;
}

uint64_t sub_100B5EADC(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6328, &qword_1013D7F68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100B5EA34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    sub_100B5EE88();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_100B5ECA4()
{
  result = qword_1016B6300;
  if (!qword_1016B6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6300);
  }

  return result;
}

unint64_t sub_100B5ED30()
{
  result = qword_1016B6308;
  if (!qword_1016B6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6308);
  }

  return result;
}

unint64_t sub_100B5ED88()
{
  result = qword_1016B6310;
  if (!qword_1016B6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6310);
  }

  return result;
}

unint64_t sub_100B5EDE0()
{
  result = qword_1016B6318;
  if (!qword_1016B6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6318);
  }

  return result;
}

unint64_t sub_100B5EE34()
{
  result = qword_1016B6320;
  if (!qword_1016B6320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6320);
  }

  return result;
}

unint64_t sub_100B5EE88()
{
  result = qword_1016B6330;
  if (!qword_1016B6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6330);
  }

  return result;
}

double sub_100B5EEF0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B5EFF4(a1, v10);
  if (!v2)
  {
    v5 = v18;
    *(a2 + 128) = v17;
    *(a2 + 144) = v5;
    *(a2 + 160) = v19;
    *(a2 + 176) = v20;
    v6 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v6;
    v7 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v7;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return result;
}

unint64_t sub_100B5EF70(uint64_t a1)
{
  *(a1 + 8) = sub_100B5EFA0();
  result = sub_100A22270();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B5EFA0()
{
  result = qword_1016B6338;
  if (!qword_1016B6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6338);
  }

  return result;
}

uint64_t sub_100B5EFF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v64, v65);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
LABEL_14:
    sub_100007BAC(v64);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v64, v65);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v66 = v11;
  sub_10015049C(v64, v65);
  v62 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v63 = v12;
  sub_10015049C(v64, v65);
  v60 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v61 = v13;
  sub_10015049C(v64, v65);
  v58 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v59 = v14;
  sub_10015049C(v64, v65);
  v15 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v17 = v16;
  LOBYTE(v54) = sub_1000E0A3C();
  result = DataProtocol.intValue.getter();
  v19 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = (v19 * 20) >> 64;
  v19 *= 5;
  if (v20 != (4 * v19) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (4 * v19 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v57 = v15;
  v55 = Data.subdata(in:)();
  v56 = v21;
  sub_10015049C(v64, v65);
  v52 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v53 = v22;
  sub_10015049C(v64, v65);
  v50 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v51 = v23;
  sub_10015049C(v64, v65);
  v48 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v49 = v24;
  sub_10015049C(v64, v65);
  v46 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v47 = v25;
  sub_10015049C(v64, v65);
  v44 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v45 = v26;
  v54 = DataProtocol.intValue.getter();
  sub_10015049C(v64, v65);
  v43 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v15 = v27;
  if (v54 > 3)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_11:
      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177C418);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v30, v31, "Invalid beaconPartId %ld!", v32, 0xCu);
      }

      v33 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v33 - 8) + 104))(v34, enum case for BinaryDecodingError.decodingError(_:), v33);
      swift_willThrow();
      sub_100016590(v43, v15);
      sub_100016590(v44, v45);
      sub_100016590(v46, v47);
      sub_100016590(v48, v49);
      sub_100016590(v50, v51);
      sub_100016590(v52, v53);
      sub_100016590(v55, v56);
      sub_100016590(v57, v17);
      sub_100016590(v58, v59);
      sub_100016590(v60, v61);
      sub_100016590(v62, v63);
      sub_100016590(v10, v66);
      sub_100016590(v8, v9);
      goto LABEL_14;
    }

LABEL_37:
    swift_once();
    goto LABEL_11;
  }

  sub_100016590(v44, v45);
  result = sub_100016590(v57, v17);
  if (v54 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v19 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v19)
    {
      v28 = BYTE6(v9);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (v19 != 2)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v35 = *(v8 + 16);
  v36 = *(v8 + 24);
  v37 = __OFSUB__(v36, v35);
  v28 = v36 - v35;
  if (v37)
  {
    __break(1u);
LABEL_22:
    LODWORD(v28) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v28 = v28;
  }

LABEL_24:
  if (v28 != 32)
  {
    goto LABEL_40;
  }

  v38 = v59 >> 62;
  if ((v59 >> 62) <= 1)
  {
    if (!v38)
    {
      v39 = BYTE6(v59);
      goto LABEL_34;
    }

LABEL_32:
    LODWORD(v39) = HIDWORD(v58) - v58;
    if (!__OFSUB__(HIDWORD(v58), v58))
    {
      v39 = v39;
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (v38 != 2)
  {
    goto LABEL_41;
  }

  v41 = *(v58 + 16);
  v40 = *(v58 + 24);
  v37 = __OFSUB__(v40, v41);
  v39 = v40 - v41;
  if (v37)
  {
    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  if (v39 == 1)
  {
    sub_100007BAC(v64);
    result = sub_100007BAC(a1);
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v58;
    *(a2 + 24) = v59;
    v42 = v66;
    *(a2 + 32) = v10;
    *(a2 + 40) = v42;
    *(a2 + 48) = v55;
    *(a2 + 56) = v56;
    *(a2 + 64) = v62;
    *(a2 + 72) = v63;
    *(a2 + 80) = v60;
    *(a2 + 88) = v61;
    *(a2 + 96) = v52;
    *(a2 + 104) = v53;
    *(a2 + 112) = v50;
    *(a2 + 120) = v51;
    *(a2 + 128) = v48;
    *(a2 + 136) = v49;
    *(a2 + 144) = v46;
    *(a2 + 152) = v47;
    *(a2 + 160) = v54;
    *(a2 + 168) = v43;
    *(a2 + 176) = v15;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_100B5F680(char a1)
{
  result = 0x4E6E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 12645;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74617453636E7973;
      break;
    case 4:
      result = 1684628325;
      break;
    case 5:
      result = 0x644970696863;
      break;
    case 6:
      result = 0x754E6C6169726573;
      break;
    case 7:
      result = 0x644974726170;
      break;
    case 8:
      result = 0x6F636165426D756ELL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0x6E55646572616873;
      break;
    case 12:
      result = 0x314B64656573;
      break;
    case 13:
    case 14:
      result = 0x726F737365636361;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x69634572656E776FLL;
      break;
    case 18:
      result = 0x69684372656E776FLL;
      break;
    case 19:
      result = 0x7372655663657073;
      break;
    case 20:
      result = 0x657261776D726966;
      break;
    case 21:
      result = 0x49746375646F7270;
      break;
    case 22:
      result = 0x6449726F646E6576;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100B5F93C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B6348, &qword_1013D8B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B62668();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v47 = *v3;
  v37 = *v3;
  v36 = 0;
  sub_1001022C4(&v47, v35);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v37, *(&v37 + 1));
  if (!v2)
  {
    v46 = v3[1];
    v37 = v3[1];
    v36 = 1;
    sub_1001022C4(&v46, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v45 = v3[2];
    v37 = v3[2];
    v36 = 2;
    sub_1000D2A70(&v45, v35, &qword_1016A40E0, &unk_101396F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v37, *(&v37 + 1));
    v12 = *(v3 + 6);
    LOBYTE(v37) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = *(v3 + 56);
    v37 = *(v3 + 56);
    v36 = 4;
    sub_1001022C4(&v44, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v43 = *(v3 + 72);
    v37 = *(v3 + 72);
    v36 = 5;
    sub_1001022C4(&v43, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v42 = *(v3 + 88);
    v37 = *(v3 + 88);
    v36 = 6;
    sub_1001022C4(&v42, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v13 = *(v3 + 13);
    LOBYTE(v37) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 14);
    v15 = *(v3 + 120);
    LOBYTE(v37) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v37 = *(v3 + 16);
    v35[0] = 9;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v37 = *(v3 + 17);
    v35[0] = 10;
    sub_1000BC4D4(&qword_1016AAA40, &qword_1013D8B80);
    sub_100837688();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 18);
    v17 = *(v3 + 152);
    LOBYTE(v37) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v3[10];
    v37 = v3[10];
    v36 = 12;
    sub_1001022C4(&v41, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v40 = v3[11];
    v37 = v3[11];
    v36 = 13;
    sub_1001022C4(&v40, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v39 = v3[12];
    v37 = v3[12];
    v36 = 14;
    sub_1001022C4(&v39, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v38 = v3[13];
    v37 = v3[13];
    v36 = 15;
    sub_1001022C4(&v38, v35);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v37, *(&v37 + 1));
    v18 = *(v3 + 28);
    v19 = *(v3 + 29);
    LOBYTE(v37) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 30);
    v21 = *(v3 + 31);
    LOBYTE(v37) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 32);
    v23 = *(v3 + 33);
    LOBYTE(v37) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + 34);
    v25 = *(v3 + 35);
    LOBYTE(v37) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 36);
    v27 = *(v3 + 37);
    LOBYTE(v37) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = *(v3 + 38);
    v29 = *(v3 + 39);
    LOBYTE(v37) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = *(v3 + 40);
    v31 = *(v3 + 41);
    LOBYTE(v37) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 42);
    v33 = *(v3 + 43);
    LOBYTE(v37) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100B601B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B627D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B601D8(uint64_t a1)
{
  v2 = sub_100B62668();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B60214(uint64_t a1)
{
  v2 = sub_100B62668();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B602A4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v113 = a4;
  v114 = a5;
  v110 = a2;
  v111 = a3;
  v112 = a6;
  v7 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v120 = *(v7 - 8);
  v8 = *(v120 + 64);
  __chkstk_darwin(v7 - 8);
  v124 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v10 = *(*(v129 - 8) + 64);
  v11 = __chkstk_darwin(v129);
  v119 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v126 = (&v107 - v14);
  __chkstk_darwin(v13);
  v128 = (&v107 - v15);
  v16 = a1[14];
  v138 = a1[15];
  v154 = a1[16];
  v155 = v138;
  v17 = a1[2];
  v139 = v154;
  v140 = v17;
  v152 = *(a1 + 104);
  v153 = v17;
  v136 = *(a1 + 120);
  v137 = v152;
  v150 = *(a1 + 136);
  v151 = v136;
  v135 = v150;
  v134 = *(a1 + 160);
  v133 = *(a1 + 19);
  v147 = v16;
  sub_1001022C4(&v155, &v146);
  sub_1001022C4(&v154, &v146);
  sub_1000D2A70(&v153, &v146, &qword_1016A40E0, &unk_101396F30);
  sub_1001022C4(&v152, &v146);
  sub_1001022C4(&v151, &v146);
  sub_1001022C4(&v150, &v146);
  sub_1000E0A3C();
  v18 = DataProtocol.intValue.getter();
  v19 = *(a1 + 21);
  v20 = *(a1 + 22);
  v115 = a1;
  v108 = v19;
  v109 = v18;
  v148 = v20;
  v149 = v19;
  sub_1000D2A70(&v149, &v147, &qword_101699EB8, &qword_101398AA0);
  sub_1000D2A70(&v148, &v147, &qword_1016AAA28, &unk_1013BD990);
  v21 = sub_100908488(_swiftEmptyArrayStorage);
  v22 = v20 + 64;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 64);
  v26 = (v23 + 63) >> 6;
  v121 = v20;

  v27 = 0;
  v125 = 0;
  v117 = v26;
  v118 = v20 + 64;
  if (v25)
  {
    while (1)
    {
      v28 = v27;
LABEL_8:
      v29 = __clz(__rbit64(v25)) | (v28 << 6);
      v30 = (*(v121 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v120 + 72);
      v34 = v128;
      sub_1000E180C(*(v121 + 56) + v33 * v29, v128 + *(v129 + 48));
      *v34 = v32;
      v34[1] = v31;
      v35 = v126;
      sub_1000D2A70(v34, v126, &qword_101696E38, &qword_1013D8510);
      v36 = *v35;
      v37 = v35[1];
      *&v147 = v36;
      *(&v147 + 1) = v37;
      v38 = v37 >> 62;
      v127 = v21;
      v123 = v33;
      if ((v37 >> 62) <= 1)
      {
        break;
      }

      if (v38 == 2)
      {
        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        v39 = v40 - v41;
        if (__OFSUB__(v40, v41))
        {
          goto LABEL_62;
        }

LABEL_17:
        sub_100017D5C(v36, v37);
        goto LABEL_19;
      }

      v39 = 0;
LABEL_19:
      v42 = 20 - v39;
      if (__OFSUB__(20, v39))
      {
        goto LABEL_57;
      }

      if (v42)
      {
        if (v42 <= 14)
        {
          if (v42 < 0)
          {
            goto LABEL_60;
          }

          v48 = v116 & 0xF00000000000000 | ((20 - v39) << 48);
          sub_100017D5C(v32, v31);
          v49 = v127;

          v47 = 0;
          v116 = v48;
        }

        else
        {
          v43 = type metadata accessor for __DataStorage();
          v44 = *(v43 + 48);
          v45 = *(v43 + 52);
          swift_allocObject();
          sub_100017D5C(v32, v31);

          v46 = __DataStorage.init(length:)();
          if (v42 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v47 = swift_allocObject();
            *(v47 + 16) = 0;
            *(v47 + 24) = v42;
            v48 = v46 | 0x8000000000000000;
          }

          else
          {
            v47 = v42 << 32;
            v48 = v46 | 0x4000000000000000;
          }

          v49 = v127;
        }
      }

      else
      {
        sub_100017D5C(v32, v31);
        v49 = v127;

        v47 = 0;
        v48 = 0xC000000000000000;
      }

      v122 = *(v129 + 48);
      *&v146 = v47;
      *(&v146 + 1) = v48;
      v50 = v125;
      sub_100776394(&v146, 0);
      v125 = v50;
      v51 = v146;
      Data.append(_:)();
      sub_100016590(v36, v37);
      sub_100016590(v51, *(&v51 + 1));
      v52 = v147;
      v53 = Data.base64EncodedString(options:)(0);
      sub_100016590(v52, *(&v52 + 1));
      sub_1000E1870(v126 + v122);
      v54 = v119;
      sub_1000D2A70(v128, v119, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v54, *(v54 + 8));
      sub_100837460(v54 + *(v129 + 48), v124);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v147 = v49;
      v56 = sub_100771D58(v53._countAndFlagsBits, v53._object);
      v58 = *(v49 + 16);
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_58;
      }

      v62 = v57;
      if (*(v49 + 24) >= v61)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = v56;
          sub_1010064AC();
          v56 = v69;
        }
      }

      else
      {
        sub_100FE8E54(v61, isUniquelyReferenced_nonNull_native);
        v56 = sub_100771D58(v53._countAndFlagsBits, v53._object);
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_64;
        }
      }

      v22 = v118;
      v25 &= v25 - 1;
      if (v62)
      {
        v64 = v56;

        v65 = v147;
        sub_1008374C4(v124, *(v147 + 56) + v64 * v123);

        sub_10000B3A8(v128, &qword_101696E38, &qword_1013D8510);
        v27 = v28;
        v21 = v65;
        v26 = v117;
        if (!v25)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v66 = v147;
        *(v147 + 8 * (v56 >> 6) + 64) |= 1 << v56;
        *(v66[6] + 16 * v56) = v53;
        sub_100837460(v124, v66[7] + v56 * v123);

        sub_10000B3A8(v128, &qword_101696E38, &qword_1013D8510);
        v67 = v66[2];
        v60 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v60)
        {
          goto LABEL_59;
        }

        v66[2] = v68;
        v27 = v28;
        v21 = v66;
        v26 = v117;
        if (!v25)
        {
          goto LABEL_5;
        }
      }
    }

    if (!v38)
    {
      v39 = BYTE6(v37);
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v36), v36))
    {
      goto LABEL_61;
    }

    v39 = HIDWORD(v36) - v36;
    goto LABEL_17;
  }

  while (1)
  {
LABEL_5:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
    if (v25)
    {
      goto LABEL_8;
    }
  }

  v70 = v21;

  sub_10000B3A8(&v148, &qword_1016AAA28, &unk_1013BD990);
  v71 = v115;
  v72 = *(v115 + 23);
  v132 = 0;
  v147 = v115[12];
  *&v131[7] = v147;
  v73 = v115[1];
  v145 = *v115;
  v146 = v73;
  v74 = *(v115 + 88);
  v143 = *(v115 + 56);
  v144 = v74;
  v75 = *(v115 + 72);
  v76 = *(v115 + 39);
  v141 = v115[18];
  v142 = v75;
  if (v76 >> 60 == 15)
  {
    sub_1001022C4(&v147, v130);
    sub_1001022C4(&v146, v130);
    sub_1001022C4(&v145, v130);
    sub_1000D2A70(&v144, v130, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v143, v130, &qword_1016A0AC0, &unk_1013926A0);
    sub_1000D2A70(&v142, v130, &qword_1016A0AC0, &unk_1013926A0);
    result = sub_1000D2A70(&v141, v130, &qword_1016A0AC0, &unk_1013926A0);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
LABEL_55:
    v95 = v132;
    v96 = v137;
    v97 = v139;
    v98 = v140;
    v99 = v112;
    *v112 = v138;
    v99[1] = v97;
    v99[2] = v98;
    *(v99 + 6) = 0;
    *(v99 + 56) = v96;
    v100 = v135;
    *(v99 + 72) = v136;
    *(v99 + 88) = v100;
    *(v99 + 120) = v134;
    v101 = v133;
    *(v99 + 13) = v109;
    *(v99 + 14) = v101;
    *(v99 + 16) = v108;
    *(v99 + 17) = v70;
    *(v99 + 18) = v72;
    *(v99 + 152) = v95;
    *(v99 + 153) = *v131;
    v103 = v110;
    v102 = v111;
    *(v99 + 21) = *&v131[15];
    *(v99 + 22) = v103;
    *(v99 + 23) = v102;
    v104 = *v71;
    v99[12] = v71[1];
    v99[13] = v104;
    v105 = *(v71 + 56);
    v99[14] = *(v71 + 88);
    v99[15] = v105;
    v99[16] = *(v71 + 72);
    *(v99 + 34) = 0x302E302E31;
    *(v99 + 35) = 0xE500000000000000;
    v99[18] = v71[18];
    *(v99 + 38) = v78;
    *(v99 + 39) = v79;
    *(v99 + 40) = v80;
    *(v99 + 41) = v81;
    v106 = v114;
    *(v99 + 42) = v113;
    *(v99 + 43) = v106;
    return result;
  }

  v82 = *(v115 + 38);
  sub_1001022C4(&v147, v130);
  sub_1001022C4(&v146, v130);
  sub_1001022C4(&v145, v130);
  sub_1000D2A70(&v144, v130, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v143, v130, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v142, v130, &qword_1016A0AC0, &unk_1013926A0);
  sub_1000D2A70(&v141, v130, &qword_1016A0AC0, &unk_1013926A0);
  v83 = sub_100313B54(v82, v76);
  v85 = v84;
  v78 = Data.hexString.getter();
  v79 = v86;
  sub_100016590(v83, v85);
  v87 = v76 >> 62;
  if ((v76 >> 62) > 1)
  {
    if (v87 != 2)
    {
LABEL_54:
      v91 = Data.subdata(in:)();
      v93 = v92;
      v80 = Data.hexString.getter();
      v81 = v94;
      result = sub_100016590(v91, v93);
      v71 = v115;
      goto LABEL_55;
    }

    v89 = *(v82 + 16);
    v88 = *(v82 + 24);
    v60 = __OFSUB__(v88, v89);
    v90 = v88 - v89;
    if (v60)
    {
      __break(1u);
      goto LABEL_50;
    }

LABEL_52:
    if (v90 < -1)
    {
      __break(1u);
    }

    goto LABEL_54;
  }

  if (!v87)
  {
    goto LABEL_54;
  }

LABEL_50:
  LODWORD(v90) = HIDWORD(v82) - v82;
  if (!__OFSUB__(HIDWORD(v82), v82))
  {
    v90 = v90;
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100B60CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[412] = a6;
  v6[411] = a5;
  v6[410] = a4;
  v6[409] = a3;
  v6[408] = a2;
  v6[407] = a1;
  v7 = type metadata accessor for HashAlgorithm();
  v6[413] = v7;
  v8 = *(v7 - 8);
  v6[414] = v8;
  v9 = *(v8 + 64) + 15;
  v6[415] = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  v6[416] = v10;
  v11 = *(v10 - 8);
  v6[417] = v11;
  v12 = *(v11 + 64) + 15;
  v6[418] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v6[419] = v13;
  v14 = *(v13 - 8);
  v6[420] = v14;
  v15 = *(v14 + 64) + 15;
  v6[421] = swift_task_alloc();

  return _swift_task_switch(sub_100B60E40, 0, 0);
}

void sub_100B60E40()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 3368);
  v7 = *(v0 + 3360);
  v8 = *(v0 + 3352);
  v9 = *(v0 + 3344);
  v54 = *(v0 + 3336);
  v55 = *(v0 + 3328);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 3240) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 3248) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v54 + 8))(v9, v55);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  *(v0 + 3376) = v34;
  v41 = *(v0 + 3288);
  v42 = *(v0 + 3280);
  v43 = *(v0 + 3272);
  v44 = *(v0 + 3264);
  v45 = *(v0 + 3256);
  sub_100165278(v45, v0 + 368);
  sub_100017D5C(v42, v41);

  sub_100B602A4(v45, v42, v41, v44, v43, (v0 + 16));
  sub_1001652D4(v45);
  v46 = type metadata accessor for JSONEncoder();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  memcpy((v0 + 720), (v0 + 16), 0x160uLL);
  sub_100B6258C();
  v49 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 3384) = 0;
  *(v0 + 3392) = v49;
  *(v0 + 3400) = v50;
  v51 = v49;
  v52 = v50;

  sub_100017D5C(v51, v52);
  v53 = swift_task_alloc();
  *(v0 + 3408) = v53;
  *v53 = v0;
  v53[1] = sub_100B615CC;

  sub_100E9E69C();
}

uint64_t sub_100B615CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3408);
  v6 = *v2;
  *(v3 + 3416) = a1;
  *(v3 + 3424) = a2;

  return _swift_task_switch(sub_100B616D0, 0, 0);
}

uint64_t sub_100B616D0()
{
  v1 = *(v0 + 3424);
  v2 = *(v0 + 3416);
  v3 = *(v0 + 3384);
  v4 = *(v0 + 3320);
  v5 = *(v0 + 3312);
  v6 = *(v0 + 3304);
  *(v0 + 3224) = v2;
  *(v0 + 3232) = v1;
  *(v0 + 3208) = &type metadata for Data;
  *(v0 + 3216) = &protocol witness table for Data;
  *(v0 + 3184) = *(v0 + 3392);
  v7 = sub_1000035D0((v0 + 3184), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 3184));
  *(v0 + 3432) = *(v0 + 3224);
  *(v0 + 3440) = *(v0 + 3232);
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 3448) = v10;
  *(v0 + 3456) = v11;
  (*(v5 + 8))(v4, v6);
  v13 = swift_task_alloc();
  *(v0 + 3464) = v13;
  *v13 = v0;
  v13[1] = sub_100B61888;
  v14 = *(v0 + 3296);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100B61888(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 3464);
  v6 = *v2;
  v4[434] = v1;

  v7 = v4[432];
  v8 = v4[431];
  if (v1)
  {
    v9 = v4[409];
    sub_100016590(v8, v7);

    v10 = sub_100B61F50;
  }

  else
  {
    v4[435] = a1;
    sub_100016590(v8, v7);
    v10 = sub_100B619F0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100B619F0()
{
  v57 = v0;
  v1 = v0[435];
  v2 = v0[434];
  v3 = v0[430];
  v4 = v0[429];
  v5 = v0[422];
  v6 = v0[409];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v56);

  sub_100016590(v4, v3);
  v8 = v56[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v53 = v0;
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C448);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Pairing lock header:", v12, 2u);
  }

  v13 = v8 + 64;
  v14 = -1;
  v15 = -1 << *(v8 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v8 + 64);
  v0 = ((63 - v15) >> 6);

  v17 = 0;
  v54 = v8;
  if (v16)
  {
    while (2)
    {
      v18 = v17;
LABEL_13:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = (v18 << 10) | (16 * v19);
      v21 = (*(v8 + 48) + v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v8 + 56) + v20);
      v25 = v24[1];
      v55 = *v24;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v28 = 136315394;
        v29 = sub_1000136BC(v22, v23, v56);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        v30 = sub_1000136BC(v55, v25, v56);

        *(v28 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s: %s", v28, 0x16u);
        swift_arrayDestroy();

        v8 = v54;

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      else
      {

        v17 = v18;
        if (v16)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v18 >= v0)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v17;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  sub_100B625E0((v53 + 2), (v53 + 266));
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100B62618((v53 + 2));
  v33 = os_log_type_enabled(v31, v32);
  v34 = v53[412];
  v35 = v53[411];
  v36 = v53[410];
  v37 = v53[407];
  if (v33)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56[0] = v39;
    *v38 = 136315138;
    memcpy(v53 + 310, v53 + 2, 0x160uLL);
    sub_100B625E0((v53 + 2), (v53 + 354));
    v40 = String.init<A>(describing:)();
    v42 = sub_1000136BC(v40, v41, v56);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v31, v32, "Pairing lock body %s", v38, 0xCu);
    sub_100007BAC(v39);
    v8 = v54;

    sub_100B62618((v53 + 2));

    sub_100016590(v36, v35);
    sub_1001652D4(v37);
  }

  else
  {
    v43 = v53[412];

    sub_100016590(v36, v35);
    sub_1001652D4(v37);

    sub_100B62618((v53 + 2));
  }

  v44 = v53[425];
  v45 = v53[424];

  sub_100017D5C(v45, v44);

  sub_100016590(v45, v44);
  v46 = v53[425];
  v47 = v53[424];
  v48 = v53[421];
  v49 = v53[418];
  v50 = v53[415];

  v51 = v53[1];

  return v51(v8, v47, v46);
}

uint64_t sub_100B61F50()
{
  v58 = v0;
  sub_100016590(v0[429], v0[430]);
  v1 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v2 = v0[434];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C448);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[434];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate attestation header: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[422];
  if (v1[28] != -1)
  {
    swift_once();
  }

  v54 = v0;
  sub_1000076D4(v3, qword_10177C448);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Pairing lock header:", v14, 2u);
  }

  v1 = (v11 + 64);
  v15 = -1;
  v16 = -1 << *(v11 + 32);
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v11 + 64);
  v0 = ((63 - v16) >> 6);

  v18 = 0;
  v55 = v11;
  if (v17)
  {
    while (2)
    {
      v19 = v18;
LABEL_18:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v21 = (v19 << 10) | (16 * v20);
      v22 = (*(v11 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v11 + 56) + v21);
      v26 = v25[1];
      v56 = *v25;

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v29 = 136315394;
        v30 = sub_1000136BC(v23, v24, &v57);

        *(v29 + 4) = v30;
        *(v29 + 12) = 2080;
        v31 = sub_1000136BC(v56, v26, &v57);

        *(v29 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: %s", v29, 0x16u);
        swift_arrayDestroy();

        v11 = v55;

        v18 = v19;
        if (v17)
        {
          continue;
        }
      }

      else
      {

        v18 = v19;
        if (v17)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v19 >= v0)
    {
      break;
    }

    v17 = v1[v19];
    ++v18;
    if (v17)
    {
      goto LABEL_18;
    }
  }

  sub_100B625E0((v54 + 2), (v54 + 266));
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  sub_100B62618((v54 + 2));
  v34 = os_log_type_enabled(v32, v33);
  v35 = v54[412];
  v36 = v54[411];
  v37 = v54[410];
  v38 = v54[407];
  if (v34)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57 = v40;
    *v39 = 136315138;
    memcpy(v54 + 310, v54 + 2, 0x160uLL);
    sub_100B625E0((v54 + 2), (v54 + 354));
    v41 = String.init<A>(describing:)();
    v43 = sub_1000136BC(v41, v42, &v57);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v32, v33, "Pairing lock body %s", v39, 0xCu);
    sub_100007BAC(v40);
    v11 = v55;

    sub_100B62618((v54 + 2));

    sub_100016590(v37, v36);
    sub_1001652D4(v38);
  }

  else
  {
    v44 = v54[412];

    sub_100016590(v37, v36);
    sub_1001652D4(v38);

    sub_100B62618((v54 + 2));
  }

  v45 = v54[425];
  v46 = v54[424];

  sub_100017D5C(v46, v45);

  sub_100016590(v46, v45);
  v47 = v54[425];
  v48 = v54[424];
  v49 = v54[421];
  v50 = v54[418];
  v51 = v54[415];

  v52 = v54[1];

  return v52(v11, v48, v47);
}

unint64_t sub_100B6258C()
{
  result = qword_1016B6340;
  if (!qword_1016B6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6340);
  }

  return result;
}

unint64_t sub_100B62668()
{
  result = qword_1016B6350;
  if (!qword_1016B6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6350);
  }

  return result;
}

unint64_t sub_100B626D0()
{
  result = qword_1016B6358;
  if (!qword_1016B6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6358);
  }

  return result;
}

unint64_t sub_100B62728()
{
  result = qword_1016B6360;
  if (!qword_1016B6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6360);
  }

  return result;
}

unint64_t sub_100B62780()
{
  result = qword_1016B6368;
  if (!qword_1016B6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6368);
  }

  return result;
}

uint64_t sub_100B627D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12645 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xEA00000000007375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F636165426D756ELL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134DD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101361060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E55646572616873 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x314B64656573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEF74736574744179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101361080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 23;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_100B62F44()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177BC20);
  sub_1000076D4(v0, qword_10177BC20);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100B630A0(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B65E8, &qword_1013D8F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B671A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = 0;
  type metadata accessor for UUID();
  sub_100003FAC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SecureLocationsCachedSharedKey(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v26) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = v15[1];
    *&v26 = *v15;
    *(&v26 + 1) = v16;
    v28 = 2;
    sub_10002E98C(v26, v16);
    sub_10049DF20();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v26, *(&v26 + 1));
    v17 = (v3 + v11[7]);
    v18 = v17[1];
    *&v26 = *v17;
    *(&v26 + 1) = v18;
    v28 = 3;
    sub_10002E98C(v26, v18);
    sub_10049EBA4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v26, *(&v26 + 1));
    v19 = (v3 + v11[8]);
    v20 = *(v19 + 2);
    v26 = *v19;
    v27 = v20;
    v28 = 4;
    sub_100157F84();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = (v3 + v11[9]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v26) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v11[10];
    LOBYTE(v26) = 6;
    type metadata accessor for Date();
    sub_100003FAC(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100B63408()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v30 - v9;
  type metadata accessor for UUID();
  sub_100003FAC(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v11 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v12 = (v0 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  String.hash(into:)();
  v15 = (v0 + v11[6]);
  v16 = v15[1];
  if (v16 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v17 = *v15;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v17, v16);
    Data.hash(into:)();
    sub_100006654(v17, v16);
  }

  v18 = (v0 + v11[7]);
  v19 = v18[1];
  if (v19 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = *v18;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v20, v19);
    Data.hash(into:)();
    sub_100006654(v20, v19);
  }

  v21 = (v0 + v11[8]);
  if (*(v21 + 2))
  {
    v30[1] = *(v21 + 1);
    v22 = v10;
    v23 = v2;
    v24 = v3;
    v25 = v6;
    v26 = *v21;
    Hasher._combine(_:)(1u);
    v27 = v26;
    v6 = v25;
    v3 = v24;
    v2 = v23;
    v10 = v22;
    v1 = v0;
    Hasher._combine(_:)(v27);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v28 = (v1 + v11[9]);
  if (v28[1])
  {
    v29 = *v28;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1000D2A70(v1 + v11[10], v10, &unk_101696900, &unk_10138B1E0);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100003FAC(&unk_101698070, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }
}