uint64_t sub_100260CA8(void *a1, int a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_100268D88();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v4;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = sub_1001B6ACC();

  return sub_10028022C(v10, v11);
}

uint64_t sub_100260D24(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100260DE8;

  return sub_10025ED20();
}

uint64_t sub_100260DE8()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_100268C34();
  v3 = *v2;
  sub_1001D14B0();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *(v5 + 16);
  v8 = *v2;
  sub_100004410();
  *v9 = v8;

  if (v1)
  {
    _convertErrorToNSError(_:)();
    sub_1002691BC();

    v10 = v0;
  }

  else
  {
    sub_1001A7B44(0, &qword_1003B8440);
    sub_100269014();
    Array._bridgeToObjectiveC()();
    sub_100268C8C();

    v10 = 0;
  }

  v11 = *(v3 + 32);
  v12 = sub_100268B74();
  v13(v12);

  _Block_release(v11);
  sub_1000046F8();
  sub_1001D18C4();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_100260F68()
{
  sub_100005528();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_1001A6C04(&qword_1003B83E8);
  sub_100006A0C(v6);
  v1[22] = sub_1002335CC();
  v1[23] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v1[24] = v7;
  sub_1001B6A00(v7);
  v1[25] = v8;
  v1[26] = sub_1002335CC();
  v1[27] = swift_task_alloc();
  v9 = sub_1001A6C04(&qword_1003B8420);
  sub_100006A0C(v9);
  v1[28] = sub_1002335CC();
  v1[29] = swift_task_alloc();
  v10 = sub_1001A6C04(&qword_1003B5FC0);
  sub_100006A0C(v10);
  v1[30] = sub_1002335CC();
  v1[31] = swift_task_alloc();
  v11 = type metadata accessor for LeaderboardDescription();
  v1[32] = v11;
  sub_1001B6A00(v11);
  v1[33] = v12;
  v1[34] = sub_1002335CC();
  v1[35] = swift_task_alloc();
  v13 = sub_1001A6C04(&qword_1003B8428);
  sub_100006A0C(v13);
  v1[36] = sub_1001E41A0();
  v14 = sub_1001A6C04(&qword_1003B6088);
  v1[37] = v14;
  sub_100006A0C(v14);
  v1[38] = sub_1002335CC();
  v1[39] = swift_task_alloc();
  v15 = sub_1001A6C04(&qword_1003B83E0);
  v1[40] = v15;
  sub_1001B6A00(v15);
  v1[41] = v16;
  v1[42] = sub_1001E41A0();
  v17 = sub_1001A6C04(&qword_1003B6260);
  v1[43] = v17;
  sub_1001B6A00(v17);
  v1[44] = v18;
  v1[45] = sub_1001E41A0();
  v19 = sub_1001A6C04(&qword_1003B5FC8);
  v1[46] = v19;
  sub_1001B6A00(v19);
  v1[47] = v20;
  v1[48] = sub_1001E41A0();
  v21 = sub_10000448C();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_100261290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100268F8C();
  sub_1002691C8();
  v17 = *(v16 + 144);
  v18 = [*(v16 + 136) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100268E9C();
  Ref<A>.init(bundleID:)();
  v19 = [v17 playerID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100268DC0();
  Ref<A>.init(internalID:)();
  sub_1001ACA00();
  Ref<A>.leaderboard(id:)();
  sub_100256520((v16 + 16));
  v20 = *(v16 + 328);
  sub_100268A40((v16 + 16));
  *(v16 + 392) = sub_1001A6C04(&qword_1003B8430);
  *(v16 + 400) = *(v20 + 72);
  *(v16 + 560) = *(v20 + 80);
  v21 = sub_100268E40();
  *(v16 + 408) = v21;
  *(v21 + 16) = xmmword_1002C33A0;
  *(v16 + 416) = *(v20 + 16);
  *(v16 + 424) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  sub_100268D30();
  v22();
  v23 = swift_task_alloc();
  *(v16 + 432) = v23;
  *v23 = v16;
  sub_1002332C8(v23);
  sub_100268D0C();
  sub_1001B6A68();

  return dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_100261578()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_100268BDC();
  sub_100004410();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 440) = v0;

  sub_100268DEC();

  if (!v0)
  {
    *(v3 + 448) = v1;
  }

  sub_100268AB4();
  sub_1001D18C4();

  return _swift_task_switch(v5, v6, v7);
}

void sub_100261694()
{
  sub_1001BAB6C();

  sub_100268FB4();
  if (v1)
  {
    sub_1001F6F1C(*(v0 + 288), &qword_1003B8428);
    sub_100005BE0(v0 + 16);
LABEL_6:
    v16 = *(v0 + 376);
    v68 = *(v0 + 368);
    v70 = *(v0 + 384);
    v67 = *(v0 + 360);
    v18 = *(v0 + 344);
    v17 = *(v0 + 352);
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    _StringGuts.grow(_:)(33);

    v21._countAndFlagsBits = v20;
    v21._object = v19;
    String.append(_:)(v21);
    type metadata accessor for GameServicesError();
    sub_10026899C();
    sub_100267F68(v22, v23);
    sub_1001D1528();
    static GameServicesError.illegalState(message:)();

    swift_willThrow();
    v24 = sub_100268DC0();
    v25(v24);
    (*(v17 + 8))(v67, v18);
    (*(v16 + 8))(v70, v68);
    goto LABEL_7;
  }

  v2 = *(v0 + 256);
  sub_1001E3FFC();
  sub_1002687E4(v3, v4, v5);
  sub_100005BE0(v0 + 16);
  sub_1001E4240();
  sub_1001E3FFC();
  sub_100268798(v6, v7, v8);
  v9 = sub_100268C98();
  v11 = sub_1001A969C(v9, v10, v2);
  if (v11 == 1)
  {
    sub_100268D0C();
    sub_1001F6F1C(v12, v13);
    v14 = sub_1001E4240();
    sub_1001F6F1C(v14, v15);
    goto LABEL_6;
  }

  v28 = *(v0 + 440);
  (*(*(v0 + 264) + 32))(*(v0 + 280), *(v0 + 304), *(v0 + 256));
  sub_100256520((v0 + 56));
  if (v28)
  {
    v29 = *(v0 + 376);
    v71 = *(v0 + 384);
    v30 = *(v0 + 368);
    v31 = *(v0 + 312);
    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    sub_1001F6F1C(v31, &qword_1003B6088);
    v32 = sub_100268B9C();
    v33(v32);
    v34 = sub_1002335A8();
    v35(v34);
    (*(v29 + 8))(v71, v30);
LABEL_7:
    sub_1000061F4();
    sub_100268C44();

    sub_1000046F8();
    sub_1001E4448();

    __asm { BRAA            X1, X16 }
  }

  v36 = *(v0 + 416);
  v37 = *(v0 + 424);
  v38 = *(v0 + 336);
  v69 = *(v0 + 344);
  v72 = *(v0 + 360);
  v39 = *(v0 + 320);
  v73 = *(v0 + 168);
  v40 = (*(v0 + 560) + 32) & ~*(v0 + 560);
  v65 = *(v0 + 88);
  v66 = *(v0 + 80);
  v64 = sub_100006454((v0 + 56), v66);
  v41 = swift_allocObject();
  *(v0 + 456) = v41;
  *(v41 + 16) = xmmword_1002C33A0;
  v36(v41 + v40, v38, v39);
  sub_1001A6C04(&qword_1003B5B38);
  sub_100268CB4();
  v42 = sub_100269104();
  *(v0 + 464) = v42;
  v51 = sub_100268EDC(v42, v43, v44, v45, v46, v47, v48, v49, v63, v64, v65, v66, v50);
  v53(v52 + v37, v72, v69, v51);
  v54 = [v73 clientProxy];
  if (v54)
  {
    v55 = v54;
    v56 = [v54 locale];

    if (v56)
    {
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 472) = type metadata accessor for LeaderboardTimeScope();
      sub_1001E4070();
      sub_1001A9674(v57, v58, v59, v60);
      v61 = swift_task_alloc();
      *(v0 + 480) = v61;
      *v61 = v0;
      v61[1] = sub_100261BC0;
      sub_1002335A8();
      sub_1001E4448();

_$s12GameServices0A18KitServiceProtocolP22listLeaderboardEntries12leaderboards7players6locale9timeScopeSayAA4PageVyAA0G5EntryVGGSayAA3RefVyAA0G0_pGG_SayAPyAA6Player_pGG10Foundation6LocaleVAA0g4TimeM0OSgtYaKFTj:
      JUMPOUT(0x100297200);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto _$s12GameServices0A18KitServiceProtocolP22listLeaderboardEntries12leaderboards7players6locale9timeScopeSayAA4PageVyAA0G5EntryVGGSayAA3RefVyAA0G0_pGG_SayAPyAA6Player_pGG10Foundation6LocaleVAA0g4TimeM0OSgtYaKFTj;
}

        JUMPOUT(0x100297200);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto _$s12GameServices0A18KitServiceProtocolP22listLeaderboardEntries12leaderboards7players6locale9timeScopeSayAA4PageVyAA0G5EntryVGGSayAA3RefVyAA0G0_pGG_SayAPyAA6Player_pGG10Foundation6LocaleVAA0g4TimeM0OSgtYaKFTj;
  }

  v14 = sub_1001F77B8();
  v15(v14);
  v16 = sub_100269008();
  v17(v16);
  sub_1002689E0();

  sub_1002689D0();
  sub_100006084();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_100261BC0()
{
  sub_1001D1970();
  sub_100005838();
  v4 = v3;
  sub_100268DF8();
  sub_100004410();
  *v5 = v1;
  *v5 = *v2;
  v1[61] = v0;

  sub_100268D7C();
  if (v0)
  {
    sub_1001F6F1C(v1[23], &qword_1003B83E8);
  }

  else
  {
    v6 = v1[25];
    v7 = v1[23];
    v1[62] = v4;
    sub_1001F6F1C(v7, &qword_1003B83E8);

    v1[63] = *(v6 + 8);
    v1[64] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8 = sub_1002204F8();
    v9(v8);
  }

  sub_1001B6A34();
  sub_1001D185C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100261D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100268F8C();
  sub_1002691C8();
  sub_100268D94();
  sub_1001BAAA4();

  v21 = sub_1001A6C04(&qword_1003B6080);
  *(v20 + 520) = v21;
  v22 = sub_100268C98();
  v24 = sub_1001A969C(v22, v23, v21);
  v25 = *(v20 + 232);
  if (v24 == 1)
  {
    sub_100005BE0(v20 + 56);
    sub_1001F6F1C(v25, &qword_1003B8420);
    type metadata accessor for LeaderboardEntry();
    sub_1001E4070();
    sub_1001A9674(v26, v27, v28, v29);
  }

  else
  {
    Page.elements.getter();
    sub_100005534();
    v30 = sub_100005558();
    v31(v30);
    sub_1001BAAB8();

    sub_100005BE0(v20 + 56);
  }

  v32 = *(v20 + 488);
  sub_100256520((v20 + 96));
  v81 = v32;
  if (!v32)
  {
    v52 = *(v20 + 416);
    v53 = *(v20 + 336);
    v54 = *(v20 + 320);
    v55 = *(v20 + 168);
    v56 = (*(v20 + 560) + 32) & ~*(v20 + 560);
    v80 = *(v20 + 120);
    v82 = *(v20 + 128);
    v77 = sub_100006454((v20 + 96), v80);
    v57 = swift_allocObject();
    *(v20 + 528) = v57;
    *(v57 + 16) = xmmword_1002C33A0;
    v52(v57 + v56, v53, v54);
    v58 = [v55 clientProxy];
    if (v58)
    {
      v66 = v58;
      v67 = [v58 locale];

      if (v67)
      {
        v68 = *(v20 + 472);
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001E4070();
        sub_1001A9674(v69, v70, v71, v68);
        v72 = swift_task_alloc();
        *(v20 + 536) = v72;
        *v72 = v20;
        v72[1] = sub_100262164;
        sub_1001B6A68();

        return dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, v77, v80, v82, a17, a18, a19, a20);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, v77, v80, v82, a17, a18, a19, a20);
  }

  v33 = *(v20 + 376);
  v75 = *(v20 + 368);
  v78 = *(v20 + 384);
  v34 = *(v20 + 352);
  v73 = *(v20 + 344);
  v74 = *(v20 + 360);
  v35 = *(v20 + 312);
  v36 = *(v20 + 280);
  v37 = *(v20 + 256);
  v38 = *(v20 + 264);
  sub_1001F6F1C(*(v20 + 248), &qword_1003B5FC0);
  (*(v38 + 8))(v36, v37);
  sub_1001F6F1C(v35, &qword_1003B6088);
  v39 = sub_100268B9C();
  v40(v39);
  (*(v34 + 8))(v74, v73);
  (*(v33 + 8))(v78, v75);
  sub_100268C44();
  v76 = v42;
  v79 = v41;

  sub_1000046F8();
  sub_1001B6A68();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, v73, v74, v76, v79, v81, a17, a18, a19, a20);
}

uint64_t sub_100262164()
{
  sub_1001D1970();
  sub_100005838();
  v4 = v3;
  sub_100268DF8();
  sub_100004410();
  *v5 = v1;
  *v5 = *v2;
  v1[68] = v0;

  sub_100268D7C();
  if (v0)
  {
    sub_1001F6F1C(v1[22], &qword_1003B83E8);
  }

  else
  {
    v6 = v1[63];
    v7 = v1[22];
    v1[69] = v4;
    sub_1001F6F1C(v7, &qword_1003B83E8);

    v8 = sub_1002204F8();
    v6(v8);
  }

  sub_1001B6A34();
  sub_1001D185C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1002622D8()
{
  sub_1001BAAA4();

  sub_100268FB4();
  if (v1)
  {
    v2 = v0[28];
    sub_100005BE0((v0 + 12));
    sub_1001F6F1C(v2, &qword_1003B8420);
    v6 = 0;
  }

  else
  {
    v3 = Page.elements.getter();
    sub_100005534();
    v4 = sub_1001E4240();
    v5(v4);
    v6 = *(v3 + 16);

    sub_100005BE0((v0 + 12));
  }

  v7 = v0[68];
  v8 = v0[34];
  v9 = v0[30];
  sub_1001A7B44(0, &qword_1003B8438);
  v10 = sub_1001ACA00();
  v11(v10);
  v12 = sub_100268B9C();
  sub_100268798(v12, v13, v14);
  v15 = sub_100262BE0(v8, v9, v6);
  v16 = v0[47];
  v34 = v0[46];
  v35 = v0[48];
  v17 = v0[44];
  v32 = v0[43];
  v33 = v0[45];
  v18 = v0[41];
  v19 = v0[42];
  v21 = v0[39];
  v20 = v0[40];
  if (v7)
  {
    v22 = v0[35];
    v24 = v0[32];
    v23 = v0[33];
    sub_1001F6F1C(v0[31], &qword_1003B5FC0);
    (*(v23 + 8))(v22, v24);
    sub_1001F6F1C(v21, &qword_1003B6088);
    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v33, v32);
    (*(v16 + 8))(v35, v34);
    sub_1000061F4();

    sub_1000046F8();

    return v25();
  }

  else
  {
    v27 = v0[35];
    v28 = v0[33];
    v29 = v0[32];
    v31 = v15;
    sub_1001F6F1C(v0[31], &qword_1003B5FC0);
    (*(v28 + 8))(v27, v29);
    sub_1001F6F1C(v21, &qword_1003B6088);
    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v33, v32);
    (*(v16 + 8))(v35, v34);

    sub_1001D17DC();

    return v30(v31);
  }
}

uint64_t sub_100262748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1001F77D8();
  sub_100268E78();
  (*(v18[41] + 8))(v18[42], v18[40]);
  v19 = sub_1001F72BC();
  v20(v19);
  v21 = sub_1001E4240();
  v22(v21);
  sub_100005BE0((v18 + 2));
  v32 = v18[55];
  sub_1000061F4();
  sub_100268E10();

  sub_1000046F8();
  sub_1001F7484();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, v32, a16, a17, a18);
}

uint64_t sub_100262880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1001F77D8();
  sub_100268E78();
  v19 = v18[47];
  v37 = v18[46];
  v38 = v18[48];
  v20 = v18[39];
  v21 = v18[25];
  v35 = v18[24];
  v36 = v18[27];
  (*(v18[33] + 8))(v18[35], v18[32]);
  sub_1001F6F1C(v20, &qword_1003B6088);
  v22 = sub_1001F77B8();
  v23(v22);
  v24 = sub_1001F72BC();
  v25(v24);
  (*(v19 + 8))(v38, v37);
  (*(v21 + 8))(v36, v35);
  sub_100005BE0((v18 + 7));
  v39 = v18[61];
  sub_1000061F4();
  sub_100268E10();

  sub_1000046F8();
  sub_1001F7484();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, v35, v36, v37, v39, a16, a17, a18);
}

uint64_t sub_100262A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100268F8C();
  sub_1002691C8();
  v48 = v20[63];
  v21 = v20[47];
  v44 = v20[46];
  v46 = v20[48];
  v22 = v20[44];
  v37 = v20[43];
  v38 = v20[45];
  v23 = v20[39];
  v40 = v20[24];
  v42 = v20[26];
  sub_1001F6F1C(v20[31], &qword_1003B5FC0);
  v24 = sub_100268E9C();
  v25(v24);
  sub_1001F6F1C(v23, &qword_1003B6088);
  v26 = sub_1001F77B8();
  v27(v26);
  (*(v22 + 8))(v38, v37);
  (*(v21 + 8))(v46, v44);
  v48(v42, v40);
  sub_100005BE0((v20 + 12));
  v50 = v20[68];
  sub_1000061F4();
  v39 = v20[29];
  v41 = v20[28];
  v43 = v20[27];
  v45 = v20[26];
  v47 = v20[23];
  v49 = v20[22];

  sub_1000046F8();
  sub_1001B6A68();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v39, v41, v43, v45, v47, v49, v50, a18, a19, a20);
}

