uint64_t sub_1000F442C()
{
  v1 = v0[2158];

  v22 = v0[2161];
  v2 = v0[2156];
  v3 = v0[2155];
  v4 = v0[2151];
  v5 = v0[2150];
  v6 = v0[2149];
  v7 = v0[2148];
  v8 = v0[2147];
  v9 = v0[2145];
  v10 = v0[2144];
  v11 = v0[2143];
  v14 = v0[2140];
  v15 = v0[2138];
  v16 = v0[2137];
  v17 = v0[2135];
  v18 = v0[2134];
  v19 = v0[2132];
  v20 = v0[2131];
  v21 = v0[2130];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000F459C()
{
  v1 = v0[2164];
  v2 = v0[2163];
  v3 = v0[2160];
  v4 = v0[2155];
  v5 = v0[2154];
  v6 = v0[2153];
  v7 = v0[2152];
  (*(v6 + 16))(v4, v0[2128], v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[2171] = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v4, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[2172] = v11;
  *v11 = v0;
  v11[1] = sub_1000F4700;
  v12 = v0[2149];
  v13 = v0[2146];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100102B3C, v9, v13);
}

uint64_t sub_1000F4700()
{
  v1 = *(*v0 + 17376);
  v2 = *(*v0 + 17368);
  v3 = *(*v0 + 17032);
  v5 = *v0;

  return _swift_task_switch(sub_1000F482C, v3, 0);
}

uint64_t sub_1000F482C()
{
  v66 = v0;
  v1 = *(v0 + 17184);
  v2 = *(v0 + 17136);
  v3 = *(v0 + 17128);
  sub_1000D2A70(*(v0 + 17192), v1, &unk_1016AF8B0, &unk_1013A0700);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_10000B3A8(*(v0 + 17184), &unk_1016AF8B0, &unk_1013A0700);
  }

  else
  {
    v4 = *(v0 + 17184);
    v5 = sub_10051578C(*(v0 + 17248));
    sub_100101E70(v4, type metadata accessor for OwnedBeaconGroup);
    v6 = v5;
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = 255;
LABEL_5:
  v7 = sub_10110D3E0(*(v0 + 17192), v6);
  v9 = v8;
  v10 = *(v0 + 17360);
  v11 = *(v0 + 17352);
  v12 = *(v0 + 17344);
  v13 = *(v0 + 17336);
  v14 = *(v0 + 17288);
  sub_10000B3A8(*(v0 + 17192), &unk_1016AF8B0, &unk_1013A0700);
  v15 = sub_1000E0768();
  if (v14)
  {
    v28 = *(v0 + 17328);
    swift_errorRetain();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;

      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to parse beacon group info due to %{public}@", v31, 0xCu);
      sub_10000B3A8(v32, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v34 = *(v0 + 17224);
    v35 = *(v0 + 17032);
    sub_1000F7068(v7, v9, (v0 + 1344));
    v36 = (v34 + 8);
    v37 = *(v0 + 17280);
    v38 = *(v0 + 17248);
    v39 = *(v0 + 17216);
    memcpy(__dst, (v0 + 1344), sizeof(__dst));

    sub_100016590(v7, v9);

    sub_1001009E4(v0 + 6888);
    (*v36)(v38, v39);
  }

  else
  {
    v16 = v15;
    v17 = *(v0 + 17328);
    swift_bridgeObjectRetain_n();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v65 = v21;
      *v20 = 136315138;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();

      v22 = Dictionary.description.getter();
      v24 = v23;

      v25 = sub_1000136BC(v22, v24, &v65);

      *(v20 + 4) = v25;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v18, v19, "beaconGroupInfo: %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v26 = *(*(v0 + 17032) + 184);
    v27 = *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    *(v26 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) = v16;

    sub_1000F7068(v7, v9, (v0 + 1608));
    v40 = *(v0 + 17280);
    v41 = *(v0 + 17248);
    v42 = *(v0 + 17224);
    v43 = *(v0 + 17216);
    memcpy(__dst, (v0 + 1608), sizeof(__dst));

    sub_100016590(v7, v9);
    sub_1001009E4(v0 + 6888);
    (*(v42 + 8))(v41, v43);
  }

  v44 = *(v0 + 17248);
  v45 = *(v0 + 17240);
  v46 = *(v0 + 17208);
  v47 = *(v0 + 17200);
  v48 = *(v0 + 17192);
  v49 = *(v0 + 17184);
  v50 = *(v0 + 17176);
  v51 = *(v0 + 17160);
  v52 = *(v0 + 17152);
  v55 = *(v0 + 17144);
  v56 = *(v0 + 17120);
  v57 = *(v0 + 17104);
  v58 = *(v0 + 17096);
  v59 = *(v0 + 17080);
  v60 = *(v0 + 17072);
  v61 = *(v0 + 17056);
  v62 = *(v0 + 17048);
  v63 = *(v0 + 17040);
  memcpy(*(v0 + 17000), __dst, 0x108uLL);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_1000F4F14()
{
  v1 = v0[2164];
  v2 = v0[2163];
  v3 = v0[2160];
  v4 = v0[2155];
  v5 = v0[2154];
  v6 = v0[2153];
  v7 = v0[2152];
  (*(v6 + 16))(v4, v0[2128], v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[2177] = v9;
  *(v9 + 16) = v3;
  v2(v9 + v8, v4, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[2178] = v11;
  *v11 = v0;
  v11[1] = sub_1000F5078;
  v12 = v0[2147];
  v13 = v0[2146];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100101AA4, v9, v13);
}

uint64_t sub_1000F5078()
{
  v1 = *(*v0 + 17424);
  v2 = *(*v0 + 17416);
  v3 = *(*v0 + 17032);
  v5 = *v0;

  return _swift_task_switch(sub_1000F51A4, v3, 0);
}

uint64_t sub_1000F51A4()
{
  v77 = v0;
  v1 = v0[2147];
  v2 = v0[2141];
  if ((*(v0[2142] + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v3 = v0[2176];
  }

  else
  {
    v3 = v0[2176];
    v4 = v0[2175];
    v5 = v0[2144];
    sub_100101DA0(v1, v5, type metadata accessor for OwnedBeaconGroup);
    v6 = sub_1003CDA20(*(v5 + *(v2 + 40)));
    v7 = sub_1011299C8(v6);

    v8 = sub_100101618(v4, v7);

    if (!v8)
    {
      v29 = v0[2175];
      v30 = v0[2166];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v0[2175];
      v35 = v0[2174];
      v36 = v0[2173];
      if (v33)
      {
        v37 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v37 = 136315394;

        v38 = Array.description.getter();
        v40 = v39;

        v41 = sub_1000136BC(v38, v40, v76);

        *(v37 + 4) = v41;
        swift_bridgeObjectRelease_n();
        *(v37 + 12) = 2080;
        sub_100101BAC();

        v42 = Set.description.getter();
        v44 = v43;

        v45 = sub_1000136BC(v42, v44, v76);

        *(v37 + 14) = v45;

        swift_bridgeObjectRelease_n();
        _os_log_impl(&_mh_execute_header, v31, v32, "Invalid otherSerialNumbers: %s. allSerialNumbers: %s", v37, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v52 = v0[2173];

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v53 = v0[2160];
      v48 = v0[2156];
      v49 = v0[2153];
      v50 = v0[2152];
      v54 = v0[2144];
      sub_1005160CC(v0[2166]);
      sub_100100904();
      swift_allocError();
      *v55 = 0x8000000000000007;
      swift_willThrow();

      sub_1001009E4((v0 + 861));
      sub_100101A50((v0 + 1917));
      sub_100101E70(v54, type metadata accessor for OwnedBeaconGroup);
      goto LABEL_17;
    }

    sub_100101E70(v0[2144], type metadata accessor for OwnedBeaconGroup);
  }

  v9 = *(v0[2129] + 184);

  v10 = sub_1000F7BD0();
  if (v3)
  {
    v11 = v3;
    v12 = v0[2166];

    swift_errorRetain();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[2174];
    v17 = v0[2173];
    if (v15)
    {
      v75 = v0[2175];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v76[0] = v19;
      *v18 = 136446210;
      v0[2124] = v11;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v20 = String.init<A>(describing:)();
      v22 = sub_1000136BC(v20, v21, v76);

      *(v18 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to parse otherSerialNumbersAndMacAddressesMap due to %{public}s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    else
    {
      v46 = v0[2173];
    }

    v47 = v0[2160];
    v48 = v0[2156];
    v49 = v0[2153];
    v50 = v0[2152];
    sub_100100904();
    swift_allocError();
    *v51 = 0x8000000000000007;
    swift_willThrow();

    sub_1001009E4((v0 + 861));

    sub_100101A50((v0 + 1917));
LABEL_17:
    (*(v49 + 8))(v48, v50);
    v56 = v0[2156];
    v57 = v0[2155];
    v58 = v0[2151];
    v59 = v0[2150];
    v60 = v0[2149];
    v61 = v0[2148];
    v62 = v0[2147];
    v63 = v0[2145];
    v64 = v0[2144];
    v65 = v0[2143];
    v67 = v0[2140];
    v68 = v0[2138];
    v69 = v0[2137];
    v70 = v0[2135];
    v71 = v0[2134];
    v72 = v0[2132];
    v73 = v0[2131];
    v74 = v0[2130];

    v66 = v0[1];

    return v66();
  }

  v23 = *(v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);
  *(v9 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses) = v10;

  v24 = swift_task_alloc();
  v0[2179] = v24;
  *v24 = v0;
  v24[1] = sub_1000F5908;
  v25 = v0[2156];
  v26 = v0[2129];
  v27 = v0[2128];

  return sub_1000F7F88((v0 + 2), v25, v27);
}

uint64_t sub_1000F5908()
{
  v1 = *(*v0 + 17432);
  v2 = *(*v0 + 17032);
  v4 = *v0;

  return _swift_task_switch(sub_1000F5A18, v2, 0);
}

uint64_t sub_1000F5A18()
{
  v72 = v0;
  if (*(v0 + 280))
  {
    v1 = *(v0 + 17328);
    v2 = *(v0 + 32);
    *(v0 + 16544) = *(v0 + 16);
    *(v0 + 16560) = v2;
    *(v0 + 16569) = *(v0 + 41);
    sub_100101AA8(v0 + 16544, v0 + 16592);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 17400);
    v7 = *(v0 + 17392);
    v8 = *(v0 + 17384);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136446210;
      v70 = v10;
      v11 = sub_1013181BC();
      v13 = sub_1000136BC(v11, v12, &v70);

      *(v9 + 4) = v13;

      sub_100101B04(v0 + 16592);
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to generate finalizeCommand payload due to %{public}s", v9, 0xCu);
      sub_100007BAC(v10);
    }

    else
    {
      v23 = *(v0 + 17384);

      sub_100101B04(v0 + 16592);
    }

    v24 = *(v0 + 17280);
    v25 = *(v0 + 17248);
    v26 = *(v0 + 17224);
    v27 = *(v0 + 17216);
    sub_100101B58();
    v28 = swift_allocError();
    sub_100101AA8(v0 + 16544, v29);
    sub_100100904();
    swift_allocError();
    *v30 = v28;
    swift_willThrow();

    sub_1001009E4(v0 + 6888);
    sub_100101A50(v0 + 15336);
    sub_100101B04(v0 + 16544);
    (*(v26 + 8))(v25, v27);
    v31 = *(v0 + 17248);
    v32 = *(v0 + 17240);
    v33 = *(v0 + 17208);
    v34 = *(v0 + 17200);
    v35 = *(v0 + 17192);
    v36 = *(v0 + 17184);
    v37 = *(v0 + 17176);
    v38 = *(v0 + 17160);
    v39 = *(v0 + 17152);
    v40 = *(v0 + 17144);
    v53 = *(v0 + 17120);
    v55 = *(v0 + 17104);
    v57 = *(v0 + 17096);
    v59 = *(v0 + 17080);
    v61 = *(v0 + 17072);
    v63 = *(v0 + 17056);
    v65 = *(v0 + 17048);
    v67 = *(v0 + 17040);

    v41 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 17400);
    v15 = *(v0 + 17392);
    v16 = *(v0 + 17384);
    v17 = *(v0 + 17328);

    memcpy(__dst, (v0 + 16), sizeof(__dst));
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 17280);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Successfully generated finalize pairing command.", v22, 2u);

      sub_1001009E4(v0 + 6888);
      sub_100101A50(v0 + 15336);
    }

    else
    {
      v42 = *(v0 + 17280);

      sub_100101A50(v0 + 15336);
      sub_1001009E4(v0 + 6888);
    }

    (*(*(v0 + 17224) + 8))(*(v0 + 17248), *(v0 + 17216));
    v43 = *(v0 + 17248);
    v44 = *(v0 + 17240);
    v45 = *(v0 + 17208);
    v46 = *(v0 + 17200);
    v47 = *(v0 + 17192);
    v48 = *(v0 + 17184);
    v49 = *(v0 + 17176);
    v50 = *(v0 + 17160);
    v51 = *(v0 + 17152);
    v54 = *(v0 + 17144);
    v56 = *(v0 + 17120);
    v58 = *(v0 + 17104);
    v60 = *(v0 + 17096);
    v62 = *(v0 + 17080);
    v64 = *(v0 + 17072);
    v66 = *(v0 + 17056);
    v68 = *(v0 + 17048);
    v69 = *(v0 + 17040);
    memcpy(*(v0 + 17000), __dst, 0x108uLL);

    v41 = *(v0 + 8);
  }

  return v41();
}

uint64_t sub_1000F5F78()
{
  v1 = *(*v0 + 17440);
  v2 = *(*v0 + 17032);
  v4 = *v0;

  return _swift_task_switch(sub_1000F6088, v2, 0);
}

uint64_t sub_1000F6088()
{
  v107 = v0;
  v1 = *(v0 + 17120);
  v2 = *(v0 + 17112);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(v0 + 17328);
    v4 = *v1;
    sub_100101804(*v1);
    sub_100101804(v4);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      sub_100100904();
      swift_allocError();
      *v9 = v4;
      sub_100101804(v4);
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      sub_100101814(v4);
      sub_100101814(v4);
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to create new beacon. %{public}@", v7, 0xCu);
      sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {

      sub_100101814(v4);
      sub_100101814(v4);
    }

    v32 = *(v0 + 17280);
    v33 = *(v0 + 17248);
    v34 = *(v0 + 17224);
    v35 = *(v0 + 17216);
    sub_100100904();
    swift_allocError();
    *v36 = 0x8000000000000007;
    swift_willThrow();

    sub_10000B3A8(v0 + 15600, &qword_101697328, &unk_10138BEA0);
    sub_1001009E4(v0 + 6888);
    sub_100101814(v4);
    sub_1001016B0(v0 + 16336);
    (*(v34 + 8))(v33, v35);
    sub_100007BAC((v0 + 16680));
    v37 = *(v0 + 17248);
    v38 = *(v0 + 17240);
    v39 = *(v0 + 17208);
    v40 = *(v0 + 17200);
    v41 = *(v0 + 17192);
    v42 = *(v0 + 17184);
    v43 = *(v0 + 17176);
    v44 = *(v0 + 17160);
    v45 = *(v0 + 17152);
    v46 = *(v0 + 17144);
    v87 = *(v0 + 17120);
    v89 = *(v0 + 17104);
    v91 = *(v0 + 17096);
    v93 = *(v0 + 17080);
    v95 = *(v0 + 17072);
    v97 = *(v0 + 17056);
    v99 = *(v0 + 17048);
    v101 = *(v0 + 17040);

    v47 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 17104);
    v12 = *(v0 + 17096);
    v13 = *(v0 + 17088);
    sub_100101DA0(v1, v11, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
    sub_100101E08(v11, v12, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100101DA0(*(v0 + 17096), *(v0 + 17056), type metadata accessor for StandaloneBeacon);
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 17056);
      v15 = *(v0 + 17048);
      v16 = *(v0 + 17040);
      sub_1000076D4(*(v0 + 17320), qword_10177C418);
      sub_100101E08(v14, v15, type metadata accessor for StandaloneBeacon);
      sub_100101E08(v14, v16, type metadata accessor for StandaloneBeacon);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 17104);
      v21 = *(v0 + 17056);
      v22 = *(v0 + 17048);
      v23 = *(v0 + 17040);
      if (v19)
      {
        v24 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v24 = 136315651;
        v25 = sub_100B9B27C();
        v103 = v20;
        v27 = sub_1000136BC(v25, v26, &v105);

        *(v24 + 4) = v27;
        sub_100101E70(v22, type metadata accessor for StandaloneBeacon);
        *(v24 + 12) = 2160;
        *(v24 + 14) = 1752392040;
        *(v24 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = sub_1000136BC(v28, v29, &v105);

        *(v24 + 24) = v30;
        sub_100101E70(v23, type metadata accessor for StandaloneBeacon);
        _os_log_impl(&_mh_execute_header, v17, v18, "Created standalone beacon: %s. BeaconId: %{private,mask.hash}s", v24, 0x20u);
        swift_arrayDestroy();

        sub_100101E70(v21, type metadata accessor for StandaloneBeacon);
        v31 = v103;
      }

      else
      {

        sub_100101E70(v23, type metadata accessor for StandaloneBeacon);
        sub_100101E70(v22, type metadata accessor for StandaloneBeacon);
        sub_100101E70(v21, type metadata accessor for StandaloneBeacon);
        v31 = v20;
      }

      sub_100101E70(v31, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
      *(*(v0 + 17032) + 176) = 9;
    }

    else
    {
      v48 = *(v0 + 17328);
      v49 = *(v0 + 17144);
      v50 = *(v0 + 17096);
      v51 = *(v0 + 17080);
      v52 = *(v0 + 17072);
      v53 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
      sub_100101DA0(v50, v49, type metadata accessor for OwnedBeaconGroup);
      sub_100101DA0(v50 + v53, v51, type metadata accessor for OwnedBeaconRecord);
      sub_100101E08(v51, v52, type metadata accessor for OwnedBeaconRecord);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 17072);
      if (v56)
      {
        v58 = *(v0 + 17064);
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v105 = v60;
        *v59 = 141558275;
        *(v59 + 4) = 1752392040;
        *(v59 + 12) = 2081;
        v61 = *(v58 + 20);
        type metadata accessor for UUID();
        sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = sub_1000136BC(v62, v63, &v105);

        *(v59 + 14) = v64;
        sub_100101E70(v57, type metadata accessor for OwnedBeaconRecord);
        _os_log_impl(&_mh_execute_header, v54, v55, "Saved new beacon: %{private,mask.hash}s. Proceed to sending pairing complete.", v59, 0x16u);
        sub_100007BAC(v60);
      }

      else
      {

        sub_100101E70(v57, type metadata accessor for OwnedBeaconRecord);
      }

      v65 = *(v0 + 17144);
      if (sub_100518118())
      {
        *(*(v0 + 17032) + 176) = 9;
      }

      v66 = *(v0 + 17144);
      v67 = *(v0 + 17104);
      v68 = *(v0 + 17080);
      v69 = *(*(v0 + 17032) + 136);
      sub_100A5187C(v68);
      sub_100101E70(v68, type metadata accessor for OwnedBeaconRecord);
      sub_100101E70(v66, type metadata accessor for OwnedBeaconGroup);
      sub_100101E70(v67, type metadata accessor for AirPodsLEPairingService.BeaconCreationResult);
    }

    v70 = *(v0 + 17280);
    v71 = *(v0 + 17248);
    v72 = *(v0 + 17224);
    v73 = *(v0 + 17216);
    *(v0 + 284) = sub_100101428();
    sub_100101824();
    v74 = FixedWidthInteger.data.getter();
    v76 = v75;

    sub_10000B3A8(v0 + 15600, &qword_101697328, &unk_10138BEA0);
    sub_1001009E4(v0 + 6888);
    sub_1001016B0(v0 + 16336);
    (*(v72 + 8))(v71, v73);
    *(v0 + 10056) = v74;
    *(v0 + 10064) = v76;
    sub_100101878(v0 + 10056);
    sub_100007BAC((v0 + 16680));
    memcpy(__dst, (v0 + 10056), sizeof(__dst));
    v77 = *(v0 + 17248);
    v78 = *(v0 + 17240);
    v79 = *(v0 + 17208);
    v80 = *(v0 + 17200);
    v81 = *(v0 + 17192);
    v82 = *(v0 + 17184);
    v83 = *(v0 + 17176);
    v84 = *(v0 + 17160);
    v85 = *(v0 + 17152);
    v88 = *(v0 + 17144);
    v90 = *(v0 + 17120);
    v92 = *(v0 + 17104);
    v94 = *(v0 + 17096);
    v96 = *(v0 + 17080);
    v98 = *(v0 + 17072);
    v100 = *(v0 + 17056);
    v102 = *(v0 + 17048);
    v104 = *(v0 + 17040);
    memcpy(*(v0 + 17000), __dst, 0x108uLL);

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_1000F6B50()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 152);

  sub_100006654(*(v0 + 160), *(v0 + 168));
  v5 = *(v0 + 184);

  sub_10000B3A8(v0 + 192, &qword_101697380, &unk_10138BEF0);
  sub_10000B3A8(v0 + 232, &qword_1016973E8, &unk_10138BFA0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000F6BD8()
{
  sub_1000F6B50();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F6C28(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AirPodsLEPairingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1000F6CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for AirPodsLEPairingService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_1000F6D94(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AirPodsLEPairingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1000F6E3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1000E5624();
}

uint64_t sub_1000F6EC8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for AirPodsLEPairingService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1000F6F70()
{
  v1 = *v0;
  type metadata accessor for AirPodsLEPairingService();
  sub_100102448(&unk_1016B1150, v2, type metadata accessor for AirPodsLEPairingService);
  return ActorServiceProtocol.description.getter();
}

void *sub_1000F7068@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(v3 + 184);
  v5 = *(v4 + 48);
  if (v5 >> 60 == 15)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_101696FF8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Missing E1 blob to generate init pairing.", v9, 2u);
    }

    sub_100100904();
    swift_allocError();
    *v10 = 0x8000000000000000;
    return swift_willThrow();
  }

  v12 = *(v4 + 40);
  v13 = (v4 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_findMyNetworkId);
  v14 = v13[1];
  if (v14 >> 60 == 15)
  {
    sub_100017D5C(v12, v5);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_101696FF8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing FindMyNetworkId to generate init pairing.", v18, 2u);
    }

    sub_100100904();
    swift_allocError();
    *v19 = 0x8000000000000000;
    swift_willThrow();
    return sub_100006654(v12, v5);
  }

  v20 = v3;
  v22 = *v13;
  if (*(v3 + 272) == 1)
  {
    sub_10002E98C(v12, v5);
    sub_10002E98C(v22, v14);
    v23 = 0;
  }

  else
  {
    My = type metadata accessor for Feature.FindMy();
    *&__src[24] = My;
    *&__src[32] = sub_100102448(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
    v25 = sub_1000280DC(__src);
    (*(*(My - 8) + 104))(v25, enum case for Feature.FindMy.alphaWasp(_:), My);
    sub_10002E98C(v12, v5);
    sub_10002E98C(v22, v14);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC(__src);
    v23 = My & 1;
  }

  v26 = *(v20 + 184);
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  v102 = v23;
  sub_10002E98C(v12, v5);
  sub_10002E98C(v22, v14);
  v96 = v27;
  sub_100017D5C(v27, v28);
  sub_1000198E8();
  v30 = FixedWidthInteger.data.getter();
  v95 = v28;
  v31 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    result = a1;
    if (!v31)
    {
      v32 = BYTE6(v28);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  result = a1;
  if (v31 != 2)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v34 = *(v96 + 16);
  v33 = *(v96 + 24);
  v35 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v35)
  {
    __break(1u);
LABEL_23:
    LODWORD(v32) = HIDWORD(v96) - v96;
    if (__OFSUB__(HIDWORD(v96), v96))
    {
      __break(1u);
      goto LABEL_86;
    }

    v32 = v32;
  }

LABEL_25:
  if (v32 != 32)
  {
    goto LABEL_92;
  }

  v36 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v36)
    {
      v37 = BYTE6(v5);
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v37) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v37 = v37;
      goto LABEL_35;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v36 != 2)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v39 = *(v12 + 16);
  v38 = *(v12 + 24);
  v35 = __OFSUB__(v38, v39);
  v37 = v38 - v39;
  if (v35)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v37 != 113)
  {
    goto LABEL_93;
  }

  v40 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v40)
    {
      v41 = BYTE6(v14);
      goto LABEL_45;
    }

LABEL_43:
    LODWORD(v41) = HIDWORD(v22) - v22;
    if (!__OFSUB__(HIDWORD(v22), v22))
    {
      v41 = v41;
      goto LABEL_45;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v40 != 2)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v43 = *(v22 + 16);
  v42 = *(v22 + 24);
  v35 = __OFSUB__(v42, v43);
  v41 = v42 - v43;
  if (v35)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  if (v41 != 32)
  {
    goto LABEL_94;
  }

  v44 = v29 >> 62;
  if ((v29 >> 62) <= 1)
  {
    if (!v44)
    {
      v45 = BYTE6(v29);
      goto LABEL_55;
    }

LABEL_53:
    LODWORD(v45) = HIDWORD(v30) - v30;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v45 = v45;
      goto LABEL_55;
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v44 != 2)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v47 = *(v30 + 16);
  v46 = *(v30 + 24);
  v35 = __OFSUB__(v46, v47);
  v45 = v46 - v47;
  if (v35)
  {
    __break(1u);
    goto LABEL_53;
  }

LABEL_55:
  if (v45 != 1)
  {
    goto LABEL_95;
  }

  v48 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v48)
    {
      v49 = BYTE6(a2);
      goto LABEL_65;
    }

