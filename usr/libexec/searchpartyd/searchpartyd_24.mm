uint64_t sub_100291C84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v6 + 104) = v11;
    *v11 = v8;
    v11[1] = sub_100291E1C;
    v12 = *(v6 + 64);
    v13 = *(v6 + 72);
    v14 = *(v6 + 56);
    v15 = *(v6 + 120);

    return sub_10029B590(a1, a2, v15, v14, v12);
  }
}

uint64_t sub_100291E1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[9];

    return _swift_task_switch(sub_100291F80, v7, 0);
  }

  else
  {
    v9 = v4[11];
    v8 = v4[12];

    v10 = *(v6 + 8);

    return v10(a1);
  }
}

uint64_t sub_100291F80()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100291FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[98] = v3;
  v4[97] = a3;
  v4[96] = a2;
  v4[95] = a1;
  v5 = type metadata accessor for OwnerSharingCircle();
  v4[99] = v5;
  v6 = *(v5 - 8);
  v4[100] = v6;
  v7 = *(v6 + 64) + 15;
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v8 = type metadata accessor for HashAlgorithm();
  v4[103] = v8;
  v9 = *(v8 - 8);
  v4[104] = v9;
  v10 = *(v9 + 64) + 15;
  v4[105] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40) - 8) + 64) + 15;
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v12 = *(type metadata accessor for KeyDropFetchItem(0) - 8);
  v4[109] = v12;
  v13 = *(v12 + 64) + 15;
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  v14 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4[112] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[113] = swift_task_alloc();
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v4[114] = v16;
  v17 = *(v16 - 8);
  v4[115] = v17;
  v18 = *(v17 + 64) + 15;
  v4[116] = swift_task_alloc();
  v19 = type metadata accessor for MemberSharingCircle();
  v4[117] = v19;
  v20 = *(v19 - 8);
  v4[118] = v20;
  v21 = *(v20 + 64) + 15;
  v4[119] = swift_task_alloc();
  v22 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v4[120] = v22;
  v23 = *(v22 - 8);
  v4[121] = v23;
  v24 = *(v23 + 64) + 15;
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v25 = type metadata accessor for UUID();
  v4[129] = v25;
  v26 = *(v25 - 8);
  v4[130] = v26;
  v4[131] = *(v26 + 64);
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();

  return _swift_task_switch(sub_100292470, v3, 0);
}

uint64_t sub_100292470()
{
  v1 = *(v0 + 776);
  *(v0 + 712) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  *(v0 + 1136) = v2;
  if (v2)
  {
    v3 = *(v0 + 784);
    *(v0 + 1680) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 1160) = _swiftEmptyArrayStorage;
    *(v0 + 1144) = 0u;
    v4 = *(v0 + 1128);
    sub_10001F280(v1 + 32, v0 + 144);
    v5 = *(v3 + 136);
    *(v0 + 1168) = v5;
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v6);
    (*(*(*(v7 + 8) + 8) + 32))(v6);

    return _swift_task_switch(sub_100292788, v5, 0);
  }

  else
  {
    v8 = *(v0 + 1128);
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 1104);
    v12 = *(v0 + 1096);
    v13 = *(v0 + 1088);
    v14 = *(v0 + 1080);
    v15 = *(v0 + 1072);
    v16 = *(v0 + 1064);
    v17 = *(v0 + 1056);
    v20 = *(v0 + 1024);
    v21 = *(v0 + 1016);
    v22 = *(v0 + 1008);
    v23 = *(v0 + 1000);
    v24 = *(v0 + 992);
    v25 = *(v0 + 984);
    v26 = *(v0 + 976);
    v27 = *(v0 + 952);
    v28 = *(v0 + 928);
    v29 = *(v0 + 904);
    v30 = *(v0 + 888);
    v31 = *(v0 + 880);
    v32 = *(v0 + 864);
    v33 = *(v0 + 856);
    v34 = *(v0 + 848);
    v35 = *(v0 + 840);
    v36 = *(v0 + 816);
    v37 = *(v0 + 808);

    v18 = *(v0 + 8);

    return v18(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100292788()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v5 + 16);
  *(v0 + 1176) = v7;
  *(v0 + 1184) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v2, v6);
  v8 = *(v5 + 80);
  *(v0 + 1684) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 1192) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 1200) = v11;
  *(v0 + 1208) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v6);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 1216) = v13;
  v14 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v13 = v0;
  v13[1] = sub_10029295C;

  return unsafeBlocking<A>(context:_:)(v0 + 688, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC6C, v10, v14);
}

uint64_t sub_10029295C()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 1192);
  v3 = *(*v0 + 1168);
  v5 = *v0;

  return _swift_task_switch(sub_100292ABC, v3, 0);
}

uint64_t sub_100292ABC()
{
  v1 = v0[141];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[98];
  v5 = *(v2 + 8);
  v0[153] = v5;
  v0[154] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v0[155] = v0[86];

  return _swift_task_switch(sub_100292B80, v4, 0);
}

uint64_t sub_100292B80()
{
  v1 = v0[155];
  v2 = *(v1 + 16);
  v0[156] = v2;
  if (v2)
  {
    v3 = v0[143];
    v0[159] = 0;
    v0[158] = _swiftEmptyArrayStorage;
    v0[157] = v3;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v4 = v0[148];
    v5 = v0[147];
    v6 = v0[139];
    v7 = v0[138];
    v8 = v0[129];
    v9 = v0[117];
    v10 = *(v0[118] + 80);
    v11 = v1 + ((v10 + 32) & ~v10);
    v0[160] = *(v0[98] + 128);
    v5(v6, v11 + *(v9 + 28), v8);
    v5(v7, v11 + *(v9 + 24), v8);
    v12 = sub_100292DFC;
    v13 = 0;
  }

  else
  {

    v14 = v0[145];
    v15 = v0[143];
    sub_10039845C(_swiftEmptyArrayStorage);
    v16 = v0[142];
    v17 = v0[144] + 1;
    sub_100007BAC(v0 + 18);
    if (v17 == v16)
    {
      v0[180] = v14;
      v0[179] = 0;
      v18 = v0[146];
      v19 = v0[141];
      sub_10001F280(v0[97] + 32, (v0 + 28));
      v20 = v0[31];
      v21 = v0[32];
      sub_1000035D0(v0 + 28, v20);
      (*(*(*(v21 + 8) + 8) + 32))(v20);
      v22 = sub_10029639C;
    }

    else
    {
      v23 = v0[144];
      v0[145] = v14;
      v0[144] = v23 + 1;
      v0[143] = v15;
      v24 = v0[141];
      v25 = v0[98];
      sub_10001F280(v0[97] + 40 * v23 + 72, (v0 + 18));
      v18 = *(v25 + 136);
      v0[146] = v18;
      v26 = v0[21];
      v27 = v0[22];
      sub_1000035D0(v0 + 18, v26);
      (*(*(*(v27 + 8) + 8) + 32))(v26);
      v22 = sub_100292788;
    }

    v12 = v22;
    v13 = v18;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_100292DFC()
{
  v1 = *(*(v0 + 1280) + 120);
  *(v0 + 1288) = v1;

  return _swift_task_switch(sub_100292E90, v1, 0);
}

uint64_t sub_100292E90()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1200);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1128);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 1032);
  v8 = (*(v0 + 1684) + 24) & ~*(v0 + 1684);
  (*(v0 + 1176))(v5, *(v0 + 1112), v7);
  v9 = swift_allocObject();
  *(v0 + 1296) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1304) = v11;
  v12 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v11 = v0;
  v11[1] = sub_100293034;

  return unsafeBlocking<A>(context:_:)(v0 + 664, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB6D0, v9, v12);
}

uint64_t sub_100293034()
{
  v1 = *(*v0 + 1304);
  v2 = *(*v0 + 1296);
  v3 = *(*v0 + 1288);
  v5 = *v0;

  return _swift_task_switch(sub_100293194, v3, 0);
}

uint64_t sub_100293194()
{
  *(v0 + 1312) = *(v0 + 664);

  return _swift_task_switch(sub_100293228, 0, 0);
}

uint64_t sub_100293228()
{
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[164];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF08);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[164];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Got %ld keys in the sharing circle secrets keychain.", v7, 0xCu);
  }

  else
  {
    v8 = v0[164];
  }

  v9 = v0[157];
  sub_100D0E5C0(v0[164], (v0 + 2));
  v0[165] = v9;
  if (v9)
  {
    v10 = v0[155];

    v0[167] = v9;
    v11 = v0[158];
    v12 = v0[154];
    v13 = v0[153];
    v14 = v0[139];
    v15 = v0[129];
    v16 = v0[98];
    v13(v0[138], v15);
    v13(v14, v15);

    v17 = sub_100293914;
    v18 = v16;
  }

  else
  {
    v18 = v0[160];
    v17 = sub_100293444;
  }

  return _swift_task_switch(v17, v18, 0);
}

uint64_t sub_100293444()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    v2 = v0[155];

    sub_1001BAEE0();
    v3 = swift_allocError();
    *v4 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
    v0[167] = v3;
    v5 = v0[158];
    v6 = v0[154];
    v7 = v0[153];
    v8 = v0[139];
    v9 = v0[129];
    v10 = v0[98];
    v7(v0[138], v9);
    v7(v8, v9);

    v11 = sub_100293914;
    v12 = v10;
  }

  else
  {
    v13 = v0[154];
    v14 = v0[153];
    v23 = v0[150];
    v24 = v0[151];
    v15 = v0[139];
    v16 = v0[138];
    v17 = v0[129];
    v18 = v0[128];
    v19 = v0[120];
    v22 = v0[98];
    v20 = v0[7];
    sub_100017D5C(v20, v1);
    sub_1001BAF34((v0 + 2));
    v14(v15, v17);
    v23(v18 + *(v19 + 20), v16, v17);
    *v18 = v20;
    v18[1] = v1;
    v11 = sub_10029361C;
    v12 = v22;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_10029361C()
{
  v1 = *(v0 + 1264);
  sub_1002DB760(*(v0 + 1024), *(v0 + 1016), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 1264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5C82C(0, v3[2] + 1, 1, *(v0 + 1264));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5C82C(v4 > 1, v5 + 1, 1, v3);
  }

  *(v0 + 1328) = v3;
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 968);
  v9 = *(v0 + 1272) + 1;
  sub_1002DBBF0(*(v0 + 1024), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v3[2] = v5 + 1;
  sub_1002DB7C8(v7, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v9 == v6)
  {
    v10 = *(v0 + 1240);
    v11 = *(*(v0 + 944) + 80);
    *(v0 + 1688) = v11;
    v12 = *(v0 + 1320);
    *(v0 + 1360) = *(v0 + 1160);
    *(v0 + 1352) = 0;
    *(v0 + 1344) = v12;
    if (*(v10 + 16))
    {
      v13 = *(v0 + 1168);
      v14 = *(v0 + 1128);
      sub_1002DB760(v10 + ((v11 + 32) & ~v11), *(v0 + 952), type metadata accessor for MemberSharingCircle);
      v15 = *(v0 + 168);
      v16 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v15);
      (*(*(*(v16 + 8) + 8) + 32))(v15);
      v17 = sub_100293D20;
      v18 = v13;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v19 = *(v0 + 1320);
  v20 = *(v0 + 1272) + 1;
  *(v0 + 1272) = v20;
  *(v0 + 1264) = v3;
  *(v0 + 1256) = v19;
  v21 = *(v0 + 1240);
  if (v20 >= *(v21 + 16))
  {
    goto LABEL_14;
  }

  v22 = *(v0 + 1184);
  v23 = *(v0 + 1176);
  v24 = *(v0 + 1112);
  v25 = *(v0 + 1104);
  v26 = *(v0 + 1032);
  v27 = *(v0 + 936);
  v28 = v21 + ((*(*(v0 + 944) + 80) + 32) & ~*(*(v0 + 944) + 80)) + *(*(v0 + 944) + 72) * v20;
  *(v0 + 1280) = *(*(v0 + 784) + 128);
  v23(v24, v28 + *(v27 + 28), v26);
  v23(v25, v28 + *(v27 + 24), v26);
  v17 = sub_100292DFC;
  v18 = 0;
LABEL_10:

  return _swift_task_switch(v17, v18, 0);
}

uint64_t sub_100293914()
{
  v38 = v0;
  v1 = v0[167];
  v2 = v0[145];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v34 = v0[153];
    v35 = v0[154];
    v6 = v0[141];
    v7 = v0[129];
    v36 = v2;
    v8 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = v0[26];
    v9 = v0[27];
    sub_1000035D0(v0 + 23, v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v34(v6, v7);
    sub_100007BAC(v0 + 23);
    v14 = sub_1000136BC(v11, v13, &v37);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    swift_getErrorValue();
    v16 = v0[47];
    v15 = v0[48];
    v17 = v0[49];
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000136BC(v18, v19, &v37);

    *(v8 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v8, 0x20u);
    swift_arrayDestroy();

    v2 = v36;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v21 = v0[142];
  v22 = v0[144] + 1;
  sub_100007BAC(v0 + 18);
  if (v22 == v21)
  {
    v0[180] = v2;
    v0[179] = 0;
    v23 = v0[146];
    v24 = v0[141];
    sub_10001F280(v0[97] + 32, (v0 + 28));
    v25 = v0[31];
    v26 = v0[32];
    sub_1000035D0(v0 + 28, v25);
    (*(*(*(v26 + 8) + 8) + 32))(v25);
    v27 = sub_10029639C;
  }

  else
  {
    v28 = v0[144];
    v0[145] = v2;
    v0[144] = v28 + 1;
    v0[143] = 0;
    v29 = v0[141];
    v30 = v0[98];
    sub_10001F280(v0[97] + 40 * v28 + 72, (v0 + 18));
    v23 = *(v30 + 136);
    v0[146] = v23;
    v31 = v0[21];
    v32 = v0[22];
    sub_1000035D0(v0 + 18, v31);
    (*(*(*(v32 + 8) + 8) + 32))(v31);
    v27 = sub_100292788;
  }

  return _swift_task_switch(v27, v23, 0);
}

uint64_t sub_100293D20()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 1032);
  v8 = (*(v0 + 1684) + 24) & ~*(v0 + 1684);
  (*(v0 + 1176))(v5, *(v0 + 1128), v7);
  v9 = swift_allocObject();
  *(v0 + 1368) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1376) = v11;
  *v11 = v0;
  v11[1] = sub_100293EB0;
  v12 = *(v0 + 904);
  v13 = *(v0 + 896);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB6E8, v9, v13);
}

uint64_t sub_100293EB0()
{
  v1 = *(*v0 + 1376);
  v2 = *(*v0 + 1368);
  v3 = *(*v0 + 1232);
  v4 = *(*v0 + 1224);
  v5 = *(*v0 + 1128);
  v6 = *(*v0 + 1032);
  v7 = *(*v0 + 784);
  v9 = *v0;

  v4(v5, v6);

  return _swift_task_switch(sub_10029407C, v7, 0);
}

uint64_t sub_10029407C()
{
  v156 = v1;
  v2 = *(v1 + 912);
  v3 = *(v1 + 904);
  if ((*(*(v1 + 920) + 48))(v3, 1, v2) == 1)
  {
    sub_1002DBBF0(*(v1 + 952), type metadata accessor for MemberSharingCircle);
    sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
    v4 = *(v1 + 1352) + 1;
    if (v4 == *(v1 + 1248))
    {
      v5 = *(v1 + 1344);
      v6 = *(v1 + 1360);
      v7 = *(v1 + 1240);

      sub_10039845C(*(v1 + 1328));
LABEL_4:
      v8 = *(v1 + 1136);
      v9 = *(v1 + 1152) + 1;
      sub_100007BAC((v1 + 144));
      if (v9 == v8)
      {
        *(v1 + 1440) = v6;
        *(v1 + 1432) = 0;
        v10 = *(v1 + 1168);
        v11 = *(v1 + 1128);
        sub_10001F280(*(v1 + 776) + 32, v1 + 224);
        v12 = *(v1 + 248);
        v13 = *(v1 + 256);
        sub_1000035D0((v1 + 224), v12);
        (*(*(*(v13 + 8) + 8) + 32))(v12);
        v14 = sub_10029639C;
      }

      else
      {
        v95 = *(v1 + 1152);
        *(v1 + 1160) = v6;
        *(v1 + 1152) = v95 + 1;
        *(v1 + 1144) = v5;
        v96 = *(v1 + 1128);
        v97 = *(v1 + 784);
        sub_10001F280(*(v1 + 776) + 40 * v95 + 72, v1 + 144);
        v10 = *(v97 + 136);
        *(v1 + 1168) = v10;
        v98 = *(v1 + 168);
        v99 = *(v1 + 176);
        sub_1000035D0((v1 + 144), v98);
        (*(*(*(v99 + 8) + 8) + 32))(v98);
        v14 = sub_100292788;
      }

LABEL_124:

      return _swift_task_switch(v14, v10, 0);
    }

    *(v1 + 1352) = v4;
    v23 = *(v1 + 1240);
    if (v4 < *(v23 + 16))
    {
      v10 = *(v1 + 1168);
      v24 = *(v1 + 1128);
      sub_1002DB760(v23 + ((*(v1 + 1688) + 32) & ~*(v1 + 1688)) + *(*(v1 + 944) + 72) * v4, *(v1 + 952), type metadata accessor for MemberSharingCircle);
      v25 = *(v1 + 168);
      v26 = *(v1 + 176);
      sub_1000035D0((v1 + 144), v25);
      (*(*(*(v26 + 8) + 8) + 32))(v25);
      v14 = sub_100293D20;
      goto LABEL_124;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    swift_once();
    goto LABEL_146;
  }

  v15 = *(v1 + 1096);
  v16 = *(v1 + 928);
  sub_1002DB7C8(v3, v16, type metadata accessor for SharedBeaconRecord);
  v18 = *(v1 + 168);
  v17 = *(v1 + 176);
  sub_1000035D0((v1 + 144), v18);
  (*(*(*(v17 + 8) + 8) + 32))(v18);
  v19 = *(v16 + *(v2 + 64));
  v20 = *(v1 + 168);
  v21 = *(v1 + 176);
  sub_1000035D0((v1 + 144), v20);
  v22 = (*(v21 + 88))(v20, v21);
  if (v19 > 2)
  {
    if (v19 == 3 || v19 != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
    v100 = *(v1 + 1328);
    v101 = *(v1 + 1240);
    v102 = *(v1 + 1232);
    v103 = *(v1 + 952);
    v104 = *(v1 + 928);
    (*(v1 + 1224))(*(v1 + 1096), *(v1 + 1032));

    type metadata accessor for SPBeaconSharingError(0);
    *(v1 + 544) = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1002DB700(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v105 = *(v1 + 744);
    swift_willThrow();
    sub_1002DBBF0(v104, type metadata accessor for SharedBeaconRecord);
    sub_1002DBBF0(v103, type metadata accessor for MemberSharingCircle);

    v6 = *(v1 + 1360);
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    sub_1000076D4(v106, qword_10177A818);
    sub_10001F280(v1 + 144, v1 + 184);
    swift_errorRetain();
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v107, v108))
    {
      v151 = *(v1 + 1224);
      v153 = *(v1 + 1232);
      v109 = *(v1 + 1128);
      v110 = *(v1 + 1032);
      v111 = swift_slowAlloc();
      v155[0] = swift_slowAlloc();
      *v111 = 141558531;
      *(v111 + 4) = 1752392040;
      *(v111 + 12) = 2081;
      v113 = *(v1 + 208);
      v112 = *(v1 + 216);
      sub_1000035D0((v1 + 184), v113);
      (*(*(*(v112 + 8) + 8) + 32))(v113);
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      v151(v109, v110);
      sub_100007BAC((v1 + 184));
      v117 = sub_1000136BC(v114, v116, v155);

      *(v111 + 14) = v117;
      *(v111 + 22) = 2080;
      swift_getErrorValue();
      v119 = *(v1 + 376);
      v118 = *(v1 + 384);
      v120 = *(v1 + 392);
      v121 = Error.localizedDescription.getter();
      v123 = sub_1000136BC(v121, v122, v155);

      *(v111 + 24) = v123;
      _os_log_impl(&_mh_execute_header, v107, v108, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v111, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100007BAC((v1 + 184));
    }

    v5 = 0;
    goto LABEL_4;
  }

  if (v19 == 1)
  {
LABEL_17:
    if (v22)
    {
      LOBYTE(v19) = 2;
    }

    else
    {
      LOBYTE(v19) = 1;
    }

    goto LABEL_20;
  }

  LOBYTE(v19) = 0;
LABEL_20:
  *(v1 + 1718) = v19;
  v28 = *(v1 + 1328);
  v29 = *(v1 + 1184);
  (*(v1 + 1176))(*(v1 + 1088), *(v1 + 952) + *(*(v1 + 936) + 28), *(v1 + 1032));
  v30 = *(v28 + 16);
  v31 = _swiftEmptyArrayStorage;
  if (!v30)
  {
LABEL_120:
    *(v1 + 1384) = v31;
    v88 = swift_task_alloc();
    *(v1 + 1392) = v88;
    *v88 = v1;
    v88[1] = sub_1002952F4;
    v89 = *(v1 + 1096);
    v90 = *(v1 + 1088);
    v91 = *(v1 + 784);
    v92 = *(v1 + 768);
    v93 = *(v1 + 760);

    return sub_10029D71C(v89, v90, v93, v92);
  }

  v147 = (v1 + 656);
  v32 = *(v1 + 1328);
  v33 = *(v1 + 968);
  *(v1 + 648) = _swiftEmptyArrayStorage;
  sub_1011247A4(0, v30, 0);
  v34 = 0;
  v31 = *(v1 + 648);
  v148 = v30;
  v149 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v0 = *(v1 + 1344);
  while (1)
  {
    if (v34 >= *(*(v1 + 1328) + 16))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v35 = *(v1 + 1008);
    v154 = v34;
    sub_1002DB760(v149 + *(*(v1 + 968) + 72) * v34, v35, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v36 = *v35;
    v37 = v35[1];
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 != 2)
      {
        v41 = 0;
        v39 = 0;
        v42 = 0;
        v40 = 0;
        goto LABEL_34;
      }

      v39 = *(v36 + 16);
      v41 = *(v36 + 24);
    }

    else
    {
      if (!v38)
      {
        v39 = 0;
        v40 = 0;
        v41 = BYTE6(v37);
        v42 = BYTE6(v37);
        goto LABEL_34;
      }

      v39 = v36;
      v41 = v36 >> 32;
    }

    sub_100017D5C(v36, v37);
    if (v41 < v39)
    {
      goto LABEL_156;
    }

    if (v38 == 2)
    {
      v40 = *(v36 + 16);
      v42 = *(v36 + 24);
    }

    else
    {
      v40 = v36;
      v42 = v36 >> 32;
    }

LABEL_34:
    if (v42 < v41 || v41 < v40)
    {
      goto LABEL_157;
    }

    if (__OFSUB__(v41, v39))
    {
      goto LABEL_158;
    }

    if ((v41 - v39) < 0x39)
    {
      if (v38 <= 1)
      {
        if (!v38)
        {
          goto LABEL_61;
        }

        v43 = v36 >> 32;
LABEL_57:
        v46 = v36;
        goto LABEL_60;
      }

      if (v38 != 2)
      {
        goto LABEL_61;
      }

      v43 = *(v36 + 24);
LABEL_59:
      v46 = *(v36 + 16);
      goto LABEL_60;
    }

    v43 = v39 + 57;
    if (__OFADD__(v39, 57))
    {
      goto LABEL_162;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v44 = *(v36 + 16);
        v45 = *(v36 + 24);
      }

      else
      {
        v45 = 0;
        v44 = 0;
      }
    }

    else if (v38)
    {
      v44 = v36;
      v45 = v36 >> 32;
    }

    else
    {
      v44 = 0;
      v45 = BYTE6(v37);
    }

    if (v45 < v43 || v43 < v44)
    {
      goto LABEL_163;
    }

    v46 = 0;
    if (v38 <= 1)
    {
      if (!v38)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

    if (v38 != 3)
    {
      goto LABEL_59;
    }

LABEL_60:
    if (v43 < v46)
    {
      goto LABEL_159;
    }

LABEL_61:
    v47 = Data._Representation.subscript.getter();
    v49 = v48;
    sub_100016590(v36, v37);
    v50 = v49 >> 62;
    if ((v49 >> 62) > 1)
    {
      if (v50 != 2)
      {
        goto LABEL_132;
      }

      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      v54 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (v54)
      {
        goto LABEL_167;
      }
    }

    else if (v50)
    {
      LODWORD(v51) = HIDWORD(v47) - v47;
      if (__OFSUB__(HIDWORD(v47), v47))
      {
        goto LABEL_166;
      }

      v51 = v51;
    }

    else
    {
      v51 = BYTE6(v49);
    }

    if (v51 != 57)
    {
LABEL_132:
      sub_100016590(v47, v49);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    sub_100A7A194(v47, v49);
    if (v0)
    {
      goto LABEL_145;
    }

    v152 = v31;
    *(v1 + 680) = 57;
    v55 = type metadata accessor for __DataStorage();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v58 = __DataStorage.init(length:)();
    *(v1 + 456) = 0x3900000000;
    *(v1 + 464) = v58 | 0x4000000000000000;
    v59 = sub_100A7AF80((v1 + 456));
    if (v59)
    {
      break;
    }

    v60 = *(v1 + 680);
    if ((v60 & 0x8000000000000000) != 0)
    {
      goto LABEL_160;
    }

    v61 = *(v1 + 456);
    v0 = *(v1 + 464);
    v62 = v0 >> 62;
    v150 = v47;
    if ((v0 >> 62) > 1)
    {
      if (v62 != 2)
      {
        v64 = 0;
        v63 = 0;
        goto LABEL_82;
      }

      v63 = *(v61 + 16);
      v64 = *(v61 + 24);
      goto LABEL_80;
    }

    if (v62)
    {
      v63 = v61;
      v64 = v61 >> 32;
LABEL_80:
      sub_100017D5C(v61, v0);
      goto LABEL_82;
    }

    v63 = 0;
    v64 = BYTE6(v0);
LABEL_82:
    v65 = sub_10002F330(v63, v64, v61, v0);
    if (v60 && v65 < v60)
    {
      if (v62 <= 1)
      {
        if (!v62)
        {
          goto LABEL_107;
        }

        v66 = v61 >> 32;
LABEL_103:
        v69 = v61;
        goto LABEL_106;
      }

      if (v62 != 2)
      {
        goto LABEL_107;
      }

      v66 = *(v61 + 24);
LABEL_105:
      v69 = *(v61 + 16);
      goto LABEL_106;
    }

    v66 = v63 + v60;
    if (__OFADD__(v63, v60))
    {
      goto LABEL_164;
    }

    if (v62 > 1)
    {
      if (v62 == 2)
      {
        v67 = *(v61 + 16);
        v68 = *(v61 + 24);
      }

      else
      {
        v68 = 0;
        v67 = 0;
      }
    }

    else if (v62)
    {
      v67 = v61;
      v68 = v61 >> 32;
    }

    else
    {
      v67 = 0;
      v68 = BYTE6(v0);
    }

    if (v68 < v66 || v66 < v67)
    {
      goto LABEL_165;
    }

    v69 = 0;
    if (v62 <= 1)
    {
      if (!v62)
      {
        goto LABEL_106;
      }

      goto LABEL_103;
    }

    if (v62 != 3)
    {
      goto LABEL_105;
    }

LABEL_106:
    if (v66 < v69)
    {
      goto LABEL_161;
    }

LABEL_107:
    v70 = Data._Representation.subscript.getter();
    v72 = v71;
    sub_100016590(v61, v0);
    sub_100016590(v61, v0);
    CCECCryptorRelease();
    v73 = v72 >> 62;
    if ((v72 >> 62) > 1)
    {
      if (v73 != 2)
      {
        v134 = 0;
        goto LABEL_152;
      }

      v76 = *(v70 + 16);
      v75 = *(v70 + 24);
      v54 = __OFSUB__(v75, v76);
      v74 = v75 - v76;
      if (v54)
      {
        goto LABEL_169;
      }
    }

    else if (v73)
    {
      LODWORD(v74) = HIDWORD(v70) - v70;
      if (__OFSUB__(HIDWORD(v70), v70))
      {
        goto LABEL_168;
      }

      v74 = v74;
    }

    else
    {
      v74 = BYTE6(v72);
    }

    if (v74 != 28)
    {
      if (v73 == 2)
      {
        v142 = *(v70 + 16);
        v141 = *(v70 + 24);
        v134 = v141 - v142;
        if (!__OFSUB__(v141, v142))
        {
          goto LABEL_152;
        }

        __break(1u);
      }

      else if (v73 == 1)
      {
        if (__OFSUB__(HIDWORD(v70), v70))
        {
          __break(1u);
        }

        v134 = HIDWORD(v70) - v70;
        goto LABEL_152;
      }

      v134 = BYTE6(v72);
LABEL_152:
      sub_100018350();
      v139 = swift_allocError();
      *v143 = 28;
      *(v143 + 8) = v134;
      *(v143 + 16) = 0;
      swift_willThrow();
      sub_100016590(v70, v72);
      goto LABEL_153;
    }

    v77 = *(v1 + 1680);
    v78 = *(v1 + 1008);
    v79 = *(v1 + 840);
    v80 = *(v1 + 832);
    v81 = *(v1 + 824);
    sub_100016590(v150, v49);
    (*(v80 + 104))(v79, v77, v81);
    v82 = Data.hash(algorithm:)();
    v84 = v83;
    sub_100016590(v70, v72);
    (*(v80 + 8))(v79, v81);
    sub_1002DBBF0(v78, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v31 = v152;
    *(v1 + 648) = v152;
    v86 = v152[2];
    v85 = v152[3];
    if (v86 >= v85 >> 1)
    {
      sub_1011247A4((v85 > 1), v86 + 1, 1);
      v31 = *(v1 + 648);
    }

    v0 = 0;
    v34 = v154 + 1;
    v31[2] = v86 + 1;
    v87 = &v31[2 * v86];
    v87[4] = v82;
    v87[5] = v84;
    if (v148 == v154 + 1)
    {
      goto LABEL_120;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v124 = *(v1 + 864);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_101385D80;
  *(v125 + 56) = &type metadata for Int32;
  *(v125 + 64) = &protocol witness table for Int32;
  *(v125 + 32) = v59;
  os_log(_:dso:log:_:_:)();

  CryptoError.init(rawValue:)();
  v126 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
  v127 = swift_allocError();
  v129 = v128;
  v130 = *(v126 - 8);
  v131 = *(v130 + 48);
  v132 = v131(v124, 1, v126);
  v133 = *(v1 + 864);
  if (v132 == 1)
  {
    (*(v130 + 104))(v129, enum case for CryptoError.unspecifiedError(_:), v126);
    if (v131(v133, 1, v126) != 1)
    {
      sub_10000B3A8(*(v1 + 864), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v130 + 32))(v129, *(v1 + 864), v126);
  }

  swift_willThrow();
  v0 = v127;
  sub_100016590(*(v1 + 456), *(v1 + 464));
LABEL_145:
  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_171;
  }

LABEL_146:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_101385D80;
  *v147 = v0;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v136 = String.init<A>(describing:)();
  v138 = v137;
  *(v135 + 56) = &type metadata for String;
  *(v135 + 64) = sub_100008C00();
  *(v135 + 32) = v136;
  *(v135 + 40) = v138;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v139 = swift_allocError();
  *v140 = 0;
  swift_willThrow();

LABEL_153:
  v155[0] = 0;
  v155[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  *(v1 + 472) = 0;
  *(v1 + 480) = 0xE000000000000000;
  v144._countAndFlagsBits = 0xD000000000000021;
  v144._object = 0x800000010134CB30;
  String.append(_:)(v144);
  *(v1 + 672) = v139;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v145 = *(v1 + 472);
  v146 = *(v1 + 480);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002952F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1392);
  v16 = *v2;
  *(*v2 + 1400) = a1;

  if (v1)
  {
    v5 = v3[173];
    v6 = v3[155];

    v3[178] = v1;
    v7 = v3[166];
    v8 = v3[154];
    v9 = v3[153];
    v10 = v3[137];
    v11 = v3[129];
    v12 = v3[98];
    v9(v3[136], v11);
    v9(v10, v11);

    v13 = sub_100295F54;
    v14 = v12;
  }

  else
  {
    v14 = v3[98];
    v13 = sub_1002954BC;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_1002954BC()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1400);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1080);
  v6 = *(v0 + 1032);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A818);
  v3(v5, v4, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1400);
  v12 = *(v0 + 1232);
  v13 = *(v0 + 1224);
  v14 = *(v0 + 1080);
  v15 = *(v0 + 1032);
  if (v10)
  {
    v52 = v9;
    log = v8;
    v16 = swift_slowAlloc();
    *(v0 + 696) = swift_slowAlloc();
    *v16 = 134218755;
    *(v16 + 4) = *(v11 + 16);

    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_1000136BC(v17, v19, (v0 + 696));

    *(v16 + 24) = v20;
    buf = v16;
    *(v16 + 32) = 2082;
    v21 = *(v11 + 16);
    if (v21)
    {
      v22 = *(v0 + 1400);
      *(v0 + 704) = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v21, 0);
      v23 = *(v0 + 704);
      v24 = (v22 + 64);
      do
      {
        v25 = *(v24 - 3);
        v26 = *(v24 - 1);
        v54 = *(v24 - 2);
        v27 = *v24;
        *(v0 + 720) = *(v24 - 4);
        sub_100017D5C(v26, v27);
        *(v0 + 440) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 448) = v28;
        v29._countAndFlagsBits = 8250;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);
        *(v0 + 728) = v25;
        v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v30);

        v31._countAndFlagsBits = 45;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
        *(v0 + 736) = v54;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        sub_100016590(v26, v27);
        v33 = *(v0 + 440);
        v34 = *(v0 + 448);
        *(v0 + 704) = v23;
        v36 = *(v23 + 16);
        v35 = *(v23 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_101123BB8((v35 > 1), v36 + 1, 1);
          v23 = *(v0 + 704);
        }

        v24 += 5;
        *(v23 + 16) = v36 + 1;
        v37 = v23 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v34;
        --v21;
      }

      while (v21);
    }

    v39 = Array.description.getter();
    v41 = v40;

    v42 = sub_1000136BC(v39, v41, (v0 + 696));

    *(buf + 34) = v42;
    _os_log_impl(&_mh_execute_header, log, v52, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v38 = *(v0 + 1400);

    v13(v14, v15);
  }

  v43 = swift_task_alloc();
  *(v0 + 1408) = v43;
  *v43 = v0;
  v43[1] = sub_100295968;
  v44 = *(v0 + 1400);
  v45 = *(v0 + 1384);
  v46 = *(v0 + 1088);
  v47 = *(v0 + 888);
  v48 = *(v0 + 784);
  v49 = *(v0 + 1718);

  return sub_10029E154(v47, v44, v46, v49, v45);
}

