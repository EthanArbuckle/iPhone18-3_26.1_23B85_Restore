uint64_t sub_100BB3A88()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  v5 = *(v0 + 1411);
  sub_10001F280(v0 + 472, v0 + 872);
  (*(v3 + 16))(v2, v1, v4);
  v6 = sub_100BB8B48((v0 + 872), v5, v5, v2);
  *(v0 + 1064) = v6;
  LOBYTE(v4) = *(v6 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing);
  type metadata accessor for AirPodsLEPairingValidator();
  v7 = swift_allocObject();
  *(v0 + 1072) = v7;
  swift_defaultActor_initialize();
  v8 = type metadata accessor for DeviceIdentityUtility();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v11 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v11 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v7 + 112) = v11;
  *(v7 + 120) = v4;
  *(v0 + 1080) = type metadata accessor for AirPodsLEPeripheralProvider();
  *(v0 + 1088) = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v14 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v15 = swift_task_alloc();
  *(v0 + 1096) = v15;
  *v15 = v0;
  v15[1] = sub_100BB3C74;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB3C74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1096);
  v6 = *v2;
  *(*v2 + 1104) = v1;

  if (v1)
  {
    v7 = sub_100BB41EC;
  }

  else
  {
    *(v4 + 1112) = a1;
    v7 = sub_100BB3D9C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100BB3D9C()
{
  v1 = v0[117];
  *(v0[136] + 112) = v0[139];
  type metadata accessor for AirPodsLEMetadataProvider();
  v0[140] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for BackgroundPairingResultListener();
  v0[141] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[142] = sub_100BB8E0C(&qword_1016B7738, 255, type metadata accessor for BackgroundPairingResultListener);
  type metadata accessor for AirPodsLEExecutorsFactory();
  v0[143] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[144] = sub_100BB8E0C(&qword_1016B7740, 255, type metadata accessor for AirPodsLEPairingValidator);
  v0[145] = sub_100BB8E0C(&qword_1016ACEA0, 255, type metadata accessor for AirPodsLEPeripheralProvider);
  v0[146] = sub_100BB8E0C(&qword_1016B7748, 255, type metadata accessor for AirPodsLEMetadataProvider);
  v0[147] = sub_100BB8E0C(&qword_1016B31B0, 255, type metadata accessor for AirPodsLEPairingInfoStore);
  v0[148] = sub_100BB8E0C(&qword_1016B7750, 255, type metadata accessor for AirPodsLEExecutorsFactory);

  return _swift_task_switch(sub_100BB3FC8, v1, 0);
}

uint64_t sub_100BB3FC8()
{
  v1 = *(v0 + 1032);
  (*(*(v0 + 952) + 8))(*(v0 + 976), *(v0 + 944));
  sub_100007BAC((v0 + 792));
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 832));
  v22 = *(v0 + 1184);
  v20 = *(v0 + 1176);
  v14 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v15 = *(v0 + 1128);
  v4 = *(v0 + 1120);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1072);
  v7 = *(v0 + 1064);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v8 = *(v0 + 1056);
  v9 = *(v0 + 1032);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 1016);
  v19 = *(v0 + 1008);
  v21 = *(v0 + 1000);
  v23 = *(v0 + 992);
  v24 = *(v0 + 976);
  v25 = *(v0 + 968);
  v26 = *(v0 + 960);
  v10 = *(v0 + 912);
  v10[3] = &type metadata for UniversalCoordinatorDependencies;
  v10[4] = sub_100BB89F0();
  v11 = swift_allocObject();
  *v10 = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v3;
  *(v11 + 32) = v5;
  *(v11 + 40) = v2;
  *(v11 + 48) = v4;
  *(v11 + 56) = v14;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 112) = v15;
  *(v11 + 128) = v7;
  *(v11 + 136) = v20;
  *(v11 + 144) = v18;
  *(v11 + 152) = v22;
  *(v11 + 160) = _swiftEmptyArrayStorage;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100BB41EC()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100BB4270, 0, 0);
}

uint64_t sub_100BB4270()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[117];

  return _swift_task_switch(sub_100BB42E8, v3, 0);
}

uint64_t sub_100BB42E8()
{
  v1 = v0[129];
  v2 = v0[127];
  (*(v0[119] + 8))(v0[122], v0[118]);
  sub_100007BAC(v0 + 99);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 104);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);
  v15 = v0[138];
  v3 = v0[132];
  v4 = v0[129];
  v5 = v0[128];
  v6 = v0[127];
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[124];
  v10 = v0[122];
  v11 = v0[121];
  v12 = v0[120];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100BB444C()
{
  v1 = *(v0 + 1413);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1208);
  v32 = *(v0 + 1412);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 968);
  v7 = *(v0 + 960);
  v8 = *(v0 + 952);
  v9 = *(v0 + 944);
  sub_10001F280(v0 + 472, v0 + 712);
  (*(v8 + 16))(v6, v7, v9);
  *(v0 + 776) = &type metadata for SPDAccessoryType;
  *(v0 + 784) = sub_100BB8DB8();
  *(v0 + 752) = v1;
  v10 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v0 + 1224) = v13;
  swift_defaultActor_initialize();
  *(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral) = 0;
  v14 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata;
  v15 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo;
  v17 = type metadata accessor for AccessoryProductInfo();
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  *(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration) = 0;
  v18 = v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPairingConfiguration;
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_beaconCreationInfo) = _swiftEmptyArrayStorage;
  *(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails) = 0;
  v19 = v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101385D80;
  sub_10000A748((v0 + 712), v20 + 32);
  *(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories) = v20;
  sub_10000A748((v0 + 752), v13 + 112);
  *(v13 + 152) = v1;
  v3(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress, v6, v9);
  v21 = (v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken);
  *v21 = v5;
  v21[1] = v4;
  *(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing) = 0;
  *(v13 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_forceRepair) = v32;
  type metadata accessor for AirPodsLEPairingValidator();
  v22 = swift_allocObject();
  *(v0 + 1232) = v22;
  sub_10002E98C(v5, v4);
  swift_defaultActor_initialize();
  v23 = type metadata accessor for DeviceIdentityUtility();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  v27 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  *(v26 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v26 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v26 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  *(v22 + 112) = v26;
  *(v22 + 120) = 0;
  *(v0 + 1240) = type metadata accessor for AirPodsLEPeripheralProvider();
  *(v0 + 1248) = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v29 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v30 = swift_task_alloc();
  *(v0 + 1256) = v30;
  *v30 = v0;
  v30[1] = sub_100BB4844;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB4844(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1256);
  v6 = *v2;
  *(*v2 + 1264) = v1;

  if (v1)
  {
    v7 = sub_100BB4DD0;
  }

  else
  {
    *(v4 + 1272) = a1;
    v7 = sub_100BB496C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100BB496C()
{
  v1 = v0[117];
  *(v0[156] + 112) = v0[159];
  type metadata accessor for AirPodsLEMetadataProvider();
  v0[160] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for BackgroundPairingResultListener();
  v0[161] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[162] = sub_100BB8E0C(&qword_1016B7738, 255, type metadata accessor for BackgroundPairingResultListener);
  type metadata accessor for AirPodsLEExecutorsFactory();
  v0[163] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[164] = sub_100BB8E0C(&qword_1016B7740, 255, type metadata accessor for AirPodsLEPairingValidator);
  v0[165] = sub_100BB8E0C(&qword_1016ACEA0, 255, type metadata accessor for AirPodsLEPeripheralProvider);
  v0[166] = sub_100BB8E0C(&qword_1016B7748, 255, type metadata accessor for AirPodsLEMetadataProvider);
  v0[167] = sub_100BB8E0C(&qword_1016B31B0, 255, type metadata accessor for AirPodsLEPairingInfoStore);
  v0[168] = sub_100BB8E0C(&qword_1016B7750, 255, type metadata accessor for AirPodsLEExecutorsFactory);

  return _swift_task_switch(sub_100BB4B98, v1, 0);
}

uint64_t sub_100BB4B98()
{
  v1 = *(v0 + 1032);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 944);
  sub_100006654(*(v0 + 1192), *(v0 + 1200));
  (*(v3 + 8))(v2, v4);
  sub_100007BAC((v0 + 632));
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 672));
  v25 = *(v0 + 1344);
  v23 = *(v0 + 1336);
  v17 = *(v0 + 1328);
  v5 = *(v0 + 1320);
  v6 = *(v0 + 1312);
  v21 = *(v0 + 1304);
  v18 = *(v0 + 1288);
  v7 = *(v0 + 1280);
  v8 = *(v0 + 1248);
  v9 = *(v0 + 1232);
  v10 = *(v0 + 1224);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v11 = *(v0 + 1056);
  v12 = *(v0 + 1032);
  v19 = *(v0 + 1024);
  v20 = *(v0 + 1016);
  v22 = *(v0 + 1008);
  v24 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 976);
  v28 = *(v0 + 968);
  v29 = *(v0 + 960);
  v13 = *(v0 + 912);
  v13[3] = &type metadata for UniversalCoordinatorDependencies;
  v13[4] = sub_100BB89F0();
  v14 = swift_allocObject();
  *v13 = v14;
  *(v14 + 16) = v9;
  *(v14 + 24) = v6;
  *(v14 + 32) = v8;
  *(v14 + 40) = v5;
  *(v14 + 48) = v7;
  *(v14 + 56) = v17;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = v18;
  *(v14 + 128) = v10;
  *(v14 + 136) = v23;
  *(v14 + 144) = v21;
  *(v14 + 152) = v25;
  *(v14 + 160) = _swiftEmptyArrayStorage;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100BB4DD0()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1240);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100BB4E54, 0, 0);
}

uint64_t sub_100BB4E54()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[117];

  return _swift_task_switch(sub_100BB4ECC, v3, 0);
}

uint64_t sub_100BB4ECC()
{
  v1 = v0[129];
  v2 = v0[127];
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  sub_100006654(v0[149], v0[150]);
  (*(v4 + 8))(v3, v5);
  sub_100007BAC(v0 + 79);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 84);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);
  v18 = v0[158];
  v6 = v0[132];
  v7 = v0[129];
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[126];
  v11 = v0[125];
  v12 = v0[124];
  v13 = v0[122];
  v14 = v0[121];
  v15 = v0[120];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100BB5044()
{
  v2 = *v1;
  v3 = *(*v1 + 1352);
  v4 = *v1;
  *(*v1 + 1360) = v0;

  v5 = *(v2 + 936);
  if (v0)
  {
    v6 = sub_100BB537C;
  }

  else
  {
    v6 = sub_100BB5170;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BB5170()
{
  v1 = *(v0 + 1032);
  sub_10000B3A8(v0 + 512, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  v25 = *(v0 + 464);
  v21 = *(v0 + 384);
  v23 = *(v0 + 400);
  v15 = *(v0 + 336);
  v16 = *(v0 + 320);
  v14 = *(v0 + 352);
  v19 = *(v0 + 432);
  v20 = *(v0 + 416);
  v17 = *(v0 + 368);
  v18 = *(v0 + 448);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 592));
  sub_10000B3A8(v0 + 552, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 976);
  v22 = *(v0 + 968);
  v24 = *(v0 + 960);
  v10 = *(v0 + 912);
  v10[3] = &type metadata for UniversalCoordinatorDependencies;
  v10[4] = sub_100BB89F0();
  v11 = swift_allocObject();
  *v10 = v11;
  *(v11 + 16) = v16;
  *(v11 + 32) = v15;
  *(v11 + 48) = v14;
  *(v11 + 64) = v17;
  *(v11 + 80) = v21;
  *(v11 + 96) = v23;
  *(v11 + 112) = v20;
  *(v11 + 128) = v19;
  *(v11 + 144) = v18;
  *(v11 + 160) = v25;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100BB537C()
{
  v1 = v0[129];
  v2 = v0[127];
  sub_10000B3A8((v0 + 64), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 74);
  sub_10000B3A8((v0 + 69), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);
  v15 = v0[170];
  v3 = v0[132];
  v4 = v0[129];
  v5 = v0[128];
  v6 = v0[127];
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[124];
  v10 = v0[122];
  v11 = v0[121];
  v12 = v0[120];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100BB54EC()
{
  v2 = *v1;
  v3 = *(*v1 + 1368);
  v4 = *v1;
  *(*v1 + 1376) = v0;

  v5 = *(v2 + 936);
  if (v0)
  {
    v6 = sub_100BB5830;
  }

  else
  {
    v6 = sub_100BB5618;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BB5618()
{
  v1 = *(v0 + 1032);
  sub_10000B3A8(v0 + 512, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  v25 = *(v0 + 312);
  v22 = *(v0 + 216);
  v20 = *(v0 + 248);
  v21 = *(v0 + 232);
  v15 = *(v0 + 184);
  v16 = *(v0 + 168);
  v14 = *(v0 + 200);
  v18 = *(v0 + 280);
  v19 = *(v0 + 264);
  v17 = *(v0 + 296);
  sub_100007BAC((v0 + 472));
  sub_100007BAC((v0 + 592));
  sub_10000B3A8(v0 + 552, &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(*(v0 + 1016), &qword_1016B76F0, &unk_1013DD160);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1000);
  v8 = *(v0 + 992);
  v9 = *(v0 + 976);
  v23 = *(v0 + 968);
  v24 = *(v0 + 960);
  v10 = *(v0 + 912);
  v10[3] = &type metadata for UniversalCoordinatorDependencies;
  v10[4] = sub_100BB89F0();
  v11 = swift_allocObject();
  *v10 = v11;
  *(v11 + 16) = v16;
  *(v11 + 32) = v15;
  *(v11 + 48) = v14;
  *(v11 + 64) = v22;
  *(v11 + 80) = v21;
  *(v11 + 96) = v20;
  *(v11 + 112) = v19;
  *(v11 + 128) = v18;
  *(v11 + 144) = v17;
  *(v11 + 160) = v25;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100BB5830()
{
  v1 = v0[129];
  v2 = v0[127];
  sub_10000B3A8((v0 + 64), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v1, &qword_1016B76F0, &unk_1013DD160);
  sub_100007BAC(v0 + 59);
  sub_100007BAC(v0 + 74);
  sub_10000B3A8((v0 + 69), &qword_1016B7718, &qword_1013DD180);
  sub_10000B3A8(v2, &qword_1016B76F0, &unk_1013DD160);
  v15 = v0[172];
  v3 = v0[132];
  v4 = v0[129];
  v5 = v0[128];
  v6 = v0[127];
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[124];
  v10 = v0[122];
  v11 = v0[121];
  v12 = v0[120];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100BB59A0()
{
  v2 = *v1;
  v3 = *(*v1 + 1392);
  v9 = *v1;
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v4 = *(v2 + 936);
    v5 = sub_100BB5C24;
  }

  else
  {
    v6 = *(v2 + 1384);
    v7 = *(v2 + 936);

    v5 = sub_100BB5AC8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BB5AC8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1016);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 1000);
  v22 = *(v0 + 992);
  v23 = *(v0 + 976);
  v24 = *(v0 + 968);
  v25 = *(v0 + 960);
  v8 = *(v0 + 912);
  v9 = sub_100BB89F0();
  v10 = swift_allocObject();
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 16);
  v14 = *(v0 + 32);
  v16 = *(v0 + 48);
  v15 = *(v0 + 64);
  v17 = *(v0 + 112);
  v18 = *(v0 + 128);
  v19 = *(v0 + 144);
  v8[3] = &type metadata for UniversalCoordinatorDependencies;
  v8[4] = v9;
  *v8 = v10;
  *(v10 + 16) = v13;
  *(v10 + 32) = v14;
  *(v10 + 48) = v16;
  *(v10 + 64) = v15;
  *(v10 + 80) = v11;
  *(v10 + 96) = v12;
  *(v10 + 112) = v17;
  *(v10 + 128) = v18;
  *(v10 + 144) = v19;
  *(v10 + 160) = v1;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100BB5C24()
{
  v1 = v0[173];

  v14 = v0[175];
  v2 = v0[132];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[126];
  v7 = v0[125];
  v8 = v0[124];
  v9 = v0[122];
  v10 = v0[121];
  v11 = v0[120];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BB5D24(uint64_t a1, uint64_t a2)
{
  v3[82] = v2;
  v3[81] = a2;
  v3[80] = a1;
  v5 = *(*(sub_1000BC4D4(&qword_1016B76F0, &unk_1013DD160) - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v6 = type metadata accessor for PairingConfiguration();
  v3[84] = v6;
  v7 = *(v6 - 8);
  v3[85] = v7;
  v8 = *(v7 + 64) + 15;
  v3[86] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101699860, &qword_1013A34D0) - 8) + 64) + 15;
  v3[87] = swift_task_alloc();
  v10 = type metadata accessor for Device();
  v3[88] = v10;
  v11 = *(v10 - 8);
  v3[89] = v11;
  v12 = *(v11 + 64) + 15;
  v3[90] = swift_task_alloc();
  v13 = type metadata accessor for DetectedAccessory();
  v3[91] = v13;
  v14 = *(v13 - 8);
  v3[92] = v14;
  v15 = *(v14 + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_getObjectType();
  v16 = *(a2 + 8);
  v18 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[95] = v18;
  v3[96] = v17;

  return _swift_task_switch(sub_100BB5F48, v18, v17);
}

uint64_t sub_100BB5F48()
{
  v1 = v0[94];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB5FC0, v2, 0);
}

uint64_t sub_100BB5FC0()
{
  v1 = v0[44];
  sub_1000035D0(v0 + 40, v0[43]);
  v2 = dispatch thunk of CoordinatorDependencies.pairingInfoStore.getter();
  v4 = v3;
  v0[97] = v2;
  v0[98] = v3;
  v0[99] = swift_getObjectType();
  v5 = *(v4 + 8);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BB6070, v7, v6);
}

uint64_t sub_100BB6070()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[93];
  v5 = v0[82];
  dispatch thunk of PairingInfoStore.accessory.getter();
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100BB60F0, v5, 0);
}

uint64_t sub_100BB60F0()
{
  v1 = (*(v0[92] + 88))(v0[93], v0[91]);
  if (v1 == enum case for DetectedAccessory.single(_:))
  {
    v2 = v0[93];
    v3 = v0[89];
    v4 = v0[88];
    v5 = v0[87];
    (*(v0[92] + 96))(v2, v0[91]);
    sub_10000A748(v2, (v0 + 45));
    sub_10001F280((v0 + 45), (v0 + 50));
    sub_1000BC4D4(&qword_1016B7700, &qword_1013DD170);
    v6 = swift_dynamicCast();
    v7 = *(v3 + 56);
    if (v6)
    {
      v8 = v0[90];
      v9 = v0[89];
      v10 = v0[88];
      v11 = v0[87];
      v12 = v0[86];
      v13 = v0[85];
      v14 = v0[84];
      v15 = v0[83];
      v7(v11, 0, 1, v10);
      (*(v9 + 32))(v8, v11, v10);
      v12[3] = v10;
      v12[4] = sub_100BB8E0C(&qword_10169EF58, 255, &type metadata accessor for Device);
      v16 = sub_1000280DC(v12);
      (*(v9 + 16))(v16, v8, v10);
      (*(v13 + 104))(v12, enum case for PairingConfiguration.single(_:), v14);
      v17 = type metadata accessor for PairingContext();
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
      v18 = swift_task_alloc();
      v0[100] = v18;
      *v18 = v0;
      v18[1] = sub_100BB666C;
      v19 = v0[86];
      v20 = v0[83];
      v21 = v0[82];

      return sub_100BB2C54((v0 + 55), v19, v20);
    }

    v25 = v0[87];
    v7(v25, 1, 1, v0[88]);
    sub_10000B3A8(v25, &qword_101699860, &qword_1013A34D0);
    v26 = type metadata accessor for PairingServiceProxyError();
    sub_100BB8E0C(&qword_1016B76F8, 255, &type metadata accessor for PairingServiceProxyError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for PairingServiceProxyError.invalidAccessory(_:), v26);
    swift_willThrow();
    sub_100007BAC(v0 + 45);
  }

  else if (v1 == enum case for DetectedAccessory.uncertain(_:))
  {
    v23 = type metadata accessor for PairingServiceProxyError();
    sub_100BB8E0C(&qword_1016B76F8, 255, &type metadata accessor for PairingServiceProxyError);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, enum case for PairingServiceProxyError.unsupported(_:), v23);
    swift_willThrow();
  }

  else
  {
    v28 = enum case for DetectedAccessory.none(_:);
    v29 = v1;
    v30 = type metadata accessor for PairingServiceProxyError();
    sub_100BB8E0C(&qword_1016B76F8, 255, &type metadata accessor for PairingServiceProxyError);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, enum case for PairingServiceProxyError.invalidAccessory(_:), v30);
    swift_willThrow();
    if (v29 != v28)
    {
      (*(v0[92] + 8))(v0[93], v0[91]);
    }
  }

  v32 = v0[93];
  v33 = v0[90];
  v34 = v0[87];
  v35 = v0[86];
  v36 = v0[83];
  sub_100007BAC(v0 + 40);

  v37 = v0[1];

  return v37();
}

uint64_t sub_100BB666C()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v13 = *v1;
  *(*v1 + 808) = v0;

  if (v0)
  {
    v4 = v2[82];
    sub_10000B3A8(v2[83], &qword_1016B76F0, &unk_1013DD160);
    v5 = sub_100BB6F60;
    v6 = v4;
  }

  else
  {
    v7 = v2[86];
    v8 = v2[85];
    v9 = v2[84];
    v10 = v2[83];
    v11 = v2[82];
    sub_10000B3A8(v10, &qword_1016B76F0, &unk_1013DD160);
    (*(v8 + 8))(v7, v9);
    v5 = sub_100BB67EC;
    v6 = v11;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100BB67EC()
{
  v1 = v0[59];
  sub_1000035D0(v0 + 55, v0[58]);
  v0[102] = dispatch thunk of CoordinatorDependencies.validator.getter();
  v0[103] = v2;
  v3 = v0[59];
  sub_1000035D0(v0 + 55, v0[58]);
  v0[104] = dispatch thunk of CoordinatorDependencies.peripheralProvider.getter();
  v0[105] = v4;
  v5 = v0[59];
  sub_1000035D0(v0 + 55, v0[58]);
  v0[106] = dispatch thunk of CoordinatorDependencies.metadataProvider.getter();
  v0[107] = v6;
  v7 = v0[59];
  sub_1000035D0(v0 + 55, v0[58]);
  v0[108] = dispatch thunk of CoordinatorDependencies.scanner.getter();
  v0[109] = v8;
  v9 = v0[96];
  v10 = v0[95];

  return _swift_task_switch(sub_100BB68F4, v10, v9);
}

uint64_t sub_100BB68F4()
{
  v1 = v0[94];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB696C, v2, 0);
}

uint64_t sub_100BB696C()
{
  v1 = v0[64];
  sub_1000035D0(v0 + 60, v0[63]);
  v0[110] = dispatch thunk of CoordinatorDependencies.pairingUIManager.getter();
  v0[111] = v2;
  v3 = v0[96];
  v4 = v0[95];

  return _swift_task_switch(sub_100BB69FC, v4, v3);
}

uint64_t sub_100BB69FC()
{
  v1 = v0[94];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB6A74, v2, 0);
}