LABEL_63:
    LODWORD(v49) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v49 = v49;
      goto LABEL_65;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v48 != 2)
  {
LABEL_96:
    __break(1u);
    return result;
  }

  v51 = result[2];
  v50 = result[3];
  v35 = __OFSUB__(v50, v51);
  v49 = v50 - v51;
  if (v35)
  {
    __break(1u);
    goto LABEL_63;
  }

LABEL_65:
  if (v49 != 96)
  {
    goto LABEL_96;
  }

  *&v100 = result;
  *(&v100 + 1) = a2;
  v92 = v29;
  v93 = v22;
  if (v48 == 2)
  {
    v54 = result[2];
    v53 = result[3];
    v52 = v53 - v54;
    if (!__OFSUB__(v53, v54))
    {
      goto LABEL_71;
    }

    goto LABEL_91;
  }

  if (v48 == 1)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v52 = HIDWORD(result) - result;
LABEL_71:
      sub_100017D5C(result, a2);
      goto LABEL_73;
    }

    goto LABEL_90;
  }

  v52 = BYTE6(a2);
LABEL_73:
  if (__OFSUB__(96, v52))
  {
    __break(1u);
    goto LABEL_84;
  }

  v89 = v30;
  v101 = v23;
  v90 = v12;
  v91 = v5;
  *__src = sub_100845C88(96 - v52);
  *&__src[8] = v55;
  sub_100776394(__src, 0);
  v56 = *__src;
  v57 = *&__src[8];
  Data.append(_:)();
  sub_100016590(v56, v57);
  v88 = v100;
  if (qword_101694440 != -1)
  {
LABEL_84:
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_1000076D4(v58, qword_101696FF8);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *__src = v86;
    *v61 = 136315138;
    v62 = *(v20 + 184);
    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    sub_100017D5C(v64, v63);
    v65 = a2;
    v66 = v14;
    v67 = Data.hexString.getter();
    v69 = v68;
    sub_100016590(v64, v63);
    v70 = v67;
    v14 = v66;
    a2 = v65;
    v71 = sub_1000136BC(v70, v69, __src);

    *(v61 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v59, v60, "sessionNonce: %s", v61, 0xCu);
    sub_100007BAC(v86);
  }

  sub_100017D5C(a1, a2);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *__src = v75;
    *v74 = 136315138;
    v76 = Data.hexString.getter();
    v78 = sub_1000136BC(v76, v77, __src);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "companionSessionNonce: %s", v74, 0xCu);
    sub_100007BAC(v75);
  }

  *__src = v96;
  *&__src[8] = v95;
  *&__src[16] = v90;
  *&__src[24] = v91;
  *&__src[32] = v93;
  *&__src[40] = v14;
  *&__src[48] = v88;
  *&__src[64] = v89;
  *&__src[72] = v92;
  sub_100101C00(__src);
  sub_100017D5C(v93, v14);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  sub_100006654(v93, v14);
  if (os_log_type_enabled(v79, v80))
  {
    v87 = v14;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v98 = v82;
    *v81 = 141558531;
    *(v81 + 4) = 1752392040;
    *(v81 + 12) = 2081;
    sub_100101CD0();
    v83 = RawRepresentable<>.hexString.getter();
    v85 = sub_1000136BC(v83, v84, &v98);

    *(v81 + 14) = v85;
    *(v81 + 22) = 256;
    *(v81 + 24) = v101;
    _os_log_impl(&_mh_execute_header, v79, v80, "generateInitPairingPayload request success: fmNetworkId: %{private,mask.hash}s, accountHint: %hhu.", v81, 0x19u);
    sub_100007BAC(v82);

    sub_100006654(v93, v87);
    sub_100006654(v90, v91);
  }

  else
  {
    sub_100006654(v90, v91);

    sub_100006654(v93, v14);
  }

  return memcpy(a3, __src, 0x108uLL);
}

uint64_t sub_1000F7A60(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v13 = *(v3 + 16 * i);
      v6 = *(v3 + 16 * i + 8);
      sub_100017D5C(v13, *(&v13 + 1));
      sub_1000E0A3C();
      if ((DataProtocol.isNull.getter() & 1) == 0)
      {
        break;
      }

      result = sub_100016590(v13, v6);
      if (v2 == v1)
      {
        return v4;
      }
    }

    v7 = Data.trimmed.getter();
    v9 = v8;
    sub_100016590(v13, v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B840(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      result = sub_100A5B840((v10 > 1), v11 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[16 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v9;
  }

  while (v2 != v1);
  return v4;
}

void *sub_1000F7BD0()
{
  v25 = _swiftEmptyDictionarySingleton;
  *v24 = *(v0 + 16);
  sub_1000E0A3C();
  v1 = DataProtocol.intValue.getter();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Number of beacons: %{public}ld", v5, 0xCu);
  }

  if (v1 < 2)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = Data.chunked(into:)();
  sub_1000E44F8(v8, &v25);

  v9 = v25;
  v10 = v25[2];
  v11 = Logger.logObject.getter();
  if (v10 == v1 - 1)
  {
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315138;

      sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
      sub_100101BAC();
      v15 = Dictionary.description.getter();
      v17 = v16;

      v18 = sub_1000136BC(v15, v17, v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "serialNumbersAndMacAddressesMap: %s", v13, 0xCu);
      sub_100007BAC(v14);
    }
  }

  else
  {
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134349056;
      *(v20 + 4) = v9[2];
      _os_log_impl(&_mh_execute_header, v11, v19, "Unexpected number of other serial numbers: %{public}ld", v20, 0xCu);
    }

    v21 = type metadata accessor for BinaryEncodingError();
    sub_100102448(&qword_101696E20, 255, &type metadata accessor for BinaryEncodingError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for BinaryEncodingError.encodingError(_:), v21);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1000F7F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[277] = v3;
  v4[276] = a3;
  v4[275] = a2;
  v4[274] = a1;
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[278] = swift_task_alloc();
  v6 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  v4[279] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[280] = swift_task_alloc();
  v4[281] = swift_task_alloc();
  v4[282] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
  v4[283] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[284] = swift_task_alloc();
  v10 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v4[285] = v10;
  v11 = *(v10 - 8);
  v4[286] = v11;
  v12 = *(v11 + 64) + 15;
  v4[287] = swift_task_alloc();
  v4[288] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v4[289] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[290] = swift_task_alloc();
  v4[291] = swift_task_alloc();
  v4[292] = swift_task_alloc();
  v4[293] = swift_task_alloc();
  v4[294] = swift_task_alloc();
  v15 = type metadata accessor for HashAlgorithm();
  v4[295] = v15;
  v16 = *(v15 - 8);
  v4[296] = v16;
  v17 = *(v16 + 64) + 15;
  v4[297] = swift_task_alloc();
  v18 = type metadata accessor for MACAddress();
  v4[298] = v18;
  v19 = *(v18 - 8);
  v4[299] = v19;
  v4[300] = *(v19 + 64);
  v4[301] = swift_task_alloc();
  v20 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v4[302] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v4[303] = swift_task_alloc();
  v22 = async function pointer to daemon.getter[1];
  v23 = swift_task_alloc();
  v4[304] = v23;
  *v23 = v4;
  v23[1] = sub_1000F82B4;

  return daemon.getter();
}

uint64_t sub_1000F82B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2432);
  v12 = *v1;
  *(v3 + 2440) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 2448) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1000F8498;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000F8498(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2448);
  v5 = *v2;
  *(*v2 + 2456) = a1;

  v6 = *(v3 + 2440);
  v7 = *(v3 + 2216);
  if (v1)
  {

    v8 = sub_1000FA8A4;
  }

  else
  {

    v8 = sub_1000F85FC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000F85FC()
{
  v53 = v0;
  v1 = *(v0 + 2216);
  v2 = (*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC1);
  v3 = *v2;
  *(v0 + 2464) = *v2;
  v4 = v2[1];
  *(v0 + 2472) = v4;
  if (v4 >> 60 == 15)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing C1 from accessory!", v8, 2u);
    }

    v9 = *(v0 + 2456);
    v10 = *(v0 + 2192);

    *v10 = 0xD00000000000001ALL;
    v11 = "Missing C1 from accessory!";
LABEL_17:
    *(v10 + 8) = (v11 - 32) | 0x8000000000000000;
    *(v10 + 40) = 9;
    *(v10 + 264) = 1;
    v34 = *(v0 + 2424);
    v35 = *(v0 + 2408);
    v36 = *(v0 + 2376);
    v37 = *(v0 + 2352);
    v38 = *(v0 + 2344);
    v39 = *(v0 + 2336);
    v40 = *(v0 + 2328);
    v41 = *(v0 + 2320);
    v42 = *(v0 + 2304);
    v43 = *(v0 + 2296);
    v47 = *(v0 + 2272);
    v48 = *(v0 + 2256);
    v49 = *(v0 + 2248);
    v50 = *(v0 + 2240);
    v51 = *(v0 + 2224);

    v44 = *(v0 + 8);

    return v44();
  }

  sub_10002E98C(v3, v4);
  sub_100017D5C(v3, v4);
  sub_1000FDDD8(v3, v4, (v0 + 1816));
  sub_100006654(v3, v4);
  if (!*(v0 + 1840))
  {
    sub_10000B3A8(v0 + 1816, &qword_101697370, &unk_10138BEE0);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_101696FF8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "collaborativeKeyC2 generation error.", v32, 2u);
    }

    v33 = *(v0 + 2456);
    v10 = *(v0 + 2192);

    sub_100006654(v3, v4);

    *v10 = 0xD000000000000026;
    v11 = "Unable to generate collaborativeKeyC2!";
    goto LABEL_17;
  }

  v12 = *(v0 + 2216);
  sub_10000A748((v0 + 1816), v0 + 1896);
  sub_10000A748((v0 + 1856), v0 + 1936);
  v13 = *(v1 + 184);
  sub_10001F280(v0 + 1896, v0 + 1976);
  v14 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
  swift_beginAccess();

  sub_10002311C(v0 + 1976, v13 + v14, &qword_101697378, &unk_101391940);
  swift_endAccess();

  sub_10001F280(v0 + 1936, v0 + 2016);
  swift_beginAccess();
  sub_10002311C(v0 + 2016, v12 + 192, &qword_101697380, &unk_10138BEF0);
  swift_endAccess();
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  *(v0 + 2480) = sub_1000076D4(v15, qword_101696FF8);
  sub_10001F280(v0 + 1896, v0 + 2056);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v52 = v19;
    *v18 = 136315138;
    v20 = *(v0 + 2080);
    v21 = *(v0 + 2088);
    sub_1000035D0((v0 + 2056), v20);
    v22 = (*(*(*(v21 + 8) + 8) + 40))(v20);
    v24 = v23;
    v25 = Data.hexString.getter();
    v27 = v26;
    sub_100016590(v22, v24);
    sub_100007BAC((v0 + 2056));
    v28 = sub_1000136BC(v25, v27, &v52);

    *(v18 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "C2: %s", v18, 0xCu);
    sub_100007BAC(v19);
  }

  else
  {

    sub_100007BAC((v0 + 2056));
  }

  v46 = *(v0 + 2456);

  return _swift_task_switch(sub_1000F8C28, v46, 0);
}

uint64_t sub_1000F8C28()
{
  v1 = v0[307];
  v2 = v0[301];
  v3 = v0[300];
  v4 = v0[299];
  v5 = v0[298];
  (*(v4 + 16))(v2, v0[276], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[311] = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v5);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[312] = v9;
  *v9 = v0;
  v9[1] = sub_1000F8D94;
  v10 = v0[303];
  v11 = v0[302];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100102B3C, v7, v11);
}

uint64_t sub_1000F8D94()
{
  v1 = *(*v0 + 2496);
  v2 = *(*v0 + 2488);
  v3 = *(*v0 + 2216);
  v5 = *v0;

  return _swift_task_switch(sub_1000F8EC0, v3, 0);
}

