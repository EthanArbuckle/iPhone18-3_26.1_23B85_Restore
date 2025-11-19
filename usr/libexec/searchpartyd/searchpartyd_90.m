uint64_t sub_100974A8C()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 1072);
    v4 = *(v0 + 1040);
    v5 = *(v0 + 168);

    sub_10000B3A8(v0 + 160, &qword_1016AF908, &unk_1013CAD90);
    v6 = (v3 + *(v4 + 40));
    v8 = *v6;
    v7 = v6[1];

    sub_100988488(v3, type metadata accessor for SharedBeaconRecord);
    v9 = *(v0 + 2552);
  }

  else
  {
    v9 = *(v0 + 2552);
    v10 = *(v0 + 1072);
    v11 = (v10 + *(*(v0 + 1040) + 40));
    v8 = *v11;
    v7 = v11[1];

    sub_100988488(v10, type metadata accessor for SharedBeaconRecord);
    v2 = 0;
  }

  *(v0 + 2600) = 255;
  *(v0 + 2592) = v1;
  *(v0 + 2584) = v2;
  *(v0 + 2576) = v7;
  *(v0 + 2568) = v8;
  *(v0 + 2560) = v9;
  v12 = *(v0 + 1968);
  v13 = *(v0 + 1048);
  v14 = *(v0 + 1040);
  v15 = *(v0 + 1024);
  v16 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v16, v0 + 464);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if ((v17 & 1) == 0)
  {
    v24 = *(v0 + 1024);
    v18(v24, 1, 1, *(v0 + 1040));
    v25 = &unk_101698C30;
    v26 = &unk_101392630;
    v27 = v24;
LABEL_9:
    sub_10000B3A8(v27, v25, v26);
    goto LABEL_10;
  }

  v19 = *(v0 + 1064);
  v20 = *(v0 + 1040);
  v21 = *(v0 + 1024);
  v18(v21, 0, 1, v20);
  sub_100986170(v21, v19, type metadata accessor for SharedBeaconRecord);
  v22 = *(v0 + 1064);
  if (*(v19 + *(v20 + 44)) != -1 || (v23 = *(v0 + 1040), *(v22 + v23[12]) != -1) || (v52 = *(v22 + v23[16]), v52 != 4) && v52 != 1)
  {
    sub_100988488(v22, type metadata accessor for SharedBeaconRecord);
LABEL_10:
    v28 = *(v0 + 1560);
    v29 = *(v0 + 696);
    v30 = v29[3];
    v31 = v29[4];
    sub_1000035D0(v29, v30);
    (*(*(*(v31 + 8) + 8) + 32))(v30);
    goto LABEL_11;
  }

  v53 = *(v0 + 864);
  v54 = *(v0 + 1064);
  sub_1000D2A70(v22 + v23[20], v53, &unk_1016AF890, &qword_1013926D0);
  sub_100988488(v54, type metadata accessor for SharedBeaconRecord);
  v55 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  v56 = (*(*(v55 - 8) + 48))(v53, 1, v55);
  v57 = *(v0 + 1512);
  v58 = *(v0 + 1504);
  v59 = *(v0 + 1184);
  v60 = *(v0 + 864);
  if (v56 == 1)
  {
    sub_10000B3A8(v60, &unk_1016AF890, &qword_1013926D0);
    (*(v57 + 56))(v59, 1, 1, v58);
LABEL_22:
    v27 = *(v0 + 1184);
    v25 = &qword_1016980D0;
    v26 = &unk_10138F3B0;
    goto LABEL_9;
  }

  v61 = *(v55 + 20);
  v62 = *(v0 + 864);
  sub_1000D2A70(v60 + v61, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v62, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v57 + 48))(v59, 1, v58) == 1)
  {
    goto LABEL_22;
  }

  v63 = *(v0 + 1816);
  v64 = *(v0 + 1808);
  v65 = *(v0 + 1560);
  v66 = *(v0 + 1552);
  v67 = *(v0 + 1504);
  v64(v66, *(v0 + 1184), v67);
  v64(v65, v66, v67);
LABEL_11:
  v32 = *(v0 + 1544);
  v33 = *(v0 + 1512);
  v34 = *(v0 + 1504);
  v35 = *(v0 + 1176);
  v36 = *(v0 + 696);
  v37 = v36[3];
  v38 = v36[4];
  sub_1000035D0(v36, v37);
  sub_10083138C(v37, v38, v32);
  v39 = v36[3];
  v40 = v36[4];
  sub_1000035D0(v36, v39);
  (*(v40 + 200))(v39, v40);
  v41 = *(v33 + 48);
  *(v0 + 2608) = v41;
  *(v0 + 2616) = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v41(v35, 1, v34) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v42 = *(v0 + 1792);
    v43 = *(v0 + 1512);
    v44 = *(v0 + 1504);
    v45 = *(v0 + 1168);
    v46 = *(v0 + 704);
    (*(v0 + 1784))(v45, *(v0 + 1560), v44);
    v47 = *(v43 + 56);
    *(v0 + 2688) = v47;
    *(v0 + 2696) = (v43 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v47(v45, 0, 1, v44);
    v48 = sub_1009757DC;
    v49 = v46;
  }

  else
  {
    v50 = *(v0 + 1816);
    v51 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v48 = sub_100975010;
    v49 = v51;
  }

  return _swift_task_switch(v48, v49, 0);
}

uint64_t sub_100975010()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1536), v6);
  v9 = swift_allocObject();
  *(v0 + 2624) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2632) = v11;
  *v11 = v0;
  v11[1] = sub_10097516C;
  v12 = *(v0 + 1120);
  v13 = *(v0 + 1112);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1009865C0, v9, v13);
}

uint64_t sub_10097516C()
{
  v1 = *v0;
  v2 = *(*v0 + 2632);
  v3 = *(*v0 + 2624);
  v6 = *v0;

  v4 = *(v1 + 1768);

  return _swift_task_switch(sub_1009752A0, v4, 0);
}

uint64_t sub_1009752A0()
{
  v1 = *(v0 + 1120);
  if ((*(*(v0 + 832) + 48))(v1, 1, *(v0 + 824)) == 1)
  {
    v2 = *(v0 + 1840);
    (*(v0 + 1832))(*(v0 + 1536), *(v0 + 1504));
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v3 = *(v0 + 1792);
    v4 = *(v0 + 1512);
    v5 = *(v0 + 1504);
    v6 = *(v0 + 1168);
    v7 = *(v0 + 704);
    (*(v0 + 1784))(v6, *(v0 + 1560), v5);
    v8 = *(v4 + 56);
    *(v0 + 2688) = v8;
    *(v0 + 2696) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(v6, 0, 1, v5);
    v9 = sub_1009757DC;
    v10 = v7;
  }

  else
  {
    v11 = *(v0 + 704);
    sub_100986170(v1, *(v0 + 856), type metadata accessor for OwnedBeaconGroup);
    v9 = sub_100975400;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100975400()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[88];
  sub_1009863FC(v0[107], v1, type metadata accessor for OwnedBeaconGroup);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[330] = v6;
  *(v6 + 16) = v4;
  sub_100986170(v1, v6 + v5, type metadata accessor for OwnedBeaconGroup);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[331] = v8;
  v9 = sub_1000BC4D4(&qword_1016AF900, &qword_1013CAD88);
  *v8 = v0;
  v8[1] = sub_100975570;

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_1009865D8, v6, v9);
}

uint64_t sub_100975570()
{
  v1 = *(*v0 + 2648);
  v2 = *(*v0 + 2640);
  v3 = *(*v0 + 704);
  v5 = *v0;

  return _swift_task_switch(sub_10097569C, v3, 0);
}

uint64_t sub_1009756C0()
{
  v1 = *(v0 + 2656);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 856);
  v4 = *(v0 + 824);
  (*(v0 + 1832))(*(v0 + 1536), *(v0 + 1504));
  v5 = (v3 + *(v4 + 36));
  v7 = *v5;
  v6 = v5[1];

  sub_100988488(v3, type metadata accessor for OwnedBeaconGroup);
  *(v0 + 2680) = v1;
  *(v0 + 2672) = v6;
  *(v0 + 2664) = v7;
  v8 = *(v0 + 1792);
  v9 = *(v0 + 1512);
  v10 = *(v0 + 1504);
  v11 = *(v0 + 1168);
  v12 = *(v0 + 704);
  (*(v0 + 1784))(v11, *(v0 + 1560), v10);
  v13 = *(v9 + 56);
  *(v0 + 2688) = v13;
  *(v0 + 2696) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v11, 0, 1, v10);

  return _swift_task_switch(sub_1009757DC, v12, 0);
}

uint64_t sub_1009757DC()
{
  v1 = *(v0 + 704);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 2704) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_1009758C8;
  v5 = *(v0 + 704);

  return unsafeBlocking<A>(context:_:)(v0 + 632, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v5, v4);
}

uint64_t sub_1009758C8()
{
  v1 = *(*v0 + 2704);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return _swift_task_switch(sub_1009759E0, v2, 0);
}

uint64_t sub_100975A04()
{
  v1 = *(v0 + 2712);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1792);
    v3 = *(v0 + 1784);
    v4 = *(v0 + 1504);
    v5 = *(v0 + 1256);
    v6 = *(v0 + 1232);
    v7 = *(v0 + 1160);
    v8 = *(*(v0 + 1240) + 80);
    sub_1009863FC(v1 + ((v8 + 32) & ~v8), v5, type metadata accessor for OwnedBeaconRecord);

    v3(v7, v5 + *(v6 + 20), v4);
    sub_100988488(v5, type metadata accessor for OwnedBeaconRecord);
    v9 = 0;
  }

  else
  {
    v10 = *(v0 + 2712);

    v9 = 1;
  }

  v11 = *(v0 + 2696);
  v12 = *(v0 + 2616);
  v13 = *(v0 + 2608);
  v14 = *(v0 + 1504);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 816);
  v18 = *(v0 + 808);
  (*(v0 + 2688))(v16, v9, 1, v14);
  v19 = *(v18 + 48);
  sub_1000D2A70(v15, v17, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v16, v17 + v19, &qword_1016980D0, &unk_10138F3B0);
  v20 = v13(v17, 1, v14);
  v21 = *(v0 + 2616);
  v22 = *(v0 + 2608);
  v23 = *(v0 + 1504);
  if (v20 == 1)
  {
    v24 = *(v0 + 1168);
    sub_10000B3A8(*(v0 + 1160), &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v24, &qword_1016980D0, &unk_10138F3B0);
    if (v22(v17 + v19, 1, v23) == 1)
    {
      sub_10000B3A8(*(v0 + 816), &qword_1016980D0, &unk_10138F3B0);
      v25 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1000D2A70(*(v0 + 816), *(v0 + 1152), &qword_1016980D0, &unk_10138F3B0);
  v26 = v22(v17 + v19, 1, v23);
  v27 = *(v0 + 1840);
  v28 = *(v0 + 1832);
  if (v26 == 1)
  {
    v29 = *(v0 + 1504);
    v30 = *(v0 + 1168);
    v31 = *(v0 + 1152);
    sub_10000B3A8(*(v0 + 1160), &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v30, &qword_1016980D0, &unk_10138F3B0);
    v28(v31, v29);
LABEL_9:
    sub_10000B3A8(*(v0 + 816), &qword_1016AF880, &unk_10138CE20);
    v25 = 0;
    goto LABEL_11;
  }

  v32 = *(v0 + 1816);
  v33 = *(v0 + 1640);
  v34 = *(v0 + 1504);
  v35 = *(v0 + 1168);
  v36 = *(v0 + 1160);
  v37 = *(v0 + 1152);
  v54 = *(v0 + 816);
  (*(v0 + 1808))(v33, v17 + v19, v34);
  sub_100985CA0(&qword_1016984A0, &type metadata accessor for UUID);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28(v33, v34);
  sub_10000B3A8(v36, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
  v28(v37, v34);
  sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
LABEL_11:
  v38 = *(v0 + 1968);
  v39 = *(v0 + 1056);
  v40 = *(v0 + 1040);
  v41 = *(v0 + 696);
  v42 = [objc_allocWithZone(NSNumber) initWithBool:v25 & 1];
  *(v0 + 2720) = v42;
  sub_10001F280(v41, v0 + 504);
  v43 = v42;
  v44 = swift_dynamicCast();
  if (v44)
  {
    sub_100988488(*(v0 + 1056), type metadata accessor for SharedBeaconRecord);
  }

  v45 = *(v0 + 1344);
  v46 = *(v0 + 1336);
  v47 = *(v0 + 1328);
  v48 = *(v0 + 1320);
  v49 = *(v0 + 704);
  v50 = [objc_allocWithZone(NSNumber) initWithBool:v44 ^ 1u];
  *(v0 + 2728) = v50;
  v51 = *(v45 + 56);
  v51(v47, 1, 1, v46);
  v51(v48, 1, 1, v46);
  v52 = v50;

  return _swift_task_switch(sub_100975E98, v49, 0);
}

uint64_t sub_100975E98()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 704);
  v7 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  v8 = *(v0 + 1520) + v7;
  (*(v0 + 1784))(v4, *(v0 + 1560), v5);
  v9 = swift_allocObject();
  *(v0 + 2736) = v9;
  *(v9 + 16) = v6;
  v2(v9 + v7, v4, v5);
  *(v9 + v8) = 1;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2744) = v11;
  *v11 = v0;
  v11[1] = sub_100976000;
  v12 = *(v0 + 1392);
  v13 = *(v0 + 1376);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100988F24, v9, v13);
}

uint64_t sub_100976000()
{
  v1 = *(*v0 + 2744);
  v2 = *(*v0 + 2736);
  v3 = *(*v0 + 704);
  v5 = *v0;

  return _swift_task_switch(sub_10097612C, v3, 0);
}

uint64_t sub_10097612C()
{
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1376);
  *(v0 + 2857) = *v1;
  sub_10000B3A8(&v1[*(v2 + 48)], &unk_101696900, &unk_10138B1E0);
  v3 = *(v0 + 1768);

  return _swift_task_switch(sub_1009761B8, v3, 0);
}

uint64_t sub_1009761B8()
{
  v258 = v0;
  if (*(v0 + 2857) == 1)
  {
    v1 = *(v0 + 704);
    v2 = sub_1009777A0;
LABEL_17:

    return _swift_task_switch(v2, v1, 0);
  }

  *(v0 + 2858) = 0;
  v3 = (v0 + 1928);
  if (*(v0 + 2672))
  {
    v4 = *v3;

    v5 = 2664;
    v3 = (v0 + 2672);
  }

  else
  {
    v5 = 1920;
  }

  v6 = *(v0 + v5);
  *(v0 + 2776) = *v3;
  *(v0 + 2768) = v6;
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v9 = *(v0 + 1480);
  v10 = *(v0 + 1432);
  sub_1000D2A70(*(v0 + 1464), v10, &unk_1016AF8C0, &unk_1013A07A0);
  v11 = v8(v10, 1, v9);
  v12 = *(v0 + 1432);
  if (v11 == 1)
  {
    sub_10000B3A8(*(v0 + 1432), &unk_1016AF8C0, &unk_1013A07A0);
    v13 = 0;
  }

  else
  {
    v14 = *(v0 + 696);
    v15 = sub_10083B890();
    sub_100988488(v12, type metadata accessor for BeaconProductInfoRecord);
    v16 = v14[3];
    v17 = v14[4];
    sub_1000035D0(v14, v16);
    v18 = *(v17 + 184);
    v13 = v15;
    v19 = v18(v16, v17);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
    {
      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v26 = *(v0 + 2853);

    [v13 setIsAirTag:v25 & 1];
    [v13 setIsAppleAudioAccessory:v26];
  }

  *(v0 + 2784) = v13;
  v27 = *(v0 + 696);
  v28 = v27[3];
  v29 = v27[4];
  sub_1000035D0(v27, v28);
  if ((*(v29 + 112))(v28, v29))
  {
    v1 = *(v0 + 704);
    v2 = sub_1009790A0;
    goto LABEL_17;
  }

  v30 = *(v0 + 776);
  v31 = type metadata accessor for AccessoryMetadataRecord();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v30, 1, 1, v31);
  v33 = *(v0 + 752);
  sub_1000D2A70(*(v0 + 776), v33, &qword_1016AF888, &unk_1013CAD70);
  v34 = (*(v32 + 48))(v33, 1, v31);
  v35 = *(v0 + 752);
  if (v34 == 1)
  {
    sub_10000B3A8(*(v0 + 752), &qword_1016AF888, &unk_1013CAD70);
    v36 = 0;
  }

  else
  {
    v36 = sub_10109CEC0();
    sub_100988488(v35, type metadata accessor for AccessoryMetadataRecord);
  }

  *(v0 + 2808) = v36;
  v37 = *(v0 + 2560);
  v38 = *(v0 + 1776);
  v39 = *(v0 + 1560);
  v40 = *(v0 + 720);
  v41 = swift_task_alloc();
  *(v41 + 16) = v39;
  v42 = sub_1002EB5E4(sub_100986528, v41, v40);

  if (v38)
  {
    v43 = *(v0 + 1776);
    sub_10001F280(*(v0 + 696), v0 + 224);
    v44 = swift_allocObject();
    *(v0 + 2816) = v44;
    *(v44 + 16) = v43;
    sub_10000A748((v0 + 224), v44 + 24);
    *(v44 + 64) = v42;
    v45 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    swift_retain_n();
    v46 = swift_task_alloc();
    *(v0 + 2824) = v46;
    v47 = sub_1000BC4D4(&qword_1016AF8F8, &qword_1013CAD80);
    *v46 = v0;
    v46[1] = sub_10097A8FC;

    return unsafeBlocking<A>(context:_:)(v0 + 648, 0xD000000000000019, 0x80000001013CA9B0, sub_100986548, v44, v47);
  }

  else
  {
    sub_1009097B0(_swiftEmptyArrayStorage);
    v48 = *(v0 + 2616);
    v49 = *(v0 + 2608);
    v50 = *(v0 + 1560);
    v51 = *(v0 + 1504);
    v52 = *(v0 + 1144);
    v53 = *(v0 + 696);
    v54 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v54 setIdentifier:isa];

    v56 = v53[3];
    v57 = v53[4];
    sub_1000035D0(v53, v56);
    v58 = (*(v57 + 184))(v56, v57);
    [v54 setType:v58];

    v59 = v53[3];
    v60 = v53[4];
    sub_1000035D0(v53, v59);
    (*(v60 + 200))(v59, v60);
    if (v49(v52, 1, v51) == 1)
    {
      v61 = 0;
    }

    else
    {
      v62 = *(v0 + 1840);
      v63 = *(v0 + 1832);
      v64 = *(v0 + 1504);
      v65 = *(v0 + 1144);
      v61 = UUID._bridgeToObjectiveC()().super.isa;
      v63(v65, v64);
    }

    v66 = *(v0 + 2600);
    v67 = *(v0 + 2408);
    v68 = *(v0 + 2288);
    v69 = *(v0 + 2280);
    v70 = *(v0 + 2272);
    v71 = *(v0 + 1592);
    v72 = *(v0 + 2856) != 5;
    [v54 setGroupIdentifier:v61];

    [v54 setPartIdentifier:v66];
    [v54 setConnectionAllowed:v72];
    [v54 setTxPower:v67];
    v73 = UUID._bridgeToObjectiveC()().super.isa;
    [v54 setProductUUID:v73];

    [v54 setVendorId:v69];
    [v54 setProductId:v68];
    if (v70)
    {
      v74 = *(v0 + 2272);
      v75 = *(v0 + 2264);
      v76 = String._bridgeToObjectiveC()();
    }

    else
    {
      v76 = 0;
    }

    v77 = *(v0 + 2256);
    [v54 setModelName:v76];

    if (v77)
    {
      v78 = *(v0 + 2256);
      v79 = *(v0 + 2248);
      v80 = String._bridgeToObjectiveC()();
    }

    else
    {
      v80 = 0;
    }

    v81 = *(v0 + 2592);
    [v54 setManufacturerName:v80];

    if (v81)
    {
      v82 = *(v0 + 2592);
      v83 = *(v0 + 2584);
      v84 = String._bridgeToObjectiveC()();
    }

    else
    {
      v84 = 0;
    }

    v85 = *(v0 + 2784);
    v86 = *(v0 + 2208);
    v87 = *(v0 + 2192);
    v88 = *(v0 + 2854);
    v89 = *(v0 + 2853);
    [v54 setSerialNumber:v84];

    [v54 setOwner:v87];
    [v54 setAccessoryProductInfo:v85];
    [v54 setIsZeus:v88];
    [v54 setIsAppleAudioAccessory:v89];
    if (v86)
    {
      v90 = *(v0 + 2208);
      v91 = *(v0 + 2200);
      v92 = String._bridgeToObjectiveC()();
    }

    else
    {
      v92 = 0;
    }

    [v54 setDiscoveryId:v92];

    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v93 = *(v0 + 2776);
    v94 = *(v0 + 1792);
    v95 = *(v0 + 1784);
    v96 = *(v0 + 1560);
    v97 = *(v0 + 1528);
    v98 = *(v0 + 1504);
    v99 = type metadata accessor for Logger();
    sub_1000076D4(v99, qword_10177B740);
    v95(v97, v96, v98);

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v249 = *(v0 + 2776);
      v252 = *(v0 + 2768);
      v245 = *(v0 + 1832);
      v247 = *(v0 + 1840);
      v102 = *(v0 + 1528);
      v103 = *(v0 + 1504);
      v104 = swift_slowAlloc();
      v257[0] = swift_slowAlloc();
      *v104 = 136315394;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
      v105 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v106;
      v245(v102, v103);
      v108 = sub_1000136BC(v105, v107, v257);

      *(v104 + 4) = v108;
      *(v104 + 12) = 2080;
      if (v249)
      {
        v109 = v252;
      }

      else
      {
        v109 = 0x656D616E206F4ELL;
      }

      if (v249)
      {
        v110 = v93;
      }

      else
      {
        v110 = 0xE700000000000000;
      }

      v111 = sub_1000136BC(v109, v110, v257);

      *(v104 + 14) = v111;
      _os_log_impl(&_mh_execute_header, v100, v101, "SimpleBeacon got beacon %s, name: %s", v104, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v112 = *(v0 + 1840);
      v113 = *(v0 + 1832);
      v114 = *(v0 + 1528);
      v115 = *(v0 + 1504);

      v113(v114, v115);
    }

    v116 = *(v0 + 2776);
    v117 = *(v0 + 2576);
    v118 = *(v0 + 2568);
    v119 = String._bridgeToObjectiveC()();

    [v54 setSystemVersion:v119];

    if (v116)
    {
      v120 = *(v0 + 2768);
      v121 = String._bridgeToObjectiveC()();
    }

    else
    {
      v121 = 0;
    }

    v122 = *(v0 + 2400);
    v123 = *(v0 + 2376);
    v124 = *(v0 + 2344);
    v125 = *(v0 + 2184);
    v254 = *(v0 + 1960);
    v250 = *(v0 + 1952);
    v126 = *(v0 + 1336);
    v127 = *(v0 + 1328);
    v128 = *(v0 + 1304);
    [v54 setName:v121];

    [v54 setBatteryLevel:v122];
    [v54 setBatteryPercentage:0];
    [v54 setConnectableDeviceCount:v124];
    [v54 setKeySyncRecord:v123];
    [v54 setLostModeInfo:v125];
    v253 = v125;

    sub_1000D2A70(v127, v128, &unk_101696900, &unk_10138B1E0);
    v129 = v250(v128, 1, v126);
    v130 = 0;
    if (v129 != 1)
    {
      v131 = *(v0 + 1344);
      v132 = *(v0 + 1336);
      v133 = *(v0 + 1304);
      v130 = Date._bridgeToObjectiveC()().super.isa;
      (*(v131 + 8))(v133, v132);
    }

    v134 = *(v0 + 1960);
    v135 = *(v0 + 1952);
    v136 = *(v0 + 1336);
    v137 = *(v0 + 1320);
    v138 = *(v0 + 1296);
    [v54 setLockedTimestamp:v130];

    sub_1000D2A70(v137, v138, &unk_101696900, &unk_10138B1E0);
    if (v135(v138, 1, v136) == 1)
    {
      v139 = 0;
    }

    else
    {
      v140 = *(v0 + 1344);
      v141 = *(v0 + 1336);
      v142 = *(v0 + 1296);
      v139 = Date._bridgeToObjectiveC()().super.isa;
      (*(v140 + 8))(v142, v141);
    }

    v143 = *(v0 + 2680);
    v144 = *(v0 + 2855);
    v145 = *(v0 + 2296);
    v146 = *(v0 + 2849);
    v147 = *(v0 + 1912);
    [v54 setWipedTimestamp:v139];

    [v54 setRole:v147];
    v224 = v147;

    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
    v148 = Set._bridgeToObjectiveC()().super.isa;

    [v54 setSafeLocations:v148];

    [v54 setConnected:v146];
    [v54 setCanBeLeashedByHost:v144];
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v149 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v54 setTaskInformation:v149];

    if (v143)
    {
      v150 = *(v0 + 2680);
      sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
      sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
      v143 = Set._bridgeToObjectiveC()().super.isa;
    }

    v151 = *(v0 + 2808);
    v152 = *(v0 + 2858);
    v153 = *(v0 + 2728);
    v154 = *(v0 + 2720);
    v162 = *(v0 + 2192);
    v167 = *(v0 + 2784);
    v168 = *(v0 + 1840);
    v164 = *(v0 + 2376);
    v165 = *(v0 + 1832);
    v166 = *(v0 + 1776);
    v174 = *(v0 + 1680);
    v176 = *(v0 + 1656);
    v178 = *(v0 + 1640);
    v179 = *(v0 + 1632);
    v181 = *(v0 + 1624);
    v183 = *(v0 + 1616);
    v185 = *(v0 + 1608);
    v187 = *(v0 + 1600);
    v155 = *(v0 + 1592);
    v189 = *(v0 + 1584);
    v190 = *(v0 + 1576);
    v192 = *(v0 + 1568);
    v195 = *(v0 + 1552);
    v163 = *(v0 + 1544);
    v198 = *(v0 + 1536);
    v156 = *(v0 + 1504);
    v200 = *(v0 + 1528);
    v201 = *(v0 + 1496);
    v203 = *(v0 + 1472);
    v169 = *(v0 + 1560);
    v170 = *(v0 + 1456);
    v171 = *(v0 + 1448);
    v172 = *(v0 + 1440);
    v173 = *(v0 + 1432);
    v175 = *(v0 + 1416);
    v177 = *(v0 + 1408);
    v160 = *(v0 + 1464);
    v161 = *(v0 + 1400);
    v180 = *(v0 + 1392);
    v182 = *(v0 + 1384);
    v184 = *(v0 + 1368);
    v186 = *(v0 + 1360);
    v188 = *(v0 + 1352);
    v255 = *(v0 + 1328);
    v256 = *(v0 + 1320);
    v191 = *(v0 + 1312);
    v193 = *(v0 + 1304);
    v194 = *(v0 + 1296);
    v196 = *(v0 + 1288);
    v197 = *(v0 + 1280);
    v199 = *(v0 + 1272);
    v202 = *(v0 + 1264);
    v204 = *(v0 + 1256);
    v205 = *(v0 + 1224);
    v206 = *(v0 + 1216);
    v207 = *(v0 + 1208);
    v208 = *(v0 + 1192);
    v209 = *(v0 + 1184);
    v210 = *(v0 + 1176);
    v211 = *(v0 + 1168);
    v212 = *(v0 + 1160);
    v213 = *(v0 + 1152);
    v214 = *(v0 + 1144);
    v215 = *(v0 + 1136);
    v216 = *(v0 + 1128);
    v217 = *(v0 + 1120);
    v218 = *(v0 + 1104);
    v219 = *(v0 + 1096);
    v220 = *(v0 + 1088);
    v221 = *(v0 + 1080);
    v222 = *(v0 + 1072);
    v223 = *(v0 + 1064);
    v225 = *(v0 + 1056);
    v226 = *(v0 + 1032);
    v227 = *(v0 + 1024);
    v228 = *(v0 + 1016);
    v229 = *(v0 + 1008);
    v230 = *(v0 + 1000);
    v231 = *(v0 + 976);
    v232 = *(v0 + 968);
    v233 = *(v0 + 952);
    v234 = *(v0 + 928);
    v235 = *(v0 + 920);
    v236 = *(v0 + 912);
    v237 = *(v0 + 896);
    v238 = *(v0 + 888);
    v239 = *(v0 + 872);
    v240 = *(v0 + 864);
    v241 = *(v0 + 856);
    v242 = *(v0 + 848);
    v243 = *(v0 + 816);
    v244 = *(v0 + 800);
    v157 = *(v0 + 776);
    v246 = *(v0 + 768);
    v248 = *(v0 + 760);
    v251 = *(v0 + 752);
    [v54 setMultipartStatus:v143];

    [v54 setOnline:v152];
    [v54 setDeviceColor:0];
    [v54 setDeviceClass:0];
    [v54 setDeviceModel:0];
    [v54 setRawDeviceModel:0];
    [v54 setDeviceDisplayName:0];
    [v54 setLowPowerMode:0];
    [v54 setThisDevice:v154];

    [v54 setIsMine:v153];
    [v54 setRawMetadata:v151];

    sub_10000B3A8(v157, &qword_1016AF888, &unk_1013CAD70);
    v165(v163, v156);
    v165(v155, v156);
    sub_10000B3A8(v160, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v256, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v255, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v161, &unk_1016AA420, &unk_1013BCFE0);
    v165(v169, v156);

    v158 = *(v0 + 8);

    return v158(v54);
  }
}