uint64_t sub_100295968()
{
  v2 = *v1;
  v3 = *(*v1 + 1408);
  v4 = *v1;
  *(*v1 + 1416) = v0;

  v5 = *(v2 + 784);
  if (v0)
  {
    v6 = sub_100295E50;
  }

  else
  {
    v6 = sub_100295AC0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100295AC0()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1360);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1224);
  v6 = *(v0 + 1096);
  v7 = *(v0 + 1088);
  v8 = *(v0 + 1032);

  v5(v7, v8);
  v5(v6, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 1360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100A5C854(0, v10[2] + 1, 1, *(v0 + 1360));
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_100A5C854(v11 > 1, v12 + 1, 1, v10);
  }

  v13 = *(v0 + 952);
  v14 = *(v0 + 888);
  v15 = *(v0 + 872);
  sub_1002DBBF0(*(v0 + 928), type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v13, type metadata accessor for MemberSharingCircle);
  v10[2] = v12 + 1;
  sub_1002DB7C8(v14, v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, type metadata accessor for KeyDropFetchItem);
  v16 = *(v0 + 1416);
  v17 = *(v0 + 1352) + 1;
  if (v17 == *(v0 + 1248))
  {
    v18 = *(v0 + 1240);

    sub_10039845C(*(v0 + 1328));
    v19 = *(v0 + 1136);
    v20 = *(v0 + 1152) + 1;
    sub_100007BAC((v0 + 144));
    if (v20 == v19)
    {
      *(v0 + 1440) = v10;
      *(v0 + 1432) = 0;
      v21 = *(v0 + 1168);
      v22 = *(v0 + 1128);
      sub_10001F280(*(v0 + 776) + 32, v0 + 224);
      v23 = *(v0 + 248);
      v24 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v23);
      (*(*(*(v24 + 8) + 8) + 32))(v23);
      v25 = sub_10029639C;
    }

    else
    {
      v30 = *(v0 + 1152);
      *(v0 + 1160) = v10;
      *(v0 + 1152) = v30 + 1;
      *(v0 + 1144) = v16;
      v31 = *(v0 + 1128);
      v32 = *(v0 + 784);
      sub_10001F280(*(v0 + 776) + 40 * v30 + 72, v0 + 144);
      v21 = *(v32 + 136);
      *(v0 + 1168) = v21;
      v33 = *(v0 + 168);
      v34 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v33);
      (*(*(*(v34 + 8) + 8) + 32))(v33);
      v25 = sub_100292788;
    }
  }

  else
  {
    *(v0 + 1360) = v10;
    *(v0 + 1352) = v17;
    *(v0 + 1344) = v16;
    v26 = *(v0 + 1240);
    if (v17 >= *(v26 + 16))
    {
      __break(1u);
    }

    v21 = *(v0 + 1168);
    v27 = *(v0 + 1128);
    sub_1002DB760(v26 + ((*(v0 + 1688) + 32) & ~*(v0 + 1688)) + *(*(v0 + 944) + 72) * v17, *(v0 + 952), type metadata accessor for MemberSharingCircle);
    v28 = *(v0 + 168);
    v29 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v28);
    (*(*(*(v29 + 8) + 8) + 32))(v28);
    v25 = sub_100293D20;
  }

  return _swift_task_switch(v25, v21, 0);
}

uint64_t sub_100295E50()
{
  v1 = v0[175];
  v2 = v0[173];
  v3 = v0[155];

  v0[178] = v0[177];
  v4 = v0[166];
  v5 = v0[154];
  v6 = v0[153];
  v7 = v0[137];
  v8 = v0[129];
  v9 = v0[98];
  v6(v0[136], v8);
  v6(v7, v8);

  return _swift_task_switch(sub_100295F54, v9, 0);
}

uint64_t sub_100295F54()
{
  v39 = v0;
  v1 = v0[119];
  sub_1002DBBF0(v0[116], type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v1, type metadata accessor for MemberSharingCircle);
  v2 = v0[178];
  v3 = v0[170];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v35 = v0[153];
    v36 = v0[154];
    v7 = v0[141];
    v8 = v0[129];
    v37 = v3;
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = v0[26];
    v10 = v0[27];
    sub_1000035D0(v0 + 23, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v35(v7, v8);
    sub_100007BAC(v0 + 23);
    v15 = sub_1000136BC(v12, v14, &v38);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v17 = v0[47];
    v16 = v0[48];
    v18 = v0[49];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, &v38);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v9, 0x20u);
    swift_arrayDestroy();

    v3 = v37;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v22 = v0[142];
  v23 = v0[144] + 1;
  sub_100007BAC(v0 + 18);
  if (v23 == v22)
  {
    v0[180] = v3;
    v0[179] = 0;
    v24 = v0[146];
    v25 = v0[141];
    sub_10001F280(v0[97] + 32, (v0 + 28));
    v26 = v0[31];
    v27 = v0[32];
    sub_1000035D0(v0 + 28, v26);
    (*(*(*(v27 + 8) + 8) + 32))(v26);
    v28 = sub_10029639C;
  }

  else
  {
    v29 = v0[144];
    v0[145] = v3;
    v0[144] = v29 + 1;
    v0[143] = 0;
    v30 = v0[141];
    v31 = v0[98];
    sub_10001F280(v0[97] + 40 * v29 + 72, (v0 + 18));
    v24 = *(v31 + 136);
    v0[146] = v24;
    v32 = v0[21];
    v33 = v0[22];
    sub_1000035D0(v0 + 18, v32);
    (*(*(*(v33 + 8) + 8) + 32))(v32);
    v28 = sub_100292788;
  }

  return _swift_task_switch(v28, v24, 0);
}

uint64_t sub_10029639C()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1032);
  v7 = (*(v0 + 1684) + 24) & ~*(v0 + 1684);
  v8 = (v7 + *(v0 + 1048) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 1176))(v5, *(v0 + 1128), v6);
  v9 = swift_allocObject();
  *(v0 + 1448) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v7, v5, v6);
  *(v9 + v8) = 0;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1456) = v11;
  v12 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v11 = v0;
  v11[1] = sub_100296550;

  return unsafeBlocking<A>(context:_:)(v0 + 640, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v12);
}

uint64_t sub_100296550()
{
  v1 = *(*v0 + 1456);
  v2 = *(*v0 + 1448);
  v3 = *(*v0 + 1168);
  v5 = *v0;

  return _swift_task_switch(sub_1002966B0, v3, 0);
}

uint64_t sub_1002966B0()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1168);
  (*(v0 + 1224))(*(v0 + 1128), *(v0 + 1032));
  *(v0 + 1464) = *(v0 + 640);

  return _swift_task_switch(sub_10029675C, v2, 0);
}

uint64_t sub_10029675C()
{
  v1 = *(v0 + 1168);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1472) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100296868;
  v5 = *(v0 + 1168);

  return unsafeBlocking<A>(context:_:)(v0 + 624, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_100296868()
{
  v1 = *(*v0 + 1472);
  v2 = *(*v0 + 1168);
  v4 = *v0;

  return _swift_task_switch(sub_1002969AC, v2, 0);
}

uint64_t sub_1002969AC()
{
  v1 = v0[98];
  v0[185] = v0[78];

  return _swift_task_switch(sub_100296A40, v1, 0);
}

uint64_t sub_100296A40()
{
  v1 = *(v0 + 1464);
  v2 = *(v1 + 16);
  *(v0 + 1488) = v2;
  if (v2)
  {
    *(v0 + 1504) = 0;
    *(v0 + 1496) = _swiftEmptyArrayStorage;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v3 = *(v0 + 1480);
    v4 = *(*(v0 + 800) + 80);
    sub_1002DB760(v1 + ((v4 + 32) & ~v4), *(v0 + 816), type metadata accessor for OwnerSharingCircle);
    sub_10001F280(v0 + 224, v0 + 264);
    v5 = swift_allocObject();
    *(v0 + 1512) = v5;
    *(v5 + 16) = v3;
    sub_10000A748((v0 + 264), v5 + 24);
    v6 = async function pointer to unsafeBlocking<A>(_:)[1];

    v7 = swift_task_alloc();
    *(v0 + 1520) = v7;
    v8 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    *v7 = v0;
    v7[1] = sub_100296ED8;

    return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DBC50, v5, v8);
  }

  else
  {

    v9 = *(v0 + 1440);
    v10 = *(v0 + 1480);
    sub_10039845C(_swiftEmptyArrayStorage);

    v11 = *(v0 + 1136);
    v12 = *(v0 + 1432) + 1;
    sub_100007BAC((v0 + 224));
    if (v12 == v11)
    {
      v30 = *(v0 + 712);
      v31 = v9;
      v13 = *(v0 + 1128);
      v14 = *(v0 + 1120);
      v15 = *(v0 + 1112);
      v16 = *(v0 + 1104);
      v17 = *(v0 + 1096);
      v18 = *(v0 + 1088);
      v19 = *(v0 + 1080);
      v20 = *(v0 + 1072);
      v21 = *(v0 + 1064);
      v22 = *(v0 + 1056);
      v32 = *(v0 + 1024);
      v33 = *(v0 + 1016);
      v34 = *(v0 + 1008);
      v35 = *(v0 + 1000);
      v36 = *(v0 + 992);
      v37 = *(v0 + 984);
      v38 = *(v0 + 976);
      v39 = *(v0 + 952);
      v40 = *(v0 + 928);
      v41 = *(v0 + 904);
      v42 = *(v0 + 888);
      v43 = *(v0 + 880);
      v44 = *(v0 + 864);
      v45 = *(v0 + 856);
      v46 = *(v0 + 848);
      v47 = *(v0 + 840);
      v48 = *(v0 + 816);
      v49 = *(v0 + 808);

      v23 = *(v0 + 8);

      return v23(v31, v30);
    }

    else
    {
      v24 = *(v0 + 1432);
      *(v0 + 1440) = v9;
      *(v0 + 1432) = v24 + 1;
      v25 = *(v0 + 1168);
      v26 = *(v0 + 1128);
      sub_10001F280(*(v0 + 776) + 40 * v24 + 72, v0 + 224);
      v27 = *(v0 + 248);
      v28 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v27);
      (*(*(*(v28 + 8) + 8) + 32))(v27);

      return _swift_task_switch(sub_10029639C, v25, 0);
    }
  }
}