unint64_t sub_1000F8EC0()
{
  v120 = v0;
  v1 = v0[303];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + *(v2 + 40));

    sub_100101E70(v1, type metadata accessor for OwnedBeaconGroup);
  }

  v4 = v0[310];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v119 = v8;
    *v7 = 136315138;
    v0[273] = v3;

    sub_1000BC4D4(&qword_101697390, &unk_10138BF20);
    v9 = String.init<A>(describing:)();
    v11 = v3;
    v12 = sub_1000136BC(v9, v10, &v119);

    *(v7 + 4) = v12;
    v3 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Existing beaconMap: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  v13 = v0[297];
  v14 = v0[296];
  v15 = v0[295];
  v16 = v0[240];
  v17 = v0[241];
  sub_1000035D0(v0 + 237, v16);
  v18 = (*(*(*(v17 + 8) + 8) + 40))(v16);
  v20 = v19;
  (*(v14 + 104))(v13, enum case for HashAlgorithm.sha256(_:), v15);
  v21 = Data.hash(algorithm:)();
  v23 = v22;
  v0[313] = v21;
  v0[314] = v22;
  sub_100016590(v18, v20);
  (*(v14 + 8))(v13, v15);
  v24 = v3;
  if (!v3)
  {
    v90 = v21;
    v91 = v23;
    v99 = v0[293];
    v100 = v0[294];
    v97 = v0[291];
    v98 = v0[292];
    v96 = v0[290];
    v117 = v0[289];
    v25 = *(*(v0[277] + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v28 = *(v25 + 64);
    v27 = v25 + 64;
    v26 = v28;
    v94 = v0[286];
    v29 = -1;
    v30 = -1 << *(*(*(v0[277] + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds) + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & v26;
    v32 = (63 - v30) >> 6;
    v101 = *(*(v0[277] + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    result = swift_bridgeObjectRetain_n();
    v34 = 0;
    v24 = _swiftEmptyDictionarySingleton;
    v92 = v32;
    v93 = v27;
    v95 = v0;
    while (1)
    {
      if (!v31)
      {
        while (1)
        {
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v35 >= v32)
          {

            v21 = v90;
            v23 = v91;
            goto LABEL_28;
          }

          v31 = *(v27 + 8 * v35);
          ++v34;
          if (v31)
          {
            v115 = v24;
            v34 = v35;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v115 = v24;
LABEL_18:
      v36 = v0[294];
      v37 = v0[293];
      v103 = v0[292];
      v108 = v0[291];
      v109 = v0[290];
      v38 = v0[288];
      v111 = v0[285];
      v113 = v0[287];
      v39 = __clz(__rbit64(v31)) | (v34 << 6);
      v40 = *(v101 + 56);
      v41 = (*(v101 + 48) + 16 * v39);
      v42 = *v41;
      v43 = v41[1];
      v102 = *v41;
      v44 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
      sub_100101E08(v40 + *(*v44 + 72) * v39, v36 + *(v117 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
      *v36 = v42;
      *(v100 + 8) = v43;
      sub_1000D2A70(v36, v37, &qword_101696E38, &qword_1013D8510);
      v104 = *(v99 + 8);
      v105 = *v37;
      v106 = v38;
      v107 = (v38 + *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48));
      sub_1000D2A70(v36, v103, &qword_101696E38, &qword_1013D8510);
      v45 = *v103;
      v46 = *(v98 + 8);
      sub_100017D5C(v102, v43);
      sub_100016590(v45, v46);
      v47 = v103 + *(v117 + 48);
      sub_1000D2A70(v47 + v44[8], v38, &qword_1016A40D0, &unk_10138BE70);
      sub_100101E70(v47, type metadata accessor for MultipartAccessoryPairingInfo);
      sub_1000D2A70(v36, v108, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v108, *(v97 + 8));
      v48 = *(v117 + 48);
      LOBYTE(v38) = *(v108 + v48);
      sub_100101E70(v108 + v48, type metadata accessor for MultipartAccessoryPairingInfo);
      sub_1000D2A70(v36, v109, &qword_101696E38, &qword_1013D8510);
      sub_100016590(*v109, *(v96 + 8));
      v49 = v109 + *(v117 + 48);
      LOBYTE(v40) = *(v49 + v44[9]);
      sub_100101E70(v49, type metadata accessor for MultipartAccessoryPairingInfo);
      *v107 = v38;
      v107[1] = 0;
      v107[2] = v40;
      swift_storeEnumTagMultiPayload();
      sub_100101DA0(v106, v113, type metadata accessor for OwnedBeaconGroup.PairingState);
      v24 = v115;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v115;
      result = sub_100771E30(v105, v104);
      v52 = *(v115 + 16);
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_41;
      }

      v56 = v51;
      if (*(v115 + 24) >= v55)
      {
        v0 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = result;
          sub_10100586C();
          result = v63;
          v24 = v119;
        }
      }

      else
      {
        sub_100FE71DC(v55, isUniquelyReferenced_nonNull_native);
        v24 = v119;
        result = sub_100771E30(v105, v104);
        v0 = v95;
        if ((v56 & 1) != (v57 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v58 = v0[294];
      v59 = v0[287];
      if (v56)
      {
        sub_100101D24(v0[287], v24[7] + *(v94 + 72) * result);
        sub_100016590(v105, v104);
        sub_10000B3A8(v58, &qword_101696E38, &qword_1013D8510);
      }

      else
      {
        v24[(result >> 6) + 8] |= 1 << result;
        v60 = (v24[6] + 16 * result);
        *v60 = v105;
        v60[1] = v104;
        sub_100101DA0(v59, v24[7] + *(v94 + 72) * result, type metadata accessor for OwnedBeaconGroup.PairingState);
        result = sub_10000B3A8(v58, &qword_101696E38, &qword_1013D8510);
        v61 = v24[2];
        v54 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v54)
        {
          goto LABEL_42;
        }

        v24[2] = v62;
      }

      v31 &= v31 - 1;
      result = sub_100101E70(v0[293] + *(v117 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
      v32 = v92;
      v27 = v93;
    }
  }

LABEL_28:
  v64 = v0[277];
  v65 = v64[23];
  v66 = v64[20];
  v67 = v64[21];

  sub_10002E98C(v66, v67);
  sub_100F50A90(v21, v23, v66, v67, v24, v0 + 86);

  sub_100006654(v66, v67);

  memcpy(v0 + 44, v0 + 86, 0x150uLL);
  if (sub_100101D88((v0 + 44)) == 1)
  {
    v68 = v0[310];
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unable to create pairing check data.", v71, 2u);
    }

    v72 = v0[309];
    v73 = v0[308];
    v74 = v0[307];
    v75 = v0[274];

    sub_100016590(v21, v23);
    sub_100006654(v73, v72);

    sub_100007BAC(v0 + 242);
    *v75 = 0xD00000000000001ALL;
    *(v75 + 8) = 0x800000010134B3C0;
    *(v75 + 40) = 9;
    *(v75 + 264) = 1;
    sub_100007BAC(v0 + 237);
    v76 = v0[303];
    v77 = v0[301];
    v78 = v0[297];
    v79 = v0[294];
    v80 = v0[293];
    v81 = v0[292];
    v82 = v0[291];
    v83 = v0[290];
    v84 = v0[288];
    v85 = v0[287];
    v110 = v0[284];
    v112 = v0[282];
    v114 = v0[281];
    v116 = v0[280];
    v118 = v0[278];

    v86 = v0[1];

    return v86();
  }

  else
  {
    memcpy(v0 + 2, v0 + 44, 0x150uLL);
    v87 = swift_task_alloc();
    v0[315] = v87;
    *v87 = v0;
    v87[1] = sub_1000F9968;
    v88 = v0[284];
    v89 = v0[277];

    return sub_1000FCC2C(v88, (v0 + 2));
  }
}

uint64_t sub_1000F9968()
{
  v1 = *(*v0 + 2520);
  v2 = *(*v0 + 2216);
  v4 = *v0;

  return _swift_task_switch(sub_1000F9A78, v2, 0);
}

uint64_t sub_1000F9A78()
{
  v80 = v0;
  v1 = v0[284];
  v2 = v0[283];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[310];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v1;
    v0[316] = *v1;
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      v11 = v6;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Pairing lock check failed. Error %{public}@", v9, 0xCu);
      sub_10000B3A8(v10, &qword_10169BB30, &unk_10138B3C0);
    }

    v0[271] = v6;
    type metadata accessor for SPPairingSessionError(0);
    sub_100102448(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.code.getter();
    if (v0[272] == 18)
    {
      v13 = swift_task_alloc();
      v0[317] = v13;
      *v13 = v0;
      v13[1] = sub_1000FA228;
      v14 = v0[277];
      v15 = v0[275];
      v16 = v0[274];

      return sub_1000FDF28(v16, v15);
    }

    else
    {
      v30 = v0[314];
      v31 = v0[313];
      v32 = v0[309];
      v33 = v0[308];
      v34 = v0[307];
      v35 = v0[274];
      sub_100007BAC(v0 + 242);
      sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
      sub_100016590(v31, v30);
      sub_100006654(v33, v32);

      *v35 = v6;
      *(v35 + 40) = 0;
      *(v35 + 264) = 1;
      sub_100007BAC(v0 + 237);
      v36 = v0[303];
      v37 = v0[301];
      v38 = v0[297];
      v39 = v0[294];
      v40 = v0[293];
      v41 = v0[292];
      v42 = v0[291];
      v43 = v0[290];
      v44 = v0[288];
      v45 = v0[287];
      v74 = v0[284];
      v75 = v0[282];
      v76 = v0[281];
      v77 = v0[280];
      v78 = v0[278];

      v46 = v0[1];

      return v46();
    }
  }

  else
  {
    v18 = v0[282];
    v19 = v0[281];
    v20 = v0[280];
    sub_100101DA0(v1, v18, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100101E08(v18, v19, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100101E08(v18, v20, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[281];
    if (v23)
    {
      v25 = v0[279];
      v26 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v26 = 136446723;
      v27 = (v24 + *(v25 + 40));
      if (v27[1] >> 60 == 15)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
      }

      else
      {
        v48 = *v27;
        v28 = Data.hexString.getter();
        v29 = v49;
      }

      v50 = v0[280];
      v51 = v0[279];
      sub_100101E70(v0[281], type metadata accessor for AirPodsSWPairingLockCheckResponse);
      v52 = sub_1000136BC(v28, v29, &v79);

      *(v26 + 4) = v52;
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2081;
      v53 = *(v51 + 32);
      type metadata accessor for UUID();
      sub_100102448(&qword_101696930, 255, &type metadata accessor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_100101E70(v50, type metadata accessor for AirPodsSWPairingLockCheckResponse);
      v57 = sub_1000136BC(v54, v56, &v79);

      *(v26 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v21, v22, "Received SeedS and S3 from server. Pairing token: %{public}s.fmnaId: %{private,mask.hash}s", v26, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v47 = v0[280];

      sub_100101E70(v47, type metadata accessor for AirPodsSWPairingLockCheckResponse);
      sub_100101E70(v24, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    }

    v58 = v0[282];
    v59 = v0[278];
    v60 = *(v0[277] + 184);
    v61 = *(v0[279] + 32);
    v62 = type metadata accessor for UUID();
    v63 = *(v62 - 8);
    (*(v63 + 16))(v59, v58 + v61, v62);
    (*(v63 + 56))(v59, 0, 1, v62);
    v64 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
    swift_beginAccess();

    sub_10002311C(v59, v60 + v64, &qword_1016980D0, &unk_10138F3B0);
    swift_endAccess();

    v65 = v0[240];
    v66 = v0[241];
    sub_1000035D0(v0 + 237, v65);
    v67 = (*(*(*(v66 + 8) + 8) + 40))(v65);
    v69 = v68;
    v0[318] = v67;
    v0[319] = v68;
    v70 = swift_task_alloc();
    v0[320] = v70;
    *v70 = v0;
    v70[1] = sub_1000FA4D0;
    v71 = v0[282];
    v72 = v0[277];
    v73 = v0[276];

    return sub_1000FF08C((v0 + 194), v71, v67, v69, v73);
  }
}

uint64_t sub_1000FA228()
{
  v1 = *(*v0 + 2536);
  v2 = *(*v0 + 2216);
  v4 = *v0;

  return _swift_task_switch(sub_1000FA338, v2, 0);
}

uint64_t sub_1000FA338()
{
  v1 = v0[316];
  v2 = v0[314];
  v3 = v0[313];
  v4 = v0[309];
  v5 = v0[308];
  v6 = v0[307];
  sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
  sub_100016590(v3, v2);
  sub_100006654(v5, v4);

  sub_100007BAC(v0 + 242);
  sub_100007BAC(v0 + 237);
  v7 = v0[303];
  v8 = v0[301];
  v9 = v0[297];
  v10 = v0[294];
  v11 = v0[293];
  v12 = v0[292];
  v13 = v0[291];
  v14 = v0[290];
  v15 = v0[288];
  v16 = v0[287];
  v19 = v0[284];
  v20 = v0[282];
  v21 = v0[281];
  v22 = v0[280];
  v23 = v0[278];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000FA4D0()
{
  v1 = *(*v0 + 2560);
  v2 = *(*v0 + 2552);
  v3 = *(*v0 + 2544);
  v4 = *(*v0 + 2216);
  v6 = *v0;

  sub_100016590(v3, v2);

  return _swift_task_switch(sub_1000FA61C, v4, 0);
}

uint64_t sub_1000FA61C()
{
  memcpy(v0 + 161, v0 + 194, 0x108uLL);
  v1 = sub_100101ED0((v0 + 161));
  v2 = v0[314];
  v3 = v0[313];
  v4 = v0[309];
  v5 = v0[308];
  v6 = v0[307];
  v7 = v0[282];
  v8 = v0[274];
  if (v1 == 1)
  {
    sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
    sub_100016590(v3, v2);
    sub_100006654(v5, v4);

    sub_100101E70(v7, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100007BAC(v0 + 242);
    *v8 = 0xD000000000000019;
    *(v8 + 1) = 0x800000010134B3E0;
    v8[40] = 9;
  }

  else
  {
    memcpy(v0 + 128, v0 + 161, 0x108uLL);
    sub_10000B3A8((v0 + 86), &qword_101697388, &qword_10138BF10);
    sub_100016590(v3, v2);
    sub_100006654(v5, v4);

    sub_100101E70(v7, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    sub_100007BAC(v0 + 242);
    memcpy(v8, v0 + 128, 0x108uLL);
  }

  v8[264] = v1 == 1;
  sub_100007BAC(v0 + 237);
  v9 = v0[303];
  v10 = v0[301];
  v11 = v0[297];
  v12 = v0[294];
  v13 = v0[293];
  v14 = v0[292];
  v15 = v0[291];
  v16 = v0[290];
  v17 = v0[288];
  v18 = v0[287];
  v21 = v0[284];
  v22 = v0[282];
  v23 = v0[281];
  v24 = v0[280];
  v25 = v0[278];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000FA8A4()
{
  v1 = v0[274];
  v2 = type metadata accessor for Daemon.Error();
  sub_100102448(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  v4[1] = 0x800000010134A8C0;
  (*(*(v2 - 8) + 104))(v4, enum case for Daemon.Error.missingService(_:), v2);
  *v1 = v3;
  *(v1 + 40) = 0;
  *(v1 + 264) = 1;
  v5 = v0[303];
  v6 = v0[301];
  v7 = v0[297];
  v8 = v0[294];
  v9 = v0[293];
  v10 = v0[292];
  v11 = v0[291];
  v12 = v0[290];
  v13 = v0[288];
  v14 = v0[287];
  v17 = v0[284];
  v18 = v0[282];
  v19 = v0[281];
  v20 = v0[280];
  v21 = v0[278];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000FAAA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v5 = v4;
  if (*(v3 + 274) != 1)
  {
    swift_beginAccess();
    sub_1000D2A70(v3 + 192, &v19, &qword_101697380, &unk_10138BEF0);
    if (*(&v20 + 1))
    {
      sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
      type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_11;
      }

      v12 = v24;
      v13 = CCCKGGetOpeningSize();

      sub_1003F141C(a1, a2, v12, v13, &v19);
      if (v5)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_10:
    result = sub_10000B3A8(&v19, &qword_101697380, &unk_10138BEF0);
    goto LABEL_11;
  }

  swift_beginAccess();
  sub_1000D2A70(v3 + 192, &v19, &qword_101697380, &unk_10138BEF0);
  if (!*(&v20 + 1))
  {
    goto LABEL_10;
  }

  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_11:
    v14 = xmmword_10138BBF0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_12;
  }

  v10 = v24;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a1, a2, v10, OpeningSize, &v19);
  if (v5)
  {
LABEL_5:

    goto LABEL_11;
  }

LABEL_9:

  v14 = v19;
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
LABEL_12:
  *a3 = v14;
  a3[1] = v15;
  a3[2] = v16;
  a3[3] = v17;
  a3[4] = v18;
  return result;
}

uint64_t sub_1000FACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = *(*(type metadata accessor for StandaloneBeacon() - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for MACAddress();
  v5[24] = v7;
  v8 = *(v7 - 8);
  v5[25] = v8;
  v5[26] = *(v8 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60);
  v5[29] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v11 = *(*(type metadata accessor for OwnedBeaconGroup(0) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v12 = type metadata accessor for OwnedBeaconRecord();
  v5[32] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v14 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  v5[35] = v16;
  *v16 = v5;
  v16[1] = sub_1000FAEB8;

  return daemon.getter();
}

uint64_t sub_1000FAEB8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v12 = *v1;
  *(v3 + 288) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 296) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1000FB09C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000FB09C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v5 = *v2;
  *(*v2 + 304) = a1;

  v6 = *(v3 + 288);
  v7 = *(v3 + 176);
  if (v1)
  {

    v8 = sub_1000FCAA0;
  }

  else
  {

    v8 = sub_1000FB200;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000FB200()
{
  v70 = v0;
  v1 = v0[22];
  v2 = (*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v3 = *v2;
  v0[39] = *v2;
  v4 = v2[1];
  v0[40] = v4;
  if (v4 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v0[15] = v3;
  v0[16] = v4;
  sub_100017D5C(v3, v4);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v3, v4);
LABEL_4:
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalid serial number.", v8, 2u);
    }

    v9 = v0[38];
    v10 = v0[18];

    *v10 = 0x8000000000000007;
    sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
    swift_storeEnumTagMultiPayload();
    v12 = v0[33];
    v11 = v0[34];
    v14 = v0[30];
    v13 = v0[31];
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[23];

    v18 = v0[1];

    return v18();
  }

  v20 = Data.trimmed.getter();
  v22 = v21;
  v0[41] = v20;
  v0[42] = v21;
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177C418);
  sub_100017D5C(v20, v22);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  sub_100016590(v20, v22);
  if (os_log_type_enabled(v24, v25))
  {
    v67 = v1;
    v26 = v0[34];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v69 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v29 = String.init(data:encoding:)();
    if (!v30)
    {
      v29 = Data.hexString.getter();
    }

    v31 = v29;
    v32 = v30;
    sub_100016590(v20, v22);
    v33 = sub_1000136BC(v31, v32, &v69);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating beacon for %{private,mask.hash}s", v27, 0x16u);
    sub_100007BAC(v28);

    v1 = v67;
  }

  else
  {
    sub_100016590(v20, v22);
  }

  if (*(v0[22] + 272))
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v34 = v0[27];
    v35 = v0[24];
    v36 = v0[25];
    v37 = v0[21];
    v0[50] = sub_1000076D4(v23, qword_101696FF8);
    (*(v36 + 16))(v34, v37, v35);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[27];
    v42 = v0[24];
    v43 = v0[25];
    if (v40)
    {
      v44 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v44 = 136446210;
      sub_100102448(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v1;
      v48 = v47;
      (*(v43 + 8))(v41, v42);
      v49 = sub_1000136BC(v45, v48, &v69);
      v1 = v46;

      *(v44 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v38, v39, "Creating standalone beacon. classicMACAddress %{public}s", v44, 0xCu);
      sub_100007BAC(v68);
    }

    else
    {

      (*(v43 + 8))(v41, v42);
    }

    v60 = v0[38];
    v61 = type metadata accessor for __DataStorage();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    v0[51] = __DataStorage.init(length:)();
    v0[52] = *(v1 + 184);

    v64 = sub_1000FC534;
    v65 = v60;
  }

  else
  {
    v50 = *(*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
    v0[43] = v50;
    v51 = qword_101694440;

    if (v51 != -1)
    {
      swift_once();
    }

    v0[44] = sub_1000076D4(v23, qword_101696FF8);
    swift_bridgeObjectRetain_n();
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69 = v55;
      *v54 = 136315394;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v56 = Dictionary.description.getter();
      v58 = sub_1000136BC(v56, v57, &v69);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2048;
      v59 = *(v50 + 16);

      *(v54 + 14) = v59;

      _os_log_impl(&_mh_execute_header, v52, v53, "allSerialNumbersAndPartIds: %s. Count %ld", v54, 0x16u);
      sub_100007BAC(v55);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v66 = v0[38];
    v0[45] = *(v1 + 184);

    v64 = sub_1000FB9CC;
    v65 = v66;
  }

  return _swift_task_switch(v64, v65, 0);
}

uint64_t sub_1000FB9CC()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v7 = v0[19];
  v19 = v0[43];
  (*(v5 + 16))(v3, v0[21], v6);
  v8 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[46] = v10;
  *(v10 + 16) = v2;
  v12 = v7[3];
  v11 = v7[4];
  v13 = v7[2];
  *(v10 + 40) = v7[1];
  *(v10 + 56) = v13;
  *(v10 + 72) = v12;
  *(v10 + 88) = v11;
  *(v10 + 24) = *v7;
  *(v10 + 104) = v1;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0xE000000000000000;
  (*(v5 + 32))(v10 + v8, v3, v6);
  *(v10 + v9) = v19;

  sub_100102538(v7, (v0 + 2));
  v14 = async function pointer to unsafeBlocking<A>(context:_:)[1];
  v15 = swift_task_alloc();
  v0[47] = v15;
  *v15 = v0;
  v15[1] = sub_1000FBB9C;
  v17 = v0[29];
  v16 = v0[30];

  return unsafeBlocking<A>(context:_:)(v16, 0xD000000000000010, 0x800000010134A8C0, sub_100102490, v10, v17);
}

uint64_t sub_1000FBB9C()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = *(v2 + 304);
    v5 = sub_1000FC278;
  }

  else
  {
    v6 = *(v2 + 368);
    v7 = *(v2 + 304);

    v5 = sub_1000FBCC4;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000FBCC4()
{
  v1 = v0[45];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[22];

  v7 = *(v5 + 48);
  sub_100101DA0(v4, v2, type metadata accessor for OwnedBeaconRecord);
  sub_100101DA0(v4 + v7, v3, type metadata accessor for OwnedBeaconGroup);

  return _swift_task_switch(sub_1000FBD90, v6, 0);
}

uint64_t sub_1000FBD90()
{
  v1 = *(*(v0 + 176) + 144);
  v2 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 392) = v3;
  if (v3)
  {
    v4 = *(v0 + 304);
    *(v0 + 440) = *(*(v0 + 256) + 20);
    v5 = v3;

    return _swift_task_switch(sub_1000FC00C, v4, 0);
  }

  else
  {
    v6 = *(v0 + 352);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    if (v9)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to retrieve current location from CL for pairing", v14, 2u);
    }

    sub_100006654(v13, v12);
    sub_100016590(v11, v10);

    v15 = *(v0 + 304);
    v16 = *(v0 + 264);
    v17 = *(v0 + 248);
    v18 = *(v0 + 144);

    v19 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
    sub_100101DA0(v17, v18, type metadata accessor for OwnedBeaconGroup);
    sub_100101DA0(v16, v18 + v19, type metadata accessor for OwnedBeaconRecord);
    type metadata accessor for AirPodsLEPairingService.BeaconCreationResult();
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
    swift_storeEnumTagMultiPayload();
    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    v26 = *(v0 + 184);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1000FC00C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 176);
  v4 = *(v0 + 264) + *(v0 + 440);
  v5 = *(*(v0 + 304) + 128);
  type metadata accessor for Transaction();
  v6 = swift_task_alloc();
  *(v6 + 16) = 0;
  *(v6 + 24) = v2;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  static Transaction.named<A>(_:with:)();

  return _swift_task_switch(sub_1000FC104, v3, 0);
}

uint64_t sub_1000FC104()
{
  v1 = v0[49];
  v2 = v0[41];
  v3 = v0[42];
  sub_100006654(v0[39], v0[40]);
  sub_100016590(v2, v3);

  v4 = v0[38];
  v5 = v0[33];
  v6 = v0[31];
  v7 = v0[18];

  v8 = *(sub_1000BC4D4(&qword_101697330, &qword_101391910) + 48);
  sub_100101DA0(v6, v7, type metadata accessor for OwnedBeaconGroup);
  sub_100101DA0(v5, v7 + v8, type metadata accessor for OwnedBeaconRecord);
  type metadata accessor for AirPodsLEPairingService.BeaconCreationResult();
  swift_storeEnumTagMultiPayload();
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[30];
  v11 = v0[31];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[23];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000FC278()
{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[22];

  return _swift_task_switch(sub_1000FC2EC, v3, 0);
}

uint64_t sub_1000FC2EC()
{
  v29 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 384);
    v6 = *(v0 + 328);
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v26 = *(v0 + 304);
    v27 = *(v0 + 336);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136446210;
    *(v0 + 136) = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v28);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to generateOwnedBeaconRecordGroup. Error %{public}s", v9, 0xCu);
    sub_100007BAC(v10);

    sub_100006654(v8, v7);
    sub_100016590(v6, v27);
  }

  else
  {
    v15 = *(v0 + 328);
    v14 = *(v0 + 336);
    v16 = *(v0 + 304);
    sub_100006654(*(v0 + 312), *(v0 + 320));
    sub_100016590(v15, v14);
  }

  **(v0 + 144) = *(v0 + 384);
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v22 = *(v0 + 216);
  v21 = *(v0 + 224);
  v23 = *(v0 + 184);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000FC534()
{
  v1 = v0[51];
  v2 = *(v0[38] + 128);
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_1000FC5E8;
  v4 = v0[52];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  return sub_100B90BDC(v5, v8, v4, v6, v7, 0x6000000000, v1 | 0x4000000000000000);
}

uint64_t sub_1000FC5E8()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v9 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = v2[38];
    v5 = sub_1000FC850;
  }

  else
  {
    v6 = v2[52];
    v7 = v2[22];

    v5 = sub_1000FC710;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000FC710()
{
  v1 = v0[51];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v5 = v0[23];
  v6 = v0[18];
  sub_100006654(v0[39], v0[40]);
  sub_100016590(v3, v2);

  sub_100101DA0(v5, v6, type metadata accessor for StandaloneBeacon);
  type metadata accessor for AirPodsLEPairingService.BeaconCreationResult();
  swift_storeEnumTagMultiPayload();
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();
  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[30];
  v9 = v0[31];
  v12 = v0[27];
  v11 = v0[28];
  v13 = v0[23];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000FC850()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 176);

  return _swift_task_switch(sub_1000FC8BC, v2, 0);
}

uint64_t sub_1000FC8BC()
{
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[54];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generateStandaloneBeacon. Error %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v10 = v0[54];
  v12 = v0[41];
  v11 = v0[42];
  v13 = v0[38];
  v14 = v0[18];
  sub_100006654(v0[39], v0[40]);
  sub_100016590(v12, v11);

  *v14 = v10;
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();
  v16 = v0[33];
  v15 = v0[34];
  v18 = v0[30];
  v17 = v0[31];
  v20 = v0[27];
  v19 = v0[28];
  v21 = v0[23];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000FCAA0()
{
  v1 = v0[18];
  v2 = type metadata accessor for Daemon.Error();
  sub_100102448(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  v4[1] = 0x800000010134A8C0;
  (*(*(v2 - 8) + 104))(v4, enum case for Daemon.Error.missingService(_:), v2);
  *v1 = v3;
  sub_1000BC4D4(&qword_1016972F0, &unk_10138BE60);
  swift_storeEnumTagMultiPayload();
  v6 = v0[33];
  v5 = v0[34];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000FCC2C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for Date();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v9 = *(v8 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000FCD4C, v2, 0);
}

uint64_t sub_1000FCD4C()
{
  v44 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = 0x7365547265646E75;
  *(v0 + 40) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 168) == 1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    v37 = *(v0 + 128);
    v38 = *(v0 + 120);
    v40 = *(v0 + 112);
    v41 = *(v0 + 104);
    v39 = *(v0 + 96);
    v4 = *(v0 + 80);
    *(v0 + 16) = *(*(v0 + 88) + 120);
    v5 = type metadata accessor for __DataStorage();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1001022C4(v0 + 16, v0 + 48);
    sub_1001022C4(v0 + 16, v0 + 64);
    v42 = 0x2000000000;
    v43 = __DataStorage.init(length:)();
    sub_1007765FC(&v42, 17);
    v35 = v43 | 0x4000000000000000;
    v36 = v42;
    v8 = *(v5 + 48);
    v9 = *(v5 + 52);
    swift_allocObject();
    v10 = __DataStorage.init(length:)();
    v42 = 0x6400000000;
    v43 = v10;
    sub_1007765FC(&v42, 34);
    v11 = v42;
    v12 = v43 | 0x4000000000000000;
    UUID.init()();
    v13 = *(v5 + 48);
    v14 = *(v5 + 52);
    swift_allocObject();
    v15 = __DataStorage.init(length:)();
    v42 = 0x2000000000;
    v43 = v15;
    sub_1007765FC(&v42, 85);
    v16 = v42;
    v17 = v43 | 0x4000000000000000;
    *v4 = *(v0 + 16);
    *(v4 + 16) = *(v0 + 16);
    *(v4 + 32) = v36;
    *(v4 + 40) = v35;
    *(v4 + 48) = v11;
    *(v4 + 56) = v12;
    v18 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
    (*(v2 + 32))(v4 + v18[8], v3, v37);
    v19 = (v4 + v18[9]);
    *v19 = 0xD000000000000011;
    v19[1] = 0x800000010134B430;
    v20 = (v4 + v18[10]);
    *v20 = v16;
    v20[1] = v17;
    *(v4 + v18[11]) = 0;
    v21 = *(v39 + 184);

    Date.init()();
    v22 = Date.epoch.getter();
    (*(v40 + 8))(v38, v41);
    *(v21 + 32) = v22;

    sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
    swift_storeEnumTagMultiPayload();
    v23 = *(v0 + 144);
    v24 = *(v0 + 120);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v28 = *(v0 + 88);
    v27 = *(v0 + 96);
    v29 = sub_100102448(&qword_101697238, v1, type metadata accessor for AirPodsLEPairingService);
    v30 = swift_task_alloc();
    *(v0 + 152) = v30;
    *(v30 + 16) = v27;
    *(v30 + 24) = v28;
    v31 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v32 = swift_task_alloc();
    *(v0 + 160) = v32;
    v33 = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
    *v32 = v0;
    v32[1] = sub_1000FD194;
    v34 = *(v0 + 80);

    return withCheckedContinuation<A>(isolation:function:_:)(v34, v27, v29, 0xD00000000000002DLL, 0x800000010134B400, sub_1001022BC, v30, v33);
  }
}

uint64_t sub_1000FD194()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v8 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 120);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000FD2E4(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = *(a2 + 128);
  v12 = *(a2 + 272);
  (*(v7 + 16))(&v16 - v9, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v7 + 32))(v14 + v13, v10, v6);

  sub_100923CB0(a3, v12, sub_100102320, v14);
}

uint64_t sub_1000FD454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101697360, &unk_10138BED0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v16 - v13);
  sub_1000D2A70(a1, &v16 - v13, &qword_101697360, &unk_10138BED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v12 = *v14;
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    sub_100101DA0(v14, v7, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    *(*(a2 + 184) + 32) = *&v7[*(v4 + 44)];
    sub_100101E08(v7, v12, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    swift_storeEnumTagMultiPayload();
    sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30);
    CheckedContinuation.resume(returning:)();
    return sub_100101E70(v7, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  }
}

uint64_t sub_1000FD66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = *(a2 + 184);

  sub_100F506B0(v20);

  v31 = v20[10];
  v32 = v20[11];
  v33 = v20[12];
  v34 = v20[13];
  v27 = v20[6];
  v28 = v20[7];
  v29 = v20[8];
  v30 = v20[9];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[4];
  v26 = v20[5];
  v21 = v20[0];
  v22 = v20[1];
  if (sub_1001010A8(&v21) == 1)
  {
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_101696FF8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to generate ack data!", v15, 2u);
    }

    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v35[10] = v31;
    v35[11] = v32;
    v35[12] = v33;
    v35[13] = v34;
    v35[6] = v27;
    v35[7] = v28;
    v35[8] = v29;
    v35[9] = v30;
    v35[2] = v23;
    v35[3] = v24;
    v35[4] = v25;
    v35[5] = v26;
    v35[0] = v21;
    v35[1] = v22;
    v17 = *(a2 + 128);
    (*(v7 + 16))(v10, a1, v6);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = swift_allocObject();
    (*(v7 + 32))(v19 + v18, v10, v6);
    *(v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    sub_1009245B4(v35, sub_1001010CC, v19);
    sub_10000B3A8(v20, &qword_1016972E0, &unk_10138BE50);
  }
}

uint64_t sub_1000FD958(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsSWPairingLockAckResponse();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - v8;
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v12 = sub_1000BC4D4(&qword_1016972E8, &unk_1013C8260);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v35 - v14);
  sub_1000D2A70(a1, &v35 - v14, &qword_1016972E8, &unk_1013C8260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_101696FF8);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = v18;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "Ack register failed with error - %{public}@", v21, 0xCu);
      sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }
  }

  else
  {
    sub_100101DA0(v15, v11, type metadata accessor for AirPodsSWPairingLockAckResponse);
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_101696FF8);
    sub_100101E08(v11, v9, type metadata accessor for AirPodsSWPairingLockAckResponse);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136446210;
      sub_100101E08(v9, v6, type metadata accessor for AirPodsSWPairingLockAckResponse);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      sub_100101E70(v9, type metadata accessor for AirPodsSWPairingLockAckResponse);
      v33 = sub_1000136BC(v30, v32, &v36);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Ack register was success. %{public}s", v28, 0xCu);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100101E70(v9, type metadata accessor for AirPodsSWPairingLockAckResponse);
    }

    sub_100101E70(v11, type metadata accessor for AirPodsSWPairingLockAckResponse);
  }

  sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000FDDD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(v3 + 274) == 1)
  {
    v5 = sub_100A743A8(a1, a2);
    v7 = v6;
    v9 = v8;
    sub_100017D5C(v5, v6);
    sub_100496024(v5, v7, &v19);
    v10 = v19;
    v11 = v20;
    a3[3] = &type metadata for CollaborativeKeyGen.v2.C2;
    a3[4] = sub_1001023F4();
    *a3 = v10;
    a3[1] = v11;
    v12 = type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
    v13 = &off_101645BC0;
  }

  else
  {
    v5 = sub_100A7491C(a1, a2);
    v7 = v14;
    v9 = v15;
    sub_100017D5C(v5, v14);
    sub_10049613C(v5, v7, &v19);
    v16 = v19;
    v17 = v20;
    a3[3] = &type metadata for CollaborativeKeyGen.v1.C2;
    a3[4] = sub_1001023A0();
    *a3 = v16;
    a3[1] = v17;
    v12 = type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
    v13 = &off_101645BA0;
  }

  a3[8] = v12;
  a3[9] = v13;
  result = sub_100016590(v5, v7);
  a3[5] = v9;
  return result;
}

uint64_t sub_1000FDF28(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v6 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v3[13] = v8;
  *v8 = v3;
  v8[1] = sub_1000FE050;

  return daemon.getter();
}

uint64_t sub_1000FE050(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1000FE234;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000FE234(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(*v2 + 128) = a1;

  v6 = *(v3 + 112);
  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = sub_1000FEF50;
  }

  else
  {

    v8 = sub_1000FE398;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000FE398()
{
  v40 = v0;
  v1 = v0[7];
  v2 = (*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v3 = *v2;
  v0[17] = *v2;
  v4 = v2[1];
  v0[18] = v4;
  if (v4 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v0[2] = v3;
  v0[3] = v4;
  sub_100017D5C(v3, v4);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v3, v4);
LABEL_4:
    if (qword_101694440 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_101696FF8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalid serial number.", v8, 2u);
    }

    v9 = v0[16];
    v10 = v0[5];

    *v10 = 9;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[5];
    *(v13 + 40) = 11;
    *(v13 + 264) = 1;

    v14 = v0[1];

    return v14();
  }

  v16 = Data.trimmed.getter();
  v18 = v17;
  v0[19] = v16;
  v0[20] = v17;
  sub_100017D5C(v16, v17);
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v0[21] = sub_1000076D4(v19, qword_101696FF8);
  sub_100017D5C(v16, v18);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  sub_100016590(v16, v18);
  v22 = &unk_10138B000;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[12];
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v24 = 136315138;
    sub_100017D5C(v16, v18);
    static String.Encoding.utf8.getter();
    v25 = String.init(data:encoding:)();
    if (!v26)
    {
      v25 = Data.hexString.getter();
    }

    v27 = v25;
    v28 = v26;
    sub_100016590(v16, v18);
    sub_100016590(v16, v18);
    v29 = sub_1000136BC(v27, v28, &v39);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "Accessory serial number: %s.", v24, 0xCu);
    sub_100007BAC(v38);

    v22 = &unk_10138B000;
  }

  else
  {
    sub_100016590(v16, v18);
  }

  v0[22] = *(*(v1 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  swift_bridgeObjectRetain_n();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = v22[107];
    type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100101BAC();
    v34 = Dictionary.description.getter();
    v36 = sub_1000136BC(v34, v35, &v39);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "beaconGroupInfo: %s", v32, 0xCu);
    sub_100007BAC(v33);
  }

  v37 = v0[16];
  v0[23] = *(v1 + 184);

  return _swift_task_switch(sub_1000FE88C, v37, 0);
}

uint64_t sub_1000FE88C()
{
  v14 = v0[22];
  v15 = v0[23];
  v1 = v0[19];
  v2 = v0[16];
  v13 = v0[20];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v6 + 16))(v4, v0[6], v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[24] = v9;
  *(v9 + 2) = v2;
  *(v9 + 3) = v1;
  *(v9 + 4) = v13;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0xE000000000000000;
  (*(v6 + 32))(&v9[v7], v4, v5);
  *&v9[v8] = v14;
  *&v9[(v8 + 15) & 0xFFFFFFFFFFFFFFF8] = v15;
  sub_100017D5C(v1, v13);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_1000FEA58;

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100101FAC, v9, &type metadata for () + 8);
}

uint64_t sub_1000FEA58()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_1000FECAC;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 128);

    v5 = sub_1000FEB80;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000FEB80()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1000FEBEC, v2, 0);
}