uint64_t sub_100262BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v99 = a2;
  v92 = type metadata accessor for Date();
  sub_1000043C4();
  v94 = v5;
  __chkstk_darwin(v6);
  sub_1000043B4();
  v91 = v8 - v7;
  v9 = sub_1001A6C04(&qword_1003B83C8);
  sub_100006A0C(v9);
  sub_100006AB0();
  __chkstk_darwin(v10);
  sub_100268EA8();
  v93 = v11;
  sub_100269228();
  v96 = type metadata accessor for RecurringLeaderboardProperties();
  sub_1000043C4();
  v88 = v12;
  __chkstk_darwin(v13);
  sub_1000043B4();
  v97 = v15 - v14;
  v16 = sub_1001A6C04(&qword_1003B5FC0);
  v17 = sub_100006A0C(v16);
  __chkstk_darwin(v17);
  sub_1000043F0();
  v90 = v18 - v19;
  sub_100005874();
  __chkstk_darwin(v20);
  sub_100269080();
  v95 = v21;
  sub_100005874();
  __chkstk_darwin(v22);
  sub_100269080();
  v89 = v23;
  sub_100005874();
  v25 = __chkstk_darwin(v24);
  v27 = &v87 - v26;
  __chkstk_darwin(v25);
  v29 = &v87 - v28;
  type metadata accessor for LeaderboardType();
  sub_1000043C4();
  __chkstk_darwin(v30);
  sub_1000043B4();
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LeaderboardDescription.baseLeaderboardId.getter();
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v32, "setBaseLeaderboardID:");

  LeaderboardDescription.baseLeaderboardId.getter();
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v33, "setLeaderboardID:");

  v34 = String._bridgeToObjectiveC()();
  sub_100268E60(v34, "setTimeScope:");

  LeaderboardDescription.groupId.getter();
  if (!v35)
  {
    LeaderboardDescription.baseLeaderboardId.getter();
  }

  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v36, "setGroupID:");

  LeaderboardDescription.title.getter();
  if (!v37)
  {
    LeaderboardDescription.baseLeaderboardId.getter();
  }

  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v38, "setTitle:");

  LeaderboardDescription.type.getter();
  v39 = v98;
  sub_10026742C();
  if (v39)
  {

    sub_1001F6F1C(v99, &qword_1003B5FC0);
    type metadata accessor for LeaderboardDescription();
    sub_1000047C0();
    (*(v40 + 8))(a1);
    v41 = sub_1001F77AC();
    v42(v41);
    return v31;
  }

  v98 = 0;
  v43 = sub_1001F77AC();
  v44(v43);
  String._bridgeToObjectiveC()();
  sub_100268C74();

  sub_100268EB4(v45, "setType:");

  v46 = v99;
  sub_100268798(v99, v29, &qword_1003B5FC0);
  v47 = type metadata accessor for LeaderboardEntry();
  sub_100268A5C(v29);
  if (v48)
  {
    sub_1001F6F1C(v29, &qword_1003B5FC0);
  }

  else
  {
    LeaderboardEntry.formattedScore.getter();
    sub_100268A7C();
    (*(v49 + 8))(v29, v47);
  }

  v50 = v96;
  String._bridgeToObjectiveC()();
  sub_100268D88();

  [v31 setFormattedScoreValue:v29];

  v51 = sub_100268B9C();
  sub_100268798(v51, v52, v53);
  sub_100268A5C(v27);
  if (v48)
  {
    v55 = sub_1001F6F1C(v27, &qword_1003B5FC0);
  }

  else
  {
    LeaderboardEntry.context.getter();
    sub_100268A7C();
    v55 = (*(v54 + 8))(v27, v47);
  }

  v56 = v94;
  v57 = v95;
  sub_100268E60(v55, "setContext:");
  [v31 setStatus:0];
  v58 = v93;
  LeaderboardDescription.recurringProperties.getter();
  v59 = sub_100268E04();
  sub_100268D18(v59, v60, v50);
  if (v48)
  {
    sub_1001F6F1C(v58, &qword_1003B83C8);
    v62 = v89;
    v61 = v90;
    goto LABEL_26;
  }

  v63 = sub_1001F72F8();
  v64(v63);
  v65 = v91;
  RecurringLeaderboardProperties.startDate.getter();
  Date.timeIntervalSince1970.getter();
  v67 = v66;
  v68 = v66;
  v69 = *(v56 + 8);
  result = v69(v65, v92);
  if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  if (v67 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v67 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v31 setStartDate:v67];
  result = RecurringLeaderboardProperties.duration.getter();
  if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v71 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v31 setDuration:v71];
  v72 = v91;
  RecurringLeaderboardProperties.nextStartDate.getter();
  Date.timeIntervalSince1970.getter();
  v74 = v73;
  v75 = v73;
  result = v69(v72, v92);
  if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v62 = v89;
  v61 = v90;
  v76 = v96;
  if (v74 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v74 < 9.22337204e18)
  {
    [v31 setNextStartDate:v74];
    (*(v88 + 8))(v97, v76);
LABEL_26:
    sub_100268798(v46, v62, &qword_1003B5FC0);
    sub_100268A5C(v62);
    if (v48)
    {
      v78 = sub_1001F6F1C(v62, &qword_1003B5FC0);
    }

    else
    {
      LeaderboardEntry.score.getter();
      sub_100268A7C();
      v78 = (*(v77 + 8))(v62, v47);
    }

    sub_100268E60(v78, "setScoreValue:");
    v79 = sub_100268B9C();
    sub_100268798(v79, v80, v81);
    sub_100268A5C(v57);
    if (v48)
    {
      result = sub_1001F6F1C(v57, &qword_1003B5FC0);
    }

    else
    {
      v82 = LeaderboardEntry.rank.getter();
      sub_100268A7C();
      result = (*(v83 + 8))(v57, v47);
      if (v82 < 0)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    sub_100268E60(result, "setRank:");
    sub_100268798(v46, v61, &qword_1003B5FC0);
    sub_100268A5C(v61);
    if (v48)
    {
      result = sub_1001F6F1C(v61, &qword_1003B5FC0);
LABEL_37:
      sub_100268E60(result, "setFriendRank:");
      sub_100268E60([v31 setTotalEntries:v87], "setTotalFriendEntries:");
      sub_1001F6F1C(v46, &qword_1003B5FC0);
      type metadata accessor for LeaderboardDescription();
      sub_1000047C0();
      (*(v86 + 8))(a1);
      return v31;
    }

    v84 = LeaderboardEntry.rank.getter();
    sub_100268A7C();
    result = (*(v85 + 8))(v61, v47);
    if ((v84 & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_40;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_100263690(void *a1, void *a2, uint64_t a3, int a4, int a5, void *aBlock, void *a7)
{
  v7[3] = a2;
  v7[4] = a7;
  v7[2] = a1;
  v7[5] = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = 0;
  }

  v7[6] = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7[7] = v13;
  v14 = a1;
  v15 = a2;
  a7;
  v16 = swift_task_alloc();
  v7[8] = v16;
  *v16 = v7;
  v16[1] = sub_1002637AC;

  return sub_100260F68();
}

uint64_t sub_1002637AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  v13 = v10;
  v15 = v14;
  sub_100268D3C();
  v16 = v12[4];
  v17 = v12[3];
  v18 = v12[2];
  v19 = *v11;
  sub_100004410();
  *v20 = v19;

  sub_1000062BC();
  v21 = v12[5];

  if (v13)
  {
    v22 = _convertErrorToNSError(_:)();

    v23 = sub_10020D2EC();
    v24(v23, 0, v22);

    _Block_release(v21);
  }

  else
  {
    v25 = sub_10020D2EC();
    v26(v25, v15, 0);
    _Block_release(v21);
  }

  sub_10000629C();
  sub_10020D590();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_10026397C()
{
  sub_100005528();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v7 = sub_1001A6C04(&qword_1003B83E8);
  sub_100006A0C(v7);
  v1[35] = sub_1002335CC();
  v1[36] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[37] = v8;
  sub_1001B6A00(v8);
  v1[38] = v9;
  v1[39] = sub_1002335CC();
  v1[40] = swift_task_alloc();
  v10 = sub_1001A6C04(&qword_1003B83F0);
  sub_100006A0C(v10);
  v1[41] = sub_1002335CC();
  v1[42] = swift_task_alloc();
  v11 = sub_1001A6C04(&qword_1003B83F8);
  v1[43] = v11;
  sub_1001B6A00(v11);
  v1[44] = v12;
  v1[45] = sub_1001E41A0();
  v13 = sub_1001A6C04(&qword_1003B6260);
  v1[46] = v13;
  sub_1001B6A00(v13);
  v1[47] = v14;
  v1[48] = sub_1001E41A0();
  v15 = sub_1001A6C04(&qword_1003B5FC8);
  v1[49] = v15;
  sub_1001B6A00(v15);
  v1[50] = v16;
  v1[51] = sub_1001E41A0();
  v17 = sub_10000448C();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100263BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001F7394();
  v17 = *(v16 + 256);
  v18 = *(v16 + 240);
  v19 = [*(v16 + 232) bundleIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001F77B8();
  Ref<A>.init(bundleID:)();
  v20 = [v18 playerID];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001F72BC();
  Ref<A>.init(internalID:)();
  if (v17)
  {
    Ref<A>.leaderboardSet(id:)();
    sub_100256520((v16 + 176));
    sub_100268A40((v16 + 176));
    sub_1001A6C04(&qword_1003B8408);
    v51 = sub_100268E40();
    *(v16 + 416) = v51;
    *(v51 + 16) = xmmword_1002C33A0;
    sub_100268D30();
    v52();
    v53 = swift_task_alloc();
    *(v16 + 424) = v53;
    *v53 = v16;
    sub_1002332C8(v53);
    sub_100268D0C();
    sub_1001E41B8();

    return dispatch thunk of GameKitServiceProtocol.listLeaderboards(leaderboardSets:)(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
  }

  else
  {
    sub_100269138();
    v22 = *(v16 + 400);
    v23 = *(v16 + 408);
    v24 = *(v16 + 392);
    if (v21)
    {
      v25 = sub_1002335A8();
      v26(v25);
      v27 = sub_100268DC0();
      v28(v27);
      sub_1002689E0();

      sub_1002689D0();
      sub_1001E41B8();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    else
    {
      v63 = *(v16 + 48);
      v62 = sub_100006454((v16 + 16), *(v16 + 40));
      sub_1001A6C04(&qword_1003B8400);
      v38 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v39 = swift_allocObject();
      *(v16 + 448) = v39;
      *(v39 + 16) = xmmword_1002C33A0;
      (*(v22 + 16))(v39 + v38, v23, v24);
      sub_1001A6C04(&qword_1003B5B38);
      v40 = sub_100269104();
      *(v16 + 456) = v40;
      *(v40 + 16) = xmmword_1002C33A0;
      sub_100268D30();
      v41();
      v42 = swift_task_alloc();
      *(v16 + 464) = v42;
      *v42 = v16;
      sub_1002332C8(v42);
      sub_100268B9C();
      sub_1001E41B8();

      return dispatch thunk of GameKitServiceProtocol.listLeaderboards(games:players:)(v43, v44, v45, v46, v47, v48, v49, v50, 1, 2, v62, v63, a13, a14, a15, a16);
    }
  }
}

uint64_t sub_100263FBC()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_100268BDC();
  sub_100004410();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 432) = v0;

  sub_100268DEC();

  if (!v0)
  {
    *(v3 + 440) = v1;
  }

  sub_100268AB4();
  sub_1001D18C4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1002640D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  sub_100268D94();
  sub_1001BAC1C();

  v17 = sub_1001A6C04(&qword_1003B6078);
  v18 = sub_100268BEC(v17);
  v19 = v16[42];
  if (v18 == 1)
  {
    sub_100005BE0((v16 + 22));
    sub_1001F6F1C(v19, &qword_1003B83F0);
    v20 = _swiftEmptyArrayStorage;
  }

  else
  {
    v20 = Page.elements.getter();
    sub_100005534();
    v21 = sub_100005558();
    v22(v21);
    sub_100005BE0((v16 + 22));
  }

  v23 = sub_100268ECC();
  v24(v23);
  v25 = v16[54];
  v16[61] = v20;
  sub_100256520(v16 + 7);
  if (v25)
  {
    sub_1002692A8();
    v26 = sub_1001F77B8();
    v27(v26);
    v28 = sub_1001F72F8();
    v29(v28);
    sub_1002689E0();

    sub_1002689D0();
    sub_100006084();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }

  else
  {
    sub_100269020();
    v39 = swift_task_alloc();
    v16[62] = v39;
    *v39 = v16;
    v39[1] = sub_100264608;
    sub_1000047F0();
    sub_100006084();

    return dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1002642DC()
{
  sub_100006B50();
  sub_1001AFA50();
  sub_100268BDC();
  sub_100004410();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 472) = v0;

  sub_100268DEC();

  if (!v0)
  {
    *(v3 + 480) = v1;
  }

  sub_100268AB4();
  sub_1001D18C4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100264414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  sub_100268D94();
  sub_1001BAC1C();

  v17 = sub_1001A6C04(&qword_1003B6078);
  v18 = sub_100268BEC(v17);
  v19 = v16[41];
  if (v18 == 1)
  {
    sub_100005BE0((v16 + 2));
    sub_1001F6F1C(v19, &qword_1003B83F0);
    v20 = _swiftEmptyArrayStorage;
  }

  else
  {
    v20 = Page.elements.getter();
    sub_100005534();
    v21 = sub_100005558();
    v22(v21);
    sub_100005BE0((v16 + 2));
  }

  v23 = v16[59];
  v16[61] = v20;
  sub_100256520(v16 + 7);
  if (v23)
  {
    sub_1002692A8();
    v24 = sub_1001F77B8();
    v25(v24);
    v26 = sub_1001F72F8();
    v27(v26);
    sub_1002689E0();

    sub_1002689D0();
    sub_100006084();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }

  else
  {
    sub_100269020();
    v37 = swift_task_alloc();
    v16[62] = v37;
    *v37 = v16;
    v37[1] = sub_100264608;
    sub_1000047F0();
    sub_100006084();

    return dispatch thunk of GameKitServiceProtocol.describeLeaderboards(leaderboards:)(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_100264608()
{
  sub_100005528();
  sub_1000057F0();
  v3 = v2;
  sub_1001D14B0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
  }

  sub_1001B6A34();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100264710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v13 = v12[64];
  sub_100269190();
  if (!v13)
  {
    v27 = v12[34];
    sub_100268A40(v12 + 12);
    sub_1001A6C04(&qword_1003B5B38);
    v28 = sub_100268A08();
    v12[65] = v28;
    v29 = sub_100269068(v28, xmmword_1002C33A0);
    v30(v29);
    v31 = [v27 clientProxy];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 locale];

      if (v33)
      {
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v12[66] = type metadata accessor for LeaderboardTimeScope();
        v34 = sub_100268B3C();
        sub_1001A9674(v34, v35, v36, v37);
        v38 = swift_task_alloc();
        v12[67] = v38;
        *v38 = v12;
        v38[1] = sub_10026494C;
        sub_1001D1934(v12[61]);
        sub_100006084();

uint64_t sub_10026494C()
{
  sub_1001D19CC();
  sub_1001AFA50();
  sub_100268D3C();
  v3 = v2;
  sub_100004410();
  *v4 = v2;
  v5 = *v1;
  sub_1001D14B0();
  *v6 = v5;
  v2[68] = v7;
  v2[69] = v0;

  sub_1000062BC();
  if (v0)
  {
    v8 = v2[36];

    sub_1001F6F1C(v8, &qword_1003B83E8);
    v9 = sub_1001F7550();
  }

  else
  {
    v11 = v2[38];
    v12 = v2[36];

    sub_1001F6F1C(v12, &qword_1003B83E8);
    v3[70] = *(v11 + 8);
    v3[71] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9 = sub_1002204F8();
  }

  v10(v9);
  sub_1001B6A34();
  sub_1001D19B8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100264B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1001D1BD0();
  v50 = v19;
  sub_1001D18F8();
  v20 = v17[69];
  sub_100005BE0((v17 + 12));
  sub_100256520(v17 + 17);
  if (!v20)
  {
    v34 = v17[34];
    sub_100268A40(v17 + 17);
    v35 = [v34 clientProxy];
    if (v35)
    {
      v43 = v35;
      v44 = [v35 locale];

      if (v44)
      {
        v45 = v17[66];
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v46 = sub_100268B3C();
        sub_1001A9674(v46, v47, v48, v45);
        v49 = swift_task_alloc();
        v17[72] = v49;
        *v49 = v17;
        v49[1] = sub_100264D14;
        sub_1001D1934(v17[61]);
        sub_100006084();

        return dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, v17, v18, v50);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return dispatch thunk of GameKitServiceProtocol.listLeaderboardEntries(leaderboards:range:locale:timeScope:)(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, v17, v18, v50);
  }

  v21 = sub_100268B9C();
  v22(v21);
  v23 = sub_1002335A8();
  v24(v23);
  sub_1002689E0();

  sub_1002689D0();
  sub_100006084();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_100264D14()
{
  sub_1001D1970();
  sub_100005838();
  sub_100268D3C();
  sub_100004410();
  *v3 = v2;
  v4 = *v1;
  sub_1001D14B0();
  *v5 = v4;
  v2[73] = v6;
  v2[74] = v0;

  sub_1000062BC();
  v7 = v2[70];
  v8 = v2[35];

  if (v0)
  {

    sub_1001F6F1C(v8, &qword_1003B83E8);
    v9 = sub_1002335A8();
  }

  else
  {
    sub_1001F6F1C(v8, &qword_1003B83E8);
    v9 = sub_1002204F8();
  }

  v7(v9);
  sub_1001B6A34();
  sub_1001D185C();

  return _swift_task_switch(v10, v11, v12);
}

void sub_100264EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1001F77D8();
  sub_100268E78();
  v19 = v18[74];
  v20 = v18[73];
  v21 = v18[30];
  sub_100005BE0((v18 + 17));
  v22 = swift_task_alloc();
  *(v22 + 16) = v21;
  v23 = sub_1001F761C();
  v26 = sub_100254564(v23, v24, v20, v25, v22);
  if (v19)
  {

    v27 = sub_100268DC0();
    v28(v27);
    v29 = sub_1001F72BC();
    v30(v29);
    sub_1002689E0();

    sub_1000046F8();
    sub_1001F7484();

    v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, v19, a14, a15, a16, a17, a18);
    return;
  }

  v39 = v18[33];

  v40 = sub_1001E6E2C(v26);
  v41 = 0;
  v64 = v26 & 0xFFFFFFFFFFFFFF8;
  v66 = v26 & 0xC000000000000001;
  while (v40 != v41)
  {
    if (v66)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(v64 + 16))
      {
        goto LABEL_22;
      }

      v42 = *(v26 + 8 * v41 + 32);
    }

    v43 = v42;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    if (!v39)
    {
      goto LABEL_14;
    }

    v44 = v26;
    v45 = [v42 identifier];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v18[27] = v46;
    v18[28] = v48;
    v49 = swift_task_alloc();
    *(v49 + 16) = v18 + 27;
    LOBYTE(v46) = sub_100006C40(sub_100006D60, v49, v39);

    if (v46)
    {
      v26 = v44;
LABEL_14:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_16;
    }

    v26 = v44;
LABEL_16:
    ++v41;
  }

  v62 = v18[40];
  v63 = v18[39];
  v65 = v18[36];
  v67 = v18[35];

  v50 = sub_1002335A8();
  v51(v50);
  v52 = sub_100268B1C();
  v53(v52);

  sub_100268B4C();
  sub_1001F7484();

  v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, v62, v63, v65, v67, _swiftEmptyArrayStorage, a15, a16, a17, a18);
}

uint64_t sub_100265258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v13 = sub_100268ECC();
  v14(v13);
  v15 = sub_1001F72BC();
  v16(v15);
  v17 = sub_1001E4240();
  v18(v17);
  sub_100005BE0(v12 + 176);
  sub_100268A8C();

  sub_1000046F8();
  sub_100006084();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_100265344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v13 = sub_100268B88();
  v14(v13);
  v15 = sub_100244B7C();
  v16(v15);
  sub_100005BE0(v12 + 16);
  sub_100268A8C();

  sub_1000046F8();
  sub_100006084();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_10026540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v13 = sub_100268B88();
  v14(v13);
  v15 = sub_100244B7C();
  v16(v15);
  sub_100005BE0(v12 + 56);
  sub_100268A8C();

  sub_1000046F8();
  sub_100006084();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1002654D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v13 = sub_100268B88();
  v14(v13);
  v15 = sub_100244B7C();
  v16(v15);
  sub_100005BE0(v12 + 96);
  sub_100268A8C();

  sub_1000046F8();
  sub_100006084();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_10026559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v13 = sub_100268B88();
  v14(v13);
  v15 = sub_100244B7C();
  v16(v15);
  sub_100005BE0(v12 + 136);
  sub_100268A8C();

  sub_1000046F8();
  sub_100006084();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_100265664(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a1;
  v4 = sub_1001A6C04(&qword_1003B5FC0);
  __chkstk_darwin(v4 - 8);
  v36[1] = v36 - v5;
  v6 = sub_1001A6C04(&qword_1003B6088);
  __chkstk_darwin(v6 - 8);
  v8 = v36 - v7;
  v9 = type metadata accessor for LeaderboardDescription();
  v44 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v41 = v36 - v13;
  v14 = sub_1001A6C04(&qword_1003B8410);
  v15 = __chkstk_darwin(v14);
  v42 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v43 = v36 - v18;
  __chkstk_darwin(v17);
  v20 = v36 - v19;
  v21 = sub_1001A6C04(&qword_1003B6080);
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v23(v20, v38, v21);
  v23(&v20[*(v14 + 48)], v39, v21);
  sub_100268798(v40, v8, &qword_1003B6088);
  if (sub_1001A969C(v8, 1, v9) == 1)
  {
    sub_1001F6F1C(v20, &qword_1003B8410);
    sub_1001F6F1C(v8, &qword_1003B6088);
    return 0;
  }

  else
  {
    v25 = v44;
    v26 = v41;
    (*(v44 + 32))(v41, v8, v9);
    v38 = sub_1001A7B44(0, &qword_1003B5A58);
    v27 = *(v25 + 16);
    v36[0] = v12;
    v40 = v9;
    v27(v12, v26, v9);
    v28 = v43;
    sub_100268798(v20, v43, &qword_1003B8410);
    v39 = *(v14 + 48);
    Page.elements.getter();
    v29 = *(v22 + 8);
    v29(v28, v21);
    sub_1001BAAB8();

    v30 = v42;
    sub_100268798(v20, v42, &qword_1003B8410);
    v31 = *(v14 + 48);
    v32 = v37;
    Page.elements.getter();
    v29(v30 + v31, v21);

    v24 = v38;
    v33 = v45;
    sub_1002552F4();
    if (!v33)
    {
      v24 = v34;
    }

    (*(v44 + 8))(v41, v40);
    sub_1001F6F1C(v20, &qword_1003B8410);
    v29(v42, v21);
    v29(v43 + v39, v21);
  }

  return v24;
}

uint64_t sub_100265C58(void *a1, void *a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v6[6] = v13;
  if (a4)
  {
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6[7] = a4;
  v14 = a1;
  v15 = a2;
  a6;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_100265D94;

  return sub_10026397C();
}

uint64_t sub_100265D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  sub_100268C34();
  v12 = *v11;
  v13 = *v11;
  sub_100004410();
  *v14 = v13;
  v15 = v12[4];
  v16 = v12[3];
  v17 = v12[2];
  *v14 = *v11;

  sub_100268DEC();

  if (v10)
  {
    v18 = _convertErrorToNSError(_:)();

    v19 = v18;
  }

  else
  {
    sub_1001A7B44(0, &qword_1003B5A58);
    sub_100269014();
    Array._bridgeToObjectiveC()();
    sub_100268C8C();

    v19 = 0;
  }

  v20 = v13[5];
  v21 = sub_100268B74();
  v22(v21);

  _Block_release(v20);
  sub_10020D590();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_100265F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = v7;
  *(v8 + 168) = a4;
  *(v8 + 176) = a6;
  *(v8 + 232) = a5;
  *(v8 + 152) = a2;
  *(v8 + 160) = a3;
  *(v8 + 144) = a1;
  v9 = sub_10000448C();
  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100265FA4()
{
  sub_1001D1BD0();
  sub_1001D18F8();
  v1 = *(*(v0 + 160) + 16);
  if (v1)
  {
    v2 = *(v0 + 152);
    v3 = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      return _swift_continuation_await(v3);
    }

    v4 = *(v0 + 160) + 40;
    do
    {
      v5 = *(v0 + 168);
      v7 = *(v0 + 144);
      v6 = *(v0 + 152);
      v8 = objc_allocWithZone(GKScoreInternal);

      v9 = [v8 init];
      [v9 setPlayer:v5];
      sub_100268B9C();
      v10 = String._bridgeToObjectiveC()();
      [v9 setLeaderboardIdentifier:v10];

      [v9 setValue:v7];
      [v9 setContext:v6];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  v11 = *(v0 + 184);
  sub_1001A7B44(0, &qword_1003B5A68);
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 200) = v12;

  v13 = [v11 bundleIdentifier];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String._bridgeToObjectiveC()();
    sub_1002691BC();
  }

  *(v0 + 208) = v13;
  v14 = *(v0 + 192);
  v15 = *(v0 + 232);
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 216) = isa;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100266264;
  v17 = swift_continuation_init();
  *(v0 + 136) = sub_1001A6C04(&unk_1003B6BE0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100222794;
  *(v0 + 104) = &unk_10036E5C0;
  *(v0 + 112) = v17;
  [v14 submitFakeScoresWithScores:v12.super.isa bundleID:v13 screenChallenges:v15 eligibleChallenges:isa completionHandler:v0 + 80];
  sub_100006084();

  return _swift_continuation_await(v3);
}

uint64_t sub_100266264()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  sub_1001B6A34();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100266364()
{
  sub_100005528();
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  sub_1000046F8();

  return v3();
}

uint64_t sub_1002663CC()
{
  sub_1001AFA50();
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  sub_1000046F8();

  return v4();
}

uint64_t sub_100266514(uint64_t a1, uint64_t a2, int a3, void *a4, char a5, int a6, void *a7, void *aBlock)
{
  v8[3] = a7;
  v8[4] = v21;
  v8[2] = a4;
  v8[5] = _Block_copy(aBlock);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8[6] = v14;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8[7] = v15;
  v16 = a4;
  v17 = a7;
  v21;
  v18 = swift_task_alloc();
  v8[8] = v18;
  *v18 = v8;
  v18[1] = sub_100266664;

  return sub_100265F6C(a1, a2, v14, v16, a5, v15, v17);
}

uint64_t sub_100266664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001D1BD0();
  sub_1001D18F8();
  sub_100005B68();
  sub_100004410();
  *v15 = v14;
  v16 = *(v14 + 32);
  v17 = *(v14 + 24);
  v18 = *(v14 + 16);
  *v15 = *v13;

  sub_1000062BC();
  if (v12)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v19 = sub_10020D2EC();
    v20(v19, v14);
  }

  else
  {
    v21 = sub_10020D2EC();
    v22(v21, 0);
  }

  _Block_release(*(v14 + 40));
  sub_10000629C();
  sub_100006084();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_100266814()
{
  sub_100005528();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_1001A6C04(&qword_1003B5FC8);
  v1[11] = v5;
  sub_1001B6A00(v5);
  v1[12] = v6;
  v1[13] = sub_1001E41A0();
  v7 = sub_10000448C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1002668C8()
{
  sub_100006B50();
  sub_1001AFA50();
  v1 = v0[13];

  Ref<A>.init(bundleID:)();
  *(swift_task_alloc() + 16) = v1;
  sub_100254CF8();
  v0[14] = v2;

  sub_100256520(v0 + 2);
  sub_100006454(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_100266A78;
  sub_1000047F0();
  sub_1001D18C4();

  return dispatch thunk of GameKitServiceProtocol.submitLeaderboardEntries(entries:)(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100266A78()
{
  sub_1000057FC();
  sub_100268DF8();
  sub_1001D14B0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v0;

  sub_100268D7C();

  sub_100268AB4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100266B90()
{
  sub_1000057FC();
  sub_100005BE0(v0 + 16);
  v1 = sub_100244B7C();
  v2(v1);

  sub_1000046F8();

  return v3();
}

uint64_t sub_100266C14()
{
  sub_100005528();
  sub_100005BE0((v0 + 2));
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_1000046F8();

  return v1();
}

uint64_t sub_100266C94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v7 = sub_1001A6C04(&qword_1003B6260);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - v8;
  v10 = sub_1001A6C04(&qword_1003B83E0);
  __chkstk_darwin(v10 - 8);
  v36 = v32 - v11;
  v12 = sub_1001A6C04(&qword_1003B8220);
  __chkstk_darwin(v12 - 8);
  v14 = v32 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v32 - v20;
  v22 = *a1;
  result = [v22 context];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v32[1] = result;
    v32[2] = v9;
    v32[3] = a4;
    v24 = [v22 date];
    if (v24)
    {
      v25 = v24;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = *(v16 + 32);
      v26(v14, v19, v15);
      sub_1001A9674(v14, 0, 1, v15);
      v26(v21, v14, v15);
    }

    else
    {
      sub_1001A9674(v14, 1, 1, v15);
      static Date.now.getter();
      if (sub_1001A969C(v14, 1, v15) != 1)
      {
        sub_1001F6F1C(v14, &qword_1003B8220);
      }
    }

    v27 = sub_1001AD9DC(v22);
    v33 = a3;
    if (v28)
    {
      v32[0] = v27;
    }

    else
    {
      v37 = [v22 value];
      v32[0] = dispatch thunk of CustomStringConvertible.description.getter();
    }

    v29 = [v22 leaderboardIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v35;
    Ref<A>.leaderboard(id:)();
    if (v30)
    {
      (*(v16 + 8))(v21, v15);

      *v33 = v30;
    }

    else
    {

      v31 = [v22 playerID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      Ref<A>.init(internalID:)();
      [v22 value];
      return LeaderboardEntry.init(context:dateEarned:formattedScore:leaderboard:player:rank:score:)();
    }
  }

  return result;
}

uint64_t sub_100267164(int a1, int a2, int a3, int a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  sub_1001A7B44(0, &qword_1003B5A68);
  v6[4] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6[5] = v8;
  v6[6] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  a6;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_100267290;

  return sub_100266814();
}

uint64_t sub_100267290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  sub_100005B68();
  sub_100004410();
  *v13 = v12;
  v14 = *(v12 + 16);
  *v13 = *v11;

  sub_1000062BC();
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_10020D4C4();

    v15 = sub_10020D2EC();
    v16(v15, v12);
  }

  else
  {
    v17 = sub_10020D2EC();
    v18(v17, 0);
  }

  _Block_release(*(v12 + 24));
  sub_10000629C();
  sub_10020D590();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_10026742C()
{
  v1 = type metadata accessor for LeaderboardType();
  sub_1000043C4();
  __chkstk_darwin(v2);
  sub_1000043B4();
  v4 = sub_100269050(v3);
  v5(v4, v0, v1);
  v6 = sub_1001ACA00();
  v8 = v7(v6);
  result = 0;
  if (v8 != enum case for LeaderboardType.classic(_:))
  {
    if (v8 == enum case for LeaderboardType.recurring(_:))
    {
      return 1;
    }

    else
    {
      type metadata accessor for GameServicesError();
      sub_10026899C();
      sub_100267F68(v10, v11);
      swift_allocError();
      v13 = v12;
      _StringGuts.grow(_:)(36);
      v14._object = 0x800000010030E300;
      v14._countAndFlagsBits = 0xD000000000000022;
      String.append(_:)(v14);
      _print_unlocked<A, B>(_:_:)();
      *v13 = 0;
      v13[1] = 0xE000000000000000;
      sub_100005534();
      (*(v15 + 104))(v13);
      swift_willThrow();
      v16 = sub_1001ACA00();
      return v17(v16);
    }
  }

  return result;
}

uint64_t sub_100267638(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100267794(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002678EC(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100267A48(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1001A6C04(&qword_1003B6260);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = __chkstk_darwin(v8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v32 - v12;
  v14 = a4 + 56;
  v13 = *(a4 + 56);
  v38 = -1 << *(a4 + 32);
  if (-v38 < 64)
  {
    v15 = ~(-1 << -v38);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  if (!a2)
  {
    v19 = 0;
    result = 0;
LABEL_22:
    v31 = ~v38;
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v31;
    a1[3] = v19;
    a1[4] = v16;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v19 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a4 + 56;
    v18 = 0;
    v19 = 0;
    v20 = (63 - v38) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = result;
    while (v18 < result)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      if (!v16)
      {
        v14 = v34;
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
            v16 = 0;
            result = v18;
            a1 = v33;
            goto LABEL_22;
          }

          v16 = *(v34 + 8 * v21);
          ++v19;
          if (v16)
          {
            v43 = v18 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v43 = v18 + 1;
      v21 = v19;
LABEL_17:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = a4;
      v24 = *(a4 + 48);
      v26 = v41;
      v25 = v42;
      v27 = *(v42 + 72);
      v28 = v40;
      (*(v42 + 16))(v40, v24 + v27 * (v22 | (v21 << 6)), v41);
      v29 = *(v25 + 32);
      v30 = v39;
      v29(v39, v28, v26);
      v29(a2, v30, v26);
      result = v37;
      v18 = v43;
      if (v43 == v37)
      {
        v19 = v21;
        a1 = v33;
        v14 = v34;
        a4 = v23;
        goto LABEL_22;
      }

      a2 += v27;
      v19 = v21;
      a4 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100267CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v10 = swift_task_alloc();
  v11 = sub_1001E3D24(v10);
  *v11 = v12;
  v11[1] = sub_1001AF9F8;
  sub_1001D185C();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100267DCC()
{
  sub_1000057FC();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = sub_1001E3D24(v6);
  *v7 = v8;
  sub_1002332C8(v7);

  return sub_1002566F8(v4, v2, v5);
}

uint64_t sub_100267E6C()
{
  sub_1000057FC();
  v2 = v1;
  v4 = v3;
  sub_1000057F0();
  v5 = *v0;
  sub_100004410();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_100267F68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100267FDC()
{
  sub_1001D18F8();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF328;
  sub_1001E3FFC();
  sub_100006084();

  __asm { BR              X8 }
}

uint64_t sub_1002680BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1001D1970();
  sub_100005838();
  v10 = swift_task_alloc();
  v11 = sub_1001E3D24(v10);
  *v11 = v12;
  v11[1] = sub_1001AF9F8;
  sub_1000047F0();
  sub_1001D185C();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100268188(void *a1)
{
  v2 = [a1 originalBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1002681F8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

uint64_t sub_100268264(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001B6ACC();
}

uint64_t sub_1002682C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10020D578();
  sub_100005838();
  v10 = swift_task_alloc();
  v11 = sub_1001E3D24(v10);
  *v11 = v12;
  v11[1] = sub_1001AF9F8;
  sub_1000047F0();
  sub_10020D590();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_100268378()
{
  sub_1000057FC();
  sub_1002691D4();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_100004930(v1);

  return v4(v3);
}

uint64_t sub_100268408()
{
  sub_1000057FC();
  sub_1002691D4();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_100004930(v1);

  return v4(v3);
}

void sub_100268498()
{
  sub_1001D1988();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1001E3FFC();
  sub_100005B0C();

  __asm { BR              X8 }
}

uint64_t sub_100268588()
{
  sub_1000057FC();
  sub_1002691D4();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_100004930(v1);

  return v4(v3);
}

uint64_t sub_100268618()
{
  sub_1000057FC();
  sub_1002691D4();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v3 = sub_100004930(v1);

  return v4(v3);
}

uint64_t sub_1002686C8()
{
  sub_100006B50();
  sub_1001AFA50();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1000047F0();
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100268798(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1002692E8(a1, a2, a3);
  sub_100005780();
  v4 = sub_1001B6ACC();
  v5(v4);
  return v3;
}

uint64_t sub_1002687E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1002692E8(a1, a2, a3);
  sub_100005780();
  v4 = sub_1001B6ACC();
  v5(v4);
  return v3;
}

uint64_t sub_100268830()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100268880()
{
  sub_100006B50();
  sub_1001AFA50();
  v0 = swift_task_alloc();
  v1 = sub_1001E3D24(v0);
  *v1 = v2;
  v1[1] = sub_1001AF9F8;
  sub_1000047F0();
  sub_1001D18C4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002689E0()
{
}

uint64_t sub_100268A08()
{

  return swift_allocObject();
}

uint64_t sub_100268A8C()
{
}

uint64_t sub_100268BEC(uint64_t a1)
{

  return sub_1001A969C(v1, 1, a1);
}

void sub_100268CE8()
{

  sub_1001DF7EC();
}

uint64_t sub_100268D48()
{

  return static GameServicesError.illegalState(message:)();
}

uint64_t sub_100268E10()
{
}

uint64_t sub_100268E40()
{

  return swift_allocObject();
}

id sub_100268E60(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_100268EB4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

__n128 sub_100268EDC(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

uint64_t sub_100268F3C()
{
}

uint64_t sub_100268F64@<X0>(uint64_t a1@<X8>)
{
  v2[37] = a1;
  v2[38] = v1;
  v2[36] = v1;
  v4 = v2[23] + 32 * a1 + 32;

  return sub_1001A7AE8(v4, (v2 + 17));
}

void sub_10026908C()
{
  v2 = *(v0 + 312);
}

uint64_t sub_1002690A8()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1002690C4()
{
}

uint64_t sub_1002690E0()
{

  return swift_dynamicCast();
}

uint64_t sub_100269104()
{

  return swift_allocObject();
}

id sub_100269120(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100269138()
{

  return sub_100256520((v0 + 16));
}

uint64_t sub_100269190()
{
  sub_100005BE0(v0 + 56);

  return sub_100256520((v0 + 96));
}

uint64_t sub_100269268()
{
}

uint64_t sub_100269288()
{
}

uint64_t sub_1002692A8()
{
}

void sub_1002692C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_10025CF3C(v6, (v5 + 96), va);
}

uint64_t sub_1002692E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1001A6C04(a3);
}

id sub_100269328(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100269340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = Dictionary.init(dictionaryLiteral:)();
  v44 = sub_1001E6E2C(a1);
  if (!v44)
  {
LABEL_27:
    sub_1001A7B44(0, &qword_1003B5B78);
    sub_1002698C0();
    Dictionary.init(dictionaryLiteral:)();
    v22 = sub_1001E6E2C(a3);
    if (!v22)
    {
      goto LABEL_44;
    }

    v23 = v22;
    if (v22 < 1)
    {
      goto LABEL_48;
    }

    v24 = 0;
LABEL_30:
    if ((a3 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(a3 + 32 + 8 * v24);
    }

    v26 = v25;
    ++v24;
    v27 = [v25 handles];
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = *(v28 + 16);
    v30 = (v28 + 40);
    if (!v29)
    {
      goto LABEL_42;
    }

    while (1)
    {
      if (*(v5 + 16))
      {
        v32 = *(v30 - 1);
        v31 = *v30;

        sub_1001B247C(v32, v31);
        v34 = v33;

        if (v34)
        {

          if (*(v5 + 16))
          {
            v35 = sub_1001B247C(v32, v31);
            if (v36)
            {
              v37 = (*(v5 + 56) + 16 * v35);
              v38 = *v37;
              v39 = v37[1];

              swift_isUniquelyReferenced_nonNull_native();
              sub_1001BA564(v38, v39, v26);

              goto LABEL_43;
            }
          }

LABEL_42:

LABEL_43:
          if (v24 == v23)
          {
LABEL_44:

            return;
          }

          goto LABEL_30;
        }
      }

      v30 += 2;
      if (!--v29)
      {
        goto LABEL_42;
      }
    }
  }

  v6 = 0;
  v43 = a1 & 0xC000000000000001;
  v40 = a1 + 32;
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v43)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v41 + 16))
      {
        goto LABEL_47;
      }

      v7 = *(v40 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_46;
    }

    sub_100269928(v7);
    if (!v10)
    {

      goto LABEL_22;
    }

    v45 = v8;
    v11 = 1 << *(a2 + 32);
    v12 = v11 < 64 ? ~(-1 << v11) : -1;
    v13 = v12 & *(a2 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    if (!v13)
    {
      break;
    }

    while (1)
    {
      v16 = v15;
LABEL_17:
      v17 = (*(a2 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
      v19 = *v17;
      v18 = v17[1];
      sub_1001B6954();

      if (StringProtocol.contains<A>(_:)())
      {
        break;
      }

      v13 &= v13 - 1;

      v15 = v16;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    sub_1001AFC04(v19, v18, a2);
    v21 = v20;

    if (v21)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1001B9B34();
    }

    else
    {
    }

LABEL_22:
    if (v6 == v44)
    {
      goto LABEL_27;
    }
  }

LABEL_14:
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      goto LABEL_22;
    }

    v13 = *(a2 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

unint64_t sub_1002698C0()
{
  result = qword_1003B84C8;
  if (!qword_1003B84C8)
  {
    sub_1001A7B44(255, &qword_1003B5B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B84C8);
  }

  return result;
}

uint64_t sub_100269928(void *a1)
{
  v1 = [a1 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10026998C(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = type metadata accessor for Logger();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_100269AB4, 0, 0);
}

uint64_t sub_100269AB4()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[31];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[40] = isa;
  sub_1000049AC();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  v6 = static OS_dispatch_queue.global(qos:)();
  v0[41] = v6;
  (*(v2 + 8))(v1, v3);
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_100269C70;
  v7 = swift_continuation_init();
  v0[17] = sub_1001A6C04(&qword_1003B84D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10026A1BC;
  v0[13] = &unk_10036E778;
  v0[14] = v7;
  [v4 getValuesForKeys:isa queue:v6 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100269C70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {
    v2 = sub_100269FA4;
  }

  else
  {
    v2 = sub_100269D80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100269D80()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 320);

  if (v1)
  {
    *(v0 + 216) = 0xD000000000000018;
    *(v0 + 224) = 0x8000000100309290;
    AnyHashable.init<A>(_:)();
    sub_1001AFA68(v1, (v0 + 184));

    sub_1001B2E34(v0 + 144);
    if (*(v0 + 208))
    {
      sub_1001A6C04(&unk_1003B6BD0);
      if (swift_dynamicCast())
      {
        if (*(*(v0 + 240) + 16))
        {
          v3 = sub_10026A270(*(v0 + 240));

          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1001A974C(v0 + 184, &qword_1003B5808);
    }
  }

  static GKLog.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 288);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fetched empty list of trusted image domains. Allowing all.", v10, 2u);
    sub_1000043D8();
  }

  (*(v9 + 8))(v7, v8);
  v3 = 1;
LABEL_11:

  v11 = *(v0 + 8);

  return v11(v3);
}

uint64_t sub_100269FA4()
{
  v17 = v0;
  v1 = v0[41];
  v2 = v0[40];
  swift_willThrow();

  static GKLog.daemon.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  if (v5)
  {
    v15 = v0[35];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100005C3C(0xD000000000000018, 0x8000000100309290, &v16);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch bag values for key: %s, error: %@. Allowing all.", v9, 0x16u);
    sub_1001A974C(v10, &unk_1003B6180);
    sub_1000043D8();
    sub_100005BE0(v11);
    sub_1000043D8();
    sub_1000043D8();

    (*(v7 + 8))(v15, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v13 = v0[1];

  return v13(1);
}

uint64_t sub_10026A1BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100006454((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1001D1394(v5, v6);
  }

  else
  {
    if (a2)
    {
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = 0;
    }

    return sub_1001D1354(v5, v8);
  }
}

BOOL sub_10026A270(uint64_t a1)
{
  sub_10026A698(v1);
  if (!v3)
  {
    return 0;
  }

  v4 = (a1 + 40);
  v5 = *(a1 + 16) + 1;
  do
  {
    v6 = --v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = v4 + 2;
    v9 = *(v4 - 1);
    v8 = *v4;

    v10._countAndFlagsBits = v9;
    v10._object = v8;
    LOBYTE(v9) = String.hasSuffix(_:)(v10);

    v4 = v7;
  }

  while ((v9 & 1) == 0);

  return v6;
}

uint64_t sub_10026A3A8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10026A46C;

  return sub_10026998C(v6);
}

uint64_t sub_10026A46C(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10026A5CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10020F270;

  return sub_10026A3A8(v2, v3, v4);
}

uint64_t sub_10026A698(void *a1)
{
  v1 = [a1 host];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10026A6FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A6C04(&qword_1003B84E8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1001B2F38(*(a1 + 48) + 40 * v10, __src);
    sub_1001A7AE8(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001B2F38(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1001A7AE8(&__dst[40], v20);
    sub_1001A974C(__dst, &qword_1003B84F0);
    v21 = v18;
    sub_100005C2C(v20, v22);
    v11 = v21;
    sub_100005C2C(v22, v23);
    sub_100005C2C(v23, &v21);
    result = sub_1001B247C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_100005BE0(v14);
      result = sub_100005C2C(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_100005C2C(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1001A974C(__dst, &qword_1003B84F0);

  return 0;
}

void sub_10026A9B4(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for URL();
  sub_1000043C4();
  v63 = v7;
  v64 = v6;
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v10 - 8);
  sub_1000043F0();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_1001A6C04(&qword_1003B84D8);
  __chkstk_darwin(v17 - 8);
  sub_1000043F0();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  type metadata accessor for Logger();
  sub_1000043C4();
  v65 = v25;
  v66 = v24;
  __chkstk_darwin(v24);
  sub_1000043F0();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &v61 - v30;
  if ([a1 _gkHasValidServerURLRequest])
  {
    sub_10026B414();
    v32 = a1;
    v33 = sub_10026B054(v32, a2);
    v34 = [v3 bag];
    if (v34)
    {
      v35 = v34;
      [v33 setBag:v34];
      v36 = [objc_opt_self() shouldCollectMetricsPromiseForContext:v33];
      v37 = swift_allocObject();
      v37[2] = v33;
      v37[3] = v3;
      v37[4] = v32;
      aBlock[4] = sub_10026B458;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10026B48C;
      aBlock[3] = &unk_10036E7C8;
      v38 = _Block_copy(aBlock);
      v39 = v32;
      v40 = v33;
      v41 = v3;

      [v36 addSuccessBlock:v38];
      _Block_release(v38);
    }

    else
    {
      static GKLog.general.getter();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Cannot report session event without a bag.", v51, 2u);
      }

      else
      {
      }

      (*(v65 + 8))(v31, v66);
    }
  }

  else
  {
    static GKLog.daemon.getter();
    v42 = a1;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      v62 = v45;
      *v45 = 136315138;
      v46 = [v42 currentRequest];
      if (v46)
      {
        v47 = v46;
        static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = 0;
      }

      else
      {
        v48 = 1;
      }

      v52 = type metadata accessor for URLRequest();
      sub_1001A9674(v20, v48, 1, v52);
      sub_10026B3A4(v20, v23);
      if (sub_1001A969C(v23, 1, v52) == 1)
      {
        v53 = 7104878;
        sub_1001A974C(v23, &qword_1003B84D8);
        v54 = 0xE300000000000000;
      }

      else
      {
        v55 = v44;
        URLRequest.url.getter();
        (*(*(v52 - 8) + 8))(v23, v52);
        sub_100220418(v16, v13);
        v56 = v64;
        if (sub_1001A969C(v13, 1, v64) == 1)
        {
          v53 = 7104878;
          sub_1001A974C(v16, &qword_1003B5800);
          v54 = 0xE300000000000000;
        }

        else
        {
          v57 = v63;
          (*(v63 + 32))(v9, v13, v56);
          v53 = URL.absoluteString.getter();
          v54 = v58;
          (*(v57 + 8))(v9, v56);
          sub_1001A974C(v16, &qword_1003B5800);
        }

        v44 = v55;
      }

      v59 = sub_100005C3C(v53, v54, aBlock);

      v60 = v62;
      *(v62 + 1) = v59;
      _os_log_impl(&_mh_execute_header, v43, v44, "GKAMPController ignoring request with URL: %s)", v60, 0xCu);
      sub_100005BE0(v61);
    }

    (*(v65 + 8))(v28, v66);
  }
}

id sub_10026B054(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTask:a1 metrics:a2];

  return v4;
}

void sub_10026B0B0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ([a1 BOOLValue])
  {
    v6 = [objc_opt_self() loadURLEventPromiseWithContext:a2];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a4;
    v11[4] = sub_10026B47C;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10026B48C;
    v11[3] = &unk_10036E840;
    v9 = _Block_copy(v11);
    v10 = a4;

    [v6 addSuccessBlock:v9];
    _Block_release(v9);
  }
}

void sub_10026B1F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = AMSMetricsLoadURLEvent.metricsFields(task:)();
    v3 = sub_10026A6FC(v2);

    if (v3)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v1 reportLoadUrlMetricsEventWithMetricsFields:isa];

      v1 = isa;
    }
  }
}

void sub_10026B2C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10026B3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B84D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10026B414()
{
  result = qword_1003B84E0;
  if (!qword_1003B84E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B84E0);
  }

  return result;
}

uint64_t sub_10026B464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AppMetadataCache.FetchRequest.init(ids:type:ttl:environment:includeData:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t AppMetadataCache.InsertInvalidRequest.init(invalidIDs:type:lastModifiedDate:environment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  inserted = type metadata accessor for AppMetadataCache.InsertInvalidRequest(0);
  v9 = *(inserted + 24);
  type metadata accessor for Date();
  sub_100005780();
  result = (*(v10 + 32))(a5 + v9, a3);
  *(a5 + *(inserted + 28)) = a4;
  return result;
}

uint64_t AppMetadataCache.InsertRequest.init(metadatas:lastModifiedDate:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  inserted = type metadata accessor for AppMetadataCache.InsertRequest(0);
  v8 = *(inserted + 20);
  type metadata accessor for Date();
  sub_100005780();
  result = (*(v9 + 32))(&a4[v8], a2);
  *&a4[*(inserted + 24)] = a3;
  return result;
}

uint64_t AppMetadataCache.InsertRequest.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppMetadataCache.InsertRequest(0) + 20);
  type metadata accessor for Date();
  sub_100005780();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AppMetadataCache.InsertInvalidRequest.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppMetadataCache.InsertInvalidRequest(0) + 24);
  type metadata accessor for Date();
  sub_100005780();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_10026B7E8()
{
  sub_1001A6C04(&qword_1003B7B48);
  result = swift_allocObject();
  *(result + 16) = 0;
  off_1003B84F8 = result;
  return result;
}

void sub_10026B828()
{
  sub_10023332C();
  v64 = v0;
  v2 = v1;
  v66 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for Logger();
  sub_1000043C4();
  v59 = v5;
  v60 = v4;
  __chkstk_darwin(v4);
  sub_1000043B4();
  v65 = v7 - v6;
  v8 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v9 = sub_100006A0C(v8);
  __chkstk_darwin(v9);
  sub_1000043B4();
  v62 = v11 - v10;
  type metadata accessor for ModelConfiguration();
  sub_1000043C4();
  v67 = v12;
  v68 = v13;
  __chkstk_darwin(v12);
  sub_1000043F0();
  v58 = v14 - v15;
  v17 = __chkstk_darwin(v16);
  v61 = &v57 - v18;
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  type metadata accessor for URL();
  sub_1000043C4();
  v69 = v21;
  v70 = v22;
  __chkstk_darwin(v21);
  sub_1000043F0();
  v57 = v23 - v24;
  v26 = __chkstk_darwin(v25);
  v28 = &v57 - v27;
  __chkstk_darwin(v26);
  v30 = &v57 - v29;
  v31 = [objc_opt_self() defaultManager];
  v32 = objc_opt_self();
  v33 = String._bridgeToObjectiveC()();

  v34 = String._bridgeToObjectiveC()();
  v35 = sub_10023DBD4(v66, v2, v33, v34, v31, v32);

  if (v35)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10026BE68();
    (*(v70 + 16))(v28, v30, v69);
    static ModelConfiguration.CloudKitDatabase.none.getter();
    v66 = v28;
    ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)();
    v62 = swift_getObjectType();
    v37 = v67;
    v36 = v68;
    v38 = v61;
    ObjectType = *(v68 + 16);
    ObjectType(v61, v20, v67);
    v39 = v64;
    AppMetadataCache.__allocating_init(configuration:)(v38);
    v40 = v20;
    if (v39)
    {
      v61 = v31;
      v64 = v30;
      v41 = v69;
      static GKLog.cache.getter();
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = v40;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v47;
        *v46 = v47;
        _os_log_impl(&_mh_execute_header, v42, v43, "Failed to construct model container with error, deleting files: %@", v45, 0xCu);
        sub_1001B2DDC(v46, &unk_1003B6180);
        sub_1000043D8();
        v40 = v44;
        sub_1000043D8();
      }

      (*(v59 + 8))(v65, v60);
      v48 = v57;
      ModelConfiguration.url.getter();
      v49 = v66;
      URL.deletingLastPathComponent()();
      v50 = v40;
      v51 = *(v70 + 8);
      v51(v48, v41);
      sub_100006C20();
      v52 = v61;
      sub_100222140();

      v51(v49, v41);
      v53 = v58;
      ObjectType(v58, v50, v67);
      AppMetadataCache.__allocating_init(configuration:)(v53);

      v55 = sub_10023E864();
      v56(v55);
      v51(v64, v41);
    }

    else
    {

      (*(v36 + 8))(v20, v37);
      (*(v70 + 8))(v30, v69);
    }

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100275DC8();
    sub_100276AA8();
    swift_allocError();
    *v54 = 0;
    swift_willThrow();

    swift_getObjectType();
    sub_100269014();
    swift_deallocPartialClassInstance();
  }

  sub_1002333A4();
}

uint64_t sub_10026BE68()
{
  if (qword_1003B5548 != -1)
  {
    swift_once();
  }

  v0 = *(*off_1003B84F8 + 136);

  v2 = v0(v1);
  v3 = 0;
  atomic_compare_exchange_strong_explicit(v2, &v3, 1u, memory_order_relaxed, memory_order_relaxed);
  LODWORD(v0) = v3 == 0;

  if (v0 == 1)
  {
    sub_10026C384();
    sub_1001A7B44(0, &qword_1003B7B40);
    sub_1001A6C04(&qword_1003B6BC8);
    sub_1001E43DC();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002C33A0;
    v6 = type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
    sub_1002767EC();
    v8 = sub_10026F1A4(v7);
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v9 = [objc_allocWithZone(NSManagedObjectModel) init];
    sub_100276A90();
    v10 = static NSManagedObjectModel.makeManagedObjectModel(for:mergedWith:)();

    if (v10)
    {
      v11 = [v10 versionChecksum];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v12 = sub_1001D1B80();
    sub_10023716C(v12);
  }

  return result;
}

uint64_t AppMetadataCache.__allocating_init(configuration:)(uint64_t a1)
{
  type metadata accessor for ModelContainer();
  sub_1001A6C04(&qword_1003B6BC8);
  sub_1001E43DC();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002C33A0;
  v4 = type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
  sub_1002767EC();
  v6 = sub_10026F1A4(v5);
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_10026C280();
  sub_1001A6C04(&qword_1003B6C68);
  v7 = type metadata accessor for ModelConfiguration();
  sub_1000043C4();
  v9 = v8;
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002C33A0;
  (*(v9 + 16))(v11 + v10, a1, v7);
  ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v1)
  {
    return (*(v9 + 8))(a1, v7);
  }

  type metadata accessor for AppMetadataCache();
  sub_1001F7388();
  swift_allocObject();
  v13 = sub_1001B2FE0();
  v14 = AppMetadataCache.init(modelContainer:)(v13);
  (*(v9 + 8))(a1, v7);
  return v14;
}

unint64_t sub_10026C280()
{
  result = qword_1003B8500;
  if (!qword_1003B8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8500);
  }

  return result;
}

void sub_10026C384()
{
  sub_10000469C();
  v34 = v0;
  v33 = type metadata accessor for URL();
  sub_1000043C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000043F0();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v11 = sub_100006A0C(v10);
  __chkstk_darwin(v11);
  sub_1000043B4();
  sub_100006404();
  v32 = type metadata accessor for ModelConfiguration();
  sub_1000043C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000043B4();
  v17 = v16 - v15;
  v18 = type metadata accessor for ModelConfiguration.GroupContainer();
  sub_1000043C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000043F0();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  v27 = &v31 - v26;
  static ModelConfiguration.GroupContainer.identifier(_:)();
  (*(v20 + 16))(v24, v27, v18);
  static ModelConfiguration.CloudKitDatabase.none.getter();
  sub_100276AA8();
  ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
  ModelConfiguration.url.getter();
  URL.deletingLastPathComponent()();
  v28 = *(v2 + 8);
  v29 = v6;
  v30 = v33;
  v28(v29, v33);
  sub_100006C20();
  sub_100222140();
  v28(v9, v30);
  (*(v13 + 8))(v17, v32);
  (*(v20 + 8))(v27, v18);
  sub_1000057D8();
}

uint64_t static AppMetadataSchemaV1.models.getter()
{
  sub_1001A6C04(&qword_1003B6BC8);
  sub_1001E43DC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
  sub_1002767EC();
  v3 = sub_10026F1A4(v2);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return v0;
}

void sub_10026CB5C()
{
  sub_10000469C();
  v35 = v1;
  v36 = v2;
  v31 = v4;
  v32 = v3;
  sub_1001A6C04(&qword_1003B88B0);
  sub_1000043C4();
  v37 = v5;
  v38 = v6;
  sub_100006AB0();
  __chkstk_darwin(v7);
  v34 = &v31 - v8;
  v9 = sub_1001A6C04(&qword_1003B88B8);
  sub_1000043C4();
  v11 = v10;
  sub_100006AB0();
  __chkstk_darwin(v12);
  sub_1002769DC();
  v13 = sub_1001A6C04(&qword_1003B88C0);
  sub_1000043C4();
  v15 = v14;
  sub_100006AB0();
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  v33 = sub_1001A6C04(&qword_1003B88C8);
  sub_1000043C4();
  v20 = v19;
  sub_100006AB0();
  __chkstk_darwin(v21);
  v23 = &v31 - v22;
  sub_10027699C();
  sub_10023E0EC(v24);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v0, v9);
  v39 = v32;
  sub_1001A6C04(&qword_1003B8328);
  sub_10023E0EC(&unk_1003B88D8);
  sub_10023E0EC(&qword_1003B8388);
  static PredicateExpressions.build_flatMap<A, B, C, D>(_:_:)();
  (*(v15 + 8))(v18, v13);
  v40 = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v25 = sub_1001A6C04(&qword_1003B88E0);
  v26 = v36;
  v36[3] = v25;
  v26[4] = sub_100275B7C();
  sub_100005668(v26);
  sub_10023E0EC(&unk_1003B8910);
  sub_100006340();
  sub_10023E0EC(v27);
  v28 = v33;
  static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)();
  v29 = sub_1001D1B80();
  v30(v29);
  (*(v20 + 8))(v23, v28);
  sub_1000057D8();
}

uint64_t sub_10026CFAC()
{
  swift_getKeyPath();
  sub_100005BB8();
  sub_10026F1A4(v1);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100276804();
  sub_10026F1A4(v2);
  sub_100275AD4(&unk_1003B7B10);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t sub_10026D0B4()
{

  sub_100276A90();
  return sub_10026D128();
}

uint64_t sub_10026D128()
{
  swift_getKeyPath();
  sub_1002767EC();
  sub_10026F1A4(v0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_10026D1EC()
{
  sub_10000469C();
  sub_1001A6C04(&qword_1003B8318);
  sub_1000043C4();
  sub_100006AB0();
  __chkstk_darwin(v0);
  sub_1001A6C04(&qword_1003B8320);
  sub_1000043C4();
  sub_100006AB0();
  __chkstk_darwin(v1);
  sub_100276A3C();
  v2 = sub_100276AE0();
  sub_1001A6C04(v2);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_10027699C();
  sub_10023E0EC(v3);
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100006340();
  sub_10023E0EC(v4);
  sub_10023E0EC(&qword_1003B7BA0);
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  v5 = sub_1001D1B80();
  v6(v5);
  v7 = sub_100276A90();
  v8(v7);
  sub_1000057D8();
}

void sub_10026D408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10023332C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for Date();
  sub_1000043C4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_1000043F0();
  v31 = (v29 - v30);
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  if (*(v24 + 8) == 1)
  {
    sub_10026CB30();
  }

  else
  {
    sub_10026CFA0();
  }

  if (v35)
  {
    a10 = v20;
    Date.init()();
    static Date.- infix(_:_:)();
    v36 = *(v27 + 8);
    v36(v31, v25);
    v37 = sub_10026D5A8(*(v24 + 24));
    sub_10026D670(v34, v37 & 1);
    if (*(v24 + 32))
    {
      sub_10026D780();
    }

    v36(v34, v25);
  }

  else
  {
    sub_100275DC8();
    sub_100276AA8();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
  }

  sub_100276960();
  sub_1002333A4();
}

unint64_t sub_10026D5A8(unint64_t result)
{
  if (result > 1)
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

BOOL sub_10026D670(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100272538();
  v7 = Date.compare(_:)();
  (*(v4 + 8))(v6, v3);
  return v7 == -1 || (a2 & 1) != sub_1002722F0();
}

id sub_10026D780()
{
  sub_1002729C0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_100009180(__dst) == 1)
  {
    return 0;
  }

  v34 = __dst[2];
  v0 = __dst[3];
  v32 = __dst[0];
  v33 = __dst[4];
  v1 = __dst[5];
  v41 = __dst[7];
  v42 = __dst[1];
  v2 = LOBYTE(__dst[8]);
  v49 = BYTE1(__dst[8]);
  v3 = BYTE2(__dst[8]);
  v48 = BYTE3(__dst[8]);
  v39 = __dst[10];
  v40 = __dst[9];
  v30 = __dst[11];
  v31 = __dst[6];
  v38 = __dst[12];
  memcpy(v47, &__dst[13], sizeof(v47));
  memcpy(v46, &__dst[27], sizeof(v46));
  v4 = LOBYTE(__dst[43]);
  v28 = __dst[44];
  v29 = __dst[41];
  v36 = __dst[45];
  v37 = __dst[42];
  v35 = __dst[47];
  v5 = LOBYTE(__dst[48]);
  v27 = __dst[46];
  v6 = __dst[50];
  v7 = sub_10026CB30();
  if (!v8)
  {
    sub_1001B2DDC(__src, &qword_1003B8878);
    return 0;
  }

  v9 = v8;
  v26 = v7;
  memcpy(v50, v47, sizeof(v50));
  if ((v50[1] & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v50[1]) & 0xFLL;
  }

  else
  {
    v10 = v50[0] & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    sub_1001A7B44(0, &qword_1003B61A0);
    sub_10027552C(v50, v51);
    v25 = sub_100273C30(v50);
  }

  else
  {
    v25 = 0;
  }

  memcpy(v51, v46, 0x70uLL);
  if ((v51[1] & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v51[1]) & 0xFLL;
  }

  else
  {
    v12 = v51[0] & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    sub_1001A7B44(0, &qword_1003B61A0);
    sub_10027552C(v51, v43);
    v24 = sub_100273C30(v51);
  }

  else
  {
    v24 = 0;
  }

  if (v2 == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = Bool.asNSNumber.getter();
  }

  if (v3 == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = Bool.asNSNumber.getter();
  }

  if (v4 == 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = Bool.asNSNumber.getter();
  }

  if (v5 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = Bool.asNSNumber.getter();
  }

  v15 = v1;
  v16 = v0;
  if (v6)
  {
    v17 = 0;
  }

  else
  {
    v17 = Int.asNSNumber.getter();
  }

  v18 = v49;
  v19 = v48;
  sub_100273E0C();
  v20 = objc_allocWithZone(GKAppMetadata);
  v11 = sub_100274608(v32, v42, v26, v9, v34, v16, v33, v15, v31, v41, v25, v24, v23, v18, v22, v19, v40, v39, v30, v38, v29, v37, v13, v28, v36, v27, v35, v14, v17);
  sub_1001B2DDC(__src, &qword_1003B8878);
  return v11;
}

void AppMetadataCache.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10023332C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  inserted = type metadata accessor for AppMetadataCache.InsertRequest(0);
  sub_100005780();
  __chkstk_darwin(v26);
  sub_1000043B4();
  v29 = v28 - v27;
  v30 = type metadata accessor for Logger();
  sub_1000043C4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_1000043B4();
  sub_100006404();
  static GKLog.cache.getter();
  v56 = v24;
  sub_10027497C(v24, v29, type metadata accessor for AppMetadataCache.InsertRequest);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    a10 = v37;
    *v36 = 136315138;
    v54 = inserted;
    sub_1001A7B44(0, &qword_1003B5F50);
    v38 = Array.description.getter();
    v53 = v30;
    v40 = v39;
    sub_1002769B4();
    v41 = sub_100005C3C(v38, v40, &a10);

    *(v36 + 4) = v41;
    inserted = v54;
    _os_log_impl(&_mh_execute_header, v34, v35, "Inserting valid metadatas: %s", v36, 0xCu);
    sub_100005BE0(v37);
    sub_1000043D8();
    sub_1000043D8();

    (*(v32 + 8))(v20, v53);
  }

  else
  {

    sub_1002769B4();
    v42 = sub_100276AE0();
    v44(v42, v43);
  }

  v55 = *v56;
  v45 = sub_1001E6E2C(*v56);
  if (!v45)
  {
LABEL_11:
    type metadata accessor for AppMetadataCache();
    sub_100004624();
    sub_10026F1A4(v52);
    sub_100269014();
    ModelActor.modelContext.getter();
    dispatch thunk of ModelContext.save()();

    sub_1002333A4();
    return;
  }

  v46 = v45;
  if (v45 >= 1)
  {
    v47 = 0;
    v48 = *(inserted + 20);
    v49 = *(v56 + *(inserted + 24));
    do
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(v55 + 8 * v47 + 32);
      }

      v51 = v50;
      ++v47;
      type metadata accessor for AppMetadataCache();
      sub_100004624();
      sub_10026F1A4(&unk_1003B8520);
      sub_1001B2FE0();
      ModelActor.modelContext.getter();
      sub_10026DF40(v56 + v48, v49);
      type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
      sub_1002767EC();
      sub_10026F1A4(&qword_1003B55A0);
      dispatch thunk of ModelContext.insert<A>(_:)();
    }

    while (v46 != v47);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_10026DF40(uint64_t a1, unint64_t a2)
{
  v86 = a1;
  v87 = a2;
  v3 = type metadata accessor for Date();
  v84 = *(v3 - 8);
  v85 = v3;
  __chkstk_darwin(v3);
  v88 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v2 artwork];
  v89 = 0u;
  v6 = 0;
  if (v5)
  {
    sub_1002740B8(v5, v102);
    v7 = v102[0];
    v8 = v102[1];
    v9 = v102[2];
    v10 = v102[3];
    v97 = v104;
    v98 = v103;
    v95 = v106;
    v96 = v105;
    v11 = v107;
    v12 = v108;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v97 = 0uLL;
    v98 = 0uLL;
    v95 = 0uLL;
    v96 = 0uLL;
  }

  v13 = [v2 customIconArtwork];
  if (v13)
  {
    sub_1002740B8(v13, v109);
    v14 = v109[0];
    v99 = v109[1];
    v6 = v109[2];
    v15 = v109[3];
    v89 = v110;
    v90 = v113;
    v91 = v112;
    v92 = v111;
    v93 = v115;
    v94 = v114;
  }

  else
  {
    v14 = 0;
    v99 = 0;
    v93 = 0;
    v94 = 0;
    v15 = 0;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
  }

  v16 = [v2 bundleID];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v18;
  v83 = v17;

  v19 = [v2 platform];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v21;
  v81 = v20;

  v22 = [v2 name];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v24;
  v79 = v23;

  v25 = sub_1001AC838(v2);
  v76 = v26;
  v77 = v25;
  v27 = [v2 supportsGameCenter];
  if (v27)
  {
    v28 = v27;
    v75 = [v27 BOOLValue];
  }

  else
  {
    v75 = 2;
  }

  v74 = [v2 supportsArcade];
  v29 = [v2 supportsGameController];
  if (v29)
  {
    v30 = v29;
    v73 = [v29 BOOLValue];
  }

  else
  {
    v73 = 2;
  }

  v72 = [v2 isEligibleForGamesApp];
  v71 = sub_100234A6C(v2);
  v31 = [v2 deviceFamilies];
  v69 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = sub_100234B10(v2);
  v67 = v33;
  v68 = v32;
  v34 = 0;
  if (!v8)
  {
    v7 = 0;
    v11 = 0;
    v12 = 0;
    v8 = 0xE000000000000000;
    v9 = 0;
    v10 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
  }

  if (v99)
  {
    v34 = v6;
    v70 = v89;
  }

  else
  {
    v70 = 0u;
    v14 = 0;
    v93 = 0;
    v94 = 0;
    v99 = 0xE000000000000000;
    v15 = 0;
    v91 = 0u;
    v92 = 0u;
    v90 = 0u;
  }

  v35 = [v2 rawResponse];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v37;
  v66 = v36;

  v38 = [v2 isIOSBinaryMacOSCompatible];
  if (v38)
  {
    v39 = v38;
    v64 = [v38 BOOLValue];
  }

  else
  {
    v64 = 2;
  }

  v40 = sub_100234B1C(v2);
  v62 = v41;
  v63 = v40;
  v42 = sub_100234B28(v2);
  v60 = v43;
  v61 = v42;
  v44 = [v2 isGameGenre];
  if (v44)
  {
    v45 = v44;
    v59 = [v44 BOOLValue];
  }

  else
  {
    v59 = 2;
  }

  *&v89 = v8;
  v46 = [v2 ageRating];
  v47 = v46;
  v48 = v11;
  if (v46)
  {
    v49 = [v46 integerValue];
  }

  else
  {
    v49 = 0;
  }

  GKAppMetadata.gameGenres.getter();
  v51 = v50;
  v100 = v47 == 0;
  v52 = [v2 adamID];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58[1] = v54;
  v58[2] = v53;

  v55 = [v2 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v101[0] = v83;
  v101[1] = v82;
  v101[2] = v81;
  v101[3] = v80;
  v101[4] = v79;
  v101[5] = v78;
  v101[6] = v77;
  v101[7] = v76;
  LOBYTE(v101[8]) = v75;
  BYTE1(v101[8]) = v74;
  BYTE2(v101[8]) = v73;
  BYTE3(v101[8]) = v72;
  v101[9] = v71;
  v101[10] = v69;
  v101[11] = v68;
  v101[12] = v67;
  v101[13] = v7;
  v101[14] = v89;
  v101[15] = v9;
  v101[16] = v10;
  *&v101[19] = v97;
  *&v101[17] = v98;
  *&v101[23] = v95;
  *&v101[21] = v96;
  v101[25] = v48;
  v101[26] = v12;
  v101[27] = v14;
  v101[28] = v99;
  v101[29] = v34;
  v101[30] = v15;
  *&v101[33] = v92;
  *&v101[31] = v70;
  *&v101[35] = v91;
  *&v101[37] = v90;
  v101[39] = v94;
  v101[40] = v93;
  v101[41] = v66;
  v101[42] = v65;
  LOBYTE(v101[43]) = v64;
  v101[44] = v63;
  v101[45] = v62;
  v101[46] = v61;
  v101[47] = v60;
  LOBYTE(v101[48]) = v59;
  v101[49] = v49;
  LOBYTE(v101[50]) = v100;
  v101[51] = v51;
  AppMetadataNetworkFetcher.init(batchTask:)(v101);
  memcpy(v116, v101, sizeof(v116));
  (*(v84 + 16))(v88, v86, v85);
  sub_10026D5A8(v87);
  type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
  v56 = swift_allocObject();
  sub_100272D54();
  return v56;
}

void AppMetadataCache.insertInvalid(_:)()
{
  sub_10023332C();
  v2 = v1;
  v30 = type metadata accessor for Date();
  sub_1000043C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000043B4();
  v29 = v7 - v6;
  inserted = type metadata accessor for AppMetadataCache.InsertInvalidRequest(0);
  sub_100005780();
  __chkstk_darwin(v8);
  sub_1000043B4();
  v11 = v10 - v9;
  v34 = type metadata accessor for Logger();
  sub_1000043C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000043B4();
  sub_100006404();
  static GKLog.cache.getter();
  sub_10027497C(v2, v11, type metadata accessor for AppMetadataCache.InsertInvalidRequest);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v33 = v2;
  v36 = v4;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136315138;
    v31 = Array.description.getter();
    v20 = v19;
    sub_100005590();
    v21 = sub_100005C3C(v31, v20, v40);
    v2 = v33;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Inserting invalid adamIDs: %s", v17, 0xCu);
    sub_100005BE0(v18);
    sub_1000043D8();
    sub_1000043D8();
  }

  else
  {

    sub_100005590();
  }

  (*(v13 + 8))(v0, v34);
  v22 = 0;
  v28 = (v36 + 16);
  v35 = *(*v2 + 16);
  v32 = *v2;
  for (i = *v2 + 40; ; i += 16)
  {
    if (v35 == v22)
    {
      type metadata accessor for AppMetadataCache();
      sub_100004624();
      sub_10026F1A4(v26);
      sub_1001B2FE0();
      ModelActor.modelContext.getter();
      dispatch thunk of ModelContext.save()();

      sub_1002333A4();
      return;
    }

    if (v22 >= *(v32 + 16))
    {
      break;
    }

    v37 = v22;
    if (*(v33 + *(inserted + 28)) > 1uLL)
    {
      goto LABEL_13;
    }

    sub_100274A34(v39);
    memcpy(v40, v39, 0x1A0uLL);
    v24 = *(inserted + 24);
    v25 = qword_1003B5540;

    if (v25 != -1)
    {
      sub_100276884();
      swift_once();
    }

    (*v28)(v29, v33 + v24, v30);
    type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
    sub_100276A6C();
    swift_allocObject();
    sub_100273030();
    type metadata accessor for AppMetadataCache();
    sub_100004624();
    sub_10026F1A4(&unk_1003B8520);
    sub_1001B2FE0();
    ModelActor.modelContext.getter();
    sub_1002767EC();
    sub_10026F1A4(&qword_1003B55A0);
    dispatch thunk of ModelContext.insert<A>(_:)();

    v22 = v37 + 1;
  }

  __break(1u);
LABEL_13:
  v39[0] = 0;
  v39[1] = 0xE000000000000000;

  _StringGuts.grow(_:)(39);
  v27._object = 0x800000010030A3F0;
  v27._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v27);
  type metadata accessor for GKAppMetadataEnvironment(0);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AppMetadataCache.deleteAll()()
{
  v1[2] = v0;
  v2 = sub_1001A6C04(&qword_1003B8508);
  sub_100006A0C(v2);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for AppMetadataCache();
  sub_100004624();
  sub_10026F1A4(v3);
  sub_100269014();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026EBE0, v5, v4);
}

uint64_t sub_10026EBE0()
{
  sub_100004624();
  sub_10026F1A4(v1);
  sub_1001D1B80();
  ModelActor.modelContext.getter();
  if (qword_1003B5540 != -1)
  {
    sub_100276884();
    swift_once();
  }

  v2 = *(v0 + 24);
  type metadata accessor for AppMetadataSchemaV1.AppMetadata(0);
  v3 = sub_1001A6C04(&qword_1003B8518);
  sub_1001A9674(v2, 1, 1, v3);
  sub_1002767EC();
  sub_10026F1A4(v4);
  dispatch thunk of ModelContext.delete<A>(model:where:includeSubclasses:)();
  sub_1001B2DDC(v2, &qword_1003B8508);

  ModelActor.modelContext.getter();
  dispatch thunk of ModelContext.save()();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10026EE10(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10026EEB8;

  return AppMetadataCache.deleteAll()();
}

uint64_t sub_10026EEB8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

id AppMetadataCache.__allocating_init(modelContainer:)(uint64_t a1)
{
  sub_1001F7388();
  swift_allocObject();
  return AppMetadataCache.init(modelContainer:)(a1);
}

id AppMetadataCache.init(modelContainer:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ModelContext();
  sub_100276A6C();
  swift_allocObject();

  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  sub_100276A6C();
  swift_allocObject();
  sub_1001B2FE0();
  v4 = DefaultSerialModelExecutor.init(modelContext:)();
  v5 = sub_10026F1A4(&unk_1003B6C70);
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = a1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppMetadataCache();
  return objc_msgSendSuper2(&v7, "init");
}

unint64_t sub_10026F1A4(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    v4(v3);
    sub_1001B2FE0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t AppMetadataCache.__deallocating_deinit()
{
  InstallMetadataCache.deinit();
  sub_1001F7388();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10026F254()
{
  v0 = type metadata accessor for AppMetadataCache();
  v1 = sub_10026F1A4(&unk_1003B8520);

  return ModelActor.unownedExecutor.getter(v0, v1);
}

uint64_t sub_10026F30C()
{
  sub_1001A6C04(&qword_1003B6DB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002C33A0;
  v1 = sub_10027529C();
  *(v0 + 32) = &type metadata for AppMetadataSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_10026F370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786F62646E6173 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10026F440(char a1)
{
  if (a1)
  {
    return 0x786F62646E6173;
  }

  else
  {
    return 0x69746375646F7270;
  }
}

void sub_10026F488()
{
  sub_10023332C();
  v21 = v2;
  sub_1001A6C04(&qword_1003B8860);
  sub_1000043C4();
  v19 = v4;
  v20 = v3;
  sub_100006AB0();
  __chkstk_darwin(v5);
  sub_100006C10();
  v18 = sub_1001A6C04(&qword_1003B8868);
  sub_1000043C4();
  v7 = v6;
  sub_100006AB0();
  __chkstk_darwin(v8);
  sub_1002769DC();
  v9 = sub_1001A6C04(&qword_1003B8870);
  sub_1000043C4();
  v11 = v10;
  sub_100006AB0();
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  v15 = sub_100276AE0();
  sub_100006454(v15, v16);
  sub_1002755B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v11 + 8);
  if (v21)
  {
    sub_1002756D0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v0, v20);
  }

  else
  {
    sub_100275724();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v1, v18);
  }

  (*v17)(v14, v9);
  sub_1002333A4();
}

void sub_10026F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10023332C();
  a22 = v26;
  a23 = v27;
  v67 = v23;
  v29 = v28;
  v66 = sub_1001A6C04(&qword_1003B8828);
  sub_1000043C4();
  v64 = v30;
  sub_100006AB0();
  __chkstk_darwin(v31);
  v33 = &v60 - v32;
  v34 = sub_1001A6C04(&qword_1003B8830);
  sub_1000043C4();
  v63 = v35;
  sub_100006AB0();
  __chkstk_darwin(v36);
  sub_1002769DC();
  v37 = sub_1001A6C04(&qword_1003B8838);
  sub_1000043C4();
  v65 = v38;
  sub_100006AB0();
  __chkstk_darwin(v39);
  sub_100006C10();
  v40 = sub_100276960();
  sub_100006454(v40, v41);
  sub_1002755B8();
  v42 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v42)
  {
    goto LABEL_8;
  }

  v61 = v34;
  v62 = v25;
  v67 = v29;
  v43 = v66;
  v44 = KeyedDecodingContainer.allKeys.getter();
  v48 = sub_10027560C(v44, 0);
  if (v46 == v47 >> 1)
  {
LABEL_7:
    v54 = type metadata accessor for DecodingError();
    sub_100276AA8();
    swift_allocError();
    v56 = v55;
    sub_1001A6C04(&qword_1003B8848);
    *v56 = &type metadata for AppMetadataSchemaV1.AppMetadata.Environment;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, enum case for DecodingError.typeMismatch(_:), v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v24, v37);
    v29 = v67;
LABEL_8:
    sub_100005BE0(v29);
LABEL_9:
    sub_1002333A4();
    return;
  }

  v60 = 0;
  if (v46 < (v47 >> 1))
  {
    v49 = *(v45 + v46);
    sub_100275654(v46 + 1, v47 >> 1, v48, v45, v46, v47);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      if (v49)
      {
        LODWORD(v63) = v49;
        a13 = 1;
        sub_1002756D0();
        sub_100006BB0(&type metadata for AppMetadataSchemaV1.AppMetadata.Environment.SandboxCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v64 + 8))(v33, v43);
      }

      else
      {
        a12 = 0;
        sub_100275724();
        v57 = v62;
        sub_100006BB0(&type metadata for AppMetadataSchemaV1.AppMetadata.Environment.ProductionCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v63 + 8))(v57, v61);
      }

      v58 = sub_1002769EC();
      v59(v58);
      sub_100005BE0(v67);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_10026FB4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10026FDB4(char a1)
{
  result = 0x6574616C706D6574;
  switch(a1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 0x6F6C6F4374786574;
      break;
    case 4:
      result = 0x6F6C6F4374786574;
      break;
    case 5:
      result = 0x6F6C6F4374786574;
      break;
    case 6:
      result = 0x6F6C6F4374786574;
      break;
    case 7:
      result = 0x756F72676B636162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10026FEC0()
{
  v1 = sub_1001A6C04(&qword_1003B8990);
  sub_1000043C4();
  v3 = v2;
  sub_100006AB0();
  __chkstk_darwin(v4);
  v6 = &v10[-v5];
  v7 = sub_100276AE0();
  sub_100006454(v7, v8);
  sub_100276508();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_10027690C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    sub_10027690C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[11] = 4;
    sub_10027690C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[10] = 5;
    sub_10027690C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[9] = 6;
    sub_10027690C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[8] = 7;
    sub_10027690C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v3 + 8))(v6, v1);
}

void *sub_1002700D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = sub_1001A6C04(&qword_1003B8980);
  sub_1000043C4();
  v8 = v7;
  sub_100006AB0();
  __chkstk_darwin(v9);
  sub_1002769DC();
  v10 = sub_100276A90();
  sub_100006454(v10, v11);
  sub_100276508();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005BE0(a1);
  }

  LOBYTE(v36[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  sub_10000620C(1);
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  sub_10000620C(2);
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  sub_10000620C(3);
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v34 = v19;
  sub_10000620C(4);
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v20;
  sub_10000620C(5);
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v21;
  sub_10000620C(6);
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v22;
  v37 = 7;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v24;
  (*(v8 + 8))(v3, v6);
  __src[0] = v12;
  __src[1] = v14;
  __src[2] = v16;
  __src[3] = v18;
  __src[4] = v30;
  __src[5] = v34;
  __src[6] = v29;
  __src[7] = v33;
  __src[8] = v28;
  __src[9] = v32;
  __src[10] = v27;
  __src[11] = v31;
  __src[12] = v23;
  __src[13] = v26;
  sub_10027552C(__src, v36);
  sub_100005BE0(a1);
  v36[0] = v12;
  v36[1] = v14;
  v36[2] = v16;
  v36[3] = v18;
  v36[4] = v30;
  v36[5] = v34;
  v36[6] = v29;
  v36[7] = v33;
  v36[8] = v28;
  v36[9] = v32;
  v36[10] = v27;
  v36[11] = v31;
  v36[12] = v23;
  v36[13] = v26;
  sub_100275344(v36);
  return memcpy(a2, __src, 0x70uLL);
}

uint64_t sub_10027056C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000010030E560 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7374726F70707573 && a2 == 0xEE00656461637241;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001003091D0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x8000000100309150 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001BLL && 0x8000000100309130 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x800000010030E580 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x8000000100309170 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x777472416E6F6369 && a2 == 0xEB000000006B726FLL;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x8000000100309210 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6F70736552776172 && a2 == 0xEB0000000065736ELL;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001ALL && 0x8000000100309190 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x70736944656D6167 && a2 == 0xEF656D614E79616CLL;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000011 && 0x80000001003091B0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6547656D61477369 && a2 == 0xEB0000000065726ELL;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6E69746152656761 && a2 == 0xE900000000000067;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x726E6547656D6167 && a2 == 0xEA00000000007365)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100270B84(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x6D726F6674616C70;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6D614E74726F6873;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x7374726F70707573;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x777472416E6F6369;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6F70736552776172;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0x70736944656D6167;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x6547656D61477369;
      break;
    case 18:
      result = 0x6E69746152656761;
      break;
    case 19:
      result = 0x726E6547656D6167;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100270DF0()
{
  sub_10023332C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1001A6C04(&qword_1003B8808);
  sub_1000043C4();
  v8 = v7;
  sub_100006AB0();
  __chkstk_darwin(v9);
  sub_100006C10();
  sub_100006454(v5, v5[3]);
  sub_1002752F0();
  sub_100276A9C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13[0]) = 0;
  sub_1002768D4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_1002768D4();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1002768D4();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13[0]) = 3;
    sub_1002768D4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1002768E4(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1002768E4(5);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1002768E4(6);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1002768E4(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[0] = v3[9];
    v12[0] = 8;
    sub_1001A6C04(&qword_1003B8330);
    sub_1002754C8(&unk_1003B7B80);
    sub_100276A9C();
    sub_10027691C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13[0] = v3[10];
    v12[0] = 9;
    sub_100276A9C();
    sub_10027691C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13[0]) = 10;
    sub_1002768D4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    memcpy(v15, v3 + 13, 0x70uLL);
    memcpy(v13, v3 + 13, sizeof(v13));
    v12[119] = 11;
    sub_10027552C(v15, v12);
    sub_100275564();
    sub_10027691C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v12, v13, 0x70uLL);
    sub_100275344(v12);
    memcpy(v14, v3 + 27, sizeof(v14));
    memcpy(v11, v3 + 27, sizeof(v11));
    v10[119] = 12;
    sub_10027552C(v14, v10);
    sub_10027691C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v10, v11, 0x70uLL);
    sub_100275344(v10);
    sub_1002768D4();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10027691C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1002768D4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1002768D4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10027691C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1002768D4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1001A6C04(&qword_1003B87F0);
    sub_1002753C8(&unk_1003B8818);
    sub_10027691C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v8 + 8))(v2, v6);
  sub_1002333A4();
}

void sub_1002712F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_10023332C();
  v12 = v11;
  v14 = v13;
  sub_1001A6C04(&qword_1003B87D8);
  sub_1000043C4();
  sub_100006AB0();
  __chkstk_darwin(v15);
  sub_100276A3C();
  v16 = v12[4];
  v54 = v12;
  sub_100006454(v12, v12[3]);
  sub_1002752F0();
  sub_100276A9C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_1002768B0();
    sub_100005BE0(v12);
    if (v16)
    {

      if ((v55 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v55)
    {
LABEL_5:
      if (v57)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    if (v57)
    {
LABEL_6:
      memcpy(v62, v88, 0x70uLL);
      sub_100275344(v62);
      if ((v59 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!v59)
    {
LABEL_7:
      if (!a10)
      {
        goto LABEL_13;
      }

LABEL_8:

      goto LABEL_13;
    }

LABEL_12:
    memcpy(v62, v87, 0x70uLL);
    sub_100275344(v62);
    if ((a10 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v89 = v14;
  v62[0] = 0;
  sub_100276928();
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v53 = v18;
  sub_100004950(1);
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v52 = v20;
  sub_100004950(2);
  v60 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = v21;
  sub_100004950(3);
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = v22;
  sub_100004950(4);
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100004950(5);
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100004950(6);
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100004950(7);
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1001A6C04(&qword_1003B8330);
  sub_1002754C8(&unk_1003B8370);
  sub_100276928();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = *v62;
  LOBYTE(v61[0]) = 9;
  sub_100276928();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = *v62;
  sub_100004950(10);
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v23;
  v81[119] = 11;
  sub_100275374();
  sub_100276928();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(v88, v82, sizeof(v88));
  v80 = 12;
  sub_100276928();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(v87, v81, sizeof(v87));
  sub_100004950(13);
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v24;
  sub_100004950(14);
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100004950(15);
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v25;
  sub_100004950(16);
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v26;
  sub_100004950(17);
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100004950(18);
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v84 = v27 & 1;
  sub_1001A6C04(&qword_1003B87F0);
  v78 = 19;
  sub_1002753C8(&unk_1003B87F8);
  sub_100276928();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v42 & 1;
  v32 = v42 & 1;
  v40 &= 1u;
  v29 = sub_1002768C4();
  v30(v29);
  v43 = v79;
  v61[0] = v17;
  v61[1] = v53;
  v61[2] = v19;
  v61[3] = v52;
  v61[4] = v60;
  v61[5] = v51;
  v61[6] = v58;
  v61[7] = v50;
  LOBYTE(v61[8]) = v56;
  BYTE1(v61[8]) = v28;
  BYTE2(v61[8]) = v41;
  BYTE3(v61[8]) = v40;
  v61[9] = v49;
  v61[10] = v48;
  v61[11] = v39;
  v61[12] = v47;
  memcpy(&v61[13], v88, 0x70uLL);
  memcpy(&v61[27], v87, 0x70uLL);
  v61[41] = v38;
  v61[42] = v46;
  LOBYTE(v61[43]) = v37;
  *(&v61[43] + 1) = *v86;
  HIDWORD(v61[43]) = *&v86[3];
  v61[44] = v36;
  v61[45] = v45;
  v61[46] = v35;
  v61[47] = v44;
  LOBYTE(v61[48]) = v34;
  *(&v61[48] + 1) = *v85;
  HIDWORD(v61[48]) = *&v85[3];
  v61[49] = v33;
  v31 = v84;
  LOBYTE(v61[50]) = v84;
  *(&v61[50] + 1) = *v83;
  HIDWORD(v61[50]) = *&v83[3];
  v61[51] = v79;
  sub_100275460(v61, v62);
  sub_100005BE0(v54);
  *v62 = v17;
  *&v62[8] = v53;
  *&v62[16] = v19;
  *&v62[24] = v52;
  *&v62[32] = v60;
  *&v62[40] = v51;
  *&v62[48] = v58;
  *&v62[56] = v50;
  v62[64] = v56;
  v62[65] = v32;
  v62[66] = v41;
  v62[67] = v40;
  *&v62[72] = v49;
  *&v62[80] = v48;
  *&v62[88] = v39;
  *&v62[96] = v47;
  memcpy(&v62[104], v88, 0x70uLL);
  memcpy(v63, v87, sizeof(v63));
  v64 = v38;
  v65 = v46;
  v66 = v37;
  *v67 = *v86;
  *&v67[3] = *&v86[3];
  v68 = v36;
  v69 = v45;
  v70 = v35;
  v71 = v44;
  v72 = v34;
  *v73 = *v85;
  *&v73[3] = *&v85[3];
  v74 = v33;
  v75 = v31;
  *v76 = *v83;
  *&v76[3] = *&v83[3];
  v77 = v43;
  sub_100275498(v62);
  memcpy(v89, v61, 0x1A0uLL);
LABEL_13:
  sub_1002333A4();
}

uint64_t sub_100271CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10026F370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100271D20(uint64_t a1)
{
  v2 = sub_1002755B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100271D5C(uint64_t a1)
{
  v2 = sub_1002755B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100271D9C(uint64_t a1)
{
  v2 = sub_100275724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100271DD8(uint64_t a1)
{
  v2 = sub_100275724();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100271E14(uint64_t a1)
{
  v2 = sub_1002756D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100271E50(uint64_t a1)
{
  v2 = sub_1002756D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100271EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10026FB4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100271F08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10026FDAC();
  *a1 = result;
  return result;
}

uint64_t sub_100271F30(uint64_t a1)
{
  v2 = sub_100276508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100271F6C(uint64_t a1)
{
  v2 = sub_100276508();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100271FA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1002700D0(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_100272014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10027056C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10027203C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100270B7C();
  *a1 = result;
  return result;
}

uint64_t sub_100272064(uint64_t a1)
{
  v2 = sub_1002752F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002720A0(uint64_t a1)
{
  v2 = sub_1002752F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002720DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1002712F0(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x1A0uLL);
  }
}

uint64_t sub_100272160@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_100006454(a1, a1[3]);
  swift_getKeyPath();
  sub_1001A6C04(&qword_1003B5D10);
  sub_10023E768();
  sub_100275AD4(v3);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *a2 = 0;
  return result;
}

uint64_t sub_100272234()
{
  swift_getKeyPath();
  sub_1002767EC();
  sub_10026F1A4(v0);
  sub_10023E768();
  sub_100275AD4(v1);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_1002722F0()
{
  swift_getKeyPath();
  sub_100005BB8();
  sub_10026F1A4(v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100276804();
  sub_10026F1A4(v1);
  sub_100275A58();
  PersistentModel.getValue<A>(forKey:)();

  return v3;
}

uint64_t sub_1002723DC()
{
  swift_getKeyPath();
  sub_1002767EC();
  sub_10026F1A4(v0);
  sub_100276934();
}

uint64_t sub_100272484()
{
  swift_getKeyPath();
  sub_10026F1A4(&unk_1003B55A0);
  sub_100275A04();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t sub_100272538()
{
  swift_getKeyPath();
  sub_100276984();
  sub_10026F1A4(v0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100276804();
  sub_10026F1A4(v1);
  sub_100276898();
  sub_10026F1A4(v2);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t sub_100272648(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_100272714(v4);
}

uint64_t sub_100272714(uint64_t a1)
{
  swift_getKeyPath();
  sub_1002767EC();
  sub_10026F1A4(v2);
  sub_100276934();

  type metadata accessor for Date();
  sub_100005780();
  return (*(v3 + 8))(a1);
}

uint64_t sub_1002727E4()
{
  swift_getKeyPath();
  sub_10026F1A4(&qword_1003B55A0);
  sub_10026F1A4(&qword_1003B6B80);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_1002728C4()
{
  sub_10000469C();
  v1 = v0;
  v3 = v2;
  sub_100006454(v4, v4[3]);
  swift_getKeyPath();
  memcpy(v5, v1, sizeof(v5));
  sub_1001A6C04(&qword_1003B8878);
  sub_100275904(&unk_1003B8880);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  sub_1001B2DDC(v1, &qword_1003B8878);
  *v3 = 0;
  sub_1000057D8();
}

void *sub_1002729C0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_100276984();
  sub_10026F1A4(v2);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100276804();
  sub_10026F1A4(v3);
  sub_100275904(&unk_1003B8890);
  PersistentModel.getValue<A>(forKey:)();

  memcpy(__dst, v5, sizeof(__dst));
  return memcpy(a1, __dst, 0x1A0uLL);
}

uint64_t sub_100272B50(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_100275824(__dst, &v2);
  return sub_100272BA8(__dst);
}

uint64_t sub_100272BA8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1002767EC();
  sub_10026F1A4(v2);
  sub_100276934();
  sub_1001B2DDC(a1, &qword_1003B8878);
}

uint64_t sub_100272C60(uint64_t a1, const void *a2)
{
  swift_getKeyPath();
  memcpy(v4, a2, sizeof(v4));
  sub_10026F1A4(&qword_1003B55A0);
  sub_100275904(&unk_1003B8880);
  PersistentModel.setValue<A>(forKey:to:)();
}

void sub_100272D54()
{
  sub_10000469C();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Date();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v10 = v9 - v8;
  *(v0 + 48) = sub_1001A6C04(&qword_1003B5598);
  sub_1002767EC();
  sub_10026F1A4(v11);
  sub_10027686C();
  *(v0 + 56) = swift_getOpaqueTypeConformance2();
  sub_100005668((v0 + 24));
  sub_100276A5C();
  static PersistentModel.createBackingData<A>()();
  *(v0 + 16) = 257;
  *(v0 + 18) = 1;
  ObservationRegistrar.init()();
  sub_100272160((v1 + 24), (v1 + 16));
  sub_100272160((v1 + 24), (v1 + 17));
  sub_1002728C4();
  (*(v6 + 16))(v10, v3, v4);
  sub_100006454((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_100276898();
  sub_10026F1A4(v12);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v13 = *(v6 + 8);
  v13(v10, v4);
  sub_100006454((v1 + 24), *(v1 + 48));
  swift_getKeyPath();
  sub_100275A04();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v13(v3, v4);
  sub_1000057D8();
}

void sub_100273030()
{
  sub_10000469C();
  v16 = v1;
  v3 = v2;
  v4 = type metadata accessor for Date();
  sub_1000043C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000043B4();
  v10 = v9 - v8;
  *(v0 + 48) = sub_1001A6C04(&qword_1003B5598);
  sub_1002767EC();
  sub_10026F1A4(v11);
  sub_10027686C();
  *(v0 + 56) = swift_getOpaqueTypeConformance2();
  sub_100005668((v0 + 24));
  sub_100276A5C();
  static PersistentModel.createBackingData<A>()();
  *(v0 + 16) = 257;
  *(v0 + 18) = 1;
  ObservationRegistrar.init()();
  if (v3)
  {
    v12 = (v0 + 24);
    v13 = (v0 + 16);
  }

  else
  {
    v13 = (v0 + 17);
    v12 = (v0 + 24);
  }

  sub_100272160(v12, v13);
  sub_1002728C4();
  (*(v6 + 16))(v10, v16, v4);
  sub_100006454((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  sub_100276898();
  sub_10026F1A4(v14);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v15 = *(v6 + 8);
  v15(v10, v4);
  sub_100006454((v0 + 24), *(v0 + 48));
  swift_getKeyPath();
  sub_100275A04();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v15(v16, v4);
  sub_1000057D8();
}

uint64_t AppMetadataSchemaV1.AppMetadata.persistentBackingData.setter(__int128 *a1)
{
  sub_1001F75EC();
  sub_100005BE0(v1 + 24);
  sub_10005671C(a1, v1 + 24);
  return swift_endAccess();
}

void (*AppMetadataSchemaV1.AppMetadata.persistentBackingData.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10020AE7C(0x88uLL);
  *a1 = v3;
  v3[16] = v1;
  swift_beginAccess();
  sub_1001E07C4(v1 + 24, v3);
  return sub_1002733DC;
}

void sub_1002733DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1001E07C4(*a1, v2 + 40);
    sub_1001F75EC();
    sub_100005BE0(v3 + 24);
    sub_10005671C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_100005BE0(v2);
  }

  else
  {
    sub_1001F75EC();
    sub_100005BE0(v3 + 24);
    sub_10005671C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

void static AppMetadataSchemaV1.AppMetadata.schemaMetadata.getter()
{
  sub_10000469C();
  v16 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v16 - 8);
  v1 = v0;
  __chkstk_darwin(v16);
  sub_1000043B4();
  v14 = v3 - v2;
  sub_1001A6C04(&qword_1003B6BA0);
  v4 = *(v0 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_1002C3970;
  v15 = v5;
  swift_getKeyPath();
  sub_1001A6C04(&qword_1003B7AB0);
  type metadata accessor for Schema.Attribute.Option();
  *(swift_allocObject() + 16) = xmmword_1002C33A0;
  static Schema.Attribute.Option.unique.getter();
  type metadata accessor for Schema.Attribute();
  sub_100276A6C();
  swift_allocObject();
  sub_100276A10();
  sub_10026F1A4(&unk_1003B7AB8);
  sub_100276A04();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(swift_allocObject() + 16) = xmmword_1002C33A0;
  static Schema.Attribute.Option.unique.getter();
  swift_allocObject();
  sub_100276A10();
  sub_100276A04();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_10027696C();
  sub_100276A04();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_10027696C();
  sub_100276A04();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_10027696C();
  sub_100276A04();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  sub_1001A6C04(&qword_1003B8530);
  sub_1001E43DC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002C3290;
  sub_1001A6C04(&qword_1003B6BB0);
  sub_1001F7388();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002C3960;
  *(v7 + 32) = swift_getKeyPath();
  *(v6 + 32) = v7;
  sub_1001F7388();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002C3960;
  *(v8 + 32) = swift_getKeyPath();
  *(v6 + 40) = v8;
  v9 = sub_100276960();
  sub_1001A6C04(v9);
  sub_100276A6C();
  swift_allocObject();
  sub_1001B2FE0();
  Schema.Index.init(_:)();
  sub_10023E0EC(&unk_1003B8540);
  sub_100276A04();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  sub_1001DF388();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24) >> 1)
  {
    sub_1001DF388();
    v11 = v13;
  }

  *(v11 + 16) = v12 + 1;
  (*(v1 + 32))(v11 + v15 + v12 * v4, v14, v16);
  sub_1001E7284(v11);
  sub_1000057D8();
}

uint64_t AppMetadataSchemaV1.AppMetadata.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  AppMetadataSchemaV1.AppMetadata.init(backingData:)(a1);
  return v2;
}

uint64_t AppMetadataSchemaV1.AppMetadata.init(backingData:)(__int128 *a1)
{
  *(v1 + 48) = sub_1001A6C04(&qword_1003B5598);
  sub_1002767EC();
  sub_10026F1A4(v3);
  sub_10027686C();
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_100005668((v1 + 24));
  sub_100276A5C();
  static PersistentModel.createBackingData<A>()();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  ObservationRegistrar.init()();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  sub_1001F75EC();
  sub_100005BE0(v1 + 24);
  sub_10005671C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t AppMetadataSchemaV1.AppMetadata.deinit()
{
  sub_100005BE0(v0 + 24);
  v1 = OBJC_IVAR____TtCV14GameDaemonCore19AppMetadataSchemaV111AppMetadata___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_100005780();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AppMetadataSchemaV1.AppMetadata.__deallocating_deinit()
{
  sub_100005BE0(v0 + 24);
  v1 = OBJC_IVAR____TtCV14GameDaemonCore19AppMetadataSchemaV111AppMetadata___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  sub_100005780();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

id sub_100273C30(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  v4.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  if (a1[5])
  {

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  if (a1[7])
  {

    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  if (a1[9])
  {

    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  if (a1[11])
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  if (a1[13])
  {

    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTemplateURL:v2 width:v3.super.super.isa height:v4.super.super.isa textColor1:v5 textColor2:v6 textColor3:v7 textColor4:v8 backgroundColor:v9];

  sub_100275344(a1);
  return v10;
}

void *sub_100273E0C()
{
  v0 = type metadata accessor for GameGenre();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002729C0(v23);
  v4 = v24;
  memcpy(v25, v23, sizeof(v25));
  v26 = v24;
  if (sub_100009180(v25) == 1)
  {
    memcpy(v21, v23, sizeof(v21));
    v22 = v4;
    sub_1001B2DDC(v21, &qword_1003B8878);
    return _swiftEmptyArrayStorage;
  }

  memcpy(v21, v23, sizeof(v21));
  v22 = v4;

  sub_1001B2DDC(v21, &qword_1003B8878);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return _swiftEmptyArrayStorage;
  }

  v20 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = *(v1 + 16);
  v6 = v1 + 16;
  v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v15 = *(v6 + 56);
  v16 = v7;
  v13[1] = v4;
  v14 = (v6 - 8);
  v17 = v0;
  v18 = v6;
  do
  {
    v16(v3, v8, v0);
    GameGenre.id.getter();
    v19 = v9;
    GameGenre.name.getter();
    GameGenre.parentId.getter();
    v10 = objc_allocWithZone(GKGameGenre);
    v11 = v17;
    sub_100274558();
    v0 = v11;
    (*v14)(v3, v11);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v8 += v15;
    --v5;
  }

  while (v5);

  return v20;
}

void sub_1002740B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 templateURL];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v6;
  v32 = v5;

  v7 = [a1 width];
  [v7 doubleValue];
  v9 = v8;

  v10 = [a1 height];
  [v10 doubleValue];
  v12 = v11;

  v13 = sub_10020ED40(a1);
  v29 = v14;
  v30 = v13;
  v28 = sub_10020ED4C(a1);
  v16 = v15;
  v17 = sub_10020ED58(a1);
  v19 = v18;
  v20 = sub_10020ED64(a1);
  v22 = v21;
  v23 = [a1 backgroundColor];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {

    v25 = 0;
    v27 = 0;
  }

  *a2 = v32;
  a2[1] = v31;
  a2[2] = v9;
  a2[3] = v12;
  a2[4] = v30;
  a2[5] = v29;
  a2[6] = v28;
  a2[7] = v16;
  a2[8] = v17;
  a2[9] = v19;
  a2[10] = v20;
  a2[11] = v22;
  a2[12] = v25;
  a2[13] = v27;
}

Swift::Int AppMetadataSchemaV1.AppMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_1002767EC();
  sub_10026F1A4(v0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void (*sub_1002742DC(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10020AE7C(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  AppMetadataSchemaV1.AppMetadata.persistentBackingData.getter(v3);
  return sub_100274340;
}

void sub_100274340(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1001E07C4(*a1, v2 + 40);
    AppMetadataSchemaV1.AppMetadata.persistentBackingData.setter((v2 + 40));
    sub_100005BE0(v2);
  }

  else
  {
    AppMetadataSchemaV1.AppMetadata.persistentBackingData.setter(*a1);
  }

  free(v2);
}

uint64_t sub_1002744D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_10026F1A4(&qword_1003B55A0);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

id sub_100274558()
{
  v1 = String._bridgeToObjectiveC()();

  sub_100276A90();
  v2 = String._bridgeToObjectiveC()();

  sub_1001D1B80();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v0 initWithGenreID:v1 name:v2 parentID:v3];

  return v4;
}

id sub_100274608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, char a14, void *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29)
{
  v40 = String._bridgeToObjectiveC()();

  v39 = String._bridgeToObjectiveC()();

  v38 = String._bridgeToObjectiveC()();

  v37 = String._bridgeToObjectiveC()();

  if (a10)
  {
    v36 = String._bridgeToObjectiveC()();
  }

  else
  {
    v36 = 0;
  }

  if (a17)
  {
    v35.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v35.super.isa = 0;
  }

  v45.super.isa = Set._bridgeToObjectiveC()().super.isa;

  if (a20)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v44 = String._bridgeToObjectiveC()();

  if (a25)
  {
    v43 = String._bridgeToObjectiveC()();
  }

  else
  {
    v43 = 0;
  }

  if (a27)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  sub_1001A7B44(0, &qword_1003B61A8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v33) = a16 & 1;
  LOBYTE(v32) = a14 & 1;
  v42 = [v41 initWithBundleID:v40 adamID:v39 platform:v38 name:v37 shortName:v36 artwork:a11 customIconArtwork:a12 supportsGameCenter:a13 supportsArcade:v32 supportsGameController:a15 isEligibleForGamesApp:v33 supportedGameCenterFeatures:v35.super.isa deviceFamilies:v45.super.isa genreDisplayName:v29 rawResponse:v44 isIOSBinaryMacOSCompatible:a23 gameDisplayName:v43 miniGamesDeepLink:v30 isGameGenre:a28 ageRating:a29 gkGameGenres:isa];

  return v42;
}

uint64_t sub_10027497C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100005780();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1002749DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100005780();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100274A3C(uint64_t a1)
{
  result = sub_10026F1A4(&unk_1003B8528);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_100274CA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100274CB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100274CF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100274D4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100274D60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100274DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100274E1C()
{
  sub_100274EB8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GKAppMetadataEnvironment(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100274EB8()
{
  if (!qword_1003B8600)
  {
    sub_1001A7B44(255, &qword_1003B5F50);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B8600);
    }
  }
}

void sub_100274F48()
{
  sub_100274FEC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GKAppMetadataEnvironment(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100274FEC()
{
  if (!qword_1003B86A0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B86A0);
    }
  }
}

uint64_t sub_100275054()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100275128(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 416))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100275168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100275248()
{
  result = qword_1003B87C8;
  if (!qword_1003B87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B87C8);
  }

  return result;
}

unint64_t sub_10027529C()
{
  result = qword_1003B87D0;
  if (!qword_1003B87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B87D0);
  }

  return result;
}

unint64_t sub_1002752F0()
{
  result = qword_1003B87E0;
  if (!qword_1003B87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B87E0);
  }

  return result;
}

unint64_t sub_100275374()
{
  result = qword_1003B87E8;
  if (!qword_1003B87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B87E8);
  }

  return result;
}

unint64_t sub_1002753C8(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    v4 = v3;
    sub_1001A6C4C(&qword_1003B87F0);
    sub_10026F1A4(v4);
    sub_100276AB4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1002754C8(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B8330);
    sub_100276AB4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100275564()
{
  result = qword_1003B8810;
  if (!qword_1003B8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8810);
  }

  return result;
}

unint64_t sub_1002755B8()
{
  result = qword_1003B8840;
  if (!qword_1003B8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8840);
  }

  return result;
}

uint64_t sub_10027560C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100275654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1002756D0()
{
  result = qword_1003B8850;
  if (!qword_1003B8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8850);
  }

  return result;
}

unint64_t sub_100275724()
{
  result = qword_1003B8858;
  if (!qword_1003B8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8858);
  }

  return result;
}

uint64_t sub_100275778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10020F270;

  return sub_10026EE10(v2, v3);
}

uint64_t sub_100275824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B8878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002758B0()
{
  result = qword_1003B8888;
  if (!qword_1003B8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8888);
  }

  return result;
}

unint64_t sub_100275904(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    v4 = v3;
    sub_1001A6C4C(&qword_1003B8878);
    v4();
    sub_100276AB4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100275974()
{
  result = qword_1003B8898;
  if (!qword_1003B8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8898);
  }

  return result;
}

unint64_t sub_100275A04()
{
  result = qword_1003B88A0;
  if (!qword_1003B88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B88A0);
  }

  return result;
}

unint64_t sub_100275A58()
{
  result = qword_1003B88A8;
  if (!qword_1003B88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B88A8);
  }

  return result;
}

unint64_t sub_100275AD4(uint64_t a1)
{
  result = sub_10023E810(a1);
  if (!result)
  {
    sub_1001A6C4C(&qword_1003B5D10);
    sub_100276AB4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100275B7C()
{
  result = qword_1003B88E8;
  if (!qword_1003B88E8)
  {
    sub_1001A6C4C(&qword_1003B88E0);
    sub_100275C08();
    sub_100275D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B88E8);
  }

  return result;
}

unint64_t sub_100275C08()
{
  result = qword_1003B88F0;
  if (!qword_1003B88F0)
  {
    sub_1001A6C4C(&qword_1003B88C8);
    sub_100275C94();
    sub_100254100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B88F0);
  }

  return result;
}

unint64_t sub_100275C94()
{
  result = qword_1003B88F8;
  if (!qword_1003B88F8)
  {
    sub_1001A6C4C(&qword_1003B88C0);
    sub_10023E0EC(&unk_1003B8900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B88F8);
  }

  return result;
}

unint64_t sub_100275D44()
{
  result = qword_1003B8908;
  if (!qword_1003B8908)
  {
    sub_1001A6C4C(&qword_1003B88B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8908);
  }

  return result;
}

unint64_t sub_100275DC8()
{
  result = qword_1003B8920;
  if (!qword_1003B8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8920);
  }

  return result;
}

_BYTE *sub_100275E2C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppMetadataSchemaV1.AppMetadata.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppMetadataSchemaV1.AppMetadata.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100276094(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1002760D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100276144()
{
  result = qword_1003B8928;
  if (!qword_1003B8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8928);
  }

  return result;
}

unint64_t sub_10027619C()
{
  result = qword_1003B8930;
  if (!qword_1003B8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8930);
  }

  return result;
}

unint64_t sub_1002761F4()
{
  result = qword_1003B8938;
  if (!qword_1003B8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8938);
  }

  return result;
}

unint64_t sub_10027624C()
{
  result = qword_1003B8940;
  if (!qword_1003B8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8940);
  }

  return result;
}

unint64_t sub_1002762A4()
{
  result = qword_1003B8948;
  if (!qword_1003B8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8948);
  }

  return result;
}

unint64_t sub_1002762FC()
{
  result = qword_1003B8950;
  if (!qword_1003B8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8950);
  }

  return result;
}

unint64_t sub_100276354()
{
  result = qword_1003B8958;
  if (!qword_1003B8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8958);
  }

  return result;
}

unint64_t sub_1002763AC()
{
  result = qword_1003B8960;
  if (!qword_1003B8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8960);
  }

  return result;
}

unint64_t sub_100276404()
{
  result = qword_1003B8968;
  if (!qword_1003B8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8968);
  }

  return result;
}

unint64_t sub_10027645C()
{
  result = qword_1003B8970;
  if (!qword_1003B8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8970);
  }

  return result;
}

unint64_t sub_1002764B4()
{
  result = qword_1003B8978;
  if (!qword_1003B8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8978);
  }

  return result;
}

unint64_t sub_100276508()
{
  result = qword_1003B8988;
  if (!qword_1003B8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8988);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppMetadataSchemaV1.AppMetadata.Artwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppMetadataSchemaV1.AppMetadata.Artwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002766C4()
{
  result = qword_1003B8998;
  if (!qword_1003B8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B8998);
  }

  return result;
}

unint64_t sub_10027671C()
{
  result = qword_1003B89A0;
  if (!qword_1003B89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B89A0);
  }

  return result;
}

unint64_t sub_100276774()
{
  result = qword_1003B89A8;
  if (!qword_1003B89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B89A8);
  }

  return result;
}

void sub_100276854()
{
  v0[43] = 0;
  v0[44] = 0;
  v0[46] = 0;
  *(v1 - 72) = 0;
}

void sub_1002768B0()
{
  v0[43] = 0;
  v0[44] = 0;
  v0[46] = 0;
  *(v1 - 72) = 0;
}

uint64_t sub_100276934()
{

  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

double sub_10027696C()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  *(v0 - 128) = 0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t sub_1002769B4()
{

  return sub_1002749DC(v0, type metadata accessor for AppMetadataCache.InsertRequest);
}

uint64_t sub_100276A10()
{

  return Schema.Attribute.init(_:originalName:hashModifier:)();
}

void sub_100276A4C(int a1@<W8>)
{
  v1[43] = a1;
  v1[44] = a1;
  v1[46] = a1;
  *(v2 - 72) = a1;
}

uint64_t sub_100276A78()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_100276AF4()
{
  type metadata accessor for Logger();
  sub_1000043C4();
  v58 = v2;
  v59 = v1;
  __chkstk_darwin(v1);
  sub_1000043F0();
  v5 = v3 - v4;
  v7 = __chkstk_darwin(v6);
  v9 = &v54 - v8;
  __chkstk_darwin(v7);
  v54 = &v54 - v10;
  v11 = sub_1001A6C04(&qword_1003B5800);
  __chkstk_darwin(v11 - 8);
  sub_1000043F0();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = type metadata accessor for URL();
  sub_1000043C4();
  v57 = v19;
  __chkstk_darwin(v20);
  sub_1000043F0();
  v23 = v21 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v54 - v26;
  __chkstk_darwin(v25);
  v56 = &v54 - v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = type metadata accessor for LeaderboardChallengeBulletin();
  v60.receiver = v0;
  v60.super_class = v30;
  objc_msgSendSuper2(&v60, "handleAction:", v29);

  v55 = objc_opt_self();
  result = [v55 defaultWorkspace];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v32 = result;
  v33 = [result applicationIsInstalled:GKGamesAppIdentifier];

  if (!v33)
  {
    URL.init(string:)();
    if (sub_1001A969C(v14, 1, v18) == 1)
    {
      return sub_1001A974C(v14, &qword_1003B5800);
    }

    v38 = v57;
    v39 = *(v57 + 32);
    v39(v23, v14, v18);
    static GKLog.daemon.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (sub_100004760(v41))
    {
      *sub_100005B50() = 0;
      sub_100278E64(&_mh_execute_header, v42, v43, "LeaderboardChallengeBulletin Notification handle action, opening games app product page");
      sub_1000043D8();
    }

    (*(v58 + 8))(v5, v59);
    v44 = v56;
    v39(v56, v23, v18);
LABEL_18:
    result = [v55 defaultWorkspace];
    if (result)
    {
      v51 = result;
      URL._bridgeToObjectiveC()(v50);
      v53 = v52;
      [v51 openURL:v52];

      return (*(v38 + 8))(v44, v18);
    }

LABEL_23:
    __break(1u);
    return result;
  }

  result = [v0 defaultAction];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100286D44(result);
  if (v34)
  {
    URL.init(string:)();

    if (sub_1001A969C(v17, 1, v18) == 1)
    {
      sub_1001A974C(v17, &qword_1003B5800);
      goto LABEL_7;
    }

    v38 = v57;
    v45 = *(v57 + 32);
    v45(v27, v17, v18);
    static GKLog.daemon.getter();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    if (sub_100004760(v47))
    {
      *sub_100005B50() = 0;
      sub_100278E64(&_mh_execute_header, v48, v49, "LeaderboardChallengeBulletin Notification handle action, deeplinking to games app");
      sub_1000043D8();
    }

    (*(v58 + 8))(v54, v59);
    v44 = v56;
    v45(v56, v27, v18);
    goto LABEL_18;
  }

LABEL_7:
  static GKLog.daemon.getter();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (sub_100004760(v36))
  {
    v37 = sub_100005B50();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v9, "LeaderboardChallengeBulletin action url is missing", v37, 2u);
    sub_1000043D8();
  }

  return (*(v58 + 8))(v9, v59);
}

uint64_t sub_1002770C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1001A6C04(&qword_1003B60F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Logger();
  sub_1000043C4();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static GKLog.daemon.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_100005B50();
    v24 = a1;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "LeaderboardChallengeBulletin loadBulletinsForPushNotification:", v19, 2u);
    a1 = v24;
    sub_1000043D8();
  }

  (*(v13 + 8))(v16, v11);
  sub_1002772F8(a1);
  v20 = type metadata accessor for TaskPriority();
  sub_1001A9674(v10, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v4;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;

  sub_1001D1C0C();
}

id sub_1002772F8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  v6 = _swiftEmptyDictionarySingleton;
  *(v5 + 16) = _swiftEmptyDictionarySingleton;
  v7 = (v5 + 16);
  v27 = 116;
  v28 = 0xE100000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, v35);
  sub_1001B2E34(v36);
  if (*&v35[24])
  {
    if (swift_dynamicCast())
    {
      swift_isUniquelyReferenced_nonNull_native();
      v36[0] = _swiftEmptyDictionarySingleton;
      sub_1001B9B34();
      v6 = v36[0];
      *v7 = v36[0];
    }
  }

  else
  {
    sub_1001A974C(v35, &qword_1003B5808);
  }

  sub_100223A5C(a1, v35);
  memcpy(v36, v35, sizeof(v36));
  if (sub_1001FBC7C(v36) != 1)
  {
    v37 = *&v36[15];
    if (v36[16])
    {
      sub_100278DCC(&v37, &v27);
      sub_1001A974C(v35, &qword_1003B6578);
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v6;
      sub_1001B9B34();
      *v7 = v27;
      goto LABEL_13;
    }

    sub_1001A974C(v35, &qword_1003B6578);
  }

  v25 = 0x676E656C6C616863;
  v26 = 0xEB00000000644965;
  AnyHashable.init<A>(_:)();
  sub_1001AFA68(a1, &v33);
  sub_1001B2E34(&v27);
  if (v34)
  {
    if (swift_dynamicCast())
    {
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v6;
      sub_1001B9B34();
      *v7 = v27;
    }
  }

  else
  {
    sub_1001A974C(&v33, &qword_1003B5808);
  }