uint64_t sub_1009777A0()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1560), v6);
  v9 = swift_allocObject();
  *(v0 + 2752) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2760) = v11;
  *v11 = v0;
  v11[1] = sub_1009778FC;
  v12 = *(v0 + 912);
  v13 = *(v0 + 904);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100988F28, v9, v13);
}

uint64_t sub_1009778FC()
{
  v1 = *v0;
  v2 = *(*v0 + 2760);
  v3 = *(*v0 + 2752);
  v6 = *v0;

  v4 = *(v1 + 1768);

  return _swift_task_switch(sub_100977A30, v4, 0);
}

uint64_t sub_100977A30()
{
  v262 = v0;
  v1 = *(v0 + 912);
  v2 = *(v0 + 784);
  if ((*(*(v0 + 792) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_10169DBD8, &qword_1013BF910);
LABEL_4:
    v5 = 0;
    goto LABEL_6;
  }

  v3 = *(v0 + 800);
  sub_100986170(v1, v3, type metadata accessor for BeaconStatus);
  v4 = *(v3 + *(v2 + 32));
  sub_100988488(v3, type metadata accessor for BeaconStatus);
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  v5 = 1;
LABEL_6:
  *(v0 + 2858) = v5;
  v6 = (v0 + 1928);
  if (*(v0 + 2672))
  {
    v7 = *v6;

    v8 = 2664;
    v6 = (v0 + 2672);
  }

  else
  {
    v8 = 1920;
  }

  v9 = *(v0 + v8);
  *(v0 + 2776) = *v6;
  *(v0 + 2768) = v9;
  v10 = *(v0 + 2240);
  v11 = *(v0 + 2232);
  v12 = *(v0 + 1480);
  v13 = *(v0 + 1432);
  sub_1000D2A70(*(v0 + 1464), v13, &unk_1016AF8C0, &unk_1013A07A0);
  v14 = v11(v13, 1, v12);
  v15 = *(v0 + 1432);
  if (v14 == 1)
  {
    sub_10000B3A8(*(v0 + 1432), &unk_1016AF8C0, &unk_1013A07A0);
    v16 = 0;
  }

  else
  {
    v17 = *(v0 + 696);
    v18 = sub_10083B890();
    sub_100988488(v15, type metadata accessor for BeaconProductInfoRecord);
    v19 = v17[3];
    v20 = v17[4];
    sub_1000035D0(v17, v19);
    v21 = *(v20 + 184);
    v16 = v18;
    v22 = v21(v19, v20);
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
    {
      v28 = 1;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v29 = *(v0 + 2853);

    [v16 setIsAirTag:v28 & 1];
    [v16 setIsAppleAudioAccessory:v29];
  }

  *(v0 + 2784) = v16;
  v30 = *(v0 + 696);
  v31 = v30[3];
  v32 = v30[4];
  sub_1000035D0(v30, v31);
  if ((*(v32 + 112))(v31, v32))
  {
    v33 = *(v0 + 704);

    return _swift_task_switch(sub_1009790A0, v33, 0);
  }

  else
  {
    v34 = *(v0 + 776);
    v35 = type metadata accessor for AccessoryMetadataRecord();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v34, 1, 1, v35);
    v37 = *(v0 + 752);
    sub_1000D2A70(*(v0 + 776), v37, &qword_1016AF888, &unk_1013CAD70);
    v38 = (*(v36 + 48))(v37, 1, v35);
    v39 = *(v0 + 752);
    if (v38 == 1)
    {
      sub_10000B3A8(*(v0 + 752), &qword_1016AF888, &unk_1013CAD70);
      v40 = 0;
    }

    else
    {
      v40 = sub_10109CEC0();
      sub_100988488(v39, type metadata accessor for AccessoryMetadataRecord);
    }

    *(v0 + 2808) = v40;
    v41 = *(v0 + 2560);
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1560);
    v44 = *(v0 + 720);
    v45 = swift_task_alloc();
    *(v45 + 16) = v43;
    v46 = sub_1002EB5E4(sub_100986528, v45, v44);

    if (v42)
    {
      v47 = *(v0 + 1776);
      sub_10001F280(*(v0 + 696), v0 + 224);
      v48 = swift_allocObject();
      *(v0 + 2816) = v48;
      *(v48 + 16) = v47;
      sub_10000A748((v0 + 224), v48 + 24);
      *(v48 + 64) = v46;
      v49 = async function pointer to unsafeBlocking<A>(context:_:)[1];
      swift_retain_n();
      v50 = swift_task_alloc();
      *(v0 + 2824) = v50;
      v51 = sub_1000BC4D4(&qword_1016AF8F8, &qword_1013CAD80);
      *v50 = v0;
      v50[1] = sub_10097A8FC;

      return unsafeBlocking<A>(context:_:)(v0 + 648, 0xD000000000000019, 0x80000001013CA9B0, sub_100986548, v48, v51);
    }

    else
    {
      sub_1009097B0(_swiftEmptyArrayStorage);
      v52 = *(v0 + 2616);
      v53 = *(v0 + 2608);
      v54 = *(v0 + 1560);
      v55 = *(v0 + 1504);
      v56 = *(v0 + 1144);
      v57 = *(v0 + 696);
      v58 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v58 setIdentifier:isa];

      v60 = v57[3];
      v61 = v57[4];
      sub_1000035D0(v57, v60);
      v62 = (*(v61 + 184))(v60, v61);
      [v58 setType:v62];

      v63 = v57[3];
      v64 = v57[4];
      sub_1000035D0(v57, v63);
      (*(v64 + 200))(v63, v64);
      if (v53(v56, 1, v55) == 1)
      {
        v65 = 0;
      }

      else
      {
        v66 = *(v0 + 1840);
        v67 = *(v0 + 1832);
        v68 = *(v0 + 1504);
        v69 = *(v0 + 1144);
        v65 = UUID._bridgeToObjectiveC()().super.isa;
        v67(v69, v68);
      }

      v70 = *(v0 + 2600);
      v71 = *(v0 + 2408);
      v72 = *(v0 + 2288);
      v73 = *(v0 + 2280);
      v74 = *(v0 + 2272);
      v75 = *(v0 + 1592);
      v76 = *(v0 + 2856) != 5;
      [v58 setGroupIdentifier:v65];

      [v58 setPartIdentifier:v70];
      [v58 setConnectionAllowed:v76];
      [v58 setTxPower:v71];
      v77 = UUID._bridgeToObjectiveC()().super.isa;
      [v58 setProductUUID:v77];

      [v58 setVendorId:v73];
      [v58 setProductId:v72];
      if (v74)
      {
        v78 = *(v0 + 2272);
        v79 = *(v0 + 2264);
        v80 = String._bridgeToObjectiveC()();
      }

      else
      {
        v80 = 0;
      }

      v81 = *(v0 + 2256);
      [v58 setModelName:v80];

      if (v81)
      {
        v82 = *(v0 + 2256);
        v83 = *(v0 + 2248);
        v84 = String._bridgeToObjectiveC()();
      }

      else
      {
        v84 = 0;
      }

      v85 = *(v0 + 2592);
      [v58 setManufacturerName:v84];

      if (v85)
      {
        v86 = *(v0 + 2592);
        v87 = *(v0 + 2584);
        v88 = String._bridgeToObjectiveC()();
      }

      else
      {
        v88 = 0;
      }

      v89 = *(v0 + 2784);
      v90 = *(v0 + 2208);
      v91 = *(v0 + 2192);
      v92 = *(v0 + 2854);
      v93 = *(v0 + 2853);
      [v58 setSerialNumber:v88];

      [v58 setOwner:v91];
      [v58 setAccessoryProductInfo:v89];
      [v58 setIsZeus:v92];
      [v58 setIsAppleAudioAccessory:v93];
      if (v90)
      {
        v94 = *(v0 + 2208);
        v95 = *(v0 + 2200);
        v96 = String._bridgeToObjectiveC()();
      }

      else
      {
        v96 = 0;
      }

      [v58 setDiscoveryId:v96];

      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v97 = *(v0 + 2776);
      v98 = *(v0 + 1792);
      v99 = *(v0 + 1784);
      v100 = *(v0 + 1560);
      v101 = *(v0 + 1528);
      v102 = *(v0 + 1504);
      v103 = type metadata accessor for Logger();
      sub_1000076D4(v103, qword_10177B740);
      v99(v101, v100, v102);

      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v253 = *(v0 + 2776);
        v256 = *(v0 + 2768);
        v249 = *(v0 + 1832);
        v251 = *(v0 + 1840);
        v106 = *(v0 + 1528);
        v107 = *(v0 + 1504);
        v108 = swift_slowAlloc();
        v261[0] = swift_slowAlloc();
        *v108 = 136315394;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v110;
        v249(v106, v107);
        v112 = sub_1000136BC(v109, v111, v261);

        *(v108 + 4) = v112;
        *(v108 + 12) = 2080;
        if (v253)
        {
          v113 = v256;
        }

        else
        {
          v113 = 0x656D616E206F4ELL;
        }

        if (v253)
        {
          v114 = v97;
        }

        else
        {
          v114 = 0xE700000000000000;
        }

        v115 = sub_1000136BC(v113, v114, v261);

        *(v108 + 14) = v115;
        _os_log_impl(&_mh_execute_header, v104, v105, "SimpleBeacon got beacon %s, name: %s", v108, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v116 = *(v0 + 1840);
        v117 = *(v0 + 1832);
        v118 = *(v0 + 1528);
        v119 = *(v0 + 1504);

        v117(v118, v119);
      }

      v120 = *(v0 + 2776);
      v121 = *(v0 + 2576);
      v122 = *(v0 + 2568);
      v123 = String._bridgeToObjectiveC()();

      [v58 setSystemVersion:v123];

      if (v120)
      {
        v124 = *(v0 + 2768);
        v125 = String._bridgeToObjectiveC()();
      }

      else
      {
        v125 = 0;
      }

      v126 = *(v0 + 2400);
      v127 = *(v0 + 2376);
      v128 = *(v0 + 2344);
      v129 = *(v0 + 2184);
      v258 = *(v0 + 1960);
      v254 = *(v0 + 1952);
      v130 = *(v0 + 1336);
      v131 = *(v0 + 1328);
      v132 = *(v0 + 1304);
      [v58 setName:v125];

      [v58 setBatteryLevel:v126];
      [v58 setBatteryPercentage:0];
      [v58 setConnectableDeviceCount:v128];
      [v58 setKeySyncRecord:v127];
      [v58 setLostModeInfo:v129];
      v257 = v129;

      sub_1000D2A70(v131, v132, &unk_101696900, &unk_10138B1E0);
      v133 = v254(v132, 1, v130);
      v134 = 0;
      if (v133 != 1)
      {
        v135 = *(v0 + 1344);
        v136 = *(v0 + 1336);
        v137 = *(v0 + 1304);
        v134 = Date._bridgeToObjectiveC()().super.isa;
        (*(v135 + 8))(v137, v136);
      }

      v138 = *(v0 + 1960);
      v139 = *(v0 + 1952);
      v140 = *(v0 + 1336);
      v141 = *(v0 + 1320);
      v142 = *(v0 + 1296);
      [v58 setLockedTimestamp:v134];

      sub_1000D2A70(v141, v142, &unk_101696900, &unk_10138B1E0);
      if (v139(v142, 1, v140) == 1)
      {
        v143 = 0;
      }

      else
      {
        v144 = *(v0 + 1344);
        v145 = *(v0 + 1336);
        v146 = *(v0 + 1296);
        v143 = Date._bridgeToObjectiveC()().super.isa;
        (*(v144 + 8))(v146, v145);
      }

      v147 = *(v0 + 2680);
      v148 = *(v0 + 2855);
      v149 = *(v0 + 2296);
      v150 = *(v0 + 2849);
      v151 = *(v0 + 1912);
      [v58 setWipedTimestamp:v143];

      [v58 setRole:v151];
      v228 = v151;

      sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
      sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
      v152 = Set._bridgeToObjectiveC()().super.isa;

      [v58 setSafeLocations:v152];

      [v58 setConnected:v150];
      [v58 setCanBeLeashedByHost:v148];
      type metadata accessor for SPBeaconTaskName(0);
      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
      sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
      v153 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v58 setTaskInformation:v153];

      if (v147)
      {
        v154 = *(v0 + 2680);
        sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
        sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
        v147 = Set._bridgeToObjectiveC()().super.isa;
      }

      v155 = *(v0 + 2808);
      v156 = *(v0 + 2858);
      v157 = *(v0 + 2728);
      v158 = *(v0 + 2720);
      v166 = *(v0 + 2192);
      v171 = *(v0 + 2784);
      v172 = *(v0 + 1840);
      v168 = *(v0 + 2376);
      v169 = *(v0 + 1832);
      v170 = *(v0 + 1776);
      v178 = *(v0 + 1680);
      v180 = *(v0 + 1656);
      v182 = *(v0 + 1640);
      v183 = *(v0 + 1632);
      v185 = *(v0 + 1624);
      v187 = *(v0 + 1616);
      v189 = *(v0 + 1608);
      v191 = *(v0 + 1600);
      v159 = *(v0 + 1592);
      v193 = *(v0 + 1584);
      v194 = *(v0 + 1576);
      v196 = *(v0 + 1568);
      v199 = *(v0 + 1552);
      v167 = *(v0 + 1544);
      v202 = *(v0 + 1536);
      v160 = *(v0 + 1504);
      v204 = *(v0 + 1528);
      v205 = *(v0 + 1496);
      v207 = *(v0 + 1472);
      v173 = *(v0 + 1560);
      v174 = *(v0 + 1456);
      v175 = *(v0 + 1448);
      v176 = *(v0 + 1440);
      v177 = *(v0 + 1432);
      v179 = *(v0 + 1416);
      v181 = *(v0 + 1408);
      v164 = *(v0 + 1464);
      v165 = *(v0 + 1400);
      v184 = *(v0 + 1392);
      v186 = *(v0 + 1384);
      v188 = *(v0 + 1368);
      v190 = *(v0 + 1360);
      v192 = *(v0 + 1352);
      v259 = *(v0 + 1328);
      v260 = *(v0 + 1320);
      v195 = *(v0 + 1312);
      v197 = *(v0 + 1304);
      v198 = *(v0 + 1296);
      v200 = *(v0 + 1288);
      v201 = *(v0 + 1280);
      v203 = *(v0 + 1272);
      v206 = *(v0 + 1264);
      v208 = *(v0 + 1256);
      v209 = *(v0 + 1224);
      v210 = *(v0 + 1216);
      v211 = *(v0 + 1208);
      v212 = *(v0 + 1192);
      v213 = *(v0 + 1184);
      v214 = *(v0 + 1176);
      v215 = *(v0 + 1168);
      v216 = *(v0 + 1160);
      v217 = *(v0 + 1152);
      v218 = *(v0 + 1144);
      v219 = *(v0 + 1136);
      v220 = *(v0 + 1128);
      v221 = *(v0 + 1120);
      v222 = *(v0 + 1104);
      v223 = *(v0 + 1096);
      v224 = *(v0 + 1088);
      v225 = *(v0 + 1080);
      v226 = *(v0 + 1072);
      v227 = *(v0 + 1064);
      v229 = *(v0 + 1056);
      v230 = *(v0 + 1032);
      v231 = *(v0 + 1024);
      v232 = *(v0 + 1016);
      v233 = *(v0 + 1008);
      v234 = *(v0 + 1000);
      v235 = *(v0 + 976);
      v236 = *(v0 + 968);
      v237 = *(v0 + 952);
      v238 = *(v0 + 928);
      v239 = *(v0 + 920);
      v240 = *(v0 + 912);
      v241 = *(v0 + 896);
      v242 = *(v0 + 888);
      v243 = *(v0 + 872);
      v244 = *(v0 + 864);
      v245 = *(v0 + 856);
      v246 = *(v0 + 848);
      v247 = *(v0 + 816);
      v248 = *(v0 + 800);
      v161 = *(v0 + 776);
      v250 = *(v0 + 768);
      v252 = *(v0 + 760);
      v255 = *(v0 + 752);
      [v58 setMultipartStatus:v147];

      [v58 setOnline:v156];
      [v58 setDeviceColor:0];
      [v58 setDeviceClass:0];
      [v58 setDeviceModel:0];
      [v58 setRawDeviceModel:0];
      [v58 setDeviceDisplayName:0];
      [v58 setLowPowerMode:0];
      [v58 setThisDevice:v158];

      [v58 setIsMine:v157];
      [v58 setRawMetadata:v155];

      sub_10000B3A8(v161, &qword_1016AF888, &unk_1013CAD70);
      v169(v167, v160);
      v169(v159, v160);
      sub_10000B3A8(v164, &unk_1016AF8C0, &unk_1013A07A0);
      sub_10000B3A8(v260, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v259, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v165, &unk_1016AA420, &unk_1013BCFE0);
      v169(v173, v160);

      v162 = *(v0 + 8);

      return v162(v58);
    }
  }
}

uint64_t sub_1009790A0()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1640);
  v5 = *(v0 + 1520);
  v6 = *(v0 + 1504);
  v7 = *(v0 + 704);
  v8 = (*(v0 + 2832) + 24) & ~*(v0 + 2832);
  (*(v0 + 1784))(v4, *(v0 + 1560), v6);
  v9 = swift_allocObject();
  *(v0 + 2792) = v9;
  *(v9 + 16) = v7;
  v2(v9 + v8, v4, v6);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 2800) = v11;
  *v11 = v0;
  v11[1] = sub_1009791FC;
  v12 = *(v0 + 776);
  v13 = *(v0 + 744);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1009865A8, v9, v13);
}

uint64_t sub_1009791FC()
{
  v1 = *v0;
  v2 = *(*v0 + 2800);
  v3 = *(*v0 + 2792);
  v6 = *v0;

  v4 = *(v1 + 1768);

  return _swift_task_switch(sub_100979330, v4, 0);
}