uint64_t sub_100296ED8()
{
  v2 = *v1;
  v3 = *(*v1 + 1520);
  v4 = *v1;
  v2[191] = v0;

  v5 = v2[189];
  if (v0)
  {
    v6 = v2[187];
    v7 = v2[183];
    v8 = v2[98];

    v9 = sub_10029AFF4;
  }

  else
  {
    v8 = v2[98];

    v9 = sub_100297064;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100297064()
{
  v24 = *(v0 + 1496);
  v1 = *(v0 + 1000);
  v2 = *(v0 + 960);
  sub_100016590(*(v0 + 344), *(v0 + 352));
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  *(v0 + 1536) = v3;
  *(v0 + 1544) = v4;
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  sub_1000035D0((v0 + 224), v5);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v7 + 32);
  v9 = *(v2 + 20);
  sub_100017D5C(v3, v4);
  v8(v5, v7);
  *v1 = v3;
  v1[1] = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 1496);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100A5C82C(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100A5C82C(v12 > 1, v13 + 1, 1, v11);
  }

  *(v0 + 1552) = v11;
  v14 = *(v0 + 1000);
  v15 = *(v0 + 968);
  v16 = *(v0 + 816);
  v17 = *(v0 + 792);
  v18 = *(v0 + 784);
  v11[2] = v13 + 1;
  v19 = *(v15 + 80);
  *(v0 + 1692) = v19;
  v20 = *(v15 + 72);
  *(v0 + 1560) = v20;
  sub_1002DB7C8(v14, v11 + ((v19 + 32) & ~v19) + v20 * v13, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  *(v0 + 1568) = *(v18 + 128);
  v21 = *(v17 + 20);
  *(v0 + 1696) = *(v17 + 24);
  v22 = swift_task_alloc();
  *(v0 + 1576) = v22;
  *v22 = v0;
  v22[1] = sub_100297280;

  return sub_100C7BA0C(v0 + 80, v16 + v21);
}

uint64_t sub_100297280()
{
  v2 = *v1;
  v3 = *(*v1 + 1576);
  v10 = *v1;
  *(*v1 + 1584) = v0;

  if (v0)
  {
    v4 = v2[194];

    v5 = v2[183];
    v2[200] = v0;
    v6 = v2[98];

    v7 = sub_1002987EC;
    v8 = v6;
  }

  else
  {
    v8 = v2[196];
    v7 = sub_100297400;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100297400()
{
  v1 = *(v0 + 128);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 1464);

    sub_1001BAEE0();
    v3 = swift_allocError();
    *v4 = 12;
    swift_willThrow();
    sub_1001BAF34(v0 + 80);
    v5 = *(v0 + 1552);
    *(v0 + 1600) = v3;
    v6 = *(v0 + 784);

    v7 = sub_1002987EC;
    v8 = v6;
  }

  else
  {
    v9 = *(v0 + 1696);
    v10 = *(v0 + 1184);
    v11 = *(v0 + 1176);
    v12 = *(v0 + 1032);
    v13 = *(v0 + 992);
    v14 = *(v0 + 960);
    v15 = *(v0 + 816);
    v18 = *(v0 + 784);
    v16 = *(v0 + 120);
    sub_100017D5C(v16, v1);
    sub_1001BAF34(v0 + 80);
    v11(v13 + *(v14 + 20), v15 + v9, v12);
    *v13 = v16;
    v13[1] = v1;
    v7 = sub_100297590;
    v8 = v18;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100297590()
{
  v1 = *(v0 + 1552);
  sub_1002DB760(*(v0 + 992), *(v0 + 984), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v3 + 1;
  v5 = *(v0 + 1552);
  v134 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    goto LABEL_136;
  }

LABEL_2:
  *(v0 + 1592) = v5;
  v6 = *(v0 + 1560);
  v7 = *(v0 + 1488);
  v8 = *(v0 + 992);
  v9 = *(v0 + 984);
  v10 = *(v0 + 816);
  v11 = (*(v0 + 1692) + 32) & ~*(v0 + 1692);
  v12 = *(v0 + 1504) + 1;
  sub_100016590(*(v0 + 1536), *(v0 + 1544));
  sub_1002DBBF0(v8, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  sub_1002DBBF0(v10, type metadata accessor for OwnerSharingCircle);
  *(v5 + 16) = v134;
  sub_1002DB7C8(v9, v5 + v11 + v6 * v3, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v12 != v7)
  {
    v79 = *(v0 + 1504) + 1;
    *(v0 + 1504) = v79;
    *(v0 + 1496) = v5;
    v80 = *(v0 + 1464);
    if (v79 < *(v80 + 16))
    {
      v81 = *(v0 + 1480);
      sub_1002DB760(v80 + ((*(*(v0 + 800) + 80) + 32) & ~*(*(v0 + 800) + 80)) + *(*(v0 + 800) + 72) * v79, *(v0 + 816), type metadata accessor for OwnerSharingCircle);
      sub_10001F280(v0 + 224, v0 + 264);
      v82 = swift_allocObject();
      *(v0 + 1512) = v82;
      *(v82 + 16) = v81;
      sub_10000A748((v0 + 264), v82 + 24);
      v83 = async function pointer to unsafeBlocking<A>(_:)[1];

      v84 = swift_task_alloc();
      *(v0 + 1520) = v84;
      v85 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
      *v84 = v0;
      v84[1] = sub_100296ED8;

      return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DBC50, v82, v85);
    }

    goto LABEL_140;
  }

  v13 = *(v0 + 1464);
  v14 = *(v0 + 800);
  *(v0 + 1608) = *(v5 + 16);
  v15 = *(v14 + 80);
  *(v0 + 1700) = v15;
  v16 = *(v0 + 1584);
  *(v0 + 1624) = *(v0 + 1440);
  *(v0 + 1616) = 0;
  if (!*(v13 + 16))
  {
    goto LABEL_139;
  }

  v17 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v18 = *(v0 + 1072);
  v19 = *(v0 + 1032);
  v20 = *(v0 + 808);
  v21 = *(v0 + 792);
  sub_1002DB760(v13 + ((v15 + 32) & ~v15), v20, type metadata accessor for OwnerSharingCircle);
  (v3)(v18, v20 + *(v21 + 24), v19);
  *(v0 + 1719) = 0x4000201u >> (8 * *(v20 + *(v21 + 28)));
  v22 = *(v0 + 1608);
  v23 = *(v0 + 1184);
  (*(v0 + 1176))(*(v0 + 1064), *(v0 + 808) + *(*(v0 + 792) + 20), *(v0 + 1032));
  v24 = _swiftEmptyArrayStorage;
  if (!v22)
  {
LABEL_91:
    *(v0 + 1632) = v24;
    v86 = swift_task_alloc();
    *(v0 + 1640) = v86;
    *v86 = v0;
    v86[1] = sub_100298D98;
    v87 = *(v0 + 1072);
    v88 = *(v0 + 1064);
    v89 = *(v0 + 784);
    v90 = *(v0 + 768);
    v91 = *(v0 + 760);

    return sub_10029D71C(v87, v88, v91, v90);
  }

  v9 = (v0 + 568);
  v5 = v0 + 576;
  v25 = *(v0 + 1608);
  v26 = *(v0 + 1592);
  v27 = *(v0 + 968);
  *(v0 + 576) = _swiftEmptyArrayStorage;
  v131 = (v0 + 560);
  sub_1011247A4(0, v25, 0);
  v28 = 0;
  v24 = *(v0 + 576);
  v132 = v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  while (1)
  {
    v2 = *(*(v0 + 1592) + 16);
    if (v28 >= v2)
    {
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
      v5 = sub_100A5C82C(v2 > 1, v4, 1, v5);
      goto LABEL_2;
    }

    v29 = *(v0 + 976);
    v134 = v28;
    sub_1002DB760(v132 + *(*(v0 + 968) + 72) * v28, v29, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v5 = *v29;
    v30 = v29[1];
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 != 2)
      {
        v3 = 0;
        v32 = 0;
        v33 = 0;
        v2 = 0;
        goto LABEL_18;
      }

      v32 = *(v5 + 16);
      v3 = *(v5 + 24);
    }

    else
    {
      if (!v31)
      {
        v32 = 0;
        v2 = 0;
        v3 = BYTE6(v30);
        v33 = BYTE6(v30);
        goto LABEL_18;
      }

      v32 = v5;
      v3 = v5 >> 32;
    }

    sub_100017D5C(v5, v30);
    if (v3 < v32)
    {
      goto LABEL_132;
    }

    if (v31 == 2)
    {
      v2 = *(v5 + 16);
      v33 = *(v5 + 24);
    }

    else
    {
      v2 = v5;
      v33 = v5 >> 32;
    }

LABEL_18:
    if (v33 < v3 || v3 < v2)
    {
      goto LABEL_133;
    }

    v2 = v3 - v32;
    if (__OFSUB__(v3, v32))
    {
      goto LABEL_134;
    }

    if (v2 < 0x39)
    {
      if (v31 <= 1)
      {
        if (!v31)
        {
          goto LABEL_45;
        }

        v4 = v5 >> 32;
LABEL_41:
        v35 = v5;
        goto LABEL_44;
      }

      if (v31 != 2)
      {
        goto LABEL_45;
      }

      v4 = *(v5 + 24);
LABEL_43:
      v35 = *(v5 + 16);
      goto LABEL_44;
    }

    v4 = v32 + 57;
    if (__OFADD__(v32, 57))
    {
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
      swift_once();
      goto LABEL_122;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v2 = *(v5 + 16);
        v34 = *(v5 + 24);
      }

      else
      {
        v34 = 0;
        v2 = 0;
      }
    }

    else if (v31)
    {
      v2 = v5;
      v34 = v5 >> 32;
    }

    else
    {
      v2 = 0;
      v34 = BYTE6(v30);
    }

    if (v34 < v4 || v4 < v2)
    {
      goto LABEL_138;
    }

    v35 = 0;
    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v31 != 3)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v4 < v35)
    {
      goto LABEL_135;
    }

LABEL_45:
    v36 = Data._Representation.subscript.getter();
    v38 = v37;
    sub_100016590(v5, v30);
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_94;
      }

      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      v43 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v43)
      {
        goto LABEL_142;
      }
    }

    else if (v39)
    {
      LODWORD(v40) = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_141;
      }

      v40 = v40;
    }

    else
    {
      v40 = BYTE6(v38);
    }

    if (v40 != 57)
    {
LABEL_94:
      sub_100016590(v36, v38);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v9 = 0;
    if (v39 == 2)
    {
      v48 = *(v36 + 16);
      v49 = __DataStorage._bytes.getter();
      if (!v49)
      {
        goto LABEL_113;
      }

      v50 = v49;
      v51 = __DataStorage._offset.getter();
      if (__OFSUB__(v48, v51))
      {
        goto LABEL_144;
      }

      v52 = v48 - v51 + v50;
      __DataStorage._length.getter();
      if (!v52)
      {
        goto LABEL_114;
      }

      if (__OFSUB__(*(v36 + 24), *(v36 + 16)))
      {
        goto LABEL_146;
      }
    }

    else if (v39 == 1)
    {
      if (v36 > v36 >> 32)
      {
        goto LABEL_143;
      }

      v44 = __DataStorage._bytes.getter();
      if (!v44)
      {
LABEL_113:
        __DataStorage._length.getter();
LABEL_114:
        v102 = type metadata accessor for CryptoError();
        sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
        v95 = swift_allocError();
        v104 = v117;
        v105 = &enum case for CryptoError.memoryFailure(_:);
LABEL_115:
        (*(*(v102 - 8) + 104))(v104, *v105, v102);
        goto LABEL_116;
      }

      v45 = v44;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v46))
      {
        goto LABEL_145;
      }

      v47 = v36 - v46 + v45;
      __DataStorage._length.getter();
      if (!v47)
      {
        goto LABEL_114;
      }

      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_147;
      }
    }

    else
    {
      *(v0 + 1704) = v36;
      *(v0 + 1712) = v38;
      *(v0 + 1714) = BYTE2(v38);
      *(v0 + 1715) = BYTE3(v38);
      *(v0 + 1716) = BYTE4(v38);
      *(v0 + 1717) = BYTE5(v38);
    }

    v53 = CCECCryptorImportKey();
    if (v53)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v92 = *(v0 + 856);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_101385D80;
      *(v93 + 56) = &type metadata for Int32;
      *(v93 + 64) = &protocol witness table for Int32;
      *(v93 + 32) = v53;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v94 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v95 = swift_allocError();
      v97 = v96;
      v98 = *(v94 - 8);
      v99 = *(v98 + 48);
      v100 = v99(v92, 1, v94);
      v101 = *(v0 + 856);
      if (v100 == 1)
      {
        (*(v98 + 104))(v97, enum case for CryptoError.unspecifiedError(_:), v94);
        if (v99(v101, 1, v94) != 1)
        {
          sub_10000B3A8(*(v0 + 856), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v98 + 32))(v97, *(v0 + 856), v94);
      }

LABEL_116:
      v9 = v95;
      swift_willThrow();
      goto LABEL_121;
    }

    v133 = v24;
    if (!*v9)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v102 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v95 = swift_allocError();
      v104 = v103;
      v105 = &enum case for CryptoError.unspecifiedError(_:);
      goto LABEL_115;
    }

    *(v0 + 552) = 57;
    v54 = type metadata accessor for __DataStorage();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v57 = __DataStorage.init(length:)();
    *(v0 + 520) = 0x3900000000;
    *(v0 + 528) = v57 | 0x4000000000000000;
    v58 = sub_100A7AF80((v0 + 520));
    if (v16)
    {
      v9 = v16;
      goto LABEL_120;
    }

    v59 = v58;
    if (v58)
    {
      break;
    }

    v60 = *(v0 + 520);
    v61 = *(v0 + 528);
    v62 = *(v0 + 552);
    sub_100017D5C(v60, v61);
    sub_10002EA98(v62, v60, v61, (v0 + 504));
    sub_100016590(v60, v61);
    v63 = *(v0 + 504);
    v5 = *(v0 + 512);
    CCECCryptorRelease();
    v64 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v64 != 2)
      {
        v116 = 0;
        goto LABEL_130;
      }

      v67 = *(v63 + 16);
      v66 = *(v63 + 24);
      v43 = __OFSUB__(v66, v67);
      v65 = v66 - v67;
      if (v43)
      {
        goto LABEL_148;
      }
    }

    else if (v64)
    {
      LODWORD(v65) = HIDWORD(v63) - v63;
      if (__OFSUB__(HIDWORD(v63), v63))
      {
        goto LABEL_149;
      }

      v65 = v65;
    }

    else
    {
      v65 = BYTE6(v5);
    }

    if (v65 != 28)
    {
      if (v64 == 2)
      {
        v128 = *(v63 + 16);
        v127 = *(v63 + 24);
        v116 = v127 - v128;
        if (!__OFSUB__(v127, v128))
        {
          goto LABEL_130;
        }

        __break(1u);
      }

      else if (v64 == 1)
      {
        if (__OFSUB__(HIDWORD(v63), v63))
        {
          __break(1u);
        }

        v116 = HIDWORD(v63) - v63;
        goto LABEL_130;
      }

      v116 = BYTE6(v5);
LABEL_130:
      sub_100018350();
      v122 = swift_allocError();
      *v129 = 28;
      *(v129 + 8) = v116;
      *(v129 + 16) = 0;
      swift_willThrow();
      sub_100016590(v63, v5);
      goto LABEL_123;
    }

    v68 = *(v0 + 1680);
    v69 = *(v0 + 976);
    v70 = *(v0 + 840);
    v71 = *(v0 + 832);
    v72 = *(v0 + 824);
    sub_100016590(v36, v38);
    (*(v71 + 104))(v70, v68, v72);
    v3 = Data.hash(algorithm:)();
    v74 = v73;
    sub_100016590(v63, v5);
    (*(v71 + 8))(v70, v72);
    sub_1002DBBF0(v69, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v24 = v133;
    *(v0 + 576) = v133;
    v76 = v133[2];
    v75 = v133[3];
    if (v76 >= v75 >> 1)
    {
      v5 = v0 + 576;
      sub_1011247A4((v75 > 1), v76 + 1, 1);
      v24 = *(v0 + 576);
    }

    v16 = 0;
    v28 = v134 + 1;
    v77 = *(v0 + 1608);
    v24[2] = v76 + 1;
    v78 = &v24[2 * v76];
    v78[4] = v3;
    v78[5] = v74;
    v9 = (v0 + 568);
    if (v134 + 1 == v77)
    {
      goto LABEL_91;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v106 = *(v0 + 848);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_101385D80;
  *(v107 + 56) = &type metadata for Int32;
  *(v107 + 64) = &protocol witness table for Int32;
  *(v107 + 32) = v59;
  os_log(_:dso:log:_:_:)();

  CryptoError.init(rawValue:)();
  v108 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
  v109 = swift_allocError();
  v111 = v110;
  v112 = *(v108 - 8);
  v113 = *(v112 + 48);
  v114 = v113(v106, 1, v108);
  v115 = *(v0 + 848);
  if (v114 == 1)
  {
    (*(v112 + 104))(v111, enum case for CryptoError.unspecifiedError(_:), v108);
    if (v113(v115, 1, v108) != 1)
    {
      sub_10000B3A8(*(v0 + 848), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v112 + 32))(v111, *(v0 + 848), v108);
  }

  v9 = v109;
  swift_willThrow();
LABEL_120:
  sub_100016590(*(v0 + 520), *(v0 + 528));
LABEL_121:
  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_150;
  }

LABEL_122:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_101385D80;
  *v131 = v9;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v119 = String.init<A>(describing:)();
  v121 = v120;
  *(v118 + 56) = &type metadata for String;
  *(v118 + 64) = sub_100008C00();
  *(v118 + 32) = v119;
  *(v118 + 40) = v121;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v122 = swift_allocError();
  *v123 = 0;
  swift_willThrow();

LABEL_123:
  _StringGuts.grow(_:)(35);
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  v124._countAndFlagsBits = 0xD000000000000021;
  v124._object = 0x800000010134CB30;
  String.append(_:)(v124);
  *(v0 + 752) = v122;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v125 = *(v0 + 424);
  v126 = *(v0 + 432);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002987EC()
{
  v64 = v0;
  v1 = v0[185];
  v2 = v0[102];
  sub_100016590(v0[192], v0[193]);

  sub_1002DBBF0(v2, type metadata accessor for OwnerSharingCircle);
  v3 = v0[200];
  v62 = v0[180];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v58 = v0[153];
    v60 = v0[154];
    v7 = v0[141];
    v8 = v0[129];
    v9 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = v0[41];
    v10 = v0[42];
    sub_1000035D0(v0 + 38, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v58(v7, v8);
    sub_100007BAC(v0 + 38);
    v15 = sub_1000136BC(v12, v14, v63);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[52];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v63);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v22 = v0[142];
  v23 = v0[179] + 1;
  sub_100007BAC(v0 + 28);
  if (v23 == v22)
  {
    v24 = v0[141];
    v25 = v0[140];
    v26 = v0[139];
    v27 = v0[138];
    v28 = v0[137];
    v29 = v0[136];
    v30 = v0[135];
    v31 = v0[134];
    v32 = v0[133];
    v33 = v0[132];
    v41 = v0[89];
    v42 = v0[128];
    v43 = v0[127];
    v44 = v0[126];
    v45 = v0[125];
    v46 = v0[124];
    v47 = v0[123];
    v48 = v0[122];
    v49 = v0[119];
    v50 = v0[116];
    v51 = v0[113];
    v52 = v0[111];
    v53 = v0[110];
    v54 = v0[108];
    v55 = v0[107];
    v56 = v0[106];
    v57 = v0[105];
    v59 = v0[102];
    v61 = v0[101];

    v34 = v0[1];

    return v34(v62, v41);
  }

  else
  {
    v36 = v0[179];
    v0[180] = v62;
    v0[179] = v36 + 1;
    v37 = v0[146];
    v38 = v0[141];
    sub_10001F280(v0[97] + 40 * v36 + 72, (v0 + 28));
    v39 = v0[31];
    v40 = v0[32];
    sub_1000035D0(v0 + 28, v39);
    (*(*(*(v40 + 8) + 8) + 32))(v39);

    return _swift_task_switch(sub_10029639C, v37, 0);
  }
}

uint64_t sub_100298D98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1640);
  v16 = *v2;
  *(*v2 + 1648) = a1;

  if (v1)
  {
    v5 = v3[204];
    v6 = v3[183];

    v3[209] = v1;
    v7 = v3[199];
    v8 = v3[154];
    v9 = v3[153];
    v10 = v3[134];
    v11 = v3[129];
    v12 = v3[98];
    v9(v3[133], v11);
    v9(v10, v11);

    v13 = sub_10029AA58;
    v14 = v12;
  }

  else
  {
    v14 = v3[98];
    v13 = sub_100298F60;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_100298F60()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1648);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1032);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A818);
  v3(v5, v4, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1648);
  v12 = *(v0 + 1232);
  v13 = *(v0 + 1224);
  v14 = *(v0 + 1056);
  v15 = *(v0 + 1032);
  if (v10)
  {
    v52 = v9;
    log = v8;
    v16 = swift_slowAlloc();
    *(v0 + 536) = swift_slowAlloc();
    *v16 = 134218755;
    *(v16 + 4) = *(v11 + 16);

    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_1000136BC(v17, v19, (v0 + 536));

    *(v16 + 24) = v20;
    buf = v16;
    *(v16 + 32) = 2082;
    v21 = *(v11 + 16);
    if (v21)
    {
      v22 = *(v0 + 1648);
      *(v0 + 584) = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v21, 0);
      v23 = *(v0 + 584);
      v24 = (v22 + 64);
      do
      {
        v25 = *(v24 - 3);
        v26 = *(v24 - 1);
        v54 = *(v24 - 2);
        v27 = *v24;
        *(v0 + 600) = *(v24 - 4);
        sub_100017D5C(v26, v27);
        *(v0 + 488) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 496) = v28;
        v29._countAndFlagsBits = 8250;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);
        *(v0 + 608) = v25;
        v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v30);

        v31._countAndFlagsBits = 45;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
        *(v0 + 616) = v54;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        sub_100016590(v26, v27);
        v33 = *(v0 + 488);
        v34 = *(v0 + 496);
        *(v0 + 584) = v23;
        v36 = *(v23 + 16);
        v35 = *(v23 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_101123BB8((v35 > 1), v36 + 1, 1);
          v23 = *(v0 + 584);
        }

        v24 += 5;
        *(v23 + 16) = v36 + 1;
        v37 = v23 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v34;
        --v21;
      }

      while (v21);
    }

    v39 = Array.description.getter();
    v41 = v40;

    v42 = sub_1000136BC(v39, v41, (v0 + 536));

    *(buf + 34) = v42;
    _os_log_impl(&_mh_execute_header, log, v52, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v38 = *(v0 + 1648);

    v13(v14, v15);
  }

  v43 = swift_task_alloc();
  *(v0 + 1656) = v43;
  *v43 = v0;
  v43[1] = sub_10029940C;
  v44 = *(v0 + 1648);
  v45 = *(v0 + 1632);
  v46 = *(v0 + 1064);
  v47 = *(v0 + 880);
  v48 = *(v0 + 784);
  v49 = *(v0 + 1719);

  return sub_10029E154(v47, v44, v46, v49, v45);
}

uint64_t sub_10029940C()
{
  v2 = *v1;
  v3 = *(*v1 + 1656);
  v4 = *v1;
  *(*v1 + 1664) = v0;

  v5 = *(v2 + 784);
  if (v0)
  {
    v6 = sub_10029A954;
  }

  else
  {
    v6 = sub_100299564;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100299564()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1224);
  v6 = *(v0 + 1072);
  v7 = *(v0 + 1064);
  v8 = *(v0 + 1032);

  v5(v7, v8);
  v5(v6, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 1624);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_2:
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_100A5C854(v11 > 1, v12 + 1, 1, v10);
  }

  v13 = *(v0 + 1488);
  v14 = *(v0 + 880);
  v15 = *(v0 + 872);
  v16 = *(v0 + 1616) + 1;
  sub_1002DBBF0(*(v0 + 808), type metadata accessor for OwnerSharingCircle);
  *(v10 + 16) = v12 + 1;
  sub_1002DB7C8(v14, v10 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, type metadata accessor for KeyDropFetchItem);
  if (v16 == v13)
  {
    v17 = *(v0 + 1464);

    v18 = *(v0 + 1480);
    sub_10039845C(*(v0 + 1592));

    v19 = *(v0 + 1136);
    v20 = *(v0 + 1432) + 1;
    sub_100007BAC((v0 + 224));
    if (v20 == v19)
    {
      v21 = *(v0 + 1128);
      v22 = *(v0 + 1120);
      v23 = *(v0 + 1112);
      v24 = *(v0 + 1104);
      v25 = *(v0 + 1096);
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      v28 = *(v0 + 1072);
      v29 = *(v0 + 1064);
      v151 = *(v0 + 712);
      v152 = *(v0 + 1056);
      v153 = *(v0 + 1024);
      v154 = *(v0 + 1016);
      v155 = *(v0 + 1008);
      v156 = *(v0 + 1000);
      v157 = *(v0 + 992);
      v158 = *(v0 + 984);
      v159 = *(v0 + 976);
      v160 = *(v0 + 952);
      v161 = *(v0 + 928);
      v162 = *(v0 + 904);
      v163 = *(v0 + 888);
      v164 = *(v0 + 880);
      v165 = *(v0 + 864);
      v167 = *(v0 + 856);
      v168 = *(v0 + 848);
      v169 = *(v0 + 840);
      v171 = *(v0 + 816);
      v173 = *(v0 + 808);

      v30 = *(v0 + 8);

      return v30(v10, v151);
    }

    else
    {
      v102 = *(v0 + 1432);
      *(v0 + 1440) = v10;
      *(v0 + 1432) = v102 + 1;
      v103 = *(v0 + 1168);
      v104 = *(v0 + 1128);
      sub_10001F280(*(v0 + 776) + 40 * v102 + 72, v0 + 224);
      v105 = *(v0 + 248);
      v106 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v105);
      (*(*(*(v106 + 8) + 8) + 32))(v105);

      return _swift_task_switch(sub_10029639C, v103, 0);
    }
  }

  v32 = *(v0 + 1664);
  v33 = *(v0 + 1616) + 1;
  *(v0 + 1624) = v10;
  *(v0 + 1616) = v33;
  v34 = *(v0 + 1464);
  if (v33 >= *(v34 + 16))
  {
    goto LABEL_144;
  }

  v35 = *(v0 + 1184);
  v36 = *(v0 + 1176);
  v37 = *(v0 + 1072);
  v38 = *(v0 + 1032);
  v39 = *(v0 + 808);
  v40 = *(v0 + 792);
  sub_1002DB760(v34 + ((*(v0 + 1700) + 32) & ~*(v0 + 1700)) + *(*(v0 + 800) + 72) * v33, v39, type metadata accessor for OwnerSharingCircle);
  v36(v37, v39 + *(v40 + 24), v38);
  *(v0 + 1719) = 0x4000201u >> (8 * *(v39 + *(v40 + 28)));
  v41 = *(v0 + 1608);
  v42 = *(v0 + 1184);
  (*(v0 + 1176))(*(v0 + 1064), *(v0 + 808) + *(*(v0 + 792) + 20), *(v0 + 1032));
  v43 = _swiftEmptyArrayStorage;
  if (!v41)
  {
LABEL_96:
    *(v0 + 1632) = v43;
    v107 = swift_task_alloc();
    *(v0 + 1640) = v107;
    *v107 = v0;
    v107[1] = sub_100298D98;
    v108 = *(v0 + 1072);
    v109 = *(v0 + 1064);
    v110 = *(v0 + 784);
    v111 = *(v0 + 768);
    v112 = *(v0 + 760);

    return sub_10029D71C(v108, v109, v112, v111);
  }

  v12 = v0 + 568;
  v44 = *(v0 + 1608);
  v10 = *(v0 + 1592);
  v45 = *(v0 + 968);
  *(v0 + 576) = _swiftEmptyArrayStorage;
  v166 = (v0 + 560);
  sub_1011247A4(0, v44, 0);
  v46 = 0;
  v43 = *(v0 + 576);
  v170 = v10 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  while (1)
  {
    if (v46 >= *(*(v0 + 1592) + 16))
    {
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
      v10 = sub_100A5C854(0, *(v10 + 16) + 1, 1, v10);
      goto LABEL_2;
    }

    v47 = *(v0 + 976);
    v174 = v46;
    sub_1002DB760(v170 + *(*(v0 + 968) + 72) * v46, v47, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v48 = *v47;
    v49 = v47[1];
    v10 = v49 >> 62;
    if ((v49 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v52 = 0;
        v50 = 0;
        v53 = 0;
        v51 = 0;
        goto LABEL_24;
      }

      v50 = *(v48 + 16);
      v52 = *(v48 + 24);
    }

    else
    {
      if (!v10)
      {
        v50 = 0;
        v51 = 0;
        v52 = BYTE6(v49);
        v53 = BYTE6(v49);
        goto LABEL_24;
      }

      v50 = v48;
      v52 = v48 >> 32;
    }

    sub_100017D5C(v48, v49);
    if (v52 < v50)
    {
      goto LABEL_137;
    }

    if (v10 == 2)
    {
      v51 = *(v48 + 16);
      v53 = *(v48 + 24);
    }

    else
    {
      v51 = v48;
      v53 = v48 >> 32;
    }

LABEL_24:
    if (v53 < v52 || v52 < v51)
    {
      goto LABEL_138;
    }

    if (__OFSUB__(v52, v50))
    {
      goto LABEL_139;
    }

    if ((v52 - v50) < 0x39)
    {
      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_51;
        }

        v54 = v48 >> 32;
LABEL_47:
        v57 = v48;
        goto LABEL_50;
      }

      if (v10 != 2)
      {
        goto LABEL_51;
      }

      v54 = *(v48 + 24);
LABEL_49:
      v57 = *(v48 + 16);
      goto LABEL_50;
    }

    v54 = v50 + 57;
    if (__OFADD__(v50, 57))
    {
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
      swift_once();
      goto LABEL_127;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v55 = *(v48 + 16);
        v56 = *(v48 + 24);
      }

      else
      {
        v56 = 0;
        v55 = 0;
      }
    }

    else if (v10)
    {
      v55 = v48;
      v56 = v48 >> 32;
    }

    else
    {
      v55 = 0;
      v56 = BYTE6(v49);
    }

    if (v56 < v54 || v54 < v55)
    {
      goto LABEL_143;
    }

    v57 = 0;
    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (v10 != 3)
    {
      goto LABEL_49;
    }

LABEL_50:
    if (v54 < v57)
    {
      goto LABEL_140;
    }

