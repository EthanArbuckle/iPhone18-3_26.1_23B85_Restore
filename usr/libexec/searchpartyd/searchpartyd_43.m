uint64_t sub_10047C560()
{
  v44 = v0;
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[135];
  v5 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v0[158] = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v6 = *(v4 + v5);
  v7 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v6 + v7, v3, &qword_101697268, &qword_101394FE0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000B3A8(v0[154], &qword_101697268, &qword_101394FE0);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016A1010);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v43[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101355E00, v43);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Missing productInfo!", v11, 0xCu);
      sub_100007BAC(v12);
    }

    sub_10048E4E8();
    swift_allocError();
    *v13 = 6;
    swift_willThrow();
LABEL_16:
    v31 = v0[157];
    v32 = v0[154];
    v33 = v0[153];
    v34 = v0[150];
    v35 = v0[149];
    v36 = v0[146];
    v37 = v0[143];
    v38 = v0[140];
    v39 = v0[137];
    v40 = v0[136];

    v41 = v0[1];

    return v41();
  }

  v14 = v0[157];
  v15 = v0[155];
  sub_10048E8F0(v0[154], v14, type metadata accessor for AccessoryProductInfo);
  if (*(v14 + *(v15 + 24)) != 1)
  {
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_1016A1010);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101355E00, v43);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s Not eligible for pairing!", v27, 0xCu);
      sub_100007BAC(v28);
    }

    v29 = v0[157];
    sub_10048E4E8();
    swift_allocError();
    *v30 = 18;
    swift_willThrow();
    sub_10048E958(v29, type metadata accessor for AccessoryProductInfo);
    goto LABEL_16;
  }

  v16 = (v0[135] + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheralProvider);
  v18 = *v16;
  v17 = v16[1];
  ObjectType = swift_getObjectType();
  v20 = async function pointer to dispatch thunk of PairingPeripheralProvider.pair<A>(_:)[1];
  v21 = swift_task_alloc();
  v0[159] = v21;
  v22 = sub_1000BC4D4(&qword_1016A1358, &qword_1013E0350);
  *v21 = v0;
  v21[1] = sub_10047CA80;
  v23 = v0[134];

  return dispatch thunk of PairingPeripheralProvider.pair<A>(_:)(v0 + 132, v23, v22, ObjectType, v17);
}

uint64_t sub_10047CA80()
{
  v2 = *v1;
  v3 = *(*v1 + 1272);
  v4 = *v1;
  *(*v1 + 1280) = v0;

  v5 = *(v2 + 1080);
  if (v0)
  {
    v6 = sub_100480774;
  }

  else
  {
    v6 = sub_10047CBAC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10047CBAC()
{
  v57 = v0;
  v1 = v0[132];
  v0[161] = v1;
  v2 = v0[133];
  v0[162] = v2;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v3 = v0[134];
  v4 = type metadata accessor for Logger();
  v0[163] = sub_1000076D4(v4, qword_1016A1010);
  sub_10001F280(v3, (v0 + 12));
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v56[0] = v8;
    *v7 = 136315138;
    sub_10001F280((v0 + 12), (v0 + 77));
    sub_1000BC4D4(&qword_1016A1370, &qword_1013E03B0);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    sub_100007BAC(v0 + 12);
    v12 = sub_1000136BC(v9, v11, v56);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connected to peripheral: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {

    sub_100007BAC(v0 + 12);
  }

  v13 = v0[158];
  v14 = v0[152];
  v15 = v0[151];
  v16 = v0[150];
  v17 = v0[135];
  v18 = (v17 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  v19 = *(v17 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  *v18 = v1;
  v18[1] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v20 = *(v17 + v13);
  v21 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryMetadata;
  swift_beginAccess();
  sub_1000D2A70(v20 + v21, v16, &qword_1016A62A0, &unk_101396E10);
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    sub_10000B3A8(v0[150], &qword_1016A62A0, &unk_101396E10);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v56[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1000136BC(0xD00000000000001DLL, 0x8000000101355E00, v56);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s Invalid metadata!", v24, 0xCu);
      sub_100007BAC(v25);
    }

    v26 = v0[157];
    sub_10048E4E8();
    swift_allocError();
    *v27 = 10;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10048E958(v26, type metadata accessor for AccessoryProductInfo);
    v28 = v0[157];
    v29 = v0[154];
    v30 = v0[153];
    v31 = v0[150];
    v32 = v0[149];
    v33 = v0[146];
    v34 = v0[143];
    v35 = v0[140];
    v36 = v0[137];
    v37 = v0[136];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v40 = v0[158];
    v41 = v0[153];
    v42 = v0[151];
    v43 = v0[135];
    sub_10048E8F0(v0[150], v41, type metadata accessor for AccessoryMetadata);
    v44 = (v41 + *(v42 + 20));
    v45 = *v44;
    v46 = v44[1];
    v47 = *(v20 + 104);
    v48 = *(v20 + 112);
    *(v20 + 104) = *v44;
    *(v20 + 112) = v46;

    sub_100017D5C(v45, v46);
    sub_100006654(v47, v48);

    v49 = *(v43 + v40);
    v50 = *(v41 + *(v42 + 32));

    v51 = sub_10098E010();
    v52 = *(v49 + 96);
    *(v49 + 88) = v51;
    *(v49 + 96) = v53;

    v54 = swift_task_alloc();
    v0[164] = v54;
    *v54 = v0;
    v54[1] = sub_10047D0FC;
    v55 = v0[135];

    return sub_10048A608();
  }
}

uint64_t sub_10047D0FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1312);
  v7 = *v3;
  v5[165] = a1;
  v5[166] = a2;
  v5[167] = v2;

  v8 = v4[135];
  if (v2)
  {
    v9 = sub_100480888;
  }

  else
  {
    v9 = sub_10047D238;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10047D238()
{
  v76 = v0;
  v1 = v0[163];
  v2 = v0[135];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[158];
    v6 = v0[135];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v75[0] = v8;
    *v7 = 136315138;
    v9 = *(v6 + v5);
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    sub_100017D5C(v10, v11);
    v12 = Data.hexString.getter();
    v14 = v13;
    sub_100016590(v10, v11);
    v15 = sub_1000136BC(v12, v14, v75);

    *(v7 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "sessionNonce: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v16 = v0[166];
  v17 = v0[165];
  v18 = v0[163];
  sub_100017D5C(v17, v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_100016590(v17, v16);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[166];
    v22 = v0[165];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v75[0] = v24;
    *v23 = 136315138;
    v25 = Data.hexString.getter();
    v27 = sub_1000136BC(v25, v26, v75);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "companionSessionNonce: %s", v23, 0xCu);
    sub_100007BAC(v24);
  }

  v28 = sub_100F54748();
  v0[168] = v28;
  v0[169] = v29;
  v30 = v0[163];
  if (v29 >> 60 == 15)
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to generate FindMyNetworkId.", v33, 2u);
    }

    v34 = v0[166];
    v35 = v0[165];
    v36 = v0[161];
    v37 = v0[157];
    v38 = v0[153];

    sub_10048E4E8();
    swift_allocError();
    *v39 = 5;
    swift_willThrow();
    sub_100016590(v35, v34);
    swift_unknownObjectRelease();
    sub_10048E958(v38, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v37, type metadata accessor for AccessoryProductInfo);
    v40 = v0[157];
    v41 = v0[154];
    v42 = v0[153];
    v43 = v0[150];
    v44 = v0[149];
    v45 = v0[146];
    v46 = v0[143];
    v47 = v0[140];
    v48 = v0[137];
    v49 = v0[136];

    v50 = v0[1];

    return v50();
  }

  else
  {
    v52 = v28;
    v53 = v29;
    sub_100017D5C(v28, v29);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    sub_100006654(v52, v53);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75[0] = v57;
      *v56 = 136315138;
      sub_100017D5C(v52, v53);
      v58 = Data.hexString.getter();
      v60 = v59;
      sub_100006654(v52, v53);
      v61 = sub_1000136BC(v58, v60, v75);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "findMyNetworkId: %s", v56, 0xCu);
      sub_100007BAC(v57);
    }

    v62 = v0[135];
    v63 = (*(v62 + v0[158]) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
    v64 = *v63;
    v65 = v63[1];
    *v63 = v52;
    v63[1] = v53;
    sub_10002E98C(v52, v53);

    sub_100006654(v64, v65);

    v66 = *(v62 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCharacteristic);
    type metadata accessor for Characteristic();
    v67 = v0[161];
    v68 = v0[149];
    Identifier.init(stringLiteral:)();
    ObjectType = swift_getObjectType();
    v0[170] = ObjectType;
    v70 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v71 = swift_task_alloc();
    v0[171] = v71;
    *v71 = v0;
    v71[1] = sub_10047D8B4;
    v72 = v0[162];
    v73 = v0[161];
    v74 = v0[149];

    return dispatch thunk of ServiceProtocol.subscript.getter(v74, ObjectType, v72);
  }
}

uint64_t sub_10047D8B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1368);
  v6 = *v2;
  v4[172] = a1;
  v4[173] = v1;

  v7 = v3[149];
  v8 = v3[148];
  v9 = v3[147];
  v10 = v3[135];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_1004809C8;
  }

  else
  {
    v11 = sub_10047DA3C;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10047DA3C()
{
  v65 = v0;
  v62 = *(v0 + 1328);
  v63 = *(v0 + 1384);
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1080);
  v4 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  *(v0 + 1392) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  v5 = *(v3 + v4 + 24);
  v6 = *(v3 + v4 + 32);
  sub_1000035D0((v3 + v4), v5);
  v7 = *(v3 + v2);
  v61 = *(v6 + 64);
  *(v0 + 200) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 208) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 176));

  v61(v9, v1, v62, v5, v6);
  if (v63)
  {
    v10 = *(v0 + 1376);
    v11 = *(v0 + 1352);
    v12 = *(v0 + 1344);
    v13 = *(v0 + 1328);
    v14 = *(v0 + 1320);
    v15 = *(v0 + 1288);
    v16 = *(v0 + 1256);
    v17 = *(v0 + 1224);

    swift_unknownObjectRelease();
    sub_100006654(v12, v11);
    sub_100016590(v14, v13);
    swift_unknownObjectRelease();
    sub_10048E958(v17, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v16, type metadata accessor for AccessoryProductInfo);
    sub_100101758((v0 + 176));
    v42 = *(v0 + 1256);
    v43 = *(v0 + 1232);
    v44 = *(v0 + 1224);
    v45 = *(v0 + 1200);
    v46 = *(v0 + 1192);
    v47 = *(v0 + 1168);
    v48 = *(v0 + 1144);
    v49 = *(v0 + 1120);
    v50 = *(v0 + 1096);
    v51 = *(v0 + 1088);

    v52 = *(v0 + 8);

    return v52();
  }

  else
  {
    v18 = AssociatedConformanceWitness;
    v19 = *(v0 + 1304);

    sub_10001F280(v0 + 176, v0 + 216);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v64 = v23;
      *v22 = 136315138;
      sub_10001F280(v0 + 216, v0 + 56);
      sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      sub_100007BAC((v0 + 216));
      v27 = sub_1000136BC(v24, v26, &v64);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Sending command: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {

      sub_100007BAC((v0 + 216));
    }

    v28 = v18;
    v29 = *(v0 + 1168);
    v30 = *(v0 + 1160);
    v31 = *(v0 + 1152);
    v32 = *(v0 + 1080);
    v33 = enum case for PairingExecutorState.InitiatePairing.commandStart(_:);
    v34 = type metadata accessor for PairingExecutorState.InitiatePairing();
    *(v0 + 1400) = v34;
    v35 = *(v34 - 8);
    v36 = *(v35 + 104);
    *(v0 + 1408) = v36;
    *(v0 + 1416) = (v35 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v36(v29, v33, v34);
    v37 = *(v35 + 56);
    *(v0 + 1424) = v37;
    *(v0 + 1432) = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37(v29, 0, 1, v34);
    *(v0 + 1624) = enum case for PairingExecutorState.initiatePairing(_:);
    v38 = *(v30 + 104);
    *(v0 + 1440) = v38;
    *(v0 + 1448) = (v30 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v38(v29);
    *(v0 + 1456) = type metadata accessor for AirPodsLEPairingExecutor();
    *(v0 + 1464) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor);
    PairingExecutor.setState(_:)();
    v39 = *(v30 + 8);
    *(v0 + 1472) = v39;
    *(v0 + 1480) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v29, v31);
    v40 = *(v28 + 16);
    *(v0 + 1488) = BinaryEncoder.encode<A>(_:)();
    *(v0 + 1496) = v41;
    v54 = *(v0 + 1360);
    v55 = *(v0 + 1296);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 1504) = AssociatedTypeWitness;
    v57 = swift_getAssociatedConformanceWitness();
    *(v0 + 1512) = v57;
    v58 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v59 = swift_task_alloc();
    *(v0 + 1520) = v59;
    *v59 = v0;
    v59[1] = sub_10047E0CC;
    v60 = *(v0 + 1376);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, v57);
  }
}

uint64_t sub_10047E0CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1520);
  v6 = *v2;
  v4[191] = v1;

  v7 = v4[135];
  if (v1)
  {
    v8 = sub_100480B30;
  }

  else
  {
    v4[192] = a1;
    v8 = sub_10047E208;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10047E208()
{
  v1 = v0[192];
  v2 = v0[187];
  v3 = v0[186];
  v4 = fragment(data:mtu:)();
  v0[193] = v4;
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v6 = swift_task_alloc();
  v0[194] = v6;
  *v6 = v0;
  v6[1] = sub_10047E2C8;
  v7 = v0[189];
  v8 = v0[188];
  v9 = v0[172];
  v10 = v0[143];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v10, v4, v8, v7);
}

uint64_t sub_10047E2C8()
{
  v2 = *v1;
  v3 = *(*v1 + 1552);
  v4 = *v1;
  v2[195] = v0;

  v5 = v2[193];
  if (v0)
  {
    v6 = v2[135];

    return _swift_task_switch(sub_100480CBC, v6, 0);
  }

  else
  {

    v7 = async function pointer to AsyncSequence<>.reassemble()[1];
    v8 = swift_task_alloc();
    v2[196] = v8;
    v9 = sub_10048E70C();
    *v8 = v4;
    v8[1] = sub_10047E470;
    v10 = v2[143];
    v11 = v2[141];

    return AsyncSequence<>.reassemble()(v11, v9);
  }
}

uint64_t sub_10047E470(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1568);
  v7 = *v3;
  v5[197] = a1;
  v5[198] = a2;
  v5[199] = v2;

  v8 = v4[143];
  v9 = v4[142];
  v10 = v4[141];
  v11 = v4[135];
  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_100480E48;
  }

  else
  {
    v12 = sub_10047E5FC;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_10047E5FC()
{
  v197 = v0;
  v187 = *(v0 + 1472);
  v192 = *(v0 + 1480);
  v174 = *(v0 + 1456);
  v176 = *(v0 + 1464);
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1432);
  v5 = *(v0 + 1424);
  v6 = *(v0 + 1416);
  v7 = *(v0 + 1400);
  v182 = *(v0 + 1304);
  v8 = *(v0 + 1168);
  v9 = *(v0 + 1152);
  v10 = *(v0 + 1080);
  (*(v0 + 1408))(v8, enum case for PairingExecutorState.InitiatePairing.commandFinish(_:), v7);
  v5(v8, 0, 1, v7);
  v2(v8, v3, v9);
  PairingExecutor.setState(_:)();
  v187(v8, v9);
  sub_10001F280(v0 + 176, v0 + 256);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v196[0] = v14;
    *v13 = 136315138;
    sub_10001F280(v0 + 256, v0 + 136);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100007BAC((v0 + 256));
    v18 = sub_1000136BC(v15, v17, v196);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sent command: %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    sub_100007BAC((v0 + 256));
  }

  v19 = *(v0 + 1592);
  v20 = *(v0 + 1584);
  v21 = *(v0 + 1576);
  v22 = (*(v0 + 1080) + *(v0 + 1392));
  v23 = v22[4];
  sub_1000035D0(v22, v22[3]);
  v24 = sub_1003916CC();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 320) = v24;
  *(v0 + 328) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 296));
  v26 = *(AssociatedConformanceWitness + 8);
  BinaryDecoder.decode<A>(_:from:)();
  if (v19)
  {
    v27 = *(v0 + 1496);
    v28 = *(v0 + 1488);
    v29 = *(v0 + 1376);
    v30 = *(v0 + 1352);
    v31 = *(v0 + 1344);
    v32 = *(v0 + 1328);
    v33 = *(v0 + 1320);
    v34 = *(v0 + 1288);
    v188 = *(v0 + 1256);
    v35 = *(v0 + 1224);
    sub_100016590(*(v0 + 1576), *(v0 + 1584));
    sub_100016590(v28, v27);
    swift_unknownObjectRelease();
    sub_100006654(v31, v30);
    sub_100016590(v33, v32);
    swift_unknownObjectRelease();
    sub_10048E958(v35, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v188, type metadata accessor for AccessoryProductInfo);
    sub_100101758((v0 + 296));
    goto LABEL_33;
  }

  v36 = *(v0 + 1304);
  sub_10001F280(v0 + 296, v0 + 336);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v196[0] = v40;
    *v39 = 136315138;
    sub_10001F280(v0 + 336, v0 + 416);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    sub_100007BAC((v0 + 336));
    v44 = sub_1000136BC(v41, v43, v196);

    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "Received response: %s", v39, 0xCu);
    sub_100007BAC(v40);
  }

  else
  {

    sub_100007BAC((v0 + 336));
  }

  v45 = *(v0 + 1264);
  v46 = *(v0 + 1080);
  v47 = (v46 + *(v0 + 1392));
  v48 = v47[3];
  v49 = v47[4];
  sub_1000035D0(v47, v48);
  (*(AssociatedConformanceWitness + 216))(v24, AssociatedConformanceWitness);
  v50 = *(v46 + v45);
  v51 = *(v49 + 72);

  v51(v0 + 376, v50, v48, v49);
  *(v0 + 1600) = 0;
  v52 = *(v0 + 1264);
  v53 = *(v0 + 1080);
  sub_100007BAC((v0 + 376));

  v54 = *(v53 + v52);
  if (*(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing))
  {
LABEL_26:
    v79 = *(v0 + 1080);
    v80 = (*(v79 + *(v0 + 1264)) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v81 = v80[1];
    if (v81 >> 60 == 15)
    {
      v82 = *(v0 + 1304);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Missing collaborativeKeyC1", v85, 2u);
      }

      v86 = *(v0 + 1584);
      v87 = *(v0 + 1576);
      v88 = *(v0 + 1496);
      v89 = *(v0 + 1488);
      v90 = *(v0 + 1376);
      v91 = *(v0 + 1352);
      v92 = *(v0 + 1344);
      v172 = *(v0 + 1320);
      v175 = *(v0 + 1328);
      v189 = *(v0 + 1256);
      v178 = *(v0 + 1288);
      v184 = *(v0 + 1224);

      sub_10048E4E8();
      swift_allocError();
      *v93 = 15;
      swift_willThrow();
      sub_100016590(v87, v86);
      sub_100016590(v89, v88);
      swift_unknownObjectRelease();
      sub_100006654(v92, v91);
      v94 = v172;
      v95 = v175;
    }

    else
    {
      v96 = *v80;
      v97 = *(v0 + 1600);
      v98 = (v79 + *(v0 + 1392));
      v99 = v98[3];
      v100 = v98[4];
      sub_1000035D0(v98, v99);
      v101 = *(v100 + 128);
      sub_100017D5C(v96, v81);
      v101(v0 + 496, v0 + 536, v96, v81, v99, v100);
      if (!v97)
      {
        v128 = *(v0 + 1304);
        v129 = *(*(v0 + 1080) + *(v0 + 1264));
        sub_10001F280(v0 + 496, v0 + 576);
        v130 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
        swift_beginAccess();

        sub_10002311C(v0 + 576, v129 + v130, &qword_101697378, &unk_101391940);
        swift_endAccess();

        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&_mh_execute_header, v131, v132, "Generated collaborative share", v133, 2u);
        }

        v134 = *(v0 + 1392);
        v135 = *(v0 + 1264);
        v136 = *(v0 + 1080);

        v137 = *(v136 + v134 + 24);
        v138 = *(v136 + v134 + 32);
        sub_1000035D0((v136 + v134), v137);
        v139 = *(v136 + v135);
        v140 = *(v138 + 104);

        v140(v141, v137, v138);
        v142 = *(v0 + 1304);
        v143 = *(v0 + 1080);

        v144 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
        swift_beginAccess();
        sub_10002311C(v0 + 656, v143 + v144, &qword_1016A1348, &unk_1013A5280);
        swift_endAccess();

        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();

        v147 = os_log_type_enabled(v145, v146);
        v171 = *(v0 + 1488);
        v173 = *(v0 + 1496);
        v148 = *(v0 + 1376);
        v180 = *(v0 + 1344);
        v194 = *(v0 + 1328);
        v185 = *(v0 + 1352);
        v190 = *(v0 + 1320);
        v149 = *(v0 + 1288);
        v150 = *(v0 + 1256);
        v151 = *(v0 + 1224);
        if (v147)
        {
          v168 = *(v0 + 1576);
          v169 = *(v0 + 1584);
          v170 = *(v0 + 1224);
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v196[0] = v153;
          *v152 = 136315138;
          v167 = v81;
          sub_1000D2A70(v143 + v144, v0 + 16, &qword_1016A1348, &unk_1013A5280);
          sub_1000BC4D4(&qword_1016A1348, &unk_1013A5280);
          v154 = String.init<A>(describing:)();
          v156 = sub_1000136BC(v154, v155, v196);

          *(v152 + 4) = v156;
          _os_log_impl(&_mh_execute_header, v145, v146, "Created pairing check data %s", v152, 0xCu);
          sub_100007BAC(v153);

          sub_100016590(v168, v169);
          sub_100016590(v171, v173);
          sub_100006654(v96, v167);

          swift_unknownObjectRelease();
          sub_100006654(v180, v185);
          sub_100016590(v190, v194);
          swift_unknownObjectRelease();
          sub_100007BAC((v0 + 496));
          sub_10048E958(v170, type metadata accessor for AccessoryMetadata);
        }

        else
        {
          sub_100016590(*(v0 + 1576), *(v0 + 1584));
          sub_100016590(v171, v173);
          sub_100006654(v96, v81);

          swift_unknownObjectRelease();
          sub_100006654(v180, v185);
          sub_100016590(v190, v194);
          swift_unknownObjectRelease();
          sub_100007BAC((v0 + 496));
          sub_10048E958(v151, type metadata accessor for AccessoryMetadata);
        }

        sub_10048E958(v150, type metadata accessor for AccessoryProductInfo);
        v157 = *(v0 + 1256);
        v158 = *(v0 + 1232);
        v159 = *(v0 + 1224);
        v160 = *(v0 + 1200);
        v161 = *(v0 + 1192);
        v162 = *(v0 + 1168);
        v181 = *(v0 + 1144);
        v186 = *(v0 + 1120);
        v191 = *(v0 + 1096);
        v195 = *(v0 + 1088);
        v163 = *(v0 + 1080);
        v164 = *(v0 + 1072);
        sub_10000A748((v0 + 536), v0 + 736);
        v165 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
        swift_beginAccess();
        sub_10002311C(v0 + 736, v163 + v165, &qword_101697380, &unk_10138BEF0);
        swift_endAccess();
        sub_10001F280(v164, v0 + 816);
        v166 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
        swift_beginAccess();
        sub_10002311C(v0 + 816, v163 + v166, &qword_1016A12E8, &qword_1013A51D8);
        swift_endAccess();
        sub_100007BAC((v0 + 296));
        sub_100007BAC((v0 + 176));

        v119 = *(v0 + 8);
        goto LABEL_34;
      }

      v102 = *(v0 + 1496);
      v103 = *(v0 + 1488);
      v104 = *(v0 + 1376);
      v105 = *(v0 + 1352);
      v106 = *(v0 + 1344);
      v107 = *(v0 + 1328);
      v108 = *(v0 + 1320);
      v189 = *(v0 + 1256);
      v179 = *(v0 + 1288);
      v184 = *(v0 + 1224);
      sub_100016590(*(v0 + 1576), *(v0 + 1584));
      sub_100016590(v103, v102);
      sub_100006654(v96, v81);
      swift_unknownObjectRelease();
      sub_100006654(v106, v105);
      v94 = v108;
      v95 = v107;
    }

    sub_100016590(v94, v95);
    swift_unknownObjectRelease();
    sub_10048E958(v184, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v189, type metadata accessor for AccessoryProductInfo);
    sub_100007BAC((v0 + 296));