uint64_t sub_100979330()
{
  v244 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
  sub_1000D2A70(v1, v2, &qword_1016AF888, &unk_1013CAD70);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 768);
  if (v6)
  {
    v8 = *(v0 + 760);
    v9 = swift_slowAlloc();
    v243[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1000136BC(0xD000000000000035, 0x80000001013665C0, v243);
    *(v9 + 12) = 2080;
    sub_1000D2A70(v7, v8, &qword_1016AF888, &unk_1013CAD70);
    v10 = type metadata accessor for AccessoryMetadataRecord();
    v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
    v12 = *(v0 + 760);
    if (v11 == 1)
    {
      sub_10000B3A8(*(v0 + 760), &qword_1016AF888, &unk_1013CAD70);
      v13 = 0xE900000000000064;
      v14 = 0x726F636572206F4ELL;
    }

    else
    {
      v15 = *(v0 + 760);
      v14 = sub_10109C94C();
      v13 = v16;
      sub_100988488(v12, type metadata accessor for AccessoryMetadataRecord);
    }

    sub_10000B3A8(*(v0 + 768), &qword_1016AF888, &unk_1013CAD70);
    v17 = sub_1000136BC(v14, v13, v243);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s AccessoryMetadataRecord: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000B3A8(v7, &qword_1016AF888, &unk_1013CAD70);
  }

  v18 = *(v0 + 752);
  sub_1000D2A70(*(v0 + 776), v18, &qword_1016AF888, &unk_1013CAD70);
  v19 = type metadata accessor for AccessoryMetadataRecord();
  v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  v21 = *(v0 + 752);
  if (v20 == 1)
  {
    sub_10000B3A8(*(v0 + 752), &qword_1016AF888, &unk_1013CAD70);
    v22 = 0;
  }

  else
  {
    v22 = sub_10109CEC0();
    sub_100988488(v21, type metadata accessor for AccessoryMetadataRecord);
  }

  *(v0 + 2808) = v22;
  v23 = *(v0 + 2560);
  v24 = *(v0 + 1776);
  v25 = *(v0 + 1560);
  v26 = *(v0 + 720);
  v27 = swift_task_alloc();
  *(v27 + 16) = v25;
  v28 = sub_1002EB5E4(sub_100986528, v27, v26);

  if (v24)
  {
    v29 = *(v0 + 1776);
    sub_10001F280(*(v0 + 696), v0 + 224);
    v30 = swift_allocObject();
    *(v0 + 2816) = v30;
    *(v30 + 16) = v29;
    sub_10000A748((v0 + 224), v30 + 24);
    *(v30 + 64) = v28;
    v31 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    swift_retain_n();
    v32 = swift_task_alloc();
    *(v0 + 2824) = v32;
    v33 = sub_1000BC4D4(&qword_1016AF8F8, &qword_1013CAD80);
    *v32 = v0;
    v32[1] = sub_10097A8FC;

    return unsafeBlocking<A>(context:_:)(v0 + 648, 0xD000000000000019, 0x80000001013CA9B0, sub_100986548, v30, v33);
  }

  else
  {
    v239 = v3;
    sub_1009097B0(_swiftEmptyArrayStorage);
    v34 = *(v0 + 2616);
    v35 = *(v0 + 2608);
    v36 = *(v0 + 1560);
    v37 = *(v0 + 1504);
    v38 = *(v0 + 1144);
    v39 = *(v0 + 696);
    v40 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v40 setIdentifier:isa];

    v42 = v39[3];
    v43 = v39[4];
    sub_1000035D0(v39, v42);
    v44 = (*(v43 + 184))(v42, v43);
    [v40 setType:v44];

    v45 = v39[3];
    v46 = v39[4];
    sub_1000035D0(v39, v45);
    (*(v46 + 200))(v45, v46);
    if (v35(v38, 1, v37) == 1)
    {
      v47 = 0;
    }

    else
    {
      v48 = *(v0 + 1840);
      v49 = *(v0 + 1832);
      v50 = *(v0 + 1504);
      v51 = *(v0 + 1144);
      v47 = UUID._bridgeToObjectiveC()().super.isa;
      v49(v51, v50);
    }

    v52 = *(v0 + 2600);
    v53 = *(v0 + 2408);
    v54 = *(v0 + 2288);
    v55 = *(v0 + 2280);
    v56 = *(v0 + 2272);
    v57 = *(v0 + 1592);
    v58 = *(v0 + 2856) != 5;
    [v40 setGroupIdentifier:v47];

    [v40 setPartIdentifier:v52];
    [v40 setConnectionAllowed:v58];
    [v40 setTxPower:v53];
    v59 = UUID._bridgeToObjectiveC()().super.isa;
    [v40 setProductUUID:v59];

    [v40 setVendorId:v55];
    [v40 setProductId:v54];
    if (v56)
    {
      v60 = *(v0 + 2272);
      v61 = *(v0 + 2264);
      v62 = String._bridgeToObjectiveC()();
    }

    else
    {
      v62 = 0;
    }

    v63 = *(v0 + 2256);
    [v40 setModelName:v62];

    if (v63)
    {
      v64 = *(v0 + 2256);
      v65 = *(v0 + 2248);
      v66 = String._bridgeToObjectiveC()();
    }

    else
    {
      v66 = 0;
    }

    v67 = *(v0 + 2592);
    [v40 setManufacturerName:v66];

    if (v67)
    {
      v68 = *(v0 + 2592);
      v69 = *(v0 + 2584);
      v70 = String._bridgeToObjectiveC()();
    }

    else
    {
      v70 = 0;
    }

    v71 = *(v0 + 2784);
    v72 = *(v0 + 2208);
    v73 = *(v0 + 2192);
    v74 = *(v0 + 2854);
    v75 = *(v0 + 2853);
    [v40 setSerialNumber:v70];

    [v40 setOwner:v73];
    [v40 setAccessoryProductInfo:v71];
    [v40 setIsZeus:v74];
    [v40 setIsAppleAudioAccessory:v75];
    if (v72)
    {
      v76 = *(v0 + 2208);
      v77 = *(v0 + 2200);
      v78 = String._bridgeToObjectiveC()();
    }

    else
    {
      v78 = 0;
    }

    [v40 setDiscoveryId:v78];

    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v79 = *(v0 + 2776);
    v80 = *(v0 + 1792);
    v81 = *(v0 + 1784);
    v82 = *(v0 + 1560);
    v83 = *(v0 + 1528);
    v84 = *(v0 + 1504);
    sub_1000076D4(v239, qword_10177B740);
    v81(v83, v82, v84);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v234 = *(v0 + 2776);
      v237 = *(v0 + 2768);
      v230 = *(v0 + 1832);
      v232 = *(v0 + 1840);
      v87 = *(v0 + 1528);
      v88 = *(v0 + 1504);
      v89 = swift_slowAlloc();
      v243[0] = swift_slowAlloc();
      *v89 = 136315394;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v230(v87, v88);
      v93 = sub_1000136BC(v90, v92, v243);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      if (v234)
      {
        v94 = v237;
      }

      else
      {
        v94 = 0x656D616E206F4ELL;
      }

      if (v234)
      {
        v95 = v79;
      }

      else
      {
        v95 = 0xE700000000000000;
      }

      v96 = sub_1000136BC(v94, v95, v243);

      *(v89 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v85, v86, "SimpleBeacon got beacon %s, name: %s", v89, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v97 = *(v0 + 1840);
      v98 = *(v0 + 1832);
      v99 = *(v0 + 1528);
      v100 = *(v0 + 1504);

      v98(v99, v100);
    }

    v101 = *(v0 + 2776);
    v102 = *(v0 + 2576);
    v103 = *(v0 + 2568);
    v104 = String._bridgeToObjectiveC()();

    [v40 setSystemVersion:v104];

    if (v101)
    {
      v105 = *(v0 + 2768);
      v106 = String._bridgeToObjectiveC()();
    }

    else
    {
      v106 = 0;
    }

    v107 = *(v0 + 2400);
    v108 = *(v0 + 2376);
    v109 = *(v0 + 2344);
    v110 = *(v0 + 2184);
    v240 = *(v0 + 1960);
    v235 = *(v0 + 1952);
    v111 = *(v0 + 1336);
    v112 = *(v0 + 1328);
    v113 = *(v0 + 1304);
    [v40 setName:v106];

    [v40 setBatteryLevel:v107];
    [v40 setBatteryPercentage:0];
    [v40 setConnectableDeviceCount:v109];
    [v40 setKeySyncRecord:v108];
    [v40 setLostModeInfo:v110];
    v238 = v110;

    sub_1000D2A70(v112, v113, &unk_101696900, &unk_10138B1E0);
    v114 = v235(v113, 1, v111);
    v115 = 0;
    if (v114 != 1)
    {
      v116 = *(v0 + 1344);
      v117 = *(v0 + 1336);
      v118 = *(v0 + 1304);
      v115 = Date._bridgeToObjectiveC()().super.isa;
      (*(v116 + 8))(v118, v117);
    }

    v119 = *(v0 + 1960);
    v120 = *(v0 + 1952);
    v121 = *(v0 + 1336);
    v122 = *(v0 + 1320);
    v123 = *(v0 + 1296);
    [v40 setLockedTimestamp:v115];

    sub_1000D2A70(v122, v123, &unk_101696900, &unk_10138B1E0);
    if (v120(v123, 1, v121) == 1)
    {
      v124 = 0;
    }

    else
    {
      v125 = *(v0 + 1344);
      v126 = *(v0 + 1336);
      v127 = *(v0 + 1296);
      v124 = Date._bridgeToObjectiveC()().super.isa;
      (*(v125 + 8))(v127, v126);
    }

    v128 = *(v0 + 2680);
    v129 = *(v0 + 2855);
    v130 = *(v0 + 2296);
    v131 = *(v0 + 2849);
    v132 = *(v0 + 1912);
    [v40 setWipedTimestamp:v124];

    [v40 setRole:v132];
    v209 = v132;

    sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
    sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
    v133 = Set._bridgeToObjectiveC()().super.isa;

    [v40 setSafeLocations:v133];

    [v40 setConnected:v131];
    [v40 setCanBeLeashedByHost:v129];
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v134 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v40 setTaskInformation:v134];

    if (v128)
    {
      v135 = *(v0 + 2680);
      sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
      sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
      v128 = Set._bridgeToObjectiveC()().super.isa;
    }

    v136 = *(v0 + 2808);
    v137 = *(v0 + 2858);
    v138 = *(v0 + 2728);
    v139 = *(v0 + 2720);
    v147 = *(v0 + 2192);
    v152 = *(v0 + 2784);
    v153 = *(v0 + 1840);
    v149 = *(v0 + 2376);
    v150 = *(v0 + 1832);
    v151 = *(v0 + 1776);
    v159 = *(v0 + 1680);
    v161 = *(v0 + 1656);
    v163 = *(v0 + 1640);
    v164 = *(v0 + 1632);
    v166 = *(v0 + 1624);
    v168 = *(v0 + 1616);
    v170 = *(v0 + 1608);
    v172 = *(v0 + 1600);
    v140 = *(v0 + 1592);
    v174 = *(v0 + 1584);
    v175 = *(v0 + 1576);
    v177 = *(v0 + 1568);
    v180 = *(v0 + 1552);
    v148 = *(v0 + 1544);
    v183 = *(v0 + 1536);
    v141 = *(v0 + 1504);
    v185 = *(v0 + 1528);
    v186 = *(v0 + 1496);
    v188 = *(v0 + 1472);
    v154 = *(v0 + 1560);
    v155 = *(v0 + 1456);
    v156 = *(v0 + 1448);
    v157 = *(v0 + 1440);
    v158 = *(v0 + 1432);
    v160 = *(v0 + 1416);
    v162 = *(v0 + 1408);
    v145 = *(v0 + 1464);
    v146 = *(v0 + 1400);
    v165 = *(v0 + 1392);
    v167 = *(v0 + 1384);
    v169 = *(v0 + 1368);
    v171 = *(v0 + 1360);
    v173 = *(v0 + 1352);
    v241 = *(v0 + 1328);
    v242 = *(v0 + 1320);
    v176 = *(v0 + 1312);
    v178 = *(v0 + 1304);
    v179 = *(v0 + 1296);
    v181 = *(v0 + 1288);
    v182 = *(v0 + 1280);
    v184 = *(v0 + 1272);
    v187 = *(v0 + 1264);
    v189 = *(v0 + 1256);
    v190 = *(v0 + 1224);
    v191 = *(v0 + 1216);
    v192 = *(v0 + 1208);
    v193 = *(v0 + 1192);
    v194 = *(v0 + 1184);
    v195 = *(v0 + 1176);
    v196 = *(v0 + 1168);
    v197 = *(v0 + 1160);
    v198 = *(v0 + 1152);
    v199 = *(v0 + 1144);
    v200 = *(v0 + 1136);
    v201 = *(v0 + 1128);
    v202 = *(v0 + 1120);
    v203 = *(v0 + 1104);
    v204 = *(v0 + 1096);
    v205 = *(v0 + 1088);
    v206 = *(v0 + 1080);
    v207 = *(v0 + 1072);
    v208 = *(v0 + 1064);
    v210 = *(v0 + 1056);
    v211 = *(v0 + 1032);
    v212 = *(v0 + 1024);
    v213 = *(v0 + 1016);
    v214 = *(v0 + 1008);
    v215 = *(v0 + 1000);
    v216 = *(v0 + 976);
    v217 = *(v0 + 968);
    v218 = *(v0 + 952);
    v219 = *(v0 + 928);
    v220 = *(v0 + 920);
    v221 = *(v0 + 912);
    v222 = *(v0 + 896);
    v223 = *(v0 + 888);
    v224 = *(v0 + 872);
    v225 = *(v0 + 864);
    v226 = *(v0 + 856);
    v227 = *(v0 + 848);
    v228 = *(v0 + 816);
    v229 = *(v0 + 800);
    v142 = *(v0 + 776);
    v231 = *(v0 + 768);
    v233 = *(v0 + 760);
    v236 = *(v0 + 752);
    [v40 setMultipartStatus:v128];

    [v40 setOnline:v137];
    [v40 setDeviceColor:0];
    [v40 setDeviceClass:0];
    [v40 setDeviceModel:0];
    [v40 setRawDeviceModel:0];
    [v40 setDeviceDisplayName:0];
    [v40 setLowPowerMode:0];
    [v40 setThisDevice:v139];

    [v40 setIsMine:v138];
    [v40 setRawMetadata:v136];

    sub_10000B3A8(v142, &qword_1016AF888, &unk_1013CAD70);
    v150(v148, v141);
    v150(v140, v141);
    sub_10000B3A8(v145, &unk_1016AF8C0, &unk_1013A07A0);
    sub_10000B3A8(v242, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v241, &unk_101696900, &unk_10138B1E0);
    sub_10000B3A8(v146, &unk_1016AA420, &unk_1013BCFE0);
    v150(v154, v141);

    v143 = *(v0 + 8);

    return v143(v40);
  }
}

uint64_t sub_10097A8FC()
{
  v1 = *v0;
  v2 = *(*v0 + 2824);
  v3 = *(*v0 + 2816);
  v6 = *v0;

  v4 = *(v1 + 1768);

  return _swift_task_switch(sub_10097AA30, v4, 0);
}

uint64_t sub_10097AA30()
{
  v213 = v0;
  v1 = *(v0 + 1776);

  v210 = *(v0 + 648);
  v2 = *(v0 + 2616);
  v3 = *(v0 + 2608);
  v4 = *(v0 + 1560);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 696);
  v8 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v8 setIdentifier:isa];

  v10 = v7[3];
  v11 = v7[4];
  sub_1000035D0(v7, v10);
  v12 = (*(v11 + 184))(v10, v11);
  [v8 setType:v12];

  v13 = v7[3];
  v14 = v7[4];
  sub_1000035D0(v7, v13);
  (*(v14 + 200))(v13, v14);
  if (v3(v6, 1, v5) == 1)
  {
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 1840);
    v17 = *(v0 + 1832);
    v18 = *(v0 + 1504);
    v19 = *(v0 + 1144);
    v15 = UUID._bridgeToObjectiveC()().super.isa;
    v17(v19, v18);
  }

  v20 = *(v0 + 2600);
  v21 = *(v0 + 2408);
  v22 = *(v0 + 2288);
  v23 = *(v0 + 2280);
  v24 = *(v0 + 2272);
  v25 = *(v0 + 1592);
  v26 = *(v0 + 2856) != 5;
  [v8 setGroupIdentifier:v15];

  [v8 setPartIdentifier:v20];
  [v8 setConnectionAllowed:v26];
  [v8 setTxPower:v21];
  v27 = UUID._bridgeToObjectiveC()().super.isa;
  [v8 setProductUUID:v27];

  [v8 setVendorId:v23];
  [v8 setProductId:v22];
  if (v24)
  {
    v28 = *(v0 + 2272);
    v29 = *(v0 + 2264);
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v0 + 2256);
  [v8 setModelName:v30];

  if (v31)
  {
    v32 = *(v0 + 2256);
    v33 = *(v0 + 2248);
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v0 + 2592);
  [v8 setManufacturerName:v34];

  if (v35)
  {
    v36 = *(v0 + 2592);
    v37 = *(v0 + 2584);
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v0 + 2784);
  v40 = *(v0 + 2208);
  v41 = *(v0 + 2192);
  v42 = *(v0 + 2854);
  v43 = *(v0 + 2853);
  [v8 setSerialNumber:v38];

  [v8 setOwner:v41];
  [v8 setAccessoryProductInfo:v39];
  [v8 setIsZeus:v42];
  [v8 setIsAppleAudioAccessory:v43];
  if (v40)
  {
    v44 = *(v0 + 2208);
    v45 = *(v0 + 2200);
    v46 = String._bridgeToObjectiveC()();
  }

  else
  {
    v46 = 0;
  }

  [v8 setDiscoveryId:v46];

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 2776);
  v48 = *(v0 + 1792);
  v49 = *(v0 + 1784);
  v50 = *(v0 + 1560);
  v51 = *(v0 + 1528);
  v52 = *(v0 + 1504);
  v53 = type metadata accessor for Logger();
  sub_1000076D4(v53, qword_10177B740);
  v49(v51, v50, v52);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v203 = *(v0 + 2776);
    v206 = *(v0 + 2768);
    v199 = *(v0 + 1832);
    v201 = *(v0 + 1840);
    v56 = *(v0 + 1528);
    v57 = *(v0 + 1504);
    v58 = swift_slowAlloc();
    v212[0] = swift_slowAlloc();
    *v58 = 136315394;
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v199(v56, v57);
    v62 = sub_1000136BC(v59, v61, v212);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    if (v203)
    {
      v63 = v206;
    }

    else
    {
      v63 = 0x656D616E206F4ELL;
    }

    if (v203)
    {
      v64 = v47;
    }

    else
    {
      v64 = 0xE700000000000000;
    }

    v65 = sub_1000136BC(v63, v64, v212);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v54, v55, "SimpleBeacon got beacon %s, name: %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v66 = *(v0 + 1840);
    v67 = *(v0 + 1832);
    v68 = *(v0 + 1528);
    v69 = *(v0 + 1504);

    v67(v68, v69);
  }

  v70 = *(v0 + 2776);
  v71 = *(v0 + 2576);
  v72 = *(v0 + 2568);
  v73 = String._bridgeToObjectiveC()();

  [v8 setSystemVersion:v73];

  if (v70)
  {
    v74 = *(v0 + 2768);
    v75 = String._bridgeToObjectiveC()();
  }

  else
  {
    v75 = 0;
  }

  v76 = *(v0 + 2400);
  v77 = *(v0 + 2376);
  v78 = *(v0 + 2344);
  v79 = *(v0 + 2184);
  v208 = *(v0 + 1960);
  v204 = *(v0 + 1952);
  v80 = *(v0 + 1336);
  v81 = *(v0 + 1328);
  v82 = *(v0 + 1304);
  [v8 setName:v75];

  [v8 setBatteryLevel:v76];
  [v8 setBatteryPercentage:0];
  [v8 setConnectableDeviceCount:v78];
  [v8 setKeySyncRecord:v77];
  [v8 setLostModeInfo:v79];
  v207 = v79;

  sub_1000D2A70(v81, v82, &unk_101696900, &unk_10138B1E0);
  v83 = v204(v82, 1, v80);
  v84 = 0;
  if (v83 != 1)
  {
    v85 = *(v0 + 1344);
    v86 = *(v0 + 1336);
    v87 = *(v0 + 1304);
    v84 = Date._bridgeToObjectiveC()().super.isa;
    (*(v85 + 8))(v87, v86);
  }

  v88 = *(v0 + 1960);
  v89 = *(v0 + 1952);
  v90 = *(v0 + 1336);
  v91 = *(v0 + 1320);
  v92 = *(v0 + 1296);
  [v8 setLockedTimestamp:v84];

  sub_1000D2A70(v91, v92, &unk_101696900, &unk_10138B1E0);
  if (v89(v92, 1, v90) == 1)
  {
    v93 = 0;
  }

  else
  {
    v94 = *(v0 + 1344);
    v95 = *(v0 + 1336);
    v96 = *(v0 + 1296);
    v93 = Date._bridgeToObjectiveC()().super.isa;
    (*(v94 + 8))(v96, v95);
  }

  v97 = *(v0 + 2680);
  v98 = *(v0 + 2855);
  v99 = *(v0 + 2296);
  v100 = *(v0 + 2849);
  v101 = *(v0 + 1912);
  [v8 setWipedTimestamp:v93];

  [v8 setRole:v101];
  v178 = v101;

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
  v102 = Set._bridgeToObjectiveC()().super.isa;

  [v8 setSafeLocations:v102];

  [v8 setConnected:v100];
  [v8 setCanBeLeashedByHost:v98];
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v103 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 setTaskInformation:v103];

  if (v97)
  {
    v104 = *(v0 + 2680);
    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
    v97 = Set._bridgeToObjectiveC()().super.isa;
  }

  v105 = *(v0 + 2808);
  v106 = *(v0 + 2858);
  v107 = *(v0 + 2728);
  v108 = *(v0 + 2720);
  v116 = *(v0 + 2192);
  v121 = *(v0 + 2784);
  v122 = *(v0 + 1840);
  v118 = *(v0 + 2376);
  v119 = *(v0 + 1832);
  v120 = *(v0 + 1776);
  v128 = *(v0 + 1680);
  v130 = *(v0 + 1656);
  v132 = *(v0 + 1640);
  v133 = *(v0 + 1632);
  v135 = *(v0 + 1624);
  v137 = *(v0 + 1616);
  v139 = *(v0 + 1608);
  v141 = *(v0 + 1600);
  v109 = *(v0 + 1592);
  v143 = *(v0 + 1584);
  v144 = *(v0 + 1576);
  v146 = *(v0 + 1568);
  v149 = *(v0 + 1552);
  v117 = *(v0 + 1544);
  v152 = *(v0 + 1536);
  v110 = *(v0 + 1504);
  v154 = *(v0 + 1528);
  v155 = *(v0 + 1496);
  v157 = *(v0 + 1472);
  v123 = *(v0 + 1560);
  v124 = *(v0 + 1456);
  v125 = *(v0 + 1448);
  v126 = *(v0 + 1440);
  v127 = *(v0 + 1432);
  v129 = *(v0 + 1416);
  v131 = *(v0 + 1408);
  v115 = *(v0 + 1400);
  v134 = *(v0 + 1392);
  v136 = *(v0 + 1384);
  v138 = *(v0 + 1368);
  v140 = *(v0 + 1360);
  v142 = *(v0 + 1352);
  v209 = *(v0 + 1328);
  v211 = *(v0 + 1320);
  v145 = *(v0 + 1312);
  v147 = *(v0 + 1304);
  v148 = *(v0 + 1296);
  v150 = *(v0 + 1288);
  v151 = *(v0 + 1280);
  v153 = *(v0 + 1272);
  v156 = *(v0 + 1264);
  v158 = *(v0 + 1256);
  v159 = *(v0 + 1224);
  v160 = *(v0 + 1216);
  v161 = *(v0 + 1208);
  v162 = *(v0 + 1192);
  v163 = *(v0 + 1184);
  v164 = *(v0 + 1176);
  v165 = *(v0 + 1168);
  v166 = *(v0 + 1160);
  v167 = *(v0 + 1152);
  v168 = *(v0 + 1144);
  v169 = *(v0 + 1136);
  v170 = *(v0 + 1128);
  v171 = *(v0 + 1120);
  v172 = *(v0 + 1104);
  v173 = *(v0 + 1096);
  v174 = *(v0 + 1088);
  v175 = *(v0 + 1080);
  v176 = *(v0 + 1072);
  v177 = *(v0 + 1064);
  v179 = *(v0 + 1056);
  v180 = *(v0 + 1032);
  v181 = *(v0 + 1024);
  v182 = *(v0 + 1016);
  v183 = *(v0 + 1008);
  v184 = *(v0 + 1000);
  v185 = *(v0 + 976);
  v186 = *(v0 + 968);
  v187 = *(v0 + 952);
  v188 = *(v0 + 928);
  v189 = *(v0 + 920);
  v190 = *(v0 + 912);
  v191 = *(v0 + 896);
  v192 = *(v0 + 888);
  v193 = *(v0 + 872);
  v194 = *(v0 + 864);
  v195 = *(v0 + 856);
  v196 = *(v0 + 848);
  v197 = *(v0 + 816);
  v198 = *(v0 + 800);
  v111 = *(v0 + 776);
  v200 = *(v0 + 768);
  v202 = *(v0 + 760);
  v205 = *(v0 + 752);
  [v8 setMultipartStatus:{v97, *(v0 + 1464)}];

  [v8 setOnline:v106];
  [v8 setDeviceColor:0];
  [v8 setDeviceClass:0];
  [v8 setDeviceModel:0];
  [v8 setRawDeviceModel:0];
  [v8 setDeviceDisplayName:0];
  [v8 setLowPowerMode:0];
  [v8 setThisDevice:v108];

  [v8 setIsMine:v107];
  [v8 setRawMetadata:v105];

  sub_10000B3A8(v111, &qword_1016AF888, &unk_1013CAD70);
  v119(v117, v110);
  v119(v109, v110);
  sub_10000B3A8(v114, &unk_1016AF8C0, &unk_1013A07A0);
  sub_10000B3A8(v211, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v209, &unk_101696900, &unk_10138B1E0);
  sub_10000B3A8(v115, &unk_1016AA420, &unk_1013BCFE0);
  v119(v123, v110);

  v112 = *(v0 + 8);

  return v112(v8);
}

uint64_t sub_10097BB58()
{
  v1 = *(v0 + 2088);
  v2 = [v1 type];
  v3 = [v1 destination];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = *(v0 + 2088);
  v5 = *(v0 + 1104);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1016);
  v8 = [objc_allocWithZone(SPHandle) initWithType:v2 destination:v3 formattedName:0];

  v9 = *(v5 + *(v6 + 44));
  v10 = *(v5 + *(v6 + 48));
  v11 = v8;
  LOBYTE(v9) = sub_100E0EA64(v9, v10);

  sub_10000B3A8(v7, &unk_101698C20, &qword_101390748);
  sub_100988488(v5, type metadata accessor for SharedBeaconRecord);
  v12 = *(v0 + 2064);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v11;
  *(v0 + 2854) = 0;
  *(v0 + 2853) = v9 & 1;
  *(v0 + 2184) = v12;
  *(v0 + 2176) = 0;
  v13 = *(v0 + 1640);
  v14 = *(v0 + 704);
  v15 = *(v0 + 696);
  v16 = v15[3];
  v17 = v15[4];
  sub_1000035D0(v15, v16);
  (*(*(*(v17 + 8) + 8) + 32))(v16);

  return _swift_task_switch(sub_10096E98C, v14, 0);
}