LABEL_51:
    v58 = Data._Representation.subscript.getter();
    v60 = v59;
    sub_100016590(v48, v49);
    v61 = v60 >> 62;
    if ((v60 >> 62) > 1)
    {
      if (v61 != 2)
      {
        goto LABEL_99;
      }

      v64 = *(v58 + 16);
      v63 = *(v58 + 24);
      v65 = __OFSUB__(v63, v64);
      v62 = v63 - v64;
      if (v65)
      {
        goto LABEL_146;
      }
    }

    else if (v61)
    {
      LODWORD(v62) = HIDWORD(v58) - v58;
      if (__OFSUB__(HIDWORD(v58), v58))
      {
        goto LABEL_145;
      }

      v62 = v62;
    }

    else
    {
      v62 = BYTE6(v60);
    }

    if (v62 != 57)
    {
LABEL_99:
      sub_100016590(v58, v60);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v12 = 0;
    if (v61 == 2)
    {
      v70 = *(v58 + 16);
      v71 = __DataStorage._bytes.getter();
      if (!v71)
      {
        goto LABEL_118;
      }

      v72 = v71;
      v73 = __DataStorage._offset.getter();
      if (__OFSUB__(v70, v73))
      {
        goto LABEL_148;
      }

      v74 = v70 - v73 + v72;
      __DataStorage._length.getter();
      if (!v74)
      {
        goto LABEL_119;
      }

      if (__OFSUB__(*(v58 + 24), *(v58 + 16)))
      {
        goto LABEL_150;
      }
    }

    else if (v61 == 1)
    {
      if (v58 > v58 >> 32)
      {
        goto LABEL_147;
      }

      v66 = __DataStorage._bytes.getter();
      if (!v66)
      {
LABEL_118:
        __DataStorage._length.getter();
LABEL_119:
        v123 = type metadata accessor for CryptoError();
        sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
        v116 = swift_allocError();
        v125 = v138;
        v126 = &enum case for CryptoError.memoryFailure(_:);
LABEL_120:
        (*(*(v123 - 8) + 104))(v125, *v126, v123);
        goto LABEL_121;
      }

      v67 = v66;
      v68 = __DataStorage._offset.getter();
      if (__OFSUB__(v58, v68))
      {
        goto LABEL_149;
      }

      v69 = v58 - v68 + v67;
      __DataStorage._length.getter();
      if (!v69)
      {
        goto LABEL_119;
      }

      if (__OFSUB__(HIDWORD(v58), v58))
      {
        goto LABEL_151;
      }
    }

    else
    {
      *(v0 + 1704) = v58;
      *(v0 + 1712) = v60;
      *(v0 + 1714) = BYTE2(v60);
      *(v0 + 1715) = BYTE3(v60);
      *(v0 + 1716) = BYTE4(v60);
      *(v0 + 1717) = BYTE5(v60);
    }

    v75 = CCECCryptorImportKey();
    if (v75)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v113 = *(v0 + 856);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_101385D80;
      *(v114 + 56) = &type metadata for Int32;
      *(v114 + 64) = &protocol witness table for Int32;
      *(v114 + 32) = v75;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v115 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v116 = swift_allocError();
      v118 = v117;
      v119 = *(v115 - 8);
      v120 = *(v119 + 48);
      v121 = v120(v113, 1, v115);
      v122 = *(v0 + 856);
      if (v121 == 1)
      {
        (*(v119 + 104))(v118, enum case for CryptoError.unspecifiedError(_:), v115);
        if (v120(v122, 1, v115) != 1)
        {
          sub_10000B3A8(*(v0 + 856), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v119 + 32))(v118, *(v0 + 856), v115);
      }

LABEL_121:
      v12 = v116;
      swift_willThrow();
      goto LABEL_126;
    }

    v172 = v43;
    if (!*v12)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v123 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v116 = swift_allocError();
      v125 = v124;
      v126 = &enum case for CryptoError.unspecifiedError(_:);
      goto LABEL_120;
    }

    *(v0 + 552) = 57;
    v76 = type metadata accessor for __DataStorage();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    v79 = __DataStorage.init(length:)();
    *(v0 + 520) = 0x3900000000;
    *(v0 + 528) = v79 | 0x4000000000000000;
    v80 = sub_100A7AF80((v0 + 520));
    if (v32)
    {
      v12 = v32;
      goto LABEL_125;
    }

    v81 = v80;
    if (v80)
    {
      break;
    }

    v82 = *(v0 + 520);
    v83 = *(v0 + 528);
    v84 = *(v0 + 552);
    sub_100017D5C(v82, v83);
    sub_10002EA98(v84, v82, v83, (v0 + 504));
    sub_100016590(v82, v83);
    v86 = *(v0 + 504);
    v85 = *(v0 + 512);
    CCECCryptorRelease();
    v87 = v85 >> 62;
    if ((v85 >> 62) > 1)
    {
      if (v87 != 2)
      {
        v137 = 0;
        goto LABEL_135;
      }

      v90 = *(v86 + 16);
      v89 = *(v86 + 24);
      v65 = __OFSUB__(v89, v90);
      v88 = v89 - v90;
      if (v65)
      {
        goto LABEL_152;
      }
    }

    else if (v87)
    {
      LODWORD(v88) = HIDWORD(v86) - v86;
      if (__OFSUB__(HIDWORD(v86), v86))
      {
        goto LABEL_153;
      }

      v88 = v88;
    }

    else
    {
      v88 = BYTE6(v85);
    }

    if (v88 != 28)
    {
      if (v87 == 2)
      {
        v149 = *(v86 + 16);
        v148 = *(v86 + 24);
        v137 = v148 - v149;
        if (!__OFSUB__(v148, v149))
        {
          goto LABEL_135;
        }

        __break(1u);
      }

      else if (v87 == 1)
      {
        if (__OFSUB__(HIDWORD(v86), v86))
        {
          __break(1u);
        }

        v137 = HIDWORD(v86) - v86;
        goto LABEL_135;
      }

      v137 = BYTE6(v85);
LABEL_135:
      sub_100018350();
      v143 = swift_allocError();
      *v150 = 28;
      *(v150 + 8) = v137;
      *(v150 + 16) = 0;
      swift_willThrow();
      sub_100016590(v86, v85);
      goto LABEL_128;
    }

    v91 = *(v0 + 1680);
    v92 = *(v0 + 976);
    v93 = *(v0 + 840);
    v94 = *(v0 + 832);
    v95 = *(v0 + 824);
    sub_100016590(v58, v60);
    (*(v94 + 104))(v93, v91, v95);
    v96 = Data.hash(algorithm:)();
    v98 = v97;
    sub_100016590(v86, v85);
    (*(v94 + 8))(v93, v95);
    sub_1002DBBF0(v92, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v43 = v172;
    *(v0 + 576) = v172;
    v10 = v172[2];
    v99 = v172[3];
    if (v10 >= v99 >> 1)
    {
      sub_1011247A4((v99 > 1), v10 + 1, 1);
      v43 = *(v0 + 576);
    }

    v32 = 0;
    v46 = v174 + 1;
    v100 = *(v0 + 1608);
    v43[2] = v10 + 1;
    v101 = &v43[2 * v10];
    v101[4] = v96;
    v101[5] = v98;
    v12 = v0 + 568;
    if (v174 + 1 == v100)
    {
      goto LABEL_96;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v127 = *(v0 + 848);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_101385D80;
  *(v128 + 56) = &type metadata for Int32;
  *(v128 + 64) = &protocol witness table for Int32;
  *(v128 + 32) = v81;
  os_log(_:dso:log:_:_:)();

  CryptoError.init(rawValue:)();
  v129 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
  v130 = swift_allocError();
  v132 = v131;
  v133 = *(v129 - 8);
  v134 = *(v133 + 48);
  v135 = v134(v127, 1, v129);
  v136 = *(v0 + 848);
  if (v135 == 1)
  {
    (*(v133 + 104))(v132, enum case for CryptoError.unspecifiedError(_:), v129);
    if (v134(v136, 1, v129) != 1)
    {
      sub_10000B3A8(*(v0 + 848), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v133 + 32))(v132, *(v0 + 848), v129);
  }

  v12 = v130;
  swift_willThrow();
LABEL_125:
  sub_100016590(*(v0 + 520), *(v0 + 528));
LABEL_126:
  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_154;
  }

LABEL_127:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v139 = swift_allocObject();
  *(v139 + 16) = xmmword_101385D80;
  *v166 = v12;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v140 = String.init<A>(describing:)();
  v142 = v141;
  *(v139 + 56) = &type metadata for String;
  *(v139 + 64) = sub_100008C00();
  *(v139 + 32) = v140;
  *(v139 + 40) = v142;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v143 = swift_allocError();
  *v144 = 0;
  swift_willThrow();

LABEL_128:
  _StringGuts.grow(_:)(35);
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  v145._countAndFlagsBits = 0xD000000000000021;
  v145._object = 0x800000010134CB30;
  String.append(_:)(v145);
  *(v0 + 752) = v143;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v146 = *(v0 + 424);
  v147 = *(v0 + 432);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10029A954()
{
  v1 = v0[206];
  v2 = v0[204];
  v3 = v0[183];

  v0[209] = v0[208];
  v4 = v0[199];
  v5 = v0[154];
  v6 = v0[153];
  v7 = v0[134];
  v8 = v0[129];
  v9 = v0[98];
  v6(v0[133], v8);
  v6(v7, v8);

  return _swift_task_switch(sub_10029AA58, v9, 0);
}

uint64_t sub_10029AA58()
{
  v64 = v0;
  v1 = v0[185];
  v2 = v0[101];

  sub_1002DBBF0(v2, type metadata accessor for OwnerSharingCircle);
  v3 = v0[209];
  v62 = v0[203];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v58 = v0[153];
    v60 = v0[154];
    v7 = v0[141];
    v8 = v0[129];
    v9 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = v0[41];
    v10 = v0[42];
    sub_1000035D0(v0 + 38, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v58(v7, v8);
    sub_100007BAC(v0 + 38);
    v15 = sub_1000136BC(v12, v14, v63);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[52];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v63);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v22 = v0[142];
  v23 = v0[179] + 1;
  sub_100007BAC(v0 + 28);
  if (v23 == v22)
  {
    v24 = v0[141];
    v25 = v0[140];
    v26 = v0[139];
    v27 = v0[138];
    v28 = v0[137];
    v29 = v0[136];
    v30 = v0[135];
    v31 = v0[134];
    v32 = v0[133];
    v33 = v0[132];
    v41 = v0[89];
    v42 = v0[128];
    v43 = v0[127];
    v44 = v0[126];
    v45 = v0[125];
    v46 = v0[124];
    v47 = v0[123];
    v48 = v0[122];
    v49 = v0[119];
    v50 = v0[116];
    v51 = v0[113];
    v52 = v0[111];
    v53 = v0[110];
    v54 = v0[108];
    v55 = v0[107];
    v56 = v0[106];
    v57 = v0[105];
    v59 = v0[102];
    v61 = v0[101];

    v34 = v0[1];

    return v34(v62, v41);
  }

  else
  {
    v36 = v0[179];
    v0[180] = v62;
    v0[179] = v36 + 1;
    v37 = v0[146];
    v38 = v0[141];
    sub_10001F280(v0[97] + 40 * v36 + 72, (v0 + 28));
    v39 = v0[31];
    v40 = v0[32];
    sub_1000035D0(v0 + 28, v39);
    (*(*(*(v40 + 8) + 8) + 32))(v39);

    return _swift_task_switch(sub_10029639C, v37, 0);
  }
}

uint64_t sub_10029AFF4()
{
  v64 = v0;
  v1 = v0[185];
  v2 = v0[102];

  sub_1002DBBF0(v2, type metadata accessor for OwnerSharingCircle);
  v3 = v0[191];
  v62 = v0[180];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v58 = v0[153];
    v60 = v0[154];
    v7 = v0[141];
    v8 = v0[129];
    v9 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = v0[41];
    v10 = v0[42];
    sub_1000035D0(v0 + 38, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v58(v7, v8);
    sub_100007BAC(v0 + 38);
    v15 = sub_1000136BC(v12, v14, v63);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[52];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v63);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v22 = v0[142];
  v23 = v0[179] + 1;
  sub_100007BAC(v0 + 28);
  if (v23 == v22)
  {
    v24 = v0[141];
    v25 = v0[140];
    v26 = v0[139];
    v27 = v0[138];
    v28 = v0[137];
    v29 = v0[136];
    v30 = v0[135];
    v31 = v0[134];
    v32 = v0[133];
    v33 = v0[132];
    v41 = v0[89];
    v42 = v0[128];
    v43 = v0[127];
    v44 = v0[126];
    v45 = v0[125];
    v46 = v0[124];
    v47 = v0[123];
    v48 = v0[122];
    v49 = v0[119];
    v50 = v0[116];
    v51 = v0[113];
    v52 = v0[111];
    v53 = v0[110];
    v54 = v0[108];
    v55 = v0[107];
    v56 = v0[106];
    v57 = v0[105];
    v59 = v0[102];
    v61 = v0[101];

    v34 = v0[1];

    return v34(v62, v41);
  }

  else
  {
    v36 = v0[179];
    v0[180] = v62;
    v0[179] = v36 + 1;
    v37 = v0[146];
    v38 = v0[141];
    sub_10001F280(v0[97] + 40 * v36 + 72, (v0 + 28));
    v39 = v0[31];
    v40 = v0[32];
    sub_1000035D0(v0 + 28, v39);
    (*(*(*(v40 + 8) + 8) + 32))(v39);

    return _swift_task_switch(sub_10029639C, v37, 0);
  }
}

uint64_t sub_10029B590(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 160) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_10029B5BC, v5, 0);
}

uint64_t sub_10029B5BC()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    if (qword_101694510 != -1)
    {
      swift_once();
      v26 = *(v0 + 16);
    }

    v2 = *(v0 + 24);
    v3 = type metadata accessor for Logger();
    *(v0 + 56) = sub_1000076D4(v3, qword_10177A818);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (v6)
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v1;

      _os_log_impl(&_mh_execute_header, v4, v5, "Fetching %ld items.", v9, 0xCu);
    }

    else
    {
      v17 = *(v0 + 16);
    }

    v18 = *(v0 + 40);
    v19 = *(v0 + 16);
    v20 = *(*(v0 + 48) + 256);

    v21 = swift_task_alloc();
    *(v0 + 64) = v21;
    *v21 = v0;
    v21[1] = sub_10029B8B0;
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);
    v24 = *(v0 + 16);
    v25 = *(v0 + 160);

    return (sub_100F0645C)(v24, v25, v22, v23, v20);
  }

  else
  {
    if (qword_101694510 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177A818);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No items to fetch.", v13, 2u);
    }

    v14 = sub_1009089B8(_swiftEmptyArrayStorage);
    v15 = *(v0 + 8);

    return v15(v14);
  }
}

uint64_t sub_10029B8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 64);
  v7 = *v4;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;

  if (v3)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = v5[6];

    return _swift_task_switch(sub_10029B9FC, v10, 0);
  }
}

uint64_t sub_10029B9FC()
{
  type metadata accessor for KeyDropInterface();
  v1 = swift_allocObject();
  v0[12] = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_10029BAB8;
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];

  return sub_100F096C8(v5, v3, v4);
}

uint64_t sub_10029BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v9 = *(*v5 + 104);
  v10 = *v5;
  v8[14] = a2;
  v8[15] = a4;
  v8[16] = v4;

  if (v4)
  {
    v11 = v8[6];

    return _swift_task_switch(sub_10029BEC4, v11, 0);
  }

  else
  {
    v12 = swift_task_alloc();
    v8[17] = v12;
    *v12 = v10;
    v12[1] = sub_10029BC58;
    v14 = v8[6];
    v15 = v8[3];

    return sub_1002AD6F8(v12, a2, v13, a4, v15);
  }
}

uint64_t sub_10029BC58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v11 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = v3[6];
    v6 = sub_10029BF3C;
  }

  else
  {
    v7 = v3[14];
    v8 = v3[15];
    v9 = v3[6];

    v6 = sub_10029BD88;
    v5 = v9;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10029BD88()
{
  v1 = v0[18];
  v2 = v0[7];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  v7 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  if (v5)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Fetch returning results for %ld beacon(s).", v11, 0xCu);
  }

  else
  {
    v12 = v0[18];
  }

  sub_100016590(v9, v7);

  v13 = v0[18];
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_10029BEC4()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[16];
  sub_100016590(v0[10], v0[11]);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10029BF3C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[19];
  sub_100016590(v0[10], v0[11]);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10029BFD0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for MemberSharingCircle();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = type metadata accessor for OwnerSharingCircle();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[26] = v12;
  v13 = *(v12 - 8);
  v2[27] = v13;
  v2[28] = *(v13 + 64);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_10029C200, v1, 0);
}

uint64_t sub_10029C200()
{
  v1 = *(*(v0 + 104) + 136);
  *(v0 + 272) = v1;
  return _swift_task_switch(sub_10029C224, v1, 0);
}

uint64_t sub_10029C224()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 96);
  v7 = *(v4 + 16);
  *(v0 + 280) = v7;
  *(v0 + 288) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v5);
  v8 = *(v4 + 80);
  *(v0 + 432) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v0 + 296) = v11;
  *(v11 + 16) = v1;
  v12 = *(v4 + 32);
  *(v0 + 304) = v12;
  *(v0 + 312) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v9, v2, v5);
  *(v11 + v10) = 0;
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 320) = v14;
  v15 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v14 = v0;
  v14[1] = sub_10029C3CC;

  return unsafeBlocking<A>(context:_:)(v0 + 80, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v11, v15);
}

uint64_t sub_10029C3CC()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return _swift_task_switch(sub_10029C4F8, v3, 0);
}

uint64_t sub_10029C4F8()
{
  v1 = v0[13];
  v0[41] = v0[10];
  return _swift_task_switch(sub_10029C51C, v1, 0);
}

uint64_t sub_10029C51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[41];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v8 = v3[21];
    v7 = v3[22];
    v19 = v8;
    while (v6 < *(v4 + 16))
    {
      v9 = v3[25];
      v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v11 = *(v7 + 72);
      sub_1002DB760(v3[41] + v10 + v11 * v6, v9, type metadata accessor for OwnerSharingCircle);
      v12 = v3[25];
      if (*(v9 + *(v8 + 36)) == 2)
      {
        a1 = sub_1002DBBF0(v12, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
        sub_1002DB7C8(v12, v3[24], type metadata accessor for OwnerSharingCircle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123FE4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_101123FE4(v13 > 1, v14 + 1, 1);
        }

        v15 = v3[24];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        a1 = sub_1002DB7C8(v15, _swiftEmptyArrayStorage + v10 + v14 * v11, type metadata accessor for OwnerSharingCircle);
        v8 = v19;
      }

      if (v5 == ++v6)
      {
        v16 = v3[41];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v3[42] = _swiftEmptyArrayStorage;
    v17 = v3[34];

    a1 = sub_10029C70C;
    a2 = v17;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10029C70C()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = (*(v0 + 432) + 24) & ~*(v0 + 432);
  (*(v0 + 280))(v4, *(v0 + 96), v7);
  v9 = swift_allocObject();
  *(v0 + 344) = v9;
  *(v9 + 16) = v5;
  v2(v9 + v8, v4, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 352) = v11;
  v12 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v11 = v0;
  v11[1] = sub_10029C870;

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB610, v9, v12);
}

uint64_t sub_10029C870()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return _swift_task_switch(sub_10029C99C, v3, 0);
}

uint64_t sub_10029C99C()
{
  v1 = v0[13];
  v0[45] = v0[11];
  return _swift_task_switch(sub_10029C9C0, v1, 0);
}

uint64_t sub_10029C9C0()
{
  v1 = *(v0 + 336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 432);
    v4 = *(v0 + 176);
    v60 = *(v0 + 168);
    v62 = *(v0 + 216);
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v58 = *(v4 + 72);
    v6 = (v3 + 32) & ~v3;
    do
    {
      v7 = *(v0 + 280);
      v8 = *(v0 + 288);
      v9 = *(v0 + 256);
      v10 = *(v0 + 208);
      v11 = *(v0 + 184);
      sub_1002DB760(v5, v11, type metadata accessor for OwnerSharingCircle);
      v7(v9, v11 + *(v60 + 20), v10);
      sub_1002DBBF0(v11, type metadata accessor for OwnerSharingCircle);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_101123D4C(v12 > 1, v13 + 1, 1);
      }

      v15 = *(v0 + 304);
      v14 = *(v0 + 312);
      v16 = *(v0 + 256);
      v17 = *(v0 + 208);
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v15(_swiftEmptyArrayStorage + v6 + *(v62 + 72) * v13, v16, v17);
      v5 += v58;
      --v2;
    }

    while (v2);
  }

  v18 = *(v0 + 336);

  v19 = *(v0 + 360);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v0 + 432);
    v22 = *(v0 + 152);
    v61 = *(v0 + 144);
    v63 = *(v0 + 216);
    sub_101123D4C(0, v20, 0);
    v23 = v19 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v57 = (v21 + 32) & ~v21;
    v59 = *(v22 + 72);
    do
    {
      v24 = *(v0 + 280);
      v25 = *(v0 + 288);
      v26 = *(v0 + 248);
      v27 = *(v0 + 208);
      v28 = *(v0 + 160);
      sub_1002DB760(v23, v28, type metadata accessor for MemberSharingCircle);
      v24(v26, v28 + *(v61 + 28), v27);
      sub_1002DBBF0(v28, type metadata accessor for MemberSharingCircle);
      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        sub_101123D4C(v29 > 1, v30 + 1, 1);
      }

      v32 = *(v0 + 304);
      v31 = *(v0 + 312);
      v33 = *(v0 + 248);
      v34 = *(v0 + 208);
      _swiftEmptyArrayStorage[2] = v30 + 1;
      v32(_swiftEmptyArrayStorage + v57 + *(v63 + 72) * v30, v33, v34);
      v23 += v59;
      --v20;
    }

    while (v20);
  }

  v35 = *(v0 + 360);

  sub_100398278(_swiftEmptyArrayStorage);
  *(v0 + 368) = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage[2];
  *(v0 + 376) = v36;
  if (v36)
  {
    v37 = *(v0 + 432);
    *(v0 + 384) = *(*(v0 + 104) + 128);
    v38 = (v37 + 32) & ~v37;
    v39 = *(v0 + 208);
    v40 = *(*(v0 + 216) + 72);
    *(v0 + 400) = 0;
    *(v0 + 408) = _swiftEmptyArrayStorage;
    *(v0 + 392) = v40;
    v41 = *(v0 + 288);
    (*(v0 + 280))(*(v0 + 240), _swiftEmptyArrayStorage + v38, v39);
    v42 = swift_task_alloc();
    *(v0 + 416) = v42;
    *v42 = v0;
    v42[1] = sub_10029CE40;
    v43 = *(v0 + 384);
    v44 = *(v0 + 240);

    return sub_100C7BA0C(v0 + 16, v44);
  }

  else
  {

    v47 = *(v0 + 256);
    v46 = *(v0 + 264);
    v49 = *(v0 + 240);
    v48 = *(v0 + 248);
    v50 = *(v0 + 232);
    v52 = *(v0 + 192);
    v51 = *(v0 + 200);
    v53 = *(v0 + 184);
    v54 = *(v0 + 160);
    v55 = *(v0 + 136);
    v64 = *(v0 + 128);

    v56 = *(v0 + 8);

    return v56(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10029CE40()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;

  if (v0)
  {
    v2[53] = v0;
    v5 = v2[13];
    v6 = sub_10029D344;
  }

  else
  {
    v5 = v2[48];
    v6 = sub_10029CF64;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10029CF64()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    sub_1001BAEE0();
    v2 = swift_allocError();
    *v3 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
    v0[53] = v2;
    v4 = v0[13];
    v5 = sub_10029D344;
  }

  else
  {
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[26];
    v9 = v0[17];
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[12];
    v13 = v0[7];
    sub_100017D5C(v13, v0[8]);
    sub_1001BAF34((v0 + 2));
    v7(v9 + *(v11 + 20), v12, v8);
    *v9 = v13;
    v9[1] = v1;
    v5 = sub_10029D08C;
    v4 = v10;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10029D08C()
{
  v1 = *(v0 + 408);
  sub_1002DB760(*(v0 + 136), *(v0 + 128), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 408);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5C82C(0, v3[2] + 1, 1, *(v0 + 408));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5C82C(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 128);
  v10 = *(v0 + 120);
  sub_1002DBBF0(*(v0 + 136), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  (*(v8 + 8))(v6, v7);
  v3[2] = v5 + 1;
  sub_1002DB7C8(v9, v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v11 = *(v0 + 400) + 1;
  if (v11 == *(v0 + 376))
  {
    v12 = *(v0 + 368);

    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v17 = *(v0 + 232);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);
    v21 = *(v0 + 160);
    v28 = *(v0 + 136);
    v29 = *(v0 + 128);

    v22 = *(v0 + 8);

    return v22(v3);
  }

  else
  {
    *(v0 + 400) = v11;
    *(v0 + 408) = v3;
    v24 = *(v0 + 288);
    (*(v0 + 280))(*(v0 + 240), *(v0 + 368) + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v0 + 392) * v11, *(v0 + 208));
    v25 = swift_task_alloc();
    *(v0 + 416) = v25;
    *v25 = v0;
    v25[1] = sub_10029CE40;
    v26 = *(v0 + 384);
    v27 = *(v0 + 240);

    return sub_100C7BA0C(v0 + 16, v27);
  }
}

uint64_t sub_10029D344()
{
  v47 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 208);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  v2(v3, v4, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 424);
  v11 = *(v0 + 232);
  v12 = *(v0 + 240);
  v13 = *(v0 + 208);
  v14 = (*(v0 + 216) + 8);
  if (v9)
  {
    v44 = *(v0 + 424);
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v12;
    v18 = v17;
    v19 = *v14;
    (*v14)(v11, v13);
    v20 = sub_1000136BC(v16, v18, &v46);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "No own device key for shareId %{private,mask.hash}s.", v15, 0x16u);
    sub_100007BAC(v42);

    v19(v41, v13);
  }

  else
  {
    v21 = *(v0 + 424);

    v22 = *v14;
    (*v14)(v11, v13);
    v22(v12, v13);
  }

  v23 = *(v0 + 400) + 1;
  if (v23 == *(v0 + 376))
  {
    v45 = *(v0 + 408);
    v24 = *(v0 + 368);

    v26 = *(v0 + 256);
    v25 = *(v0 + 264);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v29 = *(v0 + 232);
    v31 = *(v0 + 192);
    v30 = *(v0 + 200);
    v32 = *(v0 + 184);
    v33 = *(v0 + 160);
    v34 = *(v0 + 136);
    v43 = *(v0 + 128);

    v35 = *(v0 + 8);

    return v35(v45);
  }

  else
  {
    *(v0 + 400) = v23;
    v37 = *(v0 + 288);
    (*(v0 + 280))(*(v0 + 240), *(v0 + 368) + ((*(v0 + 432) + 32) & ~*(v0 + 432)) + *(v0 + 392) * v23, *(v0 + 208));
    v38 = swift_task_alloc();
    *(v0 + 416) = v38;
    *v38 = v0;
    v38[1] = sub_10029CE40;
    v39 = *(v0 + 384);
    v40 = *(v0 + 240);

    return sub_100C7BA0C(v0 + 16, v40);
  }
}

uint64_t sub_10029D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = type metadata accessor for UUID();
  v5[22] = v6;
  v7 = *(v6 - 8);
  v5[23] = v7;
  v8 = *(v7 + 64) + 15;
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_10029D7E4, v4, 0);
}