LABEL_33:
    sub_100007BAC((v0 + 176));
    v109 = *(v0 + 1256);
    v110 = *(v0 + 1232);
    v111 = *(v0 + 1224);
    v112 = *(v0 + 1200);
    v113 = *(v0 + 1192);
    v114 = *(v0 + 1168);
    v115 = *(v0 + 1144);
    v116 = *(v0 + 1120);
    v117 = *(v0 + 1096);
    v118 = *(v0 + 1088);

    v119 = *(v0 + 8);
LABEL_34:

    return v119();
  }

  v55 = *(v54 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
  v56 = *(v55 + 16);

  if (v56)
  {
    v61 = 0;
    v193 = _swiftEmptyArrayStorage;
    do
    {
      v62 = v61;
      while (1)
      {
        if (v62 >= *(v55 + 16))
        {
          __break(1u);
          return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(isUniquelyReferenced_nonNull_native, v58, v59, v60);
        }

        v61 = v62 + 1;
        v63 = *(v55 + 32 + 16 * v62);
        *(v0 + 1040) = v63;
        v64 = *(&v63 + 1);
        v65 = v63;
        sub_100017D5C(v63, *(&v63 + 1));
        sub_1000E0A3C();
        if ((DataProtocol.isNull.getter() & 1) == 0)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = sub_100016590(v65, v64);
        ++v62;
        if (v56 == v61)
        {
          goto LABEL_24;
        }
      }

      v66 = Data.trimmed.getter();
      v177 = v67;
      v183 = v66;
      sub_100016590(v65, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100A5B840(0, *(v193 + 2) + 1, 1, v193);
        v193 = isUniquelyReferenced_nonNull_native;
      }

      v69 = *(v193 + 2);
      v68 = *(v193 + 3);
      if (v69 >= v68 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100A5B840((v68 > 1), v69 + 1, 1, v193);
        v193 = isUniquelyReferenced_nonNull_native;
      }

      *(v193 + 2) = v69 + 1;
      v70 = &v193[16 * v69];
      *(v70 + 4) = v183;
      *(v70 + 5) = v177;
    }

    while (v56 - 1 != v62);
  }

  else
  {
    v193 = _swiftEmptyArrayStorage;
  }

LABEL_24:
  *(v0 + 1608) = v193;
  v71 = *(v0 + 1264);
  v72 = *(v0 + 1112);
  v73 = *(v0 + 1104);
  v74 = *(v0 + 1096);
  v75 = *(v0 + 1080);

  v76 = *(v75 + v71);
  v77 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v76 + v77, v74, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v72 + 48))(v74, 1, v73) == 1)
  {
    v78 = *(v0 + 1096);

    sub_10000B3A8(v78, &qword_1016A40D0, &unk_10138BE70);
    goto LABEL_26;
  }

  v121 = *(v0 + 1080);
  (*(*(v0 + 1112) + 32))(*(v0 + 1120), *(v0 + 1096), *(v0 + 1104));
  v122 = v121 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore;
  v124 = *(v121 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
  v123 = *(v122 + 8);
  ObjectType = swift_getObjectType();
  v126 = async function pointer to dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)[1];
  v127 = swift_task_alloc();
  *(v0 + 1616) = v127;
  *v127 = v0;
  v127[1] = sub_10047F758;
  v58 = *(v0 + 1120);
  isUniquelyReferenced_nonNull_native = v0 + 696;
  v59 = ObjectType;
  v60 = v123;

  return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(isUniquelyReferenced_nonNull_native, v58, v59, v60);
}

uint64_t sub_10047F758()
{
  v1 = *(*v0 + 1616);
  v2 = *(*v0 + 1080);
  v4 = *v0;

  return _swift_task_switch(sub_10047F868, v2, 0);
}

uint64_t sub_10047F868()
{
  v173 = v0;
  v1 = v0;
  if (*(v0 + 720))
  {
    sub_10000A748((v0 + 696), v0 + 776);
    v2 = *(v0 + 800);
    v3 = v1[101];
    sub_1000035D0(v1 + 97, v1[100]);
    v4 = dispatch thunk of BeaconGroupType.serialNumbers.getter();
    v5 = *(v4 + 16);
    if (v5)
    {
      v169 = v1;
      v6 = v1 + 128;
      v172[0] = _swiftEmptyArrayStorage;
      sub_1011249C4(0, v5, 0);
      v7 = 32;
      v8 = _swiftEmptyArrayStorage;
      do
      {
        v9 = *(v4 + v7);
        *v6 = v9;
        v10 = *(&v9 + 1);
        v11 = v9;
        sub_100017D5C(v9, *(&v9 + 1));
        sub_1000E0A3C();
        if (DataProtocol.isNull.getter())
        {
          v12 = 0;
          v13 = 0xF000000000000000;
        }

        else
        {
          v12 = Data.trimmed.getter();
          v13 = v14;
        }

        sub_100016590(v11, v10);
        v172[0] = v8;
        v16 = v8[2];
        v15 = v8[3];
        if (v16 >= v15 >> 1)
        {
          sub_1011249C4((v15 > 1), v16 + 1, 1);
          v8 = v172[0];
        }

        v8[2] = v16 + 1;
        v17 = &v8[2 * v16];
        v17[4] = v12;
        v17[5] = v13;
        v7 += 16;
        --v5;
      }

      while (v5);

      v1 = v169;
    }

    else
    {

      v8 = _swiftEmptyArrayStorage;
    }

    v19 = v1[201];
    v20 = sub_10112A86C(v8);

    v22 = (v19 + 40);
    v23 = -*(v19 + 16);
    v24 = -1;
    do
    {
      if (v23 + v24 == -1)
      {
        v44 = v1[201];
        (*(v1[139] + 8))(v1[140], v1[138]);

        sub_100007BAC(v1 + 97);
        goto LABEL_20;
      }

      if (++v24 >= *(v19 + 16))
      {
        __break(1u);
        return result;
      }

      v25 = v22 + 2;
      v27 = *(v22 - 1);
      v26 = *v22;
      sub_100017D5C(v27, *v22);
      v28 = sub_10111FED8(v27, v26, v20);
      result = sub_100016590(v27, v26);
      v22 = v25;
    }

    while ((v28 & 1) != 0);
    v29 = v1[201];
    v30 = v1[163];

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v1[201];
    if (v33)
    {
      v35 = swift_slowAlloc();
      v172[0] = swift_slowAlloc();
      *v35 = 136315394;
      v36 = Array.description.getter();
      v38 = v37;

      v39 = sub_1000136BC(v36, v38, v172);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
      sub_10048E9B8();
      v40 = Set.description.getter();
      v42 = v41;

      v43 = sub_1000136BC(v40, v42, v172);

      *(v35 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v31, v32, "Invalid otherSerialNumbers: %s. allSerialNumbers: %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v74 = v1[136];
    sub_10001F280((v1 + 97), (v1 + 57));
    sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
    v75 = type metadata accessor for OwnedBeaconGroup(0);
    v76 = swift_dynamicCast();
    v77 = *(*(v75 - 8) + 56);
    if (v76)
    {
      v78 = v1[163];
      v79 = v1[136];
      v77(v79, 0, 1, v75);
      sub_1005160CC(v78);
      sub_10048E958(v79, type metadata accessor for OwnedBeaconGroup);
    }

    else
    {
      v80 = v1[136];
      v77(v80, 1, 1, v75);
      sub_10000B3A8(v80, &unk_1016AF8B0, &unk_1013A0700);
    }

    v81 = v1[198];
    v82 = v1[197];
    v83 = v1[187];
    v84 = v1[186];
    v85 = v1[172];
    v86 = v1[169];
    v87 = v1[168];
    v146 = v1[165];
    v148 = v1[166];
    v162 = v1[153];
    v166 = v1[157];
    v158 = v1[140];
    v88 = v1[139];
    v151 = v1[161];
    v154 = v1[138];
    sub_10048E4E8();
    swift_allocError();
    *v89 = 7;
    swift_willThrow();
    sub_100016590(v82, v81);
    sub_100016590(v84, v83);
    swift_unknownObjectRelease();
    v60 = v1;
    sub_100006654(v87, v86);
    sub_100016590(v146, v148);
    swift_unknownObjectRelease();
    (*(v88 + 8))(v158, v154);
    sub_10048E958(v162, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v166, type metadata accessor for AccessoryProductInfo);
    sub_100007BAC(v1 + 97);
  }

  else
  {
    v18 = *(v0 + 1608);
    (*(*(v0 + 1112) + 8))(*(v0 + 1120), *(v0 + 1104));

    sub_10000B3A8(v0 + 696, &qword_1016A1350, &qword_1013A5290);
LABEL_20:
    v45 = v1[135];
    v46 = (*(v45 + v1[158]) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
    v47 = v46[1];
    if (v47 >> 60 == 15)
    {
      v48 = v1[163];
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Missing collaborativeKeyC1", v51, 2u);
      }

      v52 = v1[198];
      v53 = v1[197];
      v54 = v1[187];
      v55 = v1[186];
      v56 = v1[172];
      v57 = v1[169];
      v58 = v1[168];
      v150 = v1[165];
      v153 = v1[166];
      v165 = v1[157];
      v156 = v1[161];
      v161 = v1[153];

      sub_10048E4E8();
      swift_allocError();
      *v59 = 15;
      swift_willThrow();
      sub_100016590(v53, v52);
      sub_100016590(v55, v54);
      swift_unknownObjectRelease();
      v60 = v1;
      sub_100006654(v58, v57);
      sub_100016590(v150, v153);
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = *v46;
      v62 = v1[200];
      v63 = (v45 + v1[174]);
      v65 = v63[3];
      v64 = v63[4];
      sub_1000035D0(v63, v65);
      v66 = *(v64 + 128);
      sub_100017D5C(v61, v47);
      v66(v1 + 62, v1 + 67, v61, v47, v65, v64);
      if (!v62)
      {
        v90 = v1[163];
        v91 = *(v1[135] + v1[158]);
        sub_10001F280((v1 + 62), (v1 + 72));
        v92 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
        swift_beginAccess();

        sub_10002311C((v1 + 72), v91 + v92, &qword_101697378, &unk_101391940);
        swift_endAccess();

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v93, v94, "Generated collaborative share", v95, 2u);
        }

        v96 = v1[174];
        v97 = v1[158];
        v98 = v1[135];

        v99 = (v98 + v96);
        v101 = *(v98 + v96 + 24);
        v100 = v99[4];
        sub_1000035D0(v99, v101);
        v102 = *(v98 + v97);
        v103 = *(v100 + 104);

        v103(v104, v101, v100);
        v116 = v1[163];
        v117 = v1[135];

        v118 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
        swift_beginAccess();
        sub_10002311C((v1 + 82), v117 + v118, &qword_1016A1348, &unk_1013A5280);
        swift_endAccess();

        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();

        v121 = os_log_type_enabled(v119, v120);
        v122 = v1[198];
        v123 = v1;
        v124 = v1[197];
        v147 = v123[186];
        v149 = v123[187];
        v152 = v123[172];
        v155 = v123[168];
        v159 = v123[169];
        v163 = v123[165];
        v167 = v123[166];
        v170 = v123[161];
        v125 = v123[157];
        v126 = v123[153];
        if (v121)
        {
          v144 = v122;
          v145 = v123[153];
          v127 = swift_slowAlloc();
          v143 = v47;
          v128 = swift_slowAlloc();
          v172[0] = v128;
          *v127 = 136315138;
          sub_1000D2A70(v117 + v118, (v123 + 2), &qword_1016A1348, &unk_1013A5280);
          sub_1000BC4D4(&qword_1016A1348, &unk_1013A5280);
          v129 = String.init<A>(describing:)();
          v131 = sub_1000136BC(v129, v130, v172);

          *(v127 + 4) = v131;
          _os_log_impl(&_mh_execute_header, v119, v120, "Created pairing check data %s", v127, 0xCu);
          sub_100007BAC(v128);

          sub_100016590(v124, v144);
          sub_100016590(v147, v149);
          sub_100006654(v61, v143);

          swift_unknownObjectRelease();
          sub_100006654(v155, v159);
          sub_100016590(v163, v167);
          swift_unknownObjectRelease();
          sub_100007BAC(v123 + 62);
          sub_10048E958(v145, type metadata accessor for AccessoryMetadata);
        }

        else
        {
          sub_100016590(v124, v122);
          sub_100016590(v147, v149);
          sub_100006654(v61, v47);

          swift_unknownObjectRelease();
          sub_100006654(v155, v159);
          sub_100016590(v163, v167);
          swift_unknownObjectRelease();
          sub_100007BAC(v123 + 62);
          sub_10048E958(v126, type metadata accessor for AccessoryMetadata);
        }

        sub_10048E958(v125, type metadata accessor for AccessoryProductInfo);
        v132 = v123[157];
        v133 = v123;
        v134 = v123[154];
        v135 = v123[153];
        v136 = v123[150];
        v137 = v123[149];
        v138 = v123[146];
        v160 = v133[143];
        v164 = v133[140];
        v168 = v133[137];
        v171 = v133[136];
        v139 = v133[135];
        v140 = v133[134];
        sub_10000A748((v133 + 67), (v133 + 92));
        v141 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
        swift_beginAccess();
        sub_10002311C((v133 + 92), v139 + v141, &qword_101697380, &unk_10138BEF0);
        swift_endAccess();
        sub_10001F280(v140, (v133 + 102));
        v142 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
        swift_beginAccess();
        sub_10002311C((v133 + 102), v139 + v142, &qword_1016A12E8, &qword_1013A51D8);
        swift_endAccess();
        sub_100007BAC(v133 + 37);
        sub_100007BAC(v133 + 22);

        v115 = v133[1];
        goto LABEL_36;
      }

      v67 = v1[187];
      v68 = v1[186];
      v69 = v1[172];
      v70 = v1[169];
      v71 = v1[168];
      v72 = v1[166];
      v73 = v1[165];
      v165 = v1[157];
      v157 = v1[161];
      v161 = v1[153];
      sub_100016590(v1[197], v1[198]);
      sub_100016590(v68, v67);
      sub_100006654(v61, v47);
      swift_unknownObjectRelease();
      sub_100006654(v71, v70);
      sub_100016590(v73, v72);
      v60 = v1;
      swift_unknownObjectRelease();
    }

    sub_10048E958(v161, type metadata accessor for AccessoryMetadata);
    sub_10048E958(v165, type metadata accessor for AccessoryProductInfo);
  }

  sub_100007BAC(v60 + 37);
  sub_100007BAC(v60 + 22);
  v105 = v60[157];
  v106 = v60[154];
  v107 = v60[153];
  v108 = v60[150];
  v109 = v60[149];
  v110 = v60[146];
  v111 = v60[143];
  v112 = v60[140];
  v113 = v60[137];
  v114 = v60[136];

  v115 = v60[1];
LABEL_36:

  return v115();
}