uint64_t sub_10097BD18()
{
  v1 = *(v0 + 2120);

  v2 = *(v0 + 2088);
  v3 = [v2 type];
  v4 = [v2 destination];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v5 = *(v0 + 2088);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1016);
  v9 = [objc_allocWithZone(SPHandle) initWithType:v3 destination:v4 formattedName:0];

  v10 = *(v6 + *(v7 + 44));
  v11 = *(v6 + *(v7 + 48));
  v12 = v9;
  LOBYTE(v10) = sub_100E0EA64(v10, v11);

  sub_10000B3A8(v8, &unk_101698C20, &qword_101390748);
  sub_100988488(v6, type metadata accessor for SharedBeaconRecord);
  v13 = *(v0 + 2064);
  *(v0 + 2200) = 0u;
  *(v0 + 2192) = v12;
  *(v0 + 2854) = 0;
  *(v0 + 2853) = v10 & 1;
  *(v0 + 2184) = v13;
  *(v0 + 2176) = 0;
  v14 = *(v0 + 1640);
  v15 = *(v0 + 704);
  v16 = *(v0 + 696);
  v17 = v16[3];
  v18 = v16[4];
  sub_1000035D0(v16, v17);
  (*(*(*(v18 + 8) + 8) + 32))(v17);

  return _swift_task_switch(sub_10096E98C, v15, 0);
}

uint64_t sub_10097BEE0()
{
  v1 = *(v0 + 1072);
  v2 = (v1 + *(*(v0 + 1040) + 40));
  v4 = *v2;
  v3 = v2[1];

  sub_100988488(v1, type metadata accessor for SharedBeaconRecord);
  *(v0 + 2600) = 255;
  *(v0 + 2584) = 0u;
  *(v0 + 2576) = v3;
  *(v0 + 2568) = v4;
  *(v0 + 2560) = 0;
  v5 = *(v0 + 1968);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1024);
  v9 = *(v0 + 696);
  sub_100007BAC((v0 + 384));
  sub_10001F280(v9, v0 + 464);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if ((v10 & 1) == 0)
  {
    v17 = *(v0 + 1024);
    v11(v17, 1, 1, *(v0 + 1040));
    v18 = &unk_101698C30;
    v19 = &unk_101392630;
    v20 = v17;
LABEL_6:
    sub_10000B3A8(v20, v18, v19);
    goto LABEL_7;
  }

  v12 = *(v0 + 1064);
  v13 = *(v0 + 1040);
  v14 = *(v0 + 1024);
  v11(v14, 0, 1, v13);
  sub_100986170(v14, v12, type metadata accessor for SharedBeaconRecord);
  v15 = *(v0 + 1064);
  if (*(v12 + *(v13 + 44)) != -1 || (v16 = *(v0 + 1040), *(v15 + v16[12]) != -1) || ((v45 = *(v15 + v16[16]), v45 != 4) ? (v46 = v45 == 1) : (v46 = 1), !v46))
  {
    sub_100988488(v15, type metadata accessor for SharedBeaconRecord);
LABEL_7:
    v21 = *(v0 + 1560);
    v22 = *(v0 + 696);
    v23 = v22[3];
    v24 = v22[4];
    sub_1000035D0(v22, v23);
    (*(*(*(v24 + 8) + 8) + 32))(v23);
    goto LABEL_8;
  }

  v47 = *(v0 + 864);
  v48 = *(v0 + 1064);
  sub_1000D2A70(v15 + v16[20], v47, &unk_1016AF890, &qword_1013926D0);
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
LABEL_22:
    v20 = *(v0 + 1184);
    v18 = &qword_1016980D0;
    v19 = &unk_10138F3B0;
    goto LABEL_6;
  }

  v55 = *(v49 + 20);
  v56 = *(v0 + 864);
  sub_1000D2A70(v54 + v55, *(v0 + 1184), &qword_1016980D0, &unk_10138F3B0);
  sub_100988488(v56, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v51 + 48))(v53, 1, v52) == 1)
  {
    goto LABEL_22;
  }

  v57 = *(v0 + 1816);
  v58 = *(v0 + 1808);
  v59 = *(v0 + 1560);
  v60 = *(v0 + 1552);
  v61 = *(v0 + 1504);
  v58(v60, *(v0 + 1184), v61);
  v58(v59, v60, v61);
LABEL_8:
  v25 = *(v0 + 1544);
  v26 = *(v0 + 1512);
  v27 = *(v0 + 1504);
  v28 = *(v0 + 1176);
  v29 = *(v0 + 696);
  v30 = v29[3];
  v31 = v29[4];
  sub_1000035D0(v29, v30);
  sub_10083138C(v30, v31, v25);
  v32 = v29[3];
  v33 = v29[4];
  sub_1000035D0(v29, v32);
  (*(v33 + 200))(v32, v33);
  v34 = *(v26 + 48);
  *(v0 + 2608) = v34;
  *(v0 + 2616) = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v34(v28, 1, v27) == 1)
  {
    sub_10000B3A8(*(v0 + 1176), &qword_1016980D0, &unk_10138F3B0);
    *(v0 + 2664) = 0;
    *(v0 + 2680) = 0;
    *(v0 + 2672) = 0;
    v35 = *(v0 + 1792);
    v36 = *(v0 + 1512);
    v37 = *(v0 + 1504);
    v38 = *(v0 + 1168);
    v39 = *(v0 + 704);
    (*(v0 + 1784))(v38, *(v0 + 1560), v37);
    v40 = *(v36 + 56);
    *(v0 + 2688) = v40;
    *(v0 + 2696) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v40(v38, 0, 1, v37);
    v41 = sub_1009757DC;
    v42 = v39;
  }

  else
  {
    v43 = *(v0 + 1816);
    v44 = *(v0 + 704);
    (*(v0 + 1808))(*(v0 + 1536), *(v0 + 1176), *(v0 + 1504));
    v41 = sub_100975010;
    v42 = v44;
  }

  return _swift_task_switch(v41, v42, 0);
}

uint64_t sub_10097C3EC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + *(type metadata accessor for SafeLocation() + 52));
  v10 = a2[3];
  v11 = a2[4];
  sub_1000035D0(a2, v10);
  (*(*(*(v11 + 8) + 8) + 32))(v10);
  LOBYTE(a2) = sub_1005C8A30(v8, v9);
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

BOOL sub_10097C520(uint64_t a1)
{
  v2 = type metadata accessor for OwnerSharingCircle();
  v3 = *(v2 + 24);
  return (static UUID.== infix(_:_:)() & 1) != 0 && *(a1 + *(v2 + 28)) == 2;
}

void sub_10097C58C(uint64_t a1, unint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - v17;
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v21 = *(v2 + 168);
  WorkItemQueue.id.getter();
  (*(v4 + 56))(v20, 0, 1, v3);
  type metadata accessor for WorkItemQueue();
  static WorkItemQueue.currentWorkItemQueueIdentifier.getter();
  v22 = *(v8 + 56);
  sub_1000D2A70(v20, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v18, &v11[v22], &qword_1016980D0, &unk_10138F3B0);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return;
    }
  }

  else
  {
    sub_1000D2A70(v11, v38, &qword_1016980D0, &unk_10138F3B0);
    if (v23(&v11[v22], 1, v3) != 1)
    {
      v30 = v35;
      (*(v4 + 32))(v35, &v11[v22], v3);
      sub_100985CA0(&qword_1016984A0, &type metadata accessor for UUID);
      v31 = v38;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v4 + 8);
      v33(v30, v3);
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
      v33(v31, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v38, v3);
  }

  sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
LABEL_7:
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177B740);
  v25 = v37;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1000136BC(v36, v25, &v39);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s is required to be called from a WorkItemQueue context!", v28, 0xCu);
    sub_100007BAC(v29);
  }
}

void sub_10097CAD8(uint64_t a1, unint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v34 - v17;
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  v21 = *(v2 + 176);
  WorkItemQueue.id.getter();
  (*(v4 + 56))(v20, 0, 1, v3);
  type metadata accessor for WorkItemQueue();
  static WorkItemQueue.currentWorkItemQueueIdentifier.getter();
  v22 = *(v8 + 56);
  sub_1000D2A70(v20, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v18, &v11[v22], &qword_1016980D0, &unk_10138F3B0);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return;
    }
  }

  else
  {
    sub_1000D2A70(v11, v38, &qword_1016980D0, &unk_10138F3B0);
    if (v23(&v11[v22], 1, v3) != 1)
    {
      v30 = v35;
      (*(v4 + 32))(v35, &v11[v22], v3);
      sub_100985CA0(&qword_1016984A0, &type metadata accessor for UUID);
      v31 = v38;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v4 + 8);
      v33(v30, v3);
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
      v33(v31, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v20, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v38, v3);
  }

  sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
LABEL_7:
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177B740);
  v25 = v37;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1000136BC(v36, v25, &v39);
    _os_log_impl(&_mh_execute_header, v26, v27, "%s is required to be called from a fileCacheWorkItemQueue context!", v28, 0xCu);
    sub_100007BAC(v29);
  }
}

uint64_t sub_10097D024()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10097D0F0, v0, 0);
}

uint64_t sub_10097D0F0()
{
  if (*(v0[2] + 224))
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B740);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device List by serial number update pending, not creating a new task.", v4, 2u);
    }
  }

  else
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B740);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Scheduling next serial number fetch update.", v8, 2u);
    }

    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[3];
    v12 = v0[4];
    v13 = v0[2];

    static Date.trustedNow.getter(v10);
    Date.addingTimeInterval(_:)();
    v14 = *(v12 + 8);
    v14(v10, v11);
    sub_10097D338(v9);
    v14(v9, v11);
  }

  v16 = v0[5];
  v15 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10097D338(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v4 + 16))(v6, a1, v3);
  v12 = sub_100985CA0(&unk_1016AF830, type metadata accessor for SimpleBeaconUpdateService);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = v12;
  (*(v4 + 32))(v15 + v13, v6, v3);
  *(v15 + v14) = v1;
  swift_retain_n();
  v16 = sub_100A838D4(0, 0, v10, &unk_1013CAD50, v15);
  if (*(v1 + 224))
  {
    v17 = *(v1 + 224);

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v18 = *(v1 + 224);
  }

  *(v1 + 224) = v16;
}

uint64_t sub_10097D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v7 = type metadata accessor for ContinuousClock();
  v5[19] = v7;
  v8 = *(v7 - 8);
  v5[20] = v8;
  v9 = *(v8 + 64) + 15;
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10097D688, a5, 0);
}

uint64_t sub_10097D688()
{
  v1 = v0[21];
  v2 = v0[17];
  Date.timeIntervalSinceNow.getter();
  v3 = static Duration.milliseconds(_:)();
  v5 = v4;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10097D77C;
  v7 = v0[21];

  return sub_100D24214(v3, v5, 0, 0, 1);
}

uint64_t sub_10097D77C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 184) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 144);
  if (v0)
  {
    v9 = sub_10097D9E8;
  }

  else
  {
    v9 = sub_10097D904;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10097D904()
{
  v1 = v0[23];
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = v0[21];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = async function pointer to daemon.getter[1];
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_10097DA4C;

    return daemon.getter();
  }
}

uint64_t sub_10097D9E8()
{
  v1 = v0[23];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10097DA4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v12 = *v1;
  *(v3 + 200) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 208) = v6;
  v7 = type metadata accessor for Daemon();
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService);
  *v6 = v12;
  v6[1] = sub_10097DC28;

  return ActorServiceDaemon.getService<A>()(v7, MyServiceDeviceStoreService, v9, v10);
}

uint64_t sub_10097DC28(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v10 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v5 = v3[18];
    v6 = sub_10097E5F4;
  }

  else
  {
    v7 = v3[25];
    v8 = v3[18];

    v6 = sub_10097DD50;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

char *sub_10097DD50()
{
  v59 = v0;
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  v53 = v2;
  v54 = v1;
  v3 = *(v1 + v2);
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 64);
  v7 = (63 - v5) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v56 = v0;
  while (1)
  {
    *(v0 + 232) = v10;
    if (!v6)
    {
      break;
    }

LABEL_10:
    v12 = *(v3 + 56) + 72 * (__clz(__rbit64(v6)) | (v9 << 6));
    v13 = *(v12 + 48);
    v14 = *(v13 + 16);
    v15 = *(v10 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_51;
    }

    v17 = *(v12 + 48);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v16 > *(v10 + 3) >> 1)
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      result = sub_100A5B2CC(result, v18, 1, v10);
      v10 = result;
    }

    v0 = v56;
    v6 &= v6 - 1;
    if (*(v13 + 16))
    {
      if ((*(v10 + 3) >> 1) - *(v10 + 2) < v14)
      {
        goto LABEL_55;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v19 = *(v10 + 2);
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_57;
        }

        *(v10 + 2) = v21;
      }
    }

    else
    {

      if (v14)
      {
        goto LABEL_52;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  v22 = *(v54 + v53);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = -1;
  v27 = -1 << *(*(v54 + v53) + 32);
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & v23;
  v29 = (63 - v27) >> 6;
  v55 = *(v54 + v53);
  result = swift_bridgeObjectRetain_n();
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 240) = v31;
    if (!v28)
    {
      break;
    }

LABEL_31:
    v33 = *(v55 + 56) + 72 * (__clz(__rbit64(v28)) | (v30 << 6));
    v34 = *(v33 + 56);
    v35 = *(v34 + 16);
    v36 = *(v31 + 2);
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_53;
    }

    v38 = *(v33 + 56);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v37 > *(v31 + 3) >> 1)
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      result = sub_100A5B2CC(result, v39, 1, v31);
      v31 = result;
    }

    v0 = v56;
    v28 &= v28 - 1;
    if (*(v34 + 16))
    {
      if ((*(v31 + 3) >> 1) - *(v31 + 2) < v35)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v35)
      {
        v40 = *(v31 + 2);
        v20 = __OFADD__(v40, v35);
        v41 = v40 + v35;
        if (v20)
        {
          goto LABEL_58;
        }

        *(v31 + 2) = v41;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_54;
      }
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      v42 = *(v54 + v53);

      sub_10112CA74(v43, v57);

      *(v0 + 80) = v58;
      v44 = v57[3];
      *(v0 + 48) = v57[2];
      *(v0 + 64) = v44;
      v45 = v57[1];
      *(v0 + 16) = v57[0];
      *(v0 + 32) = v45;
      if (!*(v0 + 48) || (v46 = *(v0 + 80), v47 = v46, sub_10000B3A8(v0 + 16, &qword_1016AF878, &qword_1013CAD68), !v46))
      {
        v47 = SPRepairDeviceContextTypeRepair;
      }

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      *(v0 + 248) = v50;
      v51 = swift_task_alloc();
      *(v0 + 256) = v51;
      *v51 = v0;
      v51[1] = sub_10097E1C0;
      v52 = *(v0 + 216);

      return sub_1008C6A3C(v10, v31, v48, v50);
    }

    v28 = *(v24 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_31;
    }
  }

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
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10097E1C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  v4[33] = v1;

  v7 = v4[31];
  v8 = v4[30];
  v9 = v4[29];
  v10 = v4[18];

  if (v1)
  {
    v11 = sub_10097E850;
  }

  else
  {
    v4[34] = a1;
    v11 = sub_10097E358;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10097E358()
{
  v1 = v0[34];
  v2 = v0[27];
  v3 = v0[18];
  v4 = *(v3 + 168);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v6 = v0[18];
  v7 = *(v6 + 224);
  *(v6 + 224) = 0;

  v8 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  if (*(*(v6 + v8) + 16))
  {
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = sub_10097E4E0;
    v10 = v0[18];

    return sub_10097D024();
  }

  else
  {
    v12 = v0[21];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10097E4E0()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 168);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10097E5F4()
{
  v1 = v0[25];

  v2 = v0[28];
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update serial number list: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[18];
  v10 = *(v9 + 224);
  *(v9 + 224) = 0;

  v11 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  if (*(*(v9 + v11) + 16))
  {
    v12 = swift_task_alloc();
    v0[35] = v12;
    *v12 = v0;
    v12[1] = sub_10097E4E0;
    v13 = v0[18];

    return sub_10097D024();
  }

  else
  {
    v15 = v0[21];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10097E850()
{
  v1 = v0[27];

  v2 = v0[33];
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to update serial number list: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[18];
  v10 = *(v9 + 224);
  *(v9 + 224) = 0;

  v11 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  if (*(*(v9 + v11) + 16))
  {
    v12 = swift_task_alloc();
    v0[35] = v12;
    *v12 = v0;
    v12[1] = sub_10097E4E0;
    v13 = v0[18];

    return sub_10097D024();
  }

  else
  {
    v15 = v0[21];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10097EAAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003633C;

  return sub_10097EBE4(a2);
}

uint64_t sub_10097EB48(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100036434;

  return sub_10097EBE4(a2);
}

uint64_t sub_10097EBE4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v2[14] = MyServiceDevice;
  v10 = *(MyServiceDevice - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_10097ED68, v1, 0);
}

uint64_t sub_10097ED68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_10097C58C(0xD000000000000028, 0x8000000101366590);
  v3 = *(v1 + 16);
  *(v0 + 144) = v3;
  if (v3)
  {
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);
    v6 = *(v0 + 48);
    *(v0 + 192) = *(*(v0 + 112) + 28);
    *(v0 + 152) = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    v7 = *(v5 + 80);
    *(v0 + 196) = v7;
    *(v0 + 160) = *(v5 + 72);
    *(v0 + 168) = 0;
    sub_1009863FC(v6 + ((v7 + 32) & ~v7), v4, type metadata accessor for FindMyServiceDevice);
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_10097EF20;
    v9 = *(v0 + 136);
    v10 = *(v0 + 56);

    return sub_10097F3FC(v9);
  }

  else
  {
    v12 = *(*(v0 + 56) + 232);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 104);
    v16 = *(v0 + 80);
    *(v0 + 40) = _swiftEmptyArrayStorage;
    AsyncStreamProvider.yield(value:transaction:)();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10097EF20(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10097F038, v3, 0);
}

uint64_t sub_10097F038()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 56);
  v9 = *(v0 + 168) + 1;
  v38 = *(v6 + 16);
  v38(v5, v4 + *(v0 + 192), v7);
  v10 = v1;
  sub_100988488(v4, type metadata accessor for FindMyServiceDevice);
  swift_beginAccess();
  v11 = v10;
  v12 = *(v8 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v8 + v3);
  *(v8 + v3) = 0x8000000000000000;
  sub_1010004D4(v11, 0x2000, v5, isUniquelyReferenced_nonNull_native);
  (*(v6 + 8))(v5, v7);
  *(v8 + v3) = v39;
  swift_endAccess();

  if (v9 == v2)
  {
    v14 = *(v0 + 72);
    v37 = *(*(v0 + 56) + 232);
    sub_101125468(0, *(v0 + 144), 0);
    v15 = 0;
    do
    {
      v16 = *(v0 + 128);
      v17 = *(v0 + 112);
      v18 = *(v0 + 88);
      v19 = *(v0 + 80);
      v20 = *(v0 + 64);
      v21 = *(v0 + 96) + 16;
      sub_1009863FC(*(v0 + 48) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + *(v0 + 160) * v15, v16, type metadata accessor for FindMyServiceDevice);
      v38(v19, v16 + *(v17 + 28), v18);
      sub_100988488(v16, type metadata accessor for FindMyServiceDevice);
      swift_storeEnumTagMultiPayload();
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_101125468(v22 > 1, v23 + 1, 1);
      }

      v24 = *(v0 + 144);
      v25 = *(v0 + 80);
      ++v15;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      sub_100986170(v25, _swiftEmptyArrayStorage + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
    }

    while (v15 != v24);
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v34 = *(v0 + 104);
    v35 = *(v0 + 80);
    *(v0 + 40) = _swiftEmptyArrayStorage;
    AsyncStreamProvider.yield(value:transaction:)();

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 168) + 1;
    *(v0 + 168) = v27;
    sub_1009863FC(*(v0 + 48) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + v26 * v27, *(v0 + 136), type metadata accessor for FindMyServiceDevice);
    v28 = swift_task_alloc();
    *(v0 + 176) = v28;
    *v28 = v0;
    v28[1] = sub_10097EF20;
    v29 = *(v0 + 136);
    v30 = *(v0 + 56);

    return sub_10097F3FC(v29);
  }
}

uint64_t sub_10097F3FC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  MyServiceDevice = type metadata accessor for FindMyServiceDevice();
  v2[24] = MyServiceDevice;
  v4 = *(MyServiceDevice - 8);
  v2[25] = v4;
  v2[26] = *(v4 + 64);
  v2[27] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_101696900, &unk_10138B1E0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[32] = v6;
  v7 = *(v6 - 8);
  v2[33] = v7;
  v8 = *(v7 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10097F5A0, v1, 0);
}