uint64_t sub_10029D7E4()
{
  v44 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = type metadata accessor for Logger();
  v0[25] = sub_1000076D4(v5, qword_10177A818);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = v0[19];
    v40 = v0[20];
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v13 = 141558787;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v41);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    v42 = 0x7972616D6972702ELL;
    v43 = 0xEA0000000000282FLL;
    v0[15] = v12;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = sub_1000136BC(v42, v43, &v41);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2080;
    v42 = 0x7972616D6972702ELL;
    v43 = 0xEA0000000000282FLL;
    v0[16] = v40;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = sub_1000136BC(v42, v43, &v41);

    *(v13 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "Bundle Decryption for shareId: %{private,mask.hash}s for primary range: %s - %s.", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v24 = v0[20];
  if (v24 >= v0[19])
  {
    v0[26] = *(v0[21] + 128);
    v0[27] = _swiftEmptyArrayStorage;
    v28 = v0[25];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315138;
      v0[12] = 0x7972616D6972702ELL;
      v0[13] = 0xEA0000000000282FLL;
      v0[14] = v24;
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v35 = sub_1000136BC(v0[12], v0[13], &v42);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Create bundle decryption for primaryIndex: %s.", v31, 0xCu);
      sub_100007BAC(v32);
    }

    v36 = swift_task_alloc();
    v0[28] = v36;
    *v36 = v0;
    v36[1] = sub_10029DD28;
    v37 = v0[26];
    v38 = v0[17];
    v39 = v0[18];

    return sub_100D015EC((v0 + 2), v38, v39, v24);
  }

  else
  {
    v25 = v0[24];

    v26 = v0[1];

    return v26(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10029DD28()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[27];
    v6 = v2[24];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[21];

    return _swift_task_switch(sub_10029DE80, v9, 0);
  }
}

uint64_t sub_10029DE80()
{
  v28 = v0;
  v1 = *(v0 + 216);
  sub_1002DB880(v0 + 16, v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 216);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5C70C(0, *(v3 + 2) + 1, 1, *(v0 + 216));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5C70C((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 152);
  *(v3 + 2) = v5 + 1;
  v7 = &v3[40 * v5];
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  *(v7 + 8) = *(v0 + 48);
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  sub_1002DB8DC(v0 + 16);
  v10 = *(v0 + 24);
  if (v10 && (v11 = v10 - 1, v10 - 1 >= v6))
  {
    *(v0 + 216) = v3;
    v12 = *(v0 + 200);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      *(v0 + 96) = 0x7972616D6972702ELL;
      *(v0 + 104) = 0xEA0000000000282FLL;
      *(v0 + 112) = v11;
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 41;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = sub_1000136BC(*(v0 + 96), *(v0 + 104), &v27);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Create bundle decryption for primaryIndex: %s.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    *v20 = v0;
    v20[1] = sub_10029DD28;
    v21 = *(v0 + 208);
    v22 = *(v0 + 136);
    v23 = *(v0 + 144);

    return sub_100D015EC(v0 + 16, v22, v23, v11);
  }

  else
  {
    v25 = *(v0 + 192);

    v26 = *(v0 + 8);

    return v26(v3);
  }
}

uint64_t sub_10029E154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 176) = a5;
  *(v6 + 184) = v5;
  *(v6 + 484) = a4;
  *(v6 + 160) = a2;
  *(v6 + 168) = a3;
  *(v6 + 152) = a1;
  v7 = *(type metadata accessor for KeyDropJoinToken(0) - 8);
  *(v6 + 192) = v7;
  v8 = *(v7 + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  *(v6 + 224) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v6 + 240) = v11;
  v12 = *(v11 - 8);
  *(v6 + 248) = v12;
  *(v6 + 256) = *(v12 + 64);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v13 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v6 + 296) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v15 = type metadata accessor for MemberSharingCircle();
  *(v6 + 312) = v15;
  v16 = *(v15 - 8);
  *(v6 + 320) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_10029E39C, v5, 0);
}

uint64_t sub_10029E39C()
{
  v1 = *(*(v0 + 184) + 136);
  *(v0 + 344) = v1;
  return _swift_task_switch(sub_10029E3C0, v1, 0);
}

uint64_t sub_10029E3C0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);
  v4 = *(v0 + 240);
  v5 = *(v0 + 168);
  v6 = *(v3 + 16);
  *(v0 + 352) = v6;
  *(v0 + 360) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 480) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 368) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 376) = v10;
  *(v0 + 384) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);
  v11 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_10029E544;
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_1002DB748, v9, v14);
}

uint64_t sub_10029E544()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_10029E670, v3, 0);
}

uint64_t sub_10029E670()
{
  v1 = v0[38];
  if ((*(v0[40] + 48))(v1, 1, v0[39]) == 1)
  {
    v2 = v0[43];
    sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_10029F274, v2, 0);
  }

  else
  {
    v3 = v0[23];
    sub_1002DB7C8(v1, v0[42], type metadata accessor for MemberSharingCircle);
    v0[50] = *(v3 + 128);
    v4 = swift_task_alloc();
    v0[51] = v4;
    *v4 = v0;
    v4[1] = sub_10029E7B0;
    v5 = v0[21];

    return sub_100C7BA0C((v0 + 10), v5);
  }
}

uint64_t sub_10029E7B0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2[54] = v0;
    v5 = v2[23];
    v6 = sub_10029F164;
  }

  else
  {
    v5 = v2[50];
    v6 = sub_10029E8D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10029E8D8()
{
  v1 = v0[14];
  v0[53] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[23];

    sub_1001BAF34((v0 + 10));
    v3 = sub_10029E9B4;
    v4 = v2;
  }

  else
  {
    sub_1001BAEE0();
    v5 = swift_allocError();
    *v6 = 13;
    swift_willThrow();
    sub_1001BAF34((v0 + 10));
    v0[54] = v5;
    v4 = v0[23];
    v3 = sub_10029F164;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10029E9B4()
{
  v94 = v0;
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 336);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v90 = sub_10013D028(sub_1002DB830, v4, v1);

  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v9 = *(v0 + 328);
  v8 = *(v0 + 336);
  v10 = *(v0 + 280);
  v11 = *(v0 + 240);
  v12 = *(v0 + 168);
  v87 = type metadata accessor for Logger();
  sub_1000076D4(v87, qword_10177A818);
  v7(v10, v12, v11);
  sub_1002DB760(v8, v9, type metadata accessor for MemberSharingCircle);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 328);
  if (v15)
  {
    v80 = *(v0 + 312);
    v83 = v14;
    v17 = *(v0 + 280);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v20 = 141558787;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v85 = *(v18 + 8);
    v85(v17, v19);
    v24 = sub_1000136BC(v21, v23, v93);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2160;
    *(v20 + 24) = 1752392040;
    *(v20 + 32) = 2081;
    v25 = v16 + *(v80 + 32);
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_1002DBBF0(v16, type metadata accessor for MemberSharingCircle);
    v29 = sub_1000136BC(v26, v28, v93);

    *(v20 + 34) = v29;
    _os_log_impl(&_mh_execute_header, v13, v83, "Found member sharing circle %{private,mask.hash}s with owner: %{private,mask.hash}s.", v20, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v30 = *(v0 + 280);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);

    sub_1002DBBF0(v16, type metadata accessor for MemberSharingCircle);
    v85 = *(v32 + 8);
    v85(v30, v31);
  }

  sub_1002DBBF0(*(v0 + 336), type metadata accessor for MemberSharingCircle);
  v33 = v90;
  v34 = *(v90 + 16);
  if (v34 >= 2)
  {
    if (p_weak_ivar_lyt[162] != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v37 = *(v0 + 264);
    v38 = *(v0 + 240);
    v39 = *(v0 + 168);
    sub_1000076D4(v87, qword_10177A818);
    v36(v37, v39, v38);
    swift_bridgeObjectRetain_n();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 264);
    v44 = *(v0 + 240);
    v45 = *(v0 + 248);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v93[0] = v47;
      *v46 = 141558531;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      v85(v43, v44);
      v51 = sub_1000136BC(v48, v50, v93);
      v33 = v90;

      *(v46 + 14) = v51;
      *(v46 + 22) = 2048;
      v52 = *(v90 + 16);

      *(v46 + 24) = v52;

      _os_log_impl(&_mh_execute_header, v40, v41, "Multiple join tokens found for sharingCircleIdentifier: %{private,mask.hash}s, count: %ld.", v46, 0x20u);
      sub_100007BAC(v47);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v85(v43, v44);
    }

    v34 = *(v33 + 16);
  }

  if (v34)
  {
    v54 = *(v0 + 352);
    v53 = *(v0 + 360);
    v76 = *(v0 + 336);
    v77 = *(v0 + 328);
    v78 = *(v0 + 304);
    v79 = *(v0 + 288);
    v81 = *(v0 + 280);
    v82 = *(v0 + 272);
    v55 = *(v0 + 240);
    v84 = *(v0 + 264);
    v86 = *(v0 + 232);
    v88 = *(v0 + 216);
    v91 = *(v0 + 208);
    v56 = *(v0 + 200);
    v75 = *(v0 + 484);
    v58 = *(v0 + 168);
    v57 = *(v0 + 176);
    v59 = *(*(v0 + 192) + 80);
    v61 = *(v0 + 152);
    v60 = *(v0 + 160);
    sub_1002DB760(v33 + ((v59 + 32) & ~v59), v56, type metadata accessor for KeyDropJoinToken);

    v54(v61, v58, v55);
    Item = type metadata accessor for KeyDropFetchItem(0);
    sub_1002DB7C8(v56, v61 + Item[8], type metadata accessor for KeyDropJoinToken);
    *(v61 + Item[5]) = v75;
    *(v61 + Item[6]) = v57;
    *(v61 + Item[7]) = v60;
  }

  else
  {

    sub_1001BAEE0();
    swift_allocError();
    *v64 = 13;
    swift_willThrow();
    v66 = *(v0 + 328);
    v65 = *(v0 + 336);
    v67 = *(v0 + 304);
    v69 = *(v0 + 280);
    v68 = *(v0 + 288);
    v71 = *(v0 + 264);
    v70 = *(v0 + 272);
    v72 = *(v0 + 232);
    v73 = *(v0 + 216);
    v89 = *(v0 + 208);
    v92 = *(v0 + 200);
  }

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_10029F164()
{
  sub_1002DBBF0(v0[42], type metadata accessor for MemberSharingCircle);
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[27];
  v13 = v0[25];
  v14 = v0[54];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10029F274()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 360);
  v4 = *(v0 + 344);
  v5 = *(v0 + 288);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = (*(v0 + 480) + 24) & ~*(v0 + 480);
  (*(v0 + 352))(v5, *(v0 + 168), v7);
  v9 = swift_allocObject();
  *(v0 + 440) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 448) = v11;
  *v11 = v0;
  v11[1] = sub_10029F3C4;
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC70, v9, v13);
}

uint64_t sub_10029F3C4()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return _swift_task_switch(sub_10029F4F0, v3, 0);
}

uint64_t sub_10029F4F0()
{
  v1 = v0[29];
  v2 = type metadata accessor for OwnerSharingCircle();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_10000B3A8(v1, &unk_1016AFA00, &qword_10138C4D0);
  if (v3 == 1)
  {
    sub_1001BAEE0();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    v6 = v0[41];
    v5 = v0[42];
    v7 = v0[38];
    v9 = v0[35];
    v8 = v0[36];
    v11 = v0[33];
    v10 = v0[34];
    v12 = v0[29];
    v13 = v0[27];
    v18 = v0[26];
    v19 = v0[25];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v0[57] = *(v0[23] + 128);
    v16 = swift_task_alloc();
    v0[58] = v16;
    *v16 = v0;
    v16[1] = sub_10029F6FC;
    v17 = v0[21];

    return sub_100C7BA0C((v0 + 2), v17);
  }
}

uint64_t sub_10029F6FC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[41];
    v5 = v2[42];
    v7 = v2[38];
    v9 = v2[35];
    v8 = v2[36];
    v11 = v2[33];
    v10 = v2[34];
    v12 = v2[29];
    v13 = v2[27];
    v18 = v2[26];
    v14 = v2[25];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {
    v17 = v2[57];

    return _swift_task_switch(sub_10029F8D8, v17, 0);
  }
}

uint64_t sub_10029F8D8()
{
  v1 = v0[6];
  v0[18] = v1;
  v0[59] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[23];

    sub_1001BAF34((v0 + 2));

    return _swift_task_switch(sub_10029FA74, v2, 0);
  }

  else
  {
    sub_1001BAEE0();
    swift_allocError();
    *v3 = 13;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
    v5 = v0[41];
    v4 = v0[42];
    v6 = v0[38];
    v8 = v0[35];
    v7 = v0[36];
    v10 = v0[33];
    v9 = v0[34];
    v11 = v0[29];
    v12 = v0[26];
    v13 = v0[27];
    v16 = v0[25];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_10029FA74()
{
  v90 = v0;
  v2 = *(*(v0 + 472) + 16);
  if (v2)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = *(v0 + 192);
    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    while (1)
    {
      v7 = *(v0 + 472);
      if (v3 >= *(v7 + 16))
      {
        break;
      }

      v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v1 = *(v5 + 72);
      sub_1002DB760(v7 + v8 + v1 * v3, *(v0 + 216), type metadata accessor for KeyDropJoinToken);
      if (p_weak_ivar_lyt[172] != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 216);
      sub_1000076D4(*(v0 + 240), qword_10177A900);
      v10 = static UUID.== infix(_:_:)();
      v11 = *(v0 + 216);
      if (v10)
      {
        sub_1002DB7C8(v11, *(v0 + 208), type metadata accessor for KeyDropJoinToken);
        v89[0] = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112406C(0, v4[2] + 1, 1);
          v4 = v89[0];
        }

        v13 = v4[2];
        v12 = v4[3];
        if (v13 >= v12 >> 1)
        {
          sub_10112406C(v12 > 1, v13 + 1, 1);
          v4 = v89[0];
        }

        v14 = *(v0 + 208);
        v4[2] = v13 + 1;
        sub_1002DB7C8(v14, v4 + v8 + v13 * v1, type metadata accessor for KeyDropJoinToken);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      }

      else
      {
        sub_1002DBBF0(v11, type metadata accessor for KeyDropJoinToken);
      }

      if (v2 == ++v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_16;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_10000B3A8(v0 + 144, &qword_10169C9C0, &qword_101398A48);
  v1 = &BeaconKeyManager.weak_ivar_lyt;
  if (qword_101694510 != -1)
  {
    goto LABEL_33;
  }

LABEL_16:
  v16 = *(v0 + 352);
  v15 = *(v0 + 360);
  v17 = *(v0 + 272);
  v18 = *(v0 + 240);
  v19 = *(v0 + 168);
  v82 = type metadata accessor for Logger();
  sub_1000076D4(v82, qword_10177A818);
  v16(v17, v19, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 272);
  v25 = *(v0 + 240);
  v24 = *(v0 + 248);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v89[0] = v80;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v86 = *(v24 + 8);
    v86(v23, v25);
    v30 = v27;
    v1 = (&BeaconKeyManager + 56);
    v31 = sub_1000136BC(v30, v29, v89);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Found owner sharing circle %{private,mask.hash}s for owner.", v26, 0x16u);
    sub_100007BAC(v80);
  }

  else
  {

    v86 = *(v24 + 8);
    v86(v23, v25);
  }

  v32 = v4[2];
  if (v32 >= 2)
  {
    if (v1[162] != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 352);
    v33 = *(v0 + 360);
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 168);
    sub_1000076D4(v82, qword_10177A818);
    v34(v35, v37, v36);
    swift_bridgeObjectRetain_n();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 264);
    v43 = *(v0 + 240);
    v42 = *(v0 + 248);
    if (v40)
    {
      v44 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89[0] = v83;
      *v44 = 141558531;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v86(v41, v43);
      v48 = sub_1000136BC(v45, v47, v89);

      *(v44 + 14) = v48;
      *(v44 + 22) = 2048;
      v49 = v4[2];

      *(v44 + 24) = v49;

      _os_log_impl(&_mh_execute_header, v38, v39, "Multiple join tokens found for sharingCircleIdentifier: %{private,mask.hash}s, count: %ld.", v44, 0x20u);
      sub_100007BAC(v83);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v86(v41, v43);
    }

    v32 = v4[2];
  }

  if (v32)
  {
    v51 = *(v0 + 352);
    v50 = *(v0 + 360);
    v73 = *(v0 + 336);
    v74 = *(v0 + 328);
    v75 = *(v0 + 304);
    v76 = *(v0 + 288);
    v77 = *(v0 + 280);
    v78 = *(v0 + 272);
    v52 = *(v0 + 240);
    v79 = *(v0 + 264);
    v81 = *(v0 + 232);
    v84 = *(v0 + 216);
    v87 = *(v0 + 208);
    v53 = *(v0 + 200);
    v72 = *(v0 + 484);
    v55 = *(v0 + 168);
    v54 = *(v0 + 176);
    v56 = *(*(v0 + 192) + 80);
    v57 = *(v0 + 152);
    v58 = *(v0 + 160);
    sub_1002DB760(v4 + ((v56 + 32) & ~v56), v53, type metadata accessor for KeyDropJoinToken);

    v51(v57, v55, v52);
    Item = type metadata accessor for KeyDropFetchItem(0);
    sub_1002DB7C8(v53, v57 + Item[8], type metadata accessor for KeyDropJoinToken);
    *(v57 + Item[5]) = v72;
    *(v57 + Item[6]) = v54;
    *(v57 + Item[7]) = v58;
  }

  else
  {

    sub_1001BAEE0();
    swift_allocError();
    *v61 = 13;
    swift_willThrow();
    v63 = *(v0 + 328);
    v62 = *(v0 + 336);
    v64 = *(v0 + 304);
    v66 = *(v0 + 280);
    v65 = *(v0 + 288);
    v68 = *(v0 + 264);
    v67 = *(v0 + 272);
    v69 = *(v0 + 232);
    v70 = *(v0 + 216);
    v85 = *(v0 + 208);
    v88 = *(v0 + 200);
  }

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1002A0294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 176) = a4;
  *(v7 + 16) = a3;
  *(v7 + 24) = a5;
  v9 = type metadata accessor for Date();
  *(v7 + 48) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v7 + 56) = v10;
  v12 = *(v10 + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  *(v7 + 72) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v15 = swift_task_alloc();
  *(v7 + 112) = v15;
  (*(v11 + 16))();
  *(v15 + *(v13 + 48)) = a2;

  return _swift_task_switch(sub_1002A0420, v6, 0);
}

uint64_t sub_1002A0420()
{
  v42 = v0;
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A818);
  sub_1000D2A70(v2, v1, &qword_10169C9C8, &qword_101398A58);
  sub_1000D2A70(v2, v3, &qword_10169C9C8, &qword_101398A58);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  if (v9)
  {
    v11 = v0[11];
    v40 = v8;
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    v36 = v0[9];
    v37 = v0[4];
    v38 = v0[3];
    log = v7;
    v15 = v0[2];
    v35 = v0[12];
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v16 = 134218754;
    *(v16 + 4) = *(v15 + 16);

    *(v16 + 12) = 2080;
    sub_1000D2A70(v10, v11, &qword_10169C9C8, &qword_101398A58);
    (*(v13 + 32))(v12, v11, v14);
    sub_1002DB700(&qword_1016969A0, &type metadata accessor for Date);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v14);
    sub_10000B3A8(v10, &qword_10169C9C8, &qword_101398A58);
    v21 = sub_1000136BC(v17, v19, &v41);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2048;
    sub_1000D2A70(v35, v11, &qword_10169C9C8, &qword_101398A58);
    v22 = *(v11 + *(v36 + 48));
    v20(v11, v14);
    sub_10000B3A8(v35, &qword_10169C9C8, &qword_101398A58);
    *(v16 + 24) = v22;
    *(v16 + 32) = 2080;
    if (v37)
    {
      v23 = v38;
    }

    else
    {
      v23 = 0x6C646E75622D6F6ELL;
    }

    if (v37)
    {
      v24 = v4;
    }

    else
    {
      v24 = 0xE900000000000065;
    }

    v25 = sub_1000136BC(v23, v24, &v41);

    *(v16 + 34) = v25;
    _os_log_impl(&_mh_execute_header, log, v40, "BeaconSharingService begin fetchSharedBeacons %ld. Date Interval: %s - %ld days back count, bundle: %s", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[2];
    sub_10000B3A8(v0[12], &qword_10169C9C8, &qword_101398A58);

    sub_10000B3A8(v10, &qword_10169C9C8, &qword_101398A58);
  }

  v27 = v0[9];
  v28 = v0[10];
  sub_1000D2A70(v0[14], v28, &qword_10169C9C8, &qword_101398A58);
  v29 = *(v28 + *(v27 + 48));
  v30 = swift_task_alloc();
  v0[15] = v30;
  *v30 = v0;
  v30[1] = sub_1002A088C;
  v31 = v0[10];
  v32 = v0[5];
  v33 = v0[2];

  return sub_1002A0E2C(v31, v29, v33);
}

uint64_t sub_1002A088C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = *(v6 + 40);

    return _swift_task_switch(sub_1002A0C8C, v9, 0);
  }

  else
  {
    v10 = *(v6 + 80);
    v11 = *(v6 + 48);
    v12 = *(v6 + 56);
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    (*(v12 + 8))(v10, v11);
    v13 = swift_task_alloc();
    *(v6 + 152) = v13;
    *v13 = v8;
    v13[1] = sub_1002A0A48;
    v14 = *(v6 + 32);
    v15 = *(v6 + 40);
    v16 = *(v6 + 24);
    v17 = *(v6 + 176);

    return sub_10029B590(a1, a2, v17, v16, v14);
  }
}

uint64_t sub_1002A0A48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(*v2 + 144);
  v7 = *(*v2 + 136);
  v8 = *v2;
  v4[20] = v1;

  v9 = v4[5];
  if (v1)
  {
    v10 = sub_1002A0D6C;
  }

  else
  {
    v4[21] = a1;
    v10 = sub_1002A0BC4;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1002A0BC4()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[8];
  sub_10000B3A8(v0[14], &qword_10169C9C8, &qword_101398A58);

  v6 = v0[1];
  v7 = v0[21];

  return v6(v7);
}

uint64_t sub_1002A0C8C()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  sub_10000B3A8(v0[14], &qword_10169C9C8, &qword_101398A58);
  (*(v3 + 8))(v1, v2);
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002A0D6C()
{
  sub_10000B3A8(v0[14], &qword_10169C9C8, &qword_101398A58);
  v1 = v0[20];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002A0E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[94] = v3;
  v4[93] = a3;
  v7 = type metadata accessor for OwnerSharingCircle();
  v4[95] = v7;
  v8 = *(v7 - 8);
  v4[96] = v8;
  v9 = *(v8 + 64) + 15;
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v10 = type metadata accessor for HashAlgorithm();
  v4[99] = v10;
  v11 = *(v10 - 8);
  v4[100] = v11;
  v12 = *(v11 + 64) + 15;
  v4[101] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40) - 8) + 64) + 15;
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v14 = *(type metadata accessor for KeyDropFetchItem(0) - 8);
  v4[105] = v14;
  v15 = *(v14 + 64) + 15;
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v16 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4[108] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[109] = swift_task_alloc();
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v4[110] = v18;
  v19 = *(v18 - 8);
  v4[111] = v19;
  v20 = *(v19 + 64) + 15;
  v4[112] = swift_task_alloc();
  v21 = type metadata accessor for MemberSharingCircle();
  v4[113] = v21;
  v22 = *(v21 - 8);
  v4[114] = v22;
  v23 = *(v22 + 64) + 15;
  v4[115] = swift_task_alloc();
  v24 = type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey(0);
  v4[116] = v24;
  v25 = *(v24 - 8);
  v4[117] = v25;
  v26 = *(v25 + 64) + 15;
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v27 = type metadata accessor for UUID();
  v4[125] = v27;
  v28 = *(v27 - 8);
  v4[126] = v28;
  v4[127] = *(v28 + 64);
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v29 = sub_1000BC4D4(&qword_10169C9C8, &qword_101398A58);
  v4[138] = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v31 = swift_task_alloc();
  v4[145] = v31;
  v32 = type metadata accessor for Date();
  v4[146] = v32;
  v33 = *(v32 - 8);
  v4[147] = v33;
  v34 = *(v33 + 16);
  v4[148] = v34;
  v4[149] = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v31, a1, v32);
  *(v31 + *(v29 + 48)) = a2;

  return _swift_task_switch(sub_1002A13B4, v3, 0);
}