uint64_t sub_100BB6A74()
{
  v1 = v0[69];
  sub_1000035D0(v0 + 65, v0[68]);
  v0[112] = dispatch thunk of CoordinatorDependencies.userSessionListener.getter();
  v0[113] = v2;
  v3 = v0[96];
  v4 = v0[95];

  return _swift_task_switch(sub_100BB6B08, v4, v3);
}

uint64_t sub_100BB6B08()
{
  v1 = v0[94];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  dispatch thunk of PairingCoordinator.dependencies.getter();

  return _swift_task_switch(sub_100BB6B80, v2, 0);
}

uint64_t sub_100BB6B80()
{
  v40 = *(v0 + 888);
  v41 = *(v0 + 896);
  v39 = *(v0 + 880);
  v37 = *(v0 + 904);
  v38 = *(v0 + 872);
  v35 = *(v0 + 856);
  v36 = *(v0 + 864);
  v1 = *(v0 + 848);
  v31 = *(v0 + 840);
  v2 = *(v0 + 832);
  v33 = *(v0 + 824);
  v30 = *(v0 + 816);
  v3 = *(v0 + 592);
  sub_1000035D0((v0 + 560), *(v0 + 584));
  v34 = dispatch thunk of CoordinatorDependencies.pairingResultListener.getter();
  v32 = v4;
  v5 = *(v0 + 472);
  sub_1000035D0((v0 + 440), *(v0 + 464));
  v6 = dispatch thunk of CoordinatorDependencies.pairingInfoStore.getter();
  v29 = v7;
  v8 = *(v0 + 472);
  sub_1000035D0((v0 + 440), *(v0 + 464));
  v9 = dispatch thunk of CoordinatorDependencies.pairingExecutorFactory.getter();
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = v2;
  v14 = swift_getObjectType();
  v15 = v1;
  v16 = swift_getObjectType();
  v17 = swift_getObjectType();
  v18 = swift_getObjectType();
  v28.n128_u64[0] = v32;
  v28.n128_u64[1] = v6;
  *(&v27 + 1) = v34;
  *&v27 = v37;
  sub_100A4F7CC(v30, v13, v15, v36, v38, v39, v40, v41, v0 + 16, v27, v28, v9, _swiftEmptyArrayStorage, ObjectType, v17, v16, v14, v18, v33, v29, v35, v31, v11);
  sub_100007BAC((v0 + 560));
  sub_100007BAC((v0 + 520));
  sub_100007BAC((v0 + 480));
  *(v0 + 624) = &type metadata for UniversalCoordinatorDependencies;
  *(v0 + 632) = sub_100BB89F0();
  v19 = swift_allocObject();
  *(v0 + 600) = v19;
  v20 = *(v0 + 128);
  *(v19 + 112) = *(v0 + 112);
  *(v19 + 128) = v20;
  *(v19 + 144) = *(v0 + 144);
  *(v19 + 160) = *(v0 + 160);
  v21 = *(v0 + 64);
  *(v19 + 48) = *(v0 + 48);
  *(v19 + 64) = v21;
  v22 = *(v0 + 96);
  *(v19 + 80) = *(v0 + 80);
  *(v19 + 96) = v22;
  v23 = *(v0 + 32);
  *(v19 + 16) = *(v0 + 16);
  *(v19 + 32) = v23;
  sub_100BB8A44(v0 + 16, v0 + 168);
  v24 = *(v0 + 768);
  v25 = *(v0 + 760);

  return _swift_task_switch(sub_100BB6DF0, v25, v24);
}

uint64_t sub_100BB6DF0()
{
  v1 = v0[94];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  dispatch thunk of PairingCoordinator.updateDependencies(_:)();
  sub_100007BAC(v0 + 75);

  return _swift_task_switch(sub_100BB6E70, v2, 0);
}

uint64_t sub_100BB6E70()
{
  v1 = v0[93];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[86];
  v7 = v0[83];
  sub_100BB8AA0((v0 + 2));
  (*(v3 + 8))(v2, v4);
  sub_100007BAC(v0 + 45);
  sub_100007BAC(v0 + 55);
  sub_100007BAC(v0 + 40);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100BB6F60()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  (*(v0[89] + 8))(v0[90], v0[88]);
  sub_100007BAC(v0 + 45);
  (*(v2 + 8))(v1, v3);
  v4 = v0[101];
  v5 = v0[93];
  v6 = v0[90];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  sub_100007BAC(v0 + 40);

  v10 = v0[1];

  return v10();
}

uint64_t getEnumTagSinglePayload for SPDAccessoryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SPDAccessoryType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100BB71D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100BB71E4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_100BB7204(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingServiceProxyImplementation();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100BB72AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for PairingServiceProxyImplementation();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100BB7370(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingServiceProxyImplementation();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100BB7418(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.startup()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingServiceProxyImplementation();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v6, a2);
}

uint64_t sub_100BB74C0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for PairingServiceProxyImplementation();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100BB7568(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100159154;

  return sub_100BB2794(a1, a2);
}

uint64_t sub_100BB760C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100BB5D24(a1, a2);
}

uint64_t sub_100BB76B0()
{
  v1 = *v0;
  type metadata accessor for PairingServiceProxyImplementation();
  sub_100BB8E0C(&qword_1016B76E8, v2, type metadata accessor for PairingServiceProxyImplementation);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BB7760()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BCB8);
  sub_1000076D4(v0, qword_10177BCB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BB77E0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B7608);
  v1 = sub_1000076D4(v0, qword_1016B7608);
  if (qword_101694D28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BCB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100BB78A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = type metadata accessor for BluetoothManufacturerAdvertisementData.SubType();
  v145 = *(v3 - 8);
  v146 = v3;
  v4 = *(v145 + 64);
  v5 = __chkstk_darwin(v3);
  v144 = &v135[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v143 = &v135[-v7];
  v8 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v152 = *(v8 - 8);
  v153 = v8;
  v9 = *(v152 + 64);
  __chkstk_darwin(v8);
  v151 = &v135[-v10];
  v11 = type metadata accessor for UUID();
  v155 = *(v11 - 8);
  v156 = v11;
  v12 = *(v155 + 64);
  __chkstk_darwin(v11);
  v154 = &v135[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Endianness();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000BC4D4(&qword_1016B7760, &qword_1013DD1B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v135[-v18];
  v20 = type metadata accessor for BluetoothManufacturerAdvertisementData();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v148 = &v135[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v26 = &v135[-v25];
  v27 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v135[-v29];
  v31 = type metadata accessor for Device();
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31);
  v35 = &v135[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __chkstk_darwin(v33);
  v150 = &v135[-v37];
  v38 = __chkstk_darwin(v36);
  v147 = &v135[-v39];
  __chkstk_darwin(v38);
  v41 = &v135[-v40];
  v42 = a1;
  v44 = v43;
  sub_10001F280(v42, v159);
  sub_1000BC4D4(&qword_1016B7700, &qword_1013DD170);
  v45 = swift_dynamicCast();
  v46 = *(v44 + 56);
  if (!v45)
  {
    v46(v30, 1, 1, v31);
    sub_10000B3A8(v30, &qword_101699860, &qword_1013A34D0);
    v63 = type metadata accessor for PairingContext();
    return (*(*(v63 - 8) + 56))(v157, 1, 1, v63);
  }

  v46(v30, 0, 1, v31);
  v47 = *(v44 + 32);
  v149 = v31;
  v47(v41, v30, v31);
  Device.manufacturerData.getter();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000B3A8(v19, &qword_1016B7760, &qword_1013DD1B0);
    if (qword_101694D30 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_1016B7608);
    v49 = v149;
    (*(v44 + 16))(v35, v41, v149);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v50, v51))
    {

      v75 = *(v44 + 8);
      v75(v35, v49);
      v75(v41, v49);
LABEL_18:
      v96 = v157;
      v97 = type metadata accessor for PairingContext();
      return (*(*(v97 - 8) + 56))(v96, 1, 1, v97);
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v142 = v41;
    v150 = v53;
    v159[0] = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    v54 = v151;
    Device.id.getter();
    v56 = v153;
    v55 = v154;
    Identifier.id.getter();
    (*(v152 + 8))(v54, v56);
    sub_100BB8E0C(&qword_101696930, 255, &type metadata accessor for UUID);
    v57 = v156;
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    (*(v155 + 8))(v55, v57);
    v61 = *(v44 + 8);
    v61(v35, v49);
    v62 = sub_1000136BC(v58, v60, v159);

    *(v52 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "No manufacturer data for device %{private,mask.hash}s!", v52, 0x16u);
    sub_100007BAC(v150);

LABEL_16:
    v61(v142, v49);
    goto LABEL_18;
  }

  v65 = v20;
  v142 = v41;
  v141 = v21;
  v66 = v26;
  (*(v21 + 32))(v26, v19, v20);
  v67 = BluetoothManufacturerAdvertisementData.rawPayload.getter();
  v69 = v68;
  v70 = Data.subdata(in:)();
  v72 = v71;
  sub_100016590(v67, v69);
  sub_100017D5C(v70, v72);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE2(v159[0]) == 1)
  {
    v73 = v149;
    v74 = v150;
LABEL_12:
    v150 = v70;
    if (qword_101694D30 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000076D4(v77, qword_1016B7608);
    v78 = v142;
    (*(v44 + 16))(v74, v142, v73);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v79, v80))
    {

      sub_100016590(v150, v72);
      v95 = *(v44 + 8);
      v95(v74, v73);
      (*(v141 + 8))(v66, v65);
      v95(v78, v73);
      goto LABEL_18;
    }

    v81 = swift_slowAlloc();
    v140 = v65;
    v82 = v81;
    v83 = swift_slowAlloc();
    v148 = v66;
    v84 = v83;
    v159[0] = v83;
    *v82 = 141558275;
    *(v82 + 4) = 1752392040;
    *(v82 + 12) = 2081;
    v85 = v74;
    v86 = v151;
    Device.id.getter();
    v139 = v72;
    v87 = v153;
    v88 = v154;
    Identifier.id.getter();
    (*(v152 + 8))(v86, v87);
    sub_100BB8E0C(&qword_101696930, 255, &type metadata accessor for UUID);
    v89 = v156;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    (*(v155 + 8))(v88, v89);
    v61 = *(v44 + 8);
    v93 = v85;
    v49 = v149;
    v61(v93, v149);
    v94 = sub_1000136BC(v90, v92, v159);

    *(v82 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v79, v80, "No product id for device %{private,mask.hash}s!", v82, 0x16u);
    sub_100007BAC(v84);

    sub_100016590(v150, v139);
    (*(v141 + 8))(v148, v140);
    goto LABEL_16;
  }

  v76 = sub_100B8A580(LOWORD(v159[0]));
  v73 = v149;
  v74 = v150;
  if (v76 == 3)
  {
    goto LABEL_12;
  }

  v138 = v76;
  v139 = v72;
  if (qword_101694D30 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  sub_1000076D4(v98, qword_1016B7608);
  v99 = v147;
  (*(v44 + 16))(v147, v142, v73);
  v100 = v141;
  v101 = v148;
  (*(v141 + 16))(v148, v66, v65);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();
  v104 = os_log_type_enabled(v102, v103);
  v140 = v65;
  if (v104)
  {
    v105 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v159[0] = v137;
    *v105 = 141558787;
    *(v105 + 4) = 1752392040;
    *(v105 + 12) = 2081;
    v150 = v70;
    v106 = v151;
    v136 = v103;
    Device.id.getter();
    v107 = v153;
    v108 = v154;
    Identifier.id.getter();
    (*(v152 + 8))(v106, v107);
    sub_100BB8E0C(&qword_101696930, 255, &type metadata accessor for UUID);
    v109 = v156;
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v111 = v65;
    v113 = v112;
    (*(v155 + 8))(v108, v109);
    v156 = *(v44 + 8);
    v156(v147, v149);
    v114 = sub_1000136BC(v110, v113, v159);

    *(v105 + 14) = v114;
    *(v105 + 22) = 2082;
    v115 = v148;
    BluetoothManufacturerAdvertisementData.subType.getter();
    v116 = v146;
    v117 = String.init<A>(describing:)();
    v119 = v118;
    v120 = *(v100 + 8);
    v121 = v111;
    v73 = v149;
    v120(v115, v121);
    v122 = sub_1000136BC(v117, v119, v159);

    *(v105 + 24) = v122;
    *(v105 + 32) = 2082;
    v70 = v150;
    v158 = v138;
    v123 = String.init<A>(describing:)();
    v125 = sub_1000136BC(v123, v124, v159);

    *(v105 + 34) = v125;
    _os_log_impl(&_mh_execute_header, v102, v136, "Device %{private,mask.hash}s: subType = %{public}s, productID = %{public}s.", v105, 0x2Au);
    swift_arrayDestroy();

    v126 = v157;
  }

  else
  {

    v120 = *(v100 + 8);
    v120(v101, v65);
    v156 = *(v44 + 8);
    v156(v99, v73);
    v126 = v157;
    v116 = v146;
  }

  v127 = v144;
  BluetoothManufacturerAdvertisementData.subType.getter();
  v128 = v145;
  v129 = (*(v145 + 88))(v127, v116);
  if (v129 == enum case for BluetoothManufacturerAdvertisementData.SubType.objectSetup(_:) || v129 == enum case for BluetoothManufacturerAdvertisementData.SubType.objectSetupV2(_:))
  {
    *(v126 + 24) = &type metadata for SPDAccessoryType;
    *(v126 + 32) = sub_100BB8DB8();
    sub_100016590(v70, v139);
    v131 = v138;
    if (v138)
    {
      if (v138 != 1)
      {
        v131 = 2;
      }
    }

    else
    {
      v131 = 3;
    }

    *v126 = v131;
    v120(v66, v140);
    v156(v142, v73);
    v132 = enum case for PairingContext.bluetooth(_:);
    v133 = type metadata accessor for PairingContext();
    v134 = *(v133 - 8);
    (*(v134 + 104))(v126, v132, v133);
    return (*(v134 + 56))(v126, 0, 1, v133);
  }

  else
  {
    sub_100016590(v70, v139);
    v120(v66, v140);
    v156(v142, v73);
    (*(v128 + 8))(v127, v116);
    v130 = type metadata accessor for PairingContext();
    return (*(*(v130 - 8) + 56))(v126, 1, 1, v130);
  }
}

unint64_t sub_100BB89F0()
{
  result = qword_1016B7708;
  if (!qword_1016B7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7708);
  }

  return result;
}

unint64_t sub_100BB8AF4()
{
  result = qword_1016B7710;
  if (!qword_1016B7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7710);
  }

  return result;
}

uint64_t sub_100BB8B48(__int128 *a1, char a2, char a3, uint64_t a4)
{
  v23 = &type metadata for SPDAccessoryType;
  v24 = sub_100BB8DB8();
  LOBYTE(v22) = a2;
  v8 = type metadata accessor for AirPodsLEPairingInfoStore(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPeripheral) = 0;
  v12 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryMetadata;
  v13 = type metadata accessor for AccessoryMetadata(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryProductInfo;
  v15 = type metadata accessor for AccessoryProductInfo();
  (*(*(v15 - 8) + 56))(v11 + v14, 1, 1, v15);
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryUserConfiguration) = 0;
  v16 = v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryPairingConfiguration;
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_beaconCreationInfo) = _swiftEmptyArrayStorage;
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessoryDetails) = 0;
  v17 = v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingUIInfo;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_101385D80;
  sub_10000A748(a1, v18 + 32);
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_accessories) = v18;
  sub_10000A748(&v22, v11 + 112);
  *(v11 + 152) = a3;
  v19 = OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_classicMacAddress;
  v20 = type metadata accessor for MACAddress();
  (*(*(v20 - 8) + 32))(v11 + v19, a4, v20);
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_pairingToken) = xmmword_10138BBF0;
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_standalonePairing) = 1;
  *(v11 + OBJC_IVAR____TtC12searchpartyd25AirPodsLEPairingInfoStore_forceRepair) = 0;
  return v11;
}

unint64_t sub_100BB8DB8()
{
  result = qword_1016B7730;
  if (!qword_1016B7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7730);
  }

  return result;
}

uint64_t sub_100BB8E0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100BB8E78()
{
  result = qword_1016B7770;
  if (!qword_1016B7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7770);
  }

  return result;
}

unint64_t sub_100BB8ED0()
{
  result = qword_1016B7778;
  if (!qword_1016B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7778);
  }

  return result;
}

uint64_t sub_100BB8F28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100BB8FBC;

  return daemon.getter();
}