uint64_t sub_100480774()
{
  sub_10048E958(v0[157], type metadata accessor for AccessoryProductInfo);
  v13 = v0[160];
  v1 = v0[157];
  v2 = v0[154];
  v3 = v0[153];
  v4 = v0[150];
  v5 = v0[149];
  v6 = v0[146];
  v7 = v0[143];
  v8 = v0[140];
  v9 = v0[137];
  v10 = v0[136];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100480888()
{
  v1 = v0[161];
  v2 = v0[157];
  v3 = v0[153];
  swift_unknownObjectRelease();
  sub_10048E958(v3, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v2, type metadata accessor for AccessoryProductInfo);
  v16 = v0[167];
  v4 = v0[157];
  v5 = v0[154];
  v6 = v0[153];
  v7 = v0[150];
  v8 = v0[149];
  v9 = v0[146];
  v10 = v0[143];
  v11 = v0[140];
  v12 = v0[137];
  v13 = v0[136];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1004809C8()
{
  v1 = v0[169];
  v2 = v0[168];
  v3 = v0[166];
  v4 = v0[165];
  v5 = v0[161];
  v6 = v0[157];
  v7 = v0[153];
  swift_unknownObjectRelease();
  sub_100006654(v2, v1);
  sub_100016590(v4, v3);
  sub_10048E958(v7, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v6, type metadata accessor for AccessoryProductInfo);
  v20 = v0[173];
  v8 = v0[157];
  v9 = v0[154];
  v10 = v0[153];
  v11 = v0[150];
  v12 = v0[149];
  v13 = v0[146];
  v14 = v0[143];
  v15 = v0[140];
  v16 = v0[137];
  v17 = v0[136];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100480B30()
{
  v1 = v0[172];
  v2 = v0[169];
  v3 = v0[168];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[161];
  v7 = v0[157];
  v8 = v0[153];
  sub_100016590(v0[186], v0[187]);
  swift_unknownObjectRelease();
  sub_100006654(v3, v2);
  sub_100016590(v5, v4);
  swift_unknownObjectRelease();
  sub_10048E958(v8, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v7, type metadata accessor for AccessoryProductInfo);
  sub_100007BAC(v0 + 22);
  v21 = v0[191];
  v9 = v0[157];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[150];
  v13 = v0[149];
  v14 = v0[146];
  v15 = v0[143];
  v16 = v0[140];
  v17 = v0[137];
  v18 = v0[136];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100480CBC()
{
  v1 = v0[172];
  v2 = v0[169];
  v3 = v0[168];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[161];
  v7 = v0[157];
  v8 = v0[153];
  sub_100016590(v0[186], v0[187]);
  swift_unknownObjectRelease();
  sub_100006654(v3, v2);
  sub_100016590(v5, v4);
  swift_unknownObjectRelease();
  sub_10048E958(v8, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v7, type metadata accessor for AccessoryProductInfo);
  sub_100007BAC(v0 + 22);
  v21 = v0[195];
  v9 = v0[157];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[150];
  v13 = v0[149];
  v14 = v0[146];
  v15 = v0[143];
  v16 = v0[140];
  v17 = v0[137];
  v18 = v0[136];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100480E48()
{
  v1 = v0[172];
  v2 = v0[169];
  v3 = v0[168];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[161];
  v7 = v0[157];
  v8 = v0[153];
  sub_100016590(v0[186], v0[187]);
  swift_unknownObjectRelease();
  sub_100006654(v3, v2);
  sub_100016590(v5, v4);
  swift_unknownObjectRelease();
  sub_10048E958(v8, type metadata accessor for AccessoryMetadata);
  sub_10048E958(v7, type metadata accessor for AccessoryProductInfo);
  sub_100007BAC(v0 + 22);
  v21 = v0[199];
  v9 = v0[157];
  v10 = v0[154];
  v11 = v0[153];
  v12 = v0[150];
  v13 = v0[149];
  v14 = v0[146];
  v15 = v0[143];
  v16 = v0[140];
  v17 = v0[137];
  v18 = v0[136];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100480FD4()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for PairingValidatorError();
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[17] = v7;
  *v7 = v1;
  v7[1] = sub_1004811C8;

  return sub_100481AB8();
}

uint64_t sub_1004811C8()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {
    v4 = v3[3];

    return _swift_task_switch(sub_100481374, v4, 0);
  }

  else
  {
    v6 = v3[15];
    v5 = v3[16];
    v7 = v3[14];
    v9 = v3[10];
    v8 = v3[11];
    v11 = v3[8];
    v10 = v3[9];
    v12 = v3[5];

    v13 = v3[1];

    return v13();
  }
}

uint64_t sub_100481374()
{
  v0[2] = v0[18];
  v1 = v0[16];
  v2 = v0[12];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    (*(v4 + 32))(v0[15], v0[16], v5);
    sub_10048E6C4(&qword_101698628, &type metadata accessor for PairingValidatorError);
    v6 = Error.code.getter();
    (*(v4 + 104))(v3, enum case for PairingValidatorError.pairedToAnotherAccount(_:), v5);
    v7 = Error.code.getter();
    v8 = *(v4 + 8);
    v8(v3, v5);
    if (v6 == v7)
    {
      v9 = v0[18];
      v10 = v0[15];
      v59 = v10;
      v11 = v0[13];
      v13 = v0[10];
      v12 = v0[11];
      v70 = v0[9];
      v72 = v0[12];
      v68 = v0[8];
      v57 = v0[7];
      v55 = v0[6];
      v74 = v0[5];
      v60 = v0[4];
      v52 = v0[3];

      v14 = type metadata accessor for UUID();
      v66 = v8;
      v15 = *(*(v14 - 8) + 56);
      v58 = v12;
      v15(v12, 1, 1, v14);
      v54 = v13;
      v15(v13, 1, 1, v14);
      v56 = swift_allocError();
      v63 = *(v11 + 16);
      v63(v16, v10, v72);
      v53 = *(v52 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v74, 1, 1, v17);
      sub_1000D2A70(v12, v70, &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v13, v68, &qword_1016980D0, &unk_10138F3B0);
      v18 = *(v55 + 80);
      v19 = (v18 + 32) & ~v18;
      v20 = (v57 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v18 + v20 + 8) & ~v18;
      v22 = (v21 + v57) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      sub_1000D2AD8(v70, v23 + v19, &qword_1016980D0, &unk_10138F3B0);
      *(v23 + v20) = v53;
      sub_1000D2AD8(v68, v23 + v21, &qword_1016980D0, &unk_10138F3B0);
      *(v23 + v21 + v57) = 3;
      *(v23 + v22 + 8) = v56;
      *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v60;
      swift_retain_n();
      swift_errorRetain();
      sub_10025EDD4(0, 0, v74, &unk_1013A5270, v23);

      sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
      swift_allocError();
      v63(v24, v59, v72);
      swift_willThrow();
      v66(v59, v72);
      v25 = v0[2];

      goto LABEL_6;
    }

    v8(v0[15], v0[12]);
  }

  v71 = v0[18];
  v27 = v0[10];
  v26 = v0[11];
  v28 = v0[9];
  v75 = v0[8];
  v62 = v0[6];
  v64 = v0[7];
  v29 = v0[5];
  v65 = v29;
  v73 = v0[4];
  v30 = v0[2];
  v31 = v0[3];

  v32 = type metadata accessor for UUID();
  v33 = *(*(v32 - 8) + 56);
  v69 = v26;
  v33(v26, 1, 1, v32);
  v67 = v27;
  v33(v27, 1, 1, v32);
  v61 = *(v31 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  sub_1000D2A70(v26, v28, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v27, v75, &qword_1016980D0, &unk_10138F3B0);
  v35 = *(v62 + 80);
  v36 = (v35 + 32) & ~v35;
  v37 = (v64 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + v37 + 8) & ~v35;
  v39 = (v38 + v64) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  sub_1000D2AD8(v28, v40 + v36, &qword_1016980D0, &unk_10138F3B0);
  *(v40 + v37) = v61;
  sub_1000D2AD8(v75, v40 + v38, &qword_1016980D0, &unk_10138F3B0);
  *(v40 + v38 + v64) = 2;
  *(v40 + v39 + 8) = v71;
  *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v73;
  swift_errorRetain();

  swift_errorRetain();

  sub_10025EDD4(0, 0, v65, &unk_1013A5268, v40);

  sub_10000B3A8(v67, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v69, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
  v41 = v0[18];
LABEL_6:
  v43 = v0[15];
  v42 = v0[16];
  v44 = v0[14];
  v46 = v0[10];
  v45 = v0[11];
  v48 = v0[8];
  v47 = v0[9];
  v49 = v0[5];

  v50 = v0[1];

  return v50();
}

uint64_t sub_100481AB8()
{
  v1[124] = v0;
  v2 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[125] = v2;
  v3 = *(v2 - 8);
  v1[126] = v3;
  v4 = *(v3 + 64) + 15;
  v1[127] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[128] = v5;
  v6 = *(v5 - 8);
  v1[129] = v6;
  v7 = *(v6 + 64) + 15;
  v1[130] = swift_task_alloc();
  v8 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v1[131] = swift_task_alloc();
  v9 = type metadata accessor for MACAddress();
  v1[132] = v9;
  v10 = *(v9 - 8);
  v1[133] = v10;
  v11 = *(v10 + 64) + 15;
  v1[134] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8) + 64) + 15;
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v13 = type metadata accessor for PairingExecutorState();
  v1[138] = v13;
  v14 = *(v13 - 8);
  v1[139] = v14;
  v15 = *(v14 + 64) + 15;
  v1[140] = swift_task_alloc();

  return _swift_task_switch(sub_100481D2C, v0, 0);
}

uint64_t sub_100481D2C()
{
  v1 = *(v0 + 992);
  v2 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData;
  swift_beginAccess();
  sub_1000D2A70(v1 + v2, v0 + 424, &qword_1016A1348, &unk_1013A5280);
  if (*(v0 + 448))
  {
    v3 = *(v0 + 1120);
    v4 = *(v0 + 1112);
    v5 = *(v0 + 1104);
    v6 = *(v0 + 992);
    sub_10000A748((v0 + 424), v0 + 704);
    v7 = enum case for PairingExecutorState.PairingLockCheck.requestStart(_:);
    v8 = type metadata accessor for PairingExecutorState.PairingLockCheck();
    *(v0 + 1128) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 104);
    *(v0 + 1136) = v10;
    *(v0 + 1144) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v3, v7, v8);
    v11 = *(v9 + 56);
    *(v0 + 1152) = v11;
    *(v0 + 1160) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v3, 0, 1, v8);
    *(v0 + 1472) = enum case for PairingExecutorState.pairingLockCheck(_:);
    v12 = *(v4 + 104);
    *(v0 + 1168) = v12;
    *(v0 + 1176) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v12(v3);
    *(v0 + 1184) = type metadata accessor for AirPodsLEPairingExecutor();
    *(v0 + 1192) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor);
    PairingExecutor.setState(_:)();
    v13 = *(v4 + 8);
    *(v0 + 1200) = v13;
    *(v0 + 1208) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v3, v5);
    v14 = v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator;
    v16 = *(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator);
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v18 = async function pointer to dispatch thunk of PairingValidator.validateRequest(_:)[1];
    v19 = swift_task_alloc();
    *(v0 + 1216) = v19;
    *v19 = v0;
    v19[1] = sub_1004820B0;

    return dispatch thunk of PairingValidator.validateRequest(_:)(v0 + 224, v0 + 704, ObjectType, v15);
  }

  else
  {
    sub_10000B3A8(v0 + 424, &qword_1016A1348, &unk_1013A5280);
    sub_10048E4E8();
    swift_allocError();
    *v20 = 17;
    swift_willThrow();
    v21 = *(v0 + 1120);
    v22 = *(v0 + 1096);
    v23 = *(v0 + 1088);
    v24 = *(v0 + 1080);
    v25 = *(v0 + 1072);
    v26 = *(v0 + 1048);
    v27 = *(v0 + 1040);
    v28 = *(v0 + 1016);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1004820B0()
{
  v2 = *v1;
  v3 = *(*v1 + 1216);
  v4 = *v1;
  *(*v1 + 1224) = v0;

  v5 = *(v2 + 992);
  if (v0)
  {
    v6 = sub_100484B18;
  }

  else
  {
    v6 = sub_1004821DC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1004821DC()
{
  v88 = v0;
  v85 = *(v0 + 1200);
  v86 = *(v0 + 1208);
  v83 = *(v0 + 1184);
  v84 = *(v0 + 1192);
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1104);
  v10 = *(v0 + 992);
  (*(v0 + 1136))(v8, enum case for PairingExecutorState.PairingLockCheck.requestFinish(_:), v7);
  v5(v8, 0, 1, v7);
  v2(v8, v3, v9);
  PairingExecutor.setState(_:)();
  v85(v8, v9);
  v11 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  *(v0 + 1232) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v12 = *(v10 + v11);
  if (*(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
  {
    v13 = *(v0 + 1096);
    v14 = type metadata accessor for OwnedBeaconGroup(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = sub_10110DFBC(v13, 255);
    v17 = v16;
    sub_10000B3A8(*(v0 + 1096), &unk_1016AF8B0, &unk_1013A0700);
    *(v0 + 1280) = v17;
    *(v0 + 1288) = v15;
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    *(v0 + 1296) = sub_1000076D4(v18, qword_1016A1010);
    sub_100017D5C(v15, v17);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    sub_100016590(v15, v17);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v87[0] = v22;
      *v21 = 136446210;
      v23 = Data.hexString.getter();
      v25 = sub_1000136BC(v23, v24, v87);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "companionPairingEpochs: %{public}s", v21, 0xCu);
      sub_100007BAC(v22);
    }

    v26 = *(v0 + 992);
    v27 = v26 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service;
    v28 = *(v26 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
    *(v0 + 1304) = v28;
    if (v28)
    {
      v29 = *(v27 + 8);
      *(v0 + 1312) = v29;
      v30 = *(v26 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCharacteristic);
      type metadata accessor for Characteristic();
      swift_unknownObjectRetain();
      v70 = *(v0 + 1040);
      Identifier.init(stringLiteral:)();
      ObjectType = swift_getObjectType();
      *(v0 + 1320) = ObjectType;
      v72 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v73 = swift_task_alloc();
      *(v0 + 1328) = v73;
      *v73 = v0;
      v73[1] = sub_1004831FC;
      v74 = *(v0 + 1040);

      return dispatch thunk of ServiceProtocol.subscript.getter(v74, ObjectType, v29);
    }

    sub_10048E4E8();
    swift_allocError();
    *v46 = 2;
    swift_willThrow();
    sub_100016590(v15, v17);
    goto LABEL_19;
  }

  v31 = v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId;
  *(v0 + 1476) = *(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v32 = *(v31 + 1);
  v33 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber;
  if (v32)
  {
    goto LABEL_12;
  }

  v34 = *(v12 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  *(v0 + 1240) = v34;
  v35 = *(v12 + v33 + 8);
  *(v0 + 1248) = v35;
  if (v35 >> 60 == 15)
  {
    goto LABEL_12;
  }

  *(v0 + 976) = v34;
  *(v0 + 984) = v35;
  sub_100017D5C(v34, v35);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v34, v35);
    v12 = *(v10 + v11);
    v33 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber;
LABEL_12:
    v36 = (v12 + v33);
    v34 = *v36;
    v35 = v36[1];
    sub_10002E98C(*v36, v35);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_1016A1010);
    sub_10002E98C(v34, v35);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    sub_100006654(v34, v35);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v87[0] = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      *(v0 + 960) = v34;
      *(v0 + 968) = v35;
      sub_10002E98C(v34, v35);
      sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
      v42 = String.init<A>(describing:)();
      v44 = sub_1000136BC(v42, v43, v87);

      *(v40 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Invalid serial number %{private,mask.hash}s!", v40, 0x16u);
      sub_100007BAC(v41);
    }

    sub_10048E4E8();
    swift_allocError();
    *v45 = 7;
    swift_willThrow();
LABEL_17:
    sub_100006654(v34, v35);
LABEL_19:
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    v47 = *(v0 + 1120);
    v48 = *(v0 + 1096);
    v49 = *(v0 + 1088);
    v50 = *(v0 + 1080);
    v51 = *(v0 + 1072);
    v52 = *(v0 + 1048);
    v53 = *(v0 + 1040);
    v54 = *(v0 + 1016);

    v55 = *(v0 + 8);

    return v55();
  }

  v57 = *(v0 + 1064);
  v58 = *(v0 + 1056);
  v59 = *(v0 + 1048);
  v60 = Data.trimmed.getter();
  v62 = v61;
  *(v0 + 1256) = v60;
  *(v0 + 1264) = v61;
  v63 = *(v10 + v11);
  v64 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v63 + v64, v59, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v57 + 48))(v59, 1, v58) == 1)
  {
    sub_10000B3A8(*(v0 + 1048), &qword_1016A40D0, &unk_10138BE70);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000076D4(v65, qword_1016A1010);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Invalid classic MACAddress!", v68, 2u);
    }

    sub_10048E4E8();
    swift_allocError();
    *v69 = 7;
    swift_willThrow();
    sub_100016590(v60, v62);
    goto LABEL_17;
  }

  v75 = *(v0 + 992);
  (*(*(v0 + 1064) + 32))(*(v0 + 1072), *(v0 + 1048), *(v0 + 1056));
  v76 = v75 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore;
  v78 = *(v75 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
  v77 = *(v76 + 8);
  v79 = swift_getObjectType();
  v80 = async function pointer to dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)[1];
  v81 = swift_task_alloc();
  *(v0 + 1272) = v81;
  *v81 = v0;
  v81[1] = sub_100482B58;
  v82 = *(v0 + 1072);

  return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(v0 + 264, v82, v79, v77);
}

uint64_t sub_100482B58()
{
  v1 = *(*v0 + 1272);
  v2 = *(*v0 + 992);
  v4 = *v0;

  return _swift_task_switch(sub_100482C68, v2, 0);
}

uint64_t sub_100482C68()
{
  v49 = v0;
  v1 = *(v0 + 1088);
  if (*(v0 + 288))
  {
    sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
    v2 = type metadata accessor for OwnedBeaconGroup(0);
    v3 = swift_dynamicCast();
    (*(*(v2 - 8) + 56))(v1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_10000B3A8(v0 + 264, &qword_1016A1350, &qword_1013A5290);
    v2 = type metadata accessor for OwnedBeaconGroup(0);
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  }

  v4 = *(v0 + 1080);
  sub_1000D2A70(*(v0 + 1088), v4, &unk_1016AF8B0, &unk_1013A0700);
  type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v4, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 1080), &unk_1016AF8B0, &unk_1013A0700);
    v5 = *(v0 + 1476);
  }

  else
  {
    v6 = *(v0 + 1476);
    v7 = *(v0 + 1080);
    v8 = sub_1005183F0(*(v0 + 1256), *(v0 + 1264));
    sub_10048E958(v7, type metadata accessor for OwnedBeaconGroup);
    if ((v8 & 0x100) != 0)
    {
      v5 = v6;
    }

    else
    {
      v5 = v8;
    }
  }

  v9 = *(v0 + 1264);
  v10 = *(v0 + 1256);
  v11 = *(v0 + 1248);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1072);
  v14 = *(v0 + 1064);
  v15 = *(v0 + 1056);
  v16 = sub_10110DFBC(*(v0 + 1088), v5);
  v18 = v17;
  sub_100016590(v10, v9);
  sub_100006654(v12, v11);
  (*(v14 + 8))(v13, v15);
  sub_10000B3A8(*(v0 + 1088), &unk_1016AF8B0, &unk_1013A0700);
  *(v0 + 1280) = v18;
  *(v0 + 1288) = v16;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  *(v0 + 1296) = sub_1000076D4(v19, qword_1016A1010);
  sub_100017D5C(v16, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100016590(v16, v18);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v48 = v23;
    *v22 = 136446210;
    v24 = Data.hexString.getter();
    v26 = sub_1000136BC(v24, v25, &v48);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "companionPairingEpochs: %{public}s", v22, 0xCu);
    sub_100007BAC(v23);
  }

  v27 = *(v0 + 992);
  v28 = v27 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service;
  v29 = *(v27 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  *(v0 + 1304) = v29;
  if (v29)
  {
    v30 = *(v28 + 8);
    *(v0 + 1312) = v30;
    v31 = *(v27 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCharacteristic);
    type metadata accessor for Characteristic();
    swift_unknownObjectRetain();
    v43 = *(v0 + 1040);
    Identifier.init(stringLiteral:)();
    ObjectType = swift_getObjectType();
    *(v0 + 1320) = ObjectType;
    v45 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v46 = swift_task_alloc();
    *(v0 + 1328) = v46;
    *v46 = v0;
    v46[1] = sub_1004831FC;
    v47 = *(v0 + 1040);

    return dispatch thunk of ServiceProtocol.subscript.getter(v47, ObjectType, v30);
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
    sub_100016590(v16, v18);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    v33 = *(v0 + 1120);
    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1048);
    v39 = *(v0 + 1040);
    v40 = *(v0 + 1016);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1004831FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1328);
  v6 = *v2;
  v4[167] = a1;
  v4[168] = v1;

  v7 = v3[130];
  v8 = v3[129];
  v9 = v3[128];
  v10 = v3[124];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100484BF0;
  }

  else
  {
    v11 = sub_100483384;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100483384()
{
  v77 = v0;
  v74 = *(v0 + 1344);
  v70 = *(v0 + 1280);
  v72 = *(v0 + 1288);
  v66 = *(v0 + 1208);
  v67 = *(v0 + 1232);
  v63 = *(v0 + 1192);
  v65 = *(v0 + 1200);
  v61 = *(v0 + 1184);
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1472);
  v4 = *(v0 + 1160);
  v5 = *(v0 + 1152);
  v6 = *(v0 + 1144);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1104);
  v10 = *(v0 + 992);
  (*(v0 + 1136))(v8, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationStart(_:), v7);
  v5(v8, 0, 1, v7);
  v2(v8, v3, v9);
  PairingExecutor.setState(_:)();
  v65(v8, v9);
  v11 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  *(v0 + 1352) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
  v12 = *(v10 + v11 + 24);
  v13 = *(v10 + v11 + 32);
  sub_1000035D0((v10 + v11), v12);
  v14 = *(v10 + v67);
  v68 = *(v13 + 80);
  *(v0 + 328) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 336) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 304));

  v68(v16, v0 + 224, v72, v70, v12, v13);
  if (v74)
  {
    v17 = *(v0 + 1336);
    v18 = *(v0 + 1304);
    v19 = *(v0 + 1288);
    v20 = *(v0 + 1280);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v19, v20);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    sub_100101758((v0 + 304));
    v40 = *(v0 + 1120);
    v41 = *(v0 + 1096);
    v42 = *(v0 + 1088);
    v43 = *(v0 + 1080);
    v44 = *(v0 + 1072);
    v45 = *(v0 + 1048);
    v46 = *(v0 + 1040);
    v47 = *(v0 + 1016);

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    v64 = AssociatedConformanceWitness;
    v60 = *(v0 + 1208);
    v62 = *(v0 + 1296);
    v59 = *(v0 + 1200);
    v75 = *(v0 + 1192);
    v71 = *(v0 + 1176);
    v73 = *(v0 + 1184);
    v69 = *(v0 + 1168);
    v21 = *(v0 + 1472);
    v58 = *(v0 + 1472);
    v22 = *(v0 + 1160);
    v23 = *(v0 + 1152);
    v24 = *(v0 + 1144);
    v25 = *(v0 + 1136);
    v26 = *(v0 + 1128);
    v27 = *(v0 + 1120);
    v57 = *(v0 + 1104);
    v28 = *(v0 + 992);

    v25(v27, enum case for PairingExecutorState.PairingLockCheck.signatureVerificationFinish(_:), v26);
    v23(v27, 0, 1, v26);
    v69(v27, v21, v57);
    PairingExecutor.setState(_:)();
    v59(v27, v57);
    v25(v27, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandStart(_:), v26);
    v23(v27, 0, 1, v26);
    v69(v27, v58, v57);
    PairingExecutor.setState(_:)();
    v59(v27, v57);
    sub_10001F280(v0 + 304, v0 + 344);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136315138;
      sub_10001F280(v0 + 344, v0 + 824);
      sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      sub_100007BAC((v0 + 344));
      v36 = sub_1000136BC(v33, v35, &v76);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Sending command: %s", v31, 0xCu);
      sub_100007BAC(v32);
    }

    else
    {

      sub_100007BAC((v0 + 344));
    }

    v37 = *(v64 + 16);
    v38 = *(v0 + 992) + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_encoder;
    *(v0 + 1360) = BinaryEncoder.encode<A>(_:)();
    *(v0 + 1368) = v39;
    v50 = *(v0 + 1320);
    v51 = *(v0 + 1312);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 1376) = AssociatedTypeWitness;
    v53 = swift_getAssociatedConformanceWitness();
    *(v0 + 1384) = v53;
    v54 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v55 = swift_task_alloc();
    *(v0 + 1392) = v55;
    *v55 = v0;
    v55[1] = sub_1004839CC;
    v56 = *(v0 + 1336);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, v53);
  }
}

uint64_t sub_1004839CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1392);
  v6 = *v2;
  v4[175] = v1;

  v7 = v4[124];
  if (v1)
  {
    v8 = sub_100484CEC;
  }

  else
  {
    v4[176] = a1;
    v8 = sub_100483B08;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100483B08()
{
  v1 = v0[176];
  v2 = v0[171];
  v3 = v0[170];
  v4 = fragment(data:mtu:)();
  v0[177] = v4;
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v6 = swift_task_alloc();
  v0[178] = v6;
  *v6 = v0;
  v6[1] = sub_100483BC8;
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[167];
  v10 = v0[127];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v10, v4, v8, v7);
}

uint64_t sub_100483BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 1424);
  v4 = *v1;
  v2[179] = v0;

  v5 = v2[177];
  if (v0)
  {
    v6 = v2[124];

    return _swift_task_switch(sub_100484E0C, v6, 0);
  }

  else
  {

    v7 = async function pointer to AsyncSequence<>.reassemble()[1];
    v8 = swift_task_alloc();
    v2[180] = v8;
    v9 = sub_10048E70C();
    *v8 = v4;
    v8[1] = sub_100483D70;
    v10 = v2[127];
    v11 = v2[125];

    return AsyncSequence<>.reassemble()(v11, v9);
  }
}