uint64_t sub_1002A13B4()
{
  v1 = *(v0 + 744);
  *(v0 + 712) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  *(v0 + 1200) = v2;
  if (v2)
  {
    v3 = *(v0 + 752);
    *(v0 + 1776) = enum case for HashAlgorithm.sha256(_:);
    *(v0 + 1224) = _swiftEmptyArrayStorage;
    *(v0 + 1208) = 0u;
    v4 = *(v0 + 1096);
    sub_10001F280(v1 + 32, v0 + 144);
    v5 = *(v3 + 136);
    *(v0 + 1232) = v5;
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v6);
    (*(*(*(v7 + 8) + 8) + 32))(v6);

    return _swift_task_switch(sub_1002A174C, v5, 0);
  }

  else
  {
    v8 = *(v0 + 1152);
    v9 = *(v0 + 1144);
    v10 = *(v0 + 1136);
    v11 = *(v0 + 1128);
    v12 = *(v0 + 1120);
    v13 = *(v0 + 1112);
    v14 = *(v0 + 1096);
    v15 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 1048);
    v23 = *(v0 + 1040);
    v24 = *(v0 + 1032);
    v25 = *(v0 + 1024);
    v26 = *(v0 + 992);
    v27 = *(v0 + 984);
    v28 = *(v0 + 976);
    v29 = *(v0 + 968);
    v30 = *(v0 + 960);
    v31 = *(v0 + 952);
    v32 = *(v0 + 944);
    v33 = *(v0 + 920);
    v34 = *(v0 + 896);
    v35 = *(v0 + 872);
    v36 = *(v0 + 856);
    v37 = *(v0 + 848);
    v38 = *(v0 + 832);
    v39 = *(v0 + 824);
    v40 = *(v0 + 816);
    v41 = *(v0 + 808);
    v42 = *(v0 + 784);
    v43 = *(v0 + 776);
    sub_10000B3A8(*(v0 + 1160), &qword_10169C9C8, &qword_101398A58);

    v16 = *(v0 + 8);

    return v16(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_1002A174C()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1000);
  v7 = *(v5 + 16);
  *(v0 + 1240) = v7;
  *(v0 + 1248) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v2, v6);
  v8 = *(v5 + 80);
  *(v0 + 1780) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 1256) = v10;
  *(v10 + 16) = v1;
  v11 = *(v5 + 32);
  *(v0 + 1264) = v11;
  *(v0 + 1272) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v6);
  v12 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v13 = swift_task_alloc();
  *(v0 + 1280) = v13;
  v14 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v13 = v0;
  v13[1] = sub_1002A1920;

  return unsafeBlocking<A>(context:_:)(v0 + 688, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC6C, v10, v14);
}

uint64_t sub_1002A1920()
{
  v1 = *(*v0 + 1280);
  v2 = *(*v0 + 1256);
  v3 = *(*v0 + 1232);
  v5 = *v0;

  return _swift_task_switch(sub_1002A1A80, v3, 0);
}

uint64_t sub_1002A1A80()
{
  v1 = v0[137];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[94];
  v5 = *(v2 + 8);
  v0[161] = v5;
  v0[162] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v0[163] = v0[86];

  return _swift_task_switch(sub_1002A1B44, v4, 0);
}

uint64_t sub_1002A1B44()
{
  v1 = v0[163];
  v2 = *(v1 + 16);
  v0[164] = v2;
  if (v2)
  {
    v3 = v0[151];
    v0[167] = 0;
    v0[166] = _swiftEmptyArrayStorage;
    v0[165] = v3;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v4 = v0[156];
    v5 = v0[155];
    v6 = v0[135];
    v7 = v0[134];
    v8 = v0[125];
    v9 = v0[113];
    v10 = *(v0[114] + 80);
    v11 = v1 + ((v10 + 32) & ~v10);
    v0[168] = *(v0[94] + 128);
    v5(v6, v11 + *(v9 + 28), v8);
    v5(v7, v11 + *(v9 + 24), v8);
    v12 = sub_1002A1DC0;
    v13 = 0;
  }

  else
  {

    v14 = v0[153];
    v15 = v0[151];
    sub_10039845C(_swiftEmptyArrayStorage);
    v16 = v0[150];
    v17 = v0[152] + 1;
    sub_100007BAC(v0 + 18);
    if (v17 == v16)
    {
      v0[190] = v14;
      v0[189] = 0;
      v18 = v0[154];
      v19 = v0[137];
      sub_10001F280(v0[93] + 32, (v0 + 28));
      v20 = v0[31];
      v21 = v0[32];
      sub_1000035D0(v0 + 28, v20);
      (*(*(*(v21 + 8) + 8) + 32))(v20);
      v22 = sub_1002A571C;
    }

    else
    {
      v23 = v0[152];
      v0[153] = v14;
      v0[152] = v23 + 1;
      v0[151] = v15;
      v24 = v0[137];
      v25 = v0[94];
      sub_10001F280(v0[93] + 40 * v23 + 72, (v0 + 18));
      v18 = *(v25 + 136);
      v0[154] = v18;
      v26 = v0[21];
      v27 = v0[22];
      sub_1000035D0(v0 + 18, v26);
      (*(*(*(v27 + 8) + 8) + 32))(v26);
      v22 = sub_1002A174C;
    }

    v12 = v22;
    v13 = v18;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1002A1DC0()
{
  v1 = *(*(v0 + 1344) + 120);
  *(v0 + 1352) = v1;

  return _swift_task_switch(sub_1002A1E54, v1, 0);
}

uint64_t sub_1002A1E54()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1248);
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 1000);
  v8 = (*(v0 + 1780) + 24) & ~*(v0 + 1780);
  (*(v0 + 1240))(v5, *(v0 + 1080), v7);
  v9 = swift_allocObject();
  *(v0 + 1360) = v9;
  *(v9 + 16) = v1;
  v3(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1368) = v11;
  v12 = sub_1000BC4D4(&qword_10169C9A8, &qword_101398A30);
  *v11 = v0;
  v11[1] = sub_1002A1FF8;

  return unsafeBlocking<A>(context:_:)(v0 + 680, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC74, v9, v12);
}

uint64_t sub_1002A1FF8()
{
  v1 = *(*v0 + 1368);
  v2 = *(*v0 + 1360);
  v3 = *(*v0 + 1352);
  v5 = *v0;

  return _swift_task_switch(sub_1002A2158, v3, 0);
}

uint64_t sub_1002A2158()
{
  *(v0 + 1376) = *(v0 + 680);

  return _swift_task_switch(sub_1002A21EC, 0, 0);
}

uint64_t sub_1002A21EC()
{
  if (qword_101694DF8 != -1)
  {
    swift_once();
  }

  v1 = v0[172];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177BF08);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[172];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Got %ld keys in the sharing circle secrets keychain.", v7, 0xCu);
  }

  else
  {
    v8 = v0[172];
  }

  v9 = v0[165];
  sub_100D0E5C0(v0[172], (v0 + 2));
  v0[173] = v9;
  if (v9)
  {
    v10 = v0[163];

    v0[175] = v9;
    v11 = v0[166];
    v12 = v0[162];
    v13 = v0[161];
    v14 = v0[135];
    v15 = v0[125];
    v16 = v0[94];
    v13(v0[134], v15);
    v13(v14, v15);

    v17 = sub_1002A28D8;
    v18 = v16;
  }

  else
  {
    v18 = v0[168];
    v17 = sub_1002A2408;
  }

  return _swift_task_switch(v17, v18, 0);
}

uint64_t sub_1002A2408()
{
  v1 = v0[8];
  if (v1 >> 60 == 15)
  {
    v2 = v0[163];

    sub_1001BAEE0();
    v3 = swift_allocError();
    *v4 = 12;
    swift_willThrow();
    sub_1001BAF34((v0 + 2));
    v0[175] = v3;
    v5 = v0[166];
    v6 = v0[162];
    v7 = v0[161];
    v8 = v0[135];
    v9 = v0[125];
    v10 = v0[94];
    v7(v0[134], v9);
    v7(v8, v9);

    v11 = sub_1002A28D8;
    v12 = v10;
  }

  else
  {
    v13 = v0[162];
    v14 = v0[161];
    v23 = v0[158];
    v24 = v0[159];
    v15 = v0[135];
    v16 = v0[134];
    v17 = v0[125];
    v18 = v0[124];
    v19 = v0[116];
    v22 = v0[94];
    v20 = v0[7];
    sub_100017D5C(v20, v1);
    sub_1001BAF34((v0 + 2));
    v14(v15, v17);
    v23(v18 + *(v19 + 20), v16, v17);
    *v18 = v20;
    v18[1] = v1;
    v11 = sub_1002A25E0;
    v12 = v22;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1002A25E0()
{
  v1 = *(v0 + 1328);
  sub_1002DB760(*(v0 + 992), *(v0 + 984), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 1328);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5C82C(0, v3[2] + 1, 1, *(v0 + 1328));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5C82C(v4 > 1, v5 + 1, 1, v3);
  }

  *(v0 + 1392) = v3;
  v6 = *(v0 + 1312);
  v7 = *(v0 + 984);
  v8 = *(v0 + 936);
  v9 = *(v0 + 1336) + 1;
  sub_1002DBBF0(*(v0 + 992), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v3[2] = v5 + 1;
  sub_1002DB7C8(v7, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v9 == v6)
  {
    v10 = *(v0 + 1304);
    v11 = *(*(v0 + 912) + 80);
    *(v0 + 1784) = v11;
    v12 = *(v0 + 1384);
    *(v0 + 1424) = *(v0 + 1224);
    *(v0 + 1416) = 0;
    *(v0 + 1408) = v12;
    if (*(v10 + 16))
    {
      v13 = *(v0 + 1232);
      v14 = *(v0 + 1096);
      sub_1002DB760(v10 + ((v11 + 32) & ~v11), *(v0 + 920), type metadata accessor for MemberSharingCircle);
      v15 = *(v0 + 168);
      v16 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v15);
      (*(*(*(v16 + 8) + 8) + 32))(v15);
      v17 = sub_1002A2CE4;
      v18 = v13;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  v19 = *(v0 + 1384);
  v20 = *(v0 + 1336) + 1;
  *(v0 + 1336) = v20;
  *(v0 + 1328) = v3;
  *(v0 + 1320) = v19;
  v21 = *(v0 + 1304);
  if (v20 >= *(v21 + 16))
  {
    goto LABEL_14;
  }

  v22 = *(v0 + 1248);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1080);
  v25 = *(v0 + 1072);
  v26 = *(v0 + 1000);
  v27 = *(v0 + 904);
  v28 = v21 + ((*(*(v0 + 912) + 80) + 32) & ~*(*(v0 + 912) + 80)) + *(*(v0 + 912) + 72) * v20;
  *(v0 + 1344) = *(*(v0 + 752) + 128);
  v23(v24, v28 + *(v27 + 28), v26);
  v23(v25, v28 + *(v27 + 24), v26);
  v17 = sub_1002A1DC0;
  v18 = 0;
LABEL_10:

  return _swift_task_switch(v17, v18, 0);
}

uint64_t sub_1002A28D8()
{
  v38 = v0;
  v1 = v0[175];
  v2 = v0[153];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v34 = v0[161];
    v35 = v0[162];
    v6 = v0[137];
    v7 = v0[125];
    v36 = v2;
    v8 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = v0[26];
    v9 = v0[27];
    sub_1000035D0(v0 + 23, v10);
    (*(*(*(v9 + 8) + 8) + 32))(v10);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v34(v6, v7);
    sub_100007BAC(v0 + 23);
    v14 = sub_1000136BC(v11, v13, &v37);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    swift_getErrorValue();
    v16 = v0[47];
    v15 = v0[48];
    v17 = v0[49];
    v18 = Error.localizedDescription.getter();
    v20 = sub_1000136BC(v18, v19, &v37);

    *(v8 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v8, 0x20u);
    swift_arrayDestroy();

    v2 = v36;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v21 = v0[150];
  v22 = v0[152] + 1;
  sub_100007BAC(v0 + 18);
  if (v22 == v21)
  {
    v0[190] = v2;
    v0[189] = 0;
    v23 = v0[154];
    v24 = v0[137];
    sub_10001F280(v0[93] + 32, (v0 + 28));
    v25 = v0[31];
    v26 = v0[32];
    sub_1000035D0(v0 + 28, v25);
    (*(*(*(v26 + 8) + 8) + 32))(v25);
    v27 = sub_1002A571C;
  }

  else
  {
    v28 = v0[152];
    v0[153] = v2;
    v0[152] = v28 + 1;
    v0[151] = 0;
    v29 = v0[137];
    v30 = v0[94];
    sub_10001F280(v0[93] + 40 * v28 + 72, (v0 + 18));
    v23 = *(v30 + 136);
    v0[154] = v23;
    v31 = v0[21];
    v32 = v0[22];
    sub_1000035D0(v0 + 18, v31);
    (*(*(*(v32 + 8) + 8) + 32))(v31);
    v27 = sub_1002A174C;
  }

  return _swift_task_switch(v27, v23, 0);
}

uint64_t sub_1002A2CE4()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 1000);
  v8 = (*(v0 + 1780) + 24) & ~*(v0 + 1780);
  (*(v0 + 1240))(v5, *(v0 + 1096), v7);
  v9 = swift_allocObject();
  *(v0 + 1432) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1440) = v11;
  *v11 = v0;
  v11[1] = sub_1002A2E74;
  v12 = *(v0 + 872);
  v13 = *(v0 + 864);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC78, v9, v13);
}

uint64_t sub_1002A2E74()
{
  v1 = *(*v0 + 1440);
  v2 = *(*v0 + 1432);
  v3 = *(*v0 + 1296);
  v4 = *(*v0 + 1288);
  v5 = *(*v0 + 1096);
  v6 = *(*v0 + 1000);
  v7 = *(*v0 + 752);
  v9 = *v0;

  v4(v5, v6);

  return _swift_task_switch(sub_1002A3040, v7, 0);
}

uint64_t sub_1002A3040()
{
  v158 = v1;
  v2 = *(v1 + 880);
  v3 = *(v1 + 872);
  if ((*(*(v1 + 888) + 48))(v3, 1, v2) != 1)
  {
    v151 = *(v1 + 1248);
    v154 = *(v1 + 1408);
    v148 = *(v1 + 1240);
    v8 = *(v1 + 1064);
    v9 = *(v1 + 1056);
    v10 = *(v1 + 1000);
    v11 = *(v1 + 920);
    v12 = *(v1 + 904);
    v13 = *(v1 + 896);
    sub_1002DB7C8(v3, v13, type metadata accessor for SharedBeaconRecord);
    v15 = *(v1 + 168);
    v14 = *(v1 + 176);
    sub_1000035D0((v1 + 144), v15);
    (*(*(*(v14 + 8) + 8) + 32))(v15);
    v148(v9, v11 + *(v12 + 28), v10);
    v16 = *(v2 + 64);
    v17 = *(v1 + 168);
    v18 = *(v1 + 176);
    v19 = *(v13 + v16);
    sub_1000035D0((v1 + 144), v17);
    v20 = (*(v18 + 88))(v17, v18);
    *(v1 + 1826) = sub_100890F1C(v19, v20 & 1);
    v21 = *(v1 + 1392);
    if (v154)
    {
      v22 = *(v1 + 1304);
      v23 = *(v1 + 1296);
      v24 = *(v1 + 1288);
      v25 = *(v1 + 1064);
      v26 = *(v1 + 1056);
      v27 = *(v1 + 1000);
      v28 = *(v1 + 920);
      v29 = *(v1 + 896);

      v24(v26, v27);
      v24(v25, v27);
      sub_1002DBBF0(v29, type metadata accessor for SharedBeaconRecord);
      sub_1002DBBF0(v28, type metadata accessor for MemberSharingCircle);

      v6 = *(v1 + 1424);
      if (qword_101694510 != -1)
      {
LABEL_115:
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000076D4(v30, qword_10177A818);
      sub_10001F280(v1 + 144, v1 + 184);
      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v149 = *(v1 + 1288);
        v152 = *(v1 + 1296);
        v33 = *(v1 + 1096);
        v34 = *(v1 + 1000);
        v155 = v6;
        v35 = swift_slowAlloc();
        v157[0] = swift_slowAlloc();
        *v35 = 141558531;
        *(v35 + 4) = 1752392040;
        *(v35 + 12) = 2081;
        v37 = *(v1 + 208);
        v36 = *(v1 + 216);
        sub_1000035D0((v1 + 184), v37);
        (*(*(*(v36 + 8) + 8) + 32))(v37);
        sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        v149(v33, v34);
        sub_100007BAC((v1 + 184));
        v41 = sub_1000136BC(v38, v40, v157);

        *(v35 + 14) = v41;
        *(v35 + 22) = 2080;
        swift_getErrorValue();
        v43 = *(v1 + 376);
        v42 = *(v1 + 384);
        v44 = *(v1 + 392);
        v45 = Error.localizedDescription.getter();
        v47 = sub_1000136BC(v45, v46, v157);

        *(v35 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v31, v32, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v35, 0x20u);
        swift_arrayDestroy();

        v6 = v155;
      }

      else
      {

        sub_100007BAC((v1 + 184));
      }

      v5 = 0;
      goto LABEL_80;
    }

    v54 = *(v1 + 1152);
    v55 = *(v1 + 1104);
    sub_1000D2A70(*(v1 + 1160), v54, &qword_10169C9C8, &qword_101398A58);
    v146 = *(v54 + *(v55 + 48));
    v56 = *(v21 + 16);
    v6 = _swiftEmptyArrayStorage;
    if (!v56)
    {
LABEL_86:
      *(v1 + 1448) = v6;
      v112 = *(v1 + 1192);
      v113 = *(v1 + 1144);
      v114 = *(v1 + 1136);
      v115 = *(v1 + 1104);
      (*(v1 + 1184))(v113, *(v1 + 1152), *(v1 + 1168));
      *(v113 + *(v115 + 48)) = v146;
      sub_1000D2A70(v113, v114, &qword_10169C9C8, &qword_101398A58);
      v116 = *(v114 + *(v115 + 48));
      v117 = swift_task_alloc();
      *(v1 + 1456) = v117;
      *v117 = v1;
      v117[1] = sub_1002A41A0;
      v118 = *(v1 + 1136);
      v119 = *(v1 + 1064);
      v120 = *(v1 + 1056);
      v121 = *(v1 + 752);

      return sub_1002AB558(v119, v120, v118, v116);
    }

    v145 = (v1 + 648);
    v57 = *(v1 + 1392);
    v58 = *(v1 + 936);
    *(v1 + 640) = _swiftEmptyArrayStorage;
    v147 = (v1 + 640);
    sub_101123B10(v56);
    v59 = 0;
    v150 = v56;
    v153 = v57 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    while (1)
    {
      if (v59 >= *(*(v1 + 1392) + 16))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v60 = *(v1 + 976);
      sub_1002DB760(v153 + *(*(v1 + 936) + 72) * v59, v60, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v61 = *v60;
      v0 = v60[1];
      v62 = v0 >> 62;
      if ((v0 >> 62) > 1)
      {
        if (v62 != 2)
        {
          v64 = 0;
          v6 = 0;
          v65 = 0;
          v63 = 0;
          goto LABEL_24;
        }

        v6 = *(v61 + 16);
        v64 = *(v61 + 24);
      }

      else
      {
        if (!v62)
        {
          v6 = 0;
          v63 = 0;
          v64 = BYTE6(v0);
          v65 = BYTE6(v0);
          goto LABEL_24;
        }

        v6 = v61;
        v64 = v61 >> 32;
      }

      sub_100017D5C(v61, v0);
      if (v64 < v6)
      {
        goto LABEL_111;
      }

      if (v62 == 2)
      {
        v63 = *(v61 + 16);
        v65 = *(v61 + 24);
      }

      else
      {
        v63 = v61;
        v65 = v61 >> 32;
      }

LABEL_24:
      if (v65 < v64 || v64 < v63)
      {
        goto LABEL_112;
      }

      if (__OFSUB__(v64, v6))
      {
        goto LABEL_113;
      }

      if ((v64 - v6) < 0x39)
      {
        if (v62 <= 1)
        {
          if (!v62)
          {
            goto LABEL_51;
          }

          v66 = v61 >> 32;
LABEL_47:
          v69 = v61;
          goto LABEL_50;
        }

        if (v62 != 2)
        {
          goto LABEL_51;
        }

        v66 = *(v61 + 24);
LABEL_49:
        v69 = *(v61 + 16);
        goto LABEL_50;
      }

      v66 = v6 + 57;
      if (__OFADD__(v6, 57))
      {
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v62 > 1)
      {
        if (v62 == 2)
        {
          v67 = *(v61 + 16);
          v68 = *(v61 + 24);
        }

        else
        {
          v68 = 0;
          v67 = 0;
        }
      }

      else if (v62)
      {
        v67 = v61;
        v68 = v61 >> 32;
      }

      else
      {
        v67 = 0;
        v68 = BYTE6(v0);
      }

      if (v68 < v66 || v66 < v67)
      {
        goto LABEL_117;
      }

      v69 = 0;
      if (v62 <= 1)
      {
        if (!v62)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      if (v62 != 3)
      {
        goto LABEL_49;
      }

LABEL_50:
      if (v66 < v69)
      {
        goto LABEL_114;
      }

LABEL_51:
      v70 = Data._Representation.subscript.getter();
      v72 = v71;
      sub_100016590(v61, v0);
      v73 = v72 >> 62;
      if ((v72 >> 62) > 1)
      {
        if (v73 != 2)
        {
          goto LABEL_89;
        }

        v76 = *(v70 + 16);
        v75 = *(v70 + 24);
        v77 = __OFSUB__(v75, v76);
        v74 = v75 - v76;
        if (v77)
        {
          goto LABEL_120;
        }
      }

      else if (v73)
      {
        LODWORD(v74) = HIDWORD(v70) - v70;
        if (__OFSUB__(HIDWORD(v70), v70))
        {
          goto LABEL_119;
        }

        v74 = v74;
      }

      else
      {
        v74 = BYTE6(v72);
      }

      if (v74 != 57)
      {
LABEL_89:
        sub_100016590(v70, v72);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      sub_100A7A194(v70, v72);
      v156 = v59;
      *(v1 + 672) = 57;
      v78 = type metadata accessor for __DataStorage();
      v79 = *(v78 + 48);
      v80 = *(v78 + 52);
      swift_allocObject();
      v81 = __DataStorage.init(length:)();
      *(v1 + 472) = 0x3900000000;
      *(v1 + 480) = v81 | 0x4000000000000000;
      v82 = sub_100A7AF80((v1 + 472));
      if (v82)
      {
        static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v122 = *(v1 + 832);
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_101385D80;
        *(v123 + 56) = &type metadata for Int32;
        *(v123 + 64) = &protocol witness table for Int32;
        *(v123 + 32) = v82;
        os_log(_:dso:log:_:_:)();

        CryptoError.init(rawValue:)();
        v124 = type metadata accessor for CryptoError();
        sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
        v0 = swift_allocError();
        v126 = v125;
        v127 = *(v124 - 8);
        v128 = *(v127 + 48);
        v129 = v128(v122, 1, v124);
        v130 = *(v1 + 832);
        if (v129 == 1)
        {
          (*(v127 + 104))(v126, enum case for CryptoError.unspecifiedError(_:), v124);
          if (v128(v130, 1, v124) != 1)
          {
            sub_10000B3A8(*(v1 + 832), &qword_10169C9A0, &unk_1013D5A40);
          }
        }

        else
        {
          (*(v127 + 32))(v126, *(v1 + 832), v124);
        }

        swift_willThrow();
        sub_100016590(*(v1 + 472), *(v1 + 480));
        static os_log_type_t.error.getter();
        if (qword_101694BE0 == -1)
        {
          goto LABEL_101;
        }

        goto LABEL_123;
      }

      v83 = *(v1 + 472);
      v0 = *(v1 + 480);
      v84 = *(v1 + 672);
      sub_100017D5C(v83, v0);
      sub_10002EA98(v84, v83, v0, (v1 + 456));
      sub_100016590(v83, v0);
      v86 = *(v1 + 456);
      v85 = *(v1 + 464);
      CCECCryptorRelease();
      v87 = v85 >> 62;
      if ((v85 >> 62) > 1)
      {
        if (v87 != 2)
        {
          v131 = 0;
          goto LABEL_107;
        }

        v90 = *(v86 + 16);
        v89 = *(v86 + 24);
        v77 = __OFSUB__(v89, v90);
        v88 = v89 - v90;
        if (v77)
        {
          goto LABEL_121;
        }
      }

      else if (v87)
      {
        LODWORD(v88) = HIDWORD(v86) - v86;
        if (__OFSUB__(HIDWORD(v86), v86))
        {
          goto LABEL_122;
        }

        v88 = v88;
      }

      else
      {
        v88 = BYTE6(v85);
      }

      if (v88 != 28)
      {
        if (v87 == 2)
        {
          v139 = *(v86 + 16);
          v138 = *(v86 + 24);
          v131 = v138 - v139;
          if (__OFSUB__(v138, v139))
          {
            __break(1u);
            goto LABEL_106;
          }
        }

        else
        {
          if (v87 == 1)
          {
            if (__OFSUB__(HIDWORD(v86), v86))
            {
              __break(1u);
            }

            v131 = HIDWORD(v86) - v86;
            goto LABEL_107;
          }

LABEL_106:
          v131 = BYTE6(v85);
        }

LABEL_107:
        sub_100018350();
        v136 = swift_allocError();
        *v140 = 28;
        *(v140 + 8) = v131;
        *(v140 + 16) = 0;
        swift_willThrow();
        sub_100016590(v86, v85);
        goto LABEL_108;
      }

      v91 = *(v1 + 1776);
      v92 = *(v1 + 976);
      v93 = *(v1 + 808);
      v94 = *(v1 + 800);
      v95 = *(v1 + 792);
      sub_100016590(v70, v72);
      (*(v94 + 104))(v93, v91, v95);
      v96 = Data.hash(algorithm:)();
      v98 = v97;
      sub_100016590(v86, v85);
      (*(v94 + 8))(v93, v95);
      sub_1002DBBF0(v92, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
      v6 = *(v1 + 640);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1011247A4(0, *(v6 + 16) + 1, 1);
        v6 = *v147;
      }

      v100 = *(v6 + 16);
      v99 = *(v6 + 24);
      if (v100 >= v99 >> 1)
      {
        sub_1011247A4((v99 > 1), v100 + 1, 1);
        v6 = *v147;
      }

      v59 = v156 + 1;
      *(v6 + 16) = v100 + 1;
      v101 = (v6 + 16 * v100);
      v101[4] = v96;
      v101[5] = v98;
      if (v150 == v156 + 1)
      {
        goto LABEL_86;
      }
    }
  }

  sub_1002DBBF0(*(v1 + 920), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v3, &unk_101698C30, &unk_101392630);
  v4 = *(v1 + 1416) + 1;
  if (v4 == *(v1 + 1312))
  {
    v5 = *(v1 + 1408);
    v6 = *(v1 + 1424);
    v7 = *(v1 + 1304);

    sub_10039845C(*(v1 + 1392));
LABEL_80:
    v102 = *(v1 + 1200);
    v103 = *(v1 + 1216) + 1;
    sub_100007BAC((v1 + 144));
    if (v103 == v102)
    {
      *(v1 + 1520) = v6;
      *(v1 + 1512) = 0;
      v49 = *(v1 + 1232);
      v104 = *(v1 + 1096);
      sub_10001F280(*(v1 + 744) + 32, v1 + 224);
      v105 = *(v1 + 248);
      v106 = *(v1 + 256);
      sub_1000035D0((v1 + 224), v105);
      (*(*(*(v106 + 8) + 8) + 32))(v105);
      v53 = sub_1002A571C;
    }

    else
    {
      v107 = *(v1 + 1216);
      *(v1 + 1224) = v6;
      *(v1 + 1216) = v107 + 1;
      *(v1 + 1208) = v5;
      v108 = *(v1 + 1096);
      v109 = *(v1 + 752);
      sub_10001F280(*(v1 + 744) + 40 * v107 + 72, v1 + 144);
      v49 = *(v109 + 136);
      *(v1 + 1232) = v49;
      v110 = *(v1 + 168);
      v111 = *(v1 + 176);
      sub_1000035D0((v1 + 144), v110);
      (*(*(*(v111 + 8) + 8) + 32))(v110);
      v53 = sub_1002A174C;
    }

LABEL_83:

    return _swift_task_switch(v53, v49, 0);
  }

  *(v1 + 1416) = v4;
  v48 = *(v1 + 1304);
  if (v4 < *(v48 + 16))
  {
    v49 = *(v1 + 1232);
    v50 = *(v1 + 1096);
    sub_1002DB760(v48 + ((*(v1 + 1784) + 32) & ~*(v1 + 1784)) + *(*(v1 + 912) + 72) * v4, *(v1 + 920), type metadata accessor for MemberSharingCircle);
    v51 = *(v1 + 168);
    v52 = *(v1 + 176);
    sub_1000035D0((v1 + 144), v51);
    (*(*(*(v52 + 8) + 8) + 32))(v51);
    v53 = sub_1002A2CE4;
    goto LABEL_83;
  }

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
  swift_once();
LABEL_101:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_101385D80;
  *v145 = v0;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v133 = String.init<A>(describing:)();
  v135 = v134;
  *(v132 + 56) = &type metadata for String;
  *(v132 + 64) = sub_100008C00();
  *(v132 + 32) = v133;
  *(v132 + 40) = v135;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v136 = swift_allocError();
  *v137 = 0;
  swift_willThrow();

LABEL_108:
  v157[0] = 0;
  v157[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  *(v1 + 488) = 0;
  *(v1 + 496) = 0xE000000000000000;
  v141._countAndFlagsBits = 0xD000000000000021;
  v141._object = 0x800000010134CB30;
  String.append(_:)(v141);
  *(v1 + 664) = v136;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v142 = *(v1 + 488);
  v143 = *(v1 + 496);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002A41A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1456);
  v13 = *v2;
  v3[183] = a1;
  v3[184] = v1;

  if (v1)
  {
    v5 = v3[94];
    v6 = sub_1002A47E8;
  }

  else
  {
    v7 = v3[147];
    v8 = v3[146];
    v9 = v3[142];
    v10 = v3[94];
    v11 = *(v7 + 8);
    v3[185] = v11;
    v3[186] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v9, v8);
    v6 = sub_1002A433C;
    v5 = v10;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002A433C()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1464);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1000);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A818);
  v3(v5, v4, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1464);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1048);
  v15 = *(v0 + 1000);
  if (v10)
  {
    v52 = v9;
    log = v8;
    v16 = swift_slowAlloc();
    *(v0 + 696) = swift_slowAlloc();
    *v16 = 134218755;
    *(v16 + 4) = *(v11 + 16);

    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_1000136BC(v17, v19, (v0 + 696));

    *(v16 + 24) = v20;
    buf = v16;
    *(v16 + 32) = 2082;
    v21 = *(v11 + 16);
    if (v21)
    {
      v22 = *(v0 + 1464);
      *(v0 + 704) = _swiftEmptyArrayStorage;
      sub_101123BB8(0, v21, 0);
      v23 = *(v0 + 704);
      v24 = (v22 + 64);
      do
      {
        v25 = *(v24 - 3);
        v26 = *(v24 - 1);
        v54 = *(v24 - 2);
        v27 = *v24;
        *(v0 + 720) = *(v24 - 4);
        sub_100017D5C(v26, v27);
        *(v0 + 440) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 448) = v28;
        v29._countAndFlagsBits = 8250;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);
        *(v0 + 728) = v25;
        v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v30);

        v31._countAndFlagsBits = 45;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
        *(v0 + 544) = v54;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        sub_100016590(v26, v27);
        v33 = *(v0 + 440);
        v34 = *(v0 + 448);
        *(v0 + 704) = v23;
        v36 = *(v23 + 16);
        v35 = *(v23 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_101123BB8((v35 > 1), v36 + 1, 1);
          v23 = *(v0 + 704);
        }

        v24 += 5;
        *(v23 + 16) = v36 + 1;
        v37 = v23 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v34;
        --v21;
      }

      while (v21);
    }

    v39 = Array.description.getter();
    v41 = v40;

    v42 = sub_1000136BC(v39, v41, (v0 + 696));

    *(buf + 34) = v42;
    _os_log_impl(&_mh_execute_header, log, v52, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v38 = *(v0 + 1464);

    v13(v14, v15);
  }

  v43 = swift_task_alloc();
  *(v0 + 1496) = v43;
  *v43 = v0;
  v43[1] = sub_1002A4CF4;
  v44 = *(v0 + 1464);
  v45 = *(v0 + 1448);
  v46 = *(v0 + 1056);
  v47 = *(v0 + 856);
  v48 = *(v0 + 752);
  v49 = *(v0 + 1826);

  return sub_10029E154(v47, v44, v46, v49, v45);
}