uint64_t sub_10097F5A0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = [objc_allocWithZone(SPInternalSimpleBeacon) init];
  *(v0 + 304) = v3;
  v4 = (v2 + *(v1 + 32));
  v5 = *v4;
  v6 = v4[1];
  v7 = String._bridgeToObjectiveC()();
  [v3 setName:v7];

  v8 = *(v2 + *(v1 + 84));
  *(v0 + 556) = v8;
  if (v8 != 1)
  {
    v12 = (*(v0 + 176) + *(*(v0 + 192) + 80));
    *(v0 + 328) = *v12;
    *(v0 + 336) = v12[1];
    v13 = async function pointer to daemon.getter[1];

    v14 = swift_task_alloc();
    *(v0 + 344) = v14;
    *v14 = v0;
    v14[1] = sub_100980140;

    return daemon.getter();
  }

  v9 = [objc_opt_self() defaultStore];
  *(v0 + 312) = v9;
  if (!v9)
  {
    __break(1u);
    return daemon.getter();
  }

  v10 = v9;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_10097F7E0;
  v11 = swift_continuation_init();
  *(v0 + 136) = sub_1000BC4D4(&qword_1016AF870, &qword_1013E3650);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100C70FE4;
  *(v0 + 104) = &unk_10163F0F0;
  *(v0 + 112) = v11;
  [v10 aa_primaryAppleAccountWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10097F7E0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 320) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_100983D54;
  }

  else
  {
    v5 = sub_10097F900;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10097F900()
{
  v1 = *(v0 + 168);

  if (v1 && (v2 = [v1 username]) != 0)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    v4 = [qword_10177C088 destination];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v1)
    {
      goto LABEL_10;
    }
  }

  v5 = v1;
  v6 = [v5 aa_fullName];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:
  v9 = String._bridgeToObjectiveC()();

  if (v8)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 304);
  v12 = *(v0 + 192);
  v13 = *(v0 + 176);
  v14 = [objc_opt_self() handleWithString:v9 formattedName:v10];
  *(v0 + 408) = v14;

  [v11 setOwner:v14];
  [v11 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v12 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v11 setIdentifier:isa];

  v16 = (v13 + *(v12 + 40));
  if (v16[1])
  {
    v17 = *v16;
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v0 + 556);
  v20 = *(v0 + 304);
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  [v20 setDeviceColor:v18];

  v23 = (v22 + v21[11]);
  v24 = *v23;
  v25 = v23[1];
  v26 = String._bridgeToObjectiveC()();
  [v20 setDeviceClass:v26];

  v27 = (v22 + v21[12]);
  v28 = *v27;
  v29 = v27[1];
  v30 = String._bridgeToObjectiveC()();
  [v20 setDeviceModel:v30];

  v31 = (v22 + v21[13]);
  v32 = *v31;
  v33 = v31[1];
  v34 = String._bridgeToObjectiveC()();
  [v20 setRawDeviceModel:v34];

  v35 = (v22 + v21[14]);
  v36 = *v35;
  v37 = v35[1];
  v38 = String._bridgeToObjectiveC()();
  [v20 setDeviceDisplayName:v38];

  v39 = [objc_allocWithZone(NSNumber) initWithBool:*(v22 + v21[19])];
  [v20 setThisDevice:v39];

  v40 = [objc_allocWithZone(NSNumber) initWithBool:v19];
  [v20 setIsMine:v40];

  v41 = qword_1013CB140[*(v22 + v21[30])];
  v42 = *(v0 + 304);
  v43 = *(v0 + 192);
  v44 = *(v0 + 176);
  [v42 setRepairState:v41];
  v45 = [objc_allocWithZone(NSNumber) initWithBool:*(v44 + *(v43 + 116))];
  [v42 setIsRepairCapable:v45];

  [v42 setBatteryLevel:0];
  v46 = v44 + *(v43 + 60);
  if ((*(v46 + 8) & 1) == 0)
  {
    v47 = *(v0 + 304);
    v48 = [objc_allocWithZone(NSNumber) initWithDouble:*v46];
    [v47 setBatteryPercentage:v48];
  }

  v49 = *(v0 + 192);
  v50 = *(v0 + 176);
  v51 = *(v50 + *(v49 + 100));
  *(v0 + 557) = v51;
  if (v51 == 1)
  {
    v52 = *(v0 + 256);
    v53 = *(v0 + 264);
    v54 = *(v0 + 248);
    sub_1000D2A70(v50 + *(v49 + 88), v54, &unk_101696900, &unk_10138B1E0);
    if ((*(v53 + 48))(v54, 1, v52) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v56 = *(v0 + 296);
      v55 = *(v0 + 304);
      v57 = *(v0 + 256);
      v58 = *(v0 + 264);
      (*(v58 + 32))(v56, *(v0 + 248), v57);
      v59 = objc_allocWithZone(SPLostModeInfo);
      v60 = Date._bridgeToObjectiveC()().super.isa;
      v61 = [v59 initWithMessage:0 email:0 phoneNumber:0 timestamp:v60];

      [v55 setLostModeInfo:v61];
      (*(v58 + 8))(v56, v57);
    }
  }

  v62 = *(v0 + 256);
  v63 = *(v0 + 264);
  v64 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v64, &unk_101696900, &unk_10138B1E0);
  v65 = *(v63 + 48);
  *(v0 + 416) = v65;
  *(v0 + 424) = (v63 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v65(v64, 1, v62) == 1)
  {
    v66 = 0;
  }

  else
  {
    v67 = *(v0 + 256);
    v68 = *(v0 + 264);
    v69 = *(v0 + 240);
    v66 = Date._bridgeToObjectiveC()().super.isa;
    (*(v68 + 8))(v69, v67);
  }

  v70 = *(v0 + 256);
  v71 = *(v0 + 232);
  v72 = *(v0 + 192);
  v73 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v66];

  sub_1000D2A70(v73 + *(v72 + 96), v71, &unk_101696900, &unk_10138B1E0);
  if (v65(v71, 1, v70) == 1)
  {
    v74 = 0;
  }

  else
  {
    v75 = *(v0 + 256);
    v76 = *(v0 + 264);
    v77 = *(v0 + 232);
    v74 = Date._bridgeToObjectiveC()().super.isa;
    (*(v76 + 8))(v77, v75);
  }

  v78 = *(v0 + 304);
  v79 = *(v0 + 192);
  v80 = *(v0 + 176);
  [v78 setWipedTimestamp:v74];

  [v78 setConnected:0];
  if (*(v80 + *(v79 + 36)) <= 1u && *(v80 + *(v79 + 36)))
  {
    v81 = 1;
  }

  else
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v82 = *(v0 + 304);
  v83 = *(v0 + 192);
  v84 = *(v0 + 176);

  [v82 setOnline:v81 & 1];
  v85 = [objc_allocWithZone(NSNumber) initWithBool:*(v84 + *(v83 + 68))];
  [v82 setLowPowerMode:v85];

  v86 = (v84 + *(v83 + 24));
  if (v86[1])
  {
    v87 = *v86;
    v88 = String._bridgeToObjectiveC()();
  }

  else
  {
    v88 = 0;
  }

  [*(v0 + 304) setSerialNumber:v88];

  v89 = async function pointer to daemon.getter[1];
  v90 = swift_task_alloc();
  *(v0 + 432) = v90;
  *v90 = v0;
  v90[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_100980140(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v12 = *v1;
  *(v3 + 352) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 360) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for FamilyCircleService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&unk_1016AF840, type metadata accessor for FamilyCircleService);
  *v6 = v12;
  v6[1] = sub_10098031C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10098031C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v5 = *v2;
  *(*v2 + 368) = a1;

  v6 = *(v3 + 352);
  v7 = *(v3 + 184);
  if (v1)
  {

    v8 = sub_1009844F4;
  }

  else
  {

    v8 = sub_100980480;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100980480()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0();
  *(v0 + 376) = v5;
  if (v5)
  {
    v6 = v3;
    v7 = v4;
    v8 = v5;
    v9 = swift_task_alloc();
    *(v0 + 384) = v9;
    *v9 = v0;
    v9[1] = sub_100980C58;
    v10 = *(v0 + 368);

    return sub_100D4C7CC(v6, v7, v8);
  }

  else
  {
    v12 = *(v0 + 368);

    v13 = *(v0 + 328);
    v14 = *(v0 + 336);
    v15 = String._bridgeToObjectiveC()();

    v16 = *(v0 + 304);
    v17 = *(v0 + 192);
    v18 = *(v0 + 176);
    v19 = [objc_opt_self() handleWithString:v15 formattedName:0];
    *(v0 + 408) = v19;

    [v16 setOwner:v19];
    [v16 setType:SPBeaconTypeFindMyService];
    *(v0 + 552) = *(v17 + 28);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v16 setIdentifier:isa];

    v21 = (v18 + *(v17 + 40));
    if (v21[1])
    {
      v22 = *v21;
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v0 + 556);
    v25 = *(v0 + 304);
    v26 = *(v0 + 192);
    v27 = *(v0 + 176);
    [v25 setDeviceColor:v23];

    v28 = (v27 + v26[11]);
    v29 = *v28;
    v30 = v28[1];
    v31 = String._bridgeToObjectiveC()();
    [v25 setDeviceClass:v31];

    v32 = (v27 + v26[12]);
    v33 = *v32;
    v34 = v32[1];
    v35 = String._bridgeToObjectiveC()();
    [v25 setDeviceModel:v35];

    v36 = (v27 + v26[13]);
    v37 = *v36;
    v38 = v36[1];
    v39 = String._bridgeToObjectiveC()();
    [v25 setRawDeviceModel:v39];

    v40 = (v27 + v26[14]);
    v41 = *v40;
    v42 = v40[1];
    v43 = String._bridgeToObjectiveC()();
    [v25 setDeviceDisplayName:v43];

    v44 = [objc_allocWithZone(NSNumber) initWithBool:*(v27 + v26[19])];
    [v25 setThisDevice:v44];

    v45 = [objc_allocWithZone(NSNumber) initWithBool:v24];
    [v25 setIsMine:v45];

    v46 = qword_1013CB140[*(v27 + v26[30])];
    v47 = *(v0 + 304);
    v48 = *(v0 + 192);
    v49 = *(v0 + 176);
    [v47 setRepairState:v46];
    v50 = [objc_allocWithZone(NSNumber) initWithBool:*(v49 + *(v48 + 116))];
    [v47 setIsRepairCapable:v50];

    [v47 setBatteryLevel:0];
    v51 = v49 + *(v48 + 60);
    if ((*(v51 + 8) & 1) == 0)
    {
      v52 = *(v0 + 304);
      v53 = [objc_allocWithZone(NSNumber) initWithDouble:*v51];
      [v52 setBatteryPercentage:v53];
    }

    v54 = *(v0 + 192);
    v55 = *(v0 + 176);
    v56 = *(v55 + *(v54 + 100));
    *(v0 + 557) = v56;
    if (v56 == 1)
    {
      v57 = *(v0 + 256);
      v58 = *(v0 + 264);
      v59 = *(v0 + 248);
      sub_1000D2A70(v55 + *(v54 + 88), v59, &unk_101696900, &unk_10138B1E0);
      if ((*(v58 + 48))(v59, 1, v57) == 1)
      {
        sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
      }

      else
      {
        v61 = *(v0 + 296);
        v60 = *(v0 + 304);
        v62 = *(v0 + 256);
        v63 = *(v0 + 264);
        (*(v63 + 32))(v61, *(v0 + 248), v62);
        v64 = objc_allocWithZone(SPLostModeInfo);
        v65 = Date._bridgeToObjectiveC()().super.isa;
        v66 = [v64 initWithMessage:0 email:0 phoneNumber:0 timestamp:v65];

        [v60 setLostModeInfo:v66];
        (*(v63 + 8))(v61, v62);
      }
    }

    v67 = *(v0 + 256);
    v68 = *(v0 + 264);
    v69 = *(v0 + 240);
    sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v69, &unk_101696900, &unk_10138B1E0);
    v70 = *(v68 + 48);
    *(v0 + 416) = v70;
    *(v0 + 424) = (v68 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v70(v69, 1, v67) == 1)
    {
      v71 = 0;
    }

    else
    {
      v72 = *(v0 + 256);
      v73 = *(v0 + 264);
      v74 = *(v0 + 240);
      v71 = Date._bridgeToObjectiveC()().super.isa;
      (*(v73 + 8))(v74, v72);
    }

    v75 = *(v0 + 256);
    v76 = *(v0 + 232);
    v77 = *(v0 + 192);
    v78 = *(v0 + 176);
    [*(v0 + 304) setLockedTimestamp:v71];

    sub_1000D2A70(v78 + *(v77 + 96), v76, &unk_101696900, &unk_10138B1E0);
    if (v70(v76, 1, v75) == 1)
    {
      v79 = 0;
    }

    else
    {
      v80 = *(v0 + 256);
      v81 = *(v0 + 264);
      v82 = *(v0 + 232);
      v79 = Date._bridgeToObjectiveC()().super.isa;
      (*(v81 + 8))(v82, v80);
    }

    v83 = *(v0 + 304);
    v84 = *(v0 + 192);
    v85 = *(v0 + 176);
    [v83 setWipedTimestamp:v79];

    [v83 setConnected:0];
    if (*(v85 + *(v84 + 36)) <= 1u && *(v85 + *(v84 + 36)))
    {
      v86 = 1;
    }

    else
    {
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v87 = *(v0 + 304);
    v88 = *(v0 + 192);
    v89 = *(v0 + 176);

    [v87 setOnline:v86 & 1];
    v90 = [objc_allocWithZone(NSNumber) initWithBool:*(v89 + *(v88 + 68))];
    [v87 setLowPowerMode:v90];

    v91 = (v89 + *(v88 + 24));
    if (v91[1])
    {
      v92 = *v91;
      v93 = String._bridgeToObjectiveC()();
    }

    else
    {
      v93 = 0;
    }

    [*(v0 + 304) setSerialNumber:v93];

    v94 = async function pointer to daemon.getter[1];
    v95 = swift_task_alloc();
    *(v0 + 432) = v95;
    *v95 = v0;
    v95[1] = sub_100981524;

    return daemon.getter();
  }
}

uint64_t sub_100980C58(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 384);
  v9 = *v3;

  v10 = *(v6 + 376);
  v11 = *(v6 + 184);
  if (v2)
  {

    v12 = sub_100984C14;
  }

  else
  {

    *(v7 + 392) = a2;
    *(v7 + 400) = a1;
    v12 = sub_100980DCC;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100980DCC()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);

  v3 = *(v0 + 400);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = String._bridgeToObjectiveC()();

  if (v1)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v11 = [objc_opt_self() handleWithString:v6 formattedName:v7];
  *(v0 + 408) = v11;

  [v8 setOwner:v11];
  [v8 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v9 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v8 setIdentifier:isa];

  v13 = (v10 + *(v9 + 40));
  if (v13[1])
  {
    v14 = *v13;
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + 556);
  v17 = *(v0 + 304);
  v18 = *(v0 + 192);
  v19 = *(v0 + 176);
  [v17 setDeviceColor:v15];

  v20 = (v19 + v18[11]);
  v21 = *v20;
  v22 = v20[1];
  v23 = String._bridgeToObjectiveC()();
  [v17 setDeviceClass:v23];

  v24 = (v19 + v18[12]);
  v25 = *v24;
  v26 = v24[1];
  v27 = String._bridgeToObjectiveC()();
  [v17 setDeviceModel:v27];

  v28 = (v19 + v18[13]);
  v29 = *v28;
  v30 = v28[1];
  v31 = String._bridgeToObjectiveC()();
  [v17 setRawDeviceModel:v31];

  v32 = (v19 + v18[14]);
  v33 = *v32;
  v34 = v32[1];
  v35 = String._bridgeToObjectiveC()();
  [v17 setDeviceDisplayName:v35];

  v36 = [objc_allocWithZone(NSNumber) initWithBool:*(v19 + v18[19])];
  [v17 setThisDevice:v36];

  v37 = [objc_allocWithZone(NSNumber) initWithBool:v16];
  [v17 setIsMine:v37];

  v38 = qword_1013CB140[*(v19 + v18[30])];
  v39 = *(v0 + 304);
  v40 = *(v0 + 192);
  v41 = *(v0 + 176);
  [v39 setRepairState:v38];
  v42 = [objc_allocWithZone(NSNumber) initWithBool:*(v41 + *(v40 + 116))];
  [v39 setIsRepairCapable:v42];

  [v39 setBatteryLevel:0];
  v43 = v41 + *(v40 + 60);
  if ((*(v43 + 8) & 1) == 0)
  {
    v44 = *(v0 + 304);
    v45 = [objc_allocWithZone(NSNumber) initWithDouble:*v43];
    [v44 setBatteryPercentage:v45];
  }

  v46 = *(v0 + 192);
  v47 = *(v0 + 176);
  v48 = *(v47 + *(v46 + 100));
  *(v0 + 557) = v48;
  if (v48 == 1)
  {
    v49 = *(v0 + 256);
    v50 = *(v0 + 264);
    v51 = *(v0 + 248);
    sub_1000D2A70(v47 + *(v46 + 88), v51, &unk_101696900, &unk_10138B1E0);
    if ((*(v50 + 48))(v51, 1, v49) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v53 = *(v0 + 296);
      v52 = *(v0 + 304);
      v54 = *(v0 + 256);
      v55 = *(v0 + 264);
      (*(v55 + 32))(v53, *(v0 + 248), v54);
      v56 = objc_allocWithZone(SPLostModeInfo);
      v57 = Date._bridgeToObjectiveC()().super.isa;
      v58 = [v56 initWithMessage:0 email:0 phoneNumber:0 timestamp:v57];

      [v52 setLostModeInfo:v58];
      (*(v55 + 8))(v53, v54);
    }
  }

  v59 = *(v0 + 256);
  v60 = *(v0 + 264);
  v61 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v61, &unk_101696900, &unk_10138B1E0);
  v62 = *(v60 + 48);
  *(v0 + 416) = v62;
  *(v0 + 424) = (v60 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v62(v61, 1, v59) == 1)
  {
    v63 = 0;
  }

  else
  {
    v64 = *(v0 + 256);
    v65 = *(v0 + 264);
    v66 = *(v0 + 240);
    v63 = Date._bridgeToObjectiveC()().super.isa;
    (*(v65 + 8))(v66, v64);
  }

  v67 = *(v0 + 256);
  v68 = *(v0 + 232);
  v69 = *(v0 + 192);
  v70 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v63];

  sub_1000D2A70(v70 + *(v69 + 96), v68, &unk_101696900, &unk_10138B1E0);
  if (v62(v68, 1, v67) == 1)
  {
    v71 = 0;
  }

  else
  {
    v72 = *(v0 + 256);
    v73 = *(v0 + 264);
    v74 = *(v0 + 232);
    v71 = Date._bridgeToObjectiveC()().super.isa;
    (*(v73 + 8))(v74, v72);
  }

  v75 = *(v0 + 304);
  v76 = *(v0 + 192);
  v77 = *(v0 + 176);
  [v75 setWipedTimestamp:v71];

  [v75 setConnected:0];
  if (*(v77 + *(v76 + 36)) <= 1u && *(v77 + *(v76 + 36)))
  {
    v78 = 1;
  }

  else
  {
    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v79 = *(v0 + 304);
  v80 = *(v0 + 192);
  v81 = *(v0 + 176);

  [v79 setOnline:v78 & 1];
  v82 = [objc_allocWithZone(NSNumber) initWithBool:*(v81 + *(v80 + 68))];
  [v79 setLowPowerMode:v82];

  v83 = (v81 + *(v80 + 24));
  if (v83[1])
  {
    v84 = *v83;
    v85 = String._bridgeToObjectiveC()();
  }

  else
  {
    v85 = 0;
  }

  [*(v0 + 304) setSerialNumber:v85];

  v86 = async function pointer to daemon.getter[1];
  v87 = swift_task_alloc();
  *(v0 + 432) = v87;
  *v87 = v0;
  v87[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_100981524(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 432);
  v12 = *v1;
  v3[55] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[56] = v6;
  v7 = type metadata accessor for Daemon();
  v3[57] = v7;
  v8 = type metadata accessor for LegacyServiceContainer();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer);
  *v6 = v12;
  v6[1] = sub_100981704;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100981704(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  v4[58] = a1;
  v4[59] = v1;

  if (v1)
  {
    v7 = v4[55];

    v8 = v4[23];
    v9 = sub_1009819E4;
  }

  else
  {
    v9 = sub_100981848;
    v8 = a1;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100981848()
{
  v1 = v0[58];
  v2 = v0[59];
  sub_10001B108();
  v0[60] = v3;
  v4 = v0[57];
  v5 = v0[55];
  if (v2)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_100981970;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon);
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_1009820D8;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100981970()
{
  v1 = v0[58];
  v2 = v0[55];

  v3 = v0[23];

  return _swift_task_switch(sub_1009819E4, v3, 0);
}

uint64_t sub_1009819E4()
{
  *(v0 + 144) = _swiftEmptyDictionarySingleton;
  *(v0 + 504) = 0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = SPBeaconTaskNameLocating;
  static Date.trustedNow.getter(v1);
  v7 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = [v7 initWithName:v6 lastUpdated:isa error:0 state:2];

  v10 = *(v3 + 8);
  *(v0 + 512) = v10;
  v10(v1, v2);
  sub_1001DFD34(v9, v6);
  if (*(v5 + *(v4 + 108)) == 1)
  {
    v11 = *(v0 + 216);
    v12 = *(v0 + 200);
    sub_1009863FC(*(v0 + 176), v11, type metadata accessor for FindMyServiceDevice);
    v13 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v0 + 520) = v14;
    *(v14 + 16) = 0;
    sub_100986170(v11, v14 + v13, type metadata accessor for FindMyServiceDevice);
    v15 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    v16 = swift_task_alloc();
    *(v0 + 528) = v16;
    v17 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v16 = v0;
    v16[1] = sub_100983014;
    v18 = sub_1009860E0;
    v19 = v0 + 160;
    v20 = v14;
LABEL_5:

    return unsafeBlocking<A>(context:_:)(v19, 0xD000000000000019, 0x80000001013CA9B0, v18, v20, v17);
  }

  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  if (*(v22 + *(v21 + 112)) == 1)
  {
    v23 = *(v0 + 504);
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);
    sub_1009863FC(v22, v24, type metadata accessor for FindMyServiceDevice);
    v26 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v0 + 536) = v27;
    *(v27 + 16) = v23;
    sub_100986170(v24, v27 + v26, type metadata accessor for FindMyServiceDevice);
    v28 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v29 = swift_task_alloc();
    *(v0 + 544) = v29;
    v17 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v29 = v0;
    v29[1] = sub_100983860;
    v18 = sub_1009860C8;
    v19 = v0 + 152;
    v20 = v27;
    goto LABEL_5;
  }

  v30 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v32 = *(v0 + 416);
    v31 = *(v0 + 424);
    v33 = *(v0 + 256);
    v34 = *(v0 + 224);
    sub_1000D2A70(v22 + *(v21 + 88), v34, &unk_101696900, &unk_10138B1E0);
    if (v32(v34, 1, v33) == 1)
    {
      v36 = *(v0 + 416);
      v35 = *(v0 + 424);
      v37 = (v0 + 272);
      v38 = *(v0 + 272);
      v39 = *(v0 + 256);
      v40 = *(v0 + 224);
      v41 = v30;
      static Date.trustedNow.getter(v38);
      if (v36(v40, 1, v39) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }

      v42 = 0;
      v64 = 2;
      v43 = v30;
      goto LABEL_16;
    }

    v37 = (v0 + 272);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
    v46 = v30;
    v42 = 0;
    v64 = 2;
  }

  else
  {
    v37 = (v0 + 288);
    v44 = *(v0 + 288);
    v45 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v44);
    v64 = 0;
    v42 = 2;
  }

  v43 = v30;
LABEL_16:
  v47 = *v37;
  v48 = *(v0 + 512);
  v66 = *(v0 + 408);
  v67 = *(v0 + 504);
  v65 = *(v0 + 304);
  v63 = *(v0 + 288);
  v68 = *(v0 + 296);
  v69 = *(v0 + 280);
  v49 = *(v0 + 264);
  v50 = *(v0 + 256);
  v70 = *(v0 + 272);
  v71 = *(v0 + 248);
  v72 = *(v0 + 240);
  v73 = *(v0 + 232);
  v74 = *(v0 + 224);
  v75 = *(v0 + 216);
  v51 = objc_allocWithZone(SPBeaconTaskInformation);
  v52 = Date._bridgeToObjectiveC()().super.isa;
  v53 = [v51 initWithName:v43 lastUpdated:v52 error:0 state:v42];

  v48(v47, v50);
  sub_1001DFD34(v53, v43);
  v54 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v63);
  v55 = objc_allocWithZone(SPBeaconTaskInformation);
  v56 = Date._bridgeToObjectiveC()().super.isa;
  v57 = [v55 initWithName:v54 lastUpdated:v56 error:0 state:v64];

  v48(v63, v50);
  sub_1001DFD34(v57, v54);
  v58 = *(v0 + 144);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v65 setTaskInformation:v59];

  v60 = *(v0 + 8);
  v61 = *(v0 + 304);

  return v60(v61);
}

uint64_t sub_1009820D8()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[23];

  return _swift_task_switch(sub_100982150, v3, 0);
}

uint64_t sub_100982150()
{
  *(v0 + 144) = _swiftEmptyDictionarySingleton;
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_locationFetchService);
    *(v0 + 488) = v2;

    return _swift_task_switch(sub_1009828AC, v2, 0);
  }

  *(v0 + 504) = 0;
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = SPBeaconTaskNameLocating;
  static Date.trustedNow.getter(v3);
  v9 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithName:v8 lastUpdated:isa error:0 state:2];

  v12 = *(v5 + 8);
  *(v0 + 512) = v12;
  v12(v3, v4);
  sub_1001DFD34(v11, v8);
  if (*(v7 + *(v6 + 108)) == 1)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_1009863FC(*(v0 + 176), v13, type metadata accessor for FindMyServiceDevice);
    v15 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v0 + 520) = v16;
    *(v16 + 16) = 0;
    sub_100986170(v13, v16 + v15, type metadata accessor for FindMyServiceDevice);
    v17 = async function pointer to unsafeBlocking<A>(context:_:)[1];
    v18 = swift_task_alloc();
    *(v0 + 528) = v18;
    v19 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v18 = v0;
    v18[1] = sub_100983014;
    v20 = sub_1009860E0;
    v21 = v0 + 160;
    v22 = v16;
LABEL_9:

    return unsafeBlocking<A>(context:_:)(v21, 0xD000000000000019, 0x80000001013CA9B0, v20, v22, v19);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  if (*(v24 + *(v23 + 112)) == 1)
  {
    v25 = *(v0 + 504);
    v26 = *(v0 + 216);
    v27 = *(v0 + 200);
    sub_1009863FC(v24, v26, type metadata accessor for FindMyServiceDevice);
    v28 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v29 = swift_allocObject();
    *(v0 + 536) = v29;
    *(v29 + 16) = v25;
    sub_100986170(v26, v29 + v28, type metadata accessor for FindMyServiceDevice);
    v30 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v31 = swift_task_alloc();
    *(v0 + 544) = v31;
    v19 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v31 = v0;
    v31[1] = sub_100983860;
    v20 = sub_1009860C8;
    v21 = v0 + 152;
    v22 = v29;
    goto LABEL_9;
  }

  v32 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v34 = *(v0 + 416);
    v33 = *(v0 + 424);
    v35 = *(v0 + 256);
    v36 = *(v0 + 224);
    sub_1000D2A70(v24 + *(v23 + 88), v36, &unk_101696900, &unk_10138B1E0);
    if (v34(v36, 1, v35) == 1)
    {
      v38 = *(v0 + 416);
      v37 = *(v0 + 424);
      v39 = (v0 + 272);
      v40 = *(v0 + 272);
      v41 = *(v0 + 256);
      v42 = *(v0 + 224);
      v43 = v32;
      static Date.trustedNow.getter(v40);
      if (v38(v42, 1, v41) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }

      v44 = 0;
      v66 = 2;
      v45 = v32;
      goto LABEL_20;
    }

    v39 = (v0 + 272);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
    v48 = v32;
    v44 = 0;
    v66 = 2;
  }

  else
  {
    v39 = (v0 + 288);
    v46 = *(v0 + 288);
    v47 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v46);
    v66 = 0;
    v44 = 2;
  }

  v45 = v32;