uint64_t sub_100483D70(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1440);
  v7 = *v3;
  v5[181] = a1;
  v5[182] = a2;
  v5[183] = v2;

  v8 = v4[127];
  v9 = v4[126];
  v10 = v4[125];
  v11 = v4[124];
  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_100484F2C;
  }

  else
  {
    v12 = sub_100483EFC;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_100483EFC()
{
  v148 = v0;
  v1 = *(v0 + 1296);
  sub_10001F280(v0 + 304, v0 + 384);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v147[0] = v5;
    *v4 = 136315138;
    sub_10001F280(v0 + 384, v0 + 784);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    sub_100007BAC((v0 + 384));
    v9 = sub_1000136BC(v6, v8, v147);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sent command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {

    sub_100007BAC((v0 + 384));
  }

  v137 = *(v0 + 1456);
  v140 = *(v0 + 1464);
  v131 = *(v0 + 1208);
  v134 = *(v0 + 1448);
  v125 = *(v0 + 1192);
  v128 = *(v0 + 1200);
  v119 = *(v0 + 1176);
  v122 = *(v0 + 1184);
  v10 = *(v0 + 1168);
  v11 = *(v0 + 1472);
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1152);
  v14 = *(v0 + 1144);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1120);
  v17 = *(v0 + 1104);
  v18 = (*(v0 + 992) + *(v0 + 1352));
  (*(v0 + 1136))(v16, enum case for PairingExecutorState.PairingLockCheck.finalizeCommandFinish(_:), v15);
  v13(v16, 0, 1, v15);
  v10(v16, v11, v17);
  PairingExecutor.setState(_:)();
  v128(v16, v17);
  v19 = v18[4];
  sub_1000035D0(v18, v18[3]);
  v20 = sub_1003916CC();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 208) = v20;
  *(v0 + 216) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 184));
  v22 = *(AssociatedConformanceWitness + 8);
  BinaryDecoder.decode<A>(_:from:)();
  if (v140)
  {
    v23 = *(v0 + 1368);
    v24 = *(v0 + 1360);
    v25 = *(v0 + 1336);
    v26 = *(v0 + 1304);
    v27 = *(v0 + 1288);
    v28 = *(v0 + 1280);
    sub_100016590(*(v0 + 1448), *(v0 + 1456));
    sub_100016590(v24, v23);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v27, v28);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    sub_100101758((v0 + 184));
  }

  else
  {
    v29 = *(v0 + 1296);
    sub_10001F280(v0 + 184, v0 + 464);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v147[0] = v33;
      *v32 = 136315138;
      sub_10001F280(v0 + 464, v0 + 744);
      sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      sub_100007BAC((v0 + 464));
      v37 = sub_1000136BC(v34, v36, v147);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Received response: %s", v32, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {

      sub_100007BAC((v0 + 464));
    }

    v38 = *(v0 + 1232);
    v39 = *(v0 + 992);
    v40 = (v39 + *(v0 + 1352));
    v41 = v40[3];
    v42 = v40[4];
    sub_1000035D0(v40, v41);
    (*(AssociatedConformanceWitness + 216))(v20, AssociatedConformanceWitness);
    v43 = *(v39 + v38);
    v44 = *(v42 + 88);

    v44(v0 + 504, v43, v41, v42);
    v55 = *(v0 + 992);
    sub_100007BAC((v0 + 504));

    v56 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto;
    swift_beginAccess();
    sub_1000D2A70(v55 + v56, v0 + 584, &qword_101697380, &unk_10138BEF0);
    if (*(v0 + 608))
    {
      v135 = *(v0 + 1352);
      v138 = *(v0 + 1232);
      v129 = *(v0 + 1200);
      v132 = *(v0 + 1208);
      v123 = *(v0 + 1184);
      v126 = *(v0 + 1192);
      v117 = *(v0 + 1168);
      v120 = *(v0 + 1176);
      v57 = *(v0 + 1472);
      v58 = *(v0 + 1160);
      v59 = *(v0 + 1152);
      v60 = *(v0 + 1144);
      v61 = *(v0 + 1136);
      v62 = *(v0 + 1128);
      v63 = *(v0 + 1120);
      v64 = *(v0 + 1104);
      v65 = *(v0 + 992);
      sub_10000A748((v0 + 584), v0 + 544);
      v61(v63, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataStart(_:), v62);
      v59(v63, 0, 1, v62);
      v117(v63, v57, v64);
      PairingExecutor.setState(_:)();
      v129(v63, v64);
      sub_10001F280(v65 + v135, v0 + 624);
      v66 = *(v0 + 648);
      v67 = *(v0 + 656);
      sub_1000035D0((v0 + 624), v66);
      v68 = *(v65 + v138);
      v69 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      swift_beginAccess();
      sub_1000D2A70(v68 + v69, v0 + 664, &qword_101697320, &qword_10138BE90);
      v70 = *(v0 + 688);
      if (v70)
      {
        v71 = *(v0 + 696);
        v72 = sub_1000035D0((v0 + 664), *(v0 + 688));
        v73 = *(v70 - 8);
        v74 = *(v73 + 64) + 15;
        v75 = swift_task_alloc();
        (*(v73 + 16))(v75, v72, v70);
        sub_10000B3A8(v0 + 664, &qword_101697320, &qword_10138BE90);
        v76 = (*(*(*(v71 + 8) + 8) + 40))(v70);
        v78 = v77;
        (*(v73 + 8))(v75, v70);
      }

      else
      {
        sub_10000B3A8(v0 + 664, &qword_101697320, &qword_10138BE90);
        v76 = 0;
        v78 = 0xF000000000000000;
      }

      v139 = v76;
      (*(v67 + 136))(v0 + 544, v76, v78, v66, v67);
      v107 = *(v0 + 1448);
      v108 = *(v0 + 1456);
      v109 = *(v0 + 1360);
      v110 = *(v0 + 1368);
      v111 = *(v0 + 1336);
      v112 = *(v0 + 1304);
      v113 = *(v0 + 1280);
      v114 = *(v0 + 1288);
      v116 = *(v0 + 1208);
      v118 = *(v0 + 1232);
      v115 = *(v0 + 1200);
      v105 = *(v0 + 1184);
      v106 = *(v0 + 1192);
      v103 = *(v0 + 1168);
      v104 = *(v0 + 1176);
      v102 = *(v0 + 1472);
      v88 = *(v0 + 1160);
      v89 = *(v0 + 1152);
      v90 = *(v0 + 1144);
      v91 = *(v0 + 1136);
      v92 = *(v0 + 1128);
      v93 = *(v0 + 1120);
      v94 = *(v0 + 1104);
      v121 = *(v0 + 1096);
      v124 = *(v0 + 1088);
      v127 = *(v0 + 1080);
      v130 = *(v0 + 1072);
      v133 = *(v0 + 1048);
      v136 = *(v0 + 1040);
      v141 = *(v0 + 1016);
      v95 = *(v0 + 992);
      v144 = *(v0 + 136);
      v145 = *(v0 + 152);
      v146 = *(v0 + 168);
      v142 = *(v0 + 104);
      v143 = *(v0 + 120);
      sub_100006654(v139, v78);
      sub_100007BAC((v0 + 624));
      v91(v93, enum case for PairingExecutorState.PairingLockCheck.generatePairingDataFinish(_:), v92);
      v89(v93, 0, 1, v92);
      v103(v93, v102, v94);
      PairingExecutor.setState(_:)();
      sub_100016590(v107, v108);
      sub_100016590(v109, v110);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_100016590(v114, v113);
      v115(v93, v94);
      sub_100007BAC((v0 + 544));
      sub_100007BAC((v0 + 224));
      sub_100007BAC((v0 + 704));
      v96 = *(v95 + v118);
      v97 = v95 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo;
      v98 = *(v95 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 16);
      *(v0 + 16) = *(v95 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo);
      *(v0 + 32) = v98;
      v100 = *(v97 + 48);
      v99 = *(v97 + 64);
      v101 = *(v97 + 32);
      *(v0 + 96) = *(v97 + 80);
      *(v0 + 64) = v100;
      *(v0 + 80) = v99;
      *(v0 + 48) = v101;
      *(v97 + 32) = v144;
      *(v97 + 48) = v145;
      *(v97 + 64) = v146;
      *v97 = v142;
      *(v97 + 16) = v143;
      *(v97 + 80) = v96;

      sub_10000B3A8(v0 + 16, &qword_1016A1320, &unk_1013E02C0);
      sub_100007BAC((v0 + 184));
      sub_100007BAC((v0 + 304));

      v53 = *(v0 + 8);
      goto LABEL_11;
    }

    v79 = *(v0 + 1456);
    v80 = *(v0 + 1448);
    v81 = *(v0 + 1368);
    v82 = *(v0 + 1360);
    v83 = *(v0 + 1336);
    v84 = *(v0 + 1304);
    v85 = *(v0 + 1288);
    v86 = *(v0 + 1280);
    sub_10000B3A8(v0 + 584, &qword_101697380, &unk_10138BEF0);
    sub_10048E4E8();
    swift_allocError();
    *v87 = 3;
    swift_willThrow();
    sub_100016590(v80, v79);
    sub_100016590(v82, v81);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100016590(v85, v86);
    sub_100007BAC((v0 + 224));
    sub_100007BAC((v0 + 704));
    sub_100007BAC((v0 + 184));
  }

  sub_100007BAC((v0 + 304));
  v45 = *(v0 + 1120);
  v46 = *(v0 + 1096);
  v47 = *(v0 + 1088);
  v48 = *(v0 + 1080);
  v49 = *(v0 + 1072);
  v50 = *(v0 + 1048);
  v51 = *(v0 + 1040);
  v52 = *(v0 + 1016);

  v53 = *(v0 + 8);
LABEL_11:

  return v53();
}

uint64_t sub_100484B18()
{
  sub_100007BAC(v0 + 88);
  v1 = v0[153];
  v2 = v0[140];
  v3 = v0[137];
  v4 = v0[136];
  v5 = v0[135];
  v6 = v0[134];
  v7 = v0[131];
  v8 = v0[130];
  v9 = v0[127];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100484BF0()
{
  v1 = v0[163];
  v2 = v0[161];
  v3 = v0[160];
  swift_unknownObjectRelease();
  sub_100016590(v2, v3);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);
  v4 = v0[168];
  v5 = v0[140];
  v6 = v0[137];
  v7 = v0[136];
  v8 = v0[135];
  v9 = v0[134];
  v10 = v0[131];
  v11 = v0[130];
  v12 = v0[127];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100484CEC()
{
  v1 = v0[167];
  v2 = v0[163];
  v3 = v0[161];
  v4 = v0[160];
  sub_100016590(v0[170], v0[171]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v3, v4);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);
  sub_100007BAC(v0 + 38);
  v5 = v0[175];
  v6 = v0[140];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[134];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[127];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100484E0C()
{
  v1 = v0[167];
  v2 = v0[163];
  v3 = v0[161];
  v4 = v0[160];
  sub_100016590(v0[170], v0[171]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v3, v4);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);
  sub_100007BAC(v0 + 38);
  v5 = v0[179];
  v6 = v0[140];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[134];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[127];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100484F2C()
{
  v1 = v0[167];
  v2 = v0[163];
  v3 = v0[161];
  v4 = v0[160];
  sub_100016590(v0[170], v0[171]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100016590(v3, v4);
  sub_100007BAC(v0 + 28);
  sub_100007BAC(v0 + 88);
  sub_100007BAC(v0 + 38);
  v5 = v0[183];
  v6 = v0[140];
  v7 = v0[137];
  v8 = v0[136];
  v9 = v0[135];
  v10 = v0[134];
  v11 = v0[131];
  v12 = v0[130];
  v13 = v0[127];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10048504C(uint64_t a1)
{
  v2[186] = v1;
  v2[185] = a1;
  v2[187] = *v1;
  v3 = *(*(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8) + 64) + 15;
  v2[188] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v2[189] = v4;
  v5 = *(v4 - 8);
  v2[190] = v5;
  v6 = *(v5 + 64) + 15;
  v2[191] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[192] = v7;
  v8 = *(v7 - 8);
  v2[193] = v8;
  v9 = *(v8 + 64) + 15;
  v2[194] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[195] = swift_task_alloc();
  v11 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v2[196] = v11;
  v2[197] = *(v11 + 64);
  v2[198] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v2[201] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v2[202] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();

  return _swift_task_switch(sub_1004852E8, v1, 0);
}

uint64_t sub_1004852E8()
{
  v69 = v0;
  v1 = *(v0 + 1488);
  v2 = v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo;
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 16);
  *(v0 + 104) = *(v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo);
  *(v0 + 120) = v3;
  v5 = *(v2 + 48);
  v4 = *(v2 + 64);
  v6 = *(v2 + 80);
  *(v0 + 136) = *(v2 + 32);
  *(v0 + 184) = v6;
  *(v0 + 168) = v4;
  *(v0 + 152) = v5;
  v7 = *(v2 + 16);
  *(v0 + 368) = *v2;
  *(v0 + 384) = v7;
  v9 = *(v2 + 48);
  v8 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 32);
  *(v0 + 448) = v10;
  *(v0 + 416) = v9;
  *(v0 + 432) = v8;
  *(v0 + 400) = v11;
  v12 = v10;
  if (v10)
  {
    v13 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
    *(v0 + 1648) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
    v14 = *(v1 + v13);
    if (*(v14 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
    {
      v15 = *(v0 + 1640);
      v16 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
      swift_beginAccess();
      sub_1000D2A70(v14 + v16, v15, &qword_1016A40D0, &unk_10138BE70);
      v17 = *(v0 + 152);
      *(v0 + 312) = *(v0 + 136);
      *(v0 + 328) = v17;
      *(v0 + 344) = *(v0 + 168);
      *(v0 + 360) = *(v0 + 184);
      v18 = *(v0 + 120);
      *(v0 + 280) = *(v0 + 104);
      *(v0 + 296) = v18;
      sub_10048E668(v0 + 280, v0 + 192);
      if (qword_101694720 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 1640);
      v20 = *(v0 + 1632);
      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_1016A1010);
      sub_1000D2A70(v19, v20, &qword_1016A40D0, &unk_10138BE70);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      v24 = os_log_type_enabled(v22, v23);
      v25 = *(v0 + 1632);
      if (v24)
      {
        v26 = *(v0 + 1624);
        v27 = *(v0 + 1616);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v68 = v29;
        *v28 = 136446210;
        sub_1000D2A70(v25, v26, &qword_1016A40D0, &unk_10138BE70);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        sub_10000B3A8(v25, &qword_1016A40D0, &unk_10138BE70);
        v33 = sub_1000136BC(v30, v32, &v68);

        *(v28 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v22, v23, "Creating standalone beacon. classicMACAddress %{public}s", v28, 0xCu);
        sub_100007BAC(v29);
      }

      else
      {

        sub_10000B3A8(v25, &qword_1016A40D0, &unk_10138BE70);
      }

      v56 = (*(v0 + 1488) + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
      v58 = *v56;
      v57 = v56[1];
      ObjectType = swift_getObjectType();
      *(v0 + 1360) = &type metadata for InitialPairingInfo;
      *(v0 + 1368) = sub_10048E614();
      v60 = swift_allocObject();
      *(v0 + 1336) = v60;
      v61 = *(v0 + 416);
      v60[3] = *(v0 + 400);
      v60[4] = v61;
      v60[5] = *(v0 + 432);
      v62 = *(v0 + 384);
      v60[1] = *(v0 + 368);
      v60[2] = v62;
      v63 = *(v0 + 448);
      *(v0 + 1400) = type metadata accessor for AccessoryPairingInfo(0);
      *(v0 + 1408) = sub_10048E6C4(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo);
      *(v0 + 1376) = v63;
      sub_100102538(v0 + 368, v0 + 456);
      v64 = async function pointer to dispatch thunk of PairingBeaconStore.generateStandaloneBeaconRecord(pairingKeys:accessory:)[1];

      v65 = swift_task_alloc();
      *(v0 + 1656) = v65;
      *v65 = v0;
      v65[1] = sub_10048597C;

      return dispatch thunk of PairingBeaconStore.generateStandaloneBeaconRecord(pairingKeys:accessory:)(v0 + 1296, v0 + 1336, v0 + 1376, ObjectType, v57);
    }

    else
    {
      v46 = (v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
      v48 = *v46;
      v47 = v46[1];
      v49 = swift_getObjectType();
      *(v0 + 1280) = &type metadata for InitialPairingInfo;
      *(v0 + 1288) = sub_10048E614();
      v50 = swift_allocObject();
      *(v0 + 1256) = v50;
      v50[1] = *v2;
      v51 = *(v2 + 64);
      v53 = *(v2 + 16);
      v52 = *(v2 + 32);
      v50[4] = *(v2 + 48);
      v50[5] = v51;
      v50[2] = v53;
      v50[3] = v52;
      *(v0 + 1040) = type metadata accessor for AccessoryPairingInfo(0);
      *(v0 + 1048) = sub_10048E6C4(&qword_1016A1318, type metadata accessor for AccessoryPairingInfo);
      *(v0 + 1016) = v12;
      sub_1000D2A70(v0 + 104, v0 + 16, &qword_1016A1320, &unk_1013E02C0);
      sub_100102538(v0 + 368, v0 + 536);
      v54 = async function pointer to dispatch thunk of PairingBeaconStore.generateBeaconGroupAndRecord(pairingKeys:accessory:)[1];

      v55 = swift_task_alloc();
      *(v0 + 1672) = v55;
      *v55 = v0;
      v55[1] = sub_100485E54;

      return dispatch thunk of PairingBeaconStore.generateBeaconGroupAndRecord(pairingKeys:accessory:)(v0 + 856, v0 + 1256, v0 + 1016, v49, v47);
    }
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v34 = 4;
    swift_willThrow();
    v35 = *(v0 + 1640);
    v36 = *(v0 + 1632);
    v37 = *(v0 + 1624);
    v38 = *(v0 + 1608);
    v39 = *(v0 + 1600);
    v40 = *(v0 + 1592);
    v41 = *(v0 + 1584);
    v42 = *(v0 + 1560);
    v43 = *(v0 + 1552);
    v66 = *(v0 + 1528);
    v67 = *(v0 + 1504);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_10048597C()
{
  v2 = *v1;
  v3 = (*v1)[207];
  v8 = *v1;
  (*v1)[208] = v0;

  if (v0)
  {
    v4 = v2[186];
    v5 = sub_100486E60;
  }

  else
  {
    v6 = v2[186];
    sub_100007BAC(v2 + 172);
    sub_100007BAC(v2 + 167);
    v5 = sub_100485AAC;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100485AAC()
{
  v1 = v0[201];
  v2 = v0[200];
  v29 = v0[199];
  v30 = v0[206];
  v38 = v0[205];
  v39 = v0[198];
  v32 = v0[196];
  v3 = v0[195];
  v33 = v3;
  v34 = v0[197];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[186];
  v36 = v0[187];
  v37 = v0[185];
  v7 = v0[166];
  sub_1000035D0(v0 + 162, v0[165]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  v8 = *(v4 + 56);
  v35 = v1;
  v8(v1, 0, 1, v5);
  v8(v2, 1, 1, v5);
  v31 = *(v6 + v30);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_1000D2A70(v1, v29, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v2, v39, &qword_1016980D0, &unk_10138F3B0);
  v10 = *(v32 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = (v34 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + v12 + 8) & ~v10;
  v14 = (v13 + v34) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1000D2AD8(v29, v15 + v11, &qword_1016980D0, &unk_10138F3B0);
  *(v15 + v12) = v31;
  sub_1000D2AD8(v39, v15 + v13, &qword_1016980D0, &unk_10138F3B0);
  *(v15 + v13 + v34) = 1;
  *(v15 + v14 + 8) = 0;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  swift_retain_n();
  sub_10025EDD4(0, 0, v33, &unk_1013A5250, v15);

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v35, &qword_1016980D0, &unk_10138F3B0);
  v16 = v0[166];
  sub_1000035D0(v0 + 162, v0[165]);
  dispatch thunk of BeaconRecordType.identifier.getter();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  sub_10000B3A8(v38, &qword_1016A40D0, &unk_10138BE70);
  sub_100007BAC(v0 + 162);
  v17 = v0[205];
  v18 = v0[204];
  v19 = v0[203];
  v20 = v0[201];
  v21 = v0[200];
  v22 = v0[199];
  v23 = v0[198];
  v24 = v0[195];
  v25 = v0[194];
  v26 = v0[191];
  v40 = v0[188];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100485E54()
{
  v2 = *v1;
  v3 = (*v1)[209];
  v8 = *v1;
  (*v1)[210] = v0;

  if (v0)
  {
    v4 = v2[186];
    v5 = sub_1004871D8;
  }

  else
  {
    v6 = v2[186];
    sub_100007BAC(v2 + 127);
    sub_100007BAC(v2 + 157);
    v5 = sub_100485F84;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100485F84()
{
  v136 = v0;
  sub_1000D2A70(v0 + 856, v0 + 696, &qword_1016A1328, &qword_1013A5228);
  if (*(v0 + 720))
  {
    v1 = *(v0 + 744);
    *(v0 + 648) = *(v0 + 728);
    *(v0 + 664) = v1;
    *(v0 + 680) = *(v0 + 760);
    v2 = *(v0 + 712);
    *(v0 + 616) = *(v0 + 696);
    *(v0 + 632) = v2;
    v124 = v0 + 616;
    sub_1000D2A70(v0 + 616, v0 + 776, &qword_1016A1338, &qword_1013A5230);
    sub_10000A748((v0 + 776), v0 + 936);
    sub_10000A748((v0 + 816), v0 + 976);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016A1010);
    sub_10001F280(v0 + 936, v0 + 1416);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 1552);
      v7 = *(v0 + 1544);
      v130 = *(v0 + 1536);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v135[0] = v9;
      *v8 = 136315138;
      v10 = *(v0 + 1448);
      sub_1000035D0((v0 + 1416), *(v0 + 1440));
      dispatch thunk of BeaconRecordType.identifier.getter();
      sub_10048E6C4(&qword_101696930, &type metadata accessor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      (*(v7 + 8))(v6, v130);
      sub_100007BAC((v0 + 1416));
      v14 = sub_1000136BC(v11, v13, v135);

      *(v8 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Generated new beacon %s", v8, 0xCu);
      sub_100007BAC(v9);
    }

    else
    {

      sub_100007BAC((v0 + 1416));
    }

    sub_10001F280(v0 + 976, v0 + 1056);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v135[0] = v25;
      *v24 = 136315138;
      sub_10001F280(v0 + 1056, v0 + 1216);
      sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_100007BAC((v0 + 1056));
      v29 = sub_1000136BC(v26, v28, v135);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Beacon group: %s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      sub_100007BAC((v0 + 1056));
    }

    v108 = *(v0 + 1648);
    v30 = *(v0 + 1608);
    v129 = *(v0 + 1600);
    v111 = *(v0 + 1592);
    v131 = *(v0 + 1584);
    v113 = *(v0 + 1568);
    v114 = *(v0 + 1576);
    v31 = *(v0 + 1560);
    v110 = v31;
    v32 = *(v0 + 1544);
    v33 = *(v0 + 1536);
    v120 = *(v0 + 1512);
    v122 = *(v0 + 1520);
    v116 = *(v0 + 1496);
    v118 = *(v0 + 1504);
    v107 = *(v0 + 1488);
    v34 = *(v0 + 968);
    sub_1000035D0((v0 + 936), *(v0 + 960));
    dispatch thunk of BeaconRecordType.identifier.getter();
    v35 = *(v32 + 56);
    v112 = v30;
    v35(v30, 0, 1, v33);
    v36 = *(v0 + 1008);
    sub_1000035D0((v0 + 976), *(v0 + 1000));
    dispatch thunk of BeaconGroupType.identifier.getter();
    v35(v129, 0, 1, v33);
    v109 = *(v107 + v108);
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
    sub_1000D2A70(v30, v111, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v129, v131, &qword_1016980D0, &unk_10138F3B0);
    v38 = *(v113 + 80);
    v39 = (v38 + 32) & ~v38;
    v40 = (v114 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v38 + v40 + 8) & ~v38;
    v42 = (v41 + v114) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    sub_1000D2AD8(v111, v43 + v39, &qword_1016980D0, &unk_10138F3B0);
    *(v43 + v40) = v109;
    sub_1000D2AD8(v131, v43 + v41, &qword_1016980D0, &unk_10138F3B0);
    *(v43 + v41 + v114) = 1;
    *(v43 + v42 + 8) = 0;
    *(v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8)) = v116;
    swift_retain_n();
    sub_10025EDD4(0, 0, v110, &unk_1013A5238, v43);

    sub_10000B3A8(v129, &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v112, &qword_1016980D0, &unk_10138F3B0);
    sub_10001F280(v0 + 976, v0 + 1096);
    sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
    v44 = swift_dynamicCast();
    v45 = *(v122 + 56);
    if (v44)
    {
      v46 = *(v0 + 1648);
      v47 = *(v0 + 1528);
      v48 = *(v0 + 1512);
      v49 = *(v0 + 1504);
      v50 = *(v0 + 1488);
      v51 = *(v0 + 1480);
      v45(v49, 0, 1, v48);
      sub_10048E8F0(v49, v47, type metadata accessor for OwnedBeaconGroup);
      v52 = *(v50 + v46);
      v53 = *(v47 + *(v48 + 40));

      v54 = sub_100F524A0(v53);
      v55 = *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
      *(v52 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v54;

      v56 = *(v0 + 968);
      sub_1000035D0((v0 + 936), *(v0 + 960));
      dispatch thunk of BeaconRecordType.identifier.getter();
      sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
      sub_10000B3A8(v124, &qword_1016A1338, &qword_1013A5230);
      sub_10000B3A8(v0 + 856, &qword_1016A1328, &qword_1013A5228);
      sub_10048E958(v47, type metadata accessor for OwnedBeaconGroup);
      sub_100007BAC((v0 + 976));
      sub_100007BAC((v0 + 936));
      v57 = *(v0 + 1640);
      v58 = *(v0 + 1632);
      v59 = *(v0 + 1624);
      v60 = *(v0 + 1608);
      v61 = *(v0 + 1600);
      v62 = *(v0 + 1592);
      v63 = *(v0 + 1584);
      v64 = *(v0 + 1560);
      v65 = *(v0 + 1552);
      v66 = *(v0 + 1528);
      v132 = *(v0 + 1504);

      v67 = *(v0 + 8);
      goto LABEL_22;
    }

    v68 = *(v0 + 1504);
    v45(v68, 1, 1, *(v0 + 1512));
    sub_10000B3A8(v68, &unk_1016AF8B0, &unk_1013A0700);
    sub_10001F280(v0 + 976, v0 + 1136);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v135[0] = v72;
      *v71 = 136315138;
      sub_10001F280(v0 + 1136, v0 + 1176);
      v73 = String.init<A>(describing:)();
      v75 = v74;
      sub_100007BAC((v0 + 1136));
      v76 = sub_1000136BC(v73, v75, v135);

      *(v71 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unexpected beacon group type: %s", v71, 0xCu);
      sub_100007BAC(v72);
    }

    else
    {

      sub_100007BAC((v0 + 1136));
    }

    v77 = type metadata accessor for PairingInfoStoreError();
    sub_10048E6C4(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError);
    v78 = swift_allocError();
    (*(*(v77 - 8) + 104))(v79, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v77);
    v128 = v78;
    swift_willThrow();
    sub_10000B3A8(v124, &qword_1016A1338, &qword_1013A5230);
    sub_10000B3A8(v0 + 856, &qword_1016A1328, &qword_1013A5228);
    sub_100007BAC((v0 + 976));
    sub_100007BAC((v0 + 936));
  }

  else
  {
    sub_10000B3A8(v0 + 696, &qword_1016A1328, &qword_1013A5228);
    if (qword_101694720 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016A1010);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to generate new beacon", v18, 2u);
    }

    v19 = type metadata accessor for PairingInfoStoreError();
    sub_10048E6C4(&qword_1016A1330, &type metadata accessor for PairingInfoStoreError);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, enum case for PairingInfoStoreError.missingOwnerRecord(_:), v19);
    v128 = v20;
    swift_willThrow();
    sub_10000B3A8(v0 + 856, &qword_1016A1328, &qword_1013A5228);
  }

  v80 = *(v0 + 1648);
  v81 = *(v0 + 1608);
  v82 = *(v0 + 1600);
  v115 = *(v0 + 1592);
  v133 = *(v0 + 1584);
  v83 = *(v0 + 1576);
  v117 = *(v0 + 1568);
  v84 = *(v0 + 1560);
  v121 = v84;
  v85 = *(v0 + 1536);
  v86 = *(v0 + 1496);
  v125 = v86;
  v126 = v81;
  v87 = *(v0 + 1488);
  v88 = *(*(v0 + 1544) + 56);
  v88(v81, 1, 1, v85);
  v123 = v82;
  v88(v82, 1, 1, v85);
  v119 = *(v87 + v80);
  v89 = type metadata accessor for TaskPriority();
  (*(*(v89 - 8) + 56))(v84, 1, 1, v89);
  sub_1000D2A70(v81, v115, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v82, v133, &qword_1016980D0, &unk_10138F3B0);
  v90 = *(v117 + 80);
  v91 = (v90 + 32) & ~v90;
  v92 = (v83 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v90 + v92 + 8) & ~v90;
  v94 = v93 + v83;
  v95 = (v93 + v83) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  *(v96 + 16) = 0;
  *(v96 + 24) = 0;
  sub_1000D2AD8(v115, v96 + v91, &qword_1016980D0, &unk_10138F3B0);
  *(v96 + v92) = v119;
  sub_1000D2AD8(v133, v96 + v93, &qword_1016980D0, &unk_10138F3B0);
  *(v96 + v94) = 2;
  *(v96 + v95 + 8) = v128;
  *(v96 + ((v95 + 23) & 0xFFFFFFFFFFFFFFF8)) = v125;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v121, &unk_1013A5220, v96);

  sub_10000B3A8(v123, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v126, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
  sub_10000B3A8(v0 + 104, &qword_1016A1320, &unk_1013E02C0);
  v97 = *(v0 + 1640);
  v98 = *(v0 + 1632);
  v99 = *(v0 + 1624);
  v100 = *(v0 + 1608);
  v101 = *(v0 + 1600);
  v102 = *(v0 + 1592);
  v103 = *(v0 + 1584);
  v104 = *(v0 + 1560);
  v105 = *(v0 + 1552);
  v127 = *(v0 + 1528);
  v134 = *(v0 + 1504);

  v67 = *(v0 + 8);
LABEL_22:

  return v67();
}

uint64_t sub_100486E60()
{
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[199];
  v37 = v0[198];
  v28 = v0[206];
  v30 = v0[196];
  v4 = v0[195];
  v31 = v0[197];
  v32 = v4;
  v5 = v0[193];
  v6 = v0[192];
  v34 = v0[208];
  v35 = v0[187];
  v7 = v0[186];
  sub_10000B3A8(v0[205], &qword_1016A40D0, &unk_10138BE70);
  sub_100007BAC(v0 + 172);
  sub_100007BAC(v0 + 167);
  v8 = *(v5 + 56);
  v33 = v1;
  v8(v1, 1, 1, v6);
  v8(v2, 1, 1, v6);
  v29 = *(v7 + v28);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1000D2A70(v1, v3, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v2, v37, &qword_1016980D0, &unk_10138F3B0);
  v10 = *(v30 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = (v31 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v10 + v12 + 8) & ~v10;
  v14 = (v13 + v31) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1000D2AD8(v3, v15 + v11, &qword_1016980D0, &unk_10138F3B0);
  *(v15 + v12) = v29;
  sub_1000D2AD8(v37, v15 + v13, &qword_1016980D0, &unk_10138F3B0);
  *(v15 + v13 + v31) = 2;
  *(v15 + v14 + 8) = v34;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v32, &unk_1013A5248, v15);

  sub_10000B3A8(v2, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v33, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  v16 = v0[205];
  v17 = v0[204];
  v18 = v0[203];
  v19 = v0[201];
  v20 = v0[200];
  v21 = v0[199];
  v22 = v0[198];
  v23 = v0[195];
  v24 = v0[194];
  v25 = v0[191];
  v36 = v0[188];
  v38 = v0[208];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1004871D8()
{
  sub_100007BAC(v0 + 127);
  sub_100007BAC(v0 + 157);
  v1 = v0[210];
  v2 = v0[206];
  v3 = v0[201];
  v4 = v0[200];
  v38 = v1;
  v39 = v0[198];
  v5 = v0[197];
  v30 = v0[199];
  v31 = v0[196];
  v6 = v0[195];
  v33 = v6;
  v7 = v0[192];
  v8 = v0[187];
  v35 = v8;
  v36 = v3;
  v9 = v0[186];
  v10 = *(v0[193] + 56);
  v10(v3, 1, 1, v7);
  v34 = v4;
  v10(v4, 1, 1, v7);
  v32 = *(v9 + v2);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1000D2A70(v3, v30, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v4, v39, &qword_1016980D0, &unk_10138F3B0);
  v12 = *(v31 + 80);
  v13 = (v12 + 32) & ~v12;
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v12 + v14 + 8) & ~v12;
  v16 = v15 + v5;
  v17 = (v15 + v5) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1000D2AD8(v30, v18 + v13, &qword_1016980D0, &unk_10138F3B0);
  *(v18 + v14) = v32;
  sub_1000D2AD8(v39, v18 + v15, &qword_1016980D0, &unk_10138F3B0);
  *(v18 + v16) = 2;
  *(v18 + v17 + 8) = v38;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v33, &unk_1013A5220, v18);

  sub_10000B3A8(v34, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v36, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();
  sub_10000B3A8((v0 + 13), &qword_1016A1320, &unk_1013E02C0);
  v19 = v0[205];
  v20 = v0[204];
  v21 = v0[203];
  v22 = v0[201];
  v23 = v0[200];
  v24 = v0[199];
  v25 = v0[198];
  v26 = v0[195];
  v27 = v0[194];
  v37 = v0[191];
  v40 = v0[188];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100487534()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_1004876B4;

  return sub_100487B44();
}

uint64_t sub_1004876B4()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[5];

    return _swift_task_switch(sub_100487828, v4, 0);
  }

  else
  {
    v6 = v3[12];
    v5 = v3[13];
    v8 = v3[10];
    v7 = v3[11];
    v9 = v3[7];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_100487828()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v21 = v3;
  v5 = v0[9];
  v23 = v0[8];
  v6 = v0[7];
  v24 = v6;
  v27 = v0[15];
  v28 = v0[6];
  v7 = v0[5];
  v8 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  v26 = v1;
  sub_1000D2A70(v7 + v8, v1, &qword_1016980D0, &unk_10138F3B0);
  v9 = type metadata accessor for UUID();
  v25 = v2;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v22 = *(v7 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1000D2A70(v1, v4, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v2, v3, &qword_1016980D0, &unk_10138F3B0);
  v11 = *(v23 + 80);
  v12 = (v11 + 32) & ~v11;
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + v13 + 8) & ~v11;
  v15 = v14 + v5;
  v16 = (v14 + v5) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1000D2AD8(v4, v17 + v12, &qword_1016980D0, &unk_10138F3B0);
  *(v17 + v13) = v22;
  sub_1000D2AD8(v21, v17 + v14, &qword_1016980D0, &unk_10138F3B0);
  *(v17 + v15) = 2;
  *(v17 + v16 + 8) = v27;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
  swift_errorRetain();
  swift_retain_n();
  swift_errorRetain();
  sub_10025EDD4(0, 0, v24, &unk_1013A5200, v17);

  sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v26, &qword_1016980D0, &unk_10138F3B0);
  swift_willThrow();

  v18 = v0[1];
  v19 = v0[15];

  return v18();
}

uint64_t sub_100487B44()
{
  v1[35] = v0;
  v2 = type metadata accessor for PairingExecutorState();
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v4 = *(v3 + 64) + 15;
  v1[38] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[39] = v5;
  v6 = *(v5 - 8);
  v1[40] = v6;
  v7 = *(v6 + 64) + 15;
  v1[41] = swift_task_alloc();

  return _swift_task_switch(sub_100487C6C, v0, 0);
}

uint64_t sub_100487C6C()
{
  v1 = v0[35];
  v2 = v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service;
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  v0[42] = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    v0[43] = v4;
    v5 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral;
    swift_beginAccess();
    sub_1000D2A70(v1 + v5, (v0 + 2), &qword_1016A12E8, &qword_1013A51D8);
    v6 = v0[5];
    swift_unknownObjectRetain();
    sub_10000B3A8((v0 + 2), &qword_1016A12E8, &qword_1013A51D8);
    if (v6)
    {
      v7 = sub_100C45C24();
      if (qword_101694720 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      v0[44] = sub_1000076D4(v8, qword_1016A1010);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v9, v10, "nextKeyRollInterval = %u", v11, 8u);
      }

      v12 = v0[35];

      v13 = (v12 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec);
      v14 = *(v12 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24);
      v15 = v13[4];
      sub_1000035D0(v13, v14);
      v16 = *(v15 + 96);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v0[45] = AssociatedTypeWitness;
      v0[10] = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v0[46] = AssociatedConformanceWitness;
      v0[11] = AssociatedConformanceWitness;
      v0[47] = sub_1000280DC(v0 + 7);
      v16(v7, v14, v15);
      v25 = *(v0[35] + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCharacteristic);
      type metadata accessor for Characteristic();
      v26 = v0[41];
      Identifier.init(stringLiteral:)();
      ObjectType = swift_getObjectType();
      v0[48] = ObjectType;
      v28 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
      v29 = swift_task_alloc();
      v0[49] = v29;
      *v29 = v0;
      v29[1] = sub_10048808C;
      v30 = v0[41];

      return dispatch thunk of ServiceProtocol.subscript.getter(v30, ObjectType, v4);
    }

    sub_10048E4E8();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  v21 = v0[41];
  v22 = v0[38];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10048808C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  v4[50] = a1;
  v4[51] = v1;

  v7 = v3[41];
  v8 = v3[40];
  v9 = v3[39];
  v10 = v3[35];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100488C28;
  }

  else
  {
    v11 = sub_100488210;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100488210()
{
  v41 = v0;
  v1 = *(v0 + 352);
  sub_10001F280(v0 + 56, v0 + 96);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40 = v5;
    *v4 = 136315138;
    sub_10001F280(v0 + 96, v0 + 216);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    sub_100007BAC((v0 + 96));
    v9 = sub_1000136BC(v6, v8, &v40);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {

    sub_100007BAC((v0 + 96));
  }

  v10 = *(v0 + 368);
  v38 = *(v0 + 376);
  v39 = *(v0 + 408);
  v11 = *(v0 + 360);
  v12 = *(v0 + 296);
  v13 = *(v0 + 304);
  v14 = *(v0 + 280);
  v15 = *(v0 + 288);
  v16 = enum case for PairingExecutorState.PairingComplete.commandStart(_:);
  v17 = type metadata accessor for PairingExecutorState.PairingComplete();
  *(v0 + 416) = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 104);
  *(v0 + 424) = v19;
  *(v0 + 432) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v13, v16, v17);
  v20 = *(v18 + 56);
  *(v0 + 440) = v20;
  *(v0 + 448) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v20(v13, 0, 1, v17);
  *(v0 + 584) = enum case for PairingExecutorState.pairingComplete(_:);
  v21 = *(v12 + 104);
  *(v0 + 456) = v21;
  *(v0 + 464) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v21(v13);
  *(v0 + 472) = type metadata accessor for AirPodsLEPairingExecutor();
  *(v0 + 480) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor);
  PairingExecutor.setState(_:)();
  v22 = *(v12 + 8);
  *(v0 + 488) = v22;
  *(v0 + 496) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v13, v15);
  v23 = *(v10 + 16);
  *(v0 + 504) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 512) = v24;
  if (v39)
  {
    v25 = *(v0 + 400);
    v26 = *(v0 + 336);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100007BAC((v0 + 56));
    v27 = *(v0 + 328);
    v28 = *(v0 + 304);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 384);
    v32 = *(v0 + 344);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 520) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 528) = AssociatedConformanceWitness;
    v35 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v36 = swift_task_alloc();
    *(v0 + 536) = v36;
    *v36 = v0;
    v36[1] = sub_100488640;
    v37 = *(v0 + 400);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_100488640(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  v4[68] = v1;

  v7 = v4[35];
  if (v1)
  {
    v8 = sub_100488CA8;
  }

  else
  {
    v4[69] = a1;
    v8 = sub_10048877C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10048877C()
{
  v1 = v0[69];
  v2 = v0[63];
  v3 = v0[64];
  v4 = fragment(data:mtu:)();
  v0[70] = v4;
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)[1];
  v6 = swift_task_alloc();
  v0[71] = v6;
  *v6 = v0;
  v6[1] = sub_100488830;
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[50];

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v4, v8, v7);
}

uint64_t sub_100488830()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v9 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = *(v2 + 280);
    v5 = sub_100488D4C;
  }

  else
  {
    v6 = *(v2 + 560);
    v7 = *(v2 + 280);

    v5 = sub_100488958;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100488958()
{
  v35 = v0;
  v32 = *(v0 + 488);
  v33 = *(v0 + 496);
  v29 = *(v0 + 472);
  v30 = *(v0 + 480);
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 584);
  v4 = *(v0 + 440);
  v5 = *(v0 + 448);
  v6 = *(v0 + 432);
  v7 = *(v0 + 416);
  v31 = *(v0 + 352);
  v8 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  (*(v0 + 424))(v8, enum case for PairingExecutorState.PairingComplete.commandFinish(_:), v7);
  v4(v8, 0, 1, v7);
  v1(v8, v3, v10);
  PairingExecutor.setState(_:)();
  v32(v8, v10);
  sub_10001F280(v0 + 56, v0 + 136);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136315138;
    sub_10001F280(v0 + 136, v0 + 176);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100007BAC((v0 + 136));
    v18 = sub_1000136BC(v15, v17, &v34);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sent command: %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    sub_100007BAC((v0 + 136));
  }

  v19 = *(v0 + 352);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Wrote Pairing Complete", v22, 2u);
  }

  v23 = *(v0 + 400);
  v25 = *(v0 + 328);
  v24 = *(v0 + 336);
  v26 = *(v0 + 304);
  sub_100016590(*(v0 + 504), *(v0 + 512));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100007BAC((v0 + 56));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100488C28()
{
  v1 = v0[42];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 7);
  v2 = v0[51];
  v3 = v0[41];
  v4 = v0[38];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100488CA8()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[50];
  v4 = v0[42];
  swift_unknownObjectRelease();
  sub_100016590(v1, v2);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 7);
  v5 = v0[68];
  v6 = v0[41];
  v7 = v0[38];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100488D4C()
{
  v1 = v0[70];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[50];
  v5 = v0[42];

  swift_unknownObjectRelease();
  sub_100016590(v2, v3);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 7);
  v6 = v0[72];
  v7 = v0[41];
  v8 = v0[38];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100488E1C()
{
  v24 = v0;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[23] = sub_1000076D4(v1, qword_1016A1010);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x41676E6972696170, 0xEC00000029286B63, &v23);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = v0[22];
  if (*(*(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing))
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Skipping pairing ack for standalone pairing", v9, 2u);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v11 = *(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 24);
    v12 = *(v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec + 32);
    sub_1000035D0((v6 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec), v11);
    v13 = *(v12 + 112);

    v13(v14, v11, v12);
    v16 = v0[22];

    v17 = v16 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator;
    v19 = *(v16 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator);
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    v21 = async function pointer to dispatch thunk of PairingValidator.ack(_:)[1];
    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_100489148;

    return dispatch thunk of PairingValidator.ack(_:)(v0 + 7, v0 + 2, ObjectType, v18);
  }
}