uint64_t sub_1000FEBEC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  sub_100006654(v0[17], v0[18]);
  sub_100016590(v1, v2);

  v4 = v0[5];
  *v4 = 9;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[5];
  *(v7 + 40) = 11;
  *(v7 + 264) = 1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FECAC()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[7];

  return _swift_task_switch(sub_1000FED20, v3, 0);
}

uint64_t sub_1000FED20()
{
  v27 = v0;
  v1 = v0[26];
  v2 = v0[21];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v23 = v0[19];
    v7 = v0[17];
    v6 = v0[18];
    v24 = v0[16];
    v25 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136446210;
    v0[4] = v5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to persist pairing lock state due to %{public}s", v8, 0xCu);
    sub_100007BAC(v9);

    sub_100006654(v7, v6);
    sub_100016590(v23, v25);
  }

  else
  {
    v13 = v0[26];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[16];
    sub_100006654(v0[17], v0[18]);
    sub_100016590(v15, v14);
  }

  v17 = v0[5];
  *v17 = 9;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[5];
  *(v20 + 40) = 11;
  *(v20 + 264) = 1;

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000FEF50()
{
  v1 = v0[5];
  v2 = type metadata accessor for Daemon.Error();
  sub_100102448(&qword_101697368, 255, &type metadata accessor for Daemon.Error);
  v3 = swift_allocError();
  *v4 = 0xD000000000000010;
  v4[1] = 0x800000010134A8C0;
  (*(*(v2 - 8) + 104))(v4, enum case for Daemon.Error.missingService(_:), v2);
  *v1 = v3;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[5];
  *(v7 + 40) = 0;
  *(v7 + 264) = 1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000FF08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[111] = v5;
  v6[110] = a5;
  v6[109] = a4;
  v6[108] = a3;
  v6[107] = a2;
  v6[106] = a1;
  v7 = type metadata accessor for MACAddress();
  v6[112] = v7;
  v8 = *(v7 - 8);
  v6[113] = v8;
  v6[114] = *(v8 + 64);
  v6[115] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v6[116] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v11 = type metadata accessor for String.Encoding();
  v6[120] = v11;
  v12 = *(v11 - 8);
  v6[121] = v12;
  v13 = *(v12 + 64) + 15;
  v6[122] = swift_task_alloc();
  v14 = type metadata accessor for AirPodsSWPairingLockCheckResponse();
  v6[123] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v16 = async function pointer to daemon.getter[1];
  v17 = swift_task_alloc();
  v6[126] = v17;
  *v17 = v6;
  v17[1] = sub_1000FF284;

  return daemon.getter();
}

uint64_t sub_1000FF284(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1008);
  v12 = *v1;
  *(v3 + 1016) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1024) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100102448(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100102448(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1000FF468;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1000FF468(uint64_t a1)
{
  v3 = *(*v2 + 1024);
  v4 = *v2;
  v4[129] = a1;
  v4[130] = v1;

  if (v1)
  {
    v5 = v4[127];

    sub_100100A8C((v4 + 2));
    v6 = v4[125];
    v7 = v4[124];
    v8 = v4[122];
    v9 = v4[119];
    v10 = v4[118];
    v11 = v4[117];
    v12 = v4[115];
    v13 = v4[106];

    memcpy(v13, v4 + 2, 0x108uLL);
    v14 = v4[1];

    return v14();
  }

  else
  {
    v16 = v4[127];
    v17 = v4[111];

    return _swift_task_switch(sub_1000FF650, v17, 0);
  }
}

uint64_t sub_1000FF650()
{
  v102 = v0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 856);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_101696FF8);
  sub_100101E08(v3, v1, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  sub_100101E08(v3, v2, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1000);
  if (!v7)
  {
    v18 = *(v0 + 992);
    sub_100101E70(*(v0 + 1000), type metadata accessor for AirPodsSWPairingLockCheckResponse);

    sub_100101E70(v18, type metadata accessor for AirPodsSWPairingLockCheckResponse);
    goto LABEL_16;
  }

  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v13 = v10;
  v100 = v10;
  *v9 = 134218242;
  v14 = *(v8 + 48);
  v15 = *(v8 + 56);
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_15;
    }

    v20 = v14 + 16;
    v14 = *(v14 + 16);
    v19 = *(v20 + 8);
    v17 = v19 - v14;
    if (!__OFSUB__(v19, v14))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v21 = __OFSUB__(HIDWORD(v14), v14);
    v22 = HIDWORD(v14) - v14;
    if (v21)
    {
      __break(1u);
      return _swift_task_switch(v10, v11, v12);
    }

    v17 = v22;
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v17 = BYTE6(v15);
LABEL_15:
  v23 = *(v0 + 992);
  sub_100101E70(*(v0 + 1000), type metadata accessor for AirPodsSWPairingLockCheckResponse);
  *(v9 + 4) = v17;
  *(v9 + 12) = 2080;
  v24 = *(v23 + 48);
  v25 = *(v23 + 56);
  v26 = Data.hexString.getter();
  v28 = v27;
  sub_100101E70(v23, type metadata accessor for AirPodsSWPairingLockCheckResponse);
  v29 = sub_1000136BC(v26, v28, &v100);

  *(v9 + 14) = v29;
  _os_log_impl(&_mh_execute_header, v5, v6, "S3 count %ld: %s", v9, 0x16u);
  sub_100007BAC(v13);

LABEL_16:
  v30 = *(v0 + 888);
  if (*(v30 + 272) == 1)
  {
    v31 = *(v0 + 1040);
    v32 = type metadata accessor for __DataStorage();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = __DataStorage.init(length:)();
    v100 = 0x3C00000000;
    v101 = v35;
    sub_1007765FC(&v100, 0);
    v36 = v100;
    v37 = v101 | 0x4000000000000000;
  }

  else
  {
    v38 = (*(v0 + 856) + *(*(v0 + 984) + 36));
    if (!v38[1])
    {
      goto LABEL_20;
    }

    v39 = *(v0 + 976);
    v40 = *(v0 + 968);
    v41 = *(v0 + 960);
    v42 = *v38;
    static String.Encoding.utf8.getter();
    v36 = String.data(using:allowLossyConversion:)();
    v37 = v43;
    (*(v40 + 8))(v39, v41);
    if (v37 >> 60 == 15)
    {
LABEL_20:
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Unable to decode masked apple ID", v46, 2u);
      }

      v47 = *(v0 + 1032);

      goto LABEL_32;
    }
  }

  *(v0 + 1056) = v37;
  *(v0 + 1048) = v36;
  if (*(v30 + 272) != 1)
  {
    v65 = *(v0 + 888);
    v66 = *(v65 + 184);
    v67 = v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId;
    *(v0 + 1112) = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
    if (*(v67 + 1))
    {
      goto LABEL_29;
    }

    v68 = (v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v69 = *v68;
    *(v0 + 1064) = *v68;
    v70 = v68[1];
    *(v0 + 1072) = v70;
    if (v70 >> 60 == 15)
    {
      goto LABEL_29;
    }

    *(v0 + 824) = v69;
    *(v0 + 832) = v70;
    sub_100017D5C(v69, v70);
    sub_1000E0A3C();
    if (DataProtocol.isNull.getter())
    {
      sub_100006654(v69, v70);
      v71 = *(v0 + 888);
LABEL_29:

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();

      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v0 + 1032);
      if (v74)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v100 = v77;
        *v76 = 141558275;
        *(v76 + 4) = 1752392040;
        *(v76 + 12) = 2081;
        v78 = (*(v65 + 184) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
        v79 = *v78;
        v80 = v78[1];
        *(v0 + 808) = *v78;
        *(v0 + 816) = v80;
        sub_10002E98C(v79, v80);
        sub_1000BC4D4(&qword_1016A40E0, &unk_101396F30);
        v81 = String.init<A>(describing:)();
        v83 = sub_1000136BC(v81, v82, &v100);

        *(v76 + 14) = v83;
        _os_log_impl(&_mh_execute_header, v72, v73, "Invalid serial number %{private,mask.hash}s!", v76, 0x16u);
        sub_100007BAC(v77);
      }

      sub_100016590(v36, v37);

LABEL_32:
      sub_100100A8C(v0 + 16);
      goto LABEL_33;
    }

    v94 = *(v0 + 1032);
    *(v0 + 1080) = Data.trimmed.getter();
    *(v0 + 1088) = v95;
    v10 = sub_1000FFE68;
    v11 = v94;
    v12 = 0;

    return _swift_task_switch(v10, v11, v12);
  }

  v48 = *(v0 + 952);
  v49 = type metadata accessor for OwnedBeaconGroup(0);
  (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  v96 = sub_10110DFBC(v48, 255);
  v51 = v50;
  sub_10000B3A8(v48, &unk_1016AF8B0, &unk_1013A0700);
  v52 = *(v0 + 1048);
  v97 = *(v0 + 1056);
  v98 = *(v0 + 1032);
  v53 = *(v0 + 872);
  v54 = *(v0 + 864);
  v55 = *(v0 + 856);
  v57 = v55[4];
  v56 = v55[5];
  v58 = v55[6];
  v59 = v55[7];
  *(v0 + 840) = *(v55 + *(*(v0 + 984) + 44));
  sub_100017D5C(v54, v53);
  sub_100017D5C(v57, v56);
  sub_100017D5C(v58, v59);
  sub_100102194();
  v60 = FixedWidthInteger.data.getter();
  sub_100423378(v54, v53, v57, v56, v52, v97, v58, v59, v99, v60, v61, v96, v51);

  v62 = v99[5];
  *(v0 + 608) = v99[4];
  *(v0 + 624) = v62;
  *(v0 + 640) = v99[6];
  v63 = v99[1];
  *(v0 + 544) = v99[0];
  *(v0 + 560) = v63;
  v64 = v99[3];
  *(v0 + 576) = v99[2];
  *(v0 + 592) = v64;
  sub_1001021E8(v0 + 544);
  memcpy((v0 + 280), (v0 + 544), 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)(v0 + 280);
  memcpy((v0 + 16), (v0 + 280), 0x108uLL);
LABEL_33:
  v84 = *(v0 + 1000);
  v85 = *(v0 + 992);
  v86 = *(v0 + 976);
  v87 = *(v0 + 952);
  v88 = *(v0 + 944);
  v89 = *(v0 + 936);
  v90 = *(v0 + 920);
  v91 = *(v0 + 848);

  memcpy(v91, (v0 + 16), 0x108uLL);
  v92 = *(v0 + 8);

  return v92();
}

uint64_t sub_1000FFE68()
{
  v1 = v0[129];
  v2 = v0[115];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  (*(v4 + 16))(v2, v0[110], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[137] = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v5);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  v0[138] = v9;
  *v9 = v0;
  v9[1] = sub_1000FFFD4;
  v10 = v0[118];
  v11 = v0[116];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100102B3C, v7, v11);
}