LABEL_20:
  v49 = *v39;
  v50 = *(v0 + 512);
  v68 = *(v0 + 408);
  v69 = *(v0 + 504);
  v67 = *(v0 + 304);
  v65 = *(v0 + 288);
  v70 = *(v0 + 296);
  v71 = *(v0 + 280);
  v51 = *(v0 + 264);
  v52 = *(v0 + 256);
  v72 = *(v0 + 272);
  v73 = *(v0 + 248);
  v74 = *(v0 + 240);
  v75 = *(v0 + 232);
  v76 = *(v0 + 224);
  v77 = *(v0 + 216);
  v53 = objc_allocWithZone(SPBeaconTaskInformation);
  v54 = Date._bridgeToObjectiveC()().super.isa;
  v55 = [v53 initWithName:v45 lastUpdated:v54 error:0 state:v44];

  v50(v49, v52);
  sub_1001DFD34(v55, v45);
  v56 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v65);
  v57 = objc_allocWithZone(SPBeaconTaskInformation);
  v58 = Date._bridgeToObjectiveC()().super.isa;
  v59 = [v57 initWithName:v56 lastUpdated:v58 error:0 state:v66];

  v50(v65, v52);
  sub_1001DFD34(v59, v56);
  v60 = *(v0 + 144);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v61 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v67 setTaskInformation:v61];

  v62 = *(v0 + 8);
  v63 = *(v0 + 304);

  return v62(v63);
}

uint64_t sub_1009828AC()
{
  v1 = v0[23];
  v0[62] = *(v0[61] + 216);

  return _swift_task_switch(sub_100982928, v1, 0);
}

uint64_t sub_100982928()
{
  v1 = sub_1005C8A30(*(v0 + 176) + *(v0 + 552), *(v0 + 496));

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  v74 = *(v0 + 480);
  *(v0 + 504) = v74;
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = SPBeaconTaskNameLocating;
  static Date.trustedNow.getter(v3);
  v9 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithName:v8 lastUpdated:isa error:0 state:v2];

  v12 = *(v5 + 8);
  *(v0 + 512) = v12;
  v12(v3, v4);
  sub_1001DFD34(v11, v8);
  if (*(v7 + *(v6 + 108)) == 1)
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_1009863FC(*(v0 + 176), v13, type metadata accessor for FindMyServiceDevice);
    v15 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v0 + 520) = v16;
    *(v16 + 16) = v74;
    sub_100986170(v13, v16 + v15, type metadata accessor for FindMyServiceDevice);
    v17 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v18 = swift_task_alloc();
    *(v0 + 528) = v18;
    v19 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v18 = v0;
    v18[1] = sub_100983014;
    v20 = sub_1009860E0;
    v21 = v0 + 160;
LABEL_8:

    return unsafeBlocking<A>(context:_:)(v21, 0xD000000000000019, 0x80000001013CA9B0, v20, v16, v19);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 176);
  if (*(v23 + *(v22 + 112)) == 1)
  {
    v24 = *(v0 + 504);
    v25 = *(v0 + 216);
    v26 = *(v0 + 200);
    sub_1009863FC(v23, v25, type metadata accessor for FindMyServiceDevice);
    v27 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v16 = swift_allocObject();
    *(v0 + 536) = v16;
    *(v16 + 16) = v24;
    sub_100986170(v25, v16 + v27, type metadata accessor for FindMyServiceDevice);
    v28 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v29 = swift_task_alloc();
    *(v0 + 544) = v29;
    v19 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v29 = v0;
    v29[1] = sub_100983860;
    v20 = sub_1009860C8;
    v21 = v0 + 152;
    goto LABEL_8;
  }

  v30 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v32 = *(v0 + 416);
    v31 = *(v0 + 424);
    v33 = *(v0 + 256);
    v34 = *(v0 + 224);
    sub_1000D2A70(v23 + *(v22 + 88), v34, &unk_101696900, &unk_10138B1E0);
    if (v32(v34, 1, v33) == 1)
    {
      v36 = *(v0 + 416);
      v35 = *(v0 + 424);
      v37 = (v0 + 272);
      v38 = *(v0 + 272);
      v39 = *(v0 + 256);
      v40 = *(v0 + 224);
      v41 = v30;
      static Date.trustedNow.getter(v38);
      if (v36(v40, 1, v39) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v37 = (v0 + 272);
      (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
      v45 = v30;
    }

    v44 = 0;
    v63 = 2;
  }

  else
  {
    v37 = (v0 + 288);
    v42 = *(v0 + 288);
    v43 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v42);
    v63 = 0;
    v44 = 2;
  }

  v46 = *v37;
  v47 = *(v0 + 512);
  v65 = *(v0 + 408);
  v66 = *(v0 + 504);
  v64 = *(v0 + 304);
  v48 = *(v0 + 288);
  v67 = *(v0 + 296);
  v68 = *(v0 + 280);
  v49 = *(v0 + 264);
  v50 = *(v0 + 256);
  v69 = *(v0 + 272);
  v70 = *(v0 + 248);
  v71 = *(v0 + 240);
  v72 = *(v0 + 232);
  v73 = *(v0 + 224);
  v75 = *(v0 + 216);
  v51 = objc_allocWithZone(SPBeaconTaskInformation);
  v52 = Date._bridgeToObjectiveC()().super.isa;
  v53 = [v51 initWithName:v30 lastUpdated:v52 error:0 state:v44];

  v47(v46, v50);
  sub_1001DFD34(v53, v30);
  v54 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v48);
  v55 = objc_allocWithZone(SPBeaconTaskInformation);
  v56 = Date._bridgeToObjectiveC()().super.isa;
  v57 = [v55 initWithName:v54 lastUpdated:v56 error:0 state:v63];

  v47(v48, v50);
  sub_1001DFD34(v57, v54);
  v58 = *(v0 + 144);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v64 setTaskInformation:v59];

  v60 = *(v0 + 8);
  v61 = *(v0 + 304);

  return v60(v61);
}

uint64_t sub_100983014()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_100983140, v3, 0);
}

uint64_t sub_100983140()
{
  v1 = *(v0 + 160);
  v2 = (v0 + 144);
  if (v1)
  {
    if ([*(v0 + 160) state])
    {
      goto LABEL_5;
    }

    v3 = *(v0 + 512);
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    static Date.trustedNow.getter(v4);
    v8 = [v1 lastUpdated];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v10 = v9;
    v3(v5, v7);
    v3(v4, v7);
    if (v10 <= 120.0)
    {
LABEL_5:
      v18 = SPBeaconTaskNamePlaySound;
      v19 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFF5A8(v1, v18, isUniquelyReferenced_nonNull_native);

      *v2 = v19;
    }

    else
    {
      v11 = *(v0 + 512);
      v12 = *(v0 + 288);
      v13 = *(v0 + 256);
      v14 = SPBeaconTaskNamePlaySound;
      static Date.trustedNow.getter(v12);
      v15 = objc_allocWithZone(SPBeaconTaskInformation);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v17 = [v15 initWithName:v14 lastUpdated:isa error:0 state:2];

      v11(v12, v13);
      sub_1001DFD34(v17, v14);
    }
  }

  else
  {
    v21 = *(v0 + 512);
    v22 = *(v0 + 288);
    v23 = *(v0 + 256);
    v24 = *(v0 + 264);
    v25 = SPBeaconTaskNamePlaySound;
    static Date.trustedNow.getter(v22);
    v26 = objc_allocWithZone(SPBeaconTaskInformation);
    v27 = Date._bridgeToObjectiveC()().super.isa;
    v28 = [v26 initWithName:v25 lastUpdated:v27 error:0 state:2];

    v21(v22, v23);
    sub_1001DFD34(v28, v25);
  }

  v29 = *(v0 + 192);
  v30 = *(v0 + 176);
  if (*(v30 + *(v29 + 112)) == 1)
  {
    v31 = *(v0 + 504);
    v32 = *(v0 + 216);
    v33 = *(v0 + 200);
    sub_1009863FC(v30, v32, type metadata accessor for FindMyServiceDevice);
    v34 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v0 + 536) = v35;
    *(v35 + 16) = v31;
    sub_100986170(v32, v35 + v34, type metadata accessor for FindMyServiceDevice);
    v36 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v37 = swift_task_alloc();
    *(v0 + 544) = v37;
    v38 = sub_1000BC4D4(&unk_1016AF860, &qword_1013CAD40);
    *v37 = v0;
    v37[1] = sub_100983860;

    return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000019, 0x80000001013CA9B0, sub_1009860C8, v35, v38);
  }

  else
  {
    v39 = SPBeaconTaskNameEnableLostMode;
    if (*(v0 + 557) == 1)
    {
      v41 = *(v0 + 416);
      v40 = *(v0 + 424);
      v42 = *(v0 + 256);
      v43 = *(v0 + 224);
      sub_1000D2A70(v30 + *(v29 + 88), v43, &unk_101696900, &unk_10138B1E0);
      v44 = v41(v43, 1, v42);
      v45 = *(v0 + 256);
      v46 = *(v0 + 224);
      if (v44 == 1)
      {
        v48 = *(v0 + 416);
        v47 = *(v0 + 424);
        v49 = (v0 + 272);
        v50 = *(v0 + 272);
        v51 = v39;
        static Date.trustedNow.getter(v50);
        if (v48(v46, 1, v45) != 1)
        {
          sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v49 = (v0 + 272);
        (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
        v55 = v39;
      }

      v54 = 0;
      v73 = 2;
    }

    else
    {
      v49 = (v0 + 288);
      v52 = *(v0 + 288);
      v53 = SPBeaconTaskNameEnableLostMode;
      static Date.trustedNow.getter(v52);
      v73 = 0;
      v54 = 2;
    }

    v56 = *v49;
    v57 = *(v0 + 512);
    v75 = *(v0 + 408);
    v76 = *(v0 + 504);
    v74 = *(v0 + 304);
    v58 = *(v0 + 288);
    v77 = *(v0 + 296);
    v78 = *(v0 + 280);
    v59 = *(v0 + 264);
    v60 = *(v0 + 256);
    v79 = *(v0 + 272);
    v80 = *(v0 + 248);
    v81 = *(v0 + 240);
    v82 = *(v0 + 232);
    v83 = *(v0 + 224);
    v84 = *(v0 + 216);
    v61 = objc_allocWithZone(SPBeaconTaskInformation);
    v62 = Date._bridgeToObjectiveC()().super.isa;
    v63 = [v61 initWithName:v39 lastUpdated:v62 error:0 state:v54];

    v57(v56, v60);
    sub_1001DFD34(v63, v39);
    v64 = SPBeaconTaskNameDisableLostMode;
    static Date.trustedNow.getter(v58);
    v65 = objc_allocWithZone(SPBeaconTaskInformation);
    v66 = Date._bridgeToObjectiveC()().super.isa;
    v67 = [v65 initWithName:v64 lastUpdated:v66 error:0 state:v73];

    v57(v58, v60);
    sub_1001DFD34(v67, v64);
    v68 = *(v0 + 144);
    type metadata accessor for SPBeaconTaskName(0);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
    v69 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v74 setTaskInformation:v69];

    v70 = *(v0 + 8);
    v71 = *(v0 + 304);

    return v70(v71);
  }
}

uint64_t sub_100983860()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_10098398C, v3, 0);
}

uint64_t sub_10098398C()
{
  sub_1001DFD34(*(v0 + 152), SPBeaconTaskNameStopSound);
  v1 = SPBeaconTaskNameEnableLostMode;
  if (*(v0 + 557) == 1)
  {
    v3 = *(v0 + 416);
    v2 = *(v0 + 424);
    v4 = *(v0 + 256);
    v5 = *(v0 + 224);
    sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 88), v5, &unk_101696900, &unk_10138B1E0);
    v6 = v3(v5, 1, v4);
    v7 = *(v0 + 256);
    v8 = *(v0 + 224);
    if (v6 == 1)
    {
      v10 = *(v0 + 416);
      v9 = *(v0 + 424);
      v11 = (v0 + 272);
      v12 = *(v0 + 272);
      v13 = v1;
      static Date.trustedNow.getter(v12);
      if (v10(v8, 1, v7) != 1)
      {
        sub_10000B3A8(*(v0 + 224), &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      v11 = (v0 + 272);
      (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 224), *(v0 + 256));
      v17 = v1;
    }

    v16 = 0;
    v35 = 2;
  }

  else
  {
    v11 = (v0 + 288);
    v14 = *(v0 + 288);
    v15 = SPBeaconTaskNameEnableLostMode;
    static Date.trustedNow.getter(v14);
    v35 = 0;
    v16 = 2;
  }

  v18 = *v11;
  v19 = *(v0 + 512);
  v37 = *(v0 + 408);
  v38 = *(v0 + 504);
  v36 = *(v0 + 304);
  v20 = *(v0 + 288);
  v39 = *(v0 + 296);
  v40 = *(v0 + 280);
  v21 = *(v0 + 264);
  v22 = *(v0 + 256);
  v41 = *(v0 + 272);
  v42 = *(v0 + 248);
  v43 = *(v0 + 240);
  v44 = *(v0 + 232);
  v45 = *(v0 + 224);
  v46 = *(v0 + 216);
  v23 = objc_allocWithZone(SPBeaconTaskInformation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v25 = [v23 initWithName:v1 lastUpdated:isa error:0 state:v16];

  v19(v18, v22);
  sub_1001DFD34(v25, v1);
  v26 = SPBeaconTaskNameDisableLostMode;
  static Date.trustedNow.getter(v20);
  v27 = objc_allocWithZone(SPBeaconTaskInformation);
  v28 = Date._bridgeToObjectiveC()().super.isa;
  v29 = [v27 initWithName:v26 lastUpdated:v28 error:0 state:v35];

  v19(v20, v22);
  sub_1001DFD34(v29, v26);
  v30 = *(v0 + 144);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v36 setTaskInformation:v31];

  v32 = *(v0 + 8);
  v33 = *(v0 + 304);

  return v32(v33);
}

uint64_t sub_100983D54()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  swift_willThrow();

  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  v3 = [qword_10177C088 destination];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String._bridgeToObjectiveC()();

  v5 = *(v0 + 304);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = [objc_opt_self() handleWithString:v4 formattedName:0];
  *(v0 + 408) = v8;

  [v5 setOwner:v8];
  [v5 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v6 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v5 setIdentifier:isa];

  v10 = (v7 + *(v6 + 40));
  if (v10[1])
  {
    v11 = *v10;
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 556);
  v14 = *(v0 + 304);
  v15 = *(v0 + 192);
  v16 = *(v0 + 176);
  [v14 setDeviceColor:v12];

  v17 = (v16 + v15[11]);
  v18 = *v17;
  v19 = v17[1];
  v20 = String._bridgeToObjectiveC()();
  [v14 setDeviceClass:v20];

  v21 = (v16 + v15[12]);
  v22 = *v21;
  v23 = v21[1];
  v24 = String._bridgeToObjectiveC()();
  [v14 setDeviceModel:v24];

  v25 = (v16 + v15[13]);
  v26 = *v25;
  v27 = v25[1];
  v28 = String._bridgeToObjectiveC()();
  [v14 setRawDeviceModel:v28];

  v29 = (v16 + v15[14]);
  v30 = *v29;
  v31 = v29[1];
  v32 = String._bridgeToObjectiveC()();
  [v14 setDeviceDisplayName:v32];

  v33 = [objc_allocWithZone(NSNumber) initWithBool:*(v16 + v15[19])];
  [v14 setThisDevice:v33];

  v34 = [objc_allocWithZone(NSNumber) initWithBool:v13];
  [v14 setIsMine:v34];

  v35 = qword_1013CB140[*(v16 + v15[30])];
  v36 = *(v0 + 304);
  v37 = *(v0 + 192);
  v38 = *(v0 + 176);
  [v36 setRepairState:v35];
  v39 = [objc_allocWithZone(NSNumber) initWithBool:*(v38 + *(v37 + 116))];
  [v36 setIsRepairCapable:v39];

  [v36 setBatteryLevel:0];
  v40 = v38 + *(v37 + 60);
  if ((*(v40 + 8) & 1) == 0)
  {
    v41 = *(v0 + 304);
    v42 = [objc_allocWithZone(NSNumber) initWithDouble:*v40];
    [v41 setBatteryPercentage:v42];
  }

  v43 = *(v0 + 192);
  v44 = *(v0 + 176);
  v45 = *(v44 + *(v43 + 100));
  *(v0 + 557) = v45;
  if (v45 == 1)
  {
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 248);
    sub_1000D2A70(v44 + *(v43 + 88), v48, &unk_101696900, &unk_10138B1E0);
    if ((*(v47 + 48))(v48, 1, v46) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v50 = *(v0 + 296);
      v49 = *(v0 + 304);
      v51 = *(v0 + 256);
      v52 = *(v0 + 264);
      (*(v52 + 32))(v50, *(v0 + 248), v51);
      v53 = objc_allocWithZone(SPLostModeInfo);
      v54 = Date._bridgeToObjectiveC()().super.isa;
      v55 = [v53 initWithMessage:0 email:0 phoneNumber:0 timestamp:v54];

      [v49 setLostModeInfo:v55];
      (*(v52 + 8))(v50, v51);
    }
  }

  v56 = *(v0 + 256);
  v57 = *(v0 + 264);
  v58 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v58, &unk_101696900, &unk_10138B1E0);
  v59 = *(v57 + 48);
  *(v0 + 416) = v59;
  *(v0 + 424) = (v57 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v59(v58, 1, v56) == 1)
  {
    v60 = 0;
  }

  else
  {
    v61 = *(v0 + 256);
    v62 = *(v0 + 264);
    v63 = *(v0 + 240);
    v60 = Date._bridgeToObjectiveC()().super.isa;
    (*(v62 + 8))(v63, v61);
  }

  v64 = *(v0 + 256);
  v65 = *(v0 + 232);
  v66 = *(v0 + 192);
  v67 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v60];

  sub_1000D2A70(v67 + *(v66 + 96), v65, &unk_101696900, &unk_10138B1E0);
  if (v59(v65, 1, v64) == 1)
  {
    v68 = 0;
  }

  else
  {
    v69 = *(v0 + 256);
    v70 = *(v0 + 264);
    v71 = *(v0 + 232);
    v68 = Date._bridgeToObjectiveC()().super.isa;
    (*(v70 + 8))(v71, v69);
  }

  v72 = *(v0 + 304);
  v73 = *(v0 + 192);
  v74 = *(v0 + 176);
  [v72 setWipedTimestamp:v68];

  [v72 setConnected:0];
  if (*(v74 + *(v73 + 36)) <= 1u && *(v74 + *(v73 + 36)))
  {
    v75 = 1;
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v76 = *(v0 + 304);
  v77 = *(v0 + 192);
  v78 = *(v0 + 176);

  [v76 setOnline:v75 & 1];
  v79 = [objc_allocWithZone(NSNumber) initWithBool:*(v78 + *(v77 + 68))];
  [v76 setLowPowerMode:v79];

  v80 = (v78 + *(v77 + 24));
  if (v80[1])
  {
    v81 = *v80;
    v82 = String._bridgeToObjectiveC()();
  }

  else
  {
    v82 = 0;
  }

  [*(v0 + 304) setSerialNumber:v82];

  v83 = async function pointer to daemon.getter[1];
  v84 = swift_task_alloc();
  *(v0 + 432) = v84;
  *v84 = v0;
  v84[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_1009844F4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  v3 = String._bridgeToObjectiveC()();

  v4 = *(v0 + 304);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = [objc_opt_self() handleWithString:v3 formattedName:0];
  *(v0 + 408) = v7;

  [v4 setOwner:v7];
  [v4 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v5 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v4 setIdentifier:isa];

  v9 = (v6 + *(v5 + 40));
  if (v9[1])
  {
    v10 = *v9;
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 556);
  v13 = *(v0 + 304);
  v14 = *(v0 + 192);
  v15 = *(v0 + 176);
  [v13 setDeviceColor:v11];

  v16 = (v15 + v14[11]);
  v17 = *v16;
  v18 = v16[1];
  v19 = String._bridgeToObjectiveC()();
  [v13 setDeviceClass:v19];

  v20 = (v15 + v14[12]);
  v21 = *v20;
  v22 = v20[1];
  v23 = String._bridgeToObjectiveC()();
  [v13 setDeviceModel:v23];

  v24 = (v15 + v14[13]);
  v25 = *v24;
  v26 = v24[1];
  v27 = String._bridgeToObjectiveC()();
  [v13 setRawDeviceModel:v27];

  v28 = (v15 + v14[14]);
  v29 = *v28;
  v30 = v28[1];
  v31 = String._bridgeToObjectiveC()();
  [v13 setDeviceDisplayName:v31];

  v32 = [objc_allocWithZone(NSNumber) initWithBool:*(v15 + v14[19])];
  [v13 setThisDevice:v32];

  v33 = [objc_allocWithZone(NSNumber) initWithBool:v12];
  [v13 setIsMine:v33];

  v34 = qword_1013CB140[*(v15 + v14[30])];
  v35 = *(v0 + 304);
  v36 = *(v0 + 192);
  v37 = *(v0 + 176);
  [v35 setRepairState:v34];
  v38 = [objc_allocWithZone(NSNumber) initWithBool:*(v37 + *(v36 + 116))];
  [v35 setIsRepairCapable:v38];

  [v35 setBatteryLevel:0];
  v39 = v37 + *(v36 + 60);
  if ((*(v39 + 8) & 1) == 0)
  {
    v40 = *(v0 + 304);
    v41 = [objc_allocWithZone(NSNumber) initWithDouble:*v39];
    [v40 setBatteryPercentage:v41];
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 176);
  v44 = *(v43 + *(v42 + 100));
  *(v0 + 557) = v44;
  if (v44 == 1)
  {
    v45 = *(v0 + 256);
    v46 = *(v0 + 264);
    v47 = *(v0 + 248);
    sub_1000D2A70(v43 + *(v42 + 88), v47, &unk_101696900, &unk_10138B1E0);
    if ((*(v46 + 48))(v47, 1, v45) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v49 = *(v0 + 296);
      v48 = *(v0 + 304);
      v50 = *(v0 + 256);
      v51 = *(v0 + 264);
      (*(v51 + 32))(v49, *(v0 + 248), v50);
      v52 = objc_allocWithZone(SPLostModeInfo);
      v53 = Date._bridgeToObjectiveC()().super.isa;
      v54 = [v52 initWithMessage:0 email:0 phoneNumber:0 timestamp:v53];

      [v48 setLostModeInfo:v54];
      (*(v51 + 8))(v49, v50);
    }
  }

  v55 = *(v0 + 256);
  v56 = *(v0 + 264);
  v57 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v57, &unk_101696900, &unk_10138B1E0);
  v58 = *(v56 + 48);
  *(v0 + 416) = v58;
  *(v0 + 424) = (v56 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v58(v57, 1, v55) == 1)
  {
    v59 = 0;
  }

  else
  {
    v60 = *(v0 + 256);
    v61 = *(v0 + 264);
    v62 = *(v0 + 240);
    v59 = Date._bridgeToObjectiveC()().super.isa;
    (*(v61 + 8))(v62, v60);
  }

  v63 = *(v0 + 256);
  v64 = *(v0 + 232);
  v65 = *(v0 + 192);
  v66 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v59];

  sub_1000D2A70(v66 + *(v65 + 96), v64, &unk_101696900, &unk_10138B1E0);
  if (v58(v64, 1, v63) == 1)
  {
    v67 = 0;
  }

  else
  {
    v68 = *(v0 + 256);
    v69 = *(v0 + 264);
    v70 = *(v0 + 232);
    v67 = Date._bridgeToObjectiveC()().super.isa;
    (*(v69 + 8))(v70, v68);
  }

  v71 = *(v0 + 304);
  v72 = *(v0 + 192);
  v73 = *(v0 + 176);
  [v71 setWipedTimestamp:v67];

  [v71 setConnected:0];
  if (*(v73 + *(v72 + 36)) <= 1u && *(v73 + *(v72 + 36)))
  {
    v74 = 1;
  }

  else
  {
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v75 = *(v0 + 304);
  v76 = *(v0 + 192);
  v77 = *(v0 + 176);

  [v75 setOnline:v74 & 1];
  v78 = [objc_allocWithZone(NSNumber) initWithBool:*(v77 + *(v76 + 68))];
  [v75 setLowPowerMode:v78];

  v79 = (v77 + *(v76 + 24));
  if (v79[1])
  {
    v80 = *v79;
    v81 = String._bridgeToObjectiveC()();
  }

  else
  {
    v81 = 0;
  }

  [*(v0 + 304) setSerialNumber:v81];

  v82 = async function pointer to daemon.getter[1];
  v83 = swift_task_alloc();
  *(v0 + 432) = v83;
  *v83 = v0;
  v83[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_100984C14()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = String._bridgeToObjectiveC()();

  v5 = *(v0 + 304);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v8 = [objc_opt_self() handleWithString:v4 formattedName:0];
  *(v0 + 408) = v8;

  [v5 setOwner:v8];
  [v5 setType:SPBeaconTypeFindMyService];
  *(v0 + 552) = *(v6 + 28);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v5 setIdentifier:isa];

  v10 = (v7 + *(v6 + 40));
  if (v10[1])
  {
    v11 = *v10;
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 556);
  v14 = *(v0 + 304);
  v15 = *(v0 + 192);
  v16 = *(v0 + 176);
  [v14 setDeviceColor:v12];

  v17 = (v16 + v15[11]);
  v18 = *v17;
  v19 = v17[1];
  v20 = String._bridgeToObjectiveC()();
  [v14 setDeviceClass:v20];

  v21 = (v16 + v15[12]);
  v22 = *v21;
  v23 = v21[1];
  v24 = String._bridgeToObjectiveC()();
  [v14 setDeviceModel:v24];

  v25 = (v16 + v15[13]);
  v26 = *v25;
  v27 = v25[1];
  v28 = String._bridgeToObjectiveC()();
  [v14 setRawDeviceModel:v28];

  v29 = (v16 + v15[14]);
  v30 = *v29;
  v31 = v29[1];
  v32 = String._bridgeToObjectiveC()();
  [v14 setDeviceDisplayName:v32];

  v33 = [objc_allocWithZone(NSNumber) initWithBool:*(v16 + v15[19])];
  [v14 setThisDevice:v33];

  v34 = [objc_allocWithZone(NSNumber) initWithBool:v13];
  [v14 setIsMine:v34];

  v35 = qword_1013CB140[*(v16 + v15[30])];
  v36 = *(v0 + 304);
  v37 = *(v0 + 192);
  v38 = *(v0 + 176);
  [v36 setRepairState:v35];
  v39 = [objc_allocWithZone(NSNumber) initWithBool:*(v38 + *(v37 + 116))];
  [v36 setIsRepairCapable:v39];

  [v36 setBatteryLevel:0];
  v40 = v38 + *(v37 + 60);
  if ((*(v40 + 8) & 1) == 0)
  {
    v41 = *(v0 + 304);
    v42 = [objc_allocWithZone(NSNumber) initWithDouble:*v40];
    [v41 setBatteryPercentage:v42];
  }

  v43 = *(v0 + 192);
  v44 = *(v0 + 176);
  v45 = *(v44 + *(v43 + 100));
  *(v0 + 557) = v45;
  if (v45 == 1)
  {
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 248);
    sub_1000D2A70(v44 + *(v43 + 88), v48, &unk_101696900, &unk_10138B1E0);
    if ((*(v47 + 48))(v48, 1, v46) == 1)
    {
      sub_10000B3A8(*(v0 + 248), &unk_101696900, &unk_10138B1E0);
    }

    else
    {
      v50 = *(v0 + 296);
      v49 = *(v0 + 304);
      v51 = *(v0 + 256);
      v52 = *(v0 + 264);
      (*(v52 + 32))(v50, *(v0 + 248), v51);
      v53 = objc_allocWithZone(SPLostModeInfo);
      v54 = Date._bridgeToObjectiveC()().super.isa;
      v55 = [v53 initWithMessage:0 email:0 phoneNumber:0 timestamp:v54];

      [v49 setLostModeInfo:v55];
      (*(v52 + 8))(v50, v51);
    }
  }

  v56 = *(v0 + 256);
  v57 = *(v0 + 264);
  v58 = *(v0 + 240);
  sub_1000D2A70(*(v0 + 176) + *(*(v0 + 192) + 92), v58, &unk_101696900, &unk_10138B1E0);
  v59 = *(v57 + 48);
  *(v0 + 416) = v59;
  *(v0 + 424) = (v57 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v59(v58, 1, v56) == 1)
  {
    v60 = 0;
  }

  else
  {
    v61 = *(v0 + 256);
    v62 = *(v0 + 264);
    v63 = *(v0 + 240);
    v60 = Date._bridgeToObjectiveC()().super.isa;
    (*(v62 + 8))(v63, v61);
  }

  v64 = *(v0 + 256);
  v65 = *(v0 + 232);
  v66 = *(v0 + 192);
  v67 = *(v0 + 176);
  [*(v0 + 304) setLockedTimestamp:v60];

  sub_1000D2A70(v67 + *(v66 + 96), v65, &unk_101696900, &unk_10138B1E0);
  if (v59(v65, 1, v64) == 1)
  {
    v68 = 0;
  }

  else
  {
    v69 = *(v0 + 256);
    v70 = *(v0 + 264);
    v71 = *(v0 + 232);
    v68 = Date._bridgeToObjectiveC()().super.isa;
    (*(v70 + 8))(v71, v69);
  }

  v72 = *(v0 + 304);
  v73 = *(v0 + 192);
  v74 = *(v0 + 176);
  [v72 setWipedTimestamp:v68];

  [v72 setConnected:0];
  if (*(v74 + *(v73 + 36)) <= 1u && *(v74 + *(v73 + 36)))
  {
    v75 = 1;
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v76 = *(v0 + 304);
  v77 = *(v0 + 192);
  v78 = *(v0 + 176);

  [v76 setOnline:v75 & 1];
  v79 = [objc_allocWithZone(NSNumber) initWithBool:*(v78 + *(v77 + 68))];
  [v76 setLowPowerMode:v79];

  v80 = (v78 + *(v77 + 24));
  if (v80[1])
  {
    v81 = *v80;
    v82 = String._bridgeToObjectiveC()();
  }

  else
  {
    v82 = 0;
  }

  [*(v0 + 304) setSerialNumber:v82];

  v83 = async function pointer to daemon.getter[1];
  v84 = swift_task_alloc();
  *(v0 + 432) = v84;
  *v84 = v0;
  v84[1] = sub_100981524;

  return daemon.getter();
}