uint64_t sub_100489148()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_100489498;
  }

  else
  {
    v6 = sub_100489274;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100489274()
{
  v17 = v0;
  v1 = v0[23];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing ack completed successfully!", v4, 2u);
  }

  v5 = v0[23];

  sub_10001F280((v0 + 7), (v0 + 12));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_10001F280((v0 + 12), (v0 + 17));
    sub_1000BC4D4(&qword_1016A12F8, &unk_1013A51E0);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100007BAC(v0 + 12);
    v13 = sub_1000136BC(v10, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pairing ack response: %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC(v0 + 12);
  }

  sub_100007BAC(v0 + 7);
  sub_100007BAC(v0 + 2);
  v14 = v0[1];

  return v14();
}

uint64_t sub_100489498()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[25];
  v2 = v0[1];

  return v2();
}

uint64_t sub_1004894FC()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_stateHistory);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo);

  v7 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_streamProvider);

  v8 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator);
  swift_unknownObjectRelease();
  v9 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheralProvider);
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCheckData, &qword_1016A1348, &unk_1013A5280);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_crypto, &qword_101697380, &unk_10138BEF0);
  v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  swift_unknownObjectRelease();
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheral, &qword_1016A12E8, &qword_1013A51D8);
  sub_10048EAA4(*(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 8), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 16), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 24), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 32), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 40), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 48), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 56), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 64), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 72), *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconCreationInfo + 80));
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingConfiguration, &qword_1016A12E0, &qword_1013A51D0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier, &qword_1016980D0, &unk_10138F3B0);
  v12 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_encoder;
  v13 = type metadata accessor for BinaryEncoder();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_decoder;
  v15 = type metadata accessor for BinaryDecoder();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  sub_100007BAC((v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10048977C()
{
  sub_1004894FC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AirPodsLEPairingExecutor()
{
  result = qword_1016A1090;
  if (!qword_1016A1090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004897FC()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for PairingExecutorState();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_100395648();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for BinaryEncoder();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = type metadata accessor for BinaryDecoder();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100489A78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100489B00()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_validator + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100489B34()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheralProvider);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_peripheralProvider + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100489BB4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1000D2A70(v4 + v8, a4, a2, a3);
}

uint64_t sub_100489C20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingConfiguration;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016A12E0, &qword_1013A51D0);
  return swift_endAccess();
}

uint64_t sub_100489CF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
  v2 = *(v0 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore + 8);
  return swift_unknownObjectRetain();
}

uint64_t sub_100489D24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  return sub_1000D2A70(v1 + v3, a1, &qword_1016980D0, &unk_10138F3B0);
}

uint64_t sub_100489D8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconRecordIdentifier;
  swift_beginAccess();
  sub_10002311C(a1, v1 + v3, &qword_1016980D0, &unk_10138F3B0);
  return swift_endAccess();
}

uint64_t sub_100489E5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AirPodsLEPairingExecutor();

  return PairingExecutor.stream()(v3, a2);
}

uint64_t sub_100489EA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_10047BBD0(a1);
}

uint64_t sub_100489F3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100480FD4();
}

uint64_t sub_100489FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_10048504C(a1);
}

uint64_t sub_10048A060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100487534();
}

uint64_t sub_10048A0EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100488DFC();
}