uint64_t sub_1000FFFD4()
{
  v1 = *(*v0 + 1104);
  v2 = *(*v0 + 1096);
  v3 = *(*v0 + 888);
  v5 = *v0;

  return _swift_task_switch(sub_100100100, v3, 0);
}

uint64_t sub_100100100()
{
  v42 = v0;
  v1 = *(v0 + 936);
  sub_1000D2A70(*(v0 + 944), v1, &unk_1016AF8B0, &unk_1013A0700);
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(*(v0 + 936), &unk_1016AF8B0, &unk_1013A0700);
    v3 = *(v0 + 1112);
  }

  else
  {
    v4 = *(v0 + 1112);
    v5 = *(v0 + 936);
    v6 = sub_1005183F0(*(v0 + 1080), *(v0 + 1088));
    sub_100101E70(v5, type metadata accessor for OwnedBeaconGroup);
    if ((v6 & 0x100) != 0)
    {
      v3 = v4;
    }

    else
    {
      v3 = v6;
    }
  }

  v7 = *(v0 + 1088);
  v8 = *(v0 + 1080);
  v9 = *(v0 + 1072);
  v10 = *(v0 + 1064);
  v11 = *(v0 + 944);
  v12 = sub_10110DFBC(v11, v3);
  v39 = v13;
  v40 = v12;
  sub_100016590(v8, v7);
  sub_100006654(v10, v9);
  sub_10000B3A8(v11, &unk_1016AF8B0, &unk_1013A0700);
  v14 = *(v0 + 1056);
  v15 = *(v0 + 1048);
  v38 = *(v0 + 1032);
  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  v20 = v18[4];
  v19 = v18[5];
  v21 = v18[6];
  v22 = v18[7];
  *(v0 + 840) = *(v18 + *(*(v0 + 984) + 44));
  sub_100017D5C(v17, v16);
  sub_100017D5C(v20, v19);
  sub_100017D5C(v21, v22);
  sub_100102194();
  v23 = FixedWidthInteger.data.getter();
  sub_100423378(v17, v16, v20, v19, v15, v14, v21, v22, v41, v23, v24, v40, v39);

  v25 = v41[5];
  *(v0 + 608) = v41[4];
  *(v0 + 624) = v25;
  *(v0 + 640) = v41[6];
  v26 = v41[1];
  *(v0 + 544) = v41[0];
  *(v0 + 560) = v26;
  v27 = v41[3];
  *(v0 + 576) = v41[2];
  *(v0 + 592) = v27;
  sub_1001021E8(v0 + 544);
  memcpy((v0 + 280), (v0 + 544), 0x108uLL);
  SharingCircleWildAdvertisementKey.init(key:)(v0 + 280);
  memcpy((v0 + 16), (v0 + 280), 0x108uLL);
  v28 = *(v0 + 1000);
  v29 = *(v0 + 992);
  v30 = *(v0 + 976);
  v31 = *(v0 + 952);
  v32 = *(v0 + 944);
  v33 = *(v0 + 936);
  v34 = *(v0 + 920);
  v35 = *(v0 + 848);

  memcpy(v35, (v0 + 16), 0x108uLL);
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1001003F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v16, 0, 14);
      v7 = v16;
      goto LABEL_17;
    }

    v8 = a5;
    v9 = a4;
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v12 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      a5 = v10 - a1;
      if (__OFSUB__(v10, a1))
      {
        goto LABEL_19;
      }

      v12 += a5;
    }

    if (!__OFSUB__(v11, v10))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v13 = a1;
    if (a1 >> 32 >= a1)
    {
      v8 = a5;
      v9 = a4;
      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
LABEL_15:
        __DataStorage._length.getter();
        a5 = v8;
        v7 = v12;
        a3 = v5;
        a4 = v9;
        goto LABEL_17;
      }

      v14 = __DataStorage._offset.getter();
      if (!__OFSUB__(v13, v14))
      {
        v12 += v13 - v14;
        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v16[0] = a1;
  LOWORD(v16[1]) = a2;
  BYTE2(v16[1]) = BYTE2(a2);
  BYTE3(v16[1]) = BYTE3(a2);
  BYTE4(v16[1]) = BYTE4(a2);
  BYTE5(v16[1]) = BYTE5(a2);
  v7 = v16;
LABEL_17:
  sub_100A78F4C(v7, a3, a4, a5);
}

uint64_t sub_1001005E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_100100698;

  return sub_1000ECDEC(a3, a4);
}

uint64_t sub_100100698(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_1001007E4, 0, 0);
  }
}

uint64_t sub_100100808(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014650;

  return sub_1001005E8(a1, v6, v7, v1 + v5);
}

unint64_t sub_100100904()
{
  result = qword_101697278;
  if (!qword_101697278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697278);
  }

  return result;
}

double sub_100100958(uint64_t a1)
{
  result = 0.0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 256) = 0x3000000000000000;
  return result;
}

unint64_t sub_100100A38()
{
  result = qword_1016972B0;
  if (!qword_1016972B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016972B0);
  }

  return result;
}

double sub_100100A8C(uint64_t a1)
{
  *a1 = xmmword_10138BC00;
  *(a1 + 16) = xmmword_10138BC00;
  *(a1 + 32) = xmmword_10138BC00;
  *(a1 + 48) = xmmword_10138BC00;
  *(a1 + 64) = xmmword_10138BC00;
  *(a1 + 80) = xmmword_10138BC00;
  *(a1 + 96) = xmmword_10138BC00;
  *(a1 + 112) = xmmword_10138BC00;
  *(a1 + 128) = xmmword_10138BC00;
  *(a1 + 144) = xmmword_10138BC00;
  *(a1 + 160) = xmmword_10138BC00;
  *(a1 + 176) = xmmword_10138BC00;
  *(a1 + 192) = xmmword_10138BC00;
  *(a1 + 208) = 16128;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return result;
}

uint64_t sub_100100ACC(uint64_t a1)
{
  v1 = (*(a1 + 256) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | ((*(a1 + 240) & 0x2000000000000000) != 0);
  }
}

uint64_t sub_100100AF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1000EFE88(a1, v5, v4);
}

unint64_t sub_100100BA4()
{
  result = qword_1016972C8;
  if (!qword_1016972C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016972C8);
  }

  return result;
}

uint64_t sub_100100BF8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33)
{
  v38 = (a33 >> 59) & 6 | ((a31 & 0x2000000000000000) != 0);
  if (v38 > 2)
  {
    switch(v38)
    {
      case 3:
        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        sub_100016590(a7, a8);
        sub_100016590(a9, a10);
        sub_100016590(a11, a12);
        result = a13;
        a2 = a14;
        break;
      case 4:
        sub_100016590(result, a2);
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        result = a7;
        a2 = a8;
        break;
      case 5:
        break;
      default:
        return result;
    }
  }

  else if (v38)
  {
    if (v38 == 1)
    {
      sub_100016590(result, a2);
      sub_100016590(a3, a4);
      sub_100016590(a5, a6);
      sub_100016590(a7, a8);
      result = a9;
      a2 = a10;
    }

    else
    {
      if (v38 != 2)
      {
        return result;
      }

      sub_100016590(result, a2);
      sub_100016590(a3, a4);
      sub_100016590(a5, a6);
      sub_100016590(a7, a8);
      sub_100016590(a9, a10);
      sub_100016590(a11, a12);
      sub_100016590(a13, a14);
      sub_100016590(a15, a16);
      sub_100016590(a17, a18);
      sub_100016590(a19, a20);
      sub_100016590(a21, a22);
      sub_100016590(a23, a24);
      sub_100016590(a25, a26);
      sub_100016590(a28, a29);
      sub_100016590(a30, a31 & 0xDFFFFFFFFFFFFFFFLL);
      a2 = a33 & 0xCFFFFFFFFFFFFFFFLL;
      result = a32;
    }
  }

  else
  {
    sub_100016590(result, a2);
    result = a3;
    a2 = a4;
  }

  return sub_100016590(result, a2);
}

uint64_t sub_100100EBC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100100EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_1000EF77C(a1, v5, v4);
}

uint64_t sub_100100FA8(uint64_t a1)
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1000EF874(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001010A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001010CC(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000FD958(a1);
}

uint64_t type metadata accessor for AirPodsLEPairingService.BeaconCreationResult()
{
  result = qword_101697460;
  if (!qword_101697460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001011C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100101224()
{
  result = qword_101697308;
  if (!qword_101697308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697308);
  }

  return result;
}

uint64_t sub_100101278(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_100101318;

  return sub_100102674(v3, v4);
}

uint64_t sub_100101318(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100101428()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_101073524(v13[1]);

  if ((v9 * 60) >> 64 != (60 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v7);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v11 = Duration.milliseconds.getter();
  v12 = *(v1 + 8);
  v12(v5, v0);
  result = (v12)(v7, v0);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v11))
  {
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_100101618(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 2;
    v7 = *(v3 - 1);
    v6 = *v3;
    sub_100017D5C(v7, *v3);
    v8 = sub_10111EBC4(v7, v6, a2);
    sub_100016590(v7, v6);
    v3 = v5;
  }

  while ((v8 & 1) != 0);
  return v4 == 0;
}

unint64_t sub_100101704()
{
  result = qword_101697318;
  if (!qword_101697318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697318);
  }

  return result;
}

uint64_t *sub_100101758(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

unint64_t sub_100101804(unint64_t result)
{
  if (!(result >> 62))
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_100101814(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_100101824()
{
  result = qword_1016A61A0;
  if (!qword_1016A61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A61A0);
  }

  return result;
}

int8x16_t sub_100101878(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

unint64_t sub_10010194C()
{
  result = qword_101697338;
  if (!qword_101697338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697338);
  }

  return result;
}

unint64_t sub_1001019A0()
{
  result = qword_101697340;
  if (!qword_101697340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697340);
  }

  return result;
}

unint64_t sub_100101B58()
{
  result = qword_1016A60F0;
  if (!qword_1016A60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A60F0);
  }

  return result;
}

unint64_t sub_100101BAC()
{
  result = qword_1016A4000;
  if (!qword_1016A4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4000);
  }

  return result;
}

int8x16_t sub_100101C00(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL;
  v14 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v14;
  *(a1 + 256) = v13;
  return result;
}

unint64_t sub_100101CD0()
{
  result = qword_101697358;
  if (!qword_101697358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697358);
  }

  return result;
}

uint64_t sub_100101D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100101D88(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100101DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100101E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100101E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100101ED0(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 184) >> 38) & 0xC00000 | (*(a1 + 200) >> 36) & 0x3000000 | (*(a1 + 208) >> 8 << 26);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

void sub_100101FAC()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100E76060(v0[2], v0[3], v0[4], v0[5], v0[6], v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10010205C()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100102120@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E73DFC(v4, v5, a1);
}

unint64_t sub_100102194()
{
  result = qword_101697398;
  if (!qword_101697398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697398);
  }

  return result;
}

int8x16_t sub_1001021E8(uint64_t a1)
{
  v1 = *(a1 + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(a1 + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(a1 + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(a1 + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(a1 + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(a1 + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(a1 + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(a1 + 184) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(a1 + 224) & 0xCFFFFFFFFFFFFFFFLL;
  v13 = *(a1 + 240) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v14 = *(a1 + 256) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(a1 + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(a1 + 24) = v1;
  *(a1 + 40) = v2;
  *(a1 + 56) = v3;
  *(a1 + 72) = v4;
  *(a1 + 88) = v5;
  *(a1 + 104) = v6;
  *(a1 + 120) = v7;
  *(a1 + 136) = v8;
  *(a1 + 152) = v9;
  *(a1 + 168) = v10;
  *(a1 + 184) = v11;
  result = vandq_s8(*(a1 + 200), xmmword_10138BC10);
  *(a1 + 200) = result;
  *(a1 + 224) = v12;
  *(a1 + 240) = v13;
  *(a1 + 256) = v14;
  return result;
}

uint64_t sub_100102320(uint64_t a1)
{
  v3 = *(*(sub_1000BC4D4(&qword_1016973A0, &unk_10138BF30) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_1000FD454(a1, v4);
}

unint64_t sub_1001023A0()
{
  result = qword_1016973A8;
  if (!qword_1016973A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016973A8);
  }

  return result;
}

unint64_t sub_1001023F4()
{
  result = qword_1016973B0;
  if (!qword_1016973B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016973B0);
  }

  return result;
}

uint64_t sub_100102448(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100102490@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  return sub_100E760A0(v1[2], (v1 + 3), v1[13], v1[14], v1[15], v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1001025B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100101278(a1, a2);
}

uint64_t sub_100102674(uint64_t a1, char a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_100102698, 0, 0);
}

uint64_t sub_100102698()
{
  v16 = v0;
  if (*(v0 + 32))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = qword_101694440;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_101696FF8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v0 + 16) = v2;
      type metadata accessor for Peripheral();
      sub_100102448(&qword_1016972D0, 255, &type metadata accessor for Peripheral);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;

      v12 = sub_1000136BC(v9, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Discovered peripheral: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    else
    {
    }

    v1 = *(v0 + 24);
  }

  v13 = *(v0 + 8);

  return v13(v1);
}

void sub_100102900()
{
  sub_100102974();
  if (v0 <= 0x3F)
  {
    sub_1001029E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100102974()
{
  if (!qword_101697470)
  {
    type metadata accessor for OwnedBeaconGroup(255);
    type metadata accessor for OwnedBeaconRecord();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101697470);
    }
  }
}

void sub_1001029E8()
{
  if (!qword_101697478)
  {
    v0 = type metadata accessor for StandaloneBeacon();
    if (!v1)
    {
      atomic_store(v0, &qword_101697478);
    }
  }
}

unint64_t sub_100102A30(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_100102A54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100102AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_100102B04(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_100102B40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000BC4D4(&unk_101698CA0, &unk_101393DB0);
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016975B8, &unk_10138C1B0);
  v2[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for OwnerSharingCircle() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for OwnerPeerTrust() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for MemberSharingCircle();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = *(*(sub_1000BC4D4(&unk_101698BC0, &qword_10138C440) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[16] = v13;
  v14 = *(v13 - 8);
  v2[17] = v14;
  v2[18] = *(v14 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100102D84, v1, 0);
}

uint64_t sub_100102D84()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  v6 = *(v3 + 16);
  v0[21] = v6;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[17];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Accept %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = *(v0[4] + 112);
  v0[23] = v19;

  return _swift_task_switch(sub_100102FE8, v19, 0);
}

uint64_t sub_100102FE8()
{
  v1 = *(v0 + 184);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  v4 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v3 = v0;
  v3[1] = sub_1001030D4;
  v5 = *(v0 + 184);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v5, v4);
}

uint64_t sub_1001030D4()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_1001031EC, v2, 0);
}

uint64_t sub_1001031EC()
{
  v1 = v0[4];
  v0[25] = v0[2];
  return _swift_task_switch(sub_100103210, v1, 0);
}

uint64_t sub_100103210()
{
  v1 = v0[25];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[3];
  *(swift_task_alloc() + 16) = v6;
  sub_1012BBB68(sub_10010EE70, v1, v2);

  sub_1000D2A70(v2, v3, &unk_101698BC0, &qword_10138C440);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v7 = v0[23];
    sub_10000B3A8(v0[14], &unk_101698BC0, &qword_10138C440);

    return _swift_task_switch(sub_100103630, v7, 0);
  }

  else
  {
    sub_100111DF4(v0[14], v0[13], type metadata accessor for MemberSharingCircle);
    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_1001033D4;
    v9 = v0[13];
    v10 = v0[4];

    return sub_100104BD0(v9);
  }
}

uint64_t sub_1001033D4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_10010492C;
  }

  else
  {
    v6 = sub_100103500;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100103500()
{
  v8 = v0;
  sub_100111D94(v0[13], type metadata accessor for MemberSharingCircle);
  v1 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v2 = *(v1 + 408);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1003CC318(*(v2 + 16), 0);
    v5 = sub_1003A97DC(&v7, v4 + 4, v3, v2);

    sub_1000128F8();
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[32] = v4;

  return _swift_task_switch(sub_100103DDC, 0, 0);
}

uint64_t sub_100103630()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  (*(v0 + 168))(v3, *(v0 + 24), v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 224) = v7;
  *(v7 + 16) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);
  v8 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_10010377C;
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_10010EEC0, v7, v11);
}

uint64_t sub_10010377C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_1001038A8, v3, 0);
}

uint64_t sub_1001038A8()
{
  v21 = v0;
  v1 = v0[6];
  v2 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
  if ((*(*(v2 - 1) + 48))(v1, 1, v2) != 1)
  {
LABEL_5:
    v8 = v0[9];
    v7 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    v11 = *(v2 + 12);
    v12 = *(v10 + 48);
    sub_100111DF4(v1, v9, type metadata accessor for OwnerPeerTrust);
    sub_100111DF4(v1 + v11, v9 + v12, type metadata accessor for OwnerSharingCircle);
    v13 = *(v10 + 48);
    sub_100111DF4(v9, v7, type metadata accessor for OwnerPeerTrust);
    sub_100111DF4(v9 + v13, v8, type metadata accessor for OwnerSharingCircle);
    v14 = swift_task_alloc();
    v0[30] = v14;
    *v14 = v0;
    v14[1] = sub_100103B64;
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[4];

    return sub_10010911C(v16, v15);
  }

  sub_10000B3A8(v1, &unk_101698CA0, &unk_101393DB0);
  sub_10010EED8();
  v1 = swift_allocError();
  *v3 = 0;
  swift_willThrow();
  v0[38] = v1;
  v4 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v5 = *(v4 + 408);
  v6 = *(v5 + 16);
  if (v6)
  {
    v2 = sub_1003CC318(*(v5 + 16), 0);
    v19 = sub_1003A97DC(&v20, v2 + 4, v6, v5);

    sub_1000128F8();
    if (v19 != v6)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[39] = v2;
  swift_errorRetain();

  return _swift_task_switch(sub_100104288, 0, 0);
}

uint64_t sub_100103B64()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_100104A70;
  }

  else
  {
    v6 = sub_100103C90;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100103C90()
{
  v9 = v0;
  v1 = v0[10];
  sub_100111D94(v0[9], type metadata accessor for OwnerSharingCircle);
  sub_100111D94(v1, type metadata accessor for OwnerPeerTrust);
  v2 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v3 = *(v2 + 408);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1003CC318(*(v3 + 16), 0);
    v6 = sub_1003A97DC(&v8, v5 + 4, v4, v3);

    sub_1000128F8();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[32] = v5;

  return _swift_task_switch(sub_100103DDC, 0, 0);
}

uint64_t sub_100103DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[32];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[33] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = v3[32];
    v11 = v3[4];

    v5 = sub_100103F34;
    a2 = v11;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[33] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[32];
  v3[34] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[35] = v7;
  type metadata accessor for AnalyticsPublisher();
  v3[36] = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = swift_task_alloc();
  v3[37] = v8;
  *v8 = v3;
  v8[1] = sub_100104028;

  return sub_101163F78(v7);
}

uint64_t sub_100103F34()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[4];
  v11 = *(v10 + 408);
  *(v10 + 408) = _swiftEmptyDictionarySingleton;

  v12 = v0[1];

  return v12();
}

uint64_t sub_100104028()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return _swift_task_switch(sub_100104140, 0, 0);
}

uint64_t sub_100104140()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];

  if (v2 + 1 == v3)
  {
    v4 = v0[32];
    v5 = v0[4];

    return _swift_task_switch(sub_100103F34, v5, 0);
  }

  else
  {
    v6 = v0[34] + 1;
    v0[34] = v6;
    v7 = v0[32];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v0[35] = v8;
    type metadata accessor for AnalyticsPublisher();
    v0[36] = swift_allocObject();
    swift_defaultActor_initialize();
    v9 = swift_task_alloc();
    v0[37] = v9;
    *v9 = v0;
    v9[1] = sub_100104028;

    return sub_101163F78(v8);
  }
}

uint64_t sub_100104288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[39];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[40] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v12 = v3[38];
    v13 = v3[39];
    v14 = v3[4];

    v5 = sub_1001043EC;
    a2 = v14;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[40] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[39];
  v3[41] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[42] = v7;
  v8 = v3[38];
  swift_errorRetain();
  v9 = swift_task_alloc();
  v3[43] = v9;
  *v9 = v3;
  v9[1] = sub_1001044EC;
  v10 = v3[38];

  return (sub_10116BDD0)(v7, v10);
}

uint64_t sub_1001043EC()
{
  v1 = v0[38];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v14 = v0[8];
  v15 = v0[6];
  v9 = v0[4];
  swift_willThrow();
  v10 = *(v9 + 408);
  *(v9 + 408) = _swiftEmptyDictionarySingleton;

  v11 = v0[1];
  v12 = v0[38];

  return v11();
}

uint64_t sub_1001044EC()
{
  v2 = *(*v1 + 344);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100111F48;
  }

  else
  {
    v3 = sub_100104604;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100104604()
{
  v1 = v0[38];

  type metadata accessor for AnalyticsPublisher();
  v0[44] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_1001046C0;
  v3 = v0[42];

  return sub_101163F78(v3);
}

uint64_t sub_1001046C0()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return _swift_task_switch(sub_1001047D8, 0, 0);
}

uint64_t sub_1001047D8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];

  if (v2 + 1 == v3)
  {
    v4 = v0[38];
    v5 = v0[39];
    v6 = v0[4];

    return _swift_task_switch(sub_1001043EC, v6, 0);
  }

  else
  {
    v7 = v0[41] + 1;
    v0[41] = v7;
    v8 = v0[39];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    v0[42] = v9;
    v10 = v0[38];
    swift_errorRetain();
    v11 = swift_task_alloc();
    v0[43] = v11;
    *v11 = v0;
    v11[1] = sub_1001044EC;
    v12 = v0[38];

    return (sub_10116BDD0)(v9, v12);
  }
}