uint64_t sub_10098533C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager);
    MyServiceDevice = type metadata accessor for FindMyServiceDevice();
    v7 = a2 + *(MyServiceDevice + 28);
    v8 = *(v5 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
    __chkstk_darwin(MyServiceDevice);
    sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
    result = OS_dispatch_queue.sync<A>(execute:)();
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_100985418()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  v7 = *(v0 + 168);

  v8 = *(v0 + 176);

  v9 = *(v0 + 184);

  v10 = *(v0 + 192);

  v11 = *(v0 + 208);

  v12 = *(v0 + 216);

  v13 = *(v0 + 224);

  v14 = *(v0 + 232);

  sub_100988C9C(*(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  v15 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsURL;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = *(v0 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons);

  v18 = *(v0 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_sessionUpdateTasks);

  v19 = *(v0 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_connectedStateClients);

  v20 = *(v0 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions);

  v21 = *(v0 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cacheWriteThrottle);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10098556C()
{
  sub_100985418();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1009855A0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1009856D8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10098574C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100985794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1009857F8()
{
  result = qword_1016AF820;
  if (!qword_1016AF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF820);
  }

  return result;
}

uint64_t sub_10098584C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(updated, a2);
}

uint64_t sub_1009858F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, updated, a4);
}

uint64_t sub_1009859C0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(updated, a2);
}

uint64_t sub_100985A6C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  updated = type metadata accessor for SimpleBeaconUpdateService(0);
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(updated, a2);
}

uint64_t sub_100985B18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_10094AED4();
}

uint64_t sub_100985BA4()
{
  v1 = *v0;
  type metadata accessor for SimpleBeaconUpdateService(0);
  sub_100985CA0(&unk_1016B10F0, type metadata accessor for SimpleBeaconUpdateService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100985CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100985CE8(uint64_t a1)
{
  v2 = type metadata accessor for OwnerSharingCircle();
  if (*(a1 + *(v2 + 28)) != 2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_100985DA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094D9AC(v0);
}

uint64_t sub_100985E30(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100985E88@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v5 + 16);
  }

  *a2 = v6 == 0;
  return result;
}

id sub_100985F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = [a1 fetchProperties];
  v4 = [a1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 sendInitialBeacons];
  v10 = [a1 matchingBeaconUUIDs];
  type metadata accessor for UUID();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [a1 matchingProductUUIDs];
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [a1 matchingSerialNumbers];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 matchingFindMyIds];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 repairContextType];
  *a2 = v19;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_100986170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009861D8(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10097D5C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1009862F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10097EAAC(v2, v3);
}

uint64_t sub_1009863FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100986464@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_100E73F30(v1 + v4, v6, v7, a1);
}

uint64_t sub_100986548@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = sub_1000035D0((v1 + 24), v5);
  result = sub_1006F8B58(v7, v4, v3, v5, v6);
  *a1 = result;
  return result;
}

uint64_t sub_1009865D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100E73E24(v4, v5, a1);
}

uint64_t sub_100986664@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E73FF0(v5, a1);
}

id sub_1009866D8@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[6];
  v5 = v1[7];
  v6 = sub_1000035D0(v1 + 3, v4);
  result = sub_100A05A00(v6, v3, v4, v5);
  *a1 = result & 1;
  return result;
}

uint64_t sub_100986734(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100967CC8(a1, a2, v2);
}

uint64_t sub_100986810()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10096829C(v2, v3);
}

uint64_t sub_1009868A8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = sub_1000035D0((v0 + 24), v5);

  return sub_1006FD1C4(v6, v2, v4, 0, 0, v1, v5, v3);
}

uint64_t sub_10098691C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1009684E0(a1, v5, v4);
}

uint64_t sub_1009869C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10073ACF0;

  return sub_10094CBB4(v2, v3);
}

unint64_t sub_100986A60()
{
  result = qword_1016AF970;
  if (!qword_1016AF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AF970);
  }

  return result;
}

uint64_t sub_100986ACC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100961028(v2, v3);
}

uint64_t sub_100986B64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100961130(a1, v5, v4);
}

uint64_t sub_100986C10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BBA4C;

  return sub_10094CBB4(v2, v3);
}

uint64_t sub_100986CA8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_10095FAC0(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_100986DB0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_10095E594(a1, a2, v2);
}

uint64_t sub_100986E74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BA6C8;

  return sub_10095CD74(v2, v3, v4);
}

uint64_t sub_100986F1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_10095CF28(v2, v3, v4);
}

uint64_t sub_100986FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_10095D044(a1, v4, v5, v6);
}

uint64_t sub_100987080(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0) - 8);
  v6 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014744;

  return sub_10095A854(a1, v8, v9, v10, (v1 + 5), v1 + v6, v11, v12);
}

uint64_t sub_100987214(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100987234, v1, 0);
}

uint64_t sub_100987234()
{
  v20 = v0;
  v1 = v0[2];
  v0[4] = v1[7];
  v0[5] = v1[6];
  v2 = v1[8];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = SPRepairDeviceContextTypeRepair;
    v2 = 0;
  }

  v0[6] = v3;
  v4 = qword_101694AD8;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[7] = sub_1000076D4(v6, qword_10177B740);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = Array.description.getter();
    v12 = sub_1000136BC(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = Array.description.getter();
    v15 = sub_1000136BC(v13, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching filtered devices for %s, %s.", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1009874A0;

  return daemon.getter();
}

uint64_t sub_1009874A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService();
  v9 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService);
  *v6 = v12;
  v6[1] = sub_10098767C;

  return ActorServiceDaemon.getService<A>()(v7, MyServiceDeviceStoreService, v9, v10);
}

uint64_t sub_10098767C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v10 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100987A94;
  }

  else
  {
    v7 = v3[9];
    v8 = v3[3];

    v6 = sub_1009877A4;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1009877A4()
{
  v1 = v0[6];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v0[13] = v3;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100987860;
  v6 = v0[11];
  v7 = v0[4];
  v8 = v0[5];

  return sub_1008C6A3C(v8, v7, v2, v4);
}

uint64_t sub_100987860(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v7 = *v2;
  v4[15] = v1;

  v8 = v4[3];
  if (v1)
  {
    v9 = sub_100987C04;
  }

  else
  {
    v4[16] = a1;
    v9 = sub_1009879B8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1009879B8()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[3];
  v5 = *(v4 + 168);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100987A94()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch filtered devices: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100987C04()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch filtered devices: %{public}@.", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100987D74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100959B58(a1, v4, v5, v6);
}

uint64_t sub_100987E28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10097EB48(v2, v3);
}

uint64_t sub_100987ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100987EE4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100987F68(uint64_t a1)
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

  return sub_10095607C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100988030()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100988080(uint64_t a1)
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

  return sub_100953080(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100988150()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100950AF8(v2, v3);
}

uint64_t sub_1009881E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100950C08(a1, v5, v4);
}

uint64_t sub_100988294(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_10098831C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100960A0C(v2, v3, v4);
}

uint64_t sub_1009883E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_10096005C(v2, v3, v4);
}

uint64_t sub_100988488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009884E8(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(v3[2]);
  a2(v3[3]);
  a3(v3[4]);

  return _swift_deallocObject(v3, 40, 7);
}

void sub_100988558(uint64_t a1, char a2, uint64_t *a3)
{
  v70 = a3;
  v5 = type metadata accessor for UUID();
  v63 = *(v5 - 8);
  v6 = v63[8];
  __chkstk_darwin(v5);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016ADE80, &unk_1013C55E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v68 = &v59 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v14 = v68;
  v15 = (v68 + *(v10 + 48));
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v65 = *(v11 + 72);
  v60 = v16;
  sub_1000D2A70(a1 + v16, v68, &qword_1016ADE80, &unk_1013C55E0);
  v17 = v63[4];
  v18 = v69;
  v66 = (v63 + 4);
  v67 = v5;
  v17(v69, v14, v5);
  v64 = v15;
  v19 = *v15;
  v20 = v15[1];
  v21 = *v70;
  v23 = sub_1000210EC(v18);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_24;
  }

  LOBYTE(v18) = v22;
  v27 = v21[3];
  v61 = v19;
  if (v27 >= v26)
  {
    v19 = v66;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v32 = v20;
    while (1)
    {
LABEL_8:
      v20 = v19 - 3;
      v33 = *v70;
      if (v18)
      {
        v18 = v67;
        (*v20)(v69, v67);
        v34 = v33[7] + 16 * v23;
        v35 = *v34;
        *v34 = v61;
        *(v34 + 8) = v32;

        v36 = v13 - 1;
        if (v13 == 1)
        {
          return;
        }
      }

      else
      {
        v33[(v23 >> 6) + 8] |= 1 << v23;
        v18 = v67;
        v17(v33[6] + v63[9] * v23, v69, v67);
        v37 = (v33[7] + 16 * v23);
        *v37 = v61;
        v37[1] = v32;
        v38 = v33[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_25;
        }

        v33[2] = v40;
        v36 = v13 - 1;
        if (v13 == 1)
        {
          return;
        }
      }

      v13 = a1 + v65 + v60;
      v62 = (v19 - 3);
      while (1)
      {
        v43 = v68;
        sub_1000D2A70(v13, v68, &qword_1016ADE80, &unk_1013C55E0);
        v20 = *v19;
        v44 = v69;
        (*v19)(v69, v43, v18);
        a1 = *v64;
        v17 = v64[1];
        v45 = *v70;
        v23 = sub_1000210EC(v44);
        v47 = v45[2];
        v48 = (v46 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          break;
        }

        v50 = v46;
        if (v45[3] < v49)
        {
          v51 = v70;
          sub_100FF30CC(v49, 1);
          v52 = *v51;
          v53 = sub_1000210EC(v69);
          if ((v50 & 1) != (v54 & 1))
          {
            goto LABEL_27;
          }

          v23 = v53;
        }

        v55 = *v70;
        if (v50)
        {
          v18 = v67;
          (*v62)(v69, v67);
          v41 = v55[7] + 16 * v23;
          v42 = *v41;
          *v41 = a1;
          *(v41 + 8) = v17;

          v19 = v66;
        }

        else
        {
          v55[(v23 >> 6) + 8] |= 1 << v23;
          v19 = v66;
          v18 = v67;
          (v20)(v55[6] + v63[9] * v23, v69, v67);
          v56 = (v55[7] + 16 * v23);
          *v56 = a1;
          v56[1] = v17;
          v57 = v55[2];
          v39 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v39)
          {
            goto LABEL_25;
          }

          v55[2] = v58;
        }

        v13 += v65;
        if (!--v36)
        {
          return;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v32 = v20;
      sub_10100B804();
    }
  }

  v28 = v70;
  sub_100FF30CC(v26, a2 & 1);
  v29 = *v28;
  v30 = sub_1000210EC(v69);
  if ((v18 & 1) == (v31 & 1))
  {
    v23 = v30;
    v32 = v20;
    v19 = v66;
    goto LABEL_8;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100988A00()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094B958(v0);
}

uint64_t sub_100988A90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016AF960, &qword_1013CAE00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100988B08()
{
  result = qword_1016AFA38;
  if (!qword_1016AFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFA38);
  }

  return result;
}

uint64_t sub_100988B5C()
{
  v2 = *(type metadata accessor for ContinuousClock() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_10094C438(v7, v8, v0 + v3, v0 + v6);
}

void sub_100988C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a5)
  {
  }
}

uint64_t sub_100988D24(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_100988D94(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_10094AE54(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100988E8C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_10094ABD0(v0);
}

uint64_t sub_10098936C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016AFBC8, &qword_1013CB3D8);
  v103 = *(v2 - 8);
  v104 = v2;
  v3 = *(v103 + 64);
  __chkstk_darwin(v2);
  v102 = &v86 - v4;
  v5 = sub_1000BC4D4(&qword_1016AFBD0, &qword_1013CB3E0);
  v109 = *(v5 - 8);
  v110 = v5;
  v6 = *(v109 + 64);
  __chkstk_darwin(v5);
  v108 = &v86 - v7;
  v8 = sub_1000BC4D4(&qword_1016AFBD8, &qword_1013CB3E8);
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  __chkstk_darwin(v8);
  v105 = &v86 - v10;
  v11 = sub_1000BC4D4(&qword_1016AFBE0, &qword_1013CB3F0);
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = *(v100 + 64);
  __chkstk_darwin(v11);
  v97 = &v86 - v13;
  v14 = sub_1000BC4D4(&qword_1016AFBE8, &qword_1013CB3F8);
  v98 = *(v14 - 8);
  v99 = v14;
  v15 = *(v98 + 64);
  __chkstk_darwin(v14);
  v96 = &v86 - v16;
  v95 = sub_1000BC4D4(&qword_1016AFBF0, &qword_1013CB400);
  v94 = *(v95 - 8);
  v17 = *(v94 + 64);
  __chkstk_darwin(v95);
  v91 = &v86 - v18;
  v93 = type metadata accessor for UUID();
  v92 = *(v93 - 8);
  v19 = *(v92 + 64);
  __chkstk_darwin(v93);
  v90 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000BC4D4(&qword_1016AFBF8, &qword_1013CB408);
  v88 = *(v89 - 8);
  v21 = *(v88 + 64);
  __chkstk_darwin(v89);
  v23 = &v86 - v22;
  v24 = sub_1000BC4D4(&qword_1016AFC00, &qword_1013CB410);
  v87 = *(v24 - 8);
  v25 = *(v87 + 64);
  __chkstk_darwin(v24);
  v27 = &v86 - v26;
  v28 = type metadata accessor for PeerCommunicationIdentifier();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1000BC4D4(&qword_1016AFC08, &qword_1013CB418);
  v112 = *(v115 - 8);
  v32 = *(v112 + 64);
  __chkstk_darwin(v115);
  v34 = &v86 - v33;
  v35 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10098CAA4();
  v114 = v34;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10098BF5C(v111, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v61 = v115;
      if (EnumCaseMultiPayload == 6)
      {
        v116 = 0;
        sub_10098CD44();
        v62 = v114;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v87 + 8))(v27, v24);
      }

      else
      {
        v116 = 7;
        sub_10098CAF8();
        v83 = v102;
        v62 = v114;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v103 + 8))(v83, v104);
      }

      return (*(v112 + 8))(v62, v61);
    }

    if (EnumCaseMultiPayload != 4)
    {
      v69 = *v31;
      v68 = *(v31 + 1);
      LODWORD(v111) = v31[16];
      v70 = *(v31 + 3);
      v71 = *(v31 + 4);
      v72 = *(v31 + 6);
      v106 = *(v31 + 5);
      v107 = v70;
      v116 = 6;
      sub_10098CB4C();
      v73 = v108;
      v74 = v114;
      v75 = v115;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v116 = 0;
      v76 = v110;
      v77 = v113;
      KeyedEncodingContainer.encode(_:forKey:)();

      if (v77)
      {

        (*(v109 + 8))(v73, v76);
        return (*(v112 + 8))(v74, v75);
      }

      else
      {
        v116 = v111;
        v117 = v107;
        v118 = v71;
        v119 = 1;
        sub_100157F84();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v116 = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        v84 = v114;
        v85 = v115;

        (*(v109 + 8))(v73, v76);
        return (*(v112 + 8))(v84, v85);
      }
    }

    v42 = *v31;
    v44 = *(v31 + 1);
    v43 = *(v31 + 2);
    v46 = *(v31 + 3);
    v45 = *(v31 + 4);
    v116 = 5;
    sub_10098CBA0();
    v47 = v105;
    v49 = v114;
    v48 = v115;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v116 = v42;
    v117 = v44;
    v118 = v43;
    v119 = 0;
    sub_100157F84();
    v50 = v107;
    v51 = v113;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v51)
    {

      v116 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v106 + 8))(v47, v50);
      return (*(v112 + 8))(v49, v48);
    }

    (*(v106 + 8))(v47, v50);
    (*(v112 + 8))(v49, v48);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v38 = v114;
    v37 = v115;
    if (EnumCaseMultiPayload)
    {
      v63 = v92;
      v64 = v90;
      v65 = v93;
      (*(v92 + 32))(v90, v31, v93);
      v116 = 2;
      sub_10098CC9C();
      v66 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10098CDEC(&qword_101698330, &type metadata accessor for UUID);
      v67 = v95;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v94 + 8))(v66, v67);
      (*(v63 + 8))(v64, v65);
    }

    else
    {
      v39 = *v31;
      v40 = *(v31 + 1);
      v116 = 1;
      sub_10098CCF0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v89;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v88 + 8))(v23, v41);
    }

    return (*(v112 + 8))(v38, v37);
  }

  v53 = v114;
  v52 = v115;
  if (EnumCaseMultiPayload != 2)
  {
    v78 = *v31;
    v80 = *(v31 + 1);
    v79 = *(v31 + 2);
    v116 = 4;
    sub_10098CBF4();
    v81 = v97;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v116 = v78;
    v117 = v80;
    v118 = v79;
    sub_100157F84();
    v82 = v101;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v100 + 8))(v81, v82);
    (*(v112 + 8))(v53, v52);
  }

  v55 = *v31;
  v54 = *(v31 + 1);
  v56 = *(v31 + 2);
  v116 = 3;
  sub_10098CC48();
  v57 = v96;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v116 = 0;
  v58 = v99;
  v59 = v113;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v59)
  {
    v116 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v98 + 8))(v57, v58);
  return (*(v112 + 8))(v53, v52);
}

void sub_10098A0BC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PeerCommunicationIdentifier();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10098BF5C(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v2 + 32))(v5, v9, v1);
        Hasher._combine(_:)(2uLL);
        sub_10098CDEC(&qword_1016967B0, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*(v2 + 8))(v5, v1);
      }

      else
      {
        v11 = *v9;
        v12 = v9[1];
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
      }

      return;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v18 = *v9;
      v19 = v9[1];
      v20 = v9[2];
      v21 = 3;
    }

    else
    {
      v18 = *v9;
      v30 = v9[1];
      v31 = v9[2];
      v21 = 4;
    }

    Hasher._combine(_:)(v21);
    Hasher._combine(_:)(v18);
LABEL_17:
    String.hash(into:)();

    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v13 = *v9;
      v14 = v9[1];
      v15 = v9[2];
      v17 = v9[3];
      v16 = v9[4];
      Hasher._combine(_:)(5uLL);
      Hasher._combine(_:)(v13);
    }

    else
    {
      v23 = *v9;
      v24 = v9[1];
      v25 = *(v9 + 16);
      v26 = v9[3];
      v27 = v9[4];
      v29 = v9[5];
      v28 = v9[6];
      Hasher._combine(_:)(6uLL);
      String.hash(into:)();

      Hasher._combine(_:)(v25);
    }

    String.hash(into:)();

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = 7;
  }

  Hasher._combine(_:)(v22);
}