uint64_t sub_10048A178@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10048A200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingExecutorState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_10048A2F0()
{
  v1 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_stateHistory;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10048A338(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_stateHistory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10048A3F0()
{
  type metadata accessor for AirPodsLEPairingExecutor();
  sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor);

  return PairingExecutor.setState(_:)();
}

uint64_t sub_10048A4BC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AD50);
  sub_1000076D4(v0, qword_10177AD50);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10048A540()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016A1010);
  v1 = sub_1000076D4(v0, qword_1016A1010);
  if (qword_101694718 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AD50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10048A608()
{
  v1[58] = v0;
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v1[59] = v2;
  v3 = *(v2 - 8);
  v1[60] = v3;
  v4 = *(v3 + 64) + 15;
  v1[61] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v6 = type metadata accessor for MACAddress();
  v1[64] = v6;
  v7 = *(v6 - 8);
  v1[65] = v7;
  v8 = *(v7 + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8) + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[70] = v10;
  v11 = *(v10 - 8);
  v1[71] = v11;
  v12 = *(v11 + 64) + 15;
  v1[72] = swift_task_alloc();
  v13 = type metadata accessor for PairingExecutorState();
  v1[73] = v13;
  v14 = *(v13 - 8);
  v1[74] = v14;
  v15 = *(v14 + 64) + 15;
  v1[75] = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[76] = v16;
  v17 = *(v16 - 8);
  v1[77] = v17;
  v18 = *(v17 + 64) + 15;
  v1[78] = swift_task_alloc();

  return _swift_task_switch(sub_10048A8E4, v0, 0);
}

uint64_t sub_10048A8E4()
{
  v1 = v0[58];
  v2 = v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service;
  v3 = *(v1 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_service);
  v0[79] = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    v0[80] = v4;
    v5 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
    v0[81] = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingSpec;
    v6 = *(v1 + v5 + 24);
    v7 = *(v1 + v5 + 32);
    sub_1000035D0((v1 + v5), v6);
    v8 = *(v7 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v0[82] = AssociatedTypeWitness;
    v0[5] = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[83] = AssociatedConformanceWitness;
    v0[6] = AssociatedConformanceWitness;
    v0[84] = sub_1000280DC(v0 + 2);
    v8(v6, v7);
    v23 = *(v0[58] + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingCharacteristic);
    type metadata accessor for Characteristic();
    swift_unknownObjectRetain();
    v24 = v0[78];
    Identifier.init(stringLiteral:)();
    ObjectType = swift_getObjectType();
    v0[85] = ObjectType;
    v26 = async function pointer to dispatch thunk of ServiceProtocol.subscript.getter[1];
    v27 = swift_task_alloc();
    v0[86] = v27;
    *v27 = v0;
    v27[1] = sub_10048ABF4;
    v28 = v0[78];

    return dispatch thunk of ServiceProtocol.subscript.getter(v28, ObjectType, v4);
  }

  else
  {
    sub_10048E4E8();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    v12 = v0[78];
    v13 = v0[75];
    v14 = v0[72];
    v15 = v0[69];
    v16 = v0[68];
    v17 = v0[67];
    v18 = v0[66];
    v20 = v0[62];
    v19 = v0[63];
    v29 = v0[61];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10048ABF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 688);
  v6 = *v2;
  v4[87] = a1;
  v4[88] = v1;

  v7 = v3[78];
  v8 = v3[77];
  v9 = v3[76];
  v10 = v3[58];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_10048C640;
  }

  else
  {
    v11 = sub_10048AD7C;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_10048AD7C()
{
  v48 = v0;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 712) = sub_1000076D4(v1, qword_1016A1010);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v47 = v5;
    *v4 = 136315138;
    sub_10001F280(v0 + 56, v0 + 376);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    sub_100007BAC((v0 + 56));
    v9 = sub_1000136BC(v6, v8, &v47);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending command: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {

    sub_100007BAC((v0 + 56));
  }

  v10 = *(v0 + 704);
  v11 = *(v0 + 672);
  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 584);
  v17 = *(v0 + 464);
  v18 = enum case for PairingExecutorState.CommandState.commandStart(_:);
  v19 = type metadata accessor for PairingExecutorState.CommandState();
  *(v0 + 720) = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 104);
  *(v0 + 728) = v21;
  *(v0 + 736) = (v20 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v21(v14, v18, v19);
  *(v0 + 920) = enum case for PairingExecutorState.getBeaconGroup(_:);
  v22 = *(v15 + 104);
  *(v0 + 744) = v22;
  *(v0 + 752) = (v15 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v14);
  *(v0 + 760) = type metadata accessor for AirPodsLEPairingExecutor();
  *(v0 + 768) = sub_10048E6C4(&qword_1016A12F0, type metadata accessor for AirPodsLEPairingExecutor);
  PairingExecutor.setState(_:)();
  v23 = *(v15 + 8);
  *(v0 + 776) = v23;
  *(v0 + 784) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v14, v16);
  v24 = *(v12 + 16);
  *(v0 + 792) = BinaryEncoder.encode<A>(_:)();
  *(v0 + 800) = v25;
  if (v10)
  {
    v26 = *(v0 + 696);
    v27 = *(v0 + 632);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100007BAC((v0 + 16));
    v28 = *(v0 + 624);
    v29 = *(v0 + 600);
    v30 = *(v0 + 576);
    v31 = *(v0 + 552);
    v32 = *(v0 + 544);
    v33 = *(v0 + 536);
    v34 = *(v0 + 528);
    v36 = *(v0 + 496);
    v35 = *(v0 + 504);
    v46 = *(v0 + 488);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v39 = *(v0 + 680);
    v40 = *(v0 + 640);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 808) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 816) = AssociatedConformanceWitness;
    v43 = async function pointer to dispatch thunk of CharacteristicProtocol.mtu.getter[1];
    v44 = swift_task_alloc();
    *(v0 + 824) = v44;
    *v44 = v0;
    v44[1] = sub_10048B228;
    v45 = *(v0 + 696);

    return dispatch thunk of CharacteristicProtocol.mtu.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_10048B228(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 824);
  v6 = *v2;
  v4[104] = v1;

  v7 = v4[58];
  if (v1)
  {
    v8 = sub_10048C744;
  }

  else
  {
    v4[105] = a1;
    v8 = sub_10048B364;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10048B364()
{
  v1 = v0[105];
  v2 = v0[100];
  v3 = v0[99];
  v4 = fragment(data:mtu:)();
  v0[106] = v4;
  v5 = async function pointer to dispatch thunk of CharacteristicProtocol.write(data:)[1];
  v6 = swift_task_alloc();
  v0[107] = v6;
  *v6 = v0;
  v6[1] = sub_10048B424;
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[87];
  v10 = v0[72];

  return dispatch thunk of CharacteristicProtocol.write(data:)(v10, v4, v8, v7);
}

uint64_t sub_10048B424()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v4 = *v1;
  v2[108] = v0;

  v5 = v2[106];
  if (v0)
  {
    v6 = v2[58];

    return _swift_task_switch(sub_10048C868, v6, 0);
  }

  else
  {

    v7 = async function pointer to AsyncSequence<>.reassemble()[1];
    v8 = swift_task_alloc();
    v2[109] = v8;
    v9 = sub_10048E70C();
    *v8 = v4;
    v8[1] = sub_10048B5CC;
    v10 = v2[72];
    v11 = v2[70];

    return AsyncSequence<>.reassemble()(v11, v9);
  }
}

uint64_t sub_10048B5CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 872);
  v7 = *v3;
  v5[110] = a1;
  v5[111] = a2;
  v5[112] = v2;

  v8 = v4[72];
  v9 = v4[71];
  v10 = v4[70];
  v11 = v4[58];
  (*(v9 + 8))(v8, v10);
  if (v2)
  {
    v12 = sub_10048C988;
  }

  else
  {
    v12 = sub_10048B758;
  }

  return _swift_task_switch(v12, v11, 0);
}

uint64_t sub_10048B758()
{
  v104 = v0;
  v99 = *(v0 + 776);
  v101 = *(v0 + 784);
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 744);
  v5 = *(v0 + 920);
  v6 = *(v0 + 736);
  v7 = *(v0 + 712);
  v8 = *(v0 + 600);
  v9 = *(v0 + 584);
  v10 = *(v0 + 464);
  (*(v0 + 728))(v8, enum case for PairingExecutorState.CommandState.commandFinish(_:), *(v0 + 720));
  v4(v8, v5, v9);
  PairingExecutor.setState(_:)();
  v99(v8, v9);
  sub_10001F280(v0 + 16, v0 + 96);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v103[0] = v14;
    *v13 = 136315138;
    sub_10001F280(v0 + 96, v0 + 336);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100007BAC((v0 + 96));
    v18 = sub_1000136BC(v15, v17, v103);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sent command: %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    sub_100007BAC((v0 + 96));
  }

  v19 = *(v0 + 896);
  v20 = *(v0 + 888);
  v21 = *(v0 + 880);
  v22 = (*(v0 + 464) + *(v0 + 648));
  v23 = v22[4];
  sub_1000035D0(v22, v22[3]);
  v24 = sub_1003916CC();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 160) = v24;
  *(v0 + 168) = AssociatedConformanceWitness;
  sub_1000280DC((v0 + 136));
  v26 = *(AssociatedConformanceWitness + 8);
  BinaryDecoder.decode<A>(_:from:)();
  if (v19)
  {
    v27 = *(v0 + 800);
    v28 = *(v0 + 792);
    v29 = *(v0 + 696);
    v30 = *(v0 + 632);
    sub_100016590(*(v0 + 880), *(v0 + 888));
    sub_100016590(v28, v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100101758((v0 + 136));
    sub_100007BAC((v0 + 16));
    v47 = *(v0 + 624);
    v48 = *(v0 + 600);
    v49 = *(v0 + 576);
    v50 = *(v0 + 552);
    v51 = *(v0 + 544);
    v52 = *(v0 + 536);
    v53 = *(v0 + 528);
    v55 = *(v0 + 496);
    v54 = *(v0 + 504);
    v56 = *(v0 + 488);

    v57 = *(v0 + 8);

    return v57();
  }

  v31 = *(v0 + 712);
  sub_10001F280(v0 + 136, v0 + 176);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v103[0] = v35;
    *v34 = 136315138;
    sub_10001F280(v0 + 176, v0 + 296);
    sub_1000BC4D4(&qword_1016A1308, &qword_1013A5218);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    sub_100007BAC((v0 + 176));
    v39 = sub_1000136BC(v36, v38, v103);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Received response: %s", v34, 0xCu);
    sub_100007BAC(v35);
  }

  else
  {

    sub_100007BAC((v0 + 176));
  }

  v40 = *(v0 + 464);
  v41 = (v40 + *(v0 + 648));
  v42 = v41[3];
  v43 = v41[4];
  sub_1000035D0(v41, v42);
  (*(AssociatedConformanceWitness + 216))(v24, AssociatedConformanceWitness);
  v44 = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  *(v0 + 904) = OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_pairingInfo;
  v45 = *(v40 + v44);
  v46 = *(v43 + 56);

  v46(v0 + 216, v45, v42, v43);
  sub_100007BAC((v0 + 216));

  v59 = *(v40 + v44);
  if (*(v59 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing))
  {
    goto LABEL_19;
  }

  v60 = *(v0 + 520);
  v61 = *(v0 + 504);
  v62 = *(v0 + 512);
  v63 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v59 + v63, v61, &qword_1016A40D0, &unk_10138BE70);
  v64 = *(v60 + 48);
  if (v64(v61, 1, v62) == 1)
  {
    v65 = *(v0 + 504);
LABEL_18:
    sub_10000B3A8(v65, &qword_1016A40D0, &unk_10138BE70);
LABEL_19:
    v71 = *(v0 + 888);
    v72 = *(v0 + 880);
    v73 = *(v0 + 800);
    v74 = *(v0 + 792);
    v75 = *(v0 + 696);
    v76 = *(v0 + 632);
    v77 = *(v0 + 552);
    (*(*(v0 + 480) + 56))(v77, 1, 1, *(v0 + 472));
    v78 = sub_10110D3E0(v77, 255);
    v100 = v79;
    v102 = v78;
    sub_100016590(v72, v71);
    sub_100016590(v74, v73);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10000B3A8(v77, &unk_1016AF8B0, &unk_1013A0700);
    v80 = *(v0 + 624);
    v81 = *(v0 + 600);
    v82 = *(v0 + 576);
    v83 = *(v0 + 552);
    v84 = *(v0 + 544);
    v85 = *(v0 + 536);
    v86 = *(v0 + 528);
    v87 = *(v0 + 496);
    v88 = *(v0 + 504);
    v98 = *(v0 + 488);
    sub_100007BAC((v0 + 136));
    sub_100007BAC((v0 + 16));

    v89 = *(v0 + 8);

    return v89(v102, v100);
  }

  v66 = *(v0 + 512);
  v67 = *(v0 + 496);
  v68 = *(*(v0 + 520) + 32);
  v68(*(v0 + 536), *(v0 + 504), v66);
  v69 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
  swift_beginAccess();
  sub_1000D2A70(v59 + v69, v67, &qword_1016A40D0, &unk_10138BE70);
  if (v64(v67, 1, v66) == 1)
  {
    v70 = *(v0 + 496);
    (*(*(v0 + 520) + 8))(*(v0 + 536), *(v0 + 512));
    v65 = v70;
    goto LABEL_18;
  }

  v90 = *(v0 + 464);
  v68(*(v0 + 528), *(v0 + 496), *(v0 + 512));
  v91 = v90 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore;
  v93 = *(v90 + OBJC_IVAR____TtC12searchpartyd24AirPodsLEPairingExecutor_beaconStore);
  v92 = *(v91 + 8);
  ObjectType = swift_getObjectType();
  v95 = async function pointer to dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)[1];
  v96 = swift_task_alloc();
  *(v0 + 912) = v96;
  *v96 = v0;
  v96[1] = sub_10048C054;
  v97 = *(v0 + 536);

  return dispatch thunk of PairingBeaconStore.ownedBeaconGroup(_:)(v0 + 256, v97, ObjectType, v92);
}

uint64_t sub_10048C054()
{
  v1 = *(*v0 + 912);
  v2 = *(*v0 + 464);
  v4 = *v0;

  return _swift_task_switch(sub_10048C164, v2, 0);
}

uint64_t sub_10048C164()
{
  v1 = v0[68];
  if (!v0[35])
  {
    v9 = v0[67];
    v10 = v0[64];
    v11 = v0[59];
    v12 = v0[60];
    v13 = *(v0[65] + 8);
    v13(v0[66], v10);
    v13(v9, v10);
    sub_10000B3A8((v0 + 32), &qword_1016A1350, &qword_1013A5290);
    (*(v12 + 56))(v1, 1, 1, v11);
    goto LABEL_5;
  }

  v2 = v0[59];
  v3 = v0[60];
  sub_1000BC4D4(&qword_1016A1340, &qword_1013A5240);
  v4 = swift_dynamicCast();
  v5 = *(v3 + 56);
  v5(v1, v4 ^ 1u, 1, v2);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[67];
    v7 = v0[64];
    v8 = *(v0[65] + 8);
    v8(v0[66], v7);
    v8(v6, v7);
LABEL_5:
    sub_10000B3A8(v0[68], &unk_1016AF8B0, &unk_1013A0700);
LABEL_6:
    v14 = v0[111];
    v15 = v0[110];
    v16 = v0[100];
    v17 = v0[99];
    v18 = v0[87];
    v19 = v0[79];
    v20 = v0[69];
    (*(v0[60] + 56))(v20, 1, 1, v0[59]);
    v21 = sub_10110D3E0(v20, 255);
    v64 = v22;
    v65 = v21;
    sub_100016590(v15, v14);
    sub_100016590(v17, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10000B3A8(v20, &unk_1016AF8B0, &unk_1013A0700);
    goto LABEL_7;
  }

  v34 = v0[66];
  sub_10048E8F0(v0[68], v0[61], type metadata accessor for OwnedBeaconGroup);
  v35 = sub_10051578C(v34);
  if ((v35 & 0x100) != 0)
  {
    v50 = v0[67];
    v51 = v0[64];
    v52 = v0[61];
    v53 = *(v0[65] + 8);
    v53(v0[66], v51);
    v53(v50, v51);
    sub_10048E958(v52, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_6;
  }

  v36 = v35;
  v54 = v0[113];
  v55 = v0[110];
  v56 = v0[111];
  v57 = v0[99];
  v58 = v0[100];
  v59 = v0[87];
  v37 = v0[69];
  v63 = v0[67];
  v60 = v0[79];
  v61 = v0[66];
  v38 = v0[65];
  v39 = v0[64];
  v40 = v0[61];
  v42 = v0[58];
  v41 = v0[59];
  sub_10048EA3C(v40, v37, type metadata accessor for OwnedBeaconGroup);
  v5(v37, 0, 1, v41);
  v43 = sub_10110D3E0(v37, v36);
  v64 = v44;
  v65 = v43;
  sub_10000B3A8(v37, &unk_1016AF8B0, &unk_1013A0700);
  v45 = *(v42 + v54);
  v46 = *(v40 + *(v41 + 40));

  v47 = sub_100F524A0(v46);
  sub_100016590(v55, v56);
  sub_100016590(v57, v58);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v48 = *(v38 + 8);
  v48(v61, v39);
  v48(v63, v39);
  v49 = *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
  *(v45 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v47;

  sub_10048E958(v40, type metadata accessor for OwnedBeaconGroup);
LABEL_7:
  v23 = v0[78];
  v24 = v0[75];
  v25 = v0[72];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[66];
  v31 = v0[62];
  v30 = v0[63];
  v62 = v0[61];
  sub_100007BAC(v0 + 17);
  sub_100007BAC(v0 + 2);

  v32 = v0[1];

  return v32(v65, v64);
}

uint64_t sub_10048C640()
{
  v1 = v0[79];
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);
  v14 = v0[88];
  v2 = v0[78];
  v3 = v0[75];
  v4 = v0[72];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];
  v10 = v0[62];
  v9 = v0[63];
  v11 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10048C744()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[87];
  v4 = v0[79];
  swift_unknownObjectRelease();
  sub_100016590(v2, v1);
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);
  v17 = v0[104];
  v5 = v0[78];
  v6 = v0[75];
  v7 = v0[72];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  v13 = v0[62];
  v12 = v0[63];
  v14 = v0[61];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10048C868()
{
  v1 = v0[87];
  v2 = v0[79];
  sub_100016590(v0[99], v0[100]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);
  v15 = v0[108];
  v3 = v0[78];
  v4 = v0[75];
  v5 = v0[72];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v11 = v0[62];
  v10 = v0[63];
  v12 = v0[61];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10048C988()
{
  v1 = v0[87];
  v2 = v0[79];
  sub_100016590(v0[99], v0[100]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100007BAC(v0 + 2);
  v15 = v0[112];
  v3 = v0[78];
  v4 = v0[75];
  v5 = v0[72];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[66];
  v11 = v0[62];
  v10 = v0[63];
  v12 = v0[61];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10048CAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 360) = a7;
  *(v8 + 104) = a6;
  *(v8 + 112) = a8;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  v9 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v10 = type metadata accessor for AccessoryPairingAnalytics();
  *(v8 + 128) = v10;
  v11 = *(v10 - 8);
  *(v8 + 136) = v11;
  *(v8 + 144) = *(v11 + 64);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 176) = v12;
  v13 = *(v12 - 8);
  *(v8 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v15 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  *(v8 + 208) = v15;
  v16 = *(v15 - 8);
  *(v8 + 216) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v18 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_10048CCF8, 0, 0);
}

uint64_t sub_10048CCF8()
{
  v26 = v0;
  if (qword_101694720 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[11];
  v3 = type metadata accessor for Logger();
  v0[34] = sub_1000076D4(v3, qword_1016A1010);
  sub_1000D2A70(v2, v1, &qword_1016980D0, &unk_10138F3B0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[33];
  if (v6)
  {
    v8 = v0[32];
    v9 = v0[22];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    sub_1000D2A70(v7, v8, &qword_1016980D0, &unk_10138F3B0);
    v13 = (*(v10 + 48))(v8, 1, v9);
    v14 = v0[32];
    if (v13 == 1)
    {
      sub_10000B3A8(v0[32], &qword_1016980D0, &unk_10138F3B0);
      v15 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E55;
    }

    else
    {
      v17 = v0[22];
      v18 = v0[23];
      v19 = v0[32];
      v16 = UUID.uuidString.getter();
      v15 = v20;
      (*(v18 + 8))(v14, v17);
    }

    sub_10000B3A8(v0[33], &qword_1016980D0, &unk_10138F3B0);
    v21 = sub_1000136BC(v16, v15, &v25);

    *(v11 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Writing pairing event for %s", v11, 0xCu);
    sub_100007BAC(v12);
  }

  else
  {

    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  }

  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v0[35] = v23;
  *v23 = v0;
  v23[1] = sub_10048CFC0;

  return daemon.getter();
}

uint64_t sub_10048CFC0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v12 = *v1;
  *(v3 + 288) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 296) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_10048E6C4(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10048E6C4(&unk_1016B1030, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10048D19C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10048D19C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v8 = *v2;
  v3[38] = a1;
  v3[39] = v1;

  if (v1)
  {
    v5 = sub_10048E178;
  }

  else
  {
    v6 = v3[36];

    v5 = sub_10048D2B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10048D2B8()
{
  v1 = *(v0 + 96);
  v2 = v1[12];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v1[14];
  if (v3 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v4 = v1[11];
  v5 = v1[13];
  v6 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v7 = *v6;
  *(v0 + 320) = *v6;
  v8 = v6[1];
  *(v0 + 328) = v8;
  if (v8 >> 60 == 15)
  {
    goto LABEL_6;
  }

  *(v0 + 64) = v7;
  *(v0 + 72) = v8;

  sub_10002E98C(v5, v3);
  sub_10002E98C(v7, v8);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v7, v8);
    sub_100006654(v5, v3);

LABEL_6:
    v9 = *(v0 + 304);
    sub_10048E4E8();
    swift_allocError();
    *v10 = 10;
    swift_willThrow();
LABEL_7:

    v11 = *(v0 + 272);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failure writing to pairing event local storage: %{public}@", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v18 = *(v0 + 256);
    v17 = *(v0 + 264);
    v20 = *(v0 + 240);
    v19 = *(v0 + 248);
    v22 = *(v0 + 224);
    v21 = *(v0 + 232);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);
    v79 = *(v0 + 152);
    v81 = *(v0 + 120);

    v27 = *(v0 + 8);

    return v27();
  }

  v29 = *(v0 + 96);
  v30 = Data.trimmed.getter();
  v32 = v31;
  v33 = *(v29 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  if (!*(v33 + 16))
  {
LABEL_19:
    v46 = *(v0 + 304);

    sub_10048E4E8();
    swift_allocError();
    *v47 = 10;
    swift_willThrow();
    sub_100016590(v30, v32);
    sub_100006654(v7, v8);
    sub_100006654(v5, v3);
    goto LABEL_7;
  }

  v34 = sub_100771E30(v30, v32);
  if ((v35 & 1) == 0)
  {

    goto LABEL_19;
  }

  v78 = v30;
  v80 = v32;
  v82 = v4;
  v36 = *(v0 + 248);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);
  v39 = *(v0 + 184);
  v76 = *(v0 + 176);
  v40 = *(v0 + 88);
  sub_10048EA3C(*(v33 + 56) + *(*(v0 + 216) + 72) * v34, v38, type metadata accessor for MultipartAccessoryPairingInfo);

  sub_10048E8F0(v38, v37, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_1000D2A70(v40, v36, &qword_1016980D0, &unk_10138F3B0);
  v41 = *(v39 + 48);
  v42 = v41(v36, 1, v76);
  v43 = *(v0 + 248);
  if (v42 == 1)
  {
    v44 = *(v0 + 176);
    v45 = *(v0 + 200);
    UUID.init()();
    if (v41(v43, 1, v44) != 1)
    {
      sub_10000B3A8(*(v0 + 248), &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(*(v0 + 184) + 32))(*(v0 + 200), *(v0 + 248), *(v0 + 176));
  }

  v49 = *(v0 + 232);
  v48 = *(v0 + 240);
  v50 = *(v0 + 208);
  v51 = *(v0 + 120);
  v74 = *(v0 + 112);
  v53 = *(v0 + 96);
  v52 = *(v0 + 104);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  sub_1000D2A70(v52, v48, &qword_1016980D0, &unk_10138F3B0);
  v72 = *(v53 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v54 = *(v53 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1);
  v77 = *(v49 + *(v50 + 28));
  v55 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v53 + v55, v51, &qword_1016A40D0, &unk_10138BE70);
  if (v74)
  {
    v56 = *(v0 + 112);
    swift_getErrorValue();
    v58 = *(v0 + 40);
    v57 = *(v0 + 48);
    v59 = *(v0 + 56);
    v75 = Error.localizedDescription.getter();
    v71 = v60;
  }

  else
  {
    v75 = 0;
    v71 = 0;
  }

  if (v54)
  {
    v61 = 0;
  }

  else
  {
    v61 = v72;
  }

  v73 = *(v0 + 304);
  v62 = *(v0 + 240);
  v63 = *(v0 + 168);
  v65 = *(v0 + 120);
  v64 = *(v0 + 128);
  v66 = *(v0 + 360);
  (*(*(v0 + 184) + 32))(v63, *(v0 + 192), *(v0 + 176));
  sub_1000D2AD8(v62, v63 + v64[5], &qword_1016980D0, &unk_10138F3B0);
  *(v63 + v64[6]) = v61;
  v67 = (v63 + v64[7]);
  *v67 = v78;
  v67[1] = v80;
  v68 = (v63 + v64[8]);
  *v68 = v82;
  v68[1] = v2;
  v69 = (v63 + v64[9]);
  *v69 = v5;
  v69[1] = v3;
  *(v63 + v64[10]) = v66;
  *(v63 + v64[11]) = v77;
  sub_1000D2AD8(v65, v63 + v64[12], &qword_1016A40D0, &unk_10138BE70);
  v70 = (v63 + v64[13]);
  *v70 = v75;
  v70[1] = v71;
  static Date.trustedNow.getter(v63 + v64[14]);

  return _swift_task_switch(sub_10048D96C, v73, 0);
}

uint64_t sub_10048D96C()
{
  v1 = v0[38];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = *(v1 + 136);
  sub_10048EA3C(v0[21], v2, type metadata accessor for AccessoryPairingAnalytics);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[42] = v7;
  *(v7 + 16) = v1;
  sub_10048E8F0(v2, v7 + v6, type metadata accessor for AccessoryPairingAnalytics);
  v8 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v11 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_10048DAB8;

  return v11(&unk_1013A5208, v7);
}

uint64_t sub_10048DAB8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  v2[44] = v0;

  v5 = v2[42];
  if (v0)
  {
    v6 = v2[38];

    v7 = sub_10048DEFC;
    v8 = v6;
  }

  else
  {

    v7 = sub_10048DC00;
    v8 = 0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10048DC00()
{
  v40 = v0;
  v1 = v0[34];
  sub_10048EA3C(v0[21], v0[19], type metadata accessor for AccessoryPairingAnalytics);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[41];
  v6 = v0[38];
  v37 = v0[40];
  v7 = v0[29];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[23];
  v11 = v0[21];
  v12 = v0[19];
  if (v4)
  {
    v35 = v0[29];
    v13 = swift_slowAlloc();
    v34 = v9;
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    v32 = v5;
    v33 = v11;
    v15 = sub_10111CE44();
    v17 = v16;
    sub_10048E958(v12, type metadata accessor for AccessoryPairingAnalytics);
    v18 = sub_1000136BC(v15, v17, &v39);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Inserted %s", v13, 0xCu);
    sub_100007BAC(v14);

    sub_100006654(v37, v32);
    sub_10048E958(v33, type metadata accessor for AccessoryPairingAnalytics);
    (*(v10 + 8))(v8, v34);
    v19 = v35;
  }

  else
  {

    sub_100006654(v37, v5);
    sub_10048E958(v12, type metadata accessor for AccessoryPairingAnalytics);
    sub_10048E958(v11, type metadata accessor for AccessoryPairingAnalytics);
    (*(v10 + 8))(v8, v9);
    v19 = v7;
  }

  sub_10048E958(v19, type metadata accessor for MultipartAccessoryPairingInfo);
  v21 = v0[32];
  v20 = v0[33];
  v23 = v0[30];
  v22 = v0[31];
  v25 = v0[28];
  v24 = v0[29];
  v27 = v0[24];
  v26 = v0[25];
  v29 = v0[20];
  v28 = v0[21];
  v36 = v0[19];
  v38 = v0[15];

  v30 = v0[1];

  return v30();
}

uint64_t sub_10048DF18()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[21];

  sub_100006654(v1, v2);
  sub_10048E958(v8, type metadata accessor for AccessoryPairingAnalytics);
  (*(v7 + 8))(v5, v6);
  sub_10048E958(v4, type metadata accessor for MultipartAccessoryPairingInfo);
  v9 = v0[44];
  v10 = v0[34];
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failure writing to pairing event local storage: %{public}@", v13, 0xCu);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v17 = v0[32];
  v16 = v0[33];
  v19 = v0[30];
  v18 = v0[31];
  v21 = v0[28];
  v20 = v0[29];
  v23 = v0[24];
  v22 = v0[25];
  v25 = v0[20];
  v24 = v0[21];
  v28 = v0[19];
  v29 = v0[15];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10048E178()
{
  v1 = v0[36];

  v2 = v0[39];
  v3 = v0[34];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure writing to pairing event local storage: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[32];
  v9 = v0[33];
  v12 = v0[30];
  v11 = v0[31];
  v14 = v0[28];
  v13 = v0[29];
  v16 = v0[24];
  v15 = v0[25];
  v18 = v0[20];
  v17 = v0[21];
  v21 = v0[19];
  v22 = v0[15];

  v19 = v0[1];

  return v19();
}

uint64_t sub_10048E368(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v5 + v8 + 8) & ~v5;
  v10 = v9 + v7;
  v11 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v8);
  v15 = *(v1 + v11 + 8);
  v16 = *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100014744;

  return sub_10048CAA8(a1, v12, v13, v1 + v6, v14, v1 + v9, v17, v15);
}

unint64_t sub_10048E4E8()
{
  result = qword_1016A1300;
  if (!qword_1016A1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1300);
  }

  return result;
}

uint64_t sub_10048E53C()
{
  v2 = *(type metadata accessor for AccessoryPairingAnalytics() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_100B9EC58(v4, v0 + v3);
}

unint64_t sub_10048E614()
{
  result = qword_1016A1310;
  if (!qword_1016A1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1310);
  }

  return result;
}

uint64_t sub_10048E6C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10048E70C()
{
  result = qword_1016C11D0;
  if (!qword_1016C11D0)
  {
    sub_1000BC580(&qword_1016973C8, &qword_1013B6210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C11D0);
  }

  return result;
}

uint64_t sub_10048E770(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v5 + v8 + 8) & ~v5;
  v10 = v9 + v7;
  v11 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v8);
  v15 = *(v1 + v11 + 8);
  v16 = *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100014650;

  return sub_10048CAA8(a1, v12, v13, v1 + v6, v14, v1 + v9, v17, v15);
}

uint64_t sub_10048E8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048E958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10048E9B8()
{
  result = qword_1016A1368;
  if (!qword_1016A1368)
  {
    sub_1000BC580(&qword_1016A1360, &unk_1013A52C0);
    sub_100101BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1368);
  }

  return result;
}