uint64_t sub_10010492C()
{
  v8 = v0;
  sub_100111D94(v0[13], type metadata accessor for MemberSharingCircle);
  v0[38] = v0[27];
  v1 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v2 = *(v1 + 408);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1003CC318(*(v2 + 16), 0);
    v6 = sub_1003A97DC(&v7, v4 + 4, v3, v2);

    sub_1000128F8();
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[39] = v4;
  swift_errorRetain();

  return _swift_task_switch(sub_100104288, 0, 0);
}

uint64_t sub_100104A70()
{
  v9 = v0;
  v1 = v0[10];
  sub_100111D94(v0[9], type metadata accessor for OwnerSharingCircle);
  sub_100111D94(v1, type metadata accessor for OwnerPeerTrust);
  v0[38] = v0[31];
  v2 = v0[4];
  sub_10000B3A8(v0[15], &unk_101698BC0, &qword_10138C440);
  v3 = *(v2 + 408);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1003CC318(*(v3 + 16), 0);
    v7 = sub_1003A97DC(&v8, v5 + 4, v4, v3);

    sub_1000128F8();
    if (v7 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[39] = v5;
  swift_errorRetain();

  return _swift_task_switch(sub_100104288, 0, 0);
}

uint64_t sub_100104BD0(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v2[50] = v3;
  v4 = *(v3 - 8);
  v2[51] = v4;
  v5 = *(v4 + 64) + 15;
  v2[52] = swift_task_alloc();
  v6 = type metadata accessor for MemberPeerTrust();
  v2[53] = v6;
  v7 = *(v6 - 8);
  v2[54] = v7;
  v8 = *(v7 + 64) + 15;
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v2[58] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[61] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[65] = v13;
  v14 = *(v13 - 8);
  v2[66] = v14;
  v2[67] = *(v14 + 64);
  v2[68] = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[69] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v17 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v2[72] = swift_task_alloc();
  v18 = type metadata accessor for MemberSharingCircle();
  v2[73] = v18;
  v19 = *(v18 - 8);
  v2[74] = v19;
  v20 = *(v19 + 64) + 15;
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v21 = swift_task_alloc();
  v2[79] = v21;
  *v21 = v2;
  v21[1] = sub_100104F30;

  return sub_10010C4E4();
}

uint64_t sub_100104F30()
{
  v2 = *(*v1 + 632);
  v3 = *v1;
  v3[80] = v0;

  if (v0)
  {
    v4 = v3[78];
    v5 = v3[77];
    v6 = v3[76];
    v7 = v3[75];
    v8 = v3[72];
    v9 = v3[71];
    v10 = v3[70];
    v11 = v3[68];
    v16 = v3[64];
    v17 = v3[63];
    v18 = v3[62];
    v19 = v3[60];
    v20 = v3[59];
    v21 = v3[57];
    v22 = v3[56];
    v23 = v3[55];
    v12 = v3[52];

    v13 = v3[1];

    return v13();
  }

  else
  {
    v15 = v3[49];

    return _swift_task_switch(sub_100105160, v15, 0);
  }
}

uint64_t sub_100105160()
{
  v54 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[78];
  v2 = v0[48];
  v3 = type metadata accessor for Logger();
  v0[81] = sub_1000076D4(v3, qword_10177A560);
  sub_100111D2C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[78];
  if (v6)
  {
    v8 = v0[73];
    v9 = v0[65];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53[0] = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = *(v8 + 20);
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100111D94(v7, type metadata accessor for MemberSharingCircle);
    v16 = sub_1000136BC(v13, v15, v53);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Data update on share accept. Update %{private,mask.hash}s", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100111D94(v7, type metadata accessor for MemberSharingCircle);
  }

  v17 = v0[80];
  v18 = v0[72];
  v19 = v0[48];
  *(swift_task_alloc() + 16) = v19;
  sub_100EC0C48(sub_1001118A8, v18);
  if (v17)
  {

    v20 = v0[81];
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v53[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v26 = v0[35];
      v25 = v0[36];
      v27 = v0[37];
      v28 = Error.localizedDescription.getter();
      v30 = sub_1000136BC(v28, v29, v53);

      *(v23 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failure on share accept, iCloud data update: %s", v23, 0xCu);
      sub_100007BAC(v24);
    }

    sub_1001118C8();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();

    v32 = v0[78];
    v33 = v0[77];
    v34 = v0[76];
    v35 = v0[75];
    v36 = v0[72];
    v37 = v0[71];
    v38 = v0[70];
    v39 = v0[68];
    v40 = v0[63];
    v41 = v0[64];
    v46 = v0[62];
    v47 = v0[60];
    v48 = v0[59];
    v49 = v0[57];
    v50 = v0[56];
    v51 = v0[55];
    v52 = v0[52];

    v42 = v0[1];

    return v42();
  }

  else
  {
    v44 = v0[49];

    v45 = *(v44 + 112);
    v0[82] = v45;

    return _swift_task_switch(sub_100105658, v45, 0);
  }
}

uint64_t sub_100105680()
{
  v1 = v0[83];
  v2 = v0[72];
  v3 = swift_task_alloc();
  v0[84] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[85] = v5;
  *v5 = v0;
  v5[1] = sub_100105778;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_100105778()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v7 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v4 = sub_100105D98;
  }

  else
  {
    v5 = *(v2 + 672);

    v4 = sub_100105894;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001058B0()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 584);
  sub_10000B3A8(*(v0 + 576), &qword_1016975C8, &qword_10138C1F0);
  *(v0 + 100) = *(v2 + 20);

  return _swift_task_switch(sub_100105938, v1, 0);
}

uint64_t sub_100105938()
{
  v1 = *(v0 + 100);
  v2 = *(v0 + 656);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 384);
  v8 = *(v5 + 16);
  *(v0 + 696) = v8;
  *(v0 + 704) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7 + v1, v6);
  v9 = *(v5 + 80);
  *(v0 + 188) = v9;
  v10 = (v9 + 24) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 712) = v11;
  *(v11 + 16) = v2;
  v12 = *(v5 + 32);
  *(v0 + 720) = v12;
  *(v0 + 728) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v11 + v10, v3, v6);
  v13 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v14 = swift_task_alloc();
  *(v0 + 736) = v14;
  *v14 = v0;
  v14[1] = sub_100105AD4;
  v15 = *(v0 + 568);
  v16 = *(v0 + 552);

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_100111924, v11, v16);
}

uint64_t sub_100105AD4()
{
  v1 = *(*v0 + 736);
  v2 = *(*v0 + 712);
  v3 = *(*v0 + 392);
  v5 = *v0;

  return _swift_task_switch(sub_100105C00, v3, 0);
}

uint64_t sub_100105C00()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 560);
  sub_1000D2A70(*(v0 + 568), v3, &unk_101698BC0, &qword_10138C440);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 560);
    sub_10000B3A8(*(v0 + 568), &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v4, &unk_101698BC0, &qword_10138C440);
    v5 = *(v0 + 656);
    *(v0 + 816) = *(*(v0 + 584) + 24);

    return _swift_task_switch(sub_100106428, v5, 0);
  }

  else
  {
    v6 = *(v0 + 392);
    sub_100111DF4(*(v0 + 560), *(v0 + 616), type metadata accessor for MemberSharingCircle);
    v7 = *sub_1000035D0((v6 + 280), *(v6 + 304));
    v8 = swift_task_alloc();
    *(v0 + 744) = v8;
    *v8 = v0;
    v8[1] = sub_10010608C;
    v9 = *(v0 + 616);

    return sub_1007C498C(v9);
  }
}

uint64_t sub_100105D98()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 392);

  return _swift_task_switch(sub_100105E04, v2, 0);
}

uint64_t sub_100105E04()
{
  v34 = v0;
  sub_10000B3A8(v0[72], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[86];
  v2 = v0[81];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[35];
    v7 = v0[36];
    v9 = v0[37];
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000136BC(v10, v11, &v33);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share accept, iCloud data update: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  sub_1001118C8();
  swift_allocError();
  *v13 = 1;
  swift_willThrow();

  v14 = v0[78];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[75];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[68];
  v22 = v0[63];
  v23 = v0[64];
  v26 = v0[62];
  v27 = v0[60];
  v28 = v0[59];
  v29 = v0[57];
  v30 = v0[56];
  v31 = v0[55];
  v32 = v0[52];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10010608C()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;
  *(*v1 + 752) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_10010625C;
  }

  else
  {
    v6 = sub_1001061B8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001061B8()
{
  v1 = *(v0 + 568);
  sub_100111D94(*(v0 + 616), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);
  v2 = *(v0 + 656);
  *(v0 + 816) = *(*(v0 + 584) + 24);

  return _swift_task_switch(sub_100106428, v2, 0);
}

uint64_t sub_10010625C()
{
  v19 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 648);
  v3 = *(v0 + 568);
  sub_100111D94(*(v0 + 616), type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v3, &unk_101698BC0, &qword_10138C440);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 752);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 328);
    v9 = *(v0 + 336);
    v11 = *(v0 + 344);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on share accept, sharing keys download failure: %s", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {
    v15 = *(v0 + 752);
  }

  v16 = *(v0 + 656);
  *(v0 + 816) = *(*(v0 + 584) + 24);

  return _swift_task_switch(sub_100106428, v16, 0);
}

uint64_t sub_100106428()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 704);
  v4 = *(v0 + 656);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 520);
  v8 = (*(v0 + 188) + 24) & ~*(v0 + 188);
  (*(v0 + 696))(v5, *(v0 + 384) + *(v0 + 816), v7);
  v9 = swift_allocObject();
  *(v0 + 760) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 768) = v11;
  *v11 = v0;
  v11[1] = sub_10010658C;
  v12 = *(v0 + 512);
  v13 = *(v0 + 488);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10011193C, v9, v13);
}

uint64_t sub_10010658C()
{
  v1 = *v0;
  v2 = *(*v0 + 768);
  v3 = *(*v0 + 760);
  v4 = *(*v0 + 656);
  v5 = *(*v0 + 584);
  v7 = *v0;

  *(v1 + 820) = *(v5 + 32);

  return _swift_task_switch(sub_1001066DC, v4, 0);
}

uint64_t sub_1001066DC()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 704);
  v4 = *(v0 + 656);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = *(v0 + 520);
  v8 = (*(v0 + 188) + 24) & ~*(v0 + 188);
  (*(v0 + 696))(v5, *(v0 + 384) + *(v0 + 820), v7);
  v9 = swift_allocObject();
  *(v0 + 776) = v9;
  *(v9 + 16) = v4;
  v2(v9 + v8, v5, v7);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  *(v0 + 784) = v11;
  *v11 = v0;
  v11[1] = sub_100106840;
  v12 = *(v0 + 480);
  v13 = *(v0 + 464);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100111954, v9, v13);
}

uint64_t sub_100106840()
{
  v1 = *(*v0 + 784);
  v2 = *(*v0 + 776);
  v3 = *(*v0 + 392);
  v5 = *v0;

  return _swift_task_switch(sub_10010696C, v3, 0);
}

uint64_t sub_10010696C()
{
  v116 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  sub_1000D2A70(*(v0 + 480), v1, &qword_101698C10, &unk_10138C1E0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 648);
    v5 = *(v0 + 608);
    v6 = *(v0 + 384);
    sub_10000B3A8(*(v0 + 472), &qword_101698C10, &unk_10138C1E0);
    sub_100111D2C(v6, v5, type metadata accessor for MemberSharingCircle);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 608);
    if (v9)
    {
      v11 = *(v0 + 584);
      v12 = *(v0 + 520);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v115[0] = v14;
      *v13 = 136315138;
      v15 = *(v11 + 32);
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_100111D94(v10, type metadata accessor for MemberSharingCircle);
      v19 = sub_1000136BC(v16, v18, v115);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "No peerTrustIdentifier for %s", v13, 0xCu);
      sub_100007BAC(v14);
    }

    else
    {

      sub_100111D94(v10, type metadata accessor for MemberSharingCircle);
    }

    sub_10010EED8();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    v34 = *(v0 + 648);
    sub_10000B3A8(*(v0 + 480), &qword_101698C10, &unk_10138C1E0);
    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v115[0] = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v40 = *(v0 + 304);
      v39 = *(v0 + 312);
      v41 = *(v0 + 320);
      v42 = Error.localizedDescription.getter();
      v44 = sub_1000136BC(v42, v43, v115);

      *(v37 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failure on share accept, can't send acceptance message: %s", v37, 0xCu);
      sub_100007BAC(v38);
    }

    else
    {
    }

    v45 = *(v0 + 496);
    v46 = *(v0 + 400);
    v47 = *(v0 + 408);
    sub_1000D2A70(*(v0 + 512), v45, &unk_101698C30, &unk_101392630);
    if ((*(v47 + 48))(v45, 1, v46) == 1)
    {
      v48 = *(v0 + 648);
      v49 = *(v0 + 600);
      v50 = *(v0 + 384);
      sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
      sub_100111D2C(v50, v49, type metadata accessor for MemberSharingCircle);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      v53 = os_log_type_enabled(v51, v52);
      v54 = *(v0 + 600);
      if (v53)
      {
        v55 = *(v0 + 584);
        v56 = *(v0 + 520);
        v57 = *(v0 + 512);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v115[0] = v59;
        *v58 = 141558275;
        *(v58 + 4) = 1752392040;
        *(v58 + 12) = 2081;
        v60 = *(v55 + 24);
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        sub_100111D94(v54, type metadata accessor for MemberSharingCircle);
        v64 = sub_1000136BC(v61, v63, v115);

        *(v58 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v58, 0x16u);
        sub_100007BAC(v59);

        v65 = v57;
      }

      else
      {
        v71 = *(v0 + 512);

        sub_100111D94(v54, type metadata accessor for MemberSharingCircle);
        v65 = v71;
      }
    }

    else
    {
      sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
      v66 = [objc_opt_self() mainBundle];
      v67 = [v66 bundleIdentifier];

      if (v67)
      {
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_10138C0D0;
      v73 = SPBeaconTypeDurian;
      v74 = SPBeaconTypeAccessory;
      *(v72 + 32) = SPBeaconTypeDurian;
      *(v72 + 40) = v74;
      v75 = SPBeaconTypeHele;
      v76 = SPBeaconTypeSelfBeaconing;
      *(v72 + 48) = SPBeaconTypeHele;
      *(v72 + 56) = v76;
      v77 = SPBeaconTypeVirtualMeDevice;
      *(v72 + 64) = SPBeaconTypeVirtualMeDevice;
      v78 = qword_101694940;
      v79 = v73;
      v80 = v74;
      v81 = v75;
      v82 = v76;
      v83 = v77;
      if (v78 != -1)
      {
        swift_once();
      }

      v84 = *(v0 + 512);
      v85 = *(v0 + 416);
      v87 = *(v0 + 392);
      v86 = *(v0 + 400);
      v88 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v89 = sub_1010741C0(*(v0 + 360));

      My = type metadata accessor for Feature.FindMy();
      *(v0 + 264) = My;
      *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v91 = sub_1000280DC((v0 + 240));
      (*(*(My - 8) + 104))(v91, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 240));
      *(v0 + 104) = v89;
      *(v0 + 112) = 0;
      *(v0 + 120) = &off_101607870;
      *(v0 + 128) = 0;
      *(v0 + 136) = v68;
      *(v0 + 144) = v70;
      *(v0 + 152) = v72;
      *(v0 + 160) = My & 1;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 1;
      v92 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v92;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v93 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v93;
      v94 = sub_1000035D0((v87 + 368), *(v87 + 392));
      sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_101385D80;
      *(v95 + 56) = v86;
      *(v95 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
      v96 = sub_1000280DC((v95 + 32));
      sub_100111D2C(v85, v96, type metadata accessor for SharedBeaconRecord);
      sub_10010EF2C(v95, v0 + 16, *v94);

      sub_1001119F4(v0 + 104);
      sub_100111D94(v85, type metadata accessor for SharedBeaconRecord);
      v65 = v84;
    }

    sub_10000B3A8(v65, &unk_101698C30, &unk_101392630);
    v97 = *(v0 + 624);
    v98 = *(v0 + 616);
    v99 = *(v0 + 608);
    v100 = *(v0 + 600);
    v101 = *(v0 + 576);
    v102 = *(v0 + 568);
    v103 = *(v0 + 560);
    v104 = *(v0 + 544);
    v106 = *(v0 + 504);
    v105 = *(v0 + 512);
    v108 = *(v0 + 496);
    v109 = *(v0 + 480);
    v110 = *(v0 + 472);
    v111 = *(v0 + 456);
    v112 = *(v0 + 448);
    v113 = *(v0 + 440);
    v114 = *(v0 + 416);

    v107 = *(v0 + 8);

    return v107();
  }

  else
  {
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v22 = *(v0 + 584);
    v23 = *(v0 + 520);
    v24 = *(v0 + 456);
    v25 = *(v0 + 424);
    v27 = *(v0 + 384);
    v26 = *(v0 + 392);
    sub_100111DF4(*(v0 + 472), v24, type metadata accessor for MemberPeerTrust);
    v28 = *(v22 + 28);
    *(v0 + 216) = type metadata accessor for CircleTrustAcceptEnvelopeV1(0);
    *(v0 + 224) = sub_100111C38(&qword_1016975E0, type metadata accessor for CircleTrustAcceptEnvelopeV1);
    *(v0 + 232) = sub_100111C38(&qword_1016975E8, type metadata accessor for CircleTrustAcceptEnvelopeV1);
    v29 = sub_1000280DC((v0 + 192));
    v21(v29, v27 + v28, v23);
    v30 = *(v25 + 28);
    v31 = swift_task_alloc();
    *(v0 + 792) = v31;
    *v31 = v0;
    v31[1] = sub_1001074FC;

    return sub_10129A758(v26 + 240, v0 + 192, 3, v24 + v30);
  }
}