uint64_t sub_100BB8FBC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BB9A94(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BB9A94(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BB91A0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BB91A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v10 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100BB0618;
  }

  else
  {
    v7 = v3[5];
    v8 = v3[3];

    v6 = sub_100BB92C8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BB92C8()
{
  sub_1000BC4D4(&qword_1016ACE90, &qword_1013DD370);
  v1 = swift_allocObject();
  v0[9] = v1;
  *(v1 + 16) = xmmword_101385D80;
  type metadata accessor for AirTagPairingValidator();
  v0[10] = swift_allocObject();
  swift_defaultActor_initialize();
  v0[11] = type metadata accessor for AirTagPeripheralProvider();
  v0[12] = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for CentralManager();
  v2 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100BB93D0;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100BB93D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_100BB0510;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_100BB94F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100BB94F8()
{
  v1 = v0[3];
  *(v0[12] + 112) = v0[15];
  return _swift_task_switch(sub_100BB9520, v1, 0);
}

uint64_t sub_100BB9520()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[2];

  v7 = sub_100BB9754(v6, v2, v1, v4);
  v8 = sub_100BB9A94(&qword_1016B7838, 255, type metadata accessor for AirTagPairingExecutor);
  *(v3 + 32) = v7;
  *(v3 + 40) = v8;

  v9 = v0[1];
  v10 = v0[9];

  return v9(v10);
}

uint64_t sub_100BB96C0(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_100BB8F28(v2);
}

uint64_t sub_100BB9754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100BB9A94(&unk_1016B7840, 255, type metadata accessor for AirTagPairingValidator);
  v9 = sub_100BB9A94(&qword_1016B2BB8, 255, type metadata accessor for AirTagPeripheralProvider);
  v10 = sub_100BB9A94(&qword_1016ACEA8, 255, type metadata accessor for BeaconStoreActor);
  v11 = type metadata accessor for AirTagPairingExecutor();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  UUID.init()();
  v15 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_state;
  v16 = enum case for PairingExecutorState.idle(_:);
  v17 = type metadata accessor for PairingExecutorState();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *(v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_stateHistory) = _swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_streamProvider;
  v19 = sub_1000BC4D4(&qword_1016ACEB0, &unk_1013DC650);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v14 + v18) = AsyncStreamProvider.init()();
  v22 = (v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingCheckData);
  sub_100408020(v39);
  v23 = v39[7];
  v22[6] = v39[6];
  v22[7] = v23;
  v24 = v39[5];
  v22[4] = v39[4];
  v22[5] = v24;
  v25 = v39[11];
  v22[10] = v39[10];
  v22[11] = v25;
  v26 = v39[9];
  v22[8] = v39[8];
  v22[9] = v26;
  v27 = v39[1];
  *v22 = v39[0];
  v22[1] = v27;
  v28 = v39[3];
  v22[2] = v39[2];
  v22[3] = v28;
  *(v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_crypto) = 0;
  v29 = (v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_service);
  *v29 = 0;
  v29[1] = 0;
  v30 = v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheral;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0;
  v31 = v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconCreationInfo;
  *(v31 + 80) = 0;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *v31 = 0u;
  v32 = v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingConfiguration;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconRecordIdentifier;
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 56))(v14 + v33, 1, 1, v34);
  *(v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_pairingInfo) = a1;
  v35 = (v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_validator);
  *v35 = a2;
  v35[1] = v8;
  v36 = (v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_peripheralProvider);
  *v36 = a3;
  v36[1] = v9;
  v37 = (v14 + OBJC_IVAR____TtC12searchpartyd21AirTagPairingExecutor_beaconStore);
  *v37 = a4;
  v37[1] = v10;
  return v14;
}

uint64_t sub_100BB9A94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100BB9ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000D2A70(a3, v24 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100BB9D48()
{
  v1 = *v0;
  v2 = type metadata accessor for DiscoveryState.Mode(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  v9 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v9 - 8) + 56))(v8, 3, 4, v9);
  v10 = v0[20];
  v11 = swift_allocObject();
  swift_weakInit();
  sub_100BF39E0(v8, v6, type metadata accessor for DiscoveryState.Mode);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_100BF3978(v6, v13 + v12, type metadata accessor for DiscoveryState.Mode);
  *(v13 + ((v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_1000163C4(v8, type metadata accessor for DiscoveryState.Mode);
}

Swift::Int sub_100BB9F80(void **a1)
{
  v2 = *(type metadata accessor for Device() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B3223C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100BEF790(v6);
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for DiscoverySession()
{
  result = qword_1016B78A0;
  if (!qword_1016B78A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BBA074()
{
  result = static Duration.seconds(_:)();
  *&xmmword_1016B7850 = result;
  *(&xmmword_1016B7850 + 1) = v1;
  return result;
}

uint64_t sub_100BBA0A0()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v77 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = &v76 - v6;
  v81 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v7 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v80 = &v76 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Device();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v94 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v76 - v20;
  __chkstk_darwin(v19);
  v23 = &v76 - v22;
  swift_beginAccess();
  v24 = *(*(v1 + 224) + 16);
  v92 = *(v1 + 224);

  v93 = v24;
  if (v24)
  {
    v85 = v21;
    v27 = 0;
    v88 = 0;
    v98 = v15 + 16;
    v79 = (v10 + 48);
    v76 = (v10 + 32);
    v87 = enum case for Feature.FindMy.trustedNowUsesReferenceClock(_:);
    v90 = (v10 + 8);
    v84 = (v15 + 8);
    v89 = (v15 + 32);
    v95 = _swiftEmptyArrayStorage;
    *&v26 = 134218242;
    v78 = v26;
    v83 = v1;
    v86 = v9;
    v96 = v13;
    v28 = v92;
    v100 = v14;
    v91 = v15;
    while (1)
    {
      if (v27 >= *(v28 + 16))
      {
        __break(1u);
        return result;
      }

      v30 = *(v15 + 72);
      v97 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v99 = v27;
      v31 = *(v15 + 16);
      v31(v23, v28 + v97 + v30 * v27, v14);
      if (qword_101694FA8 != -1)
      {
        swift_once();
      }

      v105 = 7.45683732e247;
      v106 = -5.98008217e197;
      SynchronousCache.cachedValue<A>(key:computeBlock:)();
      if (v109 == 1)
      {
        v32 = [objc_opt_self() sharedInstance];
        v33 = [v32 isInternalBuild];

        if (v33)
        {
          if (qword_101694418 != -1)
          {
            swift_once();
          }

          v34 = sub_1000076D4(v81, qword_101696A00);
          swift_beginAccess();
          v35 = v34;
          v36 = v80;
          sub_1000D2A70(v35, v80, &unk_101696900, &unk_10138B1E0);
          if ((*v79)(v36, 1, v9) != 1)
          {
            (*v76)(v13, v36, v9);
            goto LABEL_24;
          }

          sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
        }
      }

      My = type metadata accessor for Feature.FindMy();
      v107 = My;
      v108 = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
      v38 = sub_1000280DC(&v105);
      (*(*(My - 8) + 104))(v38, v87, My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC(&v105);
      if (My)
      {
        sub_100F0FDBC();
        Current = CFAbsoluteTimeGetCurrent();
        if (qword_101694FD8 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_1016B7CA0, &unk_101395220);
        v40 = v88;
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        if (Current - v105 - v106 <= 86400.0)
        {
          v88 = v40;
          v14 = v100;
          v28 = v92;
        }

        else
        {
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v88 = v40;
          v41 = type metadata accessor for TaskPriority();
          v42 = *(v41 - 8);
          v43 = v82;
          (*(v42 + 56))(v82, 1, 1, v41);
          v44 = swift_allocObject();
          *(v44 + 16) = 0;
          *(v44 + 24) = 0;
          v45 = v77;
          sub_1000D2A70(v43, v77, &qword_101698C00, &qword_10138B570);
          LODWORD(v43) = (*(v42 + 48))(v45, 1, v41);

          if (v43 == 1)
          {
            sub_10000B3A8(v45, &qword_101698C00, &qword_10138B570);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v42 + 8))(v45, v41);
          }

          v28 = v92;
          v47 = *(v44 + 16);
          v46 = *(v44 + 24);
          swift_unknownObjectRetain();

          if (v47)
          {
            swift_getObjectType();
            v48 = dispatch thunk of Actor.unownedExecutor.getter();
            v50 = v49;
            swift_unknownObjectRelease();
          }

          else
          {
            v48 = 0;
            v50 = 0;
          }

          v1 = v83;
          sub_10000B3A8(v82, &qword_101698C00, &qword_10138B570);
          v51 = swift_allocObject();
          *(v51 + 16) = &unk_1013DDC18;
          *(v51 + 24) = v44;
          if (v50 | v48)
          {
            v101 = 0;
            v102 = 0;
            v103 = v48;
            v104 = v50;
          }

          v13 = v96;
          v14 = v100;
          swift_task_create();

          v9 = v86;
        }

        Date.init(timeIntervalSinceReferenceDate:)();
        goto LABEL_33;
      }

      Date.init()();
LABEL_24:
      v14 = v100;
LABEL_33:
      Date.timeIntervalSinceReferenceDate.getter();
      v53 = v52;
      (*v90)(v13, v9);
      Device.bleAdvertisementTimestamp.getter();
      v55 = v53 - v54;
      if (v55 >= *(v1 + 376))
      {
        v62 = v23;
        if (qword_101694D50 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_1000076D4(v63, qword_1016B7860);
        v64 = v85;
        v31(v85, v62, v14);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.debug.getter();
        v67 = os_log_type_enabled(v65, v66);
        v68 = v84;
        if (v67)
        {
          v69 = swift_slowAlloc();
          *&v70 = COERCE_DOUBLE(swift_slowAlloc());
          v105 = *&v70;
          *v69 = v78;
          *(v69 + 4) = v55;
          *(v69 + 12) = 2082;
          sub_100BCA23C(&unk_1016B7C90, 255, &type metadata accessor for Device);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v68;
          v74 = v73;
          v29 = *v72;
          (*v72)(v64, v100);
          v75 = sub_1000136BC(v71, v74, &v105);

          *(v69 + 14) = v75;
          _os_log_impl(&_mh_execute_header, v65, v66, "Buffered device is too old! Age:%f seconds. Ignoring %{public}s.", v69, 0x16u);
          sub_100007BAC(v70);
          v1 = v83;

          v14 = v100;
        }

        else
        {

          v29 = *v68;
          (*v68)(v64, v14);
        }

        v15 = v91;
        v23 = v62;
        result = v29(v62, v14);
        v9 = v86;
        v13 = v96;
        v28 = v92;
      }

      else
      {
        v56 = *v89;
        (*v89)(v94, v23, v14);
        v57 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v57;
        v110 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101125680(0, v57[2] + 1, 1);
          v59 = v110;
        }

        v15 = v91;
        v61 = v59[2];
        v60 = v59[3];
        if (v61 >= v60 >> 1)
        {
          sub_101125680(v60 > 1, v61 + 1, 1);
          v59 = v110;
        }

        v59[2] = v61 + 1;
        v95 = v59;
        v14 = v100;
        result = (v56)(v59 + v97 + v61 * v30, v94, v100);
        v13 = v96;
      }

      v27 = v99 + 1;
      if (v93 == v99 + 1)
      {
        goto LABEL_44;
      }
    }
  }

  v95 = _swiftEmptyArrayStorage;
LABEL_44:

  return v95;
}

uint64_t sub_100BBAD88()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = v0[487];

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    swift_asyncLet_begin();

    return _swift_asyncLet_get_throwing(v0 + 82, v4, sub_100BBB010, v0 + 482);
  }

  else
  {
    sub_1000BB27C(0);
    sub_1000BB27C(0);
    sub_1000BB27C(0);
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BBB010(uint64_t a1, uint64_t a2)
{
  *(v3 + 3904) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100BBB330, v3 + 3856);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 1296, a2, sub_100BBB050, v3 + 3856);
  }
}

uint64_t sub_100BBB050(uint64_t a1, uint64_t a2)
{
  *(v3 + 3912) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100BBB4CC, v3 + 3856);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 2576, a2, sub_100BBB090, v3 + 3856);
  }
}

uint64_t sub_100BBB090(uint64_t a1, uint64_t a2)
{
  *(v3 + 3920) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 16, a2, sub_100BBB668, v3 + 3856);
  }

  else
  {
    return _swift_asyncLet_get(v3 + 3216);
  }
}

uint64_t sub_100BBB108(uint64_t a1, uint64_t a2)
{
  *(v3 + 3928) = v2;
  if (v2)
  {
    v4 = sub_100BBB804;
  }

  else
  {
    v4 = sub_100BBB13C;
  }

  return _swift_asyncLet_finish(v3 + 16, a2, v4, v3 + 3856);
}

uint64_t sub_100BBB270()
{
  v1 = *(v0 + 3896);

  v2 = *(v0 + 3896);
  sub_1000BB27C(&unk_1013DDA78);
  sub_1000BB27C(&unk_1013DDA88);
  sub_1000BB27C(&unk_1013DDA98);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100BBB464()
{
  v1 = v0[488];
  v2 = v0[487];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BBB600()
{
  v1 = v0[489];
  v2 = v0[487];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BBB79C()
{
  v1 = v0[490];
  v2 = v0[487];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BBB938()
{
  v1 = v0[491];
  v2 = v0[487];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BBB9A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_1000BC4D4(&qword_1016B7E08, &qword_1013DDB90);
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100BBBA6C, 0, 0);
}

uint64_t sub_100BBBA6C()
{
  v1 = v0[5];
  sub_1000035D0((v0[2] + 240), *(v0[2] + 264));
  type metadata accessor for BubbleManager();
  sub_100C2C9EC();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100274D78;
  v3 = v0[5];
  v4 = v0[2];

  return sub_100BBBB5C(v3);
}

uint64_t sub_100BBBB5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for CancellationError();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v12 = type metadata accessor for Device();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v2[17] = *(v13 + 64);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v14 = type metadata accessor for BubbleManagerDiscovery();
  v2[20] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016B7E10, &qword_1013DDBA0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_1016B7E18, &qword_1013DDBA8);
  v2[24] = v17;
  v18 = *(v17 - 8);
  v2[25] = v18;
  v19 = *(v18 + 64) + 15;
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100BBBE38, v1, 0);
}

uint64_t sub_100BBBE38()
{
  v1 = v0[4];
  v0[27] = type metadata accessor for WorkItemQueue();
  v0[28] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[26];
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    v7 = v0[18];
    v6 = v0[19];
    v8 = v0[14];
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[7];
    sub_100BEF73C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v0[29] = sub_1000076D4(v12, qword_1016B7860);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "DiscoveryService: Start listening to bubble manager updates.", v15, 2u);
    }

    v16 = swift_task_alloc();
    v0[30] = v16;
    *v16 = v0;
    v16[1] = sub_100BBC0A8;
    v17 = v0[4];

    return sub_100BDC778();
  }
}

uint64_t sub_100BBC0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100BBD320;
  }

  else
  {
    v6 = sub_100BBC1D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BBC1D4()
{
  v1 = v0[26];
  v3 = v0[3];
  v2 = v0[4];
  v4 = *(v2 + 208);
  *(v2 + 208) = 0;

  sub_1000BC4D4(&qword_1016B7E08, &qword_1013DDB90);
  AsyncStream.makeAsyncIterator()();
  v6 = sub_100BCA23C(&qword_1016B7BE0, v5, type metadata accessor for DiscoveryService);
  v7 = v0[31];
  v0[32] = v6;
  v0[33] = v7;
  v8 = v0[4];
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_100BBC2F4;
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v12, v8, v6, v13);
}

uint64_t sub_100BBC2F4()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100BBC404, v2, 0);
}

uint64_t sub_100BBC404()
{
  v102 = v0;
  v1 = v0[23];
  v2 = sub_1000BC4D4(&unk_1016B7E20, &qword_1013DDBB8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_18:
    v58 = v0[29];
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "DiscoveryService: Finished listening to bubble manager updates.", v61, 2u);
    }

    v62 = v0[26];
    v64 = v0[22];
    v63 = v0[23];
    v65 = v0[21];
    v67 = v0[18];
    v66 = v0[19];
    v69 = v0[13];
    v68 = v0[14];
    v97 = v0[10];
    v99 = v0[7];

    v70 = v0[1];

    return v70();
  }

  v3 = v0[33];
  v4 = v0[22];
  v5 = *v1;

  sub_100BF3978(v1 + *(v2 + 48), v4, type metadata accessor for BubbleManagerDiscovery);
  static Task<>.checkCancellation()();
  if (v3)
  {
    v6 = v3;
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[24];
    sub_1000163C4(v0[22], type metadata accessor for BubbleManagerDiscovery);
    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v21 = v0[20];
  sub_100BF39E0(v0[22], v0[21], type metadata accessor for BubbleManagerDiscovery);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v0[29];
    v24 = v0[13];
    v23 = v0[14];
    v25 = v0[11];
    v26 = v0[12];
    (*(v26 + 32))(v23, v0[21], v25);
    (*(v26 + 16))(v24, v23, v25);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[22];
    v32 = v0[13];
    v31 = v0[14];
    v33 = v0[11];
    v34 = v0[12];
    if (v29)
    {
      v98 = v0[22];
      v36 = v0[9];
      v35 = v0[10];
      v93 = v0[8];
      v37 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v101 = v95;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      v94 = v28;
      Identifier.id.getter();
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v96 = v31;
      v40 = v39;
      (*(v36 + 8))(v35, v93);
      v41 = *(v34 + 8);
      v41(v32, v33);
      v42 = sub_1000136BC(v38, v40, &v101);

      *(v37 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v27, v94, "Lost device %{private,mask.hash}s", v37, 0x16u);
      sub_100007BAC(v95);

      v41(v96, v33);
      v43 = v98;
    }

    else
    {

      v72 = *(v34 + 8);
      v72(v32, v33);
      v72(v31, v33);
      v43 = v30;
    }

    sub_1000163C4(v43, type metadata accessor for BubbleManagerDiscovery);
    v0[33] = 0;
    v73 = v0[32];
    v74 = v0[4];
    v75 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v76 = swift_task_alloc();
    v0[34] = v76;
    *v76 = v0;
    v76[1] = sub_100BBC2F4;
    v77 = v0[26];
    v78 = v0[23];
    v79 = v0[24];

    return AsyncStream.Iterator.next(isolation:)(v78, v74, v73, v79);
  }

  else
  {
    v51 = v0[27];
    v50 = v0[28];
    v52 = *(v0[16] + 32);
    v52(v0[19], v0[21], v0[15]);
    if (static WorkItemQueue.called(on:)())
    {
      sub_100BEF73C();
      v6 = swift_allocError();
      *v53 = 1;
      swift_willThrow();
      v55 = v0[25];
      v54 = v0[26];
      v56 = v0[24];
      v57 = v0[22];
      (*(v0[16] + 8))(v0[19], v0[15]);
      sub_1000163C4(v57, type metadata accessor for BubbleManagerDiscovery);
      (*(v55 + 8))(v54, v56);
LABEL_5:
      v10 = v0[7];
      v11 = v0[5];
      v0[2] = v6;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v12 = swift_dynamicCast();
      v13 = v0[29];
      if (v12)
      {

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "DiscoveryService: cancelled bubble manager updates listener.", v16, 2u);
        }

        v17 = v0[6];
        v18 = v0[7];
        v19 = v0[5];

        (*(v17 + 8))(v18, v19);
        v20 = v0[2];
      }

      else
      {
        v44 = v0[2];

        swift_errorRetain();
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138543362;
          swift_errorRetain();
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v49;
          *v48 = v49;
          _os_log_impl(&_mh_execute_header, v45, v46, "Failure in bubble manager updates stream: %{public}@", v47, 0xCu);
          sub_10000B3A8(v48, &qword_10169BB30, &unk_10138B3C0);

          goto LABEL_18;
        }
      }

      goto LABEL_18;
    }

    v80 = v0[18];
    v81 = v0[19];
    v83 = v0[16];
    v82 = v0[17];
    v84 = v0[15];
    v85 = v0[4];
    v86 = swift_allocObject();
    swift_weakInit();
    (*(v83 + 16))(v80, v81, v84);
    v87 = (*(v83 + 80) + 24) & ~*(v83 + 80);
    v88 = swift_allocObject();
    v0[35] = v88;
    *(v88 + 16) = v86;
    v52(v88 + v87, v80, v84);
    v89 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
    v100 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);
    v90 = swift_task_alloc();
    v0[36] = v90;
    v91 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
    *v90 = v0;
    v90[1] = sub_100BBCD68;
    v92 = v0[28];

    return (v100)(v0 + 38, &unk_1013DDBC8, v88, v91);
  }
}

uint64_t sub_100BBCD68()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v9 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_100BBCF84;
  }

  else
  {
    v6 = *(v2 + 280);
    v7 = *(v2 + 32);

    v5 = sub_100BBCE90;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BBCE90()
{
  v1 = v0[22];
  (*(v0[16] + 8))(v0[19], v0[15]);
  sub_1000163C4(v1, type metadata accessor for BubbleManagerDiscovery);
  v0[33] = v0[37];
  v2 = v0[32];
  v3 = v0[4];
  v4 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_100BBC2F4;
  v6 = v0[26];
  v7 = v0[23];
  v8 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v7, v3, v2, v8);
}

uint64_t sub_100BBCF84()
{
  v1 = v0[35];

  v2 = v0[37];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v0[22];
  (*(v0[16] + 8))(v0[19], v0[15]);
  sub_1000163C4(v6, type metadata accessor for BubbleManagerDiscovery);
  (*(v4 + 8))(v3, v5);
  v0[2] = v2;
  v7 = v0[7];
  v8 = v0[5];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v9 = swift_dynamicCast();
  v10 = v0[29];
  if (v9)
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "DiscoveryService: cancelled bubble manager updates listener.", v13, 2u);
    }

    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];

    (*(v15 + 8))(v14, v16);
    v17 = v0[2];
  }

  else
  {
    v18 = v0[2];

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failure in bubble manager updates stream: %{public}@", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_9;
    }
  }

LABEL_9:
  v24 = v0[29];
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "DiscoveryService: Finished listening to bubble manager updates.", v27, 2u);
  }

  v28 = v0[26];
  v30 = v0[22];
  v29 = v0[23];
  v31 = v0[21];
  v33 = v0[18];
  v32 = v0[19];
  v35 = v0[13];
  v34 = v0[14];
  v38 = v0[10];
  v39 = v0[7];

  v36 = v0[1];

  return v36();
}