uint64_t sub_10048EA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048EAA4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_100016590(result, a2);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    sub_100006654(a7, a8);
    sub_100006654(a9, a10);
  }

  return result;
}

unint64_t sub_10048EB7C()
{
  result = qword_1016A1378;
  if (!qword_1016A1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1378);
  }

  return result;
}

uint64_t sub_10048EBD4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10048ED14@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v9 = type metadata accessor for CodingUserInfoKey();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = a1;
  *(a5 + 8) = a2;
  v14 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v15 = *(v14 + 40);
  UUID.init()();
  v16 = type metadata accessor for PropertyListEncoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v9, static CodingUserInfoKey.messagingCoder);
  (*(v10 + 16))(v13, v19, v9);
  v34[3] = &type metadata for Bool;
  LOBYTE(v34[0]) = 1;
  v20 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v34, v13);
  v20(v33, 0);
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  v22 = v32;
  *(v21 + 32) = a3;
  *(v21 + 40) = v22;
  v34[0] = v21;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  v23 = v34[5];
  v24 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v23)
  {

    v26 = type metadata accessor for UUID();
    return (*(*(v26 - 8) + 8))(a5 + v15, v26);
  }

  else
  {
    v28 = v24;
    v29 = v25;

    v30 = (a5 + *(v14 + 44));
    *v30 = v28;
    v30[1] = v29;
  }

  return result;
}

uint64_t sub_10048EFC8()
{
  v1 = v0;
  _StringGuts.grow(_:)(65);
  v2._object = 0x800000010134D260;
  v2._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v2);
  v16 = *v0;
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x6F6973726576202CLL;
  v3._object = 0xEB00000000203A6ELL;
  String.append(_:)(v3);
  v17 = *(v0 + 1);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x69746E656469202CLL;
  v5._object = 0xEE00203A72656966;
  String.append(_:)(v5);
  v6 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v7 = *(v6 + 40);
  type metadata accessor for UUID();
  sub_100495940(&qword_101696930, &type metadata accessor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x64616F6C79617020;
  v9._object = 0xEA0000000000203ALL;
  String.append(_:)(v9);
  v10 = &v1[*(v6 + 44)];
  v11 = *v10;
  v12 = v10[1];
  v13._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

uint64_t sub_10048F1B8()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = _swiftEmptyArrayStorage;
  sub_100495940(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1016A1380 = result;
  return result;
}

Swift::Int sub_10048F41C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v1);
  return Hasher._finalize()();
}

Swift::Int sub_10048F494()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(~v1);
  return Hasher._finalize()();
}

_DWORD *sub_10048F4D8@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result > 0xFFFFFFFC)
  {
    v2 = ~*result;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10048F5C4()
{
  v1 = *v0;
  v2 = [v0[7] destination];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x8000000101356000;
    v4 = 0xD000000000000011;
  }

  v14 = *(v1 + 80);
  v15 = *(v1 + 96);
  type metadata accessor for MessagingSession();
  swift_getWitnessTable();
  v7._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v4;
  v11._object = v6;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 60;
}

uint64_t sub_10048F754(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_10048F7D4(a1, a2, a3, a4, a5);
  return v13;
}

void *sub_10048F7D4(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v115 = a3;
  v142 = a2;
  v131 = a1;
  v9 = *v5;
  v10 = type metadata accessor for Date();
  v138 = *(v10 - 8);
  v139 = v10;
  v11 = *(v138 + 64);
  __chkstk_darwin(v10);
  v114 = v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v116 = v113 - v15;
  v143 = type metadata accessor for UUID();
  v141 = *(v143 - 8);
  v16 = *(v141 + 64);
  __chkstk_darwin(v143);
  v117 = v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v129 = v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v128 = v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v126 = *(v127 - 8);
  v23 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v6[5] = v27;
  v118 = qword_1016A1390;
  *(v6 + qword_1016A1390) = 0;
  v119 = qword_1016A1398;
  *(v6 + qword_1016A1398) = 0;
  v120 = qword_1016A13A0;
  *(v6 + qword_1016A13A0) = 0;
  v28 = (v6 + qword_1016A13A8);
  *v28 = 0;
  v28[1] = 0;
  v121 = v28;
  v29 = qword_1016A13B0;
  v30 = v9[11];
  v31 = v9[12];
  v32 = v9[13];
  v136 = v9[10];
  aBlock = v136;
  v145 = v30;
  v134 = v31;
  v146 = v31;
  v147 = v32;
  v33 = type metadata accessor for MessagingSession();
  v34 = sub_1001DCF6C();
  v140 = v33;
  v113[2] = type metadata accessor for PassthroughSubject();
  v35 = PassthroughSubject.__allocating_init()();
  v137 = v29;
  *(v6 + v29) = v35;
  v36 = qword_1016A13B8;
  v135 = v30;
  v133 = v32;
  type metadata accessor for SessionMessage();
  v113[3] = v34;
  v113[1] = type metadata accessor for PassthroughSubject();
  v37 = PassthroughSubject.__allocating_init()();
  v132 = v36;
  *(v6 + v36) = v37;
  *(v6 + qword_1016A13C0) = 0;
  *(v6 + qword_1016A13C8) = 0;
  *(v6 + qword_1016A13D0) = 0;
  *(v6 + qword_1016A13E0) = 0;
  v38 = qword_1016A13E8;
  v148 = SharingCircleWildAdvertisementKey.init(key:);
  v149 = 0;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_100006684;
  v147 = &unk_10161F3B8;
  _Block_copy(&aBlock);
  v150 = _swiftEmptyArrayStorage;
  sub_100495940(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  v124 = &protocol conformance descriptor for [A];
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = type metadata accessor for DispatchWorkItem();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v6 + v38) = DispatchWorkItem.init(flags:block:)();
  *(v6 + qword_1016A13F0) = 0;
  static Date.distantPast.getter();
  *(v6 + qword_1016A1400) = 0;
  v123 = sub_1000BC488();
  aBlock = 0;
  v145 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  aBlock = 0xD00000000000002BLL;
  v145 = 0x8000000101356050;
  v42 = v142;
  v43 = *(v142 + 16);
  v44 = *(v142 + 24);

  v45._countAndFlagsBits = v43;
  v45._object = v44;
  String.append(_:)(v45);

  v122 = aBlock;
  (*(v126 + 104))(v125, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v127);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100495940(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = v141;
  v47 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v48 = v131;
  v6[6] = v47;
  v6[7] = v48;
  v49 = qword_1016A1388;
  *(v6 + qword_1016A1388) = v42;
  v50 = v48;

  v51 = [v50 sessionID];
  if (!v51)
  {
    goto LABEL_4;
  }

  v52 = v51;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v116;
  UUID.init(uuidString:)();

  if ((*(v46 + 48))(v53, 1, v143) == 1)
  {
    sub_10000B3A8(v53, &qword_1016980D0, &unk_10138F3B0);
LABEL_4:
    aBlock = v136;
    v145 = v135;
    v146 = v134;
    v147 = v133;
    type metadata accessor for MessagingSession.MessagingSessionError();
    swift_getWitnessTable();
    swift_allocError();
    *v54 = 0;
    swift_willThrow();

    v55 = 0;
    goto LABEL_5;
  }

  v71 = v117;
  v72 = v143;
  (*(v46 + 32))(v117, v53, v143);
  (*(v46 + 16))(v6 + qword_10177ADC0, v71, v72);
  v73 = [v50 destination];
  if (v73)
  {

    aBlock = *(v6 + v132);
    swift_getWitnessTable();
    *(v6 + qword_10177ADD0) = Publisher.eraseToAnyPublisher()();
    aBlock = *(v6 + v137);
    swift_getWitnessTable();
    *(v6 + qword_10177ADC8) = Publisher.eraseToAnyPublisher()();
    v74 = v114;
    static Date.trustedNow.getter(v114);
    (*(v138 + 32))(v6 + qword_1016A13D8, v74, v139);
    *(v6 + 2) = a4;
    *(v6 + 3) = a5;
    v6[4] = v115;
    v138 = type metadata accessor for Future();
    v75 = swift_allocObject();
    swift_weakInit();
    v76 = swift_allocObject();
    v77 = v135;
    v78 = v136;
    v76[2] = v136;
    v76[3] = v77;
    v80 = v133;
    v79 = v134;
    v76[4] = v134;
    v76[5] = v80;
    v76[6] = v75;

    v81 = Future.__allocating_init(_:)();
    v82 = *(v6 + qword_1016A13A0);
    *(v6 + qword_1016A13A0) = v81;
    v83 = v81;
    v139 = v81;

    aBlock = v83;
    v84 = swift_allocObject();
    swift_weakInit();
    v85 = swift_allocObject();
    v85[2] = v78;
    v85[3] = v77;
    v85[4] = v79;
    v85[5] = v80;
    v85[6] = v84;
    v86 = swift_allocObject();
    swift_weakInit();

    v87 = swift_allocObject();
    v87[2] = v78;
    v87[3] = v77;
    v87[4] = v79;
    v87[5] = v80;
    v87[6] = v86;
    swift_getWitnessTable();
    v88 = Publisher.sink(receiveCompletion:receiveValue:)();

    v89 = *(v6 + qword_1016A13D0);
    *(v6 + qword_1016A13D0) = v88;

    v90 = type metadata accessor for MessagingSessionDelegateTrampoline();

    v92 = sub_1011E9B04(v91, v90, v140, &off_10161F058);
    v93 = qword_1016A1398;
    v94 = *(v6 + qword_1016A1398);
    *(v6 + qword_1016A1398) = v92;

    sub_1004914E0(0, 1);
    [v6[7] setDelegate:*(v6 + v93) queue:v6[6]];

    (*(v141 + 8))(v117, v143);
    return v6;
  }

  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v95 = type metadata accessor for Logger();
  sub_1000076D4(v95, qword_10177C4F0);
  v96 = v50;
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v150 = v100;
    *v99 = 136315138;
    v101 = [v96 destination];
    if (v101)
    {
      v131 = v99;
      v102 = v98;
      v103 = v100;
      v104 = v96;
      v105 = v101;
      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;

      v96 = v104;
      v100 = v103;
      v98 = v102;
      v99 = v131;
    }

    else
    {
      v106 = 0;
      v108 = 0;
    }

    aBlock = v106;
    v145 = v108;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v109 = String.init<A>(describing:)();
    v111 = sub_1000136BC(v109, v110, &v150);

    *(v99 + 4) = v111;
    _os_log_impl(&_mh_execute_header, v97, v98, "Invalid IDSSession, destination is [%s]", v99, 0xCu);
    sub_100007BAC(v100);

    v46 = v141;
  }

  else
  {
  }

  aBlock = v136;
  v145 = v135;
  v146 = v134;
  v147 = v133;
  type metadata accessor for MessagingSession.MessagingSessionError();
  swift_getWitnessTable();
  swift_allocError();
  *v112 = 0;
  swift_willThrow();

  (*(v46 + 8))(v117, v143);
  v55 = 1;
LABEL_5:
  v56 = v6[5];

  if (v55)
  {
    (*(v46 + 8))(v6 + qword_10177ADC0, v143);
  }

  v57 = *(v6 + v49);

  v58 = *(v6 + v118);

  v59 = *(v6 + v120);

  v60 = v121[1];
  sub_1000BB27C(*v121);
  v61 = *(v6 + v137);

  v62 = *(v6 + v132);

  v63 = *(v6 + qword_1016A13C0);

  v64 = *(v6 + qword_1016A13C8);

  v65 = *(v6 + qword_1016A13D0);

  v66 = *(v6 + qword_1016A13E8);

  v67 = *(v6 + qword_1016A13F0);

  (*(v138 + 8))(v6 + qword_1016A13F8, v139);
  v68 = *(*v6 + 48);
  v69 = *(*v6 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_100490830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a1;
  v13[7] = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = swift_allocObject();
    *(v16 + 2) = a4;
    *(v16 + 3) = a5;
    *(v16 + 4) = a6;
    *(v16 + 5) = a7;
    *(v16 + 6) = sub_100495A74;
    *(v16 + 7) = v13;
    v17 = (v15 + qword_1016A13A8);
    v18 = *(v15 + qword_1016A13A8);
    v19 = *(v15 + qword_1016A13A8 + 8);
    *v17 = sub_100495AB4;
    v17[1] = v16;

    sub_1000BB27C(v18);
  }

  else
  {
  }
}

uint64_t sub_100490950(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_1016A13B0);

    PassthroughSubject.send(completion:)();
  }

  return result;
}

uint64_t sub_1004909D8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_1016A13B0);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_100490A60()
{
  v1 = v0;
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C4F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = sub_10048F5C4();
    v8 = v7;

    v9 = sub_1000136BC(v6, v8, &v34);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = *(v1 + qword_1016A1388);
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);

    v13 = sub_1000136BC(v11, v12, &v34);

    *(v5 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleted session: %{public}s service: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = *(v1 + 40);

  v15 = qword_10177ADC0;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v17 = *(v1 + qword_1016A1388);

  v18 = *(v1 + qword_1016A1390);

  v19 = *(v1 + qword_1016A13A0);

  v20 = *(v1 + qword_1016A13A8 + 8);
  sub_1000BB27C(*(v1 + qword_1016A13A8));
  v21 = *(v1 + qword_1016A13B0);

  v22 = *(v1 + qword_10177ADC8);

  v23 = *(v1 + qword_1016A13B8);

  v24 = *(v1 + qword_10177ADD0);

  v25 = *(v1 + qword_1016A13C0);

  v26 = *(v1 + qword_1016A13C8);

  v27 = *(v1 + qword_1016A13D0);

  v28 = qword_1016A13D8;
  v29 = type metadata accessor for Date();
  v30 = *(*(v29 - 8) + 8);
  v30(v1 + v28, v29);
  v31 = *(v1 + qword_1016A13E8);

  v32 = *(v1 + qword_1016A13F0);

  v30(v1 + qword_1016A13F8, v29);
  return v1;
}

uint64_t sub_100490DC0()
{
  sub_100490A60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100490E30()
{
  sub_100492CDC();
  [*(v0 + 56) endSession];
  v1 = v0;
  v2 = *(v0 + qword_1016A1388);
  return sub_101044F9C(v1);
}

uint64_t sub_100490E78()
{
  v1 = v0;
  [*(v0 + 56) endSession];
  v2 = *(v0 + qword_1016A1388);
  return sub_101044F9C(v1);
}

uint64_t sub_100490EBC(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016A14E8, &qword_1013A5578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v43 - v6;
  v8 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = *(v1 + qword_1016A1390);
  if (v12)
  {
    v46 = v1;
    v13 = type metadata accessor for PropertyListEncoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();

    PropertyListEncoder.init()();
    sub_1000041A4(&qword_1016A14F8, &qword_1016A14C8, &qword_1013A5560);
    v16 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v18 = v17;

    v44 = v18;
    v45 = v12;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177C4F0);
    sub_100495814(a1, v11);
    swift_retain_n();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v23 = 136446722;
      v24 = sub_10048F5C4();
      v26 = sub_1000136BC(v24, v25, &v47);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      v27 = sub_10048EFC8();
      v29 = v28;
      sub_10000B3A8(v11, &qword_1016A14C8, &qword_1013A5560);
      v30 = sub_1000136BC(v27, v29, &v47);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2082;

      type metadata accessor for UUID();
      sub_100495940(&qword_101696930, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;

      v34 = sub_1000136BC(v31, v33, &v47);

      *(v23 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s: Sending (Internal): %{public}s over session: %{public}s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000B3A8(v11, &qword_1016A14C8, &qword_1013A5560);
    }

    v35 = v16;
    v36 = v44;
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v35;
    v38[4] = v36;
    v39 = sub_1000BC4D4(&qword_1016A1500, &unk_1013A5580);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_100017D5C(v35, v36);
    v47 = Future.init(_:)();
    sub_1000041A4(qword_1016A1508, &qword_1016A1500, &unk_1013A5580);
    v19 = Publisher.eraseToAnyPublisher()();

    sub_100016590(v35, v36);
  }

  else
  {
    v47 = 4;
    sub_1001DCF6C();
    Fail.init(error:)();
    sub_1000041A4(&qword_1016A14F0, &qword_1016A14E8, &qword_1013A5578);
    v19 = Publisher.eraseToAnyPublisher()();
    (*(v4 + 8))(v7, v3);
  }

  return v19;
}

uint64_t sub_1004914E0(int a1, int a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = *v2;
  v5 = *v2;
  v6 = type metadata accessor for DispatchTime();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v36 = &v36 - v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = *(v4 + 80);
  *(v15 + 24) = *(v5 + 88);
  *(v15 + 40) = *(v4 + 104);
  *(v15 + 48) = v14;
  v48 = sub_100495990;
  v49 = v15;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100006684;
  v47 = &unk_10161F2A0;
  _Block_copy(&aBlock);
  v43 = _swiftEmptyArrayStorage;
  sub_100495940(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);

  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = type metadata accessor for DispatchWorkItem();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = DispatchWorkItem.init(flags:block:)();

  v20 = v2[5];
  v41 = v39;
  v42 = v2;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v2;
  *(v21 + 24) = v19;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  v23 = &qword_1016A1000;
  if (v40)
  {
    v24 = qword_101694728;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_1016A1380;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1004959F0;
    *(v26 + 24) = v21;
    v27 = swift_allocObject();
    v28 = sub_10013A884;
    *(v27 + 16) = sub_10013A884;
    *(v27 + 24) = v26;
    v48 = sub_10040B9F8;
    v49 = v27;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10013FE14;
    v47 = &unk_10161F340;
    v29 = _Block_copy(&aBlock);

    dispatch_sync(v25, v29);
    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if (v29)
    {
      __break(1u);
      return result;
    }

    v23 = &qword_1016A1000;
    p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  }

  else
  {

    sub_100491BB4(v3, v19);
    v28 = 0;
  }

  if (p_weak_ivar_lyt[229] != -1)
  {
    swift_once();
  }

  v31 = v23[112];
  static DispatchTime.now()();
  v32 = *(v3 + 16);
  v33 = v36;
  + infix(_:_:)();
  v34 = v38;
  v35 = *(v37 + 8);
  v35(v10, v38);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  v35(v33, v34);
  return sub_1000BB27C(v28);
}

uint64_t sub_100491AA0(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Date.trustedNow.getter(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = qword_1016A13D8;
    swift_beginAccess();
    (*(v5 + 40))(a2 + v10, v9, v4);
    result = swift_endAccess();
    *(a2 + qword_1016A13E0) = 0;
  }

  return result;
}

uint64_t sub_100491BB4(uint64_t a1, uint64_t a2)
{
  v4 = qword_1016A13E8;
  v5 = *(a1 + qword_1016A13E8);

  dispatch thunk of DispatchWorkItem.cancel()();

  v6 = qword_1016A13F0;
  if (*(a1 + qword_1016A13F0))
  {
    v7 = *(a1 + qword_1016A13F0);

    dispatch thunk of DispatchWorkItem.cancel()();

    v8 = *(a1 + v6);
  }

  *(a1 + v6) = 0;

  v9 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_100491C64()
{
  v1 = *v0;
  v2 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v9 - v4;
  sub_10048ED14(0, 1, 0, 0xE000000000000000, v9 - v4);
  v9[4] = sub_100490EBC(v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v1 + 80);
  *(v7 + 24) = *(v1 + 88);
  *(v7 + 40) = *(v1 + 104);
  *(v7 + 48) = v6;
  sub_1000BC4D4(&qword_1016A14D8, &unk_1013A5568);
  sub_1000041A4(&qword_1016A14E0, &qword_1016A14D8, &unk_1013A5568);
  Publisher.oneshot(_:)();

  return sub_10000B3A8(v5, &qword_1016A14C8, &qword_1013A5560);
}

void sub_100491FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchTime();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v49 = &v48 - v16;
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v19 = *a1;
  v20 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (v20)
    {
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177C4F0);

      sub_1004958D8(v19, 1);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v26 = 136446466;
        v27 = sub_10048F5C4();
        v29 = sub_1000136BC(v27, v28, &aBlock);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v58 = v19;
        sub_1001DCF6C();
        v30 = Error.localizedDescription.getter();
        v32 = v31;
        sub_1004958F4(v19, 1);
        v33 = sub_1000136BC(v30, v32, &aBlock);

        *(v26 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: Error sending .heartbeat: %{public}s", v26, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004958F4(v19, 1);
      }
    }

    else
    {
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      v35[2] = a3;
      v35[3] = a4;
      v35[4] = a5;
      v35[5] = a6;
      v35[6] = v34;
      v56 = sub_100495928;
      v57 = v35;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v48 = &v54;
      v54 = sub_100006684;
      v55 = &unk_10161F1D8;
      _Block_copy(&aBlock);
      v58 = _swiftEmptyArrayStorage;
      sub_100495940(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);

      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v36 = type metadata accessor for DispatchWorkItem();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = DispatchWorkItem.init(flags:block:)();

      if (qword_101694728 != -1)
      {
        swift_once();
      }

      v40 = qword_1016A1380;
      v41 = swift_allocObject();
      *(v41 + 16) = v22;
      *(v41 + 24) = v39;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_100495988;
      *(v42 + 24) = v41;
      v56 = sub_10040B9F8;
      v57 = v42;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10013FE14;
      v55 = &unk_10161F250;
      v43 = _Block_copy(&aBlock);

      dispatch_sync(v40, v43);
      _Block_release(v43);
      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

      if (v43)
      {
        __break(1u);
      }

      else
      {
        static DispatchTime.now()();
        v44 = *(v22 + 24);
        v45 = v49;
        + infix(_:_:)();
        v46 = v51;
        v47 = *(v50 + 8);
        v47(v15, v51);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v47(v45, v46);
      }
    }
  }
}