uint64_t sub_10098A3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v129 = sub_1000BC4D4(&qword_1016AFB38, &qword_1013CB388);
  v128 = *(v129 - 8);
  v3 = *(v128 + 64);
  __chkstk_darwin(v129);
  v136 = &v110 - v4;
  v130 = sub_1000BC4D4(&qword_1016AFB40, &qword_1013CB390);
  v132 = *(v130 - 8);
  v5 = *(v132 + 64);
  __chkstk_darwin(v130);
  v144 = &v110 - v6;
  v131 = sub_1000BC4D4(&qword_1016AFB48, &qword_1013CB398);
  v127 = *(v131 - 8);
  v7 = *(v127 + 64);
  __chkstk_darwin(v131);
  v143 = &v110 - v8;
  v126 = sub_1000BC4D4(&qword_1016AFB50, &qword_1013CB3A0);
  v124 = *(v126 - 8);
  v9 = *(v124 + 64);
  __chkstk_darwin(v126);
  v135 = &v110 - v10;
  v125 = sub_1000BC4D4(&qword_1016AFB58, &qword_1013CB3A8);
  v123 = *(v125 - 8);
  v11 = *(v123 + 64);
  __chkstk_darwin(v125);
  v142 = &v110 - v12;
  v122 = sub_1000BC4D4(&qword_1016AFB60, &qword_1013CB3B0);
  v121 = *(v122 - 8);
  v13 = *(v121 + 64);
  __chkstk_darwin(v122);
  v141 = &v110 - v14;
  v120 = sub_1000BC4D4(&qword_1016AFB68, &qword_1013CB3B8);
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  __chkstk_darwin(v120);
  v134 = &v110 - v16;
  v118 = sub_1000BC4D4(&qword_1016AFB70, &qword_1013CB3C0);
  v117 = *(v118 - 8);
  v17 = *(v117 + 64);
  __chkstk_darwin(v118);
  v133 = &v110 - v18;
  v140 = sub_1000BC4D4(&qword_1016AFB78, &unk_1013CB3C8);
  v145 = *(v140 - 8);
  v19 = *(v145 + 64);
  __chkstk_darwin(v140);
  v21 = &v110 - v20;
  v138 = type metadata accessor for PeerCommunicationIdentifier();
  v22 = *(*(v138 - 8) + 64);
  v23 = __chkstk_darwin(v138);
  v115 = (&v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v116 = (&v110 - v26);
  v27 = __chkstk_darwin(v25);
  v29 = &v110 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = (&v110 - v31);
  v33 = __chkstk_darwin(v30);
  v35 = &v110 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = (&v110 - v37);
  __chkstk_darwin(v36);
  v40 = &v110 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v147 = a1;
  sub_1000035D0(a1, v42);
  sub_10098CAA4();
  v139 = v21;
  v43 = v146;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v43)
  {
    v111 = v38;
    v113 = v35;
    v112 = v29;
    v110 = v32;
    v44 = v141;
    v45 = v142;
    v146 = 0;
    v46 = v143;
    v47 = v144;
    v114 = v40;
    v48 = v139;
    v49 = v140;
    v50 = KeyedDecodingContainer.allKeys.getter();
    v51 = (2 * *(v50 + 16)) | 1;
    v151 = v50;
    v152 = v50 + 32;
    v153 = 0;
    v154 = v51;
    v52 = sub_1002E27E0();
    if (v52 == 8 || v153 != v154 >> 1)
    {
      v57 = type metadata accessor for DecodingError();
      swift_allocError();
      v59 = v58;
      v60 = *(sub_1000BC4D4(&qword_10169C868, &qword_101398420) + 48);
      *v59 = v138;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v57 - 8) + 104))(v59, enum case for DecodingError.typeMismatch(_:), v57);
      swift_willThrow();
      (*(v145 + 8))(v48, v49);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_100007BAC(v147);
    }

    if (v52 <= 3u)
    {
      v53 = v146;
      if (v52 <= 1u)
      {
        v54 = v145;
        if (!v52)
        {
          v148 = 0;
          sub_10098CD44();
          v55 = v133;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v53)
          {
            (*(v117 + 8))(v55, v118);
            (*(v54 + 8))(v48, v49);
            swift_unknownObjectRelease();
            v56 = v114;
            swift_storeEnumTagMultiPayload();
LABEL_36:
            v63 = v137;
            goto LABEL_37;
          }

          goto LABEL_24;
        }

        v148 = 1;
        sub_10098CCF0();
        v75 = v134;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v53)
        {
LABEL_24:
          (*(v54 + 8))(v48, v49);
          goto LABEL_10;
        }

        v76 = v120;
        v89 = KeyedDecodingContainer.decode(_:forKey:)();
        v91 = v90;
        (*(v119 + 8))(v75, v76);
        (*(v54 + 8))(v48, v49);
        swift_unknownObjectRelease();
        v92 = v111;
        *v111 = v89;
        v92[1] = v91;
        goto LABEL_34;
      }

      v67 = v145;
      if (v52 == 2)
      {
        v148 = 2;
        sub_10098CC9C();
        v68 = v44;
        v69 = v49;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v137;
        if (!v53)
        {
          type metadata accessor for UUID();
          sub_10098CDEC(&qword_101698300, &type metadata accessor for UUID);
          v70 = v113;
          v71 = v122;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v121 + 8))(v68, v71);
          (*(v67 + 8))(v48, v69);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v85 = v70;
          goto LABEL_32;
        }

LABEL_33:
        (*(v67 + 8))(v48, v69);
        goto LABEL_10;
      }

      v148 = 3;
      sub_10098CC48();
      v69 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v53)
      {
        goto LABEL_33;
      }

      v148 = 0;
      v79 = v125;
      v96 = KeyedDecodingContainer.decode(_:forKey:)();
      v148 = 1;
      v102 = KeyedDecodingContainer.decode(_:forKey:)();
      v104 = v103;
      (*(v123 + 8))(v45, v79);
      (*(v67 + 8))(v48, v69);
      swift_unknownObjectRelease();
      v105 = v110;
      *v110 = v96;
      v105[1] = v102;
      v105[2] = v104;
      swift_storeEnumTagMultiPayload();
      v109 = v105;
LABEL_35:
      v56 = v114;
      sub_100312F64(v109, v114);
      goto LABEL_36;
    }

    v62 = v49;
    if (v52 > 5u)
    {
      v63 = v137;
      if (v52 == 6)
      {
        v148 = 6;
        sub_10098CB4C();
        v72 = v146;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v72)
        {
          v148 = 0;
          v73 = v130;
          v74 = KeyedDecodingContainer.decode(_:forKey:)();
          v87 = v86;
          v88 = v74;
          v155 = 1;
          sub_100157E1C();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          LODWORD(v142) = v148;
          v143 = v149;
          v97 = v150;
          v155 = 2;
          v146 = KeyedDecodingContainer.decode(_:forKey:)();
          v107 = v106;
          (*(v132 + 8))(v47, v73);
          (*(v145 + 8))(v48, v49);
          swift_unknownObjectRelease();
          v108 = v115;
          *v115 = v88;
          v108[1] = v87;
          *(v108 + 16) = v142;
          v108[3] = v143;
          v108[4] = v97;
          v108[5] = v146;
          v108[6] = v107;
          swift_storeEnumTagMultiPayload();
          v109 = v108;
          goto LABEL_35;
        }
      }

      else
      {
        v148 = 7;
        sub_10098CAF8();
        v80 = v136;
        v81 = v146;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v81)
        {
          (*(v128 + 8))(v80, v129);
          (*(v145 + 8))(v48, v62);
          swift_unknownObjectRelease();
          v56 = v114;
          swift_storeEnumTagMultiPayload();
LABEL_37:
          sub_100312F64(v56, v63);
          return sub_100007BAC(v147);
        }
      }
    }

    else
    {
      v63 = v137;
      if (v52 == 4)
      {
        v148 = 4;
        sub_10098CBF4();
        v64 = v135;
        v65 = v146;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v65)
        {
          sub_100157E1C();
          v66 = v126;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v124 + 8))(v64, v66);
          (*(v145 + 8))(v48, v62);
          swift_unknownObjectRelease();
          v82 = v149;
          v83 = v150;
          v84 = v112;
          *v112 = v148;
          *(v84 + 1) = v82;
          *(v84 + 2) = v83;
          swift_storeEnumTagMultiPayload();
          v85 = v84;
LABEL_32:
          v56 = v114;
          sub_100312F64(v85, v114);
          goto LABEL_37;
        }
      }

      else
      {
        v148 = 5;
        sub_10098CBA0();
        v77 = v146;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v77)
        {
          v155 = 0;
          sub_100157E1C();
          v78 = v131;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          LODWORD(v144) = v148;
          v93 = v150;
          v146 = v149;
          v155 = 1;
          v94 = KeyedDecodingContainer.decode(_:forKey:)();
          v95 = (v145 + 8);
          v98 = v94;
          v99 = v46;
          v101 = v100;
          (*(v127 + 8))(v99, v78);
          (*v95)(v48, v49);
          swift_unknownObjectRelease();
          v92 = v116;
          *v116 = v144;
          v92[1] = v146;
          v92[2] = v93;
          v92[3] = v98;
          v92[4] = v101;
LABEL_34:
          swift_storeEnumTagMultiPayload();
          v109 = v92;
          goto LABEL_35;
        }
      }
    }

    (*(v145 + 8))(v48, v62);
    goto LABEL_10;
  }

  return sub_100007BAC(v147);
}

uint64_t sub_10098B62C(uint64_t a1)
{
  v2 = sub_10098CCF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098B668(uint64_t a1)
{
  v2 = sub_10098CCF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098B6A4()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x4449796C696D6166;
  if (v1 != 6)
  {
    v3 = 6448503;
  }

  if (v1 == 4)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 7562345;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x706F724472656570;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0x4449656C707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10098B794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10098D75C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10098B7BC(uint64_t a1)
{
  v2 = sub_10098CAA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098B7F8(uint64_t a1)
{
  v2 = sub_10098CAA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098B834()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_10098B870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_10098B950(uint64_t a1)
{
  v2 = sub_10098CC48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098B98C(uint64_t a1)
{
  v2 = sub_10098CC48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098B9C8()
{
  v1 = 0x74616E6974736564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44495344746C61;
  }
}

uint64_t sub_10098BA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10098DA04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10098BA58(uint64_t a1)
{
  v2 = sub_10098CB4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BA94(uint64_t a1)
{
  v2 = sub_10098CB4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10098BAD0()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x74616E6974736564;
  }

  *v0;
  return result;
}

uint64_t sub_10098BB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2)
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

uint64_t sub_10098BC00(uint64_t a1)
{
  v2 = sub_10098CBA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BC3C(uint64_t a1)
{
  v2 = sub_10098CBA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BC78(uint64_t a1)
{
  v2 = sub_10098CBF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BCB4(uint64_t a1)
{
  v2 = sub_10098CBF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BCF0(uint64_t a1)
{
  v2 = sub_10098CD44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BD2C(uint64_t a1)
{
  v2 = sub_10098CD44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BD68(uint64_t a1)
{
  v2 = sub_10098CC9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BDA4(uint64_t a1)
{
  v2 = sub_10098CC9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098BDE0(uint64_t a1)
{
  v2 = sub_10098CAF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098BE1C(uint64_t a1)
{
  v2 = sub_10098CAF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10098BE88()
{
  Hasher.init(_seed:)();
  sub_10098A0BC();
  return Hasher._finalize()();
}

Swift::Int sub_10098BECC()
{
  Hasher.init(_seed:)();
  sub_10098A0BC();
  return Hasher._finalize()();
}

uint64_t type metadata accessor for PeerCommunicationIdentifier()
{
  result = qword_1016AFAD8;
  if (!qword_1016AFAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10098BF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCommunicationIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10098BFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  __chkstk_darwin(v4);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PeerCommunicationIdentifier();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v88 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = &v88 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v88 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = &v88 - v22;
  __chkstk_darwin(v21);
  v25 = (&v88 - v24);
  v26 = sub_1000BC4D4(&qword_1016AFA60, &unk_1013CB198);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = (&v88 + *(v28 + 56) - v29);
  v31 = a1;
  v32 = &v88 - v29;
  sub_10098BF5C(v31, &v88 - v29);
  sub_10098BF5C(a2, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_85;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_85;
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_10098BF5C(v32, v14);
      v41 = v14[1];
      v40 = v14[2];
      v43 = v14[3];
      v42 = v14[4];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v44 = v30[2];
        v45 = v30[4];
        if (*v14 != *v30)
        {

          goto LABEL_69;
        }

        v46 = v30[1];
        v47 = v30[3];
        if (v41 == v46 && v40 == v44)
        {
        }

        else
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        if (v43 != v47 || v42 != v45)
        {
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v83 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_85;
        }

        goto LABEL_84;
      }

      goto LABEL_53;
    }

    v58 = v32;
    sub_10098BF5C(v32, v11);
    v59 = *v11;
    v60 = *(v11 + 1);
    v61 = v11[16];
    v63 = *(v11 + 3);
    v62 = *(v11 + 4);
    v64 = *(v11 + 6);
    v91 = *(v11 + 5);
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      v32 = v58;
      goto LABEL_56;
    }

    v65 = *v30;
    v66 = v30[1];
    v67 = *(v30 + 16);
    v68 = v30[4];
    v89 = v30[3];
    v90 = v68;
    v69 = v30[5];
    v70 = v30[6];
    v88 = v69;
    if (v59 == v65 && v60 == v66)
    {
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v72 & 1) == 0)
      {

        v73 = v58;
LABEL_71:
        sub_10098C7FC(v73);
        goto LABEL_72;
      }
    }

    v38 = v61 == v67;
    v79 = v58;
    if (!v38)
    {

LABEL_74:

LABEL_75:
      v73 = v79;
      goto LABEL_71;
    }

    if (v63 == v89 && v62 == v90)
    {
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v81 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    if (v91 == v88 && v64 == v70)
    {

      v85 = v58;
      goto LABEL_86;
    }

    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v87)
    {
      v85 = v79;
      goto LABEL_86;
    }

    goto LABEL_75;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10098BF5C(v32, v20);
      v51 = v20[1];
      v50 = v20[2];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (*v20 == *v30)
        {
          if (v51 != v30[1] || v50 != v30[2])
          {
            goto LABEL_48;
          }

          v84 = v30[2];
          goto LABEL_84;
        }

        goto LABEL_69;
      }
    }

    else
    {
      sub_10098BF5C(v32, v17);
      v75 = *(v17 + 1);
      v74 = *(v17 + 2);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (*v17 == *v30)
        {
          if (v75 != v30[1] || v74 != v30[2])
          {
LABEL_48:
            v77 = v30[2];
            v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v78 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_85:
            v85 = v32;
LABEL_86:
            sub_10098C7FC(v85);
            v56 = 1;
            return v56 & 1;
          }

LABEL_84:

          goto LABEL_85;
        }

LABEL_69:

LABEL_70:
        v73 = v32;
        goto LABEL_71;
      }
    }

LABEL_53:

LABEL_56:
    sub_10098C794(v32);
LABEL_72:
    v56 = 0;
    return v56 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10098BF5C(v32, v25);
    v35 = *v25;
    v34 = v25[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = *v30;
      v37 = v30[1];
      v38 = v35 == v36 && v34 == v37;
      if (!v38)
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_85;
        }

        goto LABEL_70;
      }

      goto LABEL_84;
    }

    goto LABEL_53;
  }

  sub_10098BF5C(v32, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v90 + 8))(v23, v91);
    goto LABEL_56;
  }

  v54 = v89;
  v53 = v90;
  v55 = v91;
  (*(v90 + 32))(v89, v30, v91);
  v56 = static UUID.== infix(_:_:)();
  v57 = *(v53 + 8);
  v57(v54, v55);
  v57(v23, v55);
  sub_10098C7FC(v32);
  return v56 & 1;
}

uint64_t sub_10098C794(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016AFA60, &unk_1013CB198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10098C7FC(uint64_t a1)
{
  v2 = type metadata accessor for PeerCommunicationIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10098C868()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10098C940(319, &qword_1016AFAE8);
    if (v1 <= 0x3F)
    {
      sub_10098C940(319, &qword_1016AFAF0);
      if (v2 <= 0x3F)
      {
        sub_10098C99C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10098C940(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10098C99C()
{
  if (!qword_1016AFAF8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1016AFAF8);
    }
  }
}

unint64_t sub_10098CA50()
{
  result = qword_1016AFB30;
  if (!qword_1016AFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB30);
  }

  return result;
}

unint64_t sub_10098CAA4()
{
  result = qword_1016AFB80;
  if (!qword_1016AFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB80);
  }

  return result;
}

unint64_t sub_10098CAF8()
{
  result = qword_1016AFB88;
  if (!qword_1016AFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB88);
  }

  return result;
}

unint64_t sub_10098CB4C()
{
  result = qword_1016AFB90;
  if (!qword_1016AFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB90);
  }

  return result;
}

unint64_t sub_10098CBA0()
{
  result = qword_1016AFB98;
  if (!qword_1016AFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFB98);
  }

  return result;
}

unint64_t sub_10098CBF4()
{
  result = qword_1016AFBA0;
  if (!qword_1016AFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBA0);
  }

  return result;
}

unint64_t sub_10098CC48()
{
  result = qword_1016AFBA8;
  if (!qword_1016AFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBA8);
  }

  return result;
}

unint64_t sub_10098CC9C()
{
  result = qword_1016AFBB0;
  if (!qword_1016AFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBB0);
  }

  return result;
}

unint64_t sub_10098CCF0()
{
  result = qword_1016AFBB8;
  if (!qword_1016AFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBB8);
  }

  return result;
}

unint64_t sub_10098CD44()
{
  result = qword_1016AFBC0;
  if (!qword_1016AFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFBC0);
  }

  return result;
}

unint64_t sub_10098CD98()
{
  result = qword_1016AFC10;
  if (!qword_1016AFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC10);
  }

  return result;
}

uint64_t sub_10098CDEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10098CEC8()
{
  result = qword_1016AFC18;
  if (!qword_1016AFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC18);
  }

  return result;
}

unint64_t sub_10098CF20()
{
  result = qword_1016AFC20;
  if (!qword_1016AFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC20);
  }

  return result;
}

unint64_t sub_10098CF78()
{
  result = qword_1016AFC28;
  if (!qword_1016AFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC28);
  }

  return result;
}

unint64_t sub_10098CFD0()
{
  result = qword_1016AFC30;
  if (!qword_1016AFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC30);
  }

  return result;
}

unint64_t sub_10098D028()
{
  result = qword_1016AFC38;
  if (!qword_1016AFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC38);
  }

  return result;
}

unint64_t sub_10098D080()
{
  result = qword_1016AFC40;
  if (!qword_1016AFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC40);
  }

  return result;
}

unint64_t sub_10098D0D8()
{
  result = qword_1016AFC48;
  if (!qword_1016AFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC48);
  }

  return result;
}

unint64_t sub_10098D130()
{
  result = qword_1016AFC50;
  if (!qword_1016AFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC50);
  }

  return result;
}

unint64_t sub_10098D188()
{
  result = qword_1016AFC58;
  if (!qword_1016AFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC58);
  }

  return result;
}

unint64_t sub_10098D1E0()
{
  result = qword_1016AFC60;
  if (!qword_1016AFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC60);
  }

  return result;
}

unint64_t sub_10098D238()
{
  result = qword_1016AFC68;
  if (!qword_1016AFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC68);
  }

  return result;
}

unint64_t sub_10098D290()
{
  result = qword_1016AFC70;
  if (!qword_1016AFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC70);
  }

  return result;
}

unint64_t sub_10098D2E8()
{
  result = qword_1016AFC78;
  if (!qword_1016AFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC78);
  }

  return result;
}

unint64_t sub_10098D340()
{
  result = qword_1016AFC80;
  if (!qword_1016AFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC80);
  }

  return result;
}

unint64_t sub_10098D398()
{
  result = qword_1016AFC88;
  if (!qword_1016AFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC88);
  }

  return result;
}

unint64_t sub_10098D3F0()
{
  result = qword_1016AFC90;
  if (!qword_1016AFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC90);
  }

  return result;
}

unint64_t sub_10098D448()
{
  result = qword_1016AFC98;
  if (!qword_1016AFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFC98);
  }

  return result;
}

unint64_t sub_10098D4A0()
{
  result = qword_1016AFCA0;
  if (!qword_1016AFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCA0);
  }

  return result;
}

unint64_t sub_10098D4F8()
{
  result = qword_1016AFCA8;
  if (!qword_1016AFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCA8);
  }

  return result;
}

unint64_t sub_10098D550()
{
  result = qword_1016AFCB0;
  if (!qword_1016AFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCB0);
  }

  return result;
}

unint64_t sub_10098D5A8()
{
  result = qword_1016AFCB8;
  if (!qword_1016AFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCB8);
  }

  return result;
}

unint64_t sub_10098D600()
{
  result = qword_1016AFCC0;
  if (!qword_1016AFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCC0);
  }

  return result;
}

unint64_t sub_10098D658()
{
  result = qword_1016AFCC8;
  if (!qword_1016AFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCC8);
  }

  return result;
}

unint64_t sub_10098D6B0()
{
  result = qword_1016AFCD0;
  if (!qword_1016AFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCD0);
  }

  return result;
}

unint64_t sub_10098D708()
{
  result = qword_1016AFCD8;
  if (!qword_1016AFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCD8);
  }

  return result;
}

uint64_t sub_10098D75C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706F724472656570 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001013669D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013669F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4449796C696D6166 && a2 == 0xE900000000000053 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 6448503 && a2 == 0xE300000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_10098DA04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44495344746C61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_10098DB2C(uint64_t a1)
{
  *(a1 + 8) = sub_10098DB5C();
  result = sub_10098DBB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10098DB5C()
{
  result = qword_1016AFCE0;
  if (!qword_1016AFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCE0);
  }

  return result;
}

unint64_t sub_10098DBB0()
{
  result = qword_1016AFCE8;
  if (!qword_1016AFCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCE8);
  }

  return result;
}

__n128 sub_10098DC04@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10098DC50(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10098DC50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v46, v47);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v46);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v46, v47);
  v48 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v11 = v10;
  sub_10015049C(v46, v47);
  v43 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v44 = v12;
  sub_10015049C(v46, v47);
  v41 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v42 = v13;
  sub_10015049C(v46, v47);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    v17 = v48;
    if (!v16)
    {
      v18 = BYTE6(v9);
LABEL_13:
      v19 = v43;
      v20 = v44;
      goto LABEL_14;
    }

LABEL_11:
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v18 = HIDWORD(v8) - v8;
    goto LABEL_13;
  }

  v17 = v48;
  v19 = v43;
  v20 = v44;
  if (v16 != 2)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v22 = *(v8 + 16);
  v21 = *(v8 + 24);
  v23 = __OFSUB__(v21, v22);
  v18 = v21 - v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  if (v18 != 114)
  {
    goto LABEL_60;
  }

  if ((v11 >> 62) <= 1)
  {
    if (v11 >> 62 == 1)
    {
      LODWORD(v24) = HIDWORD(v17) - v17;
      if (!__OFSUB__(HIDWORD(v17), v17))
      {
        v24 = v24;
        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v11 >> 62 != 2)
  {
    goto LABEL_59;
  }

  v26 = *(v17 + 16);
  v25 = *(v17 + 24);
  v23 = __OFSUB__(v25, v26);
  v24 = v25 - v26;
  if (v23)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_21:
  if (v24 != 1040)
  {
    goto LABEL_59;
  }

  v27 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(v20);
      goto LABEL_31;
    }

LABEL_29:
    LODWORD(v28) = HIDWORD(v19) - v19;
    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      v28 = v28;
      goto LABEL_31;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 != 2)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v30 = *(v19 + 16);
  v29 = *(v19 + 24);
  v23 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v23)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  if (v28 != 32)
  {
    goto LABEL_61;
  }

  v31 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(v15);
      goto LABEL_41;
    }

LABEL_39:
    LODWORD(v32) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v32 = v32;
      goto LABEL_41;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v31 != 2)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v34 = *(result + 16);
  v33 = *(result + 24);
  v23 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v23)
  {
    __break(1u);
    goto LABEL_39;
  }

LABEL_41:
  if (v32 != 100)
  {
    goto LABEL_62;
  }

  v35 = v42 >> 62;
  if ((v42 >> 62) <= 1)
  {
    if (!v35)
    {
      v36 = BYTE6(v42);
      goto LABEL_51;
    }

LABEL_49:
    LODWORD(v36) = HIDWORD(v41) - v41;
    if (!__OFSUB__(HIDWORD(v41), v41))
    {
      v36 = v36;
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  if (v35 != 2)
  {
    goto LABEL_63;
  }

  v38 = *(v41 + 16);
  v37 = *(v41 + 24);
  v23 = __OFSUB__(v37, v38);
  v36 = v37 - v38;
  if (v23)
  {
    __break(1u);
    goto LABEL_49;
  }

LABEL_51:
  if (v36 == 60)
  {
    v39 = v17;
    v40 = v19;
    v48 = result;
    v45 = v15;
    sub_100007BAC(v46);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v39;
    a2[3] = v11;
    a2[4] = v40;
    a2[5] = v20;
    a2[6] = v41;
    a2[7] = v42;
    a2[8] = v48;
    a2[9] = v45;
    return result;
  }

LABEL_63:
  __break(1u);
  return result;
}