uint64_t sub_100BBD320()
{
  v0[2] = v0[31];
  v1 = v0[7];
  v2 = v0[5];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v3 = swift_dynamicCast();
  v4 = v0[29];
  if (v3)
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "DiscoveryService: cancelled bubble manager updates listener.", v7, 2u);
    }

    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];

    (*(v9 + 8))(v8, v10);
    v11 = v0[2];
  }

  else
  {
    v12 = v0[2];

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failure in bubble manager updates stream: %{public}@", v15, 0xCu);
      sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_9;
    }
  }

LABEL_9:
  v18 = v0[29];
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "DiscoveryService: Finished listening to bubble manager updates.", v21, 2u);
  }

  v22 = v0[26];
  v24 = v0[22];
  v23 = v0[23];
  v25 = v0[21];
  v27 = v0[18];
  v26 = v0[19];
  v29 = v0[13];
  v28 = v0[14];
  v32 = v0[10];
  v33 = v0[7];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100BBD65C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBD6EC();
}

uint64_t sub_100BBD6EC()
{
  v1[7] = v0;
  v2 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = type metadata accessor for Device();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for DeviceChange();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_1016A06D8, &unk_1013A37C0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720);
  v1[21] = v12;
  v13 = *(v12 - 8);
  v1[22] = v13;
  v14 = *(v13 + 64) + 15;
  v1[23] = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_1016B7C80, &unk_1013A37D0);
  v1[24] = v15;
  v16 = *(v15 - 8);
  v1[25] = v16;
  v17 = *(v16 + 64) + 15;
  v1[26] = swift_task_alloc();
  v18 = type metadata accessor for RSSIValue();
  v1[27] = v18;
  v19 = *(v18 - 8);
  v1[28] = v19;
  v20 = *(v19 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_100BBDA04, v0, 0);
}

uint64_t sub_100BBDA04()
{
  v1 = v0[7];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v5 = v0[29];
    v4 = v0[30];
    v6 = v0[26];
    v7 = v0[23];
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[18];
    v12 = v0[14];
    v11 = v0[15];
    v15 = v0[11];
    v16 = v0[10];

    v13 = v0[1];

    return v13();
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v0[31] = qword_10177B348;

    return _swift_task_switch(sub_100BBDBC0, 0, 0);
  }
}

uint64_t sub_100BBDBC0()
{
  v1 = *(v0 + 248);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_100BBDC84;
  v4 = *(v0 + 248);

  return unsafeBlocking<A>(_:)(v0 + 40, sub_1000DFF78, v4, &type metadata for Configuration);
}

uint64_t sub_100BBDC84()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100BBDD9C, 0, 0);
}

uint64_t sub_100BBDD9C()
{
  v1 = v0[7];
  v0[33] = v0[5];
  return _swift_task_switch(sub_100BBDDC0, v1, 0);
}

uint64_t sub_100BBDDC0()
{
  v33 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = sub_101074FFC(v0[33]);

  *v1 = v4;
  (*(v3 + 104))(v1, enum case for RSSIValue.rssi(_:), v2);
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[28];
  v9 = type metadata accessor for Logger();
  v0[34] = sub_1000076D4(v9, qword_1016B7860);
  (*(v8 + 16))(v5, v6, v7);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[27];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v16 = 136315138;
    sub_100BCA23C(&unk_1016B8D70, 255, &type metadata accessor for RSSIValue);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1000136BC(v17, v19, &v32);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "Start buffered scanner with %s", v16, 0xCu);
    sub_100007BAC(v31);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  v0[35] = v20;
  v22 = v0[7];
  v24 = *(v22 + 280);
  v23 = *(v22 + 288);
  ObjectType = swift_getObjectType();
  v26 = async function pointer to dispatch thunk of CBDiscoveryProtocol.registerProximityPairingBuffer(rssiThreshold:)[1];
  v27 = swift_task_alloc();
  v0[36] = v27;
  *v27 = v0;
  v27[1] = sub_100BBE0A4;
  v28 = v0[30];
  v29 = v0[23];

  return dispatch thunk of CBDiscoveryProtocol.registerProximityPairingBuffer(rssiThreshold:)(v29, v28, ObjectType, v23);
}

uint64_t sub_100BBE0A4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_100BBEC20;
  }

  else
  {
    v6 = sub_100BBE1D0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BBE1D0()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_100BCA23C(&qword_1016B7BE0, v5, type metadata accessor for DiscoveryService);
  v0[38] = v6;
  v7 = v0[7];
  v8 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v9 = swift_task_alloc();
  v0[39] = v9;
  *v9 = v0;
  v9[1] = sub_100BBE2F0;
  v10 = v0[26];
  v11 = v0[24];
  v12 = v0[20];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v12, v7, v6, v11, v0 + 6);
}

uint64_t sub_100BBE2F0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_100BBED30;
  }

  else
  {
    v5 = sub_100BBE408;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BBE408()
{
  v90 = v0;
  v1 = v0[20];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    v2 = v0[35];
    v4 = v0[29];
    v3 = v0[30];
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[23];
    v8 = v0[19];
    v80 = v0[18];
    v81 = v0[15];
    v82 = v0[14];
    v83 = v0[11];
    v86 = v0[10];
    (*(v0[25] + 8))(v0[26], v0[24]);
    v2(v3, v5);

    v9 = v0[1];
LABEL_5:

    return v9();
  }

  v10 = v0[40];
  sub_100BF3978(v1, v0[19], &type metadata accessor for DeviceChange);
  static Task<>.checkCancellation()();
  if (v10)
  {
    v11 = v0[35];
    v12 = v0[30];
    v13 = v0[27];
    v14 = v0[28];
    v16 = v0[25];
    v15 = v0[26];
    v17 = v0[24];
    sub_1000163C4(v0[19], &type metadata accessor for DeviceChange);
    (*(v16 + 8))(v15, v17);
    v11(v12, v13);
    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[26];
    v21 = v0[23];
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];
    v26 = v0[14];
    v25 = v0[15];
    v84 = v0[11];
    v87 = v0[10];

    v9 = v0[1];
    goto LABEL_5;
  }

  v28 = v0[16];
  sub_100BF39E0(v0[19], v0[18], &type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = v0[34];
  v31 = v0[18];
  if (!EnumCaseMultiPayload)
  {
    v51 = *v31;

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v0[12];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v89[0] = v56;
      *v55 = 134218242;
      *(v55 + 4) = *(v51 + 16);

      *(v55 + 12) = 2080;
      v57 = Array.description.getter();
      v59 = sub_1000136BC(v57, v58, v89);

      *(v55 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Buffered devices[%ld]: %s", v55, 0x16u);
      sub_100007BAC(v56);
    }

    else
    {
    }

    v71 = v0[19];
    v72 = v0[7];
    swift_beginAccess();
    sub_10039B54C(v51);
    swift_endAccess();
    v69 = v71;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v61 = v0[10];
    v60 = v0[11];
    v62 = v0[8];
    v63 = v0[9];
    (*(v63 + 32))(v60, v31, v62);
    (*(v63 + 16))(v61, v60, v62);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v64 = os_log_type_enabled(v36, v37);
    v39 = v0[19];
    v40 = v0[10];
    v41 = v0[11];
    v43 = v0[8];
    v42 = v0[9];
    if (v64)
    {
      v88 = v0[19];
      v44 = swift_slowAlloc();
      v85 = v41;
      v89[0] = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136F130, v89);
      *(v44 + 12) = 2082;
      sub_1000041A4(&unk_1016C21E0, &unk_1016B7C30, &qword_1013DBFD0);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v48 = *(v42 + 8);
      v48(v40, v43);
      v68 = sub_1000136BC(v65, v67, v89);

      *(v44 + 14) = v68;
      v50 = "%s Unexpected lost device here %{public}s";
      goto LABEL_16;
    }

LABEL_17:

    v70 = *(v42 + 8);
    v70(v40, v43);
    v70(v41, v43);
    v69 = v39;
    goto LABEL_20;
  }

  v33 = v0[14];
  v32 = v0[15];
  v34 = v0[12];
  v35 = v0[13];
  (*(v35 + 32))(v32, v31, v34);
  (*(v35 + 16))(v33, v32, v34);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[19];
  v40 = v0[14];
  v41 = v0[15];
  v43 = v0[12];
  v42 = v0[13];
  if (!v38)
  {
    goto LABEL_17;
  }

  v88 = v0[19];
  v44 = swift_slowAlloc();
  v85 = v41;
  v89[0] = swift_slowAlloc();
  *v44 = 136315394;
  *(v44 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136F130, v89);
  *(v44 + 12) = 2082;
  sub_100BCA23C(&unk_1016B7C90, 255, &type metadata accessor for Device);
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v47 = v46;
  v48 = *(v42 + 8);
  v48(v40, v43);
  v49 = sub_1000136BC(v45, v47, v89);

  *(v44 + 14) = v49;
  v50 = "%s Unexpected discovered device %{public}s";
LABEL_16:
  _os_log_impl(&_mh_execute_header, v36, v37, v50, v44, 0x16u);
  swift_arrayDestroy();

  v48(v85, v43);
  v69 = v88;
LABEL_20:
  sub_1000163C4(v69, &type metadata accessor for DeviceChange);
  v73 = v0[38];
  v74 = v0[7];
  v75 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v76 = swift_task_alloc();
  v0[39] = v76;
  *v76 = v0;
  v76[1] = sub_100BBE2F0;
  v77 = v0[26];
  v78 = v0[24];
  v79 = v0[20];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v79, v74, v73, v78, v0 + 6);
}

uint64_t sub_100BBEC20()
{
  v1 = *(v0 + 224) + 8;
  (*(v0 + 280))(*(v0 + 240), *(v0 + 216));
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 88);
  v14 = *(v0 + 80);
  v15 = *(v0 + 296);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100BBED30()
{
  v1 = v0[35];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1(v2, v3);
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[26];
  v8 = v0[23];
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  v17 = v0[10];
  v18 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100BBEE60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBEEF0();
}

uint64_t sub_100BBEEF0()
{
  v1[9] = v0;
  v2 = sub_1000BC4D4(&qword_1016B7DF0, &qword_1013DDB50);
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016B7DF8, &qword_1013DDB58);
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100BBF024, v0, 0);
}

uint64_t sub_100BBF024()
{
  v1 = v0[9];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = v0[15];
    v4 = v0[12];
    sub_100BEF73C();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[16] = sub_1000076D4(v8, qword_1016B7860);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Start listening for screen state changes.", v11, 2u);
    }

    v12 = v0[9];

    v0[17] = *(v12 + 296);
    v13 = *(v12 + 304);
    swift_getObjectType();
    v14 = sub_100BCA23C(&qword_1016B7E00, 255, type metadata accessor for SystemMonitorService);
    v0[18] = v14;
    v0[19] = *(v14 + 144);
    v0[20] = (v14 + 144) & 0xFFFFFFFFFFFFLL | 0x62B9000000000000;
    v15 = *(v13 + 8);
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BBF264, v17, v16);
  }
}

uint64_t sub_100BBF264()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[12];
  v6 = v0[9];
  v7 = type metadata accessor for SystemMonitorService();
  v2(v7, v3);

  return _swift_task_switch(sub_100BBF2F8, v6, 0);
}

uint64_t sub_100BBF2F8()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = sub_100BCA23C(&qword_1016B7BE0, v5, type metadata accessor for DiscoveryService);
  v0[21] = v6;
  v0[22] = 0;
  v7 = v0[9];
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_100015994;
  v10 = v0[15];
  v11 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 6, v7, v6, v11);
}

uint64_t sub_100BBF414()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *v0;

  v1[22] = v1[24];
  v4 = v1[21];
  v5 = v1[9];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v1[23] = v7;
  *v7 = v3;
  v7[1] = sub_100015994;
  v8 = v1[15];
  v9 = v1[13];

  return AsyncStream.Iterator.next(isolation:)(v1 + 6, v5, v4, v9);
}

uint64_t sub_100BBF5C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBF654();
}

uint64_t sub_100BBF654()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v1[7] = v2;
  v1[8] = *(v2 + 64);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DiscoveryState(0);
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v1[15] = v6;
  v7 = *(v6 - 8);
  v1[16] = v7;
  v1[17] = *(v7 + 64);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v11 = type metadata accessor for Device();
  v1[24] = v11;
  v12 = *(v11 - 8);
  v1[25] = v12;
  v13 = *(v12 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v14 = type metadata accessor for DeviceChange();
  v1[28] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v16 = *(*(sub_1000BC4D4(&qword_1016B7DC8, &qword_1013DDB18) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_1016B7DD0, &qword_1013DDB20);
  v1[32] = v17;
  v18 = *(v17 - 8);
  v1[33] = v18;
  v19 = *(v18 + 64) + 15;
  v1[34] = swift_task_alloc();
  v20 = sub_1000BC4D4(&qword_1016B7DD8, &qword_1013DDB28);
  v1[35] = v20;
  v21 = *(v20 - 8);
  v1[36] = v21;
  v22 = *(v21 + 64) + 15;
  v1[37] = swift_task_alloc();

  return _swift_task_switch(sub_100BBFA44, v0, 0);
}

uint64_t sub_100BBFA44()
{
  v32 = v0;
  v1 = v0[5];
  type metadata accessor for WorkItemQueue();
  v0[38] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[37];
    v3 = v0[34];
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[29];
    v7 = v0[26];
    v8 = v0[27];
    v23 = v0[23];
    v24 = v0[20];
    v25 = v0[19];
    v26 = v0[18];
    v27 = v0[14];
    v28 = v0[13];
    v29 = v0[10];
    v30 = v0[9];
    sub_100BEF73C();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v0[39] = sub_1000076D4(v12, qword_1016B7860);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136F110, &v31);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: subscribed to xpc event.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v17 = v0[5];
    v19 = *(v17 + 328);
    v18 = *(v17 + 336);
    swift_getObjectType();
    v20 = *(v18 + 8);
    v22 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BBFD38, v22, v21);
  }
}

uint64_t sub_100BBFD38()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 40);
  type metadata accessor for CBDiscovery();
  static CBDiscovery.subscribeToXPCDiscoveryEvents(for:)();

  return _swift_task_switch(sub_100BBFDD8, v2, 0);
}

uint64_t sub_100BBFDD8()
{
  v1 = v0[39];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DiscoveryService: start listening to BT XPC events.", v4, 2u);
  }

  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];

  AsyncStream.makeAsyncIterator()();
  v9 = sub_100BCA23C(&qword_1016B7BE0, v8, type metadata accessor for DiscoveryService);
  v0[40] = v9;
  v0[41] = 0;
  v10 = v0[5];
  v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v12 = swift_task_alloc();
  v0[42] = v12;
  *v12 = v0;
  v12[1] = sub_100BBFF48;
  v13 = v0[34];
  v14 = v0[31];
  v15 = v0[32];

  return AsyncStream.Iterator.next(isolation:)(v14, v10, v9, v15);
}

uint64_t sub_100BBFF48()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100BC0058, v2, 0);
}

uint64_t sub_100BC0058()
{
  v127 = v0;
  v1 = v0[31];
  v2 = sub_1000BC4D4(&unk_1016B7DE0, &qword_1013DDB30);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[33] + 8))(v0[34], v0[32]);
LABEL_13:
    v45 = v0[39];
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "DiscoveryService: finished listening to BT XPC events.", v48, 2u);
    }

    v49 = v0[36];
    v50 = v0[37];
    v52 = v0[34];
    v51 = v0[35];
    v53 = v0[30];
    v54 = v0[31];
    v55 = v0[29];
    v56 = v0[27];
    v106 = v0[26];
    v107 = v0[23];
    v108 = v0[20];
    v109 = v0[19];
    v112 = v0[18];
    v116 = v0[14];
    logb = v0[13];
    v122 = v0[10];
    v124 = v0[9];

    (*(v49 + 8))(v50, v51);

    v57 = v0[1];

    return v57();
  }

  v3 = v0[41];
  v4 = v0[30];
  v5 = *v1;

  sub_100BF3978(v1 + *(v2 + 48), v4, &type metadata accessor for DeviceChange);
  static Task<>.checkCancellation()();
  v0[43] = v3;
  v6 = v0[39];
  if (v3)
  {
    v8 = v0[33];
    v7 = v0[34];
    v9 = v0[32];
    sub_1000163C4(v0[30], &type metadata accessor for DeviceChange);
    (*(v8 + 8))(v7, v9);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error in listening to BT XPC events: %{public}@", v12, 0xCu);
      sub_10000B3A8(v13, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "DiscoveryService: BT XPC event received.", v17, 2u);
  }

  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[28];

  sub_100BF39E0(v18, v19, &type metadata accessor for DeviceChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = v0[39];
  v23 = v0[29];
  if (!EnumCaseMultiPayload)
  {
    v59 = *v23;

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[30];
    if (v62)
    {
      v64 = v0[24];
      v65 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v65 = 136315394;
      *(v65 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136F110, v126);
      *(v65 + 12) = 2080;
      v66 = Array.description.getter();
      v68 = v67;

      v69 = sub_1000136BC(v66, v68, v126);

      *(v65 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v60, v61, "%s Unexpected buffered devices %s!", v65, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v86 = v63;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = v0[26];
    v24 = v0[27];
    v26 = v0[24];
    v27 = v0[25];
    (*(v27 + 32))(v24, v23, v26);
    (*(v27 + 16))(v25, v24, v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[25];
    v31 = v0[26];
    v33 = v0[24];
    if (v30)
    {
      v34 = v0[22];
      v35 = v0[23];
      v36 = v0[20];
      v111 = v0[21];
      v123 = v29;
      v38 = v0[15];
      v37 = v0[16];
      v115 = v0[24];
      v39 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v126[0] = v121;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      loga = v28;
      Device.id.getter();
      Identifier.id.getter();
      (*(v37 + 8))(v36, v38);
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v34 + 8))(v35, v111);
      v43 = *(v32 + 8);
      v43(v31, v115);
      v44 = sub_1000136BC(v40, v42, v126);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, loga, v123, "BT XPC event discovered: %{private,mask.hash}s.", v39, 0x16u);
      sub_100007BAC(v121);
    }

    else
    {

      v43 = *(v32 + 8);
      v43(v31, v33);
    }

    v0[44] = v43;
    v85 = *(v0[5] + 152);
    v0[45] = v85;

    return _swift_task_switch(sub_100BC0C5C, v85, 0);
  }

  v71 = v0[18];
  v70 = v0[19];
  v72 = v0[15];
  v73 = v0[16];
  log = *(v73 + 32);
  (log)(v70, v23, v72);
  v117 = *(v73 + 16);
  v117(v71, v70, v72);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.debug.getter();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v0[18];
  v79 = v0[15];
  v78 = v0[16];
  if (v76)
  {
    v80 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v126[0] = v113;
    *v80 = 141558275;
    *(v80 + 4) = 1752392040;
    *(v80 + 12) = 2081;
    sub_1000041A4(&unk_1016C21E0, &unk_1016B7C30, &qword_1013DBFD0);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    v125 = *(v78 + 8);
    v125(v77, v79);
    v84 = sub_1000136BC(v81, v83, v126);

    *(v80 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v74, v75, "BT XPC event lost: %{private,mask.hash}s.", v80, 0x16u);
    sub_100007BAC(v113);
  }

  else
  {

    v125 = *(v78 + 8);
    v125(v77, v79);
  }

  sub_1000035D0((v0[5] + 240), *(v0[5] + 264));
  type metadata accessor for BubbleManager();
  if ((sub_100C2C978() & 1) == 0)
  {
    v97 = v0[30];
    v98 = v0[16] + 8;
    v125(v0[19], v0[15]);
    v86 = v97;
LABEL_32:
    sub_1000163C4(v86, &type metadata accessor for DeviceChange);
    goto LABEL_33;
  }

  v110 = v0[38];
  v114 = v0[30];
  v87 = v0[19];
  v88 = v0[20];
  v89 = v0[16];
  v90 = v0[17];
  v91 = v0[15];
  v93 = v0[5];
  v92 = v0[6];
  v94 = swift_allocObject();
  swift_weakInit();
  v117(v88, v87, v91);
  v95 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  (log)(v96 + v95, v88, v91);
  *(v96 + ((v90 + v95 + 7) & 0xFFFFFFFFFFFFFFF8)) = v92;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v125(v87, v91);
  sub_1000163C4(v114, &type metadata accessor for DeviceChange);

LABEL_33:
  v0[41] = v0[43];
  v99 = v0[40];
  v100 = v0[5];
  v101 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v102 = swift_task_alloc();
  v0[42] = v102;
  *v102 = v0;
  v102[1] = sub_100BBFF48;
  v103 = v0[34];
  v104 = v0[31];
  v105 = v0[32];

  return AsyncStream.Iterator.next(isolation:)(v104, v100, v99, v105);
}