uint64_t sub_1001074FC()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v8 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v4 = *(v2 + 392);
    v5 = sub_10010808C;
  }

  else
  {
    v6 = *(v2 + 392);
    sub_100007BAC((v2 + 192));
    v5 = sub_100107624;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100107624()
{
  v105 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  sub_100111D2C(v2, *(v0 + 448), type metadata accessor for MemberPeerTrust);
  sub_100111D2C(v2, v3, type metadata accessor for MemberPeerTrust);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 520);
    v7 = *(v0 + 448);
    v102 = *(v0 + 440);
    v8 = *(v0 + 424);
    v9 = swift_slowAlloc();
    v104[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = *(v8 + 20);
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_100111D94(v7, type metadata accessor for MemberPeerTrust);
    v14 = sub_1000136BC(v11, v13, v104);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v16 = *(v8 + 28);
    v17 = sub_100988F40(v15);
    v19 = v18;
    sub_100111D94(v102, type metadata accessor for MemberPeerTrust);
    v20 = sub_1000136BC(v17, v19, v104);

    *(v9 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Accepting share from peerTrustIdentifier: %s,\ncommunicationsIdentifier: %s.", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = *(v0 + 440);
    v21 = *(v0 + 448);

    sub_100111D94(v22, type metadata accessor for MemberPeerTrust);
    sub_100111D94(v21, type metadata accessor for MemberPeerTrust);
  }

  v23 = *(v0 + 504);
  v24 = *(v0 + 400);
  v25 = *(v0 + 408);
  sub_1000D2A70(*(v0 + 512), v23, &unk_101698C30, &unk_101392630);
  v26 = (*(v25 + 48))(v23, 1, v24);
  v27 = *(v0 + 504);
  if (v26 == 1)
  {
    v28 = *(v0 + 480);
    sub_100111D94(*(v0 + 456), type metadata accessor for MemberPeerTrust);
    sub_10000B3A8(v28, &qword_101698C10, &unk_10138C1E0);
    sub_10000B3A8(v27, &unk_101698C30, &unk_101392630);
    v29 = *(v0 + 800);
    v30 = *(v0 + 496);
    v31 = *(v0 + 400);
    v32 = *(v0 + 408);
    sub_1000D2A70(*(v0 + 512), v30, &unk_101698C30, &unk_101392630);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      v33 = *(v0 + 648);
      v34 = *(v0 + 600);
      v35 = *(v0 + 384);
      sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
      sub_100111D2C(v35, v34, type metadata accessor for MemberSharingCircle);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 600);
      if (v38)
      {
        v40 = *(v0 + 584);
        v41 = *(v0 + 520);
        v42 = *(v0 + 512);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v104[0] = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v45 = *(v40 + 24);
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        sub_100111D94(v39, type metadata accessor for MemberSharingCircle);
        v49 = sub_1000136BC(v46, v48, v104);

        *(v43 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v36, v37, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v43, 0x16u);
        sub_100007BAC(v44);

        v50 = v42;
      }

      else
      {
        v59 = *(v0 + 512);

        sub_100111D94(v39, type metadata accessor for MemberSharingCircle);
        v50 = v59;
      }
    }

    else
    {
      sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
      v54 = [objc_opt_self() mainBundle];
      v55 = [v54 bundleIdentifier];

      if (v55)
      {
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0;
      }

      sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_10138C0D0;
      v61 = SPBeaconTypeDurian;
      v62 = SPBeaconTypeAccessory;
      *(v60 + 32) = SPBeaconTypeDurian;
      *(v60 + 40) = v62;
      v63 = SPBeaconTypeHele;
      v64 = SPBeaconTypeSelfBeaconing;
      *(v60 + 48) = SPBeaconTypeHele;
      *(v60 + 56) = v64;
      v65 = SPBeaconTypeVirtualMeDevice;
      *(v60 + 64) = SPBeaconTypeVirtualMeDevice;
      v66 = qword_101694940;
      v67 = v61;
      v68 = v62;
      v69 = v63;
      v70 = v64;
      v71 = v65;
      if (v66 != -1)
      {
        swift_once();
      }

      v72 = *(v0 + 512);
      v73 = *(v0 + 416);
      v75 = *(v0 + 392);
      v74 = *(v0 + 400);
      v76 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      v77 = sub_1010741C0(*(v0 + 360));

      My = type metadata accessor for Feature.FindMy();
      *(v0 + 264) = My;
      *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
      v79 = sub_1000280DC((v0 + 240));
      (*(*(My - 8) + 104))(v79, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100007BAC((v0 + 240));
      *(v0 + 104) = v77;
      *(v0 + 112) = 0;
      *(v0 + 120) = &off_101607870;
      *(v0 + 128) = 0;
      *(v0 + 136) = v56;
      *(v0 + 144) = v58;
      *(v0 + 152) = v60;
      *(v0 + 160) = My & 1;
      *(v0 + 168) = 0;
      *(v0 + 176) = 0;
      *(v0 + 184) = 1;
      v80 = *(v0 + 152);
      *(v0 + 48) = *(v0 + 136);
      *(v0 + 64) = v80;
      *(v0 + 80) = *(v0 + 168);
      *(v0 + 96) = *(v0 + 184);
      v81 = *(v0 + 120);
      *(v0 + 16) = *(v0 + 104);
      *(v0 + 32) = v81;
      v82 = sub_1000035D0((v75 + 368), *(v75 + 392));
      sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_101385D80;
      *(v83 + 56) = v74;
      *(v83 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
      v84 = sub_1000280DC((v83 + 32));
      sub_100111D2C(v73, v84, type metadata accessor for SharedBeaconRecord);
      sub_10010EF2C(v83, v0 + 16, *v82);

      sub_1001119F4(v0 + 104);
      sub_100111D94(v73, type metadata accessor for SharedBeaconRecord);
      v50 = v72;
    }

    sub_10000B3A8(v50, &unk_101698C30, &unk_101392630);
    v85 = *(v0 + 624);
    v86 = *(v0 + 616);
    v87 = *(v0 + 608);
    v88 = *(v0 + 600);
    v89 = *(v0 + 576);
    v90 = *(v0 + 568);
    v91 = *(v0 + 560);
    v92 = *(v0 + 544);
    v94 = *(v0 + 504);
    v93 = *(v0 + 512);
    v96 = *(v0 + 496);
    v97 = *(v0 + 480);
    v98 = *(v0 + 472);
    v99 = *(v0 + 456);
    v100 = *(v0 + 448);
    v101 = *(v0 + 440);
    v103 = *(v0 + 416);

    v95 = *(v0 + 8);

    return v95();
  }

  else
  {
    v51 = *(v27 + *(*(v0 + 400) + 64));
    sub_100111D94(*(v0 + 504), type metadata accessor for SharedBeaconRecord);
    v52 = swift_task_alloc();
    *(v0 + 808) = v52;
    *v52 = v0;
    v52[1] = sub_1001088D4;

    return sub_100EC7D34(1, v51 == 4);
  }
}

uint64_t sub_10010808C()
{
  v86 = v0;
  v1 = *(v0 + 456);
  sub_100007BAC((v0 + 192));
  sub_100111D94(v1, type metadata accessor for MemberPeerTrust);
  v2 = *(v0 + 800);
  v3 = *(v0 + 648);
  sub_10000B3A8(*(v0 + 480), &qword_101698C10, &unk_10138C1E0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v85[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 320);
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, v85);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on share accept, can't send acceptance message: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v14 = *(v0 + 496);
  v15 = *(v0 + 400);
  v16 = *(v0 + 408);
  sub_1000D2A70(*(v0 + 512), v14, &unk_101698C30, &unk_101392630);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v0 + 648);
    v18 = *(v0 + 600);
    v19 = *(v0 + 384);
    sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
    sub_100111D2C(v19, v18, type metadata accessor for MemberSharingCircle);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 600);
    if (v22)
    {
      v24 = *(v0 + 584);
      v25 = *(v0 + 520);
      v26 = *(v0 + 512);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v85[0] = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      v29 = *(v24 + 24);
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100111D94(v23, type metadata accessor for MemberSharingCircle);
      v33 = sub_1000136BC(v30, v32, v85);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v27, 0x16u);
      sub_100007BAC(v28);

      v34 = v26;
    }

    else
    {
      v40 = *(v0 + 512);

      sub_100111D94(v23, type metadata accessor for MemberSharingCircle);
      v34 = v40;
    }
  }

  else
  {
    sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
    v35 = [objc_opt_self() mainBundle];
    v36 = [v35 bundleIdentifier];

    if (v36)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10138C0D0;
    v42 = SPBeaconTypeDurian;
    v43 = SPBeaconTypeAccessory;
    *(v41 + 32) = SPBeaconTypeDurian;
    *(v41 + 40) = v43;
    v44 = SPBeaconTypeHele;
    v45 = SPBeaconTypeSelfBeaconing;
    *(v41 + 48) = SPBeaconTypeHele;
    *(v41 + 56) = v45;
    v46 = SPBeaconTypeVirtualMeDevice;
    *(v41 + 64) = SPBeaconTypeVirtualMeDevice;
    v47 = qword_101694940;
    v48 = v42;
    v49 = v43;
    v50 = v44;
    v51 = v45;
    v52 = v46;
    if (v47 != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 512);
    v54 = *(v0 + 416);
    v56 = *(v0 + 392);
    v55 = *(v0 + 400);
    v57 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v58 = sub_1010741C0(*(v0 + 360));

    My = type metadata accessor for Feature.FindMy();
    *(v0 + 264) = My;
    *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v60 = sub_1000280DC((v0 + 240));
    (*(*(My - 8) + 104))(v60, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 240));
    *(v0 + 104) = v58;
    *(v0 + 112) = 0;
    *(v0 + 120) = &off_101607870;
    *(v0 + 128) = 0;
    *(v0 + 136) = v37;
    *(v0 + 144) = v39;
    *(v0 + 152) = v41;
    *(v0 + 160) = My & 1;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    v61 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v61;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v62 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v62;
    v63 = sub_1000035D0((v56 + 368), *(v56 + 392));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_101385D80;
    *(v64 + 56) = v55;
    *(v64 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
    v65 = sub_1000280DC((v64 + 32));
    sub_100111D2C(v54, v65, type metadata accessor for SharedBeaconRecord);
    sub_10010EF2C(v64, v0 + 16, *v63);

    sub_1001119F4(v0 + 104);
    sub_100111D94(v54, type metadata accessor for SharedBeaconRecord);
    v34 = v53;
  }

  sub_10000B3A8(v34, &unk_101698C30, &unk_101392630);
  v66 = *(v0 + 624);
  v67 = *(v0 + 616);
  v68 = *(v0 + 608);
  v69 = *(v0 + 600);
  v70 = *(v0 + 576);
  v71 = *(v0 + 568);
  v72 = *(v0 + 560);
  v73 = *(v0 + 544);
  v75 = *(v0 + 504);
  v74 = *(v0 + 512);
  v78 = *(v0 + 496);
  v79 = *(v0 + 480);
  v80 = *(v0 + 472);
  v81 = *(v0 + 456);
  v82 = *(v0 + 448);
  v83 = *(v0 + 440);
  v84 = *(v0 + 416);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1001088D4()
{
  v1 = *(*v0 + 808);
  v2 = *(*v0 + 392);
  v4 = *v0;

  return _swift_task_switch(sub_1001089E4, v2, 0);
}

uint64_t sub_1001089E4()
{
  v75 = v0;
  v1 = *(v0 + 480);
  sub_100111D94(*(v0 + 456), type metadata accessor for MemberPeerTrust);
  sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
  v2 = *(v0 + 800);
  v3 = *(v0 + 496);
  v4 = *(v0 + 400);
  v5 = *(v0 + 408);
  sub_1000D2A70(*(v0 + 512), v3, &unk_101698C30, &unk_101392630);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = *(v0 + 648);
    v7 = *(v0 + 600);
    v8 = *(v0 + 384);
    sub_10000B3A8(*(v0 + 496), &unk_101698C30, &unk_101392630);
    sub_100111D2C(v8, v7, type metadata accessor for MemberSharingCircle);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 600);
    if (v11)
    {
      v13 = *(v0 + 584);
      v14 = *(v0 + 520);
      v15 = *(v0 + 512);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v74 = v17;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      v18 = *(v13 + 24);
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_100111D94(v12, type metadata accessor for MemberSharingCircle);
      v22 = sub_1000136BC(v19, v21, &v74);

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failure on share accept, can't fetch locations, no shared beacon record for: %{private,mask.hash}s", v16, 0x16u);
      sub_100007BAC(v17);

      v23 = v15;
    }

    else
    {
      v29 = *(v0 + 512);

      sub_100111D94(v12, type metadata accessor for MemberSharingCircle);
      v23 = v29;
    }
  }

  else
  {
    sub_100111DF4(*(v0 + 496), *(v0 + 416), type metadata accessor for SharedBeaconRecord);
    v24 = [objc_opt_self() mainBundle];
    v25 = [v24 bundleIdentifier];

    if (v25)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10138C0D0;
    v31 = SPBeaconTypeDurian;
    v32 = SPBeaconTypeAccessory;
    *(v30 + 32) = SPBeaconTypeDurian;
    *(v30 + 40) = v32;
    v33 = SPBeaconTypeHele;
    v34 = SPBeaconTypeSelfBeaconing;
    *(v30 + 48) = SPBeaconTypeHele;
    *(v30 + 56) = v34;
    v35 = SPBeaconTypeVirtualMeDevice;
    *(v30 + 64) = SPBeaconTypeVirtualMeDevice;
    v36 = qword_101694940;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    if (v36 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 512);
    v43 = *(v0 + 416);
    v45 = *(v0 + 392);
    v44 = *(v0 + 400);
    v46 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v47 = sub_1010741C0(*(v0 + 360));

    My = type metadata accessor for Feature.FindMy();
    *(v0 + 264) = My;
    *(v0 + 272) = sub_100111C38(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v49 = sub_1000280DC((v0 + 240));
    (*(*(My - 8) + 104))(v49, enum case for Feature.FindMy.networkScalingImprovements(_:), My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100007BAC((v0 + 240));
    *(v0 + 104) = v47;
    *(v0 + 112) = 0;
    *(v0 + 120) = &off_101607870;
    *(v0 + 128) = 0;
    *(v0 + 136) = v26;
    *(v0 + 144) = v28;
    *(v0 + 152) = v30;
    *(v0 + 160) = My & 1;
    *(v0 + 168) = 0;
    *(v0 + 176) = 0;
    *(v0 + 184) = 1;
    v50 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v50;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v51 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v51;
    v52 = sub_1000035D0((v45 + 368), *(v45 + 392));
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    *(v53 + 56) = v44;
    *(v53 + 64) = sub_100111C38(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
    v54 = sub_1000280DC((v53 + 32));
    sub_100111D2C(v43, v54, type metadata accessor for SharedBeaconRecord);
    sub_10010EF2C(v53, v0 + 16, *v52);

    sub_1001119F4(v0 + 104);
    sub_100111D94(v43, type metadata accessor for SharedBeaconRecord);
    v23 = v42;
  }

  sub_10000B3A8(v23, &unk_101698C30, &unk_101392630);
  v55 = *(v0 + 624);
  v56 = *(v0 + 616);
  v57 = *(v0 + 608);
  v58 = *(v0 + 600);
  v59 = *(v0 + 576);
  v60 = *(v0 + 568);
  v61 = *(v0 + 560);
  v62 = *(v0 + 544);
  v64 = *(v0 + 504);
  v63 = *(v0 + 512);
  v67 = *(v0 + 496);
  v68 = *(v0 + 480);
  v69 = *(v0 + 472);
  v70 = *(v0 + 456);
  v71 = *(v0 + 448);
  v72 = *(v0 + 440);
  v73 = *(v0 + 416);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_10010911C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle();
  v3[31] = v5;
  v6 = *(v5 - 8);
  v3[32] = v6;
  v7 = *(v6 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v8 = type metadata accessor for OwnerPeerTrust();
  v3[36] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_10010926C, v2, 0);
}

uint64_t sub_10010926C()
{
  v28 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[28];
  v4 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v4, qword_10177A560);
  sub_100111D2C(v3, v2, type metadata accessor for OwnerPeerTrust);
  sub_100111D2C(v3, v1, type metadata accessor for OwnerPeerTrust);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  v9 = v0[38];
  if (v7)
  {
    v10 = v0[36];
    v26 = v10;
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v11 = 136446723;
    v12 = *(v10 + 20);
    type metadata accessor for UUID();
    sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_100111D94(v9, type metadata accessor for OwnerPeerTrust);
    v16 = sub_1000136BC(v13, v15, &v27);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v18 = v8 + *(v26 + 28);
    v19 = sub_100988F40(v17);
    v21 = v20;
    sub_100111D94(v8, type metadata accessor for OwnerPeerTrust);
    v22 = sub_1000136BC(v19, v21, &v27);

    *(v11 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accepting share request from peerTrustIdentifier: %{public}s,\ncommunicationsIdentifier: %{private,mask.hash}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100111D94(v8, type metadata accessor for OwnerPeerTrust);
    sub_100111D94(v9, type metadata accessor for OwnerPeerTrust);
  }

  v23 = *(v0[29] + 112);
  v0[40] = v23;
  v24 = swift_task_alloc();
  v0[41] = v24;
  *v24 = v0;
  v24[1] = sub_1001095B8;

  return sub_1012A6B58(2, v23);
}

uint64_t sub_1001095B8(__int16 a1)
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 572) = a1;

  return _swift_task_switch(sub_1001096D0, v3, 0);
}

uint64_t sub_1001096D0()
{
  v25 = v0;
  if ((*(v0 + 572) & 0x100) != 0)
  {
    v2 = *(v0 + 312);
    sub_100111D2C(*(v0 + 216), *(v0 + 264), type metadata accessor for OwnerSharingCircle);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 264);
    if (v5)
    {
      v7 = *(v0 + 248);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      v10 = *(v7 + 20);
      type metadata accessor for UUID();
      sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_100111D94(v6, type metadata accessor for OwnerSharingCircle);
      v14 = sub_1000136BC(v11, v13, &v24);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "Total shared item limit reached %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {

      sub_100111D94(v6, type metadata accessor for OwnerSharingCircle);
    }

    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 208) = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100111C38(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = *(v0 + 200);
    swift_willThrow();
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    v20 = *(v0 + 264);
    v21 = *(v0 + 240);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v1 = *(v0 + 320);

    return _swift_task_switch(sub_1001099E4, v1, 0);
  }
}

uint64_t sub_1001099E4()
{
  v1 = *(v0 + 320);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  v4 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v3 = v0;
  v3[1] = sub_100109AD0;
  v5 = *(v0 + 320);

  return unsafeBlocking<A>(context:_:)(v0 + 168, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v5, v4);
}

uint64_t sub_100109AD0()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 320);
  v4 = *v0;

  return _swift_task_switch(sub_100109BE8, v2, 0);
}

uint64_t sub_100109BE8()
{
  v1 = v0[29];
  v0[43] = v0[21];
  return _swift_task_switch(sub_100109C0C, v1, 0);
}

uint64_t sub_100109C0C()
{
  v41 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = sub_10013CF58(sub_100111B18, v6, v1);

  v8 = *(v3 + 24);
  *(v0 + 560) = v8;
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = type metadata accessor for UUID();
  *(v0 + 352) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v0 + 360) = v10;
  v12 = *(v10 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  (*(v11 + 16))(v14 + v13, v5 + *(v2 + 20), v9);
  v15 = sub_100B05044(v14);
  swift_setDeallocating();
  (*(v11 + 8))(v14 + v13, v9);
  swift_deallocClassInstance();
  if (v15[2])
  {
    v16 = sub_100315884(v4 + v8, v15, 3, v7, 0, 2uLL, 1);
    *(v0 + 368) = v16;
    *(v0 + 376) = v17;

    v18 = swift_task_alloc();
    *(v0 + 384) = v18;
    *v18 = v0;
    v18[1] = sub_10010A0C0;

    return sub_100EC8350(v16);
  }

  else
  {

    type metadata accessor for BeaconSharingCircleTransformer.Error();
    sub_100111C38(&qword_101697608, type metadata accessor for BeaconSharingCircleTransformer.Error);
    swift_allocError();
    (*(v11 + 56))(v20, 1, 1, v9);
    swift_willThrow();

    v21 = *(v0 + 312);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v27 = *(v0 + 96);
      v26 = *(v0 + 104);
      v28 = *(v0 + 112);
      v29 = Error.localizedDescription.getter();
      v31 = sub_1000136BC(v29, v30, &v40);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failure in share request acceptance, cloud update error %s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    sub_1001118C8();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    v34 = *(v0 + 296);
    v33 = *(v0 + 304);
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v37 = *(v0 + 264);
    v38 = *(v0 + 240);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_10010A0C0(uint64_t a1)
{
  v2 = *(*v1 + 384);
  v3 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10010A1D8, v3, 0);
}

uint64_t sub_10010A1D8()
{
  v10 = v0;
  v1 = v0[29];
  v2 = *(v1 + 408);
  *(v1 + 408) = v0[49];

  v3 = *(v1 + 408);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1003CC318(*(v3 + 16), 0);
    v6 = sub_1003A97DC(&v9, v5 + 4, v4, v3);

    sub_1000128F8();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[50] = v5;
  v7 = swift_task_alloc();
  v0[51] = v7;
  *v7 = v0;
  v7[1] = sub_10010A328;

  return sub_100EC9C44(v5);
}

uint64_t sub_10010A328()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 232);
  v5 = *v0;

  return _swift_task_switch(sub_10010A454, v3, 0);
}

uint64_t sub_10010A454()
{
  v1 = async function pointer to Array<A>.asyncFlatMap<A>(_:)[1];
  v2 = swift_task_alloc();
  v0[52] = v2;
  v3 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  v4 = sub_100014084(&qword_101697600, &qword_1016975F8, &qword_10138C230);
  *v2 = v0;
  v2[1] = sub_10010A54C;
  v5 = v0[47];
  v6 = v0[31];
  v7 = v0[29];

  return Array<A>.asyncFlatMap<A>(_:)(&unk_10138C228, v7, v5, v6, v3, v4);
}

uint64_t sub_10010A54C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v5 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
  }

  else
  {
    v7 = v3[47];
    v8 = v3[29];

    return _swift_task_switch(sub_10010A690, v8, 0);
  }
}

uint64_t sub_10010A690()
{
  v47 = v0;
  v1 = v0[46];
  v2 = _swiftEmptyArrayStorage;
  v46 = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v0[54];
  v5 = v0[32];
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 72);
  sub_100111D2C(v1 + v6, v0[35], type metadata accessor for OwnerSharingCircle);
  v8 = sub_100653B3C();
  if (v4)
  {
    v9 = v0[53];
    v10 = v0[46];
    v11 = v0[35];

    sub_100111D94(v11, type metadata accessor for OwnerSharingCircle);

    v13 = v0[46];
    v12 = v0[47];
    v14 = v0[39];
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v20 = v0[12];
      v19 = v0[13];
      v21 = v0[14];
      v22 = Error.localizedDescription.getter();
      v24 = sub_1000136BC(v22, v23, &v46);

      *(v17 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failure in share request acceptance, cloud update error %s", v17, 0xCu);
      sub_100007BAC(v18);
    }

    sub_1001118C8();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();

    v40 = v0[37];
    v39 = v0[38];
    v42 = v0[34];
    v41 = v0[35];
    v43 = v0[33];
    v44 = v0[30];

    v45 = v0[1];

    return v45();
  }

  v25 = v8;
  sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
  result = sub_1003980F8(v25);
  if (v3 == 1)
  {
LABEL_9:
    v30 = v0[46];
    v2 = v46;
LABEL_10:
    v31 = v0[53];
    v32 = v0[47];

    v0[55] = v2;

    v33 = swift_task_alloc();
    v0[56] = v33;
    *v33 = v0;
    v33[1] = sub_10010AAB8;
    v34 = v0[53];
    v36 = v0[46];
    v35 = v0[47];
    v37 = v0[29];

    return sub_10010D734(v36, v2, v35, v34);
  }

  v27 = v7 + v6;
  v28 = 1;
  while (v28 < *(v1 + 16))
  {
    sub_100111D2C(v0[46] + v27, v0[35], type metadata accessor for OwnerSharingCircle);
    v29 = sub_100653B3C();
    ++v28;
    sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
    result = sub_1003980F8(v29);
    v27 += v7;
    if (v3 == v28)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10010AAB8()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = v0;

  v5 = v2[55];
  v6 = v2[53];
  v7 = v2[29];

  if (v0)
  {
    v8 = sub_10010BD28;
  }

  else
  {
    v8 = sub_10010AC1C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10010AC1C()
{
  v1 = *(v0 + 232);
  v8 = *(v1 + 344);
  v2 = *(v1 + 344);
  v3 = sub_1000035D0((v1 + 320), v2);
  *(v0 + 40) = v8;
  v4 = sub_1000280DC((v0 + 16));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_10010AD38;
  v6 = *(v0 + 368);

  return sub_10129B73C(v6, v1 + 160, v0 + 16);
}

uint64_t sub_10010AD38()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v8 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = sub_10010BF50;
  }

  else
  {
    v6 = *(v2 + 232);
    sub_100007BAC((v2 + 16));
    v5 = sub_10010AE60;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10010AE60()
{
  v1 = *(*(v0 + 376) + 16);
  *(v0 + 480) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 256);
    *(v0 + 564) = *(v3 + 80);
    *(v0 + 488) = *(v3 + 72);
    while (1)
    {
      *(v0 + 496) = v2;
      v4 = *(v0 + 272);
      v5 = *(v0 + 248);
      sub_100111D2C(*(v0 + 376) + ((*(v0 + 564) + 32) & ~*(v0 + 564)) + *(v0 + 488) * v2, v4, type metadata accessor for OwnerSharingCircle);
      if (*(v4 + *(v5 + 36)) != 2)
      {
        break;
      }

      sub_100111D94(*(v0 + 272), type metadata accessor for OwnerSharingCircle);
      v2 = *(v0 + 496) + 1;
      if (v2 == *(v0 + 480))
      {
        goto LABEL_5;
      }
    }

    v7 = *(v0 + 248);
    *(v0 + 574) = 0x4000201u >> (8 * *(*(v0 + 216) + *(v7 + 28)));
    v8 = *(v0 + 232);
    *(v0 + 568) = *(v7 + 20);
    v9 = v8[43];
    v10 = v8[45];
    v11 = sub_1000035D0(v8 + 40, v9);
    *(v0 + 80) = v9;
    *(v0 + 88) = v10;
    v12 = sub_1000280DC((v0 + 56));
    (*(*(v9 - 8) + 16))(v12, v11, v9);
    v6 = sub_10010B008;
  }

  else
  {
LABEL_5:
    v6 = sub_10010B72C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010B008()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 272);
  v3 = *sub_1000035D0((v0 + 56), *(v0 + 80));
  v4 = swift_task_alloc();
  *(v0 + 504) = v4;
  *v4 = v0;
  v4[1] = sub_10010B0C4;
  v5 = *(v0 + 574);

  return sub_100640C34(v2 + v1, v5, 0);
}