LABEL_13:
  static GKLog.daemon.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v23[1] = v5 + 16;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    swift_beginAccess();
    v23[0] = v4;

    v13 = Dictionary.description.getter();
    v14 = v2;
    v16 = v15;

    v17 = sub_100005C3C(v13, v16, &v27);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "LeaderboardChallengeBulletin notifyClients with userInfo:%s", v11, 0xCu);
    sub_100005BE0(v12);

    (*(v24 + 8))(v23[0], v14);
  }

  else
  {

    (*(v24 + 8))(v4, v2);
  }

  v18 = objc_opt_self();
  result = [v18 gameCenterClient];
  if (result)
  {
    v20 = result;
    swift_beginAccess();

    sub_100278B14(v21, v20);

    v31 = sub_100278DAC;
    v32 = v5;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1001C292C;
    v30 = &unk_10036EF18;
    v22 = _Block_copy(&v27);

    [v18 enumerateClientsUsingBlock:v22];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002778BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_100277954;

  return sub_100277BE0();
}

uint64_t sub_100277954()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = sub_10000448C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100277A40()
{
  v1 = v0[5];
  v2 = v0[2];
  if (v1)
  {
    sub_1001A6C04(&qword_1003B5B60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002C33A0;
    *(v3 + 56) = type metadata accessor for LeaderboardChallengeBulletin();
    *(v3 + 32) = v1;
    v4 = v1;
    v2(v3);
  }

  else
  {
    v2(_swiftEmptyArrayStorage);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100277BE0()
{
  sub_100005528();
  v0[88] = v1;
  v2 = type metadata accessor for Logger();
  v0[89] = v2;
  v0[90] = *(v2 - 8);
  v0[91] = swift_task_alloc();
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();
  v3 = sub_10000448C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100277CAC()
{
  sub_100223A5C(*(v0 + 704), (v0 + 416));
  memcpy((v0 + 216), (v0 + 416), 0xC8uLL);
  if (sub_1001FBC7C(v0 + 216) == 1)
  {
    static GKLog.daemon.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    sub_1000044B4(v2);
    sub_100278E58();
    if (v3)
    {
      v4 = sub_100005B50();
      sub_100233484(v4);
      v7 = "LeaderboardChallengeBulletin parseLeaderboardChallengeBulletin failed to decode relationships";
LABEL_10:
      sub_100004894(&_mh_execute_header, v5, v6, v7);
      sub_1000043D8();
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  memcpy((v0 + 16), (v0 + 216), 0xC8uLL);
  type metadata accessor for LeaderboardChallengeBulletin();

  v9 = sub_1001F9520(v8);
  *(v0 + 752) = v9;
  if (!v9)
  {
    sub_1001A974C(v0 + 416, &qword_1003B6578);
    static GKLog.daemon.getter();
    v1 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    sub_1000044B4(v15);
    sub_100278E58();
    if (v16)
    {
      v17 = sub_100005B50();
      sub_100233484(v17);
      v7 = "LeaderboardChallengeBulletin parseLeaderboardChallengeBulletin failed to create bulletin";
      goto LABEL_10;
    }

LABEL_11:

    v18 = sub_10000595C();
    v19(v18);
    sub_100278E3C();

    v20 = sub_100006224();

    return v21(v20);
  }

  v10 = *(v0 + 32);
  *(v0 + 616) = *(v0 + 16);
  *(v0 + 632) = v10;
  v11 = *(v0 + 64);
  *(v0 + 648) = *(v0 + 48);
  *(v0 + 664) = v11;
  v12 = swift_task_alloc();
  *(v0 + 760) = v12;
  *v12 = v0;
  v12[1] = sub_100277EE8;
  v13 = *(v0 + 704);

  return (sub_1002246A8)(v13, v0 + 616);
}

uint64_t sub_100277EE8()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 768) = v3;
  *(v1 + 776) = v4;

  v5 = sub_10000448C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100277FD8()
{
  if (v0[97])
  {
    v1 = swift_task_alloc();
    v0[98] = v1;
    *v1 = v0;
    v1[1] = sub_100278170;
    v2 = v0[88];

    return sub_100224864(v2, (v0 + 77));
  }

  else
  {
    sub_1001A974C((v0 + 52), &qword_1003B6578);
    static GKLog.daemon.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    sub_1000044B4(v5);
    v6 = v0[94];
    sub_100278E58();
    if (v7)
    {
      v8 = sub_100005B50();
      sub_100233484(v8);
      sub_100004894(&_mh_execute_header, v9, v10, "LeaderboardChallengeBulletin parseLeaderboardChallengeBulletin failed to get title or message");
      sub_1000043D8();
    }

    v11 = sub_10000595C();
    v12(v11);
    sub_100278E3C();

    v13 = sub_100006224();

    return v14(v13);
  }
}

uint64_t sub_100278170()
{
  sub_100005528();
  sub_1000057F0();
  sub_100006028();
  *v2 = v1;
  v1[85] = v0;
  v1[86] = v3;
  v1[87] = v4;
  v5 = *v0;
  sub_100006028();
  *v6 = v5;
  *(v8 + 792) = v7;

  v9 = sub_10000448C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100278264()
{
  v1 = *(v0 + 792);
  if (v1)
  {
    v2 = *(v0 + 688);
    v3 = *(v0 + 776);
    v4 = *(v0 + 768);
    v5 = *(v0 + 752);
    [v5 setBulletinType:1600];
    sub_100286CE8(v4, v3, v5);
    sub_100286CF4(v2, v1, v5);
    v6 = *(v0 + 144);
    if (v6)
    {
      v7 = *(v0 + 752);
      v8 = *(v0 + 136);
      v9 = objc_allocWithZone(GKBulletinAction);

      v10 = [v9 init];
      [v10 setType:0];
      _StringGuts.grow(_:)(36);

      v11._countAndFlagsBits = v8;
      v11._object = v6;
      String.append(_:)(v11);

      sub_100278B8C(0xD000000000000022, 0x800000010030E5C0, v10);
      [v7 setDefaultAction:v10];
    }

    v12 = swift_task_alloc();
    *(v0 + 800) = v12;
    *v12 = v0;
    v12[1] = sub_100278500;

    return sub_10022F360();
  }

  else
  {
    sub_1001A974C(v0 + 416, &qword_1003B6578);

    static GKLog.daemon.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    sub_1000044B4(v15);
    v16 = *(v0 + 752);
    sub_100278E58();
    if (v17)
    {
      v18 = sub_100005B50();
      sub_100233484(v18);
      sub_100004894(&_mh_execute_header, v19, v20, "LeaderboardChallengeBulletin parseLeaderboardChallengeBulletin failed to get title or message");
      sub_1000043D8();
    }

    v21 = sub_10000595C();
    v22(v21);
    sub_100278E3C();

    v23 = sub_100006224();

    return v24(v23);
  }
}

uint64_t sub_100278500()
{
  v1 = *v0;
  v2 = *v0;
  sub_100006028();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  sub_1001A974C(v2 + 416, &qword_1003B6578);
  v5 = *(v1 + 752);

  v6 = *(v4 + 8);

  return v6(v5);
}

void sub_100278678(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v6 = sub_100005144(a1);
  if (!v7)
  {
    return;
  }

  v8 = v6;
  v9 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
LABEL_14:

    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    if (v8 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v13)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  static GKLog.daemon.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "LeaderboardChallengeBulletin notifying Moltres bulletin received", v18, 2u);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();

  sub_1001C2448(v19);
  v21 = v20;

  sub_1001CEC1C(19, v21, a1);
}

id sub_1002788DC(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LeaderboardChallengeBulletin();
  v3 = objc_msgSendSuper2(&v5, "initWithPushNotification:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1002789D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeaderboardChallengeBulletin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100278A2C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LeaderboardChallengeBulletin();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100278ABC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeaderboardChallengeBulletin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100278B14(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 onChallengeUpdateReceivedWithUserInfo:isa];
}

void sub_100278B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setInfo:v4];
}

uint64_t sub_100278BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100278CC4;

  return sub_1002778BC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100278CC4()
{
  sub_100005528();
  sub_1000057F0();
  v1 = *v0;
  sub_100006028();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100278DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100278DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A6C04(&qword_1003B89D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100278E3C()
{
}

void sub_100278E64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

id sub_100278E84()
{
  v0 = [objc_allocWithZone(GPGameLibrary) init];
  v6 = &type metadata for GKGamePolicyFeatureFlags;
  v7 = sub_10027BC90();
  v1 = v0;
  v2 = isFeatureEnabled(_:)();
  sub_100005BE0(v5);
  v3 = sub_10027B670(v1, v2 & 1);

  return v3;
}

unint64_t *sub_100278F0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_1001B16E8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001B16E8((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100005C2C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_10027900C()
{
  sub_10000469C();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10027BF4C();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
LABEL_13:
    sub_1000057D8();
    return;
  }

  v4 = sub_10027BE34();
  sub_1001B1728(v4, v5, v6);
  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_10027BEB8();
    do
    {
      if (v18)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v0 + 32);
      }

      v19[3] = sub_10027BEE0();
      v8 = sub_10027B958(&qword_1003B8A20, &qword_1003B5F88);
      sub_10027BEA4(v8);
      if (v10)
      {
        v15 = sub_10027BE18(v9);
        sub_1001B1728(v15, v16, v17);
      }

      sub_100006B04();
      sub_10027BDFC();
      __chkstk_darwin(v11);
      sub_100004820();
      v12 = sub_10027BF00();
      v13(v12);
      sub_100005998();
      sub_100005BE0(v19);
      sub_10027BECC();
    }

    while (!v14);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_100279198()
{
  sub_10000469C();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10027BF4C();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
LABEL_13:
    sub_1000057D8();
    return;
  }

  v4 = sub_10027BE34();
  sub_1001B1768(v4, v5, v6);
  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_10027BEB8();
    do
    {
      if (v18)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v0 + 32);
      }

      v19[3] = sub_10027BEE0();
      v8 = sub_10027B958(&qword_1003B5F78, &qword_1003B5F70);
      sub_10027BEA4(v8);
      if (v10)
      {
        v15 = sub_10027BE18(v9);
        sub_1001B1768(v15, v16, v17);
      }

      sub_100006B04();
      sub_10027BDFC();
      __chkstk_darwin(v11);
      sub_100004820();
      v12 = sub_10027BF00();
      v13(v12);
      sub_100005998();
      sub_100005BE0(v19);
      sub_10027BECC();
    }

    while (!v14);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_100279324()
{
  sub_10000469C();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10027BF4C();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
LABEL_13:
    sub_1000057D8();
    return;
  }

  v4 = sub_10027BE34();
  sub_1001B17A8(v4, v5, v6);
  if ((v3 & 0x8000000000000000) == 0)
  {
    sub_10027BEB8();
    do
    {
      if (v18)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v0 + 32);
      }

      v19[3] = sub_10027BEE0();
      v8 = sub_10027B958(&qword_1003B8A28, &qword_1003B6060);
      sub_10027BEA4(v8);
      if (v10)
      {
        v15 = sub_10027BE18(v9);
        sub_1001B17A8(v15, v16, v17);
      }

      sub_100006B04();
      sub_10027BDFC();
      __chkstk_darwin(v11);
      sub_100004820();
      v12 = sub_10027BF00();
      v13(v12);
      sub_100005998();
      sub_100005BE0(v19);
      sub_10027BECC();
    }

    while (!v14);
    goto LABEL_13;
  }

  __break(1u);
}