uint64_t sub_100BC0C5C()
{
  v1 = v0[45];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);

  if (v3)
  {
    v7 = 0;
    while (v7 < *(v2 + 16))
    {
      v9 = v0[13];
      v8 = v0[14];
      v10 = v0[11];
      sub_100BF39E0(v2 + ((*(v0[12] + 80) + 32) & ~*(v0[12] + 80)) + *(v0[12] + 72) * v7, v8, type metadata accessor for DiscoveryState);
      sub_100BF3978(v8, v9, type metadata accessor for DiscoveryState);
      if (!swift_getEnumCaseMultiPayload())
      {
        v11 = v0[5];
        v13 = v0[13];

        sub_1000163C4(v13, type metadata accessor for DiscoveryState);
        v12 = sub_100BC0DEC;
        goto LABEL_8;
      }

      ++v7;
      v4 = sub_1000163C4(v0[13], type metadata accessor for DiscoveryState);
      if (v3 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v11 = v0[5];

    v12 = sub_100BC0EE4;
LABEL_8:
    v4 = v12;
    v5 = v11;
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100BC0DEC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200) + 8;
  (*(v0 + 352))(*(v0 + 216), *(v0 + 192));
  sub_1000163C4(v1, &type metadata accessor for DeviceChange);
  *(v0 + 328) = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 40);
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  *(v0 + 336) = v6;
  *v6 = v0;
  v6[1] = sub_100BBFF48;
  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);

  return AsyncStream.Iterator.next(isolation:)(v8, v4, v3, v9);
}

uint64_t sub_100BC0EE4()
{
  v26 = v0[44];
  v27 = v0[30];
  v23 = v0[38];
  v24 = v0[27];
  v25 = v0[24];
  v1 = v0[20];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v21 = v0[25];
  v22 = v0[6];
  Device.id.getter();
  Identifier.id.getter();
  (*(v2 + 8))(v1, v3);
  v9 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v9 - 8) + 56))(v4, 0, 4, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_100BF39E0(v4, v5, type metadata accessor for DiscoveryState.Mode);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_100BF3978(v5, v12 + v11, type metadata accessor for DiscoveryState.Mode);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_1000163C4(v4, type metadata accessor for DiscoveryState.Mode);
  v26(v24, v25);
  sub_1000163C4(v27, &type metadata accessor for DeviceChange);

  v0[41] = v0[43];
  v13 = v0[40];
  v14 = v0[5];
  v15 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v16 = swift_task_alloc();
  v0[42] = v16;
  *v16 = v0;
  v16[1] = sub_100BBFF48;
  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[32];

  return AsyncStream.Iterator.next(isolation:)(v18, v14, v13, v19);
}

uint64_t sub_100BC1190(uint64_t a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100BC11D4, a2, 0);
}

uint64_t sub_100BC11D4()
{
  v1 = v0[3];
  v2 = *(v0[2] + 136);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BC12C0(uint64_t a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a2;
  return _swift_task_switch(sub_100BC1304, a2, 0);
}

uint64_t sub_100BC1304()
{
  v1 = v0[3];
  v2 = *(v0[2] + 160);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[1];

  return v5();
}

void *sub_100BC13F0()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[19];

  v6 = v0[20];

  v7 = v0[21];

  v8 = v0[22];

  v9 = v0[23];

  v10 = v0[24];

  v11 = v0[25];

  v12 = v0[26];

  v13 = v0[27];

  v14 = v0[28];

  v15 = v0[29];

  sub_100007BAC(v0 + 30);
  v16 = v0[35];
  swift_unknownObjectRelease();
  v17 = v0[37];
  swift_unknownObjectRelease();
  v18 = v0[39];
  swift_unknownObjectRelease();
  v19 = v0[41];
  swift_unknownObjectRelease();
  v20 = v0[50];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100BC14B8()
{
  sub_100BC13F0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100BC1508(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100BC1528(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t sub_100BC1570(uint64_t a1, uint64_t a2)
{
  result = sub_100BCA23C(&qword_1016B7BE0, a2, type metadata accessor for DiscoveryService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100BC15C8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DiscoveryService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_100BC1670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for DiscoveryService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_100BC1734(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DiscoveryService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_100BC17DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBAD68();
}

uint64_t sub_100BC1868()
{
  v1 = *v0;
  type metadata accessor for DiscoveryService();
  sub_100BCA23C(&unk_1016B7D70, v2, type metadata accessor for DiscoveryService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100BC18D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BC18F0, 0, 0);
}

uint64_t sub_100BC18F0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v4 = *(Strong + 128);
    v0[8] = v4;
    v5 = swift_allocObject();
    v0[9] = v5;
    swift_weakInit();
    v6 = swift_allocObject();
    v0[10] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;

    return _swift_task_switch(sub_100BC1A24, v4, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100BC1A24()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *(v3 + 112) = &unk_1013DDB08;
  *(v3 + 120) = v2;

  sub_1000BB27C(v4);

  return _swift_task_switch(sub_100BF4444, 0, 0);
}

uint64_t sub_100BC1AE0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for UserSessionState();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BC1BAC, 0, 0);
}

uint64_t sub_100BC1BAC()
{
  v31 = v0;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016B7860);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[10];
  if (v9)
  {
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 136446210;
    v6(v12, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1000136BC(v15, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "New user session state = %{public}s", v14, 0xCu);
    sub_100007BAC(v29);
  }

  else
  {
    v19 = v0[7];
    v20 = v0[8];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = v0[5];
    v24 = *(Strong + 144);

    AsyncStreamProvider.yield(value:transaction:)();
  }

  v26 = v0[9];
  v25 = v0[10];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100BC1E54()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 216);
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    v6 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
    v0[10] = v6;
    *v5 = v0;
    v5[1] = sub_100BC1FA8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100BF21C4, v3, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100BC1FA8()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_100BC20A4, 0, 0);
}

uint64_t sub_100BC20A4()
{
  v1 = v0[5];
  v0[11] = v1;
  v0[6] = v1;
  v2 = async function pointer to Sequence.asyncForEach(_:)[1];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60);
  *v3 = v0;
  v3[1] = sub_100BC2198;
  v5 = v0[10];

  return Sequence.asyncForEach(_:)(&unk_1013DD908, 0, v5, v4);
}

uint64_t sub_100BC2198()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 88);

    return _swift_task_switch(sub_1003A24D8, 0, 0);
  }
}

uint64_t sub_100BC22D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = async function pointer to XPCSession.proxy(errorHandler:)[1];
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_100BC2388;

  return XPCSession.proxy(errorHandler:)(v1 + 16, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC2388()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100BC2484, 0, 0);
}

uint64_t sub_100BC2484()
{
  if (*(v0 + 16))
  {
    [*(v0 + 16) accessoryDetectedForPairing];
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BC2500(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016B7860);
  v27 = *(v3 + 16);
  v27(v9, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v7;
    v14 = v13;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v14 = 136315651;
    *(v14 + 4) = sub_1000136BC(0xD000000000000021, 0x800000010136F000, &v30);
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = a1;
    v18 = v17;
    (*(v3 + 8))(v9, v2);
    v19 = sub_1000136BC(v15, v18, &v30);
    a1 = v16;

    *(v14 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s. newIdentifier = %{private,mask.hash}s", v14, 0x20u);
    swift_arrayDestroy();

    v7 = v26;
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  v20 = *(v29 + 136);
  v21 = swift_allocObject();
  swift_weakInit();
  v27(v7, a1, v2);
  v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v3 + 32))(v23 + v22, v7, v2);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BC28D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_100BC28F8, 0, 0);
}

uint64_t sub_100BC28F8()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 216);
    v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v5 = swift_task_alloc();
    v0[10] = v5;
    v6 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
    v0[11] = v6;
    *v5 = v0;
    v5[1] = sub_100BC2A4C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100BF443C, v3, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100BC2A4C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_100BC2B48, 0, 0);
}

uint64_t sub_100BC2B48()
{
  v1 = v0[8];
  v2 = v0[5];
  v0[12] = v2;
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to Sequence.asyncForEach(_:)[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60);
  *v5 = v0;
  v5[1] = sub_100BC2C5C;
  v7 = v0[11];

  return Sequence.asyncForEach(_:)(&unk_1013DD940, v3, v7, v6);
}

uint64_t sub_100BC2C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 104);

    return _swift_task_switch(sub_1003C36A0, 0, 0);
  }
}

uint64_t sub_100BC2DA0(uint64_t *a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v3 = *a1;
  v4 = async function pointer to XPCSession.proxy(errorHandler:)[1];
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_100BC2E58;

  return XPCSession.proxy(errorHandler:)(v2 + 16, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC2E58()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100BC2F54, 0, 0);
}

uint64_t sub_100BC2F54()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[2];
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v1 notifyPairingAccessoryChanged:isa];
    swift_unknownObjectRelease_n();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BC2FF0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_100BC3010, v1, 0);
}

uint64_t sub_100BC3010()
{
  v1 = *(*(v0 + 48) + 128);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_100BC3034, v1, 0);
}

uint64_t sub_100BC3034()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC12searchpartyd23UserSessionStateManager_state;
  swift_beginAccess();
  v4 = type metadata accessor for UserSessionState();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100BC3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to UserSessionListener.stream()[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for DiscoveryService();
  *v7 = v3;
  v7[1] = sub_100014744;

  return UserSessionListener.stream()(a1, v8, a3);
}

uint64_t sub_100BC31B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  v8 = __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016B7860);
  sub_1000D2A70(a1, v10, &qword_1016980D0, &unk_10138F3B0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = a1;
    *&v32 = v28;
    *v14 = 136315394;
    *(v14 + 4) = sub_1000136BC(0xD000000000000032, 0x800000010136F030, &v32);
    *(v14 + 12) = 2082;
    sub_1000D2A70(v10, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1016980D0, &unk_10138F3B0);
    v15 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = String.init<A>(describing:)();
    v17 = v7;
    v18 = a2;
    v20 = v19;
    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    v21 = sub_1000136BC(v16, v20, &v32);
    a2 = v18;
    v7 = v17;

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s for %{public}s.", v14, 0x16u);
    swift_arrayDestroy();
    a1 = v29;
  }

  else
  {

    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    v15 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v22 = *(v30 + 136);
  v23 = swift_allocObject();
  swift_weakInit();
  sub_1000D2A70(a2, &v32, &qword_1016A6A40, &qword_1013DD950);
  sub_1000D2A70(a1, v15, &qword_1016980D0, &unk_10138F3B0);
  v24 = (*(v31 + 80) + 65) & ~*(v31 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = v33[0];
  *(v25 + 24) = v32;
  *(v25 + 40) = v26;
  *(v25 + 49) = *(v33 + 9);
  sub_1000D2AD8(v15, v25 + v24, &qword_1016980D0, &unk_10138F3B0);
  *(v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BC35CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v3[37] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[41] = v5;
  v6 = *(v5 - 8);
  v3[42] = v6;
  v7 = *(v6 + 64) + 15;
  v3[43] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016B7D80, &unk_1013B52B0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v9 = type metadata accessor for PairingSuccessResult();
  v3[45] = v9;
  v10 = *(v9 - 8);
  v3[46] = v10;
  v11 = *(v10 + 64) + 15;
  v3[47] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&qword_1016B7D88, &qword_1013EAD30) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_100BC37A0, 0, 0);
}

uint64_t sub_100BC37A0()
{
  v80 = v0;
  v1 = *(v0 + 296);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 400) = Strong;
  if (Strong)
  {
    v3 = Strong;
    sub_1000D2A70(*(v0 + 304), v0 + 16, &qword_1016A6A40, &qword_1013DD950);
    if (*(v0 + 56) == 1)
    {
      v77 = v3;
      v4 = *(v0 + 392);
      v5 = *(v0 + 16);
      *(v0 + 408) = v5;
      *(v0 + 232) = v5;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v6 = type metadata accessor for PairingCoordinatorError();
      v7 = swift_dynamicCast();
      v8 = *(v6 - 8);
      v9 = *(v8 + 56);
      v10 = *(v0 + 392);
      if (v7)
      {
        v9(*(v0 + 392), 0, 1, v6);
        v11 = (*(v8 + 88))(v10, v6);
        v12 = enum case for PairingCoordinatorError.pairedToAnotherAccount(_:);
        (*(v8 + 8))(v10, v6);
        if (v11 == v12)
        {
          type metadata accessor for SPPairingSessionError(0);
          *(v0 + 288) = 18;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100BCA23C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v5 = *(v0 + 280);
          v13 = v77;
LABEL_20:
          *(v0 + 416) = v5;
          v39 = *(v13 + 216);
          v40 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
          v41 = swift_task_alloc();
          *(v0 + 424) = v41;
          v42 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
          *(v0 + 432) = v42;
          *v41 = v0;
          v41[1] = sub_100BC4274;
          v43 = v0 + 248;
LABEL_41:

          return withCheckedContinuation<A>(isolation:function:_:)(v43, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_100BF443C, v39, v42);
        }
      }

      else
      {
        v9(*(v0 + 392), 1, 1, v6);
        sub_10000B3A8(v10, &qword_1016B7D88, &qword_1013EAD30);
      }

      v27 = *(v0 + 384);
      *(v0 + 240) = v5;
      swift_errorRetain();
      v28 = swift_dynamicCast();
      v29 = *(v0 + 384);
      if (v28)
      {
        v9(*(v0 + 384), 0, 1, v6);
        v30 = (*(v8 + 88))(v29, v6);
        v31 = enum case for PairingCoordinatorError.timeout(_:);
        (*(v8 + 8))(v29, v6);
        v32 = v30 == v31;
        v13 = v77;
        if (v32)
        {
          type metadata accessor for SPPairingSessionError(0);
          *(v0 + 272) = 13;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100BCA23C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
          _BridgedStoredNSError.init(_:userInfo:)();
          v5 = *(v0 + 264);
          goto LABEL_20;
        }
      }

      else
      {
        v9(*(v0 + 384), 1, 1, v6);
        sub_10000B3A8(v29, &qword_1016B7D88, &qword_1013EAD30);
        v13 = v77;
      }

      swift_errorRetain();
      swift_errorRetain();
      goto LABEL_20;
    }

    v14 = *(v0 + 360);
    v15 = *(v0 + 368);
    v16 = *(v0 + 352);
    sub_10000A748((v0 + 16), v0 + 64);
    sub_10001F280(v0 + 64, v0 + 104);
    sub_1000BC4D4(&unk_1016B7D90, &qword_1013B52C0);
    v17 = swift_dynamicCast();
    v18 = *(v15 + 56);
    if (v17)
    {
      v78 = v3;
      v19 = *(v0 + 368);
      v20 = *(v0 + 376);
      v22 = *(v0 + 352);
      v21 = *(v0 + 360);
      v23 = *(v0 + 328);
      v24 = *(v0 + 336);
      v26 = *(v0 + 312);
      v25 = *(v0 + 320);
      v18(v22, 0, 1, v21);
      (*(v19 + 32))(v20, v22, v21);
      sub_1000D2A70(v26, v25, &qword_1016980D0, &unk_10138F3B0);
      if ((*(v24 + 48))(v25, 1, v23) == 1)
      {
        sub_10000B3A8(*(v0 + 320), &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v44 = *(v0 + 336);
        v45 = *(v0 + 344);
        v46 = *(v0 + 328);
        (*(v44 + 32))(v45, *(v0 + 320), v46);
        sub_100BC4D9C(v45);
        (*(v44 + 8))(v45, v46);
      }

      v47 = *(v0 + 376);
      PairingSuccessResult.location.getter();
      if (*(v0 + 168))
      {
        sub_1000BC4D4(&qword_1016B7DA0, &qword_1013DD970);
        sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
        v48 = swift_dynamicCast();
        v49 = *(v0 + 224);
        if (v48)
        {
          v50 = *(v0 + 224);
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        sub_10000B3A8(v0 + 144, &qword_1016A6A30, &unk_1013B52A0);
        v50 = 0;
      }

      *(v0 + 464) = v50;
      v59 = *(v0 + 376);
      *(v0 + 472) = PairingSuccessResult.beaconIds.getter();
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_1000076D4(v60, qword_1016B7860);
      v61 = v50;

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = *(v0 + 328);
        v65 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v65 = 136315650;
        *(v65 + 4) = sub_1000136BC(0xD000000000000032, 0x800000010136F030, &v79);
        *(v65 + 12) = 2080;
        v66 = Array.description.getter();
        v68 = sub_1000136BC(v66, v67, &v79);

        *(v65 + 14) = v68;
        *(v65 + 22) = 2080;
        if (v50)
        {
          v69 = [v61 debugDescription];
          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v71;
        }

        else
        {
          v72 = 0xE300000000000000;
          v70 = 7104878;
        }

        v73 = v78;
        v74 = sub_1000136BC(v70, v72, &v79);

        *(v65 + 24) = v74;
        _os_log_impl(&_mh_execute_header, v62, v63, "%s beaconIds:%s location:%s", v65, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v73 = v78;
      }

      v39 = *(v73 + 216);
      v75 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v76 = swift_task_alloc();
      *(v0 + 480) = v76;
      v42 = sub_1000BC4D4(&unk_10169A0A0, &unk_1013B3B60);
      *(v0 + 488) = v42;
      *v76 = v0;
      v76[1] = sub_100BC4698;
      v43 = v0 + 208;
      goto LABEL_41;
    }

    v33 = *(v0 + 352);
    v18(v33, 1, 1, *(v0 + 360));
    sub_10000B3A8(v33, &qword_1016B7D80, &unk_1013B52B0);
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_1016B7860);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000136BC(0xD000000000000032, 0x800000010136F030, &v79);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s Unexpected result!", v37, 0xCu);
      sub_100007BAC(v38);
    }

    else
    {
    }

    sub_100007BAC((v0 + 64));
  }

  v52 = *(v0 + 384);
  v51 = *(v0 + 392);
  v53 = *(v0 + 376);
  v55 = *(v0 + 344);
  v54 = *(v0 + 352);
  v56 = *(v0 + 320);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_100BC4274()
{
  v1 = *(*v0 + 424);
  v3 = *v0;

  return _swift_task_switch(sub_100BC4370, 0, 0);
}

uint64_t sub_100BC4370()
{
  v1 = v0[52];
  v2 = v0[31];
  v0[55] = v2;
  v0[32] = v2;
  v3 = swift_task_alloc();
  v0[56] = v3;
  *(v3 + 16) = v1;
  v4 = async function pointer to Sequence.asyncForEach(_:)[1];
  v5 = swift_task_alloc();
  v0[57] = v5;
  v6 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60);
  *v5 = v0;
  v5[1] = sub_100BC4484;
  v7 = v0[54];

  return Sequence.asyncForEach(_:)(&unk_1013DD980, v3, v7, v6);
}

uint64_t sub_100BC4484()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v7 = v2[55];
    v6 = v2[56];
    v8 = v2[52];

    return _swift_task_switch(sub_100BC45D4, 0, 0);
  }
}

uint64_t sub_100BC45D4()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];

  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[40];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100BC4698()
{
  v1 = *(*v0 + 480);
  v3 = *v0;

  return _swift_task_switch(sub_100BC4794, 0, 0);
}

uint64_t sub_100BC4794()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[26];
  v0[62] = v3;
  v0[27] = v3;
  v4 = swift_task_alloc();
  v0[63] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = async function pointer to Sequence.asyncForEach(_:)[1];
  v6 = swift_task_alloc();
  v0[64] = v6;
  v7 = sub_1000041A4(&qword_1016B7D60, &unk_10169A0A0, &unk_1013B3B60);
  *v6 = v0;
  v6[1] = sub_100BC48A8;
  v8 = v0[61];

  return Sequence.asyncForEach(_:)(&unk_1013DD968, v4, v8, v7);
}

uint64_t sub_100BC48A8()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[62];
    v7 = v2[63];
    v8 = v2[50];

    return _swift_task_switch(sub_100BC49F0, v8, 0);
  }
}

uint64_t sub_100BC49F0()
{
  v1 = *(v0 + 400);
  sub_100BC5228(*(v0 + 472));

  return _swift_task_switch(sub_100BC4A68, 0, 0);
}

uint64_t sub_100BC4A68()
{
  v1 = v0[58];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];

  (*(v4 + 8))(v3, v5);
  sub_100007BAC(v0 + 8);
  v7 = v0[48];
  v6 = v0[49];
  v8 = v0[47];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[40];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100BC4B48(uint64_t *a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v3 = *a1;
  v4 = async function pointer to XPCSession.proxy(errorHandler:)[1];
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_100BC4C00;

  return XPCSession.proxy(errorHandler:)(v2 + 16, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC4C00()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_100BC4CFC, 0, 0);
}