uint64_t sub_100492650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a6();
  }

  return result;
}

uint64_t sub_1004926B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v8);
  v9 = qword_1016A13F8;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  swift_endAccess();
  v10 = *(a1 + qword_1016A13F0);
  *(a1 + qword_1016A13F0) = a2;
}

uint64_t sub_1004927CC()
{
  v0 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v5 - v2;
  sub_10048ED14(1, 1, 0, 0xE000000000000000, v5 - v2);
  v5[4] = sub_100490EBC(v3);

  sub_1000BC4D4(&qword_1016A14D8, &unk_1013A5568);
  sub_1000041A4(&qword_1016A14E0, &qword_1016A14D8, &unk_1013A5568);
  Publisher.oneshot(_:)();

  return sub_10000B3A8(v3, &qword_1016A14C8, &qword_1013A5560);
}

void sub_100492AC4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_10177C4F0);
    sub_1004958D8(v1, 1);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v5 = 136446466;
      v6 = sub_10048F5C4();
      v8 = sub_1000136BC(v6, v7, &v13);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      sub_1001DCF6C();
      v9 = Error.localizedDescription.getter();
      v11 = v10;
      sub_1004958F4(v1, 1);
      v12 = sub_1000136BC(v9, v11, &v13);

      *(v5 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Error sending .heartbeatReply: %{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004958F4(v1, 1);
    }
  }
}

uint64_t sub_100492CDC()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = *(v0 + 40);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if ((v22 & 1) == 0)
  {
    v15 = dispatch_group_create();
    sub_10048ED14(2, 1, 0, 0xE000000000000000, v12);
    dispatch_group_enter(v15);
    v20 = sub_100490EBC(v12);
    v22 = v20;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v0;
    v21 = v15;

    sub_1000BC4D4(&qword_1016A14D8, &unk_1013A5568);
    sub_1000041A4(&qword_1016A14E0, &qword_1016A14D8, &unk_1013A5568);
    Publisher.oneshot(_:)();

    static DispatchTime.now()();
    v17 = *(v0 + 24);
    + infix(_:_:)();
    v18 = *(v2 + 8);
    v18(v6, v1);
    v19 = v21;
    OS_dispatch_group.wait(timeout:)();

    v18(v8, v1);
    return sub_10000B3A8(v12, &qword_1016A14C8, &qword_1013A5560);
  }

  return result;
}

void sub_100493144(uint64_t a1, dispatch_group_t group)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C4F0);
    sub_1004958D8(v3, 1);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v7 = 136446466;
      v8 = sub_10048F5C4();
      v10 = sub_1000136BC(v8, v9, &v15);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      sub_1001DCF6C();
      v11 = Error.localizedDescription.getter();
      v13 = v12;
      sub_1004958F4(v3, 1);
      v14 = sub_1000136BC(v11, v13, &v15);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: Error sending .shuttingDown: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004958F4(v3, 1);
    }
  }

  dispatch_group_leave(group);
}

uint64_t sub_100493344()
{
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C4F0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21[0] = v5;
    *v4 = 136446210;
    v6 = sub_10048F5C4();
    v8 = sub_1000136BC(v6, v7, v21);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: heartbeat timed out", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0 + 40);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if ((v21[0] & 1) == 0)
  {
    return sub_1004914E0(1, 0);
  }

  swift_retain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v12 = 136446466;
    v13 = sub_10048F5C4();
    v15 = sub_1000136BC(v13, v14, v21);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = sub_10048F5C4();
    v18 = v17;

    v19 = sub_1000136BC(v16, v18, v21);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: *** SESSION FAILED [%{public}s] ***", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_100490E30();
}

void sub_100493640(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C4F0);
  sub_100495814(a1, v7);
  swift_retain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v11 = 136446722;
    v12 = sub_10048F5C4();
    v14 = sub_1000136BC(v12, v13, &v33);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = sub_10048EFC8();
    v17 = v16;
    sub_10000B3A8(v7, &qword_1016A14C8, &qword_1013A5560);
    v18 = sub_1000136BC(v15, v17, &v33);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2082;

    type metadata accessor for UUID();
    sub_100495940(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    v22 = sub_1000136BC(v19, v21, &v33);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: read internal message: %{public}s over session: %{public}s", v11, 0x20u);
    swift_arrayDestroy();

    v23 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1004927CC();
    return;
  }

  sub_10000B3A8(v7, &qword_1016A14C8, &qword_1013A5560);
  v23 = *a1;
  if (!*a1)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v23 != 1)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136446210;
      v28 = sub_10048F5C4();
      v30 = sub_1000136BC(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: received .shuttingDown message", v26, 0xCu);
      sub_100007BAC(v27);
    }

    [*(v2 + 56) endSession];
    v31 = *(v2 + qword_1016A1388);
    sub_101044F9C(v2);
  }
}

uint64_t getEnumTagSinglePayload for HeartbeatConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HeartbeatConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100493ABC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) sessionID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [*(a2 + 56) sessionID];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v7)
    {
      if (v12)
      {
        if (v5 == v10 && v7 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_18;
    }
  }

  else if (v7)
  {
LABEL_13:
    v14 = 0;
LABEL_18:

    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

void sub_100493BCC()
{
  v1 = [*(v0 + 56) sessionID];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100493C6C()
{
  Hasher.init(_seed:)();
  sub_100493BCC();
  return Hasher._finalize()();
}

Swift::Int sub_100493CF4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  sub_100493BCC();
  return Hasher._finalize()();
}

void sub_100493D58()
{
  v1 = v0;
  v56 = *v0;
  v2 = sub_1000BC4D4(&qword_1016A1488, &qword_1013A5540);
  v57 = *(v2 - 8);
  isa = v57[8].isa;
  __chkstk_darwin(v2);
  v5 = &v51 - v4;
  if (qword_101695190 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C4F0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v59 = v10;
    *v9 = 136446210;
    v11 = sub_10048F5C4();
    v13 = sub_1000136BC(v11, v12, &v59);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: sessionStarted", v9, 0xCu);
    sub_100007BAC(v10);
  }

  v14 = *(v0 + qword_1016A13A8);
  if (v14)
  {
    v15 = *(v0 + qword_1016A13A8 + 8);
    v16 = v0[7];

    v17 = [v16 destination];
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
      if (v19)
      {
        v20 = *(v1 + qword_1016A1388);
        v30 = sub_101045440();

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        v55 = v31;
        if (os_log_type_enabled(v31, v32))
        {
          v34 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v61 = v54;
          *v34 = 136446466;
          v35 = sub_10048F5C4();
          v37 = sub_1000136BC(v35, v36, &v61);

          v53 = v34;
          *(v34 + 4) = v37;
          *(v34 + 12) = 2082;
          v59 = 60;
          v60 = 0xE100000000000000;
          v58 = v30;
          type metadata accessor for MessagingDatagramConnection();
          sub_100495940(&qword_1016A14A8, type metadata accessor for MessagingDatagramConnection);
          v52 = v32;

          v38._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
          String.append(_:)(v38);

          v39._countAndFlagsBits = 8250;
          v39._object = 0xE200000000000000;
          String.append(_:)(v39);
          v40._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
          String.append(_:)(v40);

          v41._countAndFlagsBits = 62;
          v41._object = 0xE100000000000000;
          String.append(_:)(v41);

          v42 = sub_1000136BC(v59, v60, &v61);

          v43 = v53;
          *(v53 + 14) = v42;
          v44 = v55;
          _os_log_impl(&_mh_execute_header, v55, v52, "%{public}s: Created %{public}s", v43, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v45 = *(v1 + qword_1016A1390);
        *(v1 + qword_1016A1390) = v30;

        v59 = v30[6];

        sub_1000BC4D4(&qword_1016A1490, &qword_1013A5548);
        sub_1000041A4(&qword_1016A1498, &qword_1016A1490, &qword_1013A5548);
        Publisher.first(where:)();

        v46 = swift_allocObject();
        swift_weakInit();
        v47 = swift_allocObject();
        v48 = v56;
        *(v47 + 16) = *(v56 + 80);
        *(v47 + 24) = *(v48 + 88);
        *(v47 + 40) = *(v48 + 104);
        *(v47 + 48) = v46;
        *(v47 + 56) = v30;
        *(v47 + 64) = v14;
        *(v47 + 72) = v15;
        sub_100012908(v14);
        sub_1000041A4(&qword_1016A14A0, &qword_1016A1488, &qword_1013A5540);

        v49 = Publisher<>.sink(receiveValue:)();

        sub_1000BB27C(v14);

        (v57[1].isa)(v5, v2);
        v50 = *(v1 + qword_1016A13C0);
        *(v1 + qword_1016A13C0) = v49;

        return;
      }
    }

    v57 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v57, v21, "Invalid destinationString!", v22, 2u);
    }

    sub_1000BB27C(v14);
  }

  else
  {

    v57 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = v25;
      *v24 = 136446210;
      v26 = sub_10048F5C4();
      v28 = sub_1000136BC(v26, v27, &v59);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v57, v23, "%{public}s: sessionStarted called with no promise!", v24, 0xCu);
      sub_100007BAC(v25);

      return;
    }
  }

  v29 = v57;
}

uint64_t sub_1004946D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v24 = *(a3 + 56);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = a6;
    v17[3] = a7;
    v17[4] = a8;
    v17[5] = a9;
    v17[6] = v16;
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a7;
    v19[4] = a8;
    v19[5] = a9;
    v19[6] = v18;

    sub_1000BC4D4(&qword_1016A14B0, &qword_1013A5550);
    sub_1000041A4(&qword_1016A14B8, &qword_1016A14B0, &qword_1013A5550);
    v20 = Publisher.sink(receiveCompletion:receiveValue:)();

    v21 = *(v15 + qword_1016A13C8);
    *(v15 + qword_1016A13C8) = v20;

    a4(v22, 0);

    v23 = *(v15 + qword_1016A13C0);
    *(v15 + qword_1016A13C0) = 0;
  }

  return result;
}

uint64_t sub_100494900(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_1016A13B8);
    v4 = result;
    PassthroughSubject.send(completion:)();
    v5 = *(v4 + qword_1016A13C8);
    *(v4 + qword_1016A13C8) = 0;
  }

  return result;
}

uint64_t sub_100494990(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v32[3] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionMessage();
  v7 = type metadata accessor for Optional();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  v9 = __chkstk_darwin(v7);
  v35 = v32 - v10;
  v37 = v6;
  v36 = *(v6 - 8);
  v11 = *(v36 + 64);
  v12 = __chkstk_darwin(v9);
  v32[2] = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v32[4] = v32 - v15;
  __chkstk_darwin(v14);
  v32[5] = v32 - v16;
  v17 = sub_1000BC4D4(&qword_1016A14C0, &qword_1013A5558);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v32 - v19;
  v21 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v32 - v24;
  v26 = *a1;
  v27 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32[0] = v3;
    v32[1] = v2;
    sub_1004914E0(0, 1);
    v29 = type metadata accessor for PropertyListDecoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000041A4(&qword_1016A14D0, &qword_1016A14C8, &qword_1013A5560);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    (*(v22 + 56))(v20, 0, 1, v21);
    sub_1004957A4(v20, v25);
    sub_100493640(v25);

    return sub_10000B3A8(v25, &qword_1016A14C8, &qword_1013A5560);
  }

  return result;
}

uint64_t sub_100495208(int isEscapingClosureAtFileLocation, uint64_t a2)
{
  if (!a2)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C4F0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446466;
      v19 = sub_10048F5C4();
      v21 = sub_1000136BC(v19, v20, aBlock);

      *(v17 + 4) = v21;
      *(v17 + 12) = 1024;
      *(v17 + 14) = isEscapingClosureAtFileLocation;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: session ended with reason: %u", v17, 0x12u);
      sub_100007BAC(v18);
    }

    goto LABEL_11;
  }

  swift_errorRetain();
  if (qword_101695190 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177C4F0);
    swift_errorRetain();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v7 = 136446722;
      v8 = sub_10048F5C4();
      v10 = sub_1000136BC(v8, v9, aBlock);

      *(v7 + 4) = v10;
      *(v7 + 12) = 1024;
      *(v7 + 14) = isEscapingClosureAtFileLocation;
      *(v7 + 18) = 2082;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_1000136BC(v11, v12, aBlock);

      *(v7 + 20) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: session ended with reason: %u error: %{public}s", v7, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_11:
    if (qword_101694728 != -1)
    {
      swift_once();
    }

    v22 = qword_1016A1380;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100495740;
    *(v23 + 24) = v2;
    aBlock[4] = sub_1000D2FB0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013FE14;
    aBlock[3] = &unk_10161F098;
    v24 = _Block_copy(aBlock);

    dispatch_sync(v22, v24);
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  return result;
}

uint64_t sub_100495664(uint64_t a1)
{
  v2 = *(a1 + qword_1016A13E8);

  dispatch thunk of DispatchWorkItem.cancel()();

  v3 = qword_1016A13F0;
  if (*(a1 + qword_1016A13F0))
  {
    v4 = *(a1 + qword_1016A13F0);

    dispatch thunk of DispatchWorkItem.cancel()();

    v5 = *(a1 + v3);
  }

  *(a1 + v3) = 0;

  v6 = *(a1 + qword_1016A13A0);
  *(a1 + qword_1016A13A0) = 0;

  v7 = (a1 + qword_1016A13A8);
  v8 = *(a1 + qword_1016A13A8);
  v9 = *(a1 + qword_1016A13A8 + 8);
  *v7 = 0;
  v7[1] = 0;

  return sub_1000BB27C(v8);
}

uint64_t sub_100495794(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_100494990(a1);
}

uint64_t sub_1004957A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100495814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A14C8, &qword_1013A5560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100495884(BOOL *a1@<X8>)
{
  v2 = *(v1 + qword_1016A13E0);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + qword_1016A13E0) = v4;
    *a1 = v4 >= *(v1 + 32);
  }
}

void sub_1004958B4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + qword_1016A1400);
  *(v1 + qword_1016A1400) = 1;
  *a1 = v2;
}

unint64_t sub_1004958D8(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_1004958E4(result);
  }

  return result;
}

unint64_t sub_1004958E4(unint64_t result)
{
  if (result >= 9)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1004958F4(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_100495900(result);
  }

  return result;
}

unint64_t sub_100495900(unint64_t result)
{
  if (result >= 9)
  {
  }

  return result;
}

uint64_t sub_100495940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100495A74(uint64_t a1, char a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_100495AB4(uint64_t a1, char a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v3(a1, a2 & 1);
  return 0;
}

uint64_t sub_100495AE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100495B20(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100495B38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100495B8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100495BF8(void *a1)
{
  a1[1] = sub_100495C30();
  a1[2] = sub_100495C84();
  result = sub_100495CD8();
  a1[3] = result;
  return result;
}

unint64_t sub_100495C30()
{
  result = qword_1016A1590;
  if (!qword_1016A1590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1590);
  }

  return result;
}

unint64_t sub_100495C84()
{
  result = qword_1016A1598;
  if (!qword_1016A1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A1598);
  }

  return result;
}

unint64_t sub_100495CD8()
{
  result = qword_1016A15A0;
  if (!qword_1016A15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A15A0);
  }

  return result;
}

unint64_t sub_100495D74()
{
  result = qword_1016A15B8;
  if (!qword_1016A15B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A15B8);
  }

  return result;
}

uint64_t sub_100495DF4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 72)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 72)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 72;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100495F0C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 113)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 113)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 113)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 113;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100496024@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 114)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 114)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 114)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 114;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10049613C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 89)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 89)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 89)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 89;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100496254@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 60)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 60)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 60)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 60;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10049636C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 85)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 85)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 85)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 85;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100496484@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 != 32)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 32)
      {
        goto LABEL_11;
      }

LABEL_8:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

    goto LABEL_22;
  }

  if (BYTE6(a2) == 32)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v5 != 1)
  {
LABEL_19:
    v10 = BYTE6(a2);
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v10 = HIDWORD(result) - result;
LABEL_20:
    sub_100018350();
    swift_allocError();
    *v13 = 32;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    swift_willThrow();
    return sub_100016590(v4, a2);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10049659C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
LABEL_17:
      sub_100018350();
      swift_allocError();
      *v13 = 1326;
      *(v13 + 8) = v6;
      *(v13 + 16) = 0;
      swift_willThrow();
      return sub_100016590(v4, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 1326)
      {
        goto LABEL_10;
      }

LABEL_7:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 != 2)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_17;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 == 1326)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v6 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v6 = HIDWORD(result) - result;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10049669C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
LABEL_17:
      sub_100018350();
      swift_allocError();
      *v13 = 1286;
      *(v13 + 8) = v6;
      *(v13 + 16) = 0;
      swift_willThrow();
      return sub_100016590(v4, a2);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 1286)
      {
        goto LABEL_10;
      }

LABEL_7:
      *a3 = result;
      a3[1] = a2;
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 != 2)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_17;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 == 1286)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v5 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v6 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v6 = HIDWORD(result) - result;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t KeyRepresentable<>.init(data:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v10 = *(v9 + 48);
  sub_100017D5C(a1, a2);
  v11 = v10(a3, v9);
  v12 = sub_10049BF70(a1, a2, v11);
  if (!v4)
  {
    (*(a4 + 24))(v12);
  }

  return sub_100016590(a1, a2);
}

uint64_t sub_10049687C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for OwnedDeviceKeyRecord() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_100496910(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t Advertisement.hashed.getter()
{
  v0 = type metadata accessor for HashAlgorithm();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v0);
  v5 = Data.hash(algorithm:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

SecKeyRef sub_100496ABC()
{
  type metadata accessor for CFString(0);
  v1 = v0;
  v19 = v0;
  error[0] = kSecAttrKeyTypeEC;
  sub_1001E6224(error, v17);
  v2 = kSecAttrKeyType;
  v3 = kSecAttrKeyTypeEC;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v17, v2, isUniquelyReferenced_nonNull_native);

  v19 = v1;
  error[0] = kSecAttrKeyClassPrivate;
  sub_1001E6224(error, v17);
  v5 = kSecAttrKeyClass;
  v6 = kSecAttrKeyClassPrivate;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v17, v5, v7);

  error[0] = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
  sub_1004A4578();
  v9 = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = SecKeyCreateWithData(isa, v9, error);

  if (!v10)
  {
    goto LABEL_4;
  }

  if (error[0])
  {

LABEL_4:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *&v17[0] = error[0];
    sub_1000BC4D4(&qword_1016A2050, &qword_1013AA360);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v15 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    sub_1004A45E0();
    swift_allocError();
    swift_willThrow();
  }

  return v10;
}

uint64_t PublicKey.advertisement.getter(uint64_t a1, unint64_t a2)
{
  v2 = sub_100A79FEC(a1, a2);
  sub_100018000(v2, v3, &v5);
  return v5;
}

uint64_t NearOwnerAdvertisement.init(macAddress:ek:)(uint64_t a1)
{
  v5 = MACAddress.data.getter();
  v6 = v2;
  Data._Representation.subscript.getter();
  Data._Representation.subscript.setter();
  v3 = type metadata accessor for MACAddress();
  (*(*(v3 - 8) + 8))(a1, v3);
  sub_100017D5C(v5, v6);
  sub_100016590(v5, v6);
  return v5;
}

uint64_t sub_100496F68@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 57)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100496FE4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
LABEL_10:
      if (v5 == 32)
      {
LABEL_12:
        *a3 = result;
        a3[1] = a2;
        return result;
      }

LABEL_11:
      sub_100016590(result, a2);
      result = 0;
      a2 = 0xF000000000000000;
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}