uint64_t sub_10010B0C4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 512) = v1;
    v7 = *(v4 + 232);
    v8 = sub_10010B444;
  }

  else
  {
    *(v4 + 575) = a1 & 1;
    v8 = sub_10010B1FC;
    v7 = 0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10010B1FC()
{
  if (*(v0 + 575) == 1)
  {
    v1 = *(v0 + 232);
    sub_100007BAC((v0 + 56));
    v2 = sub_10010B2C4;
    v3 = v1;
  }

  else
  {
    sub_100111BE4();
    v4 = swift_allocError();
    *v5 = 0;
    swift_willThrow();
    *(v0 + 512) = v4;
    v3 = *(v0 + 232);
    v2 = sub_10010B444;
  }

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_10010B2C4()
{
  while (1)
  {
    sub_100111D94(*(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v1 = *(v0 + 496) + 1;
    if (v1 == *(v0 + 480))
    {
      break;
    }

    *(v0 + 496) = v1;
    v2 = *(v0 + 272);
    v3 = *(v0 + 248);
    sub_100111D2C(*(v0 + 376) + ((*(v0 + 564) + 32) & ~*(v0 + 564)) + *(v0 + 488) * v1, v2, type metadata accessor for OwnerSharingCircle);
    if (*(v2 + *(v3 + 36)) != 2)
    {
      v4 = *(v0 + 248);
      *(v0 + 574) = 0x4000201u >> (8 * *(*(v0 + 216) + *(v4 + 28)));
      v5 = *(v0 + 232);
      *(v0 + 568) = *(v4 + 20);
      v6 = v5[43];
      v7 = v5[45];
      v8 = sub_1000035D0(v5 + 40, v6);
      *(v0 + 80) = v6;
      *(v0 + 88) = v7;
      v9 = sub_1000280DC((v0 + 56));
      (*(*(v6 - 8) + 16))(v9, v8, v6);
      v10 = sub_10010B008;
      goto LABEL_5;
    }
  }

  v10 = sub_10010B72C;
LABEL_5:

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10010B444()
{
  v30 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 312);
  sub_100007BAC((v0 + 56));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 512);
    v6 = *(v0 + 272);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, &v29);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in share request acceptance, server share deletion error %s", v7, 0xCu);
    sub_100007BAC(v8);

    v15 = v6;
  }

  else
  {
    v16 = *(v0 + 512);
    v17 = *(v0 + 272);

    v15 = v17;
  }

  while (1)
  {
    sub_100111D94(v15, type metadata accessor for OwnerSharingCircle);
    v20 = *(v0 + 496) + 1;
    if (v20 == *(v0 + 480))
    {
      v21 = sub_10010B72C;
      goto LABEL_9;
    }

    *(v0 + 496) = v20;
    v18 = *(v0 + 272);
    v19 = *(v0 + 248);
    sub_100111D2C(*(v0 + 376) + ((*(v0 + 564) + 32) & ~*(v0 + 564)) + *(v0 + 488) * v20, v18, type metadata accessor for OwnerSharingCircle);
    if (*(v18 + *(v19 + 36)) != 2)
    {
      break;
    }

    v15 = *(v0 + 272);
  }

  v22 = *(v0 + 248);
  *(v0 + 574) = 0x4000201u >> (8 * *(*(v0 + 216) + *(v22 + 28)));
  v23 = *(v0 + 232);
  *(v0 + 568) = *(v22 + 20);
  v24 = v23[43];
  v25 = v23[45];
  v26 = sub_1000035D0(v23 + 40, v24);
  *(v0 + 80) = v24;
  *(v0 + 88) = v25;
  v27 = sub_1000280DC((v0 + 56));
  (*(*(v24 - 8) + 16))(v27, v26, v24);
  v21 = sub_10010B008;
LABEL_9:

  return _swift_task_switch(v21, 0, 0);
}

uint64_t sub_10010B72C()
{
  v1 = v0[29];
  (*(v0[45] + 56))(v0[30], 1, 1, v0[44]);
  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_10010B808;
  v3 = v0[46];
  v4 = v0[40];
  v5 = v0[30];

  return sub_10129F3DC(v3, v5, v4, v1 + 120, v1 + 240);
}

uint64_t sub_10010B808()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  v2[66] = v0;

  v5 = v2[30];
  if (v0)
  {
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    v6 = sub_10010BC34;
    v7 = 0;
  }

  else
  {
    v8 = v2[29];
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    v6 = sub_10010B970;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10010B970()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 216);
  v3 = *(v2 + *(*(v0 + 248) + 28));
  v4 = swift_task_alloc();
  *(v0 + 536) = v4;
  *v4 = v0;
  v4[1] = sub_10010BA38;

  return sub_100F56D0C(v2 + v1, v3);
}

uint64_t sub_10010BA38()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_10010BB48, v2, 0);
}

uint64_t sub_10010BB48()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[46];
  v4 = v0[47];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[33];
  v10 = v0[30];
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10010BC50()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[46];
  v4 = v0[47];
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v5 = v0[66];
  v7 = v0[37];
  v6 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  v11 = v0[30];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10010BD28()
{
  v27 = v0;
  v1 = v0[57];
  v2 = v0[55];
  v3 = v0[53];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[39];
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[14];
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, &v26);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failure in share request acceptance, cloud update error %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  sub_1001118C8();
  swift_allocError();
  *v17 = 1;
  swift_willThrow();

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v19 = v0[37];
  v18 = v0[38];
  v21 = v0[34];
  v20 = v0[35];
  v22 = v0[33];
  v23 = v0[30];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10010BF50()
{
  v21 = v0;
  v1 = v0[59];
  v2 = v0[39];
  sub_100007BAC(v0 + 2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[59];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[17];
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v20);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in share request acceptance, server share create error %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v14 = swift_task_alloc();
  v0[68] = v14;
  *v14 = v0;
  v14[1] = sub_10010C100;
  v15 = v0[53];
  v17 = v0[46];
  v16 = v0[47];
  v18 = v0[29];

  return sub_10010F500(v17, v16, v15);
}

uint64_t sub_10010C100()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  *(*v1 + 552) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_10010C348;
  }

  else
  {
    v6 = sub_10010C22C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10010C22C()
{
  v1 = v0[59];
  v2 = v0[55];
  v3 = v0[53];
  v5 = v0[46];
  v4 = v0[47];
  sub_1001118C8();
  swift_allocError();
  *v6 = 2;
  swift_willThrow();

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[30];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10010C348()
{
  v1 = v0[59];
  v2 = v0[55];
  v3 = v0[53];
  v5 = v0[46];
  v4 = v0[47];

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v6 = v0[69];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[30];

  v13 = v0[1];

  return v13();
}

uint64_t *sub_10010C42C()
{
  v1 = v0[14];

  sub_100007BAC(v0 + 15);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 25);
  sub_100007BAC(v0 + 30);
  sub_100007BAC(v0 + 35);
  sub_100007BAC(v0 + 40);
  sub_100007BAC(v0 + 46);
  v2 = v0[51];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10010C494()
{
  sub_10010C42C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10010C504()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10010C528, v1, 0);
}

uint64_t sub_10010C528()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_10010C604;
  v4 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111B00, v4, &type metadata for Int);
}

uint64_t sub_10010C604()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_10010C71C, v2, 0);
}

uint64_t sub_10010C71C()
{
  v1 = v0[11];
  v0[13] = v0[2];
  return _swift_task_switch(sub_10010C740, v1, 0);
}

uint64_t sub_10010C740()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10010C81C;
  v4 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111B08, v4, &type metadata for Int);
}

uint64_t sub_10010C81C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_10010C934, v2, 0);
}

uint64_t sub_10010C934()
{
  v1 = v0[10];
  v0[15] = v0[3];
  return _swift_task_switch(sub_10010C958, v1, 0);
}

uint64_t sub_10010C958()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 128) = qword_10177B348;

  return _swift_task_switch(sub_10010C9F4, 0, 0);
}

uint64_t sub_10010C9F4()
{
  v1 = *(v0 + 128);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_10010CAB8;
  v4 = *(v0 + 128);

  return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_10010CAB8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10010CBD0, 0, 0);
}

uint64_t sub_10010CBD0()
{
  v1 = v0[10];
  v0[18] = v0[4];
  return _swift_task_switch(sub_10010CBF4, v1, 0);
}

uint64_t sub_10010CBF4()
{
  v1 = v0[13];
  v2 = sub_101073540(v0[18]);

  if ((v1 & 0x8000000000000000) != 0 || v1 < v2)
  {

    return _swift_task_switch(sub_10010CE14, 0, 0);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[13];
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = v6;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "        Cannot accept share. acceptedExplicitSharesCount: %ld >= maxAcceptedSharedItems: %lu.", v7, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[6] = 13;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100111C38(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v8 = v0[5];
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10010CE14()
{
  v1 = *(v0 + 128);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_10010CED8;
  v4 = *(v0 + 128);

  return unsafeBlocking<A>(_:)(v0 + 56, sub_1000DFF78, v4, &type metadata for Configuration);
}

uint64_t sub_10010CED8()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_10010CFF0, 0, 0);
}

uint64_t sub_10010CFF0()
{
  v1 = v0[10];
  v0[20] = v0[7];
  return _swift_task_switch(sub_10010D014, v1, 0);
}

uint64_t sub_10010D014()
{
  v1 = v0[15];
  v2 = sub_10107355C(v0[20]);

  if (v1 >= v2)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[15];
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v7;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v5, v6, "        Cannot accept share. totalPairedAccessory: %ld >= maxPairEligibleDevices: %ld.", v8, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[9] = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100111C38(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v9 = v0[8];
    swift_willThrow();
    v3 = v0[1];
  }

  else
  {
    v3 = v0[1];
  }

  return v3();
}

uint64_t sub_10010D200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OwnerSharingCircle();
  v6 = *(v5 + 24);
  if ((static UUID.== infix(_:_:)() & 1) != 0 && *(*(a1 + *(v5 + 32)) + 16))
  {
    v7 = *(type metadata accessor for OwnerPeerTrust() + 20);

    sub_1000210EC(a3 + v7);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10010D2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10010D378, a3, 0);
}

uint64_t sub_10010D378()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle() + 20);

  return _swift_task_switch(sub_10010D3F4, v1, 0);
}

uint64_t sub_10010D3F4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v8 = v0;
  v8[1] = sub_10010D574;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111F50, v6, v9);
}

uint64_t sub_10010D574()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_10010D6A0, v3, 0);
}

uint64_t sub_10010D6A0()
{
  v1 = v0[5];
  v0[13] = v0[2];
  return _swift_task_switch(sub_10010D6C4, v1, 0);
}

uint64_t sub_10010D6C4()
{
  v1 = *(v0 + 72);
  **(v0 + 24) = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10010D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for UUID();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = type metadata accessor for OwnerSharingCircle();
  v5[20] = v10;
  v11 = *(v10 - 8);
  v5[21] = v11;
  v12 = *(v11 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10010D89C, v4, 0);
}

uint64_t sub_10010D89C()
{
  v47 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  if (v2)
  {
    v4 = v0[21];
    v44 = v0[20];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v42 = v6;
    do
    {
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v15 = v0[23];
      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177A560);
      sub_100111D2C(v5, v15, type metadata accessor for OwnerSharingCircle);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[23];
      if (v19)
      {
        v7 = v0[16];
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v46 = v9;
        *v8 = 141558275;
        *(v8 + 4) = 1752392040;
        *(v8 + 12) = 2081;
        v10 = *(v44 + 20);
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v13 = v12;
        sub_100111D94(v20, type metadata accessor for OwnerSharingCircle);
        v14 = sub_1000136BC(v11, v13, &v46);
        p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;

        *(v8 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v17, v18, "Data update on share request acceptance. Create %{private,mask.hash}s", v8, 0x16u);
        sub_100007BAC(v9);

        v6 = v42;
      }

      else
      {

        sub_100111D94(v20, type metadata accessor for OwnerSharingCircle);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v21 = v0[13];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[21];
    v45 = v0[20];
    v24 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v25 = *(v23 + 72);
    v43 = v25;
    do
    {
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v34 = v0[22];
      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177A560);
      sub_100111D2C(v24, v34, type metadata accessor for OwnerSharingCircle);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[22];
      if (v38)
      {
        v26 = v0[16];
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v46 = v28;
        *v27 = 141558275;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        v29 = *(v45 + 20);
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        sub_100111D94(v39, type metadata accessor for OwnerSharingCircle);
        v33 = sub_1000136BC(v30, v32, &v46);
        p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;

        *(v27 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v36, v37, "Data update on share request acceptance. Delete %{private,mask.hash}s", v27, 0x16u);
        sub_100007BAC(v28);

        v25 = v43;
      }

      else
      {

        sub_100111D94(v39, type metadata accessor for OwnerSharingCircle);
      }

      v24 += v25;
      --v22;
    }

    while (v22);
  }

  v40 = *(v0[15] + 112);
  v0[24] = v40;

  return _swift_task_switch(sub_10010DD78, v40, 0);
}

uint64_t sub_10010DDA0()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_10010DE7C;
  v3 = *(v0 + 200);

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v3, &type metadata for () + 8);
}

uint64_t sub_10010DE7C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_10010DF78, 0, 0);
}

uint64_t sub_10010DF94()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  type metadata accessor for ChangeSetAdaptor();
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyDictionarySingleton;
  *(v5 + 24) = _swiftEmptyDictionarySingleton;
  v6 = (v5 + 24);

  sub_10010E65C(v7, &off_101658FC0, v4, v3, v2, v1);

  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  v8 = *v6;
  if ((*v6 & 0xC000000000000001) == 0)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_11;
    }

LABEL_6:
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[16];
    v15 = v0[17];
    UUID.init()();
    swift_beginAccess();
    v16 = *(v5 + 24);

    v18 = sub_1003A8B54(v17);

    v19 = *(v5 + 16);

    (*(v15 + 32))(v12, v13, v14);
    v20 = type metadata accessor for CloudKitChangeSet(0);
    *(v12 + *(v20 + 20)) = v18;
    *(v12 + *(v20 + 24)) = v19;
    (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
    goto LABEL_7;
  }

  if (v8 < 0)
  {
    v9 = *v6;
  }

  v10 = *v6;

  v11 = __CocoaDictionary.count.getter();

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_11:
  v22 = v0[19];

  v23 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
LABEL_7:
  v21 = v0[24];

  return _swift_task_switch(sub_10010E254, v21, 0);
}

uint64_t sub_10010E27C()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = swift_task_alloc();
  v0[28] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_10010E374;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 8);
}

uint64_t sub_10010E374()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_10010E550;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_10010E490;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010E4AC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];
  sub_10000B3A8(v0[19], &qword_1016975C8, &qword_10138C1F0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010E550()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10010E5BC, v2, 0);
}

uint64_t sub_10010E5BC()
{
  sub_10000B3A8(v0[19], &qword_1016975C8, &qword_10138C1F0);
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[18];
  v4 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10010E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v42 = a6;
  v40 = a3;
  v8 = type metadata accessor for SharingCircleSecret();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v39 - v13);
  v15 = type metadata accessor for OwnerSharingCircle();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v17);
  v23 = (&v39 - v22);
  v24 = *(a5 + 16);
  v39 = v21;
  if (v24)
  {
    v25 = a5 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    while (1)
    {
      sub_100111D2C(v25, v23, type metadata accessor for OwnerSharingCircle);
      sub_100D45194(v23);
      if (v6)
      {
        break;
      }

      result = sub_100111D94(v23, type metadata accessor for OwnerSharingCircle);
      v25 += v26;
      if (!--v24)
      {
        goto LABEL_5;
      }
    }

    v31 = type metadata accessor for OwnerSharingCircle;
    v32 = v23;
  }

  else
  {
LABEL_5:
    v27 = *(v42 + 16);
    if (v27)
    {
      v28 = v43;
      v29 = v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v30 = *(v43 + 72);
      while (1)
      {
        sub_100111D2C(v29, v14, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v14);
        if (v6)
        {
          break;
        }

        result = sub_100111D94(v14, type metadata accessor for SharingCircleSecret);
        v29 += v30;
        if (!--v27)
        {
          goto LABEL_12;
        }
      }

      v31 = type metadata accessor for SharingCircleSecret;
      v32 = v14;
    }

    else
    {
      v28 = v43;
LABEL_12:
      v33 = *(v41 + 16);
      if (v33)
      {
        v34 = v41 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v35 = *(v28 + 72);
        while (1)
        {
          sub_100111D2C(v34, v12, type metadata accessor for SharingCircleSecret);
          sub_100D4346C(v12);
          if (v6)
          {
            break;
          }

          result = sub_100111D94(v12, type metadata accessor for SharingCircleSecret);
          v34 += v35;
          if (!--v33)
          {
            goto LABEL_16;
          }
        }

        v31 = type metadata accessor for SharingCircleSecret;
        v32 = v12;
      }

      else
      {
LABEL_16:
        v36 = *(v40 + 16);
        if (!v36)
        {
          return result;
        }

        v37 = v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v38 = *(v39 + 72);
        while (1)
        {
          sub_100111D2C(v37, v19, type metadata accessor for OwnerSharingCircle);
          sub_100D43440(v19);
          if (v6)
          {
            break;
          }

          result = sub_100111D94(v19, type metadata accessor for OwnerSharingCircle);
          v37 += v38;
          if (!--v36)
          {
            return result;
          }
        }

        v31 = type metadata accessor for OwnerSharingCircle;
        v32 = v19;
      }
    }
  }

  return sub_100111D94(v32, v31);
}

uint64_t sub_10010EA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = *(v6 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10010EB1C, a3, 0);
}

uint64_t sub_10010EB1C()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle() + 20);

  return _swift_task_switch(sub_10010EB98, v1, 0);
}

uint64_t sub_10010EB98()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v8 = v0;
  v8[1] = sub_10010ED18;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111E5C, v6, v9);
}

uint64_t sub_10010ED18()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return _swift_task_switch(sub_10010EE44, v3, 0);
}

uint64_t sub_10010EE44()
{
  v1 = v0[5];
  v0[13] = v0[2];
  return _swift_task_switch(sub_100111F44, v1, 0);
}

uint64_t sub_10010EE70()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MemberSharingCircle() + 28);
  return static UUID.== infix(_:_:)() & 1;
}

unint64_t sub_10010EED8()
{
  result = qword_1016975C0;
  if (!qword_1016975C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016975C0);
  }

  return result;
}

uint64_t sub_10010EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v44 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocationFetcher();
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53[3] = &_s13DefaultPolicyVN;
  v53[4] = sub_100111A48();
  v18 = swift_allocObject();
  v53[0] = v18;
  v19 = *(a2 + 48);
  *(v18 + 48) = *(a2 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a2 + 64);
  *(v18 + 96) = *(a2 + 80);
  v20 = *(a2 + 16);
  *(v18 + 16) = *a2;
  *(v18 + 32) = v20;
  v46 = a3;
  v21 = *(a3 + 280);
  sub_10001F280(v53, v52);
  sub_100111A9C(a2, &v48);
  v22 = qword_101694920;
  v45 = v21;

  if (v22 != -1)
  {
    swift_once();
  }

  v41 = qword_10177B2E8;

  v42 = sub_100908168(_swiftEmptyArrayStorage);
  sub_1000BC488();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);

  static DispatchQoS.unspecified.getter();
  *&v48 = _swiftEmptyArrayStorage;
  sub_100111C38(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v14[10];
  v24 = type metadata accessor for DeviceIdentityUtility();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  v28 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  *(v27 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v27 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v17 + v23) = v27;
  v30 = v14[11];
  v31 = type metadata accessor for BeaconObservationStore();
  v50 = &off_101632E88;
  v51 = &off_101613BE0;
  v49 = v31;
  v32 = v41;
  *&v48 = v41;
  type metadata accessor for MemberCircleRevokeManager();
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v48, (v33 + 32));
  *(v17 + v30) = v33;
  v34 = v14[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v17 + v34) = swift_allocObject();
  *v17 = v45;
  sub_10001F280(v52, (v17 + 3));
  v35 = v14[8];

  sub_1005CB7C8(v52, v17 + v35);
  sub_100007BAC(v52);
  v17[1] = v32;
  *(v17 + v14[9]) = v42;
  *(v33 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v36 = swift_allocObject();
  v37 = v47;
  v38 = v46;
  *(v36 + 16) = v47;
  *(v36 + 24) = v38;

  sub_1005CAFE0(v37, sub_100111AF8, v36);

  sub_100111D94(v17, type metadata accessor for LocationFetcher);
  return sub_100007BAC(v53);
}