uint64_t sub_100BC4CFC()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[2];
    swift_unknownObjectRetain();
    v4 = _convertErrorToNSError(_:)();
    [v1 accessoryProximityPairingError:v4];
    swift_unknownObjectRelease_n();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BC4D9C(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v1;
  (*(v5 + 32))(&v13[v12], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *&v13[(v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v3;

  sub_10025F9F4(0, 0, v10, &unk_1013DD990, v13);
}

uint64_t sub_100BC4FB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = *a1;
  v5 = async function pointer to XPCSession.proxy(errorHandler:)[1];
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100BC5070;

  return XPCSession.proxy(errorHandler:)(v3 + 2, SharingCircleWildAdvertisementKey.init(key:), 0);
}

uint64_t sub_100BC5070()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100BC516C, 0, 0);
}

uint64_t sub_100BC516C()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    type metadata accessor for UUID();
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v1 proximityPairingCompleted:v3 beacons:isa];
    swift_unknownObjectRelease_n();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BC5228(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v3;

  sub_100A838D4(0, 0, v7, &unk_1013DD9B0, v9);
}

uint64_t sub_100BC535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = type metadata accessor for OwnedBeaconRecord();
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[8] = v10;
  v11 = *(v10 - 8);
  v4[9] = v11;
  v4[10] = *(v11 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v4[14] = v13;
  *v13 = v4;
  v13[1] = sub_100BC5504;

  return daemon.getter();
}

uint64_t sub_100BC5504(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v12 = *v1;
  v3[15] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[16] = v6;
  v7 = type metadata accessor for Daemon();
  v3[17] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BCA23C(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[18] = v9;
  v10 = sub_100BCA23C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BC56F8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BC56F8(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100BC6314, 0, 0);
  }

  else
  {
    v5 = v4[15];

    v6 = async function pointer to daemon.getter[1];
    v7 = swift_task_alloc();
    v4[21] = v7;
    *v7 = v4;
    v7[1] = sub_100BC586C;

    return daemon.getter();
  }
}

uint64_t sub_100BC586C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *v1;
  v3[22] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[23] = v7;
  v8 = type metadata accessor for LocalPairingMonitorService();
  v9 = sub_100BCA23C(&qword_1016B1130, 255, type metadata accessor for LocalPairingMonitorService);
  *v7 = v5;
  v7[1] = sub_100BC5A24;
  v10 = v3[18];
  v11 = v3[17];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100BC5A24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v8 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = sub_100BC63C0;
  }

  else
  {
    v6 = v3[22];

    v5 = sub_100BC5B40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BC5B40()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  if (v2)
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 264) = v7;
    *(v0 + 216) = *(v5 + 56);
    *(v0 + 224) = v6;
    v8 = *(v0 + 104);
    *(v0 + 232) = 0;
    *(v0 + 240) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_100BC5C90, v3, 0);
  }

  else
  {
    v9 = *(v0 + 192);
    v10 = *(v0 + 152);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);
    v14 = *(v0 + 56);
    v15 = *(v0 + 32);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100BC5C90()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  (*(v0 + 224))(v3, *(v0 + 104), v6);
  v8 = swift_allocObject();
  *(v0 + 248) = v8;
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, v3, v6);
  v9 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  *v10 = v0;
  v10[1] = sub_100BC5DE8;
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2DB4, v8, v12);
}

uint64_t sub_100BC5DE8()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return _swift_task_switch(sub_100BC5F00, 0, 0);
}

uint64_t sub_100BC5F00()
{
  v47 = v0;
  v1 = *(v0 + 32);
  if ((*(*(v0 + 48) + 48))(v1, 1, *(v0 + 40)) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 240);
    v3 = *(v0 + 224);
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016B7860);
    v3(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 104);
    v12 = *(v0 + 88);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    if (v10)
    {
      v45 = *(v0 + 104);
      v15 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v15 = 141558275;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2081;
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = sub_1000136BC(v16, v18, &v46);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "No beacons for UUID: %{private,mask.hash}s", v15, 0x16u);
      sub_100007BAC(v44);

      v19(v45, v14);
    }

    else
    {

      v27 = *(v13 + 8);
      v27(v12, v14);
      v27(v11, v14);
    }
  }

  else
  {
    v21 = *(v0 + 192);
    v22 = *(v0 + 104);
    v23 = *(v0 + 64);
    v24 = *(v0 + 72);
    v25 = *(v0 + 56);
    sub_100BF3978(v1, v25, type metadata accessor for OwnedBeaconRecord);
    v26 = *(v21 + 128);
    sub_100A5187C(v25);
    sub_1000163C4(v25, type metadata accessor for OwnedBeaconRecord);
    (*(v24 + 8))(v22, v23);
  }

  v28 = *(v0 + 232) + 1;
  if (v28 == *(v0 + 208))
  {
    v29 = *(v0 + 192);
    v30 = *(v0 + 152);
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);
    v33 = *(v0 + 88);
    v34 = *(v0 + 56);
    v35 = *(v0 + 32);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v38 = *(v0 + 224);
    v39 = *(v0 + 152);
    v40 = *(v0 + 104);
    v41 = *(v0 + 64);
    v42 = *(v0 + 16) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 216) * v28;
    v43 = (*(v0 + 72) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 232) = v28;
    *(v0 + 240) = v43;
    v38(v40, v42, v41);

    return _swift_task_switch(sub_100BC5C90, v39, 0);
  }
}

uint64_t sub_100BC6314()
{
  v1 = v0[20];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100BC63C0()
{
  v1 = v0[19];

  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100BC6478()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DiscoveryState.Mode(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016B7860);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000136BC(0x29287472617473, 0xE700000000000000, &v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  v15 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v15 - 8) + 56))(v9, 2, 4, v15);
  v16 = v1[20];
  v17 = swift_allocObject();
  swift_weakInit();
  sub_100BF39E0(v9, v7, type metadata accessor for DiscoveryState.Mode);
  v18 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  sub_100BF3978(v7, v19 + v18, type metadata accessor for DiscoveryState.Mode);
  *(v19 + ((v5 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  sub_1000163C4(v9, type metadata accessor for DiscoveryState.Mode);
}

void *sub_100BC67BC()
{
  v1 = type metadata accessor for RSSIValue();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  __chkstk_darwin(v1);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v44 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - v13;
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  swift_beginAccess();
  v17 = *(v0 + 200);
  v18 = *(v17 + 16);
  v47 = v6;
  if (v18)
  {
    v19 = sub_1003A8990(v18, 0);
    v20 = sub_1003AA994(v56, &v19[(*(v6 + 80) + 32) & ~*(v6 + 80)], v18, v17);
    v53 = v56[2];
    v54 = v56[1];
    v51 = v56[4];
    v52 = v56[3];

    sub_1000128F8();
    if (v20 == v18)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_5:
  v21 = *(v19 + 2);
  v55 = v1;
  if (v21)
  {
    v48 = v19;
    v49 = v2;
    v22 = *(v47 + 16);
    v51 = ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v52 = v22;
    v23 = v51 + v19;
    v24 = *(v47 + 72);
    v53 = (v47 + 16);
    v25 = (v47 + 32);
    v26 = _swiftEmptyArrayStorage;
    v54 = v14;
    do
    {
      v52(v16, v23, v5);
      v27 = *v25;
      (*v25)(v14, v16, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_100A5EB0C(0, *(v26 + 2) + 1, 1, v26);
      }

      v29 = *(v26 + 2);
      v28 = *(v26 + 3);
      if (v29 >= v28 >> 1)
      {
        v26 = sub_100A5EB0C(v28 > 1, v29 + 1, 1, v26);
      }

      *(v26 + 2) = v29 + 1;
      v30 = v51 + v26 + v29 * v24;
      v14 = v54;
      v27(v30, v54, v5);
      v23 += v24;
      --v21;
    }

    while (v21);

    v2 = v49;
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
  }

  v31 = v46;
  v32 = v47;
  v33 = v45;
  v54 = *(v26 + 2);
  if (v54)
  {
    v34 = 0;
    v52 = (v2 + 8);
    v53 = (v47 + 16);
    v48 = (v47 + 8);
    v51 = (v47 + 32);
    v35 = _swiftEmptyArrayStorage;
    while (v34 < *(v26 + 2))
    {
      v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v37 = *(v32 + 72);
      (*(v32 + 16))(v33, &v26[v36 + v37 * v34], v5);
      v38 = v33;
      Device.rssi.getter();
      v39 = RSSIValue.rawValue.getter();
      (*v52)(v31, v55);
      if (v39 < 0)
      {
        v49 = *v51;
        (v49)(v50, v38, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56[0] = v35;
        if (isUniquelyReferenced_nonNull_native)
        {
          v33 = v38;
        }

        else
        {
          sub_101125680(0, v35[2] + 1, 1);
          v33 = v45;
          v35 = v56[0];
        }

        v42 = v35[2];
        v41 = v35[3];
        if (v42 >= v41 >> 1)
        {
          sub_101125680(v41 > 1, v42 + 1, 1);
          v33 = v45;
          v35 = v56[0];
        }

        v35[2] = v42 + 1;
        (v49)(v35 + v36 + v42 * v37, v50, v5);
        v31 = v46;
        v32 = v47;
      }

      else
      {
        (*v48)(v38, v5);
        v33 = v38;
      }

      if (v54 == ++v34)
      {
        goto LABEL_27;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_27:

    v56[0] = v35;

    sub_100BB9F80(v56);

    return v56[0];
  }

  return result;
}

uint64_t sub_100BC6D14(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *v1;
  v3 = type metadata accessor for UUID();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_100BC6E10, v1, 0);
}

uint64_t sub_100BC6E10()
{
  v31 = v0;
  v1 = v0[23];
  type metadata accessor for WorkItemQueue();
  v0[30] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016B7860);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v30 = v7;
      *v5 = 136315394;
      *(v5 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, &v30);
      *(v5 + 12) = 2114;
      sub_100BEF73C();
      swift_allocError();
      *v8 = 1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 14) = v9;
      *v6 = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failure in %s. Returning error: %{public}@.", v5, 0x16u);
      sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v7);
    }

    v10 = v0[22];
    sub_100BEF73C();
    v11 = swift_allocError();
    *v12 = 1;
    *v10 = v11;
    *(v10 + 40) = 1;
    v14 = v0[28];
    v13 = v0[29];

    v15 = v0[1];

    return v15();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v0[31] = sub_1000076D4(v17, qword_1016B7860);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, &v30);
      _os_log_impl(&_mh_execute_header, v18, v19, "%s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    v22 = v0[23];
    v23 = v0[24];
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v0[32] = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    v26 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
    v29 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);
    v27 = swift_task_alloc();
    v0[33] = v27;
    v28 = sub_1000BC4D4(&unk_1016B7DB0, &qword_1013DD9F8);
    *v27 = v0;
    v27[1] = sub_100BC7260;

    return (v29)(v0 + 2, &unk_1013DD9F0, v25, v28);
  }
}

uint64_t sub_100BC7260()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = sub_100BC793C;
  }

  else
  {
    v6 = *(v2 + 256);
    v7 = *(v2 + 184);

    v5 = sub_100BC7388;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BC7388()
{
  v42 = v0;
  sub_1000D2A70(v0 + 16, v0 + 96, &unk_1016B7DB0, &qword_1013DD9F8);
  if (*(v0 + 120))
  {
    v37 = *(v0 + 240);
    v39 = *(v0 + 248);
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 200);
    v36 = *(v0 + 192);
    v6 = *(v0 + 184);
    sub_10000A748((v0 + 96), v0 + 56);
    v7 = *(v0 + 88);
    sub_1000035D0((v0 + 56), *(v0 + 80));
    dispatch thunk of Accessory.identifier.getter();
    v8 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v2, v1, v5);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    (*(v4 + 32))(v10 + v9, v2, v5);
    *(v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v36;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v11 = *(v4 + 8);
    v11(v1, v5);

    sub_10001F280(v0 + 56, v0 + 136);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v40 = v11;
      v14 = *(v0 + 232);
      v38 = *(v0 + 200);
      v15 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v15 = 136315651;
      *(v15 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, v41);
      *(v15 + 12) = 2160;
      *(v15 + 14) = 1752392040;
      *(v15 + 22) = 2081;
      v16 = *(v0 + 168);
      sub_1000035D0((v0 + 136), *(v0 + 160));
      dispatch thunk of Accessory.identifier.getter();
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v40(v14, v38);
      sub_100007BAC((v0 + 136));
      v20 = sub_1000136BC(v17, v19, v41);

      *(v15 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Success in %s. Returning detected accessory: %{private,mask.hash}s.", v15, 0x20u);
      swift_arrayDestroy();

      sub_10000B3A8(v0 + 16, &unk_1016B7DB0, &qword_1013DD9F8);
    }

    else
    {

      sub_10000B3A8(v0 + 16, &unk_1016B7DB0, &qword_1013DD9F8);
      sub_100007BAC((v0 + 136));
    }

    v31 = *(v0 + 176);
    sub_10001F280(v0 + 56, v31);
    *(v31 + 40) = 0;
    sub_100007BAC((v0 + 56));
  }

  else
  {
    sub_10000B3A8(v0 + 96, &unk_1016B7DB0, &qword_1013DD9F8);
    sub_100BEF73C();
    v21 = swift_allocError();
    *v22 = 3;
    swift_willThrow();
    sub_10000B3A8(v0 + 16, &unk_1016B7DB0, &qword_1013DD9F8);
    v23 = *(v0 + 248);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, v41);
      *(v26 + 12) = 2114;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failure in %s. Returning error: %{public}@.", v26, 0x16u);
      sub_10000B3A8(v27, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v28);
    }

    v30 = *(v0 + 176);
    *v30 = v21;
    *(v30 + 40) = 1;
  }

  v33 = *(v0 + 224);
  v32 = *(v0 + 232);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100BC793C()
{
  v16 = v0;
  v1 = v0[32];

  v2 = v0[34];
  v3 = v0[31];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F0D0, &v15);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in %s. Returning error: %{public}@.", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = v0[22];
  *v10 = v2;
  *(v10 + 40) = 1;
  v12 = v0[28];
  v11 = v0[29];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100BC7B08(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for Device();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for DiscoveryState(0);
  v2[13] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100BC7C04, 0, 0);
}

uint64_t sub_100BC7C04()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BC7D28, Strong, 0);
  }

  else
  {
    v3 = v0[14];
    v4 = v0[15];
    v5 = v0[12];
    sub_100BEF73C();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100BC7D28()
{
  v1 = v0[16];
  v0[17] = sub_100BC67BC();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_100BC7DC4;
  v3 = v0[16];

  return sub_100BC89E4();
}

uint64_t sub_100BC7DC4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100BC874C;
  }

  else
  {
    v3 = sub_100BC7ED8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100BC7ED8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  swift_storeEnumTagMultiPayload();

  return _swift_task_switch(sub_100BC7F48, v2, 0);
}

uint64_t sub_100BC7F48()
{
  v1 = v0[16];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v3 = *(v0[16] + 152);
    v0[20] = v3;
    v4 = sub_100BC8038;
  }

  else
  {
    v5 = v0[15];
    sub_100BEF73C();
    v0[21] = swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_1000163C4(v5, type metadata accessor for DiscoveryState);
    v4 = sub_100BC8228;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BC8038()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[14];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC80EC, v2, 0);
}

uint64_t sub_100BC80EC()
{
  v1 = v0[14];
  v2 = sub_100649DB4(v1, v0[15]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[15], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BC85EC, 0, 0);
  }

  else
  {
    v3 = *(v0[16] + 152);
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_100BC84C0;
    v5 = v0[15];

    return sub_10064A314(v5);
  }
}

uint64_t sub_100BC8228()
{
  v1 = v0[21];
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in stopping scanner: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[16];
  v8 = v0[17];
  if (*(v8 + 16))
  {
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    v13 = v0[8];
    (*(v11 + 16))(v10, v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v12);

    v13[3] = v12;
    v13[4] = sub_100BCA23C(&qword_10169EF58, 255, &type metadata accessor for Device);
    v14 = sub_1000280DC(v13);
    (*(v11 + 32))(v14, v10, v12);
  }

  else
  {
    v15 = v0[8];
    v16 = v0[16];

    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
  }

  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[12];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100BC84C0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v4 = *v0;

  sub_1000163C4(*(v1 + 120), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC85EC, 0, 0);
}

uint64_t sub_100BC85EC()
{
  v2 = v0[16];
  v1 = v0[17];
  if (*(v1 + 16))
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    v6 = v0[8];
    (*(v4 + 16))(v3, v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);

    v6[3] = v5;
    v6[4] = sub_100BCA23C(&qword_10169EF58, 255, &type metadata accessor for Device);
    v7 = sub_1000280DC(v6);
    (*(v4 + 32))(v7, v3, v5);
  }

  else
  {
    v8 = v0[8];
    v9 = v0[16];

    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
  }

  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100BC874C()
{
  v1 = v0[19];
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B7860);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in stopping scanner: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[16];
  v8 = v0[17];
  if (*(v8 + 16))
  {
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    v13 = v0[8];
    (*(v11 + 16))(v10, v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v12);

    v13[3] = v12;
    v13[4] = sub_100BCA23C(&qword_10169EF58, 255, &type metadata accessor for Device);
    v14 = sub_1000280DC(v13);
    (*(v11 + 32))(v14, v10, v12);
  }

  else
  {
    v15 = v0[8];
    v16 = v0[16];

    *(v15 + 32) = 0;
    *v15 = 0u;
    *(v15 + 16) = 0u;
  }

  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[12];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100BC89E4()
{
  v1[14] = v0;
  v2 = *(*(sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for DiscoveryState.Mode(0);
  v1[16] = v3;
  v4 = *(v3 - 8);
  v1[17] = v4;
  v5 = *(v4 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v6 = type metadata accessor for DiscoveryState(0);
  v1[20] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_100BC8B3C, v0, 0);
}

uint64_t sub_100BC8B3C()
{
  v1 = v0[14];
  v0[25] = type metadata accessor for WorkItemQueue();
  v0[26] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = *(v0[14] + 152);
    v0[27] = v2;

    return _swift_task_switch(sub_100BC8C90, v2, 0);
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v5 = v0[23];
    v4 = v0[24];
    v7 = v0[21];
    v6 = v0[22];
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[15];

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_100BC8C90()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[20];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  v0[28] = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v2, type metadata accessor for DiscoveryState);
  if ((swift_getEnumCaseMultiPayload() | 2) == 3)
  {
    v5 = v0[27];
    sub_1000163C4(v0[24], type metadata accessor for DiscoveryState);
    v6 = sub_100BC8DB4;
    v7 = v5;
  }

  else
  {
    sub_1000163C4(v0[24], type metadata accessor for DiscoveryState);
    v7 = v0[27];
    v6 = sub_100BC94A8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100BC8DB4()
{
  v1 = v0[27];
  v2 = v0[14];
  sub_100648FF4(v0[15]);

  return _swift_task_switch(sub_100BC8E20, v2, 0);
}

uint64_t sub_100BC8E20()
{
  v1 = v0[15];
  if ((*(v0[17] + 48))(v1, 1, v0[16]) == 1)
  {
    sub_10000B3A8(v1, &qword_1016A68C8, &qword_1013B4C58);
LABEL_5:
    v6 = v0[27];
    v7 = sub_100BC94A8;
LABEL_6:

    return _swift_task_switch(v7, v6, 0);
  }

  v3 = v0[18];
  v2 = v0[19];
  sub_100BF3978(v1, v2, type metadata accessor for DiscoveryState.Mode);
  v4 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  (*(*(v4 - 8) + 56))(v3, 4, 4, v4);
  v5 = sub_100649A24(v2, v3);
  sub_1000163C4(v3, type metadata accessor for DiscoveryState.Mode);
  if (v5)
  {
    sub_1000163C4(v0[19], type metadata accessor for DiscoveryState.Mode);
    goto LABEL_5;
  }

  v9 = v0[25];
  v8 = v0[26];
  v10 = v0[20];
  sub_100BF39E0(v0[19], v0[23], type metadata accessor for DiscoveryState.Mode);
  swift_storeEnumTagMultiPayload();
  if (static WorkItemQueue.called(on:)())
  {
    v6 = v0[27];
    v7 = sub_100BC90D4;
    goto LABEL_6;
  }

  v11 = v0[23];
  v12 = v0[19];
  sub_100BEF73C();
  swift_allocError();
  *v13 = 0;
  swift_willThrow();
  sub_1000163C4(v11, type metadata accessor for DiscoveryState);
  sub_1000163C4(v12, type metadata accessor for DiscoveryState.Mode);
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[21];
  v16 = v0[22];
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[15];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_100BC90D4()
{
  v1 = v0[14];
  sub_100BF39E0(v0[27] + v0[28], v0[22], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC915C, v1, 0);
}

uint64_t sub_100BC915C()
{
  v1 = v0[22];
  v2 = sub_100649DB4(v1, v0[23]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[14];
    sub_1000163C4(v0[23], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BC93D8, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_100BC9298;
    v5 = v0[27];
    v6 = v0[23];

    return (sub_10064A314)(v6);
  }
}

uint64_t sub_100BC9298()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 112);
  sub_1000163C4(v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC93D8, v4, 0);
}

uint64_t sub_100BC93D8()
{
  sub_1000163C4(v0[19], type metadata accessor for DiscoveryState.Mode);
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_100BC94A8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);
  *(v0 + 256) = sub_100648974() & 1;

  return _swift_task_switch(sub_100BC951C, v2, 0);
}

uint64_t sub_100BC951C()
{
  if (*(v0 + 256) == 1)
  {
    *(v0 + 240) = *(*(v0 + 112) + 232);
    type metadata accessor for TimeTracker();
    sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BC9740, v2, v1);
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016B7860);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Scanner already stopped.", v6, 2u);
    }

    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 120);

    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_100BC9740()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 112);
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BC97D4, v2, 0);
}

uint64_t sub_100BC97D4()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  swift_storeEnumTagMultiPayload();
  if (static WorkItemQueue.called(on:)())
  {
    v5 = v0[27];

    return _swift_task_switch(sub_100BC993C, v5, 0);
  }

  else
  {
    v6 = v0[21];
    sub_100BEF73C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    sub_1000163C4(v6, type metadata accessor for DiscoveryState);
    v9 = v0[23];
    v8 = v0[24];
    v11 = v0[21];
    v10 = v0[22];
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[15];

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_100BC993C()
{
  v1 = v0[14];
  sub_100BF39E0(v0[27] + v0[28], v0[22], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC99C4, v1, 0);
}

uint64_t sub_100BC99C4()
{
  v1 = v0[22];
  v2 = sub_100649DB4(v1, v0[21]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    v3 = v0[14];
    sub_1000163C4(v0[21], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BC9C40, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[31] = v4;
    *v4 = v0;
    v4[1] = sub_100BC9B00;
    v5 = v0[27];
    v6 = v0[21];

    return (sub_10064A314)(v6);
  }
}

uint64_t sub_100BC9B00()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 112);
  sub_1000163C4(v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BC9C40, v4, 0);
}

uint64_t sub_100BC9C40()
{
  v1 = v0[14];
  swift_beginAccess();
  v2 = *(v1 + 200);
  *(v1 + 200) = &_swiftEmptyDictionarySingleton;

  sub_100BD90FC();
  v3 = v0[14];
  if (*(v3 + 208))
  {
    v4 = *(v3 + 208);

    Task.cancel()();

    v5 = *(v3 + 208);
  }

  v6 = v0[14];
  *(v3 + 208) = 0;

  if (*(v6 + 184))
  {
    v7 = *(v6 + 184);

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    v8 = *(v6 + 184);
  }

  v9 = v0[14];
  *(v6 + 184) = 0;

  v10 = *sub_1000035D0(v9 + 30, v9[33]);
  sub_100C2C618();
  swift_beginAccess();
  v11 = v9[28];
  v9[28] = _swiftEmptyArrayStorage;

  swift_beginAccess();
  v12 = v9[22];
  v9[22] = &_swiftEmptyDictionarySingleton;

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016B7860);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Discovery finished.", v16, 2u);
  }

  v18 = v0[23];
  v17 = v0[24];
  v20 = v0[21];
  v19 = v0[22];
  v22 = v0[18];
  v21 = v0[19];
  v23 = v0[15];

  v24 = v0[1];

  return v24(1);
}

uint64_t sub_100BC9F50()
{
  v1 = v0;
  v2 = *v0;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B7860);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000136BC(0x6F74536563726F66, 0xEB00000000292870, &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v8 = v1[20];
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = 1;
  *(v10 + 32) = v2;

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BCA158(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BC6D14(a1);
}

uint64_t sub_100BCA23C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100BCA284(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6;
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016B7860);
  v27 = *(v3 + 16);
  v27(v9, a1, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v7;
    v14 = v13;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v14 = 136315394;
    *(v14 + 4) = sub_1000136BC(0xD000000000000020, 0x800000010136F1E0, &v30);
    *(v14 + 12) = 2082;
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = a1;
    v18 = v17;
    (*(v3 + 8))(v9, v2);
    v19 = sub_1000136BC(v15, v18, &v30);
    a1 = v16;

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s for %{public}s.", v14, 0x16u);
    swift_arrayDestroy();

    v7 = v26;
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  v20 = *(v29 + 136);
  v21 = swift_allocObject();
  swift_weakInit();
  v27(v7, a1, v2);
  v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  (*(v3 + 32))(v23 + v22, v7, v2);

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BCA648(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for UserSessionState();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100BCA708, 0, 0);
}

uint64_t sub_100BCA708()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = v0[9];
  if (Strong)
  {
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v0[10] = *(Strong + 128);

    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(v3, v6, v7);
    (*(v5 + 104))(v3, enum case for UserSessionState.pairingStarted(_:), v4);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_100BCA8B8;
    v9 = v0[9];

    return sub_1011EAA64(v9);
  }

  else
  {
    v11 = v0[9];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100BCA8B8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 72);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100BCAA38(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v37 = v10;
  v38 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v32[-v11];
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016B7860);
  v36 = *(v7 + 16);
  v36(v12, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = a2;
    v17 = v16;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136315394;
    *(v17 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F1B0, &v39);
    *(v17 + 12) = 2082;
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v15;
    v19 = v3;
    v20 = a1;
    v22 = v21;
    (*(v7 + 8))(v12, v6);
    v23 = sub_1000136BC(v18, v22, &v39);
    a1 = v20;
    v3 = v19;

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v33, "%s for %{public}s.", v17, 0x16u);
    swift_arrayDestroy();

    a2 = v35;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v24 = *(v3 + 136);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v38;
  v36(v38, a1, v6);
  v27 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v28 = (v37 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  (*(v7 + 32))(v29 + v27, v26, v6);
  *(v29 + v28) = a2;

  v30 = a2;
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_100BCAE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for UserSessionState();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BCAEE8, 0, 0);
}

uint64_t sub_100BCAEE8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = v0[10];
  if (Strong)
  {
    v4 = v0[8];
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v0[11] = *(Strong + 128);

    v8 = (v3 + *(sub_1000BC4D4(&qword_1016B7E38, &qword_1013DDC58) + 48));
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 16))(v3, v6, v9);
    v8[3] = sub_100008BB8(0, &qword_1016B7E40, SPAccessoryPairingConfiguration_ptr);
    v8[4] = sub_100BF4078();
    *v8 = v7;
    (*(v5 + 104))(v3, enum case for UserSessionState.accessoryConfigured(_:), v4);
    v10 = v7;
    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_100BCB0E8;
    v12 = v0[10];

    return sub_1011EAA64(v12);
  }

  else
  {
    v14 = v0[10];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100BCB0E8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 80);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_100BCB268()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DiscoveryState.Mode(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v19[-1] - v8;
  My = type metadata accessor for Feature.FindMy();
  v19[3] = My;
  v19[4] = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v11 = sub_1000280DC(v19);
  (*(*(My - 8) + 104))(v11, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100007BAC(v19);
  if (My)
  {
    v13 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
    (*(*(v13 - 8) + 56))(v9, 4, 4, v13);
    v14 = v1[20];
    v15 = swift_allocObject();
    swift_weakInit();
    sub_100BF39E0(v9, v7, type metadata accessor for DiscoveryState.Mode);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    sub_100BF3978(v7, v17 + v16, type metadata accessor for DiscoveryState.Mode);
    *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_1000163C4(v9, type metadata accessor for DiscoveryState.Mode);
  }

  return result;
}

uint64_t sub_100BCB548()
{
  v1 = *v0;
  My = type metadata accessor for Feature.FindMy();
  v8[3] = My;
  v8[4] = sub_100BCA23C(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v3 = sub_1000280DC(v8);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100007BAC(v8);
  if (My)
  {
    v5 = v0[20];
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = v1;

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_100BCB6C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BCB6E8, 0, 0);
}

uint64_t sub_100BCB6E8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = v0[6];
    v4 = *(Strong + 152);
    v0[8] = v4;
    v5 = swift_allocObject();
    v0[9] = v5;
    swift_weakInit();
    v6 = swift_allocObject();
    v0[10] = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;

    return _swift_task_switch(sub_100BCB81C, v4, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100BCB81C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *(v3 + 112) = &unk_1013DDAB8;
  *(v3 + 120) = v2;

  sub_1000BB27C(v4);

  return _swift_task_switch(sub_100BCB8D8, 0, 0);
}

uint64_t sub_100BCB8D8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100BCB93C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BCB95C, 0, 0);
}

uint64_t sub_100BCB95C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100BCBA4C;
    v4 = v0[5];

    return sub_100BCBD34(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100BCBA4C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100BCBB88, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100BCBB88()
{
  v1 = v0[7];

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B7860);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on discovery state change: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BCBD34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for DiscoveryState.Mode(0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for DiscoveryState(0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BCBE6C, v1, 0);
}

uint64_t sub_100BCBE6C()
{
  v53 = v0;
  v1 = v0[3];
  type metadata accessor for WorkItemQueue();
  v2 = *(v1 + 160);
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    v16 = v0[9];
    v17 = v0[10];
    v19 = v0[6];
    v18 = v0[7];
    v20 = v0[5];
    sub_100BEF73C();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    v22 = v0[1];
    goto LABEL_27;
  }

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v3 = v0[10];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016B7860);
  sub_100BF39E0(v4, v3, type metadata accessor for DiscoveryState);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[10];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52 = v11;
    *v10 = 136446210;
    v12 = sub_100648264();
    v14 = v13;
    sub_1000163C4(v9, type metadata accessor for DiscoveryState);
    v15 = sub_1000136BC(v12, v14, &v52);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "New state = %{public}s", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_1000163C4(v9, type metadata accessor for DiscoveryState);
  }

  v23 = v0[8];
  sub_100BF39E0(v0[2], v0[9], type metadata accessor for DiscoveryState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 4) < 2 || EnumCaseMultiPayload != 6)
    {
      goto LABEL_26;
    }

    v31 = v0[3];
    if (*(v31 + 192))
    {
      v32 = *(v31 + 192);

      Task.cancel()();

      v33 = *(v31 + 192);
    }

    *(v31 + 192) = 0;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    v29 = v0[9];
    v30 = type metadata accessor for DiscoveryState;
    goto LABEL_18;
  }

  v25 = v0[6];
  v26 = v0[7];
  sub_100BF3978(v0[9], v26, type metadata accessor for DiscoveryState.Mode);
  sub_100BF39E0(v26, v25, type metadata accessor for DiscoveryState.Mode);
  v27 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  v28 = (*(*(v27 - 8) + 48))(v25, 4, v27);
  if (v28 <= 1)
  {
    if (!v28)
    {
      v35 = v0[6];
      v36 = type metadata accessor for UUID();
      (*(*(v36 - 8) + 8))(v35, v36);
    }

    goto LABEL_22;
  }

  if (v28 == 3)
  {
LABEL_22:
    v37 = v0[3];
    v38 = v0[7];
    if (*(v37 + 192))
    {
      v34 = type metadata accessor for DiscoveryState.Mode;
      v29 = v0[7];
      goto LABEL_19;
    }

    v46 = v0[4];
    v45 = v0[5];
    v47 = type metadata accessor for TaskPriority();
    (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v49[4] = v48;
    v49[5] = v46;
    v50 = sub_1008CE048(0, 0, v45, &unk_1013DDAD0, v49);
    sub_10000B3A8(v45, &qword_101698C00, &qword_10138B570);
    sub_1000163C4(v38, type metadata accessor for DiscoveryState.Mode);
    v51 = *(v37 + 192);
    *(v37 + 192) = v50;
LABEL_25:

    goto LABEL_26;
  }

  v29 = v0[7];
  v30 = type metadata accessor for DiscoveryState.Mode;
LABEL_18:
  v34 = v30;
LABEL_19:
  sub_1000163C4(v29, v34);
LABEL_26:
  v40 = v0[9];
  v39 = v0[10];
  v42 = v0[6];
  v41 = v0[7];
  v43 = v0[5];

  v22 = v0[1];
LABEL_27:

  return v22();
}

uint64_t sub_100BCC424()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100BCC50C;

    return sub_100BCC7F4();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100BCC50C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100BCC648, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100BCC648()
{
  v1 = v0[6];

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B7860);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure in discovery timeout: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BCC7F4()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = type metadata accessor for CancellationError();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100BCC938, v0, 0);
}

uint64_t sub_100BCC938()
{
  v1 = v0[3];
  type metadata accessor for WorkItemQueue();
  v0[11] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[10];
    v3 = v0[7];
    sub_100BEF73C();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[12] = sub_1000076D4(v7, qword_1016B7860);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Discovery timeout start", v10, 2u);
    }

    v11 = v0[10];
    v12 = v0[3];

    v14 = *(v12 + 344);
    v13 = *(v12 + 352);
    static Clock<>.continuous.getter();
    v15 = swift_task_alloc();
    v0[13] = v15;
    *v15 = v0;
    v15[1] = sub_100BCCB70;
    v16 = v0[10];

    return sub_100D24214(v14, v13, 0, 0, 1);
  }
}

uint64_t sub_100BCCB70()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[3];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100BCCFDC;
  }

  else
  {
    v9 = sub_100BCCCEC;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100BCCCEC()
{
  v1 = v0[14];
  static Task<>.checkCancellation()();
  if (!v1)
  {
    v13 = v0[11];
    v14 = v0[3];
    v15 = v0[4];
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    goto LABEL_11;
  }

  v2 = v0[7];
  v3 = v0[5];
  v0[2] = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v4 = swift_dynamicCast();
  v5 = v0[12];
  if (v4)
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Timeout task was cancelled.", v8, 2u);
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];

    (*(v10 + 8))(v9, v11);
    v12 = v0[2];
  }

  else
  {
    v18 = v0[2];

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Timeout failed with error: %{public}@.", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_11;
    }
  }

LABEL_11:
  v24 = v0[10];
  v25 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100BCCFDC()
{
  v0[2] = v0[14];
  v1 = v0[7];
  v2 = v0[5];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v3 = swift_dynamicCast();
  v4 = v0[12];
  if (v3)
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Timeout task was cancelled.", v7, 2u);
    }

    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];

    (*(v9 + 8))(v8, v10);
    v11 = v0[2];
  }

  else
  {
    v12 = v0[2];

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Timeout failed with error: %{public}@.", v15, 0xCu);
      sub_10000B3A8(v16, &qword_10169BB30, &unk_10138B3C0);

      goto LABEL_9;
    }
  }

LABEL_9:
  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100BCD23C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BCD25C, 0, 0);
}

uint64_t sub_100BCD25C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100BCD34C;
    v4 = v0[6];

    return sub_100BCD638(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100BCD34C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100BCD488, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100BCD488()
{
  v1 = v0[7];

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B7860);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in start discovery: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BCD638(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v3 = sub_1000BC4D4(&unk_1016B7C00, &qword_1013B4C50);
  v2[14] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016A68C8, &qword_1013B4C58) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for DiscoveryState(0);
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v9 = type metadata accessor for DiscoveryState.Mode(0);
  v2[34] = v9;
  v10 = *(v9 - 8);
  v2[35] = v10;
  v11 = *(v10 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[41] = v12;
  v13 = *(v12 - 8);
  v2[42] = v13;
  v14 = *(v13 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_100BCD930, v1, 0);
}

uint64_t sub_100BCD930()
{
  v81 = v0;
  v1 = v0[12];
  v0[45] = type metadata accessor for WorkItemQueue();
  v0[46] = *(v1 + 160);
  if (static WorkItemQueue.called(on:)())
  {
    v2 = v0[40];
    sub_100BF39E0(v0[11], v2, type metadata accessor for DiscoveryState.Mode);
    v3 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
    v0[47] = v3;
    v4 = *(v3 - 8);
    v0[48] = v4;
    if ((*(v4 + 48))(v2, 4, v3))
    {
      sub_1000163C4(v0[40], type metadata accessor for DiscoveryState.Mode);
LABEL_14:
      v39 = *(v0[12] + 152);
      v0[49] = v39;

      return _swift_task_switch(sub_100BCDFC0, v39, 0);
    }

    v18 = v0[44];
    v19 = v0[12];
    (*(v0[42] + 32))(v18, v0[40], v0[41]);
    swift_beginAccess();
    v20 = *(v19 + 168);

    LOBYTE(v18) = sub_100037E20(v18, v20);

    if ((v18 & 1) == 0)
    {
      (*(v0[42] + 8))(v0[44], v0[41]);
      goto LABEL_14;
    }

    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v21 = v0[43];
    v22 = v0[44];
    v23 = v0[41];
    v24 = v0[42];
    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_1016B7860);
    (*(v24 + 16))(v21, v22, v23);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[43];
    v30 = v0[44];
    v32 = v0[41];
    v31 = v0[42];
    if (v28)
    {
      v78 = v0[44];
      v33 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v33 = 136315394;
      *(v33 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, v80);
      *(v33 + 12) = 2082;
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v37 = *(v31 + 8);
      v37(v29, v32);
      v38 = sub_1000136BC(v34, v36, v80);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s ProxCard already has been displayed for this accessory %{public}s!", v33, 0x16u);
      swift_arrayDestroy();

      v37(v78, v32);
    }

    else
    {

      v40 = *(v31 + 8);
      v40(v29, v32);
      v40(v30, v32);
    }

    v42 = v0[43];
    v41 = v0[44];
    v44 = v0[39];
    v43 = v0[40];
    v46 = v0[37];
    v45 = v0[38];
    v47 = v0[36];
    v48 = v0[32];
    v49 = v0[33];
    v50 = v0[31];
    v53 = v0[30];
    v55 = v0[29];
    v57 = v0[28];
    v59 = v0[27];
    v61 = v0[26];
    v63 = v0[25];
    v65 = v0[24];
    v67 = v0[23];
    v69 = v0[22];
    v71 = v0[21];
    v73 = v0[18];
    v75 = v0[17];
    v77 = v0[16];
    v79 = v0[15];

    v16 = v0[1];
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v7 = v0[43];
    v6 = v0[44];
    v9 = v0[39];
    v8 = v0[40];
    v11 = v0[37];
    v10 = v0[38];
    v12 = v0[36];
    v14 = v0[32];
    v13 = v0[33];
    v15 = v0[31];
    v51 = v0[30];
    v52 = v0[29];
    v54 = v0[28];
    v56 = v0[27];
    v58 = v0[26];
    v60 = v0[25];
    v62 = v0[24];
    v64 = v0[23];
    v66 = v0[22];
    v68 = v0[21];
    v70 = v0[18];
    v72 = v0[17];
    v74 = v0[16];
    v76 = v0[15];

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_100BCDFC0()
{
  v1 = v0[49];
  v2 = v0[33];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  v0[50] = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCE078, v3, 0);
}

uint64_t sub_100BCE078()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 152);
  swift_storeEnumTagMultiPayload();
  v4 = sub_100649DB4(v2, v1);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);
  if (v4)
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 88);
    (*(*(v0 + 384) + 56))(v5, 2, 4, *(v0 + 376));
    v7 = sub_100649A24(v6, v5);
    sub_1000163C4(v5, type metadata accessor for DiscoveryState.Mode);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 568) = v7 & 1;
  v8 = *(v0 + 392);

  return _swift_task_switch(sub_100BCE198, v8, 0);
}

uint64_t sub_100BCE198()
{
  v1 = v0[49];
  swift_beginAccess();
  v2 = *(v1 + 136);
  v3 = *(v2 + 16);

  if (v3)
  {
    v7 = 0;
    v8 = v0[20];
    while (v7 < *(v2 + 16))
    {
      v10 = v0[30];
      v9 = v0[31];
      v11 = v0[19];
      sub_100BF39E0(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7, v9, type metadata accessor for DiscoveryState);
      sub_100BF3978(v9, v10, type metadata accessor for DiscoveryState);
      if (!swift_getEnumCaseMultiPayload())
      {
        v12 = v0[12];
        v14 = v0[30];

        sub_1000163C4(v14, type metadata accessor for DiscoveryState);
        v13 = sub_100BCE414;
        goto LABEL_8;
      }

      ++v7;
      v4 = sub_1000163C4(v0[30], type metadata accessor for DiscoveryState);
      if (v3 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v12 = v0[12];

    v13 = sub_100BCE334;
LABEL_8:
    v4 = v13;
    v5 = v12;
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100BCE334()
{
  v0[51] = *(v0[12] + 232);
  v0[52] = type metadata accessor for TimeTracker();
  v0[53] = sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BCE5D8, v2, v1);
}

uint64_t sub_100BCE414()
{
  if (*(v0 + 568) == 1)
  {
    *(v0 + 408) = *(*(v0 + 96) + 232);
    *(v0 + 416) = type metadata accessor for TimeTracker();
    *(v0 + 424) = sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker);

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_100BCE5D8;
    v5 = v1;
    v6 = v3;
  }

  else
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 504) = sub_1000076D4(v7, qword_1016B7860);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Discovery already running or pairing in progress.", v10, 2u);
    }

    v11 = *(v0 + 392);

    v4 = sub_100BD0288;
    v5 = v11;
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100BCE5D8()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 96);
  dispatch thunk of TimeTracker.reset()();

  return _swift_task_switch(sub_100BCE64C, v2, 0);
}