uint64_t sub_1002A47E8()
{
  v55 = v0;
  v1 = v0[147];
  v2 = v0[146];
  v3 = v0[142];
  sub_10000B3A8(v0[143], &qword_10169C9C8, &qword_101398A58);
  v51 = *(v1 + 8);
  v51(v3, v2);
  v53 = v0[184];
  v4 = v0[181];
  v5 = v0[174];
  v6 = v0[163];
  v7 = v0[162];
  v8 = v0[161];
  v9 = v0[147];
  v47 = v0[144];
  v49 = v0[146];
  v10 = v0[133];
  v11 = v0[132];
  v12 = v0[125];
  v46 = v0[115];
  v13 = v0[112];

  v8(v11, v12);
  v8(v10, v12);

  sub_1002DBBF0(v13, type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v46, type metadata accessor for MemberSharingCircle);
  v51(v47, v49);
  v14 = v0[178];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v48 = v0[161];
    v50 = v0[162];
    v18 = v0[137];
    v19 = v0[125];
    v52 = v14;
    v20 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v21 = v0[26];
    v22 = v0[27];
    sub_1000035D0(v0 + 23, v21);
    (*(*(*(v22 + 8) + 8) + 32))(v21);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v48(v18, v19);
    sub_100007BAC(v0 + 23);
    v26 = sub_1000136BC(v23, v25, &v54);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    swift_getErrorValue();
    v28 = v0[47];
    v27 = v0[48];
    v29 = v0[49];
    v30 = Error.localizedDescription.getter();
    v32 = sub_1000136BC(v30, v31, &v54);

    *(v20 + 24) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v20, 0x20u);
    swift_arrayDestroy();

    v14 = v52;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v33 = v0[150];
  v34 = v0[152] + 1;
  sub_100007BAC(v0 + 18);
  if (v34 == v33)
  {
    v0[190] = v14;
    v0[189] = 0;
    v35 = v0[154];
    v36 = v0[137];
    sub_10001F280(v0[93] + 32, (v0 + 28));
    v37 = v0[31];
    v38 = v0[32];
    sub_1000035D0(v0 + 28, v37);
    (*(*(*(v38 + 8) + 8) + 32))(v37);
    v39 = sub_1002A571C;
  }

  else
  {
    v40 = v0[152];
    v0[153] = v14;
    v0[152] = v40 + 1;
    v0[151] = 0;
    v41 = v0[137];
    v42 = v0[94];
    sub_10001F280(v0[93] + 40 * v40 + 72, (v0 + 18));
    v35 = *(v42 + 136);
    v0[154] = v35;
    v43 = v0[21];
    v44 = v0[22];
    sub_1000035D0(v0 + 18, v43);
    (*(*(*(v44 + 8) + 8) + 32))(v43);
    v39 = sub_1002A174C;
  }

  return _swift_task_switch(v39, v35, 0);
}

uint64_t sub_1002A4CF4()
{
  v2 = *v1;
  v3 = *(*v1 + 1496);
  v4 = *v1;
  *(*v1 + 1504) = v0;

  v5 = *(v2 + 1464);
  v6 = *(v2 + 752);

  if (v0)
  {
    v7 = sub_1002A5234;
  }

  else
  {
    v7 = sub_1002A4E68;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1002A4E68()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1448);
  v37 = *(v0 + 1424);
  v38 = *(v0 + 1488);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1168);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1064);
  v8 = *(v0 + 1056);
  v9 = *(v0 + 1000);
  sub_10000B3A8(*(v0 + 1144), &qword_10169C9C8, &qword_101398A58);

  v4(v8, v9);
  v4(v7, v9);
  v1(v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 1424);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100A5C854(0, v11[2] + 1, 1, *(v0 + 1424));
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100A5C854(v12 > 1, v13 + 1, 1, v11);
  }

  v14 = *(v0 + 920);
  v15 = *(v0 + 856);
  v16 = *(v0 + 840);
  sub_1002DBBF0(*(v0 + 896), type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v14, type metadata accessor for MemberSharingCircle);
  v11[2] = v13 + 1;
  sub_1002DB7C8(v15, v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, type metadata accessor for KeyDropFetchItem);
  v17 = *(v0 + 1504);
  v18 = *(v0 + 1416) + 1;
  if (v18 == *(v0 + 1312))
  {
    v19 = *(v0 + 1304);

    sub_10039845C(*(v0 + 1392));
    v20 = *(v0 + 1200);
    v21 = *(v0 + 1216) + 1;
    sub_100007BAC((v0 + 144));
    if (v21 == v20)
    {
      *(v0 + 1520) = v11;
      *(v0 + 1512) = 0;
      v22 = *(v0 + 1232);
      v23 = *(v0 + 1096);
      sub_10001F280(*(v0 + 744) + 32, v0 + 224);
      v24 = *(v0 + 248);
      v25 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v24);
      (*(*(*(v25 + 8) + 8) + 32))(v24);
      v26 = sub_1002A571C;
    }

    else
    {
      v31 = *(v0 + 1216);
      *(v0 + 1224) = v11;
      *(v0 + 1216) = v31 + 1;
      *(v0 + 1208) = v17;
      v32 = *(v0 + 1096);
      v33 = *(v0 + 752);
      sub_10001F280(*(v0 + 744) + 40 * v31 + 72, v0 + 144);
      v22 = *(v33 + 136);
      *(v0 + 1232) = v22;
      v34 = *(v0 + 168);
      v35 = *(v0 + 176);
      sub_1000035D0((v0 + 144), v34);
      (*(*(*(v35 + 8) + 8) + 32))(v34);
      v26 = sub_1002A174C;
    }
  }

  else
  {
    *(v0 + 1424) = v11;
    *(v0 + 1416) = v18;
    *(v0 + 1408) = v17;
    v27 = *(v0 + 1304);
    if (v18 >= *(v27 + 16))
    {
      __break(1u);
    }

    v22 = *(v0 + 1232);
    v28 = *(v0 + 1096);
    sub_1002DB760(v27 + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)) + *(*(v0 + 912) + 72) * v18, *(v0 + 920), type metadata accessor for MemberSharingCircle);
    v29 = *(v0 + 168);
    v30 = *(v0 + 176);
    sub_1000035D0((v0 + 144), v29);
    (*(*(*(v30 + 8) + 8) + 32))(v29);
    v26 = sub_1002A2CE4;
  }

  return _swift_task_switch(v26, v22, 0);
}

uint64_t sub_1002A5234()
{
  v52 = v0;
  sub_10000B3A8(v0[143], &qword_10169C9C8, &qword_101398A58);
  v48 = v0[185];
  v50 = v0[188];
  v1 = v0[181];
  v2 = v0[174];
  v3 = v0[163];
  v4 = v0[162];
  v5 = v0[161];
  v6 = v0[147];
  v44 = v0[144];
  v46 = v0[146];
  v7 = v0[133];
  v8 = v0[132];
  v9 = v0[125];
  v43 = v0[115];
  v10 = v0[112];

  v5(v8, v9);
  v5(v7, v9);

  sub_1002DBBF0(v10, type metadata accessor for SharedBeaconRecord);
  sub_1002DBBF0(v43, type metadata accessor for MemberSharingCircle);
  v48(v44, v46);
  v11 = v0[178];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177A818);
  sub_10001F280((v0 + 18), (v0 + 23));
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v45 = v0[161];
    v47 = v0[162];
    v15 = v0[137];
    v16 = v0[125];
    v49 = v11;
    v17 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v18 = v0[26];
    v19 = v0[27];
    sub_1000035D0(v0 + 23, v18);
    (*(*(*(v19 + 8) + 8) + 32))(v18);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v45(v15, v16);
    sub_100007BAC(v0 + 23);
    v23 = sub_1000136BC(v20, v22, &v51);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    swift_getErrorValue();
    v25 = v0[47];
    v24 = v0[48];
    v26 = v0[49];
    v27 = Error.localizedDescription.getter();
    v29 = sub_1000136BC(v27, v28, &v51);

    *(v17 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v13, v14, "Could not create fetch item for shared beacon %{private,mask.hash}s, error: %s.", v17, 0x20u);
    swift_arrayDestroy();

    v11 = v49;
  }

  else
  {

    sub_100007BAC(v0 + 23);
  }

  v30 = v0[150];
  v31 = v0[152] + 1;
  sub_100007BAC(v0 + 18);
  if (v31 == v30)
  {
    v0[190] = v11;
    v0[189] = 0;
    v32 = v0[154];
    v33 = v0[137];
    sub_10001F280(v0[93] + 32, (v0 + 28));
    v34 = v0[31];
    v35 = v0[32];
    sub_1000035D0(v0 + 28, v34);
    (*(*(*(v35 + 8) + 8) + 32))(v34);
    v36 = sub_1002A571C;
  }

  else
  {
    v37 = v0[152];
    v0[153] = v11;
    v0[152] = v37 + 1;
    v0[151] = 0;
    v38 = v0[137];
    v39 = v0[94];
    sub_10001F280(v0[93] + 40 * v37 + 72, (v0 + 18));
    v32 = *(v39 + 136);
    v0[154] = v32;
    v40 = v0[21];
    v41 = v0[22];
    sub_1000035D0(v0 + 18, v40);
    (*(*(*(v41 + 8) + 8) + 32))(v40);
    v36 = sub_1002A174C;
  }

  return _swift_task_switch(v36, v32, 0);
}

uint64_t sub_1002A571C()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1000);
  v7 = (*(v0 + 1780) + 24) & ~*(v0 + 1780);
  v8 = (v7 + *(v0 + 1016) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 1240))(v5, *(v0 + 1096), v6);
  v9 = swift_allocObject();
  *(v0 + 1528) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v7, v5, v6);
  *(v9 + v8) = 0;
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 1536) = v11;
  v12 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v11 = v0;
  v11[1] = sub_1002A58D0;

  return unsafeBlocking<A>(context:_:)(v0 + 656, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v9, v12);
}

uint64_t sub_1002A58D0()
{
  v1 = *(*v0 + 1536);
  v2 = *(*v0 + 1528);
  v3 = *(*v0 + 1232);
  v5 = *v0;

  return _swift_task_switch(sub_1002A5A30, v3, 0);
}

uint64_t sub_1002A5A30()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1232);
  (*(v0 + 1288))(*(v0 + 1096), *(v0 + 1000));
  *(v0 + 1544) = *(v0 + 656);

  return _swift_task_switch(sub_1002A5ADC, v2, 0);
}

uint64_t sub_1002A5ADC()
{
  v1 = *(v0 + 1232);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 1552) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_1002A5BE8;
  v5 = *(v0 + 1232);

  return unsafeBlocking<A>(context:_:)(v0 + 632, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v5, v4);
}

uint64_t sub_1002A5BE8()
{
  v1 = *(*v0 + 1552);
  v2 = *(*v0 + 1232);
  v4 = *v0;

  return _swift_task_switch(sub_1002A5D2C, v2, 0);
}

uint64_t sub_1002A5D2C()
{
  v1 = v0[94];
  v0[195] = v0[79];

  return _swift_task_switch(sub_1002A5DC0, v1, 0);
}

uint64_t sub_1002A5DC0()
{
  v1 = *(v0 + 1544);
  v2 = *(v1 + 16);
  *(v0 + 1568) = v2;
  if (v2)
  {
    *(v0 + 1584) = 0;
    *(v0 + 1576) = _swiftEmptyArrayStorage;
    if (!*(v1 + 16))
    {
      __break(1u);
    }

    v3 = *(v0 + 1560);
    v4 = *(*(v0 + 768) + 80);
    sub_1002DB760(v1 + ((v4 + 32) & ~v4), *(v0 + 784), type metadata accessor for OwnerSharingCircle);
    sub_10001F280(v0 + 224, v0 + 264);
    v5 = swift_allocObject();
    *(v0 + 1592) = v5;
    *(v5 + 16) = v3;
    sub_10000A748((v0 + 264), v5 + 24);
    v6 = async function pointer to unsafeBlocking<A>(_:)[1];

    v7 = swift_task_alloc();
    *(v0 + 1600) = v7;
    v8 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    *v7 = v0;
    v7[1] = sub_1002A62D8;

    return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DB9B8, v5, v8);
  }

  else
  {

    v9 = *(v0 + 1520);
    v10 = *(v0 + 1560);
    sub_10039845C(_swiftEmptyArrayStorage);

    v11 = *(v0 + 1200);
    v12 = *(v0 + 1512) + 1;
    sub_100007BAC((v0 + 224));
    if (v12 == v11)
    {
      v28 = *(v0 + 712);
      v29 = v9;
      v13 = *(v0 + 1152);
      v14 = *(v0 + 1144);
      v15 = *(v0 + 1136);
      v16 = *(v0 + 1128);
      v17 = *(v0 + 1120);
      v18 = *(v0 + 1112);
      v19 = *(v0 + 1096);
      v20 = *(v0 + 1088);
      v30 = *(v0 + 1080);
      v31 = *(v0 + 1072);
      v32 = *(v0 + 1064);
      v33 = *(v0 + 1056);
      v34 = *(v0 + 1048);
      v35 = *(v0 + 1040);
      v36 = *(v0 + 1032);
      v37 = *(v0 + 1024);
      v38 = *(v0 + 992);
      v39 = *(v0 + 984);
      v40 = *(v0 + 976);
      v41 = *(v0 + 968);
      v42 = *(v0 + 960);
      v43 = *(v0 + 952);
      v44 = *(v0 + 944);
      v45 = *(v0 + 920);
      v46 = *(v0 + 896);
      v47 = *(v0 + 872);
      v48 = *(v0 + 856);
      v49 = *(v0 + 848);
      v50 = *(v0 + 832);
      v51 = *(v0 + 824);
      v52 = *(v0 + 816);
      v53 = *(v0 + 808);
      v54 = *(v0 + 784);
      v55 = *(v0 + 776);
      sub_10000B3A8(*(v0 + 1160), &qword_10169C9C8, &qword_101398A58);

      v21 = *(v0 + 8);

      return v21(v29, v28);
    }

    else
    {
      v22 = *(v0 + 1512);
      *(v0 + 1520) = v9;
      *(v0 + 1512) = v22 + 1;
      v23 = *(v0 + 1232);
      v24 = *(v0 + 1096);
      sub_10001F280(*(v0 + 744) + 40 * v22 + 72, v0 + 224);
      v25 = *(v0 + 248);
      v26 = *(v0 + 256);
      sub_1000035D0((v0 + 224), v25);
      (*(*(*(v26 + 8) + 8) + 32))(v25);

      return _swift_task_switch(sub_1002A571C, v23, 0);
    }
  }
}