uint64_t sub_100BCE64C()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[11];
  v0[54] = *(v0[12] + 232);

  v0[55] = sub_100647DEC();
  v0[56] = v4;
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BCE6EC, v6, v5);
}

uint64_t sub_100BCE6EC()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  v4 = v0[12];
  dispatch thunk of TimeTracker.updateCheckpoint(for:)();

  return _swift_task_switch(sub_100BCE778, v4, 0);
}

uint64_t sub_100BCE778()
{
  v1 = *(v0 + 96);
  *(v0 + 456) = *(v1 + 296);
  v2 = *(v1 + 304);
  swift_getObjectType();
  v3 = *(v2 + 8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BCE800, v5, v4);
}

uint64_t sub_100BCE800()
{
  v1 = *(v0 + 96);
  *(v0 + 569) = *(*(v0 + 456) + 193);
  return _swift_task_switch(sub_100BCE828, v1, 0);
}

uint64_t sub_100BCE828()
{
  v47 = v0;
  v1 = *(v0 + 569);
  if (v1 > 0x3F || (v1 != 4 ? (v2 = v1 == 1) : (v2 = 1), !v2))
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    *(v0 + 488) = sub_1000076D4(v13, qword_1016B7860);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, v46);
      _os_log_impl(&_mh_execute_header, v14, v15, "%s System is locked!", v16, 0xCu);
      sub_100007BAC(v17);
    }

    v11 = *(v0 + 392);
    v12 = sub_100BCF6D0;
    goto LABEL_18;
  }

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 464) = sub_1000076D4(v3, qword_1016B7860);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, v46);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s System is unlocked!", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  v10 = *(v0 + 152);
  sub_100BF39E0(*(v0 + 88), *(v0 + 232), type metadata accessor for DiscoveryState.Mode);
  swift_storeEnumTagMultiPayload();
  if (static WorkItemQueue.called(on:)())
  {
    v11 = *(v0 + 392);
    v12 = sub_100BCECD8;
LABEL_18:

    return _swift_task_switch(v12, v11, 0);
  }

  v18 = *(v0 + 232);
  sub_100BEF73C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
  sub_1000163C4(v18, type metadata accessor for DiscoveryState);
  v21 = *(v0 + 344);
  v20 = *(v0 + 352);
  v23 = *(v0 + 312);
  v22 = *(v0 + 320);
  v25 = *(v0 + 296);
  v24 = *(v0 + 304);
  v26 = *(v0 + 288);
  v28 = *(v0 + 256);
  v27 = *(v0 + 264);
  v29 = *(v0 + 248);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  v34 = *(v0 + 224);
  v35 = *(v0 + 216);
  v36 = *(v0 + 208);
  v37 = *(v0 + 200);
  v38 = *(v0 + 192);
  v39 = *(v0 + 184);
  v40 = *(v0 + 176);
  v41 = *(v0 + 168);
  v42 = *(v0 + 144);
  v43 = *(v0 + 136);
  v44 = *(v0 + 128);
  v45 = *(v0 + 120);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100BCECD8()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[33], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCED60, v1, 0);
}

uint64_t sub_100BCED60()
{
  v1 = v0[33];
  v2 = sub_100649DB4(v1, v0[29]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[29], type metadata accessor for DiscoveryState);
    v3 = swift_task_alloc();
    v0[60] = v3;
    *v3 = v0;
    v3[1] = sub_100BCF038;
    v4 = v0[12];

    return sub_100BD28E4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[59] = v6;
    *v6 = v0;
    v6[1] = sub_100BCEECC;
    v7 = v0[49];
    v8 = v0[29];

    return (sub_10064A314)(v8);
  }
}

uint64_t sub_100BCEECC()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v3 = *v0;

  sub_1000163C4(v1[29], type metadata accessor for DiscoveryState);
  v4 = swift_task_alloc();
  v1[60] = v4;
  *v4 = v3;
  v4[1] = sub_100BCF038;
  v5 = v1[12];

  return sub_100BD28E4();
}

uint64_t sub_100BCF038()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[43];
    v5 = v2[44];
    v8 = v2[39];
    v7 = v2[40];
    v10 = v2[37];
    v9 = v2[38];
    v11 = v2[36];
    v13 = v2[32];
    v12 = v2[33];
    v19 = v2[31];
    v20 = v2[30];
    v21 = v2[29];
    v22 = v2[28];
    v23 = v2[27];
    v24 = v2[26];
    v25 = v2[25];
    v26 = v2[24];
    v27 = v2[23];
    v28 = v2[22];
    v29 = v2[21];
    v30 = v2[18];
    v31 = v2[17];
    v15 = v2 + 15;
    v14 = v2[15];
    v32 = v15[1];

    v16 = *(v4 + 8);

    return v16();
  }

  else
  {
    v18 = v2[12];

    return _swift_task_switch(sub_100BCF2B0, v18, 0);
  }
}

uint64_t sub_100BCF2B0()
{
  v47 = v0;
  v1 = v0[58];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, &v46);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Discovery started.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[58];
  v7 = v0[12];
  v8 = sub_100BBA0A0();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_1000136BC(0xD000000000000016, 0x800000010136EE20, &v46);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v8 + 16);

    *(v11 + 22) = 2080;
    type metadata accessor for Device();
    v12 = Array.description.getter();
    v14 = sub_1000136BC(v12, v13, &v46);

    *(v11 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Buffered devices[%ld]: %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[46];
  v16 = v0[12];
  v17 = v0[13];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v8;
  v19[4] = v17;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v21 = v0[43];
  v20 = v0[44];
  v23 = v0[39];
  v22 = v0[40];
  v25 = v0[37];
  v24 = v0[38];
  v26 = v0[36];
  v27 = v0[32];
  v28 = v0[33];
  v29 = v0[31];
  v32 = v0[30];
  v33 = v0[29];
  v34 = v0[28];
  v35 = v0[27];
  v36 = v0[26];
  v37 = v0[25];
  v38 = v0[24];
  v39 = v0[23];
  v40 = v0[22];
  v41 = v0[21];
  v42 = v0[18];
  v43 = v0[17];
  v44 = v0[16];
  v45 = v0[15];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100BCF6D0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  sub_100BF39E0(*(v0 + 392) + *(v0 + 400), v2, type metadata accessor for DiscoveryState);
  swift_storeEnumTagMultiPayload();
  *(v0 + 570) = sub_100649DB4(v2, v1) & 1;
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  sub_1000163C4(v2, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCF7B8, v4, 0);
}

uint64_t sub_100BCF7B8()
{
  if (*(v0 + 570))
  {
    v1 = *(v0 + 488);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Already waiting for unlock to start scanner.", v4, 2u);
    }

    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v10 = *(v0 + 296);
    v9 = *(v0 + 304);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = *(v0 + 248);
    v35 = *(v0 + 240);
    v37 = *(v0 + 232);
    v39 = *(v0 + 224);
    v41 = *(v0 + 216);
    v43 = *(v0 + 208);
    v45 = *(v0 + 200);
    v47 = *(v0 + 192);
    v49 = *(v0 + 184);
    v51 = *(v0 + 176);
    v53 = *(v0 + 168);
    v55 = *(v0 + 144);
    v57 = *(v0 + 136);
    v59 = *(v0 + 128);
    v61 = *(v0 + 120);

    v15 = *(v0 + 8);
    goto LABEL_10;
  }

  v17 = *(v0 + 360);
  v16 = *(v0 + 368);
  v18 = *(v0 + 224);
  v19 = *(v0 + 152);
  swift_storeEnumTagMultiPayload();
  if ((static WorkItemQueue.called(on:)() & 1) == 0)
  {
    v21 = *(v0 + 224);
    sub_100BEF73C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    sub_1000163C4(v21, type metadata accessor for DiscoveryState);
    v24 = *(v0 + 344);
    v23 = *(v0 + 352);
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v28 = *(v0 + 296);
    v27 = *(v0 + 304);
    v29 = *(v0 + 288);
    v31 = *(v0 + 256);
    v30 = *(v0 + 264);
    v32 = *(v0 + 248);
    v34 = *(v0 + 240);
    v36 = *(v0 + 232);
    v38 = *(v0 + 224);
    v40 = *(v0 + 216);
    v42 = *(v0 + 208);
    v44 = *(v0 + 200);
    v46 = *(v0 + 192);
    v48 = *(v0 + 184);
    v50 = *(v0 + 176);
    v52 = *(v0 + 168);
    v54 = *(v0 + 144);
    v56 = *(v0 + 136);
    v58 = *(v0 + 128);
    v60 = *(v0 + 120);

    v15 = *(v0 + 8);
LABEL_10:

    return v15();
  }

  v20 = *(v0 + 392);

  return _swift_task_switch(sub_100BCFB8C, v20, 0);
}

uint64_t sub_100BCFB8C()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[33], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BCFC14, v1, 0);
}

uint64_t sub_100BCFC14()
{
  v1 = v0[33];
  v2 = sub_100649DB4(v1, v0[28]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[28], type metadata accessor for DiscoveryState);
    v4 = v0[43];
    v3 = v0[44];
    v6 = v0[39];
    v5 = v0[40];
    v8 = v0[37];
    v7 = v0[38];
    v9 = v0[36];
    v10 = v0[32];
    v11 = v0[33];
    v12 = v0[31];
    v18 = v0[30];
    v19 = v0[29];
    v20 = v0[28];
    v21 = v0[27];
    v22 = v0[26];
    v23 = v0[25];
    v24 = v0[24];
    v25 = v0[23];
    v26 = v0[22];
    v27 = v0[21];
    v28 = v0[18];
    v29 = v0[17];
    v30 = v0[16];
    v31 = v0[15];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[62] = v15;
    *v15 = v0;
    v15[1] = sub_100BCFE80;
    v16 = v0[49];
    v17 = v0[28];

    return (sub_10064A314)(v17);
  }
}

uint64_t sub_100BCFE80()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v29 = *v0;

  sub_1000163C4(v1[28], type metadata accessor for DiscoveryState);
  v3 = v1[44];
  v4 = v1[43];
  v5 = v1[40];
  v6 = v1[39];
  v7 = v1[38];
  v8 = v1[37];
  v9 = v1[36];
  v10 = v1[33];
  v15 = v1[32];
  v16 = v1[31];
  v17 = v1[30];
  v18 = v1[29];
  v11 = v1[28];
  v19 = v1[27];
  v20 = v1[26];
  v21 = v1[25];
  v22 = v1[24];
  v23 = v1[23];
  v24 = v1[22];
  v25 = v1[21];
  v26 = v1[18];
  v27 = v1[17];
  v28 = v1[16];
  v12 = v1[15];

  v13 = *(v29 + 8);

  return v13();
}

uint64_t sub_100BD0288()
{
  v1 = v0[49];
  v2 = v0[12];
  sub_100648FF4(v0[18]);

  return _swift_task_switch(sub_100BD02F8, v2, 0);
}

uint64_t sub_100BD02F8()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[34];
  v4 = v0[35];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = *(v2 + 56);
  v0[64] = v9;
  v0[65] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v51 = v9;
  v9(v6, 4, 4, v1);
  (*(v4 + 56))(v6, 0, 1, v3);
  v10 = *(v8 + 48);
  sub_1000D2A70(v5, v7, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000D2A70(v6, v7 + v10, &qword_1016A68C8, &qword_1013B4C58);
  v11 = *(v4 + 48);
  v12 = v11(v7, 1, v3);
  v13 = v0[34];
  if (v12 == 1)
  {
    v14 = v0[18];
    sub_10000B3A8(v0[17], &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v14, &qword_1016A68C8, &qword_1013B4C58);
    if (v11(v7 + v10, 1, v13) == 1)
    {
      sub_10000B3A8(v0[15], &qword_1016A68C8, &qword_1013B4C58);
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  sub_1000D2A70(v0[15], v0[16], &qword_1016A68C8, &qword_1013B4C58);
  if (v11(v7 + v10, 1, v13) == 1)
  {
    v15 = v0[18];
    v16 = v0[16];
    sub_10000B3A8(v0[17], &qword_1016A68C8, &qword_1013B4C58);
    sub_10000B3A8(v15, &qword_1016A68C8, &qword_1013B4C58);
    sub_1000163C4(v16, type metadata accessor for DiscoveryState.Mode);
LABEL_6:
    sub_10000B3A8(v0[15], &unk_1016B7C00, &qword_1013B4C50);
    goto LABEL_7;
  }

  v20 = v0[39];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[16];
  v49 = v0[15];
  sub_100BF3978(v7 + v10, v20, type metadata accessor for DiscoveryState.Mode);
  v24 = sub_100649A24(v23, v20);
  sub_1000163C4(v20, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v22, &qword_1016A68C8, &qword_1013B4C58);
  sub_10000B3A8(v21, &qword_1016A68C8, &qword_1013B4C58);
  sub_1000163C4(v23, type metadata accessor for DiscoveryState.Mode);
  sub_10000B3A8(v49, &qword_1016A68C8, &qword_1013B4C58);
  if (v24)
  {
    goto LABEL_13;
  }

LABEL_7:
  v17 = v0[39];
  v18 = v0[11];
  v51(v17, 4, 4, v0[47]);
  LOBYTE(v18) = sub_100649A24(v18, v17);
  sub_1000163C4(v17, type metadata accessor for DiscoveryState.Mode);
  if ((v18 & 1) == 0 || !*(v0[12] + 192))
  {
LABEL_13:
    v26 = v0[43];
    v25 = v0[44];
    v28 = v0[39];
    v27 = v0[40];
    v30 = v0[37];
    v29 = v0[38];
    v31 = v0[36];
    v32 = v0[32];
    v33 = v0[33];
    v34 = v0[31];
    v37 = v0[30];
    v38 = v0[29];
    v39 = v0[28];
    v40 = v0[27];
    v41 = v0[26];
    v42 = v0[25];
    v43 = v0[24];
    v44 = v0[23];
    v45 = v0[22];
    v46 = v0[21];
    v47 = v0[18];
    v48 = v0[17];
    v50 = v0[16];
    v52 = v0[15];

    v35 = v0[1];

    return v35();
  }

  v19 = v0[49];

  return _swift_task_switch(sub_100BD07A0, v19, 0);
}

uint64_t sub_100BD07A0()
{
  v1 = v0[12];
  sub_100BF39E0(v0[49] + v0[50], v0[27], type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BD0828, v1, 0);
}

uint64_t sub_100BD0828()
{
  v1 = v0[27];
  v2 = v0[19];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v17 = v0[65];
    v18 = v0[64];
    v19 = v0[47];
    v20 = v0[39];
    v21 = v0[36];
    v22 = v0[22];
    sub_100BF39E0(v1, v22, type metadata accessor for DiscoveryState);
    sub_100BF3978(v22, v21, type metadata accessor for DiscoveryState.Mode);
    v18(v20, 4, 4, v19);
    LOBYTE(v19) = sub_100649A24(v21, v20);
    sub_1000163C4(v20, type metadata accessor for DiscoveryState.Mode);
    if (v19)
    {
      v10 = v0 + 36;
      goto LABEL_10;
    }

    v45 = v0[65];
    v46 = v0[46];
    v47 = v0[45];
    v48 = v0[19];
    (v0[64])(v0[21], 4, 4, v0[47]);
    swift_storeEnumTagMultiPayload();
    if ((static WorkItemQueue.called(on:)() & 1) == 0)
    {
      v53 = v0[36];
      v54 = v0[27];
      v55 = v0[21];
      goto LABEL_26;
    }

    v43 = v0[49];
    v44 = sub_100BD1B08;
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_11:
        v23 = v0[63];
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "Unsupported state for user initiated discovery.", v26, 2u);
        }

        v27 = v0[27];

        sub_1000163C4(v27, type metadata accessor for DiscoveryState);
        v29 = v0[43];
        v28 = v0[44];
        v31 = v0[39];
        v30 = v0[40];
        v33 = v0[37];
        v32 = v0[38];
        v34 = v0[36];
        v35 = v0[32];
        v36 = v0[33];
        v37 = v0[31];
        v69 = v0[30];
        v71 = v0[29];
        v73 = v0[28];
        v75 = v0[27];
        v77 = v0[26];
        v79 = v0[25];
        v81 = v0[24];
        v83 = v0[23];
        v85 = v0[22];
        v87 = v0[21];
        v89 = v0[18];
        v91 = v0[17];
        v93 = v0[16];
        v95 = v0[15];

        v38 = v0[1];
        goto LABEL_27;
      }

      v4 = v0[65];
      v5 = v0[64];
      v6 = v0[47];
      v8 = v0[38];
      v7 = v0[39];
      v9 = v0[26];
      sub_100BF39E0(v1, v9, type metadata accessor for DiscoveryState);
      sub_100BF3978(v9, v8, type metadata accessor for DiscoveryState.Mode);
      v5(v7, 4, 4, v6);
      LOBYTE(v6) = sub_100649A24(v8, v7);
      sub_1000163C4(v7, type metadata accessor for DiscoveryState.Mode);
      if (v6)
      {
        v10 = v0 + 38;
LABEL_10:
        sub_1000163C4(*v10, type metadata accessor for DiscoveryState.Mode);
        goto LABEL_11;
      }

      v49 = v0[65];
      v50 = v0[46];
      v51 = v0[45];
      v52 = v0[19];
      (v0[64])(v0[25], 4, 4, v0[47]);
      swift_storeEnumTagMultiPayload();
      if (static WorkItemQueue.called(on:)())
      {
        v43 = v0[49];
        v44 = sub_100BD0F3C;
        goto LABEL_20;
      }

      v53 = v0[38];
      v54 = v0[27];
      v55 = v0[25];
LABEL_26:
      sub_100BEF73C();
      swift_allocError();
      *v56 = 0;
      swift_willThrow();
      sub_1000163C4(v55, type metadata accessor for DiscoveryState);
      sub_1000163C4(v53, type metadata accessor for DiscoveryState.Mode);
      sub_1000163C4(v54, type metadata accessor for DiscoveryState);
      v58 = v0[43];
      v57 = v0[44];
      v60 = v0[39];
      v59 = v0[40];
      v62 = v0[37];
      v61 = v0[38];
      v63 = v0[36];
      v65 = v0[32];
      v64 = v0[33];
      v66 = v0[31];
      v68 = v0[30];
      v70 = v0[29];
      v72 = v0[28];
      v74 = v0[27];
      v76 = v0[26];
      v78 = v0[25];
      v80 = v0[24];
      v82 = v0[23];
      v84 = v0[22];
      v86 = v0[21];
      v88 = v0[18];
      v90 = v0[17];
      v92 = v0[16];
      v94 = v0[15];

      v38 = v0[1];
LABEL_27:

      return v38();
    }

    v11 = v0[65];
    v12 = v0[64];
    v13 = v0[47];
    v14 = v0[39];
    v15 = v0[37];
    v16 = v0[24];
    sub_100BF39E0(v1, v16, type metadata accessor for DiscoveryState);
    sub_100BF3978(v16, v15, type metadata accessor for DiscoveryState.Mode);
    v12(v14, 4, 4, v13);
    LOBYTE(v13) = sub_100649A24(v15, v14);
    sub_1000163C4(v14, type metadata accessor for DiscoveryState.Mode);
    if (v13)
    {
      v10 = v0 + 37;
      goto LABEL_10;
    }

    v39 = v0[65];
    v40 = v0[46];
    v41 = v0[45];
    v42 = v0[19];
    (v0[64])(v0[23], 4, 4, v0[47]);
    swift_storeEnumTagMultiPayload();
    if ((static WorkItemQueue.called(on:)() & 1) == 0)
    {
      v53 = v0[37];
      v54 = v0[27];
      v55 = v0[23];
      goto LABEL_26;
    }

    v43 = v0[49];
    v44 = sub_100BD15E4;
  }

LABEL_20:

  return _swift_task_switch(v44, v43, 0);
}