uint64_t sub_1002A62D8()
{
  v2 = *v1;
  v3 = *(*v1 + 1600);
  v4 = *v1;
  v2[201] = v0;

  v5 = v2[199];
  if (v0)
  {
    v6 = v2[197];
    v7 = v2[193];
    v8 = v2[94];

    v9 = sub_1002AAF3C;
  }

  else
  {
    v8 = v2[94];

    v9 = sub_1002A6464;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1002A6464()
{
  v24 = *(v0 + 1576);
  v1 = *(v0 + 968);
  v2 = *(v0 + 928);
  sub_100016590(*(v0 + 344), *(v0 + 352));
  v3 = *(v0 + 360);
  v4 = *(v0 + 368);
  *(v0 + 1616) = v3;
  *(v0 + 1624) = v4;
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  sub_1000035D0((v0 + 224), v5);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v7 + 32);
  v9 = *(v2 + 20);
  sub_100017D5C(v3, v4);
  v8(v5, v7);
  *v1 = v3;
  v1[1] = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 1576);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100A5C82C(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100A5C82C(v12 > 1, v13 + 1, 1, v11);
  }

  *(v0 + 1632) = v11;
  v14 = *(v0 + 968);
  v15 = *(v0 + 936);
  v16 = *(v0 + 784);
  v17 = *(v0 + 760);
  v18 = *(v0 + 752);
  v11[2] = v13 + 1;
  v19 = *(v15 + 80);
  *(v0 + 1788) = v19;
  v20 = *(v15 + 72);
  *(v0 + 1640) = v20;
  sub_1002DB7C8(v14, v11 + ((v19 + 32) & ~v19) + v20 * v13, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  *(v0 + 1648) = *(v18 + 128);
  v21 = *(v17 + 20);
  *(v0 + 1792) = *(v17 + 24);
  v22 = swift_task_alloc();
  *(v0 + 1656) = v22;
  *v22 = v0;
  v22[1] = sub_1002A6680;

  return sub_100C7BA0C(v0 + 80, v16 + v21);
}

uint64_t sub_1002A6680()
{
  v2 = *v1;
  v3 = *(*v1 + 1656);
  v10 = *v1;
  *(*v1 + 1664) = v0;

  if (v0)
  {
    v4 = v2[204];

    v5 = v2[193];
    v2[210] = v0;
    v6 = v2[94];

    v7 = sub_1002A7D44;
    v8 = v6;
  }

  else
  {
    v8 = v2[206];
    v7 = sub_1002A6800;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1002A6800()
{
  v1 = *(v0 + 128);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 1544);

    sub_1001BAEE0();
    v3 = swift_allocError();
    *v4 = 12;
    swift_willThrow();
    sub_1001BAF34(v0 + 80);
    v5 = *(v0 + 1632);
    *(v0 + 1680) = v3;
    v6 = *(v0 + 752);

    v7 = sub_1002A7D44;
    v8 = v6;
  }

  else
  {
    v9 = *(v0 + 1792);
    v10 = *(v0 + 1248);
    v11 = *(v0 + 1240);
    v12 = *(v0 + 1000);
    v13 = *(v0 + 960);
    v14 = *(v0 + 928);
    v15 = *(v0 + 784);
    v18 = *(v0 + 752);
    v16 = *(v0 + 120);
    sub_100017D5C(v16, v1);
    sub_1001BAF34(v0 + 80);
    v11(v13 + *(v14 + 20), v15 + v9, v12);
    *v13 = v16;
    v13[1] = v1;
    v7 = sub_1002A6990;
    v8 = v18;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1002A6990()
{
  v1 = *(v0 + 1632);
  sub_1002DB760(*(v0 + 960), *(v0 + 952), type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v3 + 1;
  v5 = *(v0 + 1632);
  v140 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    goto LABEL_160;
  }

LABEL_2:
  *(v0 + 1672) = v5;
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1568);
  v8 = *(v0 + 960);
  v9 = *(v0 + 952);
  v10 = *(v0 + 784);
  v11 = (*(v0 + 1788) + 32) & ~*(v0 + 1788);
  v12 = *(v0 + 1584) + 1;
  sub_100016590(*(v0 + 1616), *(v0 + 1624));
  sub_1002DBBF0(v8, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  sub_1002DBBF0(v10, type metadata accessor for OwnerSharingCircle);
  *(v5 + 16) = v140;
  sub_1002DB7C8(v9, v5 + v11 + v6 * v3, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
  if (v12 != v7)
  {
    v82 = *(v0 + 1584) + 1;
    *(v0 + 1584) = v82;
    *(v0 + 1576) = v5;
    v83 = *(v0 + 1544);
    if (v82 < *(v83 + 16))
    {
      v84 = *(v0 + 1560);
      sub_1002DB760(v83 + ((*(*(v0 + 768) + 80) + 32) & ~*(*(v0 + 768) + 80)) + *(*(v0 + 768) + 72) * v82, *(v0 + 784), type metadata accessor for OwnerSharingCircle);
      sub_10001F280(v0 + 224, v0 + 264);
      v85 = swift_allocObject();
      *(v0 + 1592) = v85;
      *(v85 + 16) = v84;
      sub_10000A748((v0 + 264), v85 + 24);
      v86 = async function pointer to unsafeBlocking<A>(_:)[1];

      v87 = swift_task_alloc();
      *(v0 + 1600) = v87;
      v88 = sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
      *v87 = v0;
      v87[1] = sub_1002A62D8;

      return unsafeBlocking<A>(_:)(v0 + 344, sub_1002DB9B8, v85, v88);
    }

    goto LABEL_167;
  }

  v13 = *(v0 + 1544);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v17 = v16[6];
  *(v0 + 1796) = v17;
  v18 = v16[5];
  *(v0 + 1800) = v18;
  v8 = v16[7];
  *(v0 + 1804) = v8;
  v19 = *(v15 + 80);
  *(v0 + 1808) = v19;
  *(v0 + 1688) = *(v5 + 16);
  v140 = *(v0 + 1664);
  *(v0 + 1704) = *(v0 + 1520);
  *(v0 + 1696) = 0;
  if (!*(v13 + 16))
  {
    goto LABEL_166;
  }

  v20 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v21 = *(v0 + 1040);
  v22 = *(v0 + 1032);
  v23 = *(v0 + 1000);
  sub_1002DB760(v13 + ((v19 + 32) & ~v19), v14, type metadata accessor for OwnerSharingCircle);
  (v3)(v21, v14 + v17, v23);
  (v3)(v22, v14 + v18, v23);
  LOBYTE(v21) = *(v14 + v8);
  sub_1002DBBF0(v14, type metadata accessor for OwnerSharingCircle);
  *(v0 + 1827) = 0x4000201u >> (8 * v21);
  v24 = *(v0 + 1688);
  v25 = *(v0 + 1128);
  v26 = *(v0 + 1104);
  sub_1000D2A70(*(v0 + 1160), v25, &qword_10169C9C8, &qword_101398A58);
  v137 = *(v25 + *(v26 + 48));
  v27 = _swiftEmptyArrayStorage;
  if (!v24)
  {
LABEL_118:
    *(v0 + 1712) = v27;
    v89 = *(v0 + 1192);
    v90 = *(v0 + 1120);
    v91 = *(v0 + 1112);
    v92 = *(v0 + 1104);
    (*(v0 + 1184))(v90, *(v0 + 1128), *(v0 + 1168));
    *(v90 + *(v92 + 48)) = v137;
    sub_1000D2A70(v90, v91, &qword_10169C9C8, &qword_101398A58);
    v93 = *(v91 + *(v92 + 48));
    v94 = swift_task_alloc();
    *(v0 + 1720) = v94;
    *v94 = v0;
    v94[1] = sub_1002A8370;
    v95 = *(v0 + 1112);
    v96 = *(v0 + 1040);
    v97 = *(v0 + 1032);
    v98 = *(v0 + 752);

    return sub_1002AB558(v96, v97, v95, v93);
  }

  v28 = (v0 + 568);
  v5 = v0 + 584;
  v29 = *(v0 + 1688);
  v30 = *(v0 + 1672);
  v31 = *(v0 + 936);
  *(v0 + 584) = _swiftEmptyArrayStorage;
  v136 = (v0 + 560);
  sub_1011247A4(0, v29, 0);
  v32 = 0;
  v27 = *(v0 + 584);
  v138 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v8 = v140;
  while (1)
  {
    v2 = *(*(v0 + 1672) + 16);
    if (v32 >= v2)
    {
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      v5 = sub_100A5C82C(v2 > 1, v4, 1, v5);
      goto LABEL_2;
    }

    v33 = *(v0 + 944);
    v140 = v32;
    sub_1002DB760(v138 + *(*(v0 + 936) + 72) * v32, v33, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v5 = *v33;
    v34 = v33[1];
    v35 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v35 != 2)
      {
        v3 = 0;
        v36 = 0;
        v37 = 0;
        v2 = 0;
        goto LABEL_18;
      }

      v36 = *(v5 + 16);
      v3 = *(v5 + 24);
    }

    else
    {
      if (!v35)
      {
        v36 = 0;
        v2 = 0;
        v3 = BYTE6(v34);
        v37 = BYTE6(v34);
        goto LABEL_18;
      }

      v36 = v5;
      v3 = v5 >> 32;
    }

    sub_100017D5C(v5, v34);
    if (v3 < v36)
    {
      goto LABEL_155;
    }

    if (v35 == 2)
    {
      v2 = *(v5 + 16);
      v37 = *(v5 + 24);
    }

    else
    {
      v2 = v5;
      v37 = v5 >> 32;
    }

LABEL_18:
    if (v37 < v3 || v3 < v2)
    {
      goto LABEL_156;
    }

    v2 = v3 - v36;
    if (__OFSUB__(v3, v36))
    {
      goto LABEL_157;
    }

    if (v2 < 0x39)
    {
      if (v35 <= 1)
      {
        if (!v35)
        {
          goto LABEL_45;
        }

        v4 = v5 >> 32;
LABEL_41:
        v39 = v5;
        goto LABEL_44;
      }

      if (v35 != 2)
      {
        goto LABEL_45;
      }

      v4 = *(v5 + 24);
LABEL_43:
      v39 = *(v5 + 16);
      goto LABEL_44;
    }

    v4 = v36 + 57;
    if (__OFADD__(v36, 57))
    {
      goto LABEL_162;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v2 = *(v5 + 16);
        v38 = *(v5 + 24);
      }

      else
      {
        v38 = 0;
        v2 = 0;
      }
    }

    else if (v35)
    {
      v2 = v5;
      v38 = v5 >> 32;
    }

    else
    {
      v2 = 0;
      v38 = BYTE6(v34);
    }

    if (v38 < v4 || v4 < v2)
    {
      goto LABEL_163;
    }

    v39 = 0;
    if (v35 <= 1)
    {
      if (!v35)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v35 != 3)
    {
      goto LABEL_43;
    }

LABEL_44:
    if (v4 < v39)
    {
      goto LABEL_158;
    }

LABEL_45:
    v40 = Data._Representation.subscript.getter();
    v3 = v41;
    sub_100016590(v5, v34);
    v42 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v42 != 2)
      {
        goto LABEL_121;
      }

      v45 = *(v40 + 16);
      v44 = *(v40 + 24);
      v46 = __OFSUB__(v44, v45);
      v43 = v44 - v45;
      if (v46)
      {
        goto LABEL_168;
      }
    }

    else if (v42)
    {
      LODWORD(v43) = HIDWORD(v40) - v40;
      if (__OFSUB__(HIDWORD(v40), v40))
      {
        goto LABEL_169;
      }

      v43 = v43;
    }

    else
    {
      v43 = BYTE6(v3);
    }

    if (v43 != 57)
    {
LABEL_121:
      sub_100016590(v40, v3);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    *v28 = 0;
    if (v42 == 2)
    {
      v47 = *(v40 + 16);
    }

    else
    {
      if (v42 != 1)
      {
        *(v0 + 1812) = v40;
        *(v0 + 1820) = v3;
        *(v0 + 1822) = BYTE2(v3);
        *(v0 + 1823) = BYTE3(v3);
        *(v0 + 1824) = BYTE4(v3);
        *(v0 + 1825) = BYTE5(v3);
        v48 = CCECCryptorImportKey();
        sub_100016590(v40, v3);
        sub_100016590(v40, v3);
        if (v48)
        {
          goto LABEL_122;
        }

        goto LABEL_64;
      }

      v47 = v40;
      if (v40 > v40 >> 32)
      {
        goto LABEL_170;
      }
    }

    sub_100017D5C(v40, v3);
    sub_100017D5C(v40, v3);
    sub_100017D5C(v40, v3);
    v48 = sub_1002DB9D8(v47, v3 & 0x3FFFFFFFFFFFFFFFLL, 0, v40, v3);
    sub_100016590(v40, v3);
    sub_100016590(v40, v3);
    sub_100016590(v40, v3);
    if (v8)
    {
      goto LABEL_144;
    }

    if (v48)
    {
LABEL_122:
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v99 = *(v0 + 824);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_101385D80;
      *(v100 + 56) = &type metadata for Int32;
      *(v100 + 64) = &protocol witness table for Int32;
      *(v100 + 32) = v48;
      os_log(_:dso:log:_:_:)();

      CryptoError.init(rawValue:)();
      v101 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v102 = swift_allocError();
      v104 = v103;
      v105 = *(v101 - 8);
      v106 = *(v105 + 48);
      v107 = v106(v99, 1, v101);
      v108 = *(v0 + 824);
      if (v107 == 1)
      {
        (*(v105 + 104))(v104, enum case for CryptoError.unspecifiedError(_:), v101);
        if (v106(v108, 1, v101) != 1)
        {
          sub_10000B3A8(*(v0 + 824), &qword_10169C9A0, &unk_1013D5A40);
        }
      }

      else
      {
        (*(v105 + 32))(v104, *(v0 + 824), v101);
      }

      swift_willThrow();
      v8 = v102;
      goto LABEL_144;
    }

LABEL_64:
    if (!*v28)
    {
      static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v109 = type metadata accessor for CryptoError();
      sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
      v110 = swift_allocError();
      (*(*(v109 - 8) + 104))(v111, enum case for CryptoError.unspecifiedError(_:), v109);
      swift_willThrow();
      v8 = v110;
      goto LABEL_144;
    }

    v139 = v27;
    *(v0 + 552) = 57;
    v49 = type metadata accessor for __DataStorage();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    v5 = swift_allocObject();
    v52 = __DataStorage.init(length:)();
    *(v0 + 520) = 0x3900000000;
    *(v0 + 528) = v52 | 0x4000000000000000;
    v53 = sub_100A7AF80((v0 + 520));
    if (v8)
    {
      goto LABEL_143;
    }

    v54 = v53;
    if (v53)
    {
      break;
    }

    v55 = *(v0 + 552);
    if ((v55 & 0x8000000000000000) != 0)
    {
      goto LABEL_159;
    }

    v56 = *(v0 + 520);
    v8 = *(v0 + 528);
    v57 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v57 == 2)
      {
        v58 = *(v56 + 16);
        v59 = *(v56 + 24);
      }

      else
      {
        v59 = 0;
        v58 = 0;
      }
    }

    else if (v57)
    {
      v58 = v56;
      v59 = v56 >> 32;
    }

    else
    {
      v58 = 0;
      v59 = BYTE6(v8);
    }

    v60 = sub_10002F330(v58, v59, *(v0 + 520), *(v0 + 528));
    if (!v55 || v60 >= v55)
    {
      v61 = v58 + v55;
      if (__OFADD__(v58, v55))
      {
        goto LABEL_164;
      }

      if (v57 > 1)
      {
        if (v57 == 2)
        {
          v62 = *(v56 + 16);
          v63 = *(v56 + 24);
        }

        else
        {
          v63 = 0;
          v62 = 0;
        }
      }

      else if (v57)
      {
        v62 = v56;
        v63 = v56 >> 32;
      }

      else
      {
        v62 = 0;
        v63 = BYTE6(v8);
      }

      if (v63 < v61 || v61 < v62)
      {
        goto LABEL_165;
      }

      v64 = 0;
      if (v57 <= 1)
      {
        if (!v57)
        {
LABEL_99:
          if (v61 >= v64)
          {
            goto LABEL_100;
          }

          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          swift_once();
          goto LABEL_145;
        }

LABEL_96:
        v64 = v56;
        goto LABEL_99;
      }

      if (v57 == 3)
      {
        goto LABEL_99;
      }

LABEL_98:
      v64 = *(v56 + 16);
      goto LABEL_99;
    }

    if (v57 <= 1)
    {
      if (!v57)
      {
        goto LABEL_100;
      }

      v61 = v56 >> 32;
      goto LABEL_96;
    }

    if (v57 == 2)
    {
      v61 = *(v56 + 24);
      goto LABEL_98;
    }

LABEL_100:
    v65 = Data._Representation.subscript.getter();
    v67 = v66;
    sub_100016590(v56, v8);
    CCECCryptorRelease();
    v68 = v67 >> 62;
    if ((v67 >> 62) > 1)
    {
      if (v68 != 2)
      {
        v122 = 0;
        goto LABEL_151;
      }

      v71 = *(v65 + 16);
      v70 = *(v65 + 24);
      v46 = __OFSUB__(v70, v71);
      v69 = v70 - v71;
      if (v46)
      {
        goto LABEL_171;
      }
    }

    else if (v68)
    {
      LODWORD(v69) = HIDWORD(v65) - v65;
      if (__OFSUB__(HIDWORD(v65), v65))
      {
        goto LABEL_172;
      }

      v69 = v69;
    }

    else
    {
      v69 = BYTE6(v67);
    }

    if (v69 != 28)
    {
      if (v68 == 2)
      {
        v130 = *(v65 + 16);
        v129 = *(v65 + 24);
        v122 = v129 - v130;
        if (!__OFSUB__(v129, v130))
        {
          goto LABEL_151;
        }

        __break(1u);
      }

      else if (v68 == 1)
      {
        if (__OFSUB__(HIDWORD(v65), v65))
        {
          __break(1u);
        }

        v122 = HIDWORD(v65) - v65;
        goto LABEL_151;
      }

      v122 = BYTE6(v67);
LABEL_151:
      sub_100018350();
      v127 = swift_allocError();
      *v131 = 28;
      *(v131 + 8) = v122;
      *(v131 + 16) = 0;
      swift_willThrow();
      sub_100016590(v65, v67);
      goto LABEL_152;
    }

    v5 = *(v0 + 1776);
    v72 = *(v0 + 944);
    v73 = *(v0 + 808);
    v74 = *(v0 + 800);
    v75 = *(v0 + 792);
    sub_100016590(v40, v3);
    (*(v74 + 104))(v73, v5, v75);
    v3 = Data.hash(algorithm:)();
    v77 = v76;
    sub_100016590(v65, v67);
    (*(v74 + 8))(v73, v75);
    sub_1002DBBF0(v72, type metadata accessor for SharingCircleKeyManager.MemberDeviceDecryptionKey);
    v27 = v139;
    *(v0 + 584) = v139;
    v79 = v139[2];
    v78 = v139[3];
    if (v79 >= v78 >> 1)
    {
      v5 = v0 + 584;
      sub_1011247A4((v78 > 1), v79 + 1, 1);
      v27 = *(v0 + 584);
    }

    v8 = 0;
    v32 = v140 + 1;
    v80 = *(v0 + 1688);
    v27[2] = v79 + 1;
    v81 = &v27[2 * v79];
    v81[4] = v3;
    v81[5] = v77;
    v28 = (v0 + 568);
    if (v140 + 1 == v80)
    {
      goto LABEL_118;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v112 = *(v0 + 816);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_101385D80;
  *(v113 + 56) = &type metadata for Int32;
  *(v113 + 64) = &protocol witness table for Int32;
  *(v113 + 32) = v54;
  os_log(_:dso:log:_:_:)();

  CryptoError.init(rawValue:)();
  v114 = type metadata accessor for CryptoError();
  sub_1002DB700(&qword_10169C9B8, &type metadata accessor for CryptoError);
  v115 = swift_allocError();
  v117 = v116;
  v118 = *(v114 - 8);
  v119 = *(v118 + 48);
  v120 = v119(v112, 1, v114);
  v121 = *(v0 + 816);
  if (v120 == 1)
  {
    (*(v118 + 104))(v117, enum case for CryptoError.unspecifiedError(_:), v114);
    if (v119(v121, 1, v114) != 1)
    {
      sub_10000B3A8(*(v0 + 816), &qword_10169C9A0, &unk_1013D5A40);
    }
  }

  else
  {
    (*(v118 + 32))(v117, *(v0 + 816), v114);
  }

  swift_willThrow();
  v8 = v115;
LABEL_143:
  sub_100016590(*(v0 + 520), *(v0 + 528));
LABEL_144:
  static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    goto LABEL_173;
  }

LABEL_145:
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_101385D80;
  *v136 = v8;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v124 = String.init<A>(describing:)();
  v126 = v125;
  *(v123 + 56) = &type metadata for String;
  *(v123 + 64) = sub_100008C00();
  *(v123 + 32) = v124;
  *(v123 + 40) = v126;
  os_log(_:dso:log:_:_:)();

  sub_1001BAF88();
  v127 = swift_allocError();
  *v128 = 0;
  swift_willThrow();

LABEL_152:
  _StringGuts.grow(_:)(35);
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  v132._countAndFlagsBits = 0xD000000000000021;
  v132._object = 0x800000010134CB30;
  String.append(_:)(v132);
  *(v0 + 736) = v127;
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  _print_unlocked<A, B>(_:_:)();
  v133 = *(v0 + 424);
  v134 = *(v0 + 432);
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1002A7D44()
{
  v70 = v0;
  v1 = v0[195];
  v2 = v0[98];
  sub_100016590(v0[202], v0[203]);

  sub_1002DBBF0(v2, type metadata accessor for OwnerSharingCircle);
  v3 = v0[210];
  v68 = v0[190];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v64 = v0[161];
    v66 = v0[162];
    v7 = v0[137];
    v8 = v0[125];
    v9 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = v0[41];
    v10 = v0[42];
    sub_1000035D0(v0 + 38, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v64(v7, v8);
    sub_100007BAC(v0 + 38);
    v15 = sub_1000136BC(v12, v14, v69);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v17 = v0[50];
    v16 = v0[51];
    v18 = v0[52];
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000136BC(v19, v20, v69);

    *(v9 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v22 = v0[150];
  v23 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v23 == v22)
  {
    v24 = v0[144];
    v25 = v0[143];
    v26 = v0[142];
    v27 = v0[141];
    v28 = v0[140];
    v29 = v0[139];
    v30 = v0[137];
    v31 = v0[136];
    v39 = v0[89];
    v40 = v0[135];
    v41 = v0[134];
    v42 = v0[133];
    v43 = v0[132];
    v44 = v0[131];
    v45 = v0[130];
    v46 = v0[129];
    v47 = v0[128];
    v48 = v0[124];
    v49 = v0[123];
    v50 = v0[122];
    v51 = v0[121];
    v52 = v0[120];
    v53 = v0[119];
    v54 = v0[118];
    v55 = v0[115];
    v56 = v0[112];
    v57 = v0[109];
    v58 = v0[107];
    v59 = v0[106];
    v60 = v0[104];
    v61 = v0[103];
    v62 = v0[102];
    v63 = v0[101];
    v65 = v0[98];
    v67 = v0[97];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v32 = v0[1];

    return v32(v68, v39);
  }

  else
  {
    v34 = v0[189];
    v0[190] = v68;
    v0[189] = v34 + 1;
    v35 = v0[154];
    v36 = v0[137];
    sub_10001F280(v0[93] + 40 * v34 + 72, (v0 + 28));
    v37 = v0[31];
    v38 = v0[32];
    sub_1000035D0(v0 + 28, v37);
    (*(*(*(v38 + 8) + 8) + 32))(v37);

    return _swift_task_switch(sub_1002A571C, v35, 0);
  }
}

uint64_t sub_1002A8370(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1720);
  v16 = *v2;
  v3[216] = a1;
  v3[217] = v1;

  if (v1)
  {
    v5 = v3[214];
    v6 = v3[193];
    v7 = v3[94];

    v8 = sub_1002A89E4;
    v9 = v7;
  }

  else
  {
    v10 = v3[147];
    v11 = v3[146];
    v12 = v3[139];
    v13 = v3[94];
    v14 = *(v10 + 8);
    v3[218] = v14;
    v3[219] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v12, v11);
    v8 = sub_1002A8524;
    v9 = v13;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1002A8524()
{
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1728);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1000);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177A818);
  v3(v5, v4, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1728);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1288);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1000);
  if (v10)
  {
    v53 = v9;
    log = v8;
    v16 = swift_slowAlloc();
    *(v0 + 536) = swift_slowAlloc();
    *v16 = 134218755;
    *(v16 + 4) = *(v11 + 16);

    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_1000136BC(v17, v19, (v0 + 536));

    *(v16 + 24) = v20;
    buf = v16;
    *(v16 + 32) = 2082;
    v21 = *(v11 + 16);
    if (v21)
    {
      v22 = *(v0 + 1728);
      *(v0 + 576) = _swiftEmptyArrayStorage;
      v55 = (v0 + 576);
      sub_101123AF8(v21);
      v23 = (v22 + 64);
      do
      {
        v24 = *(v23 - 3);
        v26 = *(v23 - 2);
        v25 = *(v23 - 1);
        v27 = *v23;
        *(v0 + 592) = *(v23 - 4);
        sub_100017D5C(v25, v27);
        *(v0 + 504) = dispatch thunk of CustomStringConvertible.description.getter();
        *(v0 + 512) = v28;
        v29._countAndFlagsBits = 8250;
        v29._object = 0xE200000000000000;
        String.append(_:)(v29);
        *(v0 + 600) = v24;
        v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v30);

        v31._countAndFlagsBits = 45;
        v31._object = 0xE100000000000000;
        String.append(_:)(v31);
        *(v0 + 608) = v26;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        sub_100016590(v25, v27);
        v33 = *(v0 + 504);
        v34 = *(v0 + 512);
        v35 = *(v0 + 576);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101123BB8(0, *(v35 + 16) + 1, 1);
          v35 = *v55;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_101123BB8((v36 > 1), v37 + 1, 1);
          v35 = *v55;
        }

        v23 += 5;
        *(v35 + 16) = v37 + 1;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v34;
        --v21;
      }

      while (v21);
    }

    v40 = Array.description.getter();
    v42 = v41;

    v43 = sub_1000136BC(v40, v42, (v0 + 536));

    *(buf + 34) = v43;
    _os_log_impl(&_mh_execute_header, log, v53, "Found %ld ranges for circle: %{private,mask.hash}s.\nRanges: %{public}s)", buf, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v39 = *(v0 + 1728);

    v13(v14, v15);
  }

  v44 = swift_task_alloc();
  *(v0 + 1760) = v44;
  *v44 = v0;
  v44[1] = sub_1002A9078;
  v45 = *(v0 + 1728);
  v46 = *(v0 + 1712);
  v47 = *(v0 + 1032);
  v48 = *(v0 + 848);
  v49 = *(v0 + 752);
  v50 = *(v0 + 1827);

  return sub_10029E154(v48, v45, v47, v50, v46);
}

uint64_t sub_1002A89E4()
{
  v82 = v0;
  v1 = v0[162];
  v2 = v0[161];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[139];
  v6 = v0[130];
  v7 = v0[129];
  v8 = v0[125];
  sub_10000B3A8(v0[140], &qword_10169C9C8, &qword_101398A58);
  v2(v7, v8);
  v2(v6, v8);
  v9 = *(v3 + 8);
  v9(v5, v4);
  v10 = v0[217];
  v11 = v0[209];
  v12 = v0[195];
  v13 = v0[147];
  v14 = v0[146];
  v15 = v0[141];

  v9(v15, v14);
  v80 = v0[213];
  if (qword_101694510 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177A818);
  sub_10001F280((v0 + 28), (v0 + 38));
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v76 = v0[161];
    v78 = v0[162];
    v19 = v0[137];
    v20 = v0[125];
    v21 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v21 = 141558531;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v23 = v0[41];
    v22 = v0[42];
    sub_1000035D0(v0 + 38, v23);
    (*(*(*(v22 + 8) + 8) + 32))(v23);
    sub_1002DB700(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v76(v19, v20);
    sub_100007BAC(v0 + 38);
    v27 = sub_1000136BC(v24, v26, v81);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    swift_getErrorValue();
    v29 = v0[50];
    v28 = v0[51];
    v30 = v0[52];
    v31 = Error.localizedDescription.getter();
    v33 = sub_1000136BC(v31, v32, v81);

    *(v21 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v17, v18, "Could not create fetch item for owned beacon %{private,mask.hash}s, error: %s.", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(v0 + 38);
  }

  v34 = v0[150];
  v35 = v0[189] + 1;
  sub_100007BAC(v0 + 28);
  if (v35 == v34)
  {
    v36 = v0[144];
    v37 = v0[143];
    v38 = v0[142];
    v39 = v0[141];
    v40 = v0[140];
    v41 = v0[139];
    v42 = v0[137];
    v43 = v0[136];
    v51 = v0[89];
    v52 = v0[135];
    v53 = v0[134];
    v54 = v0[133];
    v55 = v0[132];
    v56 = v0[131];
    v57 = v0[130];
    v58 = v0[129];
    v59 = v0[128];
    v60 = v0[124];
    v61 = v0[123];
    v62 = v0[122];
    v63 = v0[121];
    v64 = v0[120];
    v65 = v0[119];
    v66 = v0[118];
    v67 = v0[115];
    v68 = v0[112];
    v69 = v0[109];
    v70 = v0[107];
    v71 = v0[106];
    v72 = v0[104];
    v73 = v0[103];
    v74 = v0[102];
    v75 = v0[101];
    v77 = v0[98];
    v79 = v0[97];
    sub_10000B3A8(v0[145], &qword_10169C9C8, &qword_101398A58);

    v44 = v0[1];

    return v44(v80, v51);
  }

  else
  {
    v46 = v0[189];
    v0[190] = v80;
    v0[189] = v46 + 1;
    v47 = v0[154];
    v48 = v0[137];
    sub_10001F280(v0[93] + 40 * v46 + 72, (v0 + 28));
    v49 = v0[31];
    v50 = v0[32];
    sub_1000035D0(v0 + 28, v49);
    (*(*(*(v50 + 8) + 8) + 32))(v49);

    return _swift_task_switch(sub_1002A571C, v47, 0);